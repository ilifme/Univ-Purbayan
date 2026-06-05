@extends('layouts.app')
@section('content')
    <!-- MAIN SECTION -->
    <article class="container mx-auto px-4 sm:px-6 lg:px-8 mt-28">
      <h1 class="text-xneutral-400 font-montserrat text-xl sm:text-2xl font-semibold">
        Sejarah Universitas Purbayan
      </h1>
      <p class="text-xneutral-200 font-montserrat text-sm sm:text-base font-semibold">
        Bersama mengembangkan pendidikan Negeri
      </p>

      @if ($historys->isEmpty())
          <div class="text-center text-xneutral-300 font-montserrat font-medium text-sm sm:text-base">
            No Data Available
          </div>
      @else
      <div class="grid grid-cols-1 sm:grid-cols-12 gap-8 mt-8">
        @foreach ($historys as $history)
        <!-- Gambar Sejarah -->
        <div class="sm:col-span-5">
          <img
            src="{{ asset('storage/' . $history->image) }}"
            alt="Sejarah SMK 2"
            class="w-full h-[600px] object-cover rounded-[30px]"
          />
        </div>

        <!-- Deskripsi Sejarah -->
        <div class="sm:col-span-7">
          <p class="font-montserrat font-medium text-sm sm:text-base text-justify text-xneutral-300">
            {!! $history->content !!}
          </p>
        </div>
        @endforeach
      </div>
      @endif
    </article>

@endsection
