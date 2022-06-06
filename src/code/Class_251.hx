package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.motion.Color;

class Class_251 extends Class_16 {


    var var_668:Vector<Int>;

    @:allow(code) var var_8:Poke;

    public function new(param1:Poke, param2:Poke) {
        this.var_8 = param2;
        super(param1);
    }

    @:allow(code) override function init() {
        var _loc1_ = new Color();
        _loc1_.setTint(52479, 0.5);
        var_1.gfx.transform.colorTransform = _loc1_;
        this.var_668 = var_1.myProfile.types;
        var _loc2_ = new Vector<Int>();
        _loc2_.push(Class_13.const_5);
        var_1.myProfile.types = _loc2_;
    }

    @:allow(code) override function remove_Me() {
        var _loc1_ = new Color();
        var_1.gfx.transform.colorTransform = _loc1_;
        var_1.myProfile.types = this.var_668;
        super.remove_Me();
    }
}

