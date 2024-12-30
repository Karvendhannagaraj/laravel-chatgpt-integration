<?php
namespace App\Repositories;

interface ConversationRepositoryInterface
{
    public function getUserConversations(int $perPage, int $page);
    public function storeUserConversations(array $conversationData);

}