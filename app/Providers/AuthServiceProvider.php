<?php

namespace App\Providers;

use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
        'App\DanhGia' => 'App\Policies\DanhGiaPolicy',
        'App\Phim' => 'App\Policies\PhimPolicy',
        'App\User' => 'App\Policies\UserPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::before(function ($user) {
            if($user->quyen_id == 1) {
                return true;
            }
        });
        Gate::define('is_admin', function ($user) {
            return $user->quyen_id == 1;
        });
        Gate::define('is_hangphim', function ($user) {
            return $user->quyen_id == 2;
        });
        Gate::define('is_admin_or_hangphim', function ($user) {
            return $user->quyen_id < 3;
        });
    }
}
