<?php

namespace App\Policies;

use App\User;
use App\Phim;
use Illuminate\Auth\Access\HandlesAuthorization;

class PhimPolicy
{
    use HandlesAuthorization;

    public function id_danhGia(User $user, Phim $phim)
    {
        $check = is_daDanhGia($phim->id);

        if($check == 0)
            return true;
        else
            return false;
    }
    
    /**
     * Determine whether the user can view any phims.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        //
    }

    /**
     * Determine whether the user can view the phim.
     *
     * @param  \App\User  $user
     * @param  \App\Phim  $phim
     * @return mixed
     */
    public function view(User $user, Phim $phim)
    {
        //
    }

    /**
     * Determine whether the user can create phims.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        //
    }

    /**
     * Determine whether the user can update the phim.
     *
     * @param  \App\User  $user
     * @param  \App\Phim  $phim
     * @return mixed
     */
    public function update(User $user, Phim $phim)
    {
        //
    }

    /**
     * Determine whether the user can delete the phim.
     *
     * @param  \App\User  $user
     * @param  \App\Phim  $phim
     * @return mixed
     */
    public function delete(User $user, Phim $phim)
    {
        //
    }

    /**
     * Determine whether the user can restore the phim.
     *
     * @param  \App\User  $user
     * @param  \App\Phim  $phim
     * @return mixed
     */
    public function restore(User $user, Phim $phim)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the phim.
     *
     * @param  \App\User  $user
     * @param  \App\Phim  $phim
     * @return mixed
     */
    public function forceDelete(User $user, Phim $phim)
    {
        //
    }
}
