package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_468 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Explosion";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 250;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_1;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        var _loc7_:ASAny = null;
        var _loc2_ = cast(var_2.my_Parent, Class_875).var_79;
        var _loc5_ = 0;
        while (_loc5_ < _loc2_.length) {
            _loc3_ = _loc2_[_loc5_];
            _loc3_.method_18(cast(var_2, Class_1104));
            _loc4_ = method_3(_loc3_);
            method_13(_loc3_, _loc4_, this.get_Target_Hit_Animation(_loc3_), false);
            _loc5_++;
        }
        var _loc6_ = cast(var_2.my_Parent, Class_875).towerList;
        _loc5_ = 0;
        while (_loc5_ < _loc6_.length) {
            if ((_loc7_ = _loc6_[_loc5_]) != var_2) {
                _loc4_ = method_3(_loc7_);
                method_13(_loc7_, _loc4_, this.get_Target_Hit_Animation(_loc7_), false);
            }
            _loc5_++;
        }
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        var_2.myProfile.exploded = true;
        return new Class_735(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Gfx_Hit());
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

