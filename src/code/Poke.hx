package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.Event;
import flash.media.Sound;
import flash.media.SoundTransform;
import flash.text.TextFormat;

class Poke extends _Obj {


    @:allow(code) var gfx:GfxMovieClip;

    @:allow(code) var speed:Float = 4;

    @:allow(code) var var_10:Float = 0;

    @:allow(code) var var_9:Float = 0;

    @:allow(code) var var_534:Array<ASAny>;

    @:allow(code) var var_253:Int = 0;

    @:allow(code) var target:GfxMovieClip;

    @:allow(code) var var_509:Float = 1;

    @:allow(code) var var_252:GfxMovieClip;

    @:allow(code) var life:Int = 0;

    @:allow(code) var totalLife:Int = 0;

    @:allow(code) var var_166:GfxMovieClip;

    @:allow(code) var effect_List:Vector<Class_16>;

    @:allow(code) var var_482:Bool = false;

    @:allow(code) var var_193:Class_5;

    @:allow(code) var var_337:Bool = false;

    @:allow(code) var myProfile:Class_6;

    @:allow(code) var currentSpot:Class_4;

    @:allow(code) var var_310:Vector<Poke>;

    @:allow(code) var dir:String = "front";

    @:allow(code) var var_64:Bool = true;

    @:allow(code) var var_55:Attack;

    @:allow(code) var currentCoolDown:Int = 0;

    @:allow(code) var var_569:Int = 10;

    @:allow(code) var var_711:Int = 1;

    @:allow(code) var disabled:Bool = false;

    @:allow(code) var sponsor:String;

    @:allow(code) var expIncrease:Float = Math.NaN;

    @:allow(code) var myAbility:Class_17;

    public function new(param1:_Obj, param2:Class_6) {
        super(param1);
        this.sponsor = ASCompat.toString(send_Msg("sponsor"));
        this.expIncrease = ASCompat.toNumber(send_Msg("expIncrease"));
        this.myProfile = param2;
        this.set_Speed();
        this.init();
        this.reset_Attack();
        this.method_301();
    }

    @:allow(code) function reset_Attack() {
        if (this.myProfile.transformed) {
            this.var_55 = Class_9.method_21((this.myProfile : ASAny)["tmove" + this.myProfile.tmoveSelected], this);
        }
        else {
            this.var_55 = Class_9.method_21((this.myProfile : ASAny)["move" + this.myProfile.moveSelected], this);
        }
        this.currentCoolDown += Std.int(Math.random() * 0);
    }

    @:allow(code) function set_Speed() {
        var _loc1_:ASAny = this.myProfile.mod_Speed;
        if (_loc1_ < 0) {
            _loc1_ = 0;
        }
        this.speed = this.myProfile.speed * _loc1_ / 10;
        if (this.dir == "right") {
            this.var_10 = this.speed * this.var_509;
        }
        else if (this.dir == "left") {
            this.var_10 = this.speed * -this.var_509;
        }
        else {
            this.var_10 = 0;
        }
        if (this.dir == "front") {
            this.var_9 = this.speed * this.var_509;
        }
        else if (this.dir == "back") {
            this.var_9 = this.speed * -this.var_509;
        }
        else {
            this.var_9 = 0;
        }
    }

    @:allow(code) function method_18(param1:Poke) {
        if (this.check_If_He_Hit_Me(param1)) {
            return;
        }
        if (param1.myProfile.var_35 == -1) {
            return;
        }
        this.var_310.push(param1);
    }

    @:allow(code) function check_If_He_Hit_Me(param1:Poke):Bool {
        var _loc2_:ASAny = null;
        if (this.var_310 == null) {
            this.var_310 = new Vector<Poke>();
            return false;
        }
        var _loc3_ = 0;
        while (_loc3_ < this.var_310.length) {
            _loc2_ = this.var_310[_loc3_];
            if (_loc2_ == param1) {
                return true;
            }
            _loc3_++;
        }
        return false;
    }

    @:allow(code) function method_281() {
        if (this.var_310 == null) {
            return;
        }
        if (this.var_310.length == 0) {
            return;
        }
        var _loc1_ = this.var_310[this.var_310.length - 1];
        if (_loc1_.myProfile.level <= this.myProfile.level) {
            _loc1_.take_Damage(_loc1_.totalLife, null, 1, true);
        }
    }

    @:allow(code) function method_319() {
        var _loc1_:ASAny = null;
        var _loc5_ = 0;
        var _loc2_ = this.myProfile.var_26 * this.myProfile.level;
        _loc2_ = Std.int(_loc2_ / 7 * this.var_310.length);
        _loc2_ = Std.int(_loc2_ * this.expIncrease);
        if (this.sponsor == "arc") {
            _loc2_ *= 50;
        }
        else if (this.sponsor == "sam") {
            _loc2_ *= 100;
        }
        if (this.var_310 == null) {
            return;
        }
        var _loc3_ = Std.downcast(my_Parent, Class_875);
        var _loc4_ = _loc3_.Poke_Bonus_Level();
        var _loc6_ = 0;
        while (_loc6_ < this.var_310.length) {
            _loc5_ = _loc2_;
            _loc1_ = this.var_310[_loc6_];
            if (_loc1_.myProfile.level <= _loc4_) {
                _loc5_ *= 2;
            }
            _loc1_.myProfile.saveInfo.var_625 = true;
            _loc1_.receive_Experience(_loc5_);
            _loc6_++;
        }
    }

