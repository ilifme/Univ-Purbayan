<?php

namespace App\Http\Controllers\Sdm;

use App\Models\Admin;
use App\Models\Teacher;
use App\Http\Controllers\Controller;

class SdmController extends Controller
{
    public function index() 
    {
        $admins = Admin::all();
        $teachers = Teacher::all();
        return view('sdm', compact('admins', 'teachers'));
    }
}