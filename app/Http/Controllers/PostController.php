<?php
namespace App\Http\Controllers;

use Illuminate\Routing\Controller as BaseController;
use App\Post;
use Modules\Flow\Facades\Flow;

class PostController extends BaseController
{
    public function index() {

        $posts = Post::with('user')->get();
        return view('post.index', compact('posts'));
    }

    public function show($id)
    {
        $item = Flow::get('facebook');
        $flows = Flow::make($item);

        $result = null;
        $step = 'flow_begin';

        while ($step !== null) {
            $flow = $flows[$step];
            try {
                $todo = $this->{'flow'.ucfirst($flow->type)}($flow, $result);
            } catch (\BadMethodCallException $e) {
                Flow::report($item['id'], [
                    'step' => $step,
                    'error' => json_encode([
                        'step' => $step,
                        'error' => 'Method is missing'
                    ])
                ]);
                var_dump('Error: ' . 'Method is missing');
                break;
            }
            $result = $todo['result'];
            $step = $todo['step'];
        };

        $post = Post::find($id);
        return view('post.show', compact('post'));
    }

    public function create()
    {
        return view('crud.create');
    }

    public function store(Request $request)
    {
        $crud = new Crud([
            'title' => $request->get('title'),
            'post' => $request->get('post')
        ]);

        $crud->save();
        return redirect('/crud');
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }

    private function flowBegin($data = null, $result = null)
    {
        var_dump('Begin');
        return [
            'result' => 'success',
            'step' => $data->out
        ];
    }
    private function flowEnd($data = null, $result = null)
    {
        var_dump('End');
        return [
            'result' => 'success',
            'step' => $data->out
        ];
    }
    private function flowSms($data = null, $result = null)
    {
        $result = rand(0,1) === 0 ? 'no' : 'yes';
        var_dump('Run sms: ' . $result);
        return [
            'result' => $result,
            'step' => $data->out
        ];
    }
    private function flowPhone($data = null, $result = null)
    {
        $result = rand(0,1) === 0 ? 'no' : 'yes';
        var_dump('Run phone: ' . $result);
        return [
            'result' => $result,
            'step' => $data->out
        ];
    }
    private function flowFacebook($data = null, $result = null)
    {
        $result = rand(0,1) === 0 ? 'no' : 'yes';
        var_dump('Run facebook: ' . $result);
        return [
            'result' => $result,
            'step' => $data->out
        ];
    }

    private function flowEmail($data = null, $result = null)
    {
        $result = rand(0,1) === 0 ? 'no' : 'yes';
        var_dump('Run email: ' . $result);
        return [
            'result' => $result,
            'step' => $data->out
        ];
    }

    private function FlowIfelse($data = null, $result = null)
    {
        var_dump('Run ifelse');
        return [
            'result' => 'success',
            'step' => $result === 'out' ? $data->out : ( $result === 'yes' ? $data->yes : $data->no)
        ];
    }

    private function FlowWait($data = null, $result = null)
    {
        var_dump('Run wait: ' . $data->time);
        sleep($data->time);
        return [
            'result' => 'success',
            'step' => $data->out
        ];
    }

}
