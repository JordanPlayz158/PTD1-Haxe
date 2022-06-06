package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_741 extends Class_231 {


    var var_696:Int = 0;

    public function new(param1:Poke, param2:Poke, param3:Int, param4:Class_194, param5:Int) {
        this.var_696 = param5;
        super(param1, param2, param3, new Hit_Gunk_Shot(), param4);
    }

    @:allow(code) override function do_On_Hit(param1:Poke) {
        var _loc2_ = 0;
        var _loc4_:ASAny = null;
        if (param1.check_Effects(Class_200) == null && !param1.myProfile.is_Type(Class_13.const_2) && !param1.myProfile.is_Type(Class_13.const_7)) {
            _loc2_ = Std.int(Math.random() * 100 + 1);
            if (_loc2_ <= 30) {
                (_loc4_ = new Class_200(param1, this.var_696)).var_12 = var_12;
                param1.add_Effect(_loc4_);
            }
        }
    }
}

