<?php

namespace App\Services;

use App\Repositories\ConversationRepositoryInterface;
use GuzzleHttp\Client;
use GuzzleHttp\Exception\RequestException;
use Illuminate\Support\Facades\Log;
use Exception;

class ChatGPTService
{
    protected $conversationRepository;
    protected $apiKey;
    protected $client;
    public function __construct(ConversationRepositoryInterface $conversationRepository)
    {
        $this->conversationRepository = $conversationRepository;
        $this->apiKey = config('services.chatgpt.api_key');
        $this->client = new Client([
            'base_uri' => 'https://api.groq.com/openai/v1/',
            'headers' => [
                'Authorization' => 'Bearer ' . $this->apiKey,
                'Content-Type' => 'application/json',
            ],
        ]);

    }

    public function getUserConversations(int $perPage, int $page)
    {
        return $this->conversationRepository->getUserConversations($perPage,$page);
    }
    public function getChatGptResponse(string $message): array
    {
        $payload = $this->buildPayload($message);
        
        try {
            $response = $this->makeRequest('chat/completions', $payload);
        
            $resContent = isset($response['choices'][0]['message']['content']) 
                              ? $response['choices'][0]['message']['content'] 
                              : 'No response from ChatGPT';
        
            // Store the user conversation
            $conversationData = [
                'message' => $message,
                'response'   => $resContent,
                'status'     => $resContent === 'No response from ChatGPT' ? 'failed' : 'completed'
            ];
        
            $this->conversationRepository->storeUserConversations($conversationData);
        
            return [
                'status' => $resContent !== 'No response from ChatGPT',
                'message' => $resContent,
            ];
        } catch (RequestException $e) {
            // Log the error for ChatGPT Error
            Log::error('Error communicating with ChatGPT', ['error' => $e->getMessage()]);
            return [
                'status' => false,
                'message' => 'An error occurred while communicating with ChatGPT. Please try again later.',
            ];
        }catch (Exception $e) {
            // Log the general error
            Log::error('Unexpected error occurred', ['error' => $e->getMessage()]);
            return [
                'status' => false,
                'message' => 'An unexpected error occurred. Please try again later.',
            ];
        }
    }
     /**
     * Build the Request Format.
     *
     * @param string $message
     * @return array
     */
    private function buildPayload(string $message,)
    {
        return [
            'model' => 'llama3-8b-8192',
            'messages' => [  
                ['role' => 'user', 'content' => $message],
            ],
            'max_tokens' => 1024, // Default can be adjusted
            'temperature' => 1, // Adjust temperature for randomness
        ];
    }
    /**
     * Make the HTTP request to the OpenAI API.
     *
     * @param string $endpoint
     * @param array $payload
     * @return array
     */
    private function makeRequest(string $endpoint, array $payload): array
    {
        $response = $this->client->post($endpoint, [
            'json' => $payload,
        ]);

        $responseData = json_decode($response->getBody()->getContents(), true);
        return $responseData;
    }

}
