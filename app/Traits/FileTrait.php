<?php
namespace App\Traits;

use Illuminate\Support\Facades\Storage;
use Intervention\Image\Constraint;
use Intervention\Image\Facades\Image;

trait FileTrait
{
    protected function imageUpload($data = [])
    {
        if ($data !== null) {
            $resizeWidth = 1800;
            $resizeHeight = null;
            $ext = $data['file']->guessClientExtension();

            if (in_array($ext, ['jpeg', 'jpg', 'png', 'gif'])) {
                $image = Image::make($data['file'])
                    ->resize($resizeWidth, $resizeHeight, function (Constraint $constraint) {
                        $constraint->aspectRatio();
                        $constraint->upsize();
                    })
                    ->encode($data['file']->getClientOriginalExtension(), 75);

                // move uploaded file from temp to uploads directory
                if (Storage::disk(config('voyager.storage.disk'))->put($data['path'], (string) $image, 'public')) {
                    $status = __('voyager.media.success_uploading');
                } else {
                    $status = __('voyager.media.error_uploading');
                }
            } else {
                $status = __('voyager.media.uploading_wrong_type');
            }
            return $status;
        }
    }

    public function imageDelete($path)
    {
        if (Storage::disk(config('voyager.storage.disk'))->exists($path)) {
            Storage::disk(config('voyager.storage.disk'))->delete($path);
        }
    }
}
