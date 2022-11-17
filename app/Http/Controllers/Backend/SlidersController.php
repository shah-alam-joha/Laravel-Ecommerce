<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Slider;

use Image;
use File;


class SlidersController extends Controller 
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    
    public function index()
    {
        $sliders = Slider::orderBy('priority', 'asc')->get();
        return view('backend.pages.sliders.index', compact('sliders'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'image' => 'required|image',
            'priority' => 'required',
            'button_link' => 'required|url',
        ],
        [
            'title.required' => 'Please provide a Slider Title',
            'image.required' => 'Please provide a Slider Image',
            'image.image' => 'Please provide a valid Slider Image',
            'priority.required' => 'Please provide a slider priority',
            'button_link.required' => 'Please provide a slider button link',
        ]);

        $slider = new Slider();
        $slider->title = $request->title;
        $slider->image = $request->image;
        $slider->priority = $request->priority;
        $slider->button_text = $request->button_text;
        $slider->button_link = $request->button_link;
        

        if ( $request->image > 0) {
            $image = $request->file('image');
            $img = time().'.'.$image->getClientOriginalExtension();
            $location = 'images/sliders/'.$img;
            Image::make($image)->save($location);
            $slider->image = $img;
        }

        $slider->save();

        session()->flash('success', 'A new slider has added successfully !!');
        return redirect()->route('admin.sliders');
    }


    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'title' => 'required',
            'image' => 'nullable|image',
            'priority' => 'required',
            'button_link' => 'nullable|url',
        ],
        [
            'title.required' => 'Please provide a slider title',
            'image.image' => 'Please provide a valid image',
            'priority.required' => 'Please provide a slider priority',
            'button_link.url' => 'Please provide valid Slider link',
        ]);

        $slider = Slider::find($id);
        $slider->title = $request->title;
        $slider->priority = $request->priority;
        $slider->button_link = $request->button_link;
        $slider->button_text = $request->button_text;

        if ($request->image > 0) {
            //delete the old slider image
            if (File::exists('images/sliders/'.$slider->image)) {
                File::delete('images/sliders/'.$slider->image);
            }

            $image = $request->file('image');
            $img = time().'.'.$image->getClientOriginalExtension();
            $location = 'images/sliders/'.$img;
            Image::make($image)->save($location);
            $slider->image = $img;
            
        }
        $slider->save();

        session()->flash('success', 'Slider has updated successfully !!');
        return redirect()->route('admin.sliders');

    } 
    public function delete($id)
    {
        $slider = Slider::find($id);
        if(!is_null($slider)){
            if (File::exists('images/sliders/'.$slider->image)) {
                File::delete('images/sliders/'.$slider->image);
            }
            $slider->delete();
        }
        session()->flash('success', 'Slider has deleted successfully !!');
        return back();
    }


}
