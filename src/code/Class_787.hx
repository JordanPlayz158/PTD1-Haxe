package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_787 extends Class_552 {


    public function new(param1:Poke) {
        super(param1);
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = 0;
        var _loc3_ = Std.int(Math.random() * 100 + 1);
        if (_loc3_ <= 5) {
            _loc2_ = 10;
        }
        else if (_loc3_ <= 15) {
            _loc2_ = 30;
        }
        else if (_loc3_ <= 35) {
            _loc2_ = 50;
        }
        else if (_loc3_ <= 65) {
            _loc2_ = 70;
        }
        else if (_loc3_ <= 85) {
            _loc2_ = 90;
        }
        else if (_loc3_ <= 95) {
            _loc2_ = 110;
        }
        else if (_loc3_ <= 100) {
            _loc2_ = 150;
        }
        var _loc4_ = method_3(param1, _loc2_);
        param1.add_Effect(new Class_240(param1));
        method_13(param1, _loc4_, get_Target_Hit_Animation(param1));
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME * 3;
    }
}

