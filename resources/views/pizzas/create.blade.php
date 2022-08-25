@extends('layouts.layout')
@section('content')
<div class="wrapper create-pizza">
    <h1>Create a New Pizza</h1>
    <form action="/pizza" method="POST">
        @csrf
        <label for="name">Your Name:</label>
        <input type="text" id="name" name="name">
        <label for="type">Coose Pizza Type:</label>
        <select name="type" id="type">
            <option value="margarita">Margarita</option>
            <option value="Hawaiian">Hawaiian</option>
            <option value="volcano">Volcano</option>
        </select>
        <label for="base">Coose Base Type:</label>
        <select name="base" id="type">
            <option value="cheesy crust">Cheesy Crust</option>
            <option value="garlic crust">Garlic Crust</option>
            <option value="thin & crispy">Thin & Crispy</option>
            <option value="thick">Thick</option>
        </select>
        <input type="submit" value="Order Pizza">
    </form>
</div>
@endsection