    @:allow(code) function receive_Experience(param1:Int) {
        var _loc3_:ASAny = null;
        var _loc4_:ASAny = null;
        var _loc5_ = 0;
        if (this.myProfile.shiny == 1) {
            param1 += Std.int(param1 * 0.5);
        }
        var _loc2_ = this.myProfile.var_40 / Class_19.method_177(this.myProfile.level);
        if (_loc2_ >= 1) {
            return;
        }
        this.myProfile.var_40 += param1;
        if (false) {
            _loc3_ = new TextFormat();
            _loc3_.size = 30;
            (_loc4_ = new Do_DamageText()).actual.actual.text = "+" + param1 + "xp";
            _loc5_ = 39423;
            _loc4_.actual.actual.textColor = _loc5_;
            _loc4_.actual.actual.setTextFormat(_loc3_);
            this.add_Effect(new Class_197(this, _loc4_));
        }
    }

    @:allow(code) function method_90() {
        var _loc1_:ASAny = null;
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        if (this.var_55 != null) {
            this.var_55.missed_Attack();
        }
        if (false) {
            _loc1_ = new TextFormat();
            _loc1_.size = 30;
            _loc2_ = new Do_DamageText();
            _loc2_.actual.actual.text = "MISS";
            _loc3_ = 16750848;
            _loc2_.actual.actual.textColor = _loc3_;
            _loc2_.actual.actual.setTextFormat(_loc1_);
            this.add_Effect(new Class_197(this, _loc2_));
        }
    }

    @:allow(code) function I_Fainted() {
        var _loc3_:ASAny = null;
        this.method_91();
        this.method_319();
        this.var_64 = false;
        this.method_44();
        var _loc1_:Sound = new FaintSound();
        var _loc2_ = _loc1_.play();
        if (_loc2_ != null) {
            _loc3_ = new SoundTransform(Class_1.var_194);
            _loc2_.soundTransform = _loc3_;
        }
        send_Msg(["fainted", this]);
    }

    @:allow(code) function init() {
        if (this.effect_List != null) {
            this.method_44();
        }
        if (this.gfx != null) {
            removeChild(this.gfx);
            this.gfx = null;
        }
        var _loc1_ = this.myProfile.num;
        var _loc2_ = this.myProfile.shiny;
        if (this.myProfile.transformed) {
            _loc1_ = this.myProfile.tnum;
            _loc2_ = this.myProfile.tshiny;
        }
        this.gfx = Class_21.method_9(_loc1_, _loc2_);
        addChild(this.gfx);
        this.myAbility = Class_20.method_235(this, _loc1_);
        this.effect_List = new Vector<Class_16>();
    }

    @:allow(code) function add_Effect(param1:Class_16) {
        if (param1 == null) {
            return;
        }
        if (this.effect_List == null) {
            this.effect_List = new Vector<Class_16>();
        }
        this.effect_List.push(param1);
    }

