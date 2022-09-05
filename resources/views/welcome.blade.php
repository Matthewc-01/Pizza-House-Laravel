@extends('layouts.layout')
@section('content')

<div class="container mx-auto justify-start lg text-center min-h-full" style="margin-top:100px">
    {{-- <h1 class="text-9xl text-blue-500 text-center">TEST</h1> --}}
    <div class="pizza-logo">
    <img src="/img/pizza.jpg" alt="pizza house logo" >
    </div>
    <div class="title">
        <h1 class="text-5xl text-blue-500">The South's Best Pizza House</h1>
    </div>
    <p class="mssg">{{ session('mssg') }}</p>
    <br>
    <a href="/pizza/create" class="px-6 py-3 text-blue-100 no-underline bg-blue-500 rounded hover:bg-blue-600 hover:underline hover:text-blue-200">Order a Pizza</a>
    
</div>


@endsection