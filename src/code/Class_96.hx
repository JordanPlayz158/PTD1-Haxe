package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_96 extends Attack {


    static inline final name_1 = Std.int(720.0);

    static inline final name_2 = Std.int(72.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Stockpile";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc6_:ASAny = null;
        var _loc2_ = var_2.check_Effects(Class_810);
        var _loc3_ = var_2.check_Effects(Class_807);
        var _loc4_ = var_2.check_Effects(Class_808);
        var _loc5_ = var_2.check_Effects(Class_803);
        if (_loc2_ != null) {
            _loc2_.remove_Me();
        }
        else if (_loc5_ == null) {
            var_2.add_Effect(new Class_803(var_2, Class_96.name_1));
        }
        if (_loc3_ != null) {
            _loc3_.remove_Me();
        }
        else if (_loc4_ == null) {
            var_2.add_Effect(new Class_808(var_2, Class_96.name_1));
        }
        if (_loc3_ != null && _loc2_ != null) {
            _loc6_ = new Class_22(Class_22.const_17);
        }
        var _loc7_:Class_16;
        if ((_loc7_ = var_2.check_Effects(Class_738)) != null) {
            _loc7_.remove_Me();
            _loc7_ = new Class_740(var_2, 6684927, 0.5, Class_96.name_1);
            var_2.add_Effect(_loc7_);
            return;
        }
        if ((_loc7_ = var_2.check_Effects(Class_740)) != null) {
            _loc7_.remove_Me();
            _loc7_ = new Class_739(var_2, 6684927, 0.8, Class_96.name_1);
            var_2.add_Effect(_loc7_);
            return;
        }
        if ((_loc7_ = var_2.check_Effects(Class_739)) != null) {
            return;
        }
        _loc7_ = new Class_738(var_2, 6684927, 0.2, Class_96.name_1);
        var_2.add_Effect(_loc7_);
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
        return Class_96.name_2;
    }
}

