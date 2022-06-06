package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_668 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Anti Poison";
        cantMiss = true;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 300;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_1;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        var _loc7_:ASAny = null;
        var _loc2_ = cast(var_2.my_Parent, Class_875).var_79;
        var _loc5_ = 0;
        while (_loc5_ < _loc2_.length) {
            _loc3_ = _loc2_[_loc5_];
            if (_loc3_.myProfile.is_Type(Class_13.const_2)) {
                _loc3_.method_18(cast(var_2, Class_1104));
                _loc4_ = method_3(_loc3_);
                method_13(_loc3_, _loc4_, this.get_Target_Hit_Animation(_loc3_), false);
            }
            _loc5_++;
        }
        var _loc6_ = cast(var_2.my_Parent, Class_875).towerList;
        _loc5_ = 0;
        while (_loc5_ < _loc6_.length) {
            if (!(_loc7_ = _loc6_[_loc5_]).myProfile.is_Type(Class_13.const_2)) {
                _loc7_.take_Healing(_loc7_.totalLife * 0.1);
            }
            _loc5_++;
        }
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_733(var_2, new Do_Poison_Gas());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME * 3;
    }
}

