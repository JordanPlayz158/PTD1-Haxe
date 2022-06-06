package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_793 extends Class_732 {


    public function new(param1:Poke, param2:Int) {
        super(param1, new Hit_Decrease_Speed(), param2);
    }

    @:allow(code) override function init() {
        super.init();
        var_1.myProfile.mod_Speed *= 0.0001;
        var_1.set_Speed();
    }

    @:allow(code) override function remove_Me() {
        var_1.myProfile.mod_Speed *= 10000;
        var_1.set_Speed();
        super.remove_Me();
    }
}

