package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_699 extends Class_194 {


    static inline final name_1 = Std.int(1800.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Silver Wind";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 60;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc5_:ASAny = null;
        var _loc2_ = Std.int(Math.random() * 100 + 1);
        if (_loc2_ <= 10) {
            this.increase_Special_Attack();
            this.increase_Attack();
            this.increase_Defense();
            this.increase_Special_Defense();
            _loc5_ = new Class_22(Class_22.const_17);
        }
        var _loc3_ = method_3(param1);
        var _loc4_:Class_16;
        (_loc4_ = new Class_376(var_2, param1, _loc3_)).var_12 = var_12;
        var_2.add_Effect(_loc4_);
    }

    @:allow(code) function increase_Special_Attack() {
        if (var_2.check_Effects(Class_801) != null) {
            return;
        }
        var _loc1_ = var_2.check_Effects(Class_800);
        if (_loc1_ != null) {
            _loc1_.remove_Me();
            return;
        }
        var_2.add_Effect(new Class_801(var_2, Class_699.name_1));
    }

    @:allow(code) function increase_Attack() {
        if (var_2.check_Effects(Class_805) != null) {
            return;
        }
        var _loc1_ = var_2.check_Effects(Class_802);
        if (_loc1_ != null) {
            _loc1_.remove_Me();
            return;
        }
        var_2.add_Effect(new Class_805(var_2, Class_699.name_1));
    }

    @:allow(code) function increase_Special_Defense() {
        if (var_2.check_Effects(Class_803) != null) {
            return;
        }
        var _loc1_ = var_2.check_Effects(Class_810);
        if (_loc1_ != null) {
            _loc1_.remove_Me();
            return;
        }
        var_2.add_Effect(new Class_803(var_2, Class_699.name_1));
    }

    @:allow(code) function increase_Defense() {
        if (var_2.check_Effects(Class_808) != null) {
            return;
        }
        var _loc1_ = var_2.check_Effects(Class_807);
        if (_loc1_ != null) {
            _loc1_.remove_Me();
            return;
        }
        var_2.add_Effect(new Class_808(var_2, Class_699.name_1));
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_22;
    }
}

