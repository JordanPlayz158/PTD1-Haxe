package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.SoundMixer;
import flash.media.SoundTransform;

class Class_1 {

    public static var var_25:Float = 1;

    public static var var_194:Float = 1;

    public static var var_359:Float = 1;


    static inline final const_286 = 2;

    static inline final const_256 = 1;

    static inline final const_354:Float = 0;

    static inline final const_343:Float = 1;

    var var_429:Int = 0;

    var gfx:GfxMovieClip;

    public function new(param1:GfxMovieClip) {
        this.gfx = param1;
        this.var_429 = Class_1.const_256;
    }

    @:allow(code) function method_422() {
        var _loc1_ = Math.NaN;
        ++this.var_429;
        if (this.var_429 > Class_1.const_286) {
            this.var_429 = Class_1.const_256;
        }
        this.gfx.gotoAndStop(this.var_429);
        if (this.var_429 == Class_1.const_286) {
            _loc1_ = Class_1.const_354;
        }
        else if (this.var_429 == Class_1.const_256) {
            _loc1_ = Class_1.const_343;
        }
        var _loc2_ = new SoundTransform(_loc1_, 0);
        SoundMixer.soundTransform = _loc2_;
    }
}

