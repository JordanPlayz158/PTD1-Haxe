package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import flash.media.SoundTransform;

class Class_877 extends _Obj {


    @:allow(code) var var_634:Class_3;

    @:allow(code) var gfx:GfxMovieClip;

    public function new(param1:Class_3) {
        super(cast(param1, _Obj));
        this.var_634 = param1;
        this.init();
    }

    @:allow(code) function init() {
        this.gfx = this.get_Graphic();
        if (this.gfx != null) {
            addChild(this.gfx);
        }
    }

    @:allow(code) function get_Graphic():GfxMovieClip {
        return null;
    }

    @:allow(code) function remove_Me() {
        if (this.var_634 != null) {
            this.var_634.method_24(this);
        }
    }

    function method_5(param1:String) {
        var _loc35_ = "cry_" + param1;
        var _loc37_:Sound;
        var _loc36_:Class<Dynamic>;
        var _loc38_ = (_loc37_ = Type.createInstance((_loc36_ = Type.resolveClass(_loc35_) ), [])).play(0, 1);
        var _loc39_ = new SoundTransform(Class_1.var_194);
        if (_loc38_ != null) {
            _loc38_.soundTransform = _loc39_;
        }
    }
}

