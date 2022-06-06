package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_871 extends Class_853 {


    @:allow(code) var var_55:Class_194;

    @:allow(code) var var_14:Poke;

    @:allow(code) var var_12:Float = Math.NaN;

    @:allow(code) var var_706:Bool = false;

    @:allow(code) var var_10:Float = Math.NaN;

    @:allow(code) var var_9:Float = Math.NaN;

    @:allow(code) var var_149:Float = Math.NaN;

    @:allow(code) var var_147:Float = Math.NaN;

    @:allow(code) var speed:Int = 27;

    public function new(param1:Class_875, param2:Poke, param3:Poke, param4:Class_194, param5:Bool) {
        this.var_55 = param4;
        this.var_14 = param2;
        this.var_706 = param5;
        super(param1, new Do_Fire_Blast(), 0, param3);
        if (!Std.is(param3, Class_1104)) {
            var_234 = true;
            var_497 = true;
        }
        gfx.gotoAndStop(1);
        this.method_7();
    }

    @:allow(code) function method_7() {
        var _loc1_ = Math.atan2(this.var_14.y - 0, this.var_14.x - 0);
        this.var_10 = this.speed * Math.cos(_loc1_);
        this.var_9 = this.speed * Math.sin(_loc1_);
        this.var_149 = var_65.x;
        this.var_147 = var_65.y;
    }

    @:allow(code) override function onCollision(param1:Poke) {
        var _loc4_ = 0;
        var _loc5_:ASAny = null;
        if (param1.check_Effects(Class_848) != null) {
            return;
        }
        var _loc2_ = this.var_55.method_3(param1);
        var _loc3_ = this.var_55.method_3(param1, 20, true);
        if (this.var_706) {
            _loc2_ = Std.int(_loc2_ * 0.5);
            _loc3_ = Std.int(_loc3_ * 0.5);
        }
        if (var_65.check_Effects(Class_789) != null) {
            _loc2_ = Std.int(_loc2_ * 1.5);
            _loc3_ = Std.int(_loc3_ * 1.5);
        }
        if (param1.check_Effects(Class_201) == null && !param1.myProfile.is_Type(Class_13.const_6)) {
            if ((_loc4_ = Std.int(Math.random() * 100 + 1)) <= 10) {
                (_loc5_ = new Class_201(param1, _loc3_)).var_12 = this.var_55.var_12;
                param1.add_Effect(_loc5_);
            }
        }
        param1.add_Effect(new Class_848(param1, Attack.ATTACK_TIME));
        if (Std.is(var_65, Class_1104)) {
            param1.method_18(cast(var_65, Class_1104));
        }
        param1.take_Damage(_loc2_, new Class_197(param1, new Gfx_Hit()), this.var_55.var_12, false);
    }

    @:allow(code) override function run() {
        if (this.x < this.var_149 - 900) {
            remove_Me();
            return;
        }
        if (this.x > this.var_149 + 900) {
            remove_Me();
            return;
        }
        if (this.y < this.var_147 - 580) {
            remove_Me();
            return;
        }
        if (this.y > this.var_147 + 580) {
            remove_Me();
            return;
        }
        gfx.nextFrame();
        this.y += this.var_9;
        this.x += this.var_10;
    }
}

