package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_829 extends Class_732 {


    var var_691:Float = Math.NaN;

    public function new(param1:Poke, param2:Int) {
        super(param1, new Do_Decrease_Crit(), param2);
    }

    @:allow(code) override function init() {
        super.init();
        var _loc1_ = new Class_22(Class_22.const_11);
        this.var_691 = var_1.myProfile.crit_Chance;
        var_1.myProfile.crit_Chance = 0;
    }

    @:allow(code) override function remove_Me() {
        var_1.myProfile.crit_Chance = this.var_691;
        super.remove_Me();
    }
}

