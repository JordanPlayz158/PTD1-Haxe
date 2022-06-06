package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_138 extends Attack {


    static inline final name_1 = Std.int(1800.0);

    static inline final name_2 = Std.int(72.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Guard Swap";
        cantMiss = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = var_2.check_Effects(Class_807);
        var _loc3_ = var_2.check_Effects(Class_808);
        var _loc4_ = var_2.check_Effects(Class_810);
        var _loc5_ = var_2.check_Effects(Class_803);
        var _loc6_ = param1.check_Effects(Class_807);
        var _loc7_ = param1.check_Effects(Class_808);
        var _loc8_ = param1.check_Effects(Class_810);
        var _loc9_ = param1.check_Effects(Class_803);
        var _loc10_ = "None";
        if (_loc2_ != null) {
            _loc10_ = "lower";
        }
        else if (_loc3_ != null) {
            _loc10_ = "increased";
        }
        var _loc11_ = "None";
        if (_loc4_ != null) {
            _loc11_ = "lower";
        }
        else if (_loc5_ != null) {
            _loc11_ = "increased";
        }
        var _loc12_ = "None";
        if (_loc6_ != null) {
            _loc12_ = "lower";
        }
        else if (_loc7_ != null) {
            _loc12_ = "increased";
        }
        var _loc13_ = "None";
        if (_loc8_ != null) {
            _loc13_ = "lower";
        }
        else if (_loc9_ != null) {
            _loc13_ = "increased";
        }
        if (_loc7_ != null) {
            _loc7_.remove_Me();
        }
        else if (_loc6_ != null) {
            _loc6_.remove_Me();
        }
        if (_loc9_ != null) {
            _loc9_.remove_Me();
        }
        else if (_loc8_ != null) {
            _loc8_.remove_Me();
        }
        if (_loc3_ != null) {
            _loc3_.remove_Me();
        }
        else if (_loc2_ != null) {
            _loc2_.remove_Me();
        }
        if (_loc5_ != null) {
            _loc5_.remove_Me();
        }
        else if (_loc4_ != null) {
            _loc4_.remove_Me();
        }
        if (_loc10_ == "lower") {
            param1.add_Effect(new Class_807(param1, Class_138.name_1));
        }
        else if (_loc10_ == "increaded") {
            param1.add_Effect(new Class_808(param1, Class_138.name_1));
        }
        if (_loc11_ == "lower") {
            param1.add_Effect(new Class_810(param1, Class_138.name_1));
        }
        else if (_loc11_ == "increaded") {
            param1.add_Effect(new Class_803(param1, Class_138.name_1));
        }
        if (_loc12_ == "lower") {
            var_2.add_Effect(new Class_807(var_2, Class_138.name_1));
        }
        else if (_loc12_ == "increaded") {
            var_2.add_Effect(new Class_808(var_2, Class_138.name_1));
        }
        if (_loc13_ == "lower") {
            var_2.add_Effect(new Class_810(var_2, Class_138.name_1));
        }
        else if (_loc13_ == "increaded") {
            var_2.add_Effect(new Class_803(var_2, Class_138.name_1));
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
        return Class_138.name_2;
    }
}

