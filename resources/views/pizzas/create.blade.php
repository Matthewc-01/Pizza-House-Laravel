@extends('layouts.layout')
@section('content')
<div class="wrapper create-pizza container mx-auto" style="width:500px">
    <h1 class="text-4xl mt-10 py-2">Create a New Pizza</h1>
    <form action="/pizza" method="POST" class="text-xl">
        @csrf
        <label for="name" class="block text-gray-700 text-sm font-bold mb-2 mt-3">Your Name:</label>
        <input type="text" id="name" name="name" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" placeholder="Name"><br>
        <label for="type" class="block text-gray-700 text-sm font-bold mb-2 mt-5">Coose Pizza Type:</label>
        <select name="type" id="type" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
            <option value="">Select Type</option>
            <option value="margarita">Margarita</option>
            <option value="Hawaiian">Hawaiian</option>
            <option value="volcano">Volcano</option>
        </select><br>
        <label for="base" class="block text-gray-700 text-sm font-bold mb-2 mt-5">Coose Base Type:</label>
        <select name="base" id="base" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
            <option value="">Select Base</option>
            <option value="cheesy crust">Cheesy Crust</option>
            <option value="garlic crust">Garlic Crust</option>
            <option value="thin & crispy">Thin & Crispy</option>
            <option value="thick">Thick</option>
        </select><br>
        <fieldset>
            <label for="" class="block text-gray-700 text-sm font-bold mb-2 mt-5">Extra Toppings:</label>
            <input type="checkbox" name="toppings[]" value="mushrooms" class="w-4 h-4 text-green-600 border-0 rounded-md focus:ring-0">Mushrooms<br>
            <input type="checkbox" name="toppings[]" value="peppers" class="w-4 h-4 text-green-600 border-0 rounded-md focus:ring-0">Peppers<br>
            <input type="checkbox" name="toppings[]" value="garlic" class="w-4 h-4 text-green-600 border-0 rounded-md focus:ring-0">Garlic<br>
            <input type="checkbox" name="toppings[]" value="olives" class="w-4 h-4 text-green-600 border-0 rounded-md focus:ring-0">Olives<br>
        </fieldset>
        <br>
        <input type="submit" class ="px-6 py-2 w-full text-blue-100 no-underline bg-blue-500 rounded hover:bg-blue-600 hover:underline hover:text-blue-200" value="Order Pizza">
    </form>
</div>
@endsection
