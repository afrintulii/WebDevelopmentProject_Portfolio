<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Footer;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Carbon;

class FooterController extends Controller
{
      public function FooterSetup(){

        $allfooter= Footer::find(1);
        return view('admin.footer.footer_all',compact('allfooter'));

      } //End Method
      


      public function UpdateFooter(Request $request){

        $footer_id= $request->id;

        
             
              Footer::findOrFail($footer_id)->update([
                 'number' => $request->number,
                 
                 'short_description' => $request->short_description,
                 'address' => $request->address,
                 'email' => $request->email,
                 'facebook' => $request->facebook,
                 'instragram' => $request->instragram,
                 'copyright' => $request->copyright,
                 
                 
              ]);
              $notification = array(
                'message' => 'Footer Updated Successfully',
                'alert-type' => 'success'
        );
            
            return redirect()->back()->with($notification);
       

      } //End Method
}
