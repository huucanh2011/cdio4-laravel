<?php

namespace App\Policies;

use App\User;
use App\BinhLuan;
use Illuminate\Auth\Access\HandlesAuthorization;

class BinhLuanPolicy
{
    use HandlesAuthorization;
    
    /**
     * Determine whether the user can view any binh luans.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        //
    }

    /**
     * Determine whether the user can view the binh luan.
     *
     * @param  \App\User  $user
     * @param  \App\BinhLuan  $binhLuan
     * @return mixed
     */
    public function view(User $user, BinhLuan $binhLuan)
    {
        return $binhLuan->user_id == $user->id;
    }

    /**
     * Determine whether the user can create binh luans.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        //
    }

    /**
     * Determine whether the user can update the binh luan.
     *
     * @param  \App\User  $user
     * @param  \App\BinhLuan  $binhLuan
     * @return mixed
     */
    public function update(User $user, BinhLuan $binhLuan)
    {
        //
    }

    /**
     * Determine whether the user can delete the binh luan.
     *
     * @param  \App\User  $user
     * @param  \App\BinhLuan  $binhLuan
     * @return mixed
     */
    public function delete(User $user, BinhLuan $binhLuan)
    {
        //
    }

    /**
     * Determine whether the user can restore the binh luan.
     *
     * @param  \App\User  $user
     * @param  \App\BinhLuan  $binhLuan
     * @return mixed
     */
    public function restore(User $user, BinhLuan $binhLuan)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the binh luan.
     *
     * @param  \App\User  $user
     * @param  \App\BinhLuan  $binhLuan
     * @return mixed
     */
    public function forceDelete(User $user, BinhLuan $binhLuan)
    {
        //
    }
}
