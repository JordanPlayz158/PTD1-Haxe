package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_873 extends Class_853 {


    @:allow(code) var var_20:Int = 0;

    @:allow(code) var var_12:Float = Math.NaN;

    public function new(param1:Class_875, param2:Int, param3:Float, param4:Poke) {
        this.var_20 = param2;
        this.var_12 = param3;
        super(param1, new Do_Spikes_Path(), 0, param4);
    }

    @:allow(code) override function onCollision(param1:Poke) {
        if (param1.check_Effects(Class_850) == null) {
            if (Std.is(var_65, Class_1104)) {
                param1.method_18(cast(var_65, Class_1104));
            }
            param1.add_Effect(new Class_850(param1, Attack.ATTACK_TIME));
            param1.take_Damage(this.var_20, new Class_197(param1, new Gfx_Hit()), this.var_12, false);
        }
    }
}

