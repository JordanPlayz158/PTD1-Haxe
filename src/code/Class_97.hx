package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_97 extends Attack {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Swallow";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc3_ = 0;
        var _loc2_ = var_2.check_Effects(Class_738);
        if (_loc2_ != null) {
            _loc3_ = 0;
        }
        else {
            _loc2_ = var_2.check_Effects(Class_740);
            if (_loc2_ != null) {
                _loc3_ = 0;
            }
            else {
                _loc2_ = var_2.check_Effects(Class_739);
                if (_loc2_ != null) {
                    _loc3_ = 0;
                }
            }
        }
        if (_loc3_ == 0) {
            return;
        }
        _loc2_.remove_Me();
        var_2.take_Healing(_loc3_);
        var_2.add_Effect(new Class_197(var_2, new Do_Mega_Drain()));
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }
}

