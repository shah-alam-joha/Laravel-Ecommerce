<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\User;

class VerificationController extends Controller
{
    public function verify($token)
    {
        $user = User::where('remember_token', $token)->first();

        if (!is_null($user)) {
           $user->status = 1;
           $user->remember_token = Null;
           $user->save();
           
           session()->flash('success', 'You are registered successfully ! Login Now');
           return redirect('login'); 

       }else{

        session()->flash('errors', 'Sorry ! Your token is not matched !!');
        return redirect('/');

    }



}
}
