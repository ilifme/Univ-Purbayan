@extends('layouts.app')
@section('content')
    <!-- MAIN SECTION -->
    <article class="container mx-auto px-4 sm:px-6 lg:px-8 mt-28">
      <h1
        class="text-xneutral-400 font-montserrat text-xl sm:text-2xl font-semibold"
      >
        Sambutan Rektor Universitas Purbayan
      </h1>
      <p
        class="text-xneutral-200 text-sm sm:text-base font-montserrat font-semibold"
      >
        Meraih Masa Depan dengan Semangat Kebersamaan
      </p>
      @if ($greetings->isEmpty())
        <div class ="text-center text-xneutral-300 font-montserrat font-medium text-sm sm:text-base">
          No Data Availabe
        </div>
      @else

      @foreach ($greetings as $greeting)
        
      <div class="grid grid-cols-1 sm:grid-cols-12 gap-8 mt-8">
        <img
          src="{{ cloudinary_url( $greeting->image) }}"
          alt="SMK 2"
          class="w-full h-fit object-cover rounded-[30px] sm:col-span-4"
        />
        <div
          class="font-montserrat font-medium text-sm sm:text-base text-justify sm:col-span-8 text-xneutral-300"
        >
          {!! $greeting->content !!}
        </div>
      </div>
      @endforeach

      @endif

    </article>

@endsection

