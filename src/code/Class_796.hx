package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_796 extends Class_732 {


    var var_18:GfxMovieClip;

    public function new(param1:Poke, param2:Int) {
        super(param1, new Hit_Decrease_Speed(), param2);
    }

    @:allow(code) override function init() {
        super.init();
        var_1.myProfile.mod_Speed *= 0.0001;
        var_1.set_Speed();
        var _loc1_ = var_1.gfx.height / 2;
        this.var_18 = new Frozen();
        this.var_18.y -= _loc1_;
        var_1.addChild(this.var_18);
    }

    @:allow(code) override function remove_Me() {
        var_1.myProfile.mod_Speed *= 10000;
        var_1.set_Speed();
        var_1.removeChild(this.var_18);
        this.var_18 = null;
        super.remove_Me();
    }
}

