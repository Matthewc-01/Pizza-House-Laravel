@extends('layouts.layout')
@section('content')
    <div class="content text-center">
        <div class="pizza-details">
            <h1>Order for {{$pizza->name}}</h1>
            <p class="type">Type - {{$pizza->type}}</p>
            <p class="type">Type - {{$pizza->base}}</p>
        </div>
        <a href="/pizza" class="back"><- Back to all Pizzas</a>
    </div>
@endsection
