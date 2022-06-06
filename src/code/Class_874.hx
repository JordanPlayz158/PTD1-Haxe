package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_874 extends Class_853 {


    @:allow(code) var var_306:Int = 0;

    @:allow(code) var var_12:Float = Math.NaN;

    public function new(param1:Class_875, param2:Int, param3:Float, param4:Poke) {
        this.var_306 = param2;
        this.var_12 = param3;
        super(param1, new Do_Toxic_Spikes_Path(), 0, param4);
    }

    @:allow(code) override function onCollision(param1:Poke) {
        var _loc2_:ASAny = null;
        if (param1.check_Effects(Class_200) == null && !param1.myProfile.is_Type(Class_13.const_2) && !param1.myProfile.is_Type(Class_13.const_7)) {
            if (Std.is(var_65, Class_1104)) {
                param1.method_18(cast(var_65, Class_1104));
            }
            _loc2_ = new Class_200(param1, this.var_306);
            _loc2_.var_12 = this.var_12;
            param1.add_Effect(_loc2_);
        }
    }
}

