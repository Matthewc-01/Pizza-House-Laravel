@extends('layouts.layout')
@section('content')
    <div class="content text-center">
        <div class="pizza-details container mx-auto mt-9">
            <h1 class="font-bold uppercase">Order for</h1>
            <h1 class="text-9xl">{{$pizza->name}}</h1>
            <p class="type text-2xl">Type: <em style="font-style: normal" class="font-bold uppercase">{{$pizza->type}}</em></p>
            <p class="type text-2xl">Base: <em style="font-style: normal" class="font-bold uppercase">{{$pizza->base}}</em></p>

            <p class="toppings pt-5 type text-2xl">Extra Toppings:</p>
            <ul>
                @foreach ($pizza->toppings as $topping)
                    <li class="type text-2xl font-bold uppercase">{{$topping}}</li>
                @endforeach
            </ul>
        </div>


        <form action="/pizza/{{$pizza->id}}" method="POST">
            @csrf
            @method('delete')

            <button style="text-decoration:none" class="px-6 py-3 text-green-100 no-underline bg-green-500 rounded hover:bg-green-600 hover:underline hover:text-green-200 mt-3">Complete Order</button>
        </form>
        <br>
        <a href="/pizza" style="text-decoration:none" class="px-6 py-3 text-blue-100 no-underline bg-blue-500 rounded hover:bg-blue-600 hover:underline hover:text-blue-200"><- Back to all Pizzas</a>
    </div>
@endsection

