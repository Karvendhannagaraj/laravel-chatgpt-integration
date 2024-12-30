<?php
namespace App\Repositories;

use App\Models\Conversation;
use App\Repositories\ConversationRepositoryInterface;

class ConversationRepository implements ConversationRepositoryInterface
{
    public function getUserConversations($perPage,$page)
    {
        return Conversation::orderBy('created_at', 'desc')
        ->skip(($page - 1) * $perPage)
        ->take($perPage) 
        ->get();
    }

    public function storeUserConversations($conversationData)
    {
        return Conversation::create($conversationData);
    }

}
