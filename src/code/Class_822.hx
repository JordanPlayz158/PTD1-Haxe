package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_822 extends Class_732 {


    var var_668:Vector<Int>;

    public function new(param1:Poke, param2:Int) {
        super(param1, null, param2);
    }

    @:allow(code) override function init() {
        super.init();
        var_1.gfx.alpha = 0.5;
        this.var_668 = var_1.myProfile.types;
        var _loc1_ = new Vector<Int>();
        _loc1_.push(Class_13.const_1);
        var_1.myProfile.types = _loc1_;
    }

    @:allow(code) override function remove_Me() {
        var_1.myProfile.types = this.var_668;
        var_1.gfx.alpha = 1;
        super.remove_Me();
    }
}

