package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_491 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Leaf Tornado";
    }

    @:allow(code) override function get_Accurary():Int {
        return 90;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc5_:ASAny = null;
        var _loc6_:ASAny = null;
        var _loc2_ = Std.int(Math.random() * 100 + 1);
        if (_loc2_ <= 30) {
            if (param1.check_Effects(Class_802) != null) {
                var_2.currentCoolDown = 0;
                return;
            }
            if (_loc5_ = param1.check_Effects(Class_805)) {
                _loc6_ = new Class_22(Class_22.const_11);
                _loc5_.remove_Me();
            }
            else {
                param1.add_Effect(new Class_802(param1, Attack.ATTACK_TIME));
            }
        }
        var _loc3_ = method_3(param1);
        var _loc4_:Class_16;
        (_loc4_ = new Class_264(param1, var_2, _loc3_)).var_12 = var_12;
        param1.add_Effect(_loc4_);
    }

    @:allow(code) override function get_Move_Power():Int {
        return 65;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_8;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }
}

