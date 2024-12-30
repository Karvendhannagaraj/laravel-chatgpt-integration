<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Repositories\ConversationRepositoryInterface;
use App\Repositories\ConversationRepository;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->bind(ConversationRepositoryInterface::class, ConversationRepository::class);
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
    }
}
