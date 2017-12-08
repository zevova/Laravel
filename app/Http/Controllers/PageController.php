<?php
namespace App\Http\Controllers;

use Illuminate\Routing\Controller as BaseController;
use App\Page;
use Illuminate\Http\Request;

class PageController extends BaseController
{
    public function show(Request $request)
    {
        $slug = $request->route()->getAction('slug');
        $page = Page::where('slug', $slug)
            ->where('status', 'ACTIVE')
            ->first();
        return view('page.show', compact('page'));
    }
}
