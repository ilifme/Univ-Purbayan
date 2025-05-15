<?php

namespace App\Http\Controllers\LandingPage;

use App\Models\Headmaster;
use App\Models\Cooperation;
use App\Models\Aboutme;
use App\Models\Announcement;
use App\Models\News;
use App\Http\Controllers\Controller;

class LandingpageController extends Controller
{
    public function index()
    {
        $cooperationImg = Cooperation::all();
        $headmasters = Headmaster::all();
        $abouts = Aboutme::first();
        $announcements = Announcement::latest()->take(3)->get();
        $news = News::latest()->get();

        return view('landing', compact ('cooperationImg', 'abouts', 'headmasters', 'announcements', 'news'));
    }
}