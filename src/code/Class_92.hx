package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_92 extends Class_14 {


    public function new() {
        
    }

    @:allow(code) override function run(param1:Poke) {
        var _loc2_ = param1.life / param1.totalLife;
        if (_loc2_ <= 0.3) {
            if (param1.myProfile.moveSelected != 4) {
                param1.myProfile.moveSelected = 4;
                param1.reset_Attack();
            }
            return;
        }
        if (param1.check_Effects(Class_803) == null) {
            if (param1.myProfile.moveSelected != 1) {
                param1.myProfile.moveSelected = 1;
                param1.reset_Attack();
            }
        }
        else if (param1.check_Effects(Class_808) == null) {
            if (param1.myProfile.moveSelected != 2) {
                param1.myProfile.moveSelected = 2;
                param1.reset_Attack();
            }
        }
        else if (param1.myProfile.moveSelected != 3) {
            param1.myProfile.moveSelected = 3;
            param1.reset_Attack();
        }
    }
}

