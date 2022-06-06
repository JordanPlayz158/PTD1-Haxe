package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_107 extends Attack {


    static inline final name_1 = Std.int(1800.0);

    static inline final name_2 = Std.int(180.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Quiver Dance";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc8_:ASAny = null;
        if (var_2.check_Effects(Class_806) != null && var_2.check_Effects(Class_801) != null && var_2.check_Effects(Class_803) != null) {
            var_2.currentCoolDown = 0;
            return;
        }
        var _loc2_ = var_2.check_Effects(Class_800);
        var _loc3_ = var_2.check_Effects(Class_809);
        var _loc4_ = var_2.check_Effects(Class_806);
        var _loc5_ = var_2.check_Effects(Class_801);
        var _loc6_ = var_2.check_Effects(Class_803);
        var _loc7_ = var_2.check_Effects(Class_810);
        if (_loc2_ != null) {
            _loc2_.remove_Me();
        }
        else if (_loc5_ == null) {
            var_2.add_Effect(new Class_801(var_2, Class_107.name_1));
        }
        if (_loc3_ != null) {
            _loc3_.remove_Me();
        }
        else if (_loc4_ == null) {
            var_2.add_Effect(new Class_806(var_2, Class_107.name_1));
        }
        if (_loc7_ != null) {
            _loc7_.remove_Me();
        }
        else if (_loc6_ == null) {
            var_2.add_Effect(new Class_803(var_2, Class_107.name_1));
        }
        if (_loc2_ != null && _loc3_ != null && _loc7_ != null) {
            _loc8_ = new Class_22(Class_22.const_17);
        }
        var_2.add_Effect(new Class_733(var_2, new Do_Quiver_Dance()));
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
        return Class_107.name_2;
    }
}

