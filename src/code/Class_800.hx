package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_800 extends Class_732 {


    public function new(param1:Poke, param2:Int) {
        super(param1, null, param2);
    }

    @:allow(code) override function init() {
        super.init();
        var _loc1_ = new Class_22(Class_22.const_17);
        var_1.myProfile.mod_Special_Attack *= 0.25;
    }

    @:allow(code) override function remove_Me() {
        var_1.myProfile.mod_Special_Attack *= 4;
        super.remove_Me();
    }
}

