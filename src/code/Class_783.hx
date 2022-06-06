package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.motion.Color;

class Class_783 extends Class_286 {


    public function new(param1:Poke, param2:Poke, param3:Int) {
        super(param1, param2, param3);
    }

    @:allow(code) override function init() {
        super.init();
        var _loc1_ = new Color();
        _loc1_.setTint(16777215, 0.9);
        gfx.transform.colorTransform = _loc1_;
    }
}

