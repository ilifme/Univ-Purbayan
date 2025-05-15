@extends('layouts.app')

@section('content')
    <section class="container mt-28 px-4 md:px-16">
        <!-- Wrapper untuk memberikan spasi vertikal -->
        <div class="flex flex-col items-center space-y-4">
            <!-- Header Pengumuman -->
            <h1 class="text-3xl font-bold text-gray-800 text-center">
                {{ $announcement->title }}
            </h1>
            <p class="text-sm text-gray-500 text-center">
                Diterbitkan pada: {{ \Carbon\Carbon::parse($announcement->created_at)->format('d/m/Y') }}
            </p>
        </div>

        <!-- Konten Pengumuman -->
        <div class="bg-white mt-12 p-6 md:p-10 rounded-lg shadow-lg">
            <p class="text-base leading-relaxed text-gray-700">
                {!!$announcement->content!!}
            </p>
        </div>
    </section>
@endsection
