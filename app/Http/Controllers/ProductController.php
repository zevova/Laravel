<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Http\Resources\Product as ProductResource;

class ProductController extends Controller
{

    public function __construct()
    {
        //$this->middleware('auth');
    }

    public function index ()
    {
        return new ProductResource(Product::all());
    }

    public function show ($id)
    {
        return new ProductResource(Product::find($id));
    }
	
}
