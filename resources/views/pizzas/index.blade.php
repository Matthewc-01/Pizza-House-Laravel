@extends('layouts.layout')
@section('content')
    <div class="content text-center">
        <div class="title">
            <h1>Pizza List</h1>
        </div>
        @foreach ($pizzas as $pizza)
            <div>
               {{ $pizza->name }} - {{ $pizza->type }} - {{ $pizza->base }}
            </div>
        @endforeach
    </div>
@endsection
