<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('conversations', function (Blueprint $table) {
            $table->id(); // Auto-incrementing primary key
            
            // Columns for storing message-related data
            $table->text('message'); // Store the message content
            $table->text('response'); // Store the ChatGPT response

            // Additional metadata
            $table->enum('status', ['pending', 'completed', 'failed'])->default('pending'); // Status of the conversation
            $table->timestamps(); // created_at and updated_at

            // Indexes for performance optimization
            $table->index('status'); // Index on status for faster filtering by status
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('conversations');
    }
};
