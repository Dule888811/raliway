<?php

namespace App\Providers;

use App\Repositories\RaliwayLineRepository;
use App\Repositories\RaliwayLineRepositoryInterface;
use Illuminate\Support\ServiceProvider;

class RepositoriesServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        $this->app->bind(RaliwayLineRepositoryInterface::class,RaliwayLineRepository::class);
    }
}
