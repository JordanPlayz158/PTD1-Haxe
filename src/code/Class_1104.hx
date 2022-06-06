package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import flash.events.Event;
import flash.geom.Rectangle;
import flash.media.Sound;
import flash.media.SoundTransform;

class Class_1104 extends Poke {


    @:allow(code) var var_697:Poke;

    public function new(param1:_Obj, param2:Class_6) {
        super(param1, param2);
    }

    @:allow(code) override function reset_Attack() {
        if (false) {
            var_55 = Class_9.method_21((myProfile : ASAny)["tmoveundefined"], this);
        }
        else {
            var_55 = Class_9.method_21((myProfile : ASAny)["moveundefined"], this);
        }
    }

    @:allow(code) function add_Attack(param1:Int):Bool {
        return myProfile.add_Attack(param1);
    }

    @:allow(code) override function I_Fainted() {
        var _loc3_:ASAny = null;
        var _loc1_:Sound = new FaintSound();
        var _loc2_ = _loc1_.play();
        if (_loc2_ != null) {
            _loc3_ = new SoundTransform(Class_1.var_194);
            _loc2_.soundTransform = _loc3_;
        }
        send_Msg(["tower_fainted", this]);
    }

    @:allow(code) override function receive_Experience(param1:Int) {
        super.receive_Experience(param1);
        cast(my_Parent, Class_875).method_78(this);
    }

    @:allow(code) override function take_Healing(param1:Int) {
        super.take_Healing(param1);
        cast(my_Parent, Class_875).method_78(this);
    }

    @:allow(code) override function take_Damage(param1:Int, param2:Class_16, param3:Float = 0, param4:Bool = true) {
        super.take_Damage(param1, param2, param3, param4);
        cast(my_Parent, Class_875).method_78(this);
    }

    @:allow(code) function level_Up() {
        myProfile.level_Up();
        cast(my_Parent, Class_875).method_78(this);
        this.take_Healing(totalLife);
    }

    @:allow(code) function evolve() {
        myProfile.evolve();
        var _loc1_ = getChildIndex(gfx);
        removeChild(gfx);
        gfx = Class_21.method_9(myProfile.num, myProfile.shiny);
        addChildAt(gfx, _loc1_);
    }

    @:allow(code) override function checkEnemy(param1:Vector<Poke>) {
        var _loc2_:ASAny = null;
        var _loc5_ = 0;
        var _loc6_ = 0;
        var _loc7_ = Math.NaN;
        var _loc8_ = false;
        var _loc9_:ASAny = null;
        var _loc10_ = 0;
        var _loc11_:ASAny = null;
        if (!method_76()) {
            return;
        }
        var _loc3_ = param1.concat();
        var _loc4_ = var_55.single_Target();
        if (currentCoolDown == 0 && !disabled) {
            if (false) {
                add_Effect(var_55.get_My_Attack_Animation());
                var_55.do_Attack(null);
                currentCoolDown = var_569;
                return;
            }
            _loc9_ = var_55.one_Per_Target();
            _loc3_ = method_92(_loc3_);
            _loc3_ = method_97(_loc3_);
            _loc10_ = 0;
            while (_loc10_ < _loc3_.length) {
                _loc2_ = _loc3_[_loc10_];
                if (!(_loc9_ && _loc2_.check_Effects(_loc9_))) {
                    _loc5_ = Std.int(Math.random() * 100 + 1);
                    _loc6_ = var_55.get_Accurary();
                    if (myAbility != null) {
                        _loc6_ = Std.int(_loc6_ * myAbility.on_Move_Accuracy());
                    }
                    _loc7_ = _loc6_ * (0 / _loc2_.myProfile.mod_Evasion);
                    if (_loc11_ = check_Effects(Class_199)) {
                        _loc5_ = 0;
                        _loc11_.remove_Me();
                    }
                    currentCoolDown = var_569;
                    if (_loc5_ <= _loc7_) {
                        _loc8_ = true;
                        this.var_697 = _loc2_;
                        _loc2_.method_18(this);
                        var_55.do_Attack(_loc2_);
                    }
                    else {
                        method_90();
                    }
                    if (_loc4_) {
                        break;
                    }
                }
                _loc10_++;
            }
            if (_loc8_) {
                this.method_292(this.var_697);
                add_Effect(var_55.get_My_Attack_Animation());
            }
        }
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        var _loc2_:ASAny = null;
        method_87();
        var _loc3_ = 0;
        while (_loc3_ < effect_List.length) {
            _loc2_ = effect_List[_loc3_];
            _loc2_.run();
            _loc3_++;
        }
        if (false) {
            myProfile.myAI.run(this);
        }
        if (myAbility != null) {
            myAbility.on_Run();
        }
        return true;
    }

    override public function startDrag(param1:Bool = false, param2:Rectangle = null) {
        var_252 = new Gfx_Range_Normal();
        addChildAt(var_252, 0);
        var_252.gotoAndStop(2);
        super.startDrag(param1, param2);
    }

    override public function stopDrag() {
        var_252.visible = false;
        super.stopDrag();
    }

    @:allow(code) function method_292(param1:Poke) {
        var _loc2_ = Math.abs(x - param1.x);
        var _loc3_ = Math.abs(y - param1.y);
        if (_loc2_ > _loc3_) {
            if (x < param1.x) {
                this.set_Direction("right");
            }
            else {
                this.set_Direction("left");
            }
        }
        else if (y < param1.y) {
            this.set_Direction("front");
        }
        else {
            this.set_Direction("back");
        }
    }

    @:allow(code) override function set_Direction(param1:String) {
        dir = param1;
        gfx.gotoAndPlay(param1);
    }
}

