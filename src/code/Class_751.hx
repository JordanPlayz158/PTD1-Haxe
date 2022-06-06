package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_751 extends Class_231 {


    var var_321:Int = 0;

    public function new(param1:Poke, param2:Poke, param3:Int, param4:Int, param5:Class_194) {
        this.var_321 = param4;
        super(param1, param2, param3, new Do_Flamethrower(), param5);
    }

    @:allow(code) override function do_On_Hit(param1:Poke) {
        var _loc2_ = 0;
        var _loc3_:ASAny = null;
        if (param1.check_Effects(Class_201) == null && !param1.myProfile.is_Type(Class_13.const_6)) {
            _loc2_ = Std.int(Math.random() * 100 + 1);
            if (_loc2_ <= 10) {
                _loc3_ = new Class_201(param1, this.var_321);
                _loc3_.var_12 = var_12;
                param1.add_Effect(_loc3_);
            }
        }
    }
}

