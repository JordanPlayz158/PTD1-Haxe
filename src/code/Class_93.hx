package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_93 extends Class_14 {


    public function new() {
        
    }

    @:allow(code) override function run(param1:Poke) {
        var _loc2_ = 0;
        if (param1.myProfile.moveSelected == 2) {
            if (cast(param1.var_55, Class_566).var_237 == "end") {
                _loc2_ = 1;
            }
        }
        else if (cast(param1.var_55, Class_121).var_237 == "end") {
            _loc2_ = 2;
        }
        if (_loc2_ != 0) {
            param1.myProfile.moveSelected = _loc2_;
            param1.reset_Attack();
        }
    }
}

