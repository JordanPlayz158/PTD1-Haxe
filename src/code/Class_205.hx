package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.motion.Color;

class Class_205 extends Class_16 {


    @:allow(code) var var_582:UInt = 0;

    @:allow(code) var var_675:Int = 0;

    @:allow(code) var var_690:Float = Math.NaN;

    public function new(param1:Poke, param2:UInt, param3:Float, param4:Int) {
        this.var_582 = param2;
        this.var_675 = param4;
        this.var_690 = param3;
        super(param1);
    }

    @:allow(code) override function init() {
        var _loc1_ = new Color();
        _loc1_.setTint(this.var_582, this.var_690);
        var_1.gfx.transform.colorTransform = _loc1_;
    }

    @:allow(code) override function remove_Me() {
        var _loc1_ = new Color();
        var_1.gfx.transform.colorTransform = _loc1_;
        var_1.remove_Effect(this);
        var_1 = null;
    }

    @:allow(code) override function run() {
        if (var_15 == this.var_675) {
            this.remove_Me();
            return;
        }
        var_15 += method_6();
    }
}

