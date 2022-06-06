package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_186 extends Attack {


    static inline final name_1 = Std.int(792.0);

    static inline final name_2 = Std.int(720.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Psych Up";
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = param1.check_Effects(Class_800);
        var _loc3_ = param1.check_Effects(Class_802);
        var _loc4_ = param1.check_Effects(Class_810);
        var _loc5_ = param1.check_Effects(Class_807);
        var _loc6_ = param1.check_Effects(Class_801);
        var _loc7_ = param1.check_Effects(Class_805);
        var _loc8_ = param1.check_Effects(Class_803);
        var _loc9_ = param1.check_Effects(Class_808);
        if (_loc2_ == null && _loc3_ == null && _loc4_ == null && _loc5_ == null && _loc6_ == null && _loc7_ == null && _loc8_ == null && _loc9_ == null) {
            var_2.currentCoolDown = 0;
            return;
        }
        var _loc10_ = var_2.check_Effects(Class_800);
        var _loc11_ = var_2.check_Effects(Class_802);
        var _loc12_ = var_2.check_Effects(Class_810);
        var _loc13_ = var_2.check_Effects(Class_807);
        var _loc14_ = var_2.check_Effects(Class_801);
        var _loc15_ = var_2.check_Effects(Class_805);
        var _loc16_ = var_2.check_Effects(Class_803);
        var _loc17_ = var_2.check_Effects(Class_808);
        if (_loc2_ != null && _loc10_ == null) {
            if (_loc14_ != null) {
                _loc14_.remove_Me();
            }
            else {
                var_2.add_Effect(new Class_800(var_2, Class_186.name_1));
            }
        }
        else if (_loc6_ != null && _loc14_ == null) {
            if (_loc10_ != null) {
                _loc10_.remove_Me();
            }
            else {
                var_2.add_Effect(new Class_801(var_2, Class_186.name_1));
            }
        }
        if (_loc4_ != null && _loc12_ == null) {
            if (_loc16_ != null) {
                _loc16_.remove_Me();
            }
            else {
                var_2.add_Effect(new Class_810(var_2, Class_186.name_1));
            }
        }
        else if (_loc8_ != null && _loc16_ == null) {
            if (_loc12_ != null) {
                _loc12_.remove_Me();
            }
            else {
                var_2.add_Effect(new Class_803(var_2, Class_186.name_1));
            }
        }
        if (_loc3_ != null && _loc11_ == null) {
            if (_loc15_ != null) {
                _loc15_.remove_Me();
            }
            else {
                var_2.add_Effect(new Class_802(var_2, Class_186.name_1));
            }
        }
        else if (_loc7_ != null && _loc15_ == null) {
            if (_loc11_ != null) {
                _loc11_.remove_Me();
            }
            else {
                var_2.add_Effect(new Class_805(var_2, Class_186.name_1));
            }
        }
        if (_loc5_ != null && _loc13_ == null) {
            if (_loc17_ != null) {
                _loc17_.remove_Me();
            }
            else {
                var_2.add_Effect(new Class_807(var_2, Class_186.name_1));
            }
        }
        else if (_loc9_ != null && _loc17_ == null) {
            if (_loc13_ != null) {
                _loc13_.remove_Me();
            }
            else {
                var_2.add_Effect(new Class_808(var_2, Class_186.name_1));
            }
        }
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_Initial_CoolDown():Int {
        return Attack.ATTACK_TIME;
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_186.name_2;
    }
}

