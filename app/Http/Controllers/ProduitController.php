<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProduitController extends Controller
{
    public function index()
    {
        $products = Product::inRandomOrder()->take(15)->get();
        return view('index')->with('products', $products);
    }

}
