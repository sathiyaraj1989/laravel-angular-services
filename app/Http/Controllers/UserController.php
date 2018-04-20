<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    public function index() {
        return User::all();
    }

    public function store(Request $request) {
        $user = new User;
        $user->name = $request->Name;
        $user->email = $request->Email;
        $user->password = bcrypt($request->Password);
        $user->save();

        $response = ["status" => "success", "data" => $user->toArray()];
        return response(json_encode($response), 200, ["Content-Type" => "application/json"]);        
    }
    
    public function show($id) {
        $user = User::whereId($id)->first();
        $response = ["status" => "success", "data" => $user->toArray()];
        return response(json_encode($response), 200, ["Content-Type" => "application/json"]);
        
    }
}
