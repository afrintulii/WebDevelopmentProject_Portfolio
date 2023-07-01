<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Services;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Carbon;

class ServicesController extends Controller
{
    public function AllServices(){
        $services = Services::latest()->get();
        return view('admin.services.services_all',compact('services'));
    } //End Method


    public function AddServices(){
        
        return view('admin.services.services_add');

    } //End Method


    public function StoreServices(Request $request){
        
        $request->validate([
          'services_name' => 'required',
          'services_title' => 'required',
          'services_image' => 'required',
        ],[
         'services_name.required' => 'Services Name is Required',
         'services_title.required' => 'Services Title is Required',
         'services_image.required' => 'Services Image is Required',
 
        ]);
        $services_id= $request->id;
 
        if($request->file('services_image')){
            $image =$request->file('services_image');
            $name_gen = hexdec(uniqid()).'.'.$image->
              getClientOriginalExtension(); //14252.jpg//image format
              Image::make($image)->resize(850,430)->save('upload/services/'
              .$name_gen);
              $save_url = 'upload/services/'.$name_gen;
             
              Services::insert([
                 'services_name' => $request->services_name,
                 'services_title' => $request->services_title,
                 'services_description' => $request->services_description,
                 'services_image' => $save_url,
                 'created_at' => Carbon::now(),
              ]);
              $notification = array(
                'message' => 'Services Inserted  Successfully',
                'alert-type' => 'success'
        );
            
            return redirect()->route('all.services')->with($notification);
        }
 
     } //End Method
     public function EditServices($id){
        $services = Services::findOrFail($id);
        return view('admin.services.services_edit',compact('services'));

    }//End Method

    public function UpdateServices(Request $request){
        $services_id= $request->id;

        if($request->file('services_image')){
            $image =$request->file('services_image');
            $name_gen = hexdec(uniqid()).'.'.$image->
              getClientOriginalExtension(); //14252.jpg//image format
              Image::make($image)->resize(850,430)->save('upload/services/'
              .$name_gen);
              $save_url = 'upload/services/'.$name_gen;
             
              Services::findOrFail($services_id)->update([

                'services_name' => $request->services_name,
                'services_title' => $request->services_title,
                'services_description' => $request->services_description,
                'services_image' => $save_url,
              ]);
              $notification = array(
                'message' => 'Services Updated with Image  Successfully',
                'alert-type' => 'success'
        );
            
            return redirect()->route('all.services')->with($notification);
        } else{
            Services::findOrFail($services_id)->update([
                'services_name' => $request->services_name,
                'services_title' => $request->services_title,
                'services_description' => $request->services_description,
                
             ]);
             $notification = array(
               'message' => 'services Updated without Image  Successfully',
               'alert-type' => 'success'
       );
           
           return redirect()->route('all.services')->with($notification);
        } //end else

    }//End Method

    public function DeleteServices($id){
        $services = Services::findOrFail($id);
        $img= $services->services_image;
        unlink($img);
    
        Services::findOrFail($id)->delete();
        $notification = array(
            'message' => 'Services Deleted Successfully',
            'alert-type' => 'success'
    );
        
        return redirect()->back()->with($notification);
       }//End Method


       public function ServicesDetails($id){
        $services = Services::findOrFail($id);
        return view('frontend.services_details',compact('services'));

       } //End Method


       public function HomeServices(){
        
        $services = Services::latest()->get();
        return view('frontend.services',compact('services'));
    } //End Method

}
