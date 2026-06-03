@extends('layouts.app')

@section('content')
    <section class="container mt-28 px-4 md:px-16">
        <div class="flex flex-col items-center space-y-4">
            <h1 class="text-3xl font-bold text-gray-800 text-center">
                {{ $berita->title }}
            </h1>
            <p class="text-sm text-gray-500 text-center">
                Diterbitkan pada: {{ \Carbon\Carbon::parse($berita->created_at)->format('d/m/Y') }}
            </p>
        </div>

        @if ($berita->image)
            <div class="mt-10 overflow-hidden rounded-lg shadow-lg">
                <img
                    src="{{ asset('storage/' . $berita->image) }}"
                    alt="{{ $berita->title }}"
                    class="w-full max-h-[520px] object-cover"
                />
            </div>
        @endif

        <div class="bg-white mt-12 p-6 md:p-10 rounded-lg shadow-lg">
            <div class="text-base leading-relaxed text-gray-700">
                {!! $berita->content !!}
            </div>
        </div>
    </section>
@endsection