    @:allow(code) function remove_Effect(param1:Class_16) {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < this.effect_List.length) {
            _loc2_ = this.effect_List[_loc3_];
            if (_loc2_ == param1) {
                this.effect_List.splice(_loc3_, 1);
                return;
            }
            _loc3_++;
        }
    }

    @:allow(code) function method_44() {
        var _loc1_:ASAny = null;
        var _loc2_ = 0;
        while (_loc2_ < this.effect_List.length) {
            _loc1_ = this.effect_List[_loc2_];
            _loc1_.remove_Me();
            _loc2_--;
            _loc2_++;
        }
    }

    @:allow(code) function method_440(param1:Int) {
        this.life = param1;
        var _loc2_ = this.life / this.totalLife;
        this.var_166.scaleX = _loc2_;
        this.var_166.x = -this.var_166.width / 2;
    }

    @:allow(code) function take_Healing(param1:Int) {
        var _loc4_:ASAny = null;
        var _loc5_ = 0;
        if (!this.var_64) {
            return;
        }
        this.life += param1;
        if (this.life > this.totalLife) {
            this.life = this.totalLife;
        }
        this.myProfile.var_298 = this.life;
        if (false) {
            (_loc4_ = new Do_DamageText()).actual.actual.text = "+" + param1;
            _loc5_ = 65484;
            _loc4_.actual.actual.textColor = _loc5_;
            this.add_Effect(new Class_197(this, _loc4_));
        }
        var _loc2_ = this.life / this.totalLife;
        this.var_166.scaleX = _loc2_;
        this.var_166.x = -this.var_166.width / 2;
        if (!this.myProfile.var_39) {
            return;
        }
        var _loc3_:ASAny = 0.2;
        if (this.sponsor == "arc") {
            _loc3_ = 1;
        }
        if (_loc2_ <= _loc3_) {
            this.var_166.gotoAndStop(3);
            this.var_482 = true;
        }
        else if (this.myProfile.shiny == 0 || Std.is(this, Class_1104)) {
            this.var_166.gotoAndStop(1);
            this.var_482 = false;
        }
    }

    @:allow(code) function take_Damage(param1:Int, param2:Class_16, param3:Float = 0, param4:Bool = true) {
        var _loc9_:ASAny = null;
        var _loc10_:ASAny = null;
        var _loc11_:ASAny = null;
        var _loc12_:ASAny = null;
        var _loc13_ = 0;
        if (!this.var_64) {
            return;
        }
        var _loc5_:Class_195;
        if ((_loc5_ = Std.downcast(this.check_Effects(Class_195), Class_195)) != null) {
            _loc5_.var_612 -= param1;
            if (_loc5_.var_612 < _loc5_.var_643) {
                this.life = _loc5_.var_643;
                _loc5_.remove_Me();
            }
        }
        else {
            this.life -= param1;
        }
        if (this.life < 0) {
            this.life = 0;
        }
        var _loc6_:Class_196;
        if ((_loc6_ = Std.downcast(this.check_Effects(Class_196), Class_196)) != null) {
            if (this.life == 0) {
                _loc6_.remove_Me();
                this.life = 1;
            }
        }
        this.myProfile.var_298 = this.life;
        if (param4) {
            if (param3 == 1) {
                _loc9_ = new RegularHitSound();
            }
            else if (param3 >= 2) {
                _loc9_ = new SuperEffectiveSound();
            }
            else if (param3 <= 0.5) {
                _loc9_ = new IneffectiveHitSound();
            }
            if (_loc9_) {
                if (_loc10_ = _loc9_.play()) {
                    _loc11_ = new SoundTransform(Class_1.var_194);
                    _loc10_.soundTransform = _loc11_;
                }
            }
        }
        if (this.life <= 0) {
            if (this.check_Effects(Class_198) != null) {
                this.method_281();
            }
            this.I_Fainted();
            return;
        }
        this.add_Effect(param2);
        if (false) {
            (_loc12_ = new Do_DamageText()).actual.actual.text = param1;
            _loc13_ = 0;
            if (param3 == 1) {
                _loc13_ = 0;
            }
            else if (param3 >= 2) {
                _loc13_ = 16724736;
            }
            else if (param3 <= 0.5) {
                _loc13_ = 6710886;
            }
            _loc12_.actual.actual.textColor = _loc13_;
            this.add_Effect(new Class_197(this, _loc12_));
        }
        var _loc7_ = this.life / this.totalLife;
        this.var_166.scaleX = _loc7_;
        this.var_166.x = -this.var_166.width / 2;
        if (!this.myProfile.var_39) {
            return;
        }
        var _loc8_:ASAny = 0.2;
        if (this.sponsor == "arc") {
            _loc8_ = 1;
        }
        if (_loc7_ <= _loc8_) {
            this.var_166.gotoAndStop(3);
            this.var_482 = true;
        }
    }

    @:allow(code) function method_301() {
        this.totalLife = Class_13.method_299(this.myProfile);
        this.totalLife = Std.int(this.totalLife * this.myProfile.var_655);
        if (this.myProfile.var_298 > this.totalLife) {
            this.myProfile.var_298 = this.totalLife;
        }
        if (this.myProfile.var_298 == -1) {
            this.life = this.totalLife;
            this.myProfile.var_298 = this.totalLife;
        }
        else {
            this.life = this.myProfile.var_298;
        }
        this.var_166 = new Gfx_Life_Bar();
        addChild(this.var_166);
        var _loc1_ = this.life / this.totalLife;
        this.var_166.scaleX = _loc1_;
        this.var_166.y -= this.gfx.height / 2 + 10;
        this.var_166.x -= this.var_166.width / 2;
        if (_loc1_ <= 0.2) {
            this.var_166.gotoAndStop(3);
            this.var_482 = true;
        }
    }

    @:allow(code) function method_185(param1:Array<ASAny>, param2:Int = 0) {
        if (!this.myProfile.var_39) {
            this.var_166.gotoAndStop(4);
        }
        else if (this.myProfile.shiny != 0) {
            this.var_166.gotoAndStop(3);
            this.var_482 = true;
        }
        this.var_534 = param1;
        this.var_253 = param2;
        this.method_119(this.var_253);
        x = this.target.x;
        y = this.target.y;
        this.method_71();
    }

    @:allow(code) function turnAround(param1:Bool = false) {
        if (this.var_337 && param1) {
            return;
        }
        if (this.var_337) {
            this.var_337 = false;
            --this.var_253;
            this.method_71();
            return;
        }
        this.var_337 = true;
        ++this.var_253;
        this.method_71();
    }

    function method_119(param1:Int) {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        var _loc5_ = 0;
        while (_loc5_ < this.var_534.length) {
            _loc2_ = this.var_534[_loc5_];
            _loc3_ = _loc2_.name.split("_");
            if ((_loc4_ = _loc3_[1]) == param1) {
                this.target = _loc2_;
                return;
            }
            _loc5_++;
        }
    }

    @:allow(code) function method_71() {
        var _loc1_:ASAny = null;
        this.method_119(this.var_253);
        _loc1_ = this.target.name.split("_");
        var _loc2_:String = _loc1_[2];
        if (this.var_337) {
            _loc2_ = _loc1_[3];
        }
        this.set_Direction(_loc2_);
        var _loc3_ = this.var_253;
        if (this.var_337) {
            _loc3_--;
        }
        else {
            _loc3_++;
        }
        this.method_119(_loc3_);
    }

    @:allow(code) function method_233() {
        if (this.var_337) {
            --this.var_253;
        }
        else {
            ++this.var_253;
            if (this.var_253 == this.var_534.length) {
                if (this.myProfile.var_77) {
                    if (this.var_193 != null) {
                        this.var_193.var_265 = true;
                        this.var_193.taken = true;
                        removeChild(this.var_193.gfx);
                        this.var_193.gfx.x = x;
                        this.var_193.gfx.y = y;
                        this.var_193 = null;
                    }
                    this.method_44();
                    send_Msg(["escape", this]);
                    return;
                }
                --this.var_253;
                this.var_337 = true;
            }
        }
        if (this.var_337 && this.var_253 == 0) {
            if (!this.myProfile.var_77) {
                if (this.var_193 != null) {
                    this.var_193.var_265 = true;
                    this.var_193.taken = true;
                    removeChild(this.var_193.gfx);
                    this.var_193.gfx.x = x;
                    this.var_193.gfx.y = y;
                    this.var_193 = null;
                }
                if (this.myProfile.var_48) {
                    this.method_44();
                    send_Msg(["escape", this]);
                    return;
                }
                this.var_337 = false;
            }
            else {
                this.var_337 = false;
            }
        }
        this.method_71();
    }

    @:allow(code) function method_142(param1:String):String {
        var _loc2_:ASAny = null;
        if (param1 == "left") {
            _loc2_ = "right";
        }
        else if (param1 == "right") {
            _loc2_ = "left";
        }
        else if (param1 == "front") {
            _loc2_ = "back";
        }
        else if (param1 == "back") {
            _loc2_ = "front";
        }
        return _loc2_;
    }

    @:allow(code) function method_87() {
        if (this.currentCoolDown != 0) {
            this.currentCoolDown -= this.var_711;
            if (this.currentCoolDown < 0) {
                this.currentCoolDown = 0;
            }
        }
    }

    @:allow(code) function method_401() {
        if (this.disabled) {
            return;
        }
        if (this.currentCoolDown != 0) {
            return;
        }
        if (!this.var_55.onSelf) {
            return;
        }
        if (!this.method_76()) {
            return;
        }
        this.var_55.do_Attack(null);
        this.currentCoolDown = this.var_55.get_coolDown();
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        var _loc2_:ASAny = null;
        if (!this.var_64) {
            return false;
        }
        var _loc3_ = 0;
        while (_loc3_ < this.effect_List.length) {
            _loc2_ = this.effect_List[_loc3_];
            _loc2_.run();
            if (!this.var_64) {
                return false;
            }
            _loc3_++;
        }
        x += this.var_10;
        y += this.var_9;
        var _loc4_ = Std.downcast(my_Parent, Class_875);
        this.method_367(_loc4_.var_168);
        this.method_289();
        this.method_87();
        this.method_401();
        if (this.myAbility != null) {
            this.myAbility.on_Run();
        }
        if (this.myProfile.myAI != null) {
            this.myProfile.myAI.run(this);
        }
        return true;
    }

    @:allow(code) function method_76():Bool {
        if (this.check_Effects(Class_796) != null) {
            return false;
        }
        if (this.check_Effects(Class_793) != null) {
            return false;
        }
        if (this.check_Effects(Class_791) != null && !Std.is(this.var_55, Class_686) && !Std.is(this.var_55, Class_422)) {
            return false;
        }
        return true;
    }

    @:allow(code) function checkEnemy(param1:Vector<Poke>) {
        var _loc2_:ASAny = null;
        var _loc5_ = 0;
        var _loc6_ = 0;
        var _loc7_ = Math.NaN;
        var _loc8_ = false;
        var _loc9_:ASAny = null;
        var _loc10_ = 0;
        var _loc11_:ASAny = null;
        if (!this.myProfile.var_107) {
            return;
        }
        if (!this.method_76()) {
            return;
        }
        var _loc3_ = param1.concat();
        var _loc4_ = this.var_55.single_Target();
        if (this.currentCoolDown == 0 && !this.disabled) {
            if (this.var_55.onSelf) {
                this.add_Effect(this.var_55.get_My_Attack_Animation());
                this.var_55.do_Attack(null);
                this.currentCoolDown = this.var_55.get_coolDown();
                return;
            }
            _loc9_ = this.var_55.one_Per_Target();
            _loc3_ = this.method_92(_loc3_);
            _loc3_ = this.method_97(_loc3_);
            _loc10_ = 0;
            while (_loc10_ < _loc3_.length) {
                _loc2_ = _loc3_[_loc10_];
                if (!(_loc9_ && _loc2_.check_Effects(_loc9_))) {
                    _loc5_ = Std.int(Math.random() * 100 + 1);
                    _loc6_ = this.var_55.get_Accurary();
                    if (this.myAbility != null) {
                        _loc6_ = Std.int(_loc6_ * this.myAbility.on_Move_Accuracy());
                    }
                    _loc7_ = _loc6_ * (this.myProfile.mod_Accuracy / _loc2_.myProfile.mod_Evasion);
                    if (_loc11_ = this.check_Effects(Class_199)) {
                        _loc5_ = 0;
                        _loc11_.remove_Me();
                    }
                    this.currentCoolDown = this.var_569;
                    if (_loc5_ <= _loc7_ || this.var_55.cantMiss) {
                        _loc8_ = true;
                        _loc2_.method_18(this);
                        this.var_55.do_Attack(_loc2_);
                    }
                    else {
                        this.method_90();
                    }
                    if (_loc4_) {
                        break;
                    }
                }
                _loc10_++;
            }
            if (_loc8_) {
                this.add_Effect(this.var_55.get_My_Attack_Animation());
            }
        }
    }

    @:allow(code) function method_169(param1:Vector<Poke>, param2:Bool = true):Vector<Poke> {
        var _loc4_:ASAny = null;
        var _loc3_:ASAny = [];
        var _loc5_ = 0;
        while (_loc5_ < param1.length) {
            _loc4_ = param1[_loc5_];
            _loc3_.push({
                "who":_loc4_,
                "speed":_loc4_.myProfile.speed * _loc4_.myProfile.mod_Speed
            });
            _loc5_++;
        }
        if (param2) {
            _loc3_.sortOn("speed", 0 | 0);
        }
        else {
            _loc3_.sortOn("speed", ASCompat.ASArray.NUMERIC);
        }
        var _loc6_ = new Vector<Poke>();
        _loc5_ = 0;
        while (_loc5_ < _loc3_.length) {
            _loc6_.push(_loc3_[_loc5_].who);
            _loc5_++;
        }
        return _loc6_;
    }

    @:allow(code) function method_178(param1:Vector<Poke>, param2:Bool = false):Vector<Poke> {
        var _loc4_:ASAny = null;
        var _loc3_:ASAny = [];
        var _loc5_ = 0;
        while (_loc5_ < param1.length) {
            _loc4_ = param1[_loc5_];
            _loc3_.push({
                "who":_loc4_,
                "myVal":_loc4_.var_166.scaleX
            });
            _loc5_++;
        }
        if (param2) {
            _loc3_.sortOn("myVal", 0 | 0);
        }
        else {
            _loc3_.sortOn("myVal", ASCompat.ASArray.NUMERIC);
        }
        var _loc6_ = new Vector<Poke>();
        _loc5_ = 0;
        while (_loc5_ < _loc3_.length) {
            _loc6_.push(_loc3_[_loc5_].who);
            _loc5_++;
        }
        return _loc6_;
    }

    @:allow(code) function method_151(param1:Vector<Poke>, param2:Bool = false):Vector<Poke> {
        var _loc4_:ASAny = null;
        var _loc5_ = 0;
        var _loc3_:ASAny = [];
        var _loc6_ = 0;
        while (_loc6_ < param1.length) {
            if ((_loc4_ = param1[_loc6_]).var_193) {
                _loc5_ = 1;
            }
            else {
                _loc5_ = 0;
            }
            _loc3_.push({
                "who":_loc4_,
                "myVal":_loc5_
            });
            _loc6_++;
        }
        if (param2) {
            _loc3_.sortOn("myVal", 0 | 0);
        }
        else {
            _loc3_.sortOn("myVal", ASCompat.ASArray.NUMERIC);
        }
        var _loc7_ = new Vector<Poke>();
        _loc6_ = 0;
        while (_loc6_ < _loc3_.length) {
            _loc7_.push(_loc3_[_loc6_].who);
            _loc6_++;
        }
        return _loc7_;
    }

    @:allow(code) function method_405(param1:Vector<Poke>):Vector<Poke> {
        var _loc3_:ASAny = null;
        var _loc4_ = Math.NaN;
        var _loc2_:ASAny = [];
        var _loc5_ = 0;
        while (_loc5_ < param1.length) {
            _loc3_ = param1[_loc5_];
            _loc4_ = this.method_183(this, _loc3_);
            _loc2_.push({
                "who":_loc3_,
                "myVal":_loc4_
            });
            _loc5_++;
        }
        _loc2_.sortOn("myVal", 0 | 0);
        var _loc6_ = new Vector<Poke>();
        _loc5_ = 0;
        while (_loc5_ < _loc2_.length) {
            _loc6_.push(_loc2_[_loc5_].who);
            _loc5_++;
        }
        return _loc6_;
    }

    @:allow(code) function method_255(param1:Vector<Poke>, param2:Bool = false):Vector<Poke> {
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        while (_loc4_ < param1.length) {
            _loc3_ = param1[_loc4_];
            if (_loc3_.var_482) {
                param1.splice(_loc4_, 1);
                _loc4_--;
            }
            _loc4_++;
        }
        return param1;
    }

    @:allow(code) function method_97(param1:Vector<Poke>):Vector<Poke> {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        if (this.myProfile.var_283 == 2) {
            param1 = this.method_169(param1);
        }
        else if (this.myProfile.var_283 == 3) {
            param1 = this.method_169(param1, false);
        }
        else if (this.myProfile.var_283 == 4) {
            param1 = this.method_178(param1);
        }
        else if (this.myProfile.var_283 == 5) {
            param1 = this.method_178(param1, true);
        }
        else if (this.myProfile.var_283 == 6) {
            param1 = this.method_405(param1);
        }
        else if (this.myProfile.var_283 == 7) {
            param1 = this.method_255(param1);
        }
        else if (this.myProfile.var_283 == 8) {
            param1 = this.method_151(param1, true);
        }
        else if (this.myProfile.var_283 == 9) {
            param1 = this.method_151(param1);
        }
        _loc3_ = 0;
        while (_loc3_ < param1.length) {
            _loc2_ = param1[_loc3_];
            if (_loc2_.check_Effects(Class_794) && this.var_55.var_7 != "Feint") {
                param1.splice(_loc3_, 1);
                _loc3_--;
            }
            _loc3_++;
        }
        _loc3_ = 0;
        while (_loc3_ < param1.length) {
            _loc2_ = param1[_loc3_];
            if (_loc2_.check_Effects(Class_792)) {
                param1.splice(_loc3_, 1);
                param1.unshift(_loc2_);
            }
            _loc3_++;
        }
        _loc3_ = param1.length - 1;
        while (_loc3_ >= 0) {
            _loc2_ = param1[_loc3_];
            if (_loc2_.check_Effects(Class_795)) {
                param1.splice(_loc3_, 1);
                param1.push(_loc2_);
            }
            _loc3_--;
        }
        _loc3_ = 0;
        while (_loc3_ < param1.length) {
            _loc2_ = param1[_loc3_];
            if (_loc2_.check_Effects(Class_790)) {
                param1.splice(_loc3_, 1);
                param1.unshift(_loc2_);
            }
            _loc3_++;
        }
        return param1;
    }

    @:allow(code) function method_92(param1:Vector<Poke>):Vector<Poke> {
        var _loc2_:ASAny = null;
        if (this.var_252 == null) {
            this.var_252 = new Gfx_Range_Normal();
            addChildAt(this.var_252, 0);
            this.var_252.visible = false;
        }
        var _loc3_ = 0;
        while (_loc3_ < param1.length) {
            _loc2_ = param1[_loc3_];
            if (!this.var_252.hitTestObject(_loc2_.gfx)) {
                param1.splice(_loc3_, 1);
                _loc3_--;
            }
            _loc3_++;
        }
        return param1;
    }

    @:allow(code) function method_289() {
        if (this.dir == "left") {
            if (x > this.target.x) {
                return;
            }
        }
        else if (this.dir == "right") {
            if (x < this.target.x) {
                return;
            }
        }
        else if (this.dir == "front") {
            if (y < this.target.y) {
                return;
            }
        }
        else if (this.dir == "back") {
            if (y > this.target.y) {
                return;
            }
        }
        this.method_233();
    }

    @:allow(code) function method_91() {
        if (this.var_193 == null) {
            return;
        }
        this.var_193.taken = false;
        this.var_193.var_265 = false;
        cast(my_Parent, Class_875).gfx_BG.addChild(this.var_193.gfx);
        this.var_193.gfx.x = this.x;
        this.var_193.gfx.y = this.y;
        this.var_193 = null;
    }

    @:allow(code) function method_23(param1:Vector<Class_853>, param2:Bool = false) {
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        while (_loc4_ < param1.length) {
            _loc3_ = param1[_loc4_];
            if (!(param2 && !_loc3_.var_234)) {
                if (!(!param2 && _loc3_.var_497)) {
                    if (_loc3_.isCollision(this.gfx)) {
                        _loc3_.onCollision(this);
                    }
                }
            }
            _loc4_++;
        }
    }

    @:allow(code) function method_367(param1:Vector<Class_5>) {
        var _loc2_:ASAny = null;
        if (this.myProfile.var_490) {
            return;
        }
        if (this.myProfile.dropCandy) {
            if (this.var_193 != null) {
                this.method_91();
            }
            return;
        }
        if (this.var_193 != null) {
            return;
        }
        var _loc3_ = 0;
        while (_loc3_ < param1.length) {
            _loc2_ = param1[_loc3_];
            if (!(if (_loc2_.taken) _loc2_.taken else _loc2_.var_265)) {
                if (_loc2_.gfx.hitTestObject(this.gfx)) {
                    this.var_193 = _loc2_;
                    _loc2_.taken = true;
                    _loc2_.var_265 = false;
                    addChild(_loc2_.gfx);
                    _loc2_.gfx.y = 0;
                    _loc2_.gfx.x = 0;
                    if (!this.myProfile.var_77) {
                        this.turnAround(true);
                    }
                    return;
                }
            }
            _loc3_++;
        }
    }

    @:allow(code) function method_438(param1:Int):GfxMovieClip {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        var _loc5_ = 0;
        while (_loc5_ < this.var_534.length) {
            _loc2_ = this.var_534[_loc5_];
            _loc3_ = _loc2_.name.split("_");
            if ((_loc4_ = _loc3_[1]) == param1) {
                return _loc2_;
            }
            _loc5_++;
        }
        return null;
    }

    @:allow(code) function set_Direction(param1:String) {
        this.dir = param1;
        this.gfx.gotoAndPlay(param1);
        this.var_10 = 0;
        this.var_9 = 0;
        if (param1 == "left") {
            this.var_10 = -this.speed;
        }
        else if (param1 == "right") {
            this.var_10 = this.speed;
        }
        else if (param1 == "front") {
            this.var_9 = this.speed;
        }
        else if (param1 == "back") {
            this.var_9 = -this.speed;
        }
        this.var_9 *= this.var_509;
        this.var_10 *= this.var_509;
    }

    @:allow(code) function method_42(param1:String = "cw") {
        var _loc2_:ASAny = null;
        if (param1 == "cw") {
            if (this.dir == "left") {
                _loc2_ = "back";
            }
            else if (this.dir == "back") {
                _loc2_ = "right";
            }
            else if (this.dir == "right") {
                _loc2_ = "front";
            }
            else if (this.dir == "front") {
                _loc2_ = "left";
            }
        }
        else if (this.dir == "left") {
            _loc2_ = "front";
        }
        else if (this.dir == "back") {
            _loc2_ = "left";
        }
        else if (this.dir == "right") {
            _loc2_ = "back";
        }
        else if (this.dir == "front") {
            _loc2_ = "right";
        }
        this.set_Direction(_loc2_);
    }

    @:allow(code) function check_Effects(param1:Class<Dynamic>):Class_16 {
        var _loc2_:ASAny = null;
        for (_tmp_ in this.effect_List) {
            _loc2_ = _tmp_;
            if (Std.isOfType(_loc2_, param1)) {
                return _loc2_;
            }
        }
        return null;
    }

    @:allow(code) function method_183(param1:Poke, param2:Poke):Float {
        var _loc4_ = 0;
        var _loc6_ = 0;
        var _loc7_ = 0;
        var _loc3_:ASAny = 1;
        var _loc5_:Attack;
        _loc4_ = (_loc5_ = param1.var_55).get_Move_Type();
        _loc7_ = 0;
        while (_loc7_ < param2.myProfile.types.length) {
            _loc6_ = param2.myProfile.types[_loc7_];
            _loc3_ *= this.method_73(_loc4_, _loc6_);
            if (_loc3_ == 0) {
                break;
            }
            _loc7_++;
        }
        return _loc3_;
    }

    @:allow(code) function method_73(param1:Int, param2:Int):Float {
        if (param1 == Class_13.const_1) {
            if (param2 == Class_13.const_7) {
                return 0.5;
            }
            if (param2 == Class_13.const_15) {
                return 0.5;
            }
            if (param2 == Class_13.const_24) {
                return 0;
            }
            return 1;
        }
        if (param1 == Class_13.const_6) {
            if (param2 == Class_13.const_6) {
                return 0.5;
            }
            if (param2 == Class_13.const_5) {
                return 0.5;
            }
            if (param2 == Class_13.const_8) {
                return 2;
            }
            if (param2 == Class_13.const_18) {
                return 2;
            }
            if (param2 == Class_13.const_22) {
                return 2;
            }
            if (param2 == Class_13.const_15) {
                return 0.5;
            }
            if (param2 == Class_13.const_26) {
                return 0.5;
            }
            if (param2 == Class_13.const_7) {
                return 2;
            }
            return 1;
        }
        if (param1 == Class_13.const_5) {
            switch(param2)
            {
                case Class_13.const_6:
                    return 2;
                case Class_13.const_5:
                    return 0.5;
                case Class_13.const_8:
                    return 0.5;
                case Class_13.const_10:
                    return 2;
                case Class_13.const_15:
                    return 2;
                case Class_13.const_26:
                    return 0.5;
                default:
                    return 1;
            }
        }
        else if (param1 == Class_13.const_20) {
            switch(param2)
            {
                case Class_13.const_5:
                    return 2;
                case Class_13.const_20:
                    return 0.5;
                case Class_13.const_8:
                    return 0.5;
                case Class_13.const_10:
                    return 0;
                case Class_13.const_9:
                    return 2;
                case Class_13.const_26:
                    return 0.5;
                default:
                    return 1;
            }
        }
        else if (param1 == Class_13.const_8) {
            switch(param2)
            {
                case Class_13.const_6:
                    return 0.5;
                case Class_13.const_5:
                    return 2;
                case Class_13.const_8:
                    return 0.5;
                case Class_13.const_2:
                    return 0.5;
                case Class_13.const_10:
                    return 2;
                case Class_13.const_9:
                    return 0.5;
                case Class_13.const_22:
                    return 0.5;
                case Class_13.const_15:
                    return 2;
                case Class_13.const_26:
                    return 0.5;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        }
        else if (param1 == Class_13.const_18) {
            switch(param2)
            {
                case Class_13.const_6:
                    return 0.5;
                case Class_13.const_5:
                    return 0.5;
                case Class_13.const_8:
                    return 2;
                case Class_13.const_18:
                    return 0.5;
                case Class_13.const_10:
                    return 2;
                case Class_13.const_9:
                    return 2;
                case Class_13.const_26:
                    return 2;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        }
        else if (param1 == Class_13.const_13) {
            switch(param2)
            {
                case Class_13.const_1:
                    return 2;
                case Class_13.const_18:
                    return 2;
                case Class_13.const_2:
                    return 0.5;
                case Class_13.const_9:
                    return 0.5;
                case Class_13.const_14:
                    return 0.5;
                case Class_13.const_22:
                    return 0.5;
                case Class_13.const_15:
                    return 2;
                case Class_13.const_24:
                    return 0;
                case Class_13.const_27:
                    return 2;
                case Class_13.const_7:
                    return 2;
                default:
                    return 1;
            }
        }
        else if (param1 == Class_13.const_2) {
            switch(param2)
            {
                case Class_13.const_8:
                    return 2;
                case Class_13.const_2:
                    return 0.5;
                case Class_13.const_10:
                    return 0.5;
                case Class_13.const_15:
                    return 0.5;
                case Class_13.const_24:
                    return 0.5;
                case Class_13.const_7:
                    return 0;
                default:
                    return 1;
            }
        }
        else if (param1 == Class_13.const_10) {
            switch(param2)
            {
                case Class_13.const_6:
                    return 2;
                case Class_13.const_20:
                    return 2;
                case Class_13.const_8:
                    return 0.5;
                case Class_13.const_2:
                    return 2;
                case Class_13.const_9:
                    return 0;
                case Class_13.const_22:
                    return 0.5;
                case Class_13.const_15:
                    return 2;
                case Class_13.const_7:
                    return 2;
                default:
                    return 1;
            }
        }
        else if (param1 == Class_13.const_9) {
            switch(param2)
            {
                case Class_13.const_20:
                    return 0.5;
                case Class_13.const_8:
                    return 2;
                case Class_13.const_13:
                    return 2;
                case Class_13.const_22:
                    return 2;
                case Class_13.const_15:
                    return 0.5;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        }
        else if (param1 == Class_13.const_14) {
            switch(param2)
            {
                case Class_13.const_13:
                    return 2;
                case Class_13.const_2:
                    return 2;
                case Class_13.const_14:
                    return 0.5;
                case Class_13.const_27:
                    return 0;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        }
        else if (param1 == Class_13.const_22) {
            switch(param2)
            {
                case Class_13.const_6:
                    return 0.5;
                case Class_13.const_8:
                    return 2;
                case Class_13.const_13:
                    return 0.5;
                case Class_13.const_2:
                    return 0.5;
                case Class_13.const_9:
                    return 0.5;
                case Class_13.const_14:
                    return 2;
                case Class_13.const_24:
                    return 0.5;
                case Class_13.const_27:
                    return 2;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        }
        else if (param1 == Class_13.const_15) {
            switch(param2)
            {
                case Class_13.const_6:
                    return 2;
                case Class_13.const_18:
                    return 2;
                case Class_13.const_13:
                    return 0.5;
                case Class_13.const_10:
                    return 0.5;
                case Class_13.const_9:
                    return 2;
                case Class_13.const_22:
                    return 2;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        }
        else if (param1 == Class_13.const_24) {
            switch(param2)
            {
                case Class_13.const_1:
                    return 0;
                case Class_13.const_14:
                    return 2;
                case Class_13.const_24:
                    return 2;
                case Class_13.const_27:
                    return 0.5;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        }
        else if (param1 == Class_13.const_26) {
            switch(param2)
            {
                case Class_13.const_26:
                    return 2;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        }
        else if (param1 == Class_13.const_27) {
            switch(param2)
            {
                case Class_13.const_13:
                    return 0.5;
                case Class_13.const_14:
                    return 2;
                case Class_13.const_24:
                    return 2;
                case Class_13.const_27:
                    return 0.5;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        }
        else if (param1 == Class_13.const_7) {
            switch(param2)
            {
                case Class_13.const_6:
                    return 0.5;
                case Class_13.const_5:
                    return 0.5;
                case Class_13.const_20:
                    return 0.5;
                case Class_13.const_18:
                    return 2;
                case Class_13.const_15:
                    return 2;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        }
        else {
            return 2;
        }
    }
}

