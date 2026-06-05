@extends('layouts.app')
@section('content')

    <!-- MAIN SECTION -->
    <article class="container mx-auto px-4 sm:px-6 lg:px-8 mt-28">
        <h1 class="text-neutral-400 font-montserrat text-xl sm:text-2xl font-semibold">Pengumuman</h1>
        <p class="text-neutral-200 text-sm sm:text-base font-montserrat font-semibold">Dapatkan Pengumuman terbaru</p>

        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6 mt-8">
            @forelse ($announcements as $announcement)
                <div class="py-[26px] px-7 rounded-[20px] border border-neutral-100 bg-white">
                    <a href="{{ route('pengumuman.show', $announcement->slug) }}" class="text-base sm:text-lg font-montserrat font-semibold text-neutral-400 line-clamp-2 mb-4">
                        {{ $announcement->title }}
                    </a>
                    <p class="font-montserrat text-xs sm:text-sm font-semibold text-neutral-200 mb-1.5">
                        {{ Str::limit(strip_tags($announcement->content), 120, '...') }}
                    </p>
                    <p class="font-montserrat text-xs font-semibold text-neutral-200">
                        {{ \Carbon\Carbon::parse($announcement->created_at)->format('d/m/Y') }}
                    </p>
                </div>
            @empty
                <div class="py-[26px] px-7 rounded-[20px] border border-neutral-100 bg-white">
                    <p class="font-montserrat text-base font-semibold text-neutral-400">
                        No Data Available
                    </p>
                </div>
            @endforelse
        </div>
    </article>

@endsection
