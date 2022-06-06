package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_173 extends Attack {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Refresh";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < var_2.effect_List.length) {
            _loc2_ = var_2.effect_List[_loc3_];
            if (Std.is(_loc2_, Class_202)) {
                _loc2_.remove_Me();
            }
            else if (Std.is(_loc2_, Class_200)) {
                _loc2_.remove_Me();
            }
            else if (Std.is(_loc2_, Class_201)) {
                _loc2_.remove_Me();
                _loc3_++;continue;
            }
            _loc3_++;
        }
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_197(var_2, new Hit_Aromatherapy());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

