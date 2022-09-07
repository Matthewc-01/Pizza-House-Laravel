@extends('layouts.app')
@section('content')
    <div class="content text-center">
        <div class="title">
            <h1 class="text-6xl m-2">Order List</h1>
        </div>
        <div class="overflow-x-auto relative ">
            <div class="container mx-auto">
                <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                    <thead>
                                <tr class="bg-white dark:bg-gray-800 ">
                        <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 uppercase text-lg text-white">
                            {{-- <th scope="col" class="py-3 px-6">Order #</th> --}}
                            <th scope="col" class="py-3 px-6">Name</th>
                            <th scope="col" class="py-3 px-6">Type</th>
                            <th scope="col" class="py-3 px-6">Base</th>
                            <th scope="col" class="py-3 px-6"></th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $counter = 1;
                        @endphp
                        @foreach ($pizzas as $pizza)
                            @if ($counter % 2 == 0)
                                <tr class="bg-gray-800 text-gray-100 uppercase">
                                @else
                                <tr class="bg-gray-600 text-gray-300 uppercase">
                            @endif
                            {{-- <td class="py-3 px-6">{{ $pizza->id}}</td>       --}}
                            <td class="py-3 px-6">{{ $pizza->name }}</td>
                            <td class="py-3 px-6">{{ $pizza->type }}</td>
                            <td class="py-3 px-6">{{ $pizza->base }}</td>
                            <td><a href="{{route('pizzas.show',$pizza->id)}}">VIEW</a></td>
                            </tr>
                            @php
                                $counter++;
                            @endphp
                        @endforeach
                    <tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
