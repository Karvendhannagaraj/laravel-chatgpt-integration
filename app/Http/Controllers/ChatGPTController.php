<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\ChatGPTService;
use App\Models\Conversation;
class ChatGPTController extends Controller
{
    protected $chatGPTService;

    public function __construct(ChatGPTService $chatGPTService)
    {
        $this->chatGPTService = $chatGPTService;
    }

    // To Retrieve the user pervious conversion
    public function getConversations(Request $request)
    {
        $perPage = 30;
        $page = $request->input('page', 1);
        $conversations = $this->chatGPTService->getUserConversations($perPage,$page);
        
        // Return the response 
        return response()->json($conversations);
    }
    // Handle the user request and get response from ChatGPT.
    public function sendRequest(Request $request)
    {
        $message = $request->post('message');
        $response = $this->chatGPTService->getChatGptResponse($message);
        
        // Return the response 
        return response()->json($response);
    }
    
}
