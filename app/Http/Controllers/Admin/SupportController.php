<?php
namespace App\Http\Controllers\Admin;

use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\Controller as BaseController;
use Illuminate\Http\Request;
use App\Http\Requests\SupportRequest;
use App\LogicBlock;
use App\Traits\FileTrait;

class SupportController extends BaseController {
    use FileTrait;

    public function index() {
        $blocks = LogicBlock::all();
        return Voyager::view('Admin.support.index', compact('blocks'));
    }

    public function show($id)
    {
        $block = LogicBlock::findOrFail($id);
        var_dump($block);
    }

    public function create() {
        return Voyager::view('Admin.support.create');
    }

    public function store(SupportRequest $request) {

        $image['file'] = $request->file('image');
        $image['path'] = 'blocks'.'/'.date('Ymd-His').'-'.uniqid().'.'.$image['file']->getClientOriginalExtension();

        $block = new LogicBlock([
            'title' => $request->get('title'),
            'text' => $request->get('text'),
            'image' => $image['path'],
            'status' => $request->get('status'),
        ]);
        if ($block->save()) {
            $this->imageUpload($image);
        }
        return redirect()->action('Admin\SupportController@index');
    }

    public function edit($id)
    {
        $block = LogicBlock::findOrFail($id);
        return Voyager::view('Admin.support.edit', compact('block'));
    }

    public function update(SupportRequest $request, $id)
    {
        $data = [
            'title' => $request->get('title'),
            'text' => $request->get('text'),
            'status' => $request->get('status'),
        ];

        $image = null;
        if ($request->file('image')) {
            $image['file'] = $request->file('image');
            $image['path'] = 'blocks'.'/'.date('Ymd-His').'-'.uniqid().'.'.$image['file']->getClientOriginalExtension();
            $data = array_merge($data, ['image' => $image['path']]);
        }

        $block = LogicBlock::findOrFail($id);
        if ($block->update($data)) {
            $this->imageUpload($image);
        }

        return redirect()
            ->action('Admin\SupportController@index')
            ->with([
                'message'    => __('voyager.menu_builder.successfully_updated'),
                'alert-type' => 'success',
            ]);
    }

    public function destroy($id)
    {
        $block = LogicBlock::findOrFail($id);
        //$this->authorize('delete', $item->menu);
        //$item->deleteAttributeTranslation('title');
        if ($block->destroy($id)) {
            $this->imageDelete($block->image);
        }

        return redirect()
            ->action('Admin\SupportController@index')
            ->with([
                'message'    => __('voyager.support.successfully_deleted'),
                'alert-type' => 'success',
            ]);
    }

    private function symlink() {
        symlink('C:\Server\Git\eMarketer\storage\app\public', 'storage');
    }
}