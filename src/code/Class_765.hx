package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_765 extends Class_255 {


    public function new(param1:Poke, param2:Poke, param3:Int) {
        super(param1, param2, param3);
        var_4 = 12;
    }

    @:allow(code) override function remove_Me() {
        var_8.gfx.alpha = 1;
        var_1.removeChild(gfx);
        gfx = null;
        var_1.remove_Effect(this);
        this.do_At_End();
        var_1 = null;
    }

    @:allow(code) override function do_At_End() {
        Attack.lower_Attack(var_1, 0);
        Attack.lower_Defense(var_1, 0);
    }
}

