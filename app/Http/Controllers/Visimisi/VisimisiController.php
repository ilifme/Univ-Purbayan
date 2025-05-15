<?php

namespace App\Http\Controllers\Visimisi;

use App\Models\Visimisi;
use App\Http\Controllers\Controller;

class VisimisiController extends Controller
{
    public function index() 
    {
        $visimisi = Visimisi::first(); // Mengambil data pertama dari tabel

        if ($visimisi) {
            $visi = $visimisi->visi;
            $misi = $visimisi->misi;

            // Dekode JSON jika kolom image berisi JSON
            $visimisiImg = is_string($visimisi->image) ? json_decode($visimisi->image, true) : $visimisi->image;
        } else {
            $visi = 'No Data Available';
            $misi = 'No Data Available';
            $visimisiImg = [];
        }

        return view('visimisi', compact('visi', 'misi', 'visimisiImg'));
    }
}
