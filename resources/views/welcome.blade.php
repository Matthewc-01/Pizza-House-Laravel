@extends('layouts.layout')
@section('content')

<div class="container justify-start lg text-center min-h-full my-5" >
    {{-- <h1 class="text-9xl text-blue-500 text-center">TEST</h1> --}}
    <div class="pizza-logo">
    <img src="/img/pizza.svg" alt="pizza house logo" class="logo mx-auto">
    </div>
    <div class="title">
        <h1 class="text-6xl text-brown/[1]  mb-3 sm:text-7xl">The South's Best Pizza House</h1>
    </div>
    <p class="mssg">{{ session('mssg') }}</p>

    <br>
    <a href="{{route('pizzas.create')}}" class="px-6 py-3 text-white no-underline bg-brown/[.8] rounded hover:bg-brown/[2] lowercase">Order a Pizza</a>
    
</div>


@endsection