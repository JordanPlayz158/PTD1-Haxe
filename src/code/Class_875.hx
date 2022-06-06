package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.transitions.Tween;
import fl.transitions.easing.*;
import flash.display.DisplayObject;

import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.geom.Point;
import flash.geom.Rectangle;
import flash.media.Sound;
import flash.media.SoundChannel;
import flash.media.SoundMixer;
import flash.media.SoundTransform;
import package_1.*;

class Class_875 extends _Obj implements Class_3 {

    public static inline final const_228 = 100;

    public static inline final const_266 = "scrolling_done";


    public var gfx_BG:GfxMovieClip;

    public var var_316:Rectangle;

    public var gfx_UI:GfxMovieClip;

    public var var_633:Array<ASAny>;

    public var var_79:Vector<Poke>;

    public var towerList:Vector<Class_1104>;

    var var_527:Vector<Class_1104>;

    var var_517:Vector<Class_1104>;

    public var var_300:Vector<Class_4>;

    public var var_168:Vector<Class_5>;

    public var var_201:Vector<Class_853>;

    public var var_449:Bool = false;

    public var var_177:Class_1104;

    public var var_335:GfxMovieClip;

    public var var_414:GfxMovieClip;

    public var var_357:Poke;

    public var var_468:Poke;

    public var currentProfile:Class_878;

    public var var_622:Int = 0;

    public var var_6:Class_7;

    @:allow(code) var var_127:Class_877;

    @:allow(code) var var_631:Sound;

    @:allow(code) var var_467:SoundChannel;

    @:allow(code) var var_654:Float = Math.NaN;

    public var shake:Bool = false;

    @:allow(code) var var_514:Int = 0;

    @:allow(code) var var_445:Int = 0;

    @:allow(code) var usingPhone:Bool = false;

    @:allow(code) var sponsor:String;

    @:allow(code) var var_586:Int = 0;

    @:allow(code) var var_426:Int = 0;

    @:allow(code) var var_683:Bool = false;

    @:allow(code) var var_203:Array<ASAny>;

    @:allow(code) var var_352:Int = 1;

    @:allow(code) var var_500:Int = 0;

    @:allow(code) var var_648:Int = 0;

    @:allow(code) var var_726:Bool = false;

    @:allow(code) var var_562:String = "p";

    public function new(param1:Class_878, param2:_Obj) {
        super(param2);
        this.currentProfile = param1;
        this.sponsor = ASCompat.toString(this.send_Msg("sponsor"));
        this.usingPhone = this.send_Msg("usingPhone");
        if (this.currentProfile.levelUnlocked < 21) {
            this.var_426 = 1;
        }
        else if (this.currentProfile.levelUnlocked < 36) {
            this.var_426 = 2;
        }
        else {
            this.var_426 = 3;
        }
        this.init();
    }

    function get_Level_Num():Int {
        return 1;
    }

    public function Poke_Bonus_Level():Int {
        return 4;
    }

    @:allow(code) function method_433() {
    }

    public function show_Achievement_Popup(param1:Int, param2:Int = -1, param3:Class_877 = null, param4:Int = 0) {
        if (param1 == 1) {
            this.method_41(1);
        }
        var _loc5_:Class_969;
        (_loc5_ = new Class_969(this, param1, param2, param4)).var_638 = param3;
        this.add_Popup(_loc5_);
    }

    public function method_211() {
        this.method_41(1);
        this.add_Popup(new Class_973(this));
    }

    public function method_135(param1:Float = 0) {
        var _loc2_:ASAny = null;
        SoundMixer.stopAll();
        this.var_631 = this.get_Level_Music();
        if (param1 > this.var_631.length) {
            param1 = 0;
        }
        this.var_467 = this.var_631.play(param1, 10);
        if (this.var_467 != null) {
            _loc2_ = new SoundTransform(Class_1.var_25);
            this.var_467.soundTransform = _loc2_;
            return;
        }
        trace("FIXED START_LEVEL_MUSIC_BUG with evolving");
    }

    function get_Level_Music():Sound {
        return new BattleWildMusic();
    }

    public function method_62() {
        if (this.var_467 != null) {
            this.var_654 = this.var_467.position;
            this.var_467.stop();
        }
        this.var_631 = null;
        this.var_467 = null;
    }

    public function method_35() {
        this.method_135(this.var_654);
        this.var_654 = 0;
    }

    public function method_23(param1:Class<Dynamic>):Class_853 {
        var _loc2_:ASAny = null;
        for (_tmp_ in this.var_201) {
            _loc2_ = _tmp_;
            if (Std.isOfType(_loc2_, param1)) {
                return _loc2_;
            }
        }
        return null;
    }

    public function add_path_effect(param1:Class_853, param2:Bool = false) {
        var _loc3_ = 0;
        var _loc4_:ASAny = null;
        var _loc5_:ASAny = null;
        var _loc6_:ASAny = null;
        var _loc7_:ASAny = null;
        if (this.var_201 == null) {
            this.var_201 = new Vector<Class_853>();
        }
        if (Std.is(param1, Class_854) || Std.is(param1, Class_857) || Std.is(param1, Class_855) || Std.is(param1, Class_856)) {
            if (_loc4_ = this.method_23(Class_854)) {
                _loc4_.remove_Me();
            }
            if (_loc5_ = this.method_23(Class_857)) {
                _loc5_.remove_Me();
            }
            if (_loc6_ = this.method_23(Class_855)) {
                _loc6_.remove_Me();
            }
            if (_loc7_ = this.method_23(Class_856)) {
                _loc7_.remove_Me();
            }
        }
        this.var_201.push(param1);
        if (!param2) {
            _loc3_ = this.gfx_BG.getChildIndex(this.var_79[0]);
            this.gfx_BG.addChildAt(param1, _loc3_);
        }
        else {
            _loc3_ = getChildIndex(this.gfx_BG);
            addChildAt(param1, _loc3_ + 1);
        }
    }

    public function method_194() {
        var _loc1_:ASAny = null;
        if (this.var_201 == null) {
            return;
        }
        var _loc2_ = 0;
        while (_loc2_ < this.var_201.length) {
            _loc1_ = this.var_201[_loc2_];
            _loc1_.remove_Me();
            _loc2_++;
        }
    }

    public function method_258(param1:Class_853) {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < this.var_201.length) {
            _loc2_ = this.var_201[_loc3_];
            if (_loc2_ == param1) {
                if (this.gfx_BG.contains(param1)) {
                    this.gfx_BG.removeChild(param1);
                }
                else {
                    removeChild(param1);
                }
                this.var_201.splice(_loc3_, 1);
                return;
            }
            _loc3_++;
        }
        trace("ERROR SCREEN_LEVEL -> REMOVE_PATH_EFFECT(WHICH), could not find the path effect");
    }

    public function add_Popup(param1:Class_877) {
        this.gfx_BG.stopDrag();
        this.var_203 = null;
        this.var_127 = param1;
        addChild(this.var_127);
    }

    public function method_24(param1:Class_877) {
        this.var_203 = null;
        if (this.var_127 == param1) {
            removeChild(param1);
            this.var_127 = null;
        }
    }

    public function update_Wave_Info(param1:Int, param2:Int) {
        this.gfx_UI.waveInfo.text = "Wave " + param1 + " of " + param2;
    }

    public function end_hack() {
        trace("end hack");
        var _loc1_ = new Class_876(this.my_Parent);
        this.send_Msg(["change_Screen", _loc1_]);
    }

    public function end_Level(param1:_Obj = null) {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < this.towerList.length) {
            _loc2_ = this.towerList[_loc3_];
            _loc2_.method_44();
            _loc3_++;
        }
        this.method_194();
        this.currentProfile.reset_Fight_List();
        this.currentProfile.method_189();
        if (this.var_6 != null) {
            this.var_6.method_100();
        }
        if (param1 == null) {
            SoundMixer.stopAll();
            param1 = this.get_Back_Screen();
        }
        this.send_Msg(["change_Screen", param1]);
    }

    public function get_Back_Screen():_Obj {
        var _loc1_ = this.get_Level_Num();
        if (_loc1_ <= 5) {
            return new Class_885(this.currentProfile, my_Parent);
        }
        if (_loc1_ <= 11) {
            return new Class_884(this.currentProfile, my_Parent);
        }
        if (_loc1_ <= 15) {
            return new Class_886(this.currentProfile, my_Parent);
        }
        if (_loc1_ <= 20) {
            return new Class_881(this.currentProfile, my_Parent);
        }
        if (_loc1_ <= 25) {
            return new Class_887(this.currentProfile, my_Parent);
        }
        if (_loc1_ <= 30) {
            return new Class_883(this.currentProfile, my_Parent);
        }
        if (_loc1_ <= 36) {
            return new Class_882(this.currentProfile, my_Parent);
        }
        return new Class_888(this.currentProfile, my_Parent);
    }

    public function method_99() {
        this.gfx_UI.totalMoney.text = this.currentProfile.money;
        this.method_132();
    }

    public function method_132() {
        var _loc1_:ASAny = null;
        var _loc2_ = 0;
        while (_loc2_ < this.currentProfile.partyList.length) {
            _loc1_ = Std.downcast(this.gfx_UI.getChildByName("block_" + (_loc2_ + 1)), GfxMovieClip);
            _loc1_.alpha = 0.5;
            if (this.currentProfile.partyList[_loc2_] != null) {
                _loc1_.alpha = 1;
                this.method_397(this.currentProfile.money, _loc1_.PokeUp, this.currentProfile.partyList[_loc2_]);
            }
            _loc2_++;
        }
    }

    @:allow(code) function method_397(param1:Int, param2:GfxMovieClip, param3:Class_6) {
        if (param2.visible == false) {
            return;
        }
        var _loc4_ = 0;
        _loc4_ = (_loc4_ = param3.level + 1) * 5;
        if (param1 < _loc4_) {
            param2.gotoAndStop(1);
        }
        else if (param2.currentFrame == 1) {
            param2.play();
        }
    }

    @:allow(code) function method_78(param1:Class_1104) {
        var _loc2_ = this.method_134(param1);
        if (_loc2_ == -1) {
            trace("UPDATE_ERROR_FIX");
            return;
        }
        var _loc3_ = _loc2_ + 1;
        var _loc4_ = Std.downcast(this.gfx_UI.getChildByName("block_" + _loc3_), GfxMovieClip);
        var _loc5_ = new Class_8(param1.myProfile, _loc4_);
        var _loc6_ = param1.life / param1.totalLife;
        _loc5_.method_337(_loc6_);
    }

    public function reset_Poke() {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc6_:ASAny = null;
        var _loc5_ = 0;
        while (_loc5_ < 6) {
            _loc2_ = Std.downcast(this.gfx_UI.getChildByName("block_" + (_loc5_ + 1)), GfxMovieClip);
            _loc2_.alpha = 1;
            if (this.currentProfile.partyList.length > _loc5_ && this.currentProfile.partyList[_loc5_] != null) {
                _loc6_ = this.currentProfile.partyList[_loc5_];
                if (_loc2_.bg.currentFrame != 3) {
                    _loc2_.bg.gotoAndStop(1);
                }
                if (this.method_247(_loc6_)) {
                    _loc2_.bg.gotoAndStop(2);
                }
                else if (_loc2_.bg.currentFrame != 3) {
                    _loc2_.bg.gotoAndStop(1);
                }
                _loc3_ = new Class_8(_loc6_, _loc2_);
            }
            else {
                _loc2_.gotoAndStop(4);
                _loc2_.alpha = 0.5;
            }
            _loc5_++;
        }
        this.method_132();
    }

    @:allow(code) function method_247(param1:Class_6):Bool {
        var _loc3_:ASAny = null;
        var _loc2_ = this.currentProfile.fightList;
        var _loc4_ = 0;
        while (_loc4_ < _loc2_.length) {
            _loc3_ = _loc2_[_loc4_];
            if (_loc3_ == param1) {
                return true;
            }
            _loc4_++;
        }
        return false;
    }

    public function init() {
        this.towerList = new Vector<Class_1104>();
        this.gfx_BG = this.get_Level_BG();
        addChild(this.gfx_BG);
        this.gfx_UI = new Gfx_Ui_Level();
        addChild(this.gfx_UI);
        this.gfx_UI.totalMoney.mouseEnabled = false;
        this.gfx_UI.waveInfo.mouseEnabled = false;
        this.method_144(true);
        this.reset_Poke();
        this.method_99();
        this.method_230();
        this.method_388();
        var _loc1_ = 800 - this.gfx_BG.width;
        var _loc2_ = 480 - this.gfx_BG.height;
        var _loc5_ = 0 - _loc1_;
        var _loc6_ = 0 - _loc2_;
        this.var_316 = new Rectangle(_loc1_, _loc2_, _loc5_, _loc6_);
        this.gfx_BG.hl_spot.visible = false;
        this.method_288();
        this.method_417();
    }

    @:allow(code) function method_288() {
        var _loc1_ = this.number_Of_Paths();
        if (_loc1_ < 4) {
            this.gfx_UI.ui_path.path_4.visible = false;
            this.gfx_UI.path_4.visible = false;
        }
        if (_loc1_ < 3) {
            this.gfx_UI.ui_path.path_3.visible = false;
            this.gfx_UI.path_3.visible = false;
        }
        if (_loc1_ < 2) {
            this.gfx_UI.ui_path.path_2.visible = false;
            this.gfx_UI.path_2.visible = false;
            this.gfx_UI.ui_path.visible = false;
            this.gfx_UI.path_1.visible = false;
            this.gfx_UI.path_hl.visible = false;
        }
    }

    @:allow(code) function number_Of_Paths():Int {
        return 1;
    }

    @:allow(code) function method_393():Int {
        return 6;
    }

    @:allow(code) function method_144(param1:Bool = false) {
        if (param1) {
            this.var_586 = this.method_393();
        }
        this.gfx_UI.potion.gotoAndStop(this.var_426);
        this.gfx_UI.potion.howMuch.text = "x" + this.var_586;
    }

    @:allow(code) function start_Level(param1:Bool = true, param2:ASAny = false, param3:Class_7 = null) {
        this.method_83();
        if (this.var_6 == null) {
            this.var_6 = param3;
        }
        if (this.var_6 == null) {
            this.var_6 = this.get_Level_Wave();
        }
        if (param1) {
            this.method_309();
            return;
        }
        this.var_6.start_Wave();
        this.method_12();
        this.method_135();
    }

    function method_309() {
        this.add_Popup(new Class_974(this));
    }

    function get_Level_Wave():Class_7 {
        return null;
    }

    function method_83() {
        if (this.currentProfile.var_123 < this.get_Level_Num()) {
            this.currentProfile.var_123 = this.get_Level_Num();
        }
    }

    function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_1();
    }

    function method_417() {
        var _loc1_ = this.get_Intro_Popup();
        if (_loc1_ == null) {
            return;
        }
        this.add_Popup(_loc1_);
    }

    function get_Intro_Popup():Class_877 {
        return new Class_978(this);
    }

    public function method_388() {
        var _loc2_:ASAny = null;
        var _loc1_ = this.get_Total_Candy();
        this.var_168 = new Vector<Class_5>();
        var _loc3_ = 0;
        while (_loc3_ < _loc1_) {
            _loc2_ = new Class_5((this.gfx_BG : ASAny)["candy_" + (_loc3_ + 1)]);
            this.var_168.push(_loc2_);
            _loc3_++;
        }
    }

    @:allow(code) function get_Total_Candy():Int {
        return 4;
    }

    public function add_Enemy_Poke(param1:Class_6, param2:Float = 1, param3:String = "p", param4:Int = 0) {
        var _loc5_:Poke;
        (_loc5_ = Type.createInstance(Poke, [this, param1])).gfx.scaleX = _loc5_.gfx.scaleY = param2;
        this.gfx_BG.addChild(_loc5_);
        var _loc6_:Array<ASAny>;
        if ((_loc6_ = this.method_371(param3)).length == 0) {
            trace(param3);
            trace("SCREEN_LEVEL->ADD_ENEMY_POKE(PROFILE_POKE, SCALE, WHICHPATH, WHICHPOINT), COULD NOT FIND ANY WALKPOINTS FOR THAT PATH");
            return;
        }
        ++this.var_648;
        if (this.var_648 > 600) {
            this.end_hack();
            return;
        }
        _loc5_.method_185(_loc6_, param4);
        if (this.var_79 == null) {
            this.var_79 = new Vector<Poke>();
        }
        this.var_79.push(_loc5_);
    }

    function method_371(param1:String):Array<ASAny> {
        var _loc3_:ASAny = null;
        var _loc2_:ASAny = [];
        var _loc4_ = 0;
        while (_loc4_ < this.var_633.length) {
            _loc3_ = this.var_633[_loc4_];
            if (_loc3_.name.charAt(1) == param1) {
                _loc2_.push(_loc3_);
            }
            _loc4_++;
        }
        return _loc2_;
    }

    public function method_230() {
        var _loc1_:ASAny = null;
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_:ASAny = null;
        this.var_633 = [];
        this.var_300 = new Vector<Class_4>();
        var _loc5_ = 0;
        while (_loc5_ < this.gfx_BG.numChildren) {
            _loc2_ = this.gfx_BG.getChildAt(_loc5_);
            if (Std.is(_loc2_, GfxMovieClip)) {
                _loc1_ = ASCompat.dynamicAs(_loc2_, GfxMovieClip);
                _loc3_ = _loc1_.name;
                if (_loc3_.charAt(0) == "w") {
                    _loc1_.visible = false;
                    this.var_633.push(_loc1_);
                }
                else if (_loc3_.charAt(0) == "s") {
                    _loc4_ = new Class_4(_loc1_);
                    _loc1_.visible = false;
                    this.var_300.push(_loc4_);
                }
            }
            _loc5_++;
        }
    }

    @:allow(code) function check_For_End_Of_Game():Bool {
        var _loc1_:ASAny = null;
        if (this.method_115()) {
            _loc1_ = this.get_Lost_Popup();
        }
        else if (this.var_6.finished && this.var_79.length == 0) {
            _loc1_ = this.i_Win();
        }
        else if (this.var_6 != null && this.var_79 != null && this.var_79.length == 0) {
            this.var_6.wave_Gone();
        }
        if (_loc1_) {
            this.add_Popup(_loc1_);
            return true;
        }
        return false;
    }

    @:allow(code) function i_Win():Class_877 {
        this.unlock_Next_Level();
        if (this.var_6 != null) {
            this.var_6.method_100();
        }
        return this.get_Win_Popup();
    }

    function unlock_Next_Level() {
        if (this.currentProfile.levelUnlocked < this.get_Level_Num()) {
            this.currentProfile.levelUnlocked = this.get_Level_Num();
        }
    }

    function get_Win_Popup():Class_877 {
        return new Class_976(this);
    }

    function get_Lost_Popup():Class_877 {
        return null;
    }

    public function method_115():Bool {
        var _loc1_:ASAny = null;
        var _loc2_ = 0;
        while (_loc2_ < this.var_168.length) {
            _loc1_ = this.var_168[_loc2_];
            if (_loc1_.var_265 == false) {
                return false;
            }
            _loc2_++;
        }
        return true;
    }

    public function method_108() {
        if (this.var_357 == null) {
            return;
        }
        this.gfx_BG.addChild(this.var_357);
        var _loc1_ = new Point(this.var_357.x, this.var_357.y);
        _loc1_ = this.gfx_BG.globalToLocal(_loc1_);
        this.var_357.x = _loc1_.x;
        this.var_357.y = _loc1_.y;
        this.var_357 = null;
    }

    @:allow(code) function method_134(param1:Class_1104):Int {
        var _loc3_:ASAny = null;
        var _loc2_ = param1.myProfile;
        var _loc4_ = 0;
        while (_loc4_ < this.currentProfile.partyList.length) {
            _loc3_ = this.currentProfile.partyList[_loc4_];
            if (_loc3_ == _loc2_) {
                return _loc4_;
            }
            _loc4_++;
        }
        trace("ERROR: screen_Level->get_Party_Index_By_Tower(Poke_Tower):int");
        return -1;
    }

    @:allow(code) function method_270(param1:Int):Class_1104 {
        var _loc2_ = this.currentProfile.partyList[param1];
        return this.get_Tower_By_Profile(_loc2_);
    }

    public function get_Tower_By_Profile(param1:Class_6):Class_1104 {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < this.towerList.length) {
            _loc2_ = this.towerList[_loc3_];
            if (_loc2_.myProfile == param1) {
                return _loc2_;
            }
            _loc3_++;
        }
        trace("Error: get_Tower_By_Profile(profile_Poke):Poke_Tower, should always find a tower");
        return null;
    }

    @:allow(code) function method_214() {
        if (this.var_445 != 0) {
            if (this.var_445 >= this.var_352 - 1) {
                this.var_445 = 0;
            }
            else {
                ++this.var_445;
            }
            return;
        }
        if (this.var_352 > 1) {
            ++this.var_445;
        }
        if (this.var_514 == 0) {
            this.var_514 = 10;
        }
        else if (this.var_514 == 10) {
            this.var_514 = -10;
        }
        else {
            this.var_514 = 10;
        }
        this.gfx_BG.x += this.var_514;
    }

    @:allow(code) override function key_Up(param1:KeyboardEvent) {
        this.var_203[param1.keyCode] = false;
    }

    @:allow(code) override function key_Down(param1:KeyboardEvent) {
        if (this.var_203 == null) {
            this.var_203 = new Array<ASAny>();
        }
        this.var_203[param1.keyCode] = true;
    }

    @:allow(code) function method_413() {
        var _loc1_:ASAny = null;
        if (this.var_203 == null) {
            return;
        }
        if (!this.var_203[37] && !this.var_203[38] && !this.var_203[39] && !this.var_203[40] && !this.var_203[65] && !this.var_203[68] && !this.var_203[87] && !this.var_203[83]) {
            return;
        }
        var _loc2_ = Std.int(20 / this.var_352);
        var _loc3_ = this.gfx_BG.x;
        var _loc4_ = this.gfx_BG.y;
        if (if (this.var_203[37]) this.var_203[37] else this.var_203[65]) {
            _loc3_ += _loc2_;
        }
        if (if (this.var_203[39]) this.var_203[39] else this.var_203[68]) {
            _loc3_ -= _loc2_;
        }
        if (if (this.var_203[38]) this.var_203[38] else this.var_203[87]) {
            _loc4_ += _loc2_;
        }
        if (if (this.var_203[40]) this.var_203[40] else this.var_203[83]) {
            _loc4_ -= _loc2_;
        }
        _loc1_ = this.method_56(_loc3_, _loc4_);
        this.gfx_BG.x = _loc1_.x;
        this.gfx_BG.y = _loc1_.y;
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc5_ = false;
        var _loc9_:ASAny = null;
        var _loc10_:ASAny = null;
        var _loc11_ = 0;
        var _loc12_ = 0;
        var _loc13_:ASAny = null;
        var _loc14_ = 0;
        var _loc15_ = false;
        var _loc16_:ASAny = null;
        var _loc17_:ASAny = null;
        var _loc18_:ASAny = null;
        if (this.var_127 != null) {
            if (this.var_500 != 0) {
                if (this.var_500 >= this.var_352 - 1) {
                    this.var_500 = 0;
                }
                else {
                    ++this.var_500;
                }
                return false;
            }
            if (this.var_352 > 1) {
                ++this.var_500;
            }
            return this.var_127.run(param1);
        }
        if (this.shake) {
            this.method_214();
        }
        var _loc6_ = Std.int(20 / this.var_352);
        var _loc7_ = this.gfx_BG.x;
        var _loc8_ = this.gfx_BG.y;
        if (this.var_177 != null) {
            if (this.var_177.life <= 0) {
                this.var_177.stopDrag();
                this.gfx_BG.removeChild(this.var_177);
                this.var_177 = null;
                this.gfx_BG.hl_spot.visible = false;
                this.method_20();
                this.method_12();
            }
            else {
                this.var_177.gfx.alpha = 0.5;
                this.var_177.var_252.gotoAndStop(2);
                _loc12_ = 0;
                while (_loc12_ < this.var_300.length) {
                    if ((_loc10_ = this.var_300[_loc12_]).isCollision(this.var_177.gfx) && _loc10_.method_147(this.var_177.myProfile)) {
                        this.var_177.gfx.alpha = 1;
                        this.var_177.var_252.gotoAndStop(1);
                        _loc11_++;
                    }
                    _loc12_++;
                }
                if (_loc11_ > 1) {
                    this.var_177.gfx.alpha = 0.5;
                    this.var_177.var_252.gotoAndStop(2);
                }
                if (true) {
                    _loc7_ += _loc6_;
                    _loc5_ = true;
                }
                else if (false) {
                    _loc7_ -= _loc6_;
                    _loc5_ = true;
                }
                if (true) {
                    _loc8_ += _loc6_;
                    _loc5_ = true;
                }
                else if (false) {
                    _loc8_ -= _loc6_;
                    _loc5_ = true;
                }
                if (_loc5_) {
                    _loc3_ = this.method_56(_loc7_, _loc8_);
                    this.gfx_BG.x = _loc3_.x;
                    this.gfx_BG.y = _loc3_.y;
                    _loc13_ = this.gfx_BG.globalToLocal(new Point(stage.mouseX, stage.mouseY));
                    this.var_177.x = _loc13_.x;
                    if (this.usingPhone) {
                        _loc14_ = 65;
                    }
                    this.var_177.y = _loc13_.y - _loc14_;
                }
            }
        }
        else if (this.var_335 != null) {
            this.var_335.gotoAndStop(1);
            if (this.var_79 != null) {
                _loc12_ = 0;
                while (_loc12_ < this.var_79.length) {
                    _loc2_ = this.var_79[_loc12_];
                    if (_loc2_.var_482 && _loc2_.hitTestPoint(this.var_335.x, this.var_335.y)) {
                        _loc15_ = true;
                        this.var_335.gotoAndStop(2);
                        if (_loc2_ == this.var_357) {
                            break;
                        }
                        this.method_108();
                        _loc3_ = new Point(_loc2_.x, _loc2_.y);
                        _loc3_ = this.gfx_BG.localToGlobal(_loc3_);
                        _loc2_.x = _loc3_.x;
                        _loc2_.y = _loc3_.y;
                        addChild(_loc2_);
                        this.var_357 = _loc2_;
                        break;
                    }
                    _loc12_++;
                }
            }
            if (!_loc15_) {
                this.method_108();
                if (true) {
                    _loc7_ += _loc6_;
                    _loc5_ = true;
                }
                else if (false) {
                    _loc7_ -= _loc6_;
                    _loc5_ = true;
                }
                if (true) {
                    _loc8_ += _loc6_;
                    _loc5_ = true;
                }
                else if (false) {
                    _loc8_ -= _loc6_;
                    _loc5_ = true;
                }
                if (_loc5_) {
                    _loc3_ = this.method_56(_loc7_, _loc8_);
                    this.gfx_BG.x = _loc3_.x;
                    this.gfx_BG.y = _loc3_.y;
                }
            }
        }
        else if (this.var_414 != null) {
            this.var_468 = null;
            this.var_414.alpha = 0.5;
            if (this.towerList != null) {
                _loc12_ = 0;
                while (_loc12_ < this.towerList.length) {
                    if ((_loc16_ = this.towerList[_loc12_]).life < _loc16_.totalLife && _loc16_.gfx.hitTestObject(this.var_414)) {
                        this.var_468 = _loc16_;
                        this.var_414.alpha = 1;
                        break;
                    }
                    _loc12_++;
                }
            }
            if (true) {
                _loc7_ += _loc6_;
                _loc5_ = true;
            }
            else if (false) {
                _loc7_ -= _loc6_;
                _loc5_ = true;
            }
            if (true) {
                _loc8_ += _loc6_;
                _loc5_ = true;
            }
            else if (false) {
                _loc8_ -= _loc6_;
                _loc5_ = true;
            }
            if (_loc5_) {
                _loc3_ = this.method_56(_loc7_, _loc8_);
                this.gfx_BG.x = _loc3_.x;
                this.gfx_BG.y = _loc3_.y;
            }
        }
        if (!this.var_449) {
            return false;
        }
        if (this.check_For_End_Of_Game()) {
            return false;
        }
        if (this.var_6 != null) {
            this.var_6.run();
        }
        this.method_413();
        if (this.towerList != null) {
            _loc12_ = 0;
            while (_loc12_ < this.towerList.length) {
                (_loc9_ = this.towerList[_loc12_]).run(param1);
                if (this.var_79 != null && this.var_79.length != 0) {
                    _loc9_.checkEnemy(this.var_79);
                }
                if (this.var_201 != null && this.var_201.length != 0) {
                    _loc9_.method_23(this.var_201, true);
                }
                _loc12_++;
            }
        }
        if (this.var_517 != null) {
            _loc12_ = 0;
            while (_loc12_ < this.var_517.length) {
                (_loc9_ = this.var_517[_loc12_]).run(param1);
                if (this.var_79 != null && this.var_79.length != 0) {
                    _loc9_.checkEnemy(this.var_79);
                }
                if (this.var_201 != null && this.var_201.length != 0) {
                    _loc9_.method_23(this.var_201, true);
                }
                _loc12_++;
            }
        }
        if (this.var_527 != null) {
            _loc12_ = 0;
            while (_loc12_ < this.var_527.length) {
                (_loc9_ = this.var_527[_loc12_]).run(param1);
                if (this.var_79 != null && this.var_79.length != 0) {
                    _loc9_.checkEnemy(this.var_79);
                }
                if (this.var_201 != null && this.var_201.length != 0) {
                    _loc9_.method_23(this.var_201, true);
                }
                _loc12_++;
            }
        }
        if (this.var_79 != null) {
            _loc12_ = 0;
            while (_loc12_ < this.var_79.length) {
                _loc2_ = this.var_79[_loc12_];
                _loc2_.run(param1);
                if (_loc2_.myProfile.var_107) {
                    if (this.towerList != null && this.towerList.length != 0) {
                        _loc17_ = this.method_79();
                        _loc2_.checkEnemy(_loc17_);
                    }
                }
                if (this.var_201 != null && this.var_201.length != 0) {
                    _loc2_.method_23(this.var_201);
                }
                _loc12_++;
            }
        }
        if (this.var_201 != null) {
            _loc12_ = 0;
            while (_loc12_ < this.var_201.length) {
                (_loc18_ = this.var_201[_loc12_]).run();
                _loc12_++;
            }
        }
        return true;
    }

    @:allow(code) function method_79():Vector<Poke> {
        var _loc2_:ASAny = null;
        var _loc1_ = new Vector<Poke>();
        var _loc3_ = 0;
        while (_loc3_ < this.towerList.length) {
            _loc2_ = this.towerList[_loc3_];
            if (_loc2_) {
                _loc1_.push(_loc2_);
            }
            _loc3_++;
        }
        if (this.var_517 != null) {
            _loc3_ = 0;
            while (_loc3_ < this.var_517.length) {
                _loc2_ = this.var_517[_loc3_];
                if (_loc2_) {
                    _loc1_.push(_loc2_);
                }
                _loc3_++;
            }
        }
        return _loc1_;
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        var _loc5_:ASAny = null;
        var _loc6_ = 0;
        if (this.var_127 != null) {
            return this.var_127.mouse_Down(param1);
        }
        if (!this.var_449) {
            return false;
        }
        if (this.gfx_UI.contains(ASCompat.dynamicAs(param1.target, DisplayObject))) {
            _loc4_ = 1;
            while (_loc4_ <= 6) {
                _loc3_ = (this.gfx_UI : ASAny)["block_" + _loc4_];
                if (_loc3_.contains(ASCompat.dynamicAs(param1.target, DisplayObject))) {
                    if (_loc3_.currentFrame != 1) {
                        return false;
                    }
                    if (_loc3_.bg.currentFrame == 1) {
                        this.method_159(param1, _loc4_ - 1);
                    }
                    else if (_loc3_.bg.currentFrame == 2) {
                        _loc2_ = this.method_270(_loc4_ - 1);
                        this.method_246(_loc2_);
                    }
                    return false;
                }
                _loc4_++;
            }
            if (Std.is(param1.target, GfxMovieClip)) {
                _loc5_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
                if (this.check_Mouse_Down_Pokeball(param1, _loc5_)) {
                    return false;
                }
                if (this.check_Mouse_Down_Speed(_loc5_)) {
                    return false;
                }
                if (this.method_81(_loc5_)) {
                    return false;
                }
                if (this.check_Mouse_Down_Zoom(_loc5_)) {
                    return false;
                }
                if (this.method_94(_loc5_)) {
                    return false;
                }
                if (this.check_Mouse_Down_Potion(param1, _loc5_)) {
                    return false;
                }
            }
        }
        if (this.towerList != null) {
            _loc4_ = 0;
            while (_loc4_ < this.towerList.length) {
                _loc2_ = this.towerList[_loc4_];
                if (this.method_311(param1, _loc2_)) {
                    _loc6_ = this.method_134(_loc2_);
                    this.method_159(param1, _loc6_);
                    this.return_Poke(_loc2_);
                    return false;
                }
                _loc4_++;
            }
        }
        this.gfx_BG.startDrag(false, this.var_316);
        return false;
    }

    @:allow(code) function check_Mouse_Down_Pokeball(param1:MouseEvent, param2:GfxMovieClip):Bool {
        if (param2 == this.gfx_UI.Pokeball) {
            this.method_248(param1);
            return true;
        }
        return false;
    }

    @:allow(code) function check_Mouse_Down_Potion(param1:MouseEvent, param2:GfxMovieClip):Bool {
        if (this.gfx_UI.potion.contains(param2)) {
            this.method_206(param1);
            return true;
        }
        return false;
    }

    @:allow(code) function method_81(param1:GfxMovieClip):Bool {
        if (param1 == this.gfx_UI.exit_butt) {
            this.add_Popup(new Class_972(this));
            return true;
        }
        return false;
    }

    @:allow(code) function method_41(param1:Int) {
        this.var_352 = param1;
        this.gfx_UI.speed_hl.gotoAndStop(this.var_352);
    }

    @:allow(code) function check_Mouse_Down_Zoom(param1:GfxMovieClip):Bool {
        if (param1 == this.gfx_UI.zoom_1) {
            this.gfx_BG.scaleX = this.gfx_BG.scaleY = 1;
            this.gfx_UI.zoom_hl.gotoAndStop(1);
            return true;
        }
        if (param1 == this.gfx_UI.zoom_2) {
            this.gfx_BG.scaleX = this.gfx_BG.scaleY = 0.75;
            this.gfx_UI.zoom_hl.gotoAndStop(2);
            return true;
        }
        if (param1 == this.gfx_UI.zoom_3) {
            this.gfx_BG.scaleX = this.gfx_BG.scaleY = 0.5;
            this.gfx_UI.zoom_hl.gotoAndStop(3);
            return true;
        }
        if (param1 == this.gfx_UI.zoom_4) {
            this.gfx_BG.scaleX = this.gfx_BG.scaleY = 0.25;
            this.gfx_UI.zoom_hl.gotoAndStop(4);
            return true;
        }
        return false;
    }

    @:allow(code) function method_94(param1:GfxMovieClip):Bool {
        if (param1 == this.gfx_UI.path_1) {
            this.var_562 = "p";
            this.gfx_UI.path_hl.gotoAndStop(1);
            return true;
        }
        if (param1 == this.gfx_UI.path_2) {
            this.var_562 = "2";
            this.gfx_UI.path_hl.gotoAndStop(2);
            return true;
        }
        if (param1 == this.gfx_UI.path_3) {
            this.var_562 = "3";
            this.gfx_UI.path_hl.gotoAndStop(3);
            return true;
        }
        if (param1 == this.gfx_UI.path_4) {
            this.var_562 = "4";
            this.gfx_UI.path_hl.gotoAndStop(4);
            return true;
        }
        return false;
    }

    @:allow(code) function check_Mouse_Down_Speed(param1:GfxMovieClip):Bool {
        if (param1 == this.gfx_UI.speed_1) {
            this.method_41(1);
            return true;
        }
        if (param1 == this.gfx_UI.speed_2) {
            this.method_41(2);
            return true;
        }
        if (param1 == this.gfx_UI.speed_3) {
            this.method_41(3);
            return true;
        }
        if (param1 == this.gfx_UI.speed_4) {
            this.method_41(4);
            return true;
        }
        return false;
    }

    @:allow(code) function method_212(param1:Class_1104, param2:Class_4) {
        param1.currentSpot = param2;
        param2.full = true;
        param1.x = param2.gfx.x;
        param1.y = param2.gfx.y;
        if (this.sponsor == "arc") {
            param1.myProfile.saveInfo.needTag = true;
            param1.myProfile.myTag = "h";
        }
        this.entered_Battle(param1);
        var _loc3_ = this.currentProfile.partyList[this.var_622];
        this.currentProfile.fightList.push(_loc3_);
        this.reset_Poke();
        this.gfx_BG.addChild(this.var_177);
        this.towerList.push(this.var_177);
    }

    @:allow(code) override function mouse_Up(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        var _loc3_ = false;
        var _loc4_ = 0;
        var _loc5_:ASAny = null;
        var _loc6_ = 0;
        if (this.var_127 != null) {
            return false;
        }
        if (this.var_177 != null) {
            this.var_177.stopDrag();
            if (this.var_177.var_252.currentFrame == 2 || this.var_177.life == 0) {
                this.gfx_BG.removeChild(this.var_177);
            }
            else {
                _loc4_ = 0;
                while (_loc4_ < this.var_300.length) {
                    _loc2_ = this.var_300[_loc4_];
                    if (_loc2_.isCollision(this.var_177.gfx) && _loc2_.method_147(this.var_177.myProfile)) {
                        _loc3_ = true;
                        this.method_212(this.var_177, _loc2_);
                        break;
                    }
                    _loc4_++;
                }
                if (!_loc3_) {
                    removeChild(this.var_177);
                }
            }
            this.var_177 = null;
            this.gfx_BG.hl_spot.visible = false;
            this.method_20();
            this.method_12();
        }
        else if (this.var_335 != null) {
            this.var_335.stopDrag();
            if (this.var_357 != null) {
                this.method_72();
                _loc5_ = this.var_357;
                this.method_108();
                _loc5_.method_91();
                _loc5_.method_44();
                this.remove_Enemy(_loc5_);
                this.var_335.gotoAndStop(1);
                this.var_449 = false;
                this.add_Popup(new Class_971(this, _loc5_));
                this.captured_Poke(_loc5_);
                return true;
            }
            removeChild(this.var_335);
            this.var_335 = null;
            this.method_20();
            this.method_12();
        }
        else if (this.var_414 != null) {
            this.var_414.stopDrag();
            if (this.var_468 != null) {
                if (this.var_468.life < this.var_468.totalLife) {
                    --this.var_586;
                    _loc6_ = 20;
                    if (this.var_426 == 2) {
                        _loc6_ = 50;
                    }
                    else if (this.var_426 == 3) {
                        _loc6_ = this.var_468.totalLife;
                    }
                    this.var_468.take_Healing(_loc6_);
                }
            }
            removeChild(this.var_414);
            this.var_414 = null;
            this.method_20();
            this.method_144();
            this.method_12();
        }
        dispatchEvent(new Event(const_266));
        this.gfx_BG.stopDrag();
        return false;
    }

    function entered_Battle(param1:Class_1104) {
    }

    @:allow(code) function method_360(param1:Int):Class_4 {
        var _loc2_:ASAny = null;
        var _loc3_ = "spot_" + param1;
        var _loc4_ = 0;
        while (_loc4_ < this.var_300.length) {
            _loc2_ = this.var_300[_loc4_];
            if (_loc2_.gfx.name == _loc3_) {
                return _loc2_;
            }
            _loc4_++;
        }
        return null;
    }

    function method_10(param1:Class_1104, param2:Int) {
        param1.var_252 = new Gfx_Range_Normal();
        param1.addChildAt(param1.var_252, 0);
        param1.var_252.visible = false;
        var _loc3_ = this.method_360(param2);
        if (_loc3_ != null) {
            param1.currentSpot = _loc3_;
            _loc3_.full = true;
            param1.x = _loc3_.gfx.x;
            param1.y = _loc3_.gfx.y;
        }
        this.gfx_BG.addChild(param1);
        if (this.var_527 == null) {
            this.var_527 = new Vector<Class_1104>();
        }
        this.var_527.push(param1);
    }

    @:allow(code) function method_311(param1:MouseEvent, param2:Class_1104):Bool {
        if (param2.myProfile.exploded) {
            return false;
        }
        var _loc3_ = this.gfx_BG.globalToLocal(new Point(param1.stageX, param1.stageY));
        var _loc4_ = param2.x;
        var _loc5_ = param2.y;
        if (_loc3_.x >= _loc4_ - 25 && _loc3_.x <= _loc4_ + 25) {
            if (_loc3_.y >= _loc5_ - 25 && _loc3_.y <= _loc5_ + 25) {
                return true;
            }
        }
        return false;
    }

    @:allow(code) function method_272(param1:Class_1104) {
        var _loc2_ = new Point();
        var _loc3_ = this.gfx_BG.localToGlobal(new Point(param1.x, param1.y));
        var _loc4_ = 400 - _loc3_.x;
        var _loc5_ = 200 - _loc3_.y;
        var _loc6_ = this.gfx_BG.x + _loc4_;
        var _loc7_ = this.gfx_BG.y + _loc5_;
        this.move_Screen(_loc6_, _loc7_, 0.2);
    }

    public function method_248(param1:MouseEvent) {
        var _loc3_ = 0;
        var _loc2_:GfxMovieClip = new Gfx_Pokeball();
        addChild(_loc2_);
        if (this.usingPhone) {
            _loc3_ = 100;
        }
        _loc2_.x = param1.stageX;
        _loc2_.y = param1.stageY - _loc3_;
        _loc2_.startDrag();
        this.var_335 = _loc2_;
        this.method_14();
        this.method_12(true);
    }

    public function method_206(param1:MouseEvent) {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        if (this.var_586 == 0) {
            return;
        }
        if (this.var_426 == 2) {
            _loc2_ = new Gfx_Potion_Drag_2();
        }
        else if (this.var_426 == 3) {
            _loc2_ = new Gfx_Potion_Drag_3();
        }
        else {
            _loc2_ = new Gfx_Potion_Drag();
        }
        addChild(_loc2_);
        if (this.usingPhone) {
            _loc3_ = 100;
        }
        _loc2_.x = param1.stageX;
        _loc2_.y = param1.stageY - _loc3_;
        _loc2_.startDrag();
        this.var_414 = _loc2_;
        this.method_14();
        this.method_12(true);
    }

    public function method_159(param1:MouseEvent, param2:Int) {
        var _loc6_ = 0;
        this.var_622 = param2;
        var _loc3_ = this.currentProfile.partyList[param2];
        _loc3_.method_154();
        _loc3_.transformed = false;
        var _loc4_ = new Class_1104(this, _loc3_);
        this.gfx_BG.addChild(_loc4_);
        var _loc5_ = this.gfx_BG.globalToLocal(new Point(param1.stageX, param1.stageY));
        _loc4_.x = _loc5_.x;
        if (this.usingPhone) {
            _loc6_ = 65;
        }
        _loc4_.y = _loc5_.y - _loc6_;
        _loc4_.startDrag();
        this.var_177 = _loc4_;
        this.gfx_BG.hl_spot.visible = true;
        this.method_14();
        this.method_12(true);
    }

    public function method_12(param1:Bool = false) {
        if (this.var_449 || param1) {
            this.var_449 = false;
        }
        else {
            this.var_449 = true;
        }
    }

    public function captured_Poke(param1:Poke) {
        var _loc2_ = param1.myProfile;
        _loc2_.var_35 = ++this.currentProfile.latestID;
        Class_13.method_2(_loc2_);
        _loc2_.var_179 = _loc2_.level;
        _loc2_.var_175 = _loc2_.num;
        _loc2_.var_298 = -1;
        _loc2_.val = new Class_11();
        _loc2_.val.reset(_loc2_);
        this.currentProfile.PokeList.push(_loc2_);
        _loc2_.saveInfo.var_212 = true;
        if (this.sponsor == "arc") {
            _loc2_.myTag = "h";
        }
        if (_loc2_.num == Class_13.const_30) {
            this.send_Msg("sendPikachuCount");
        }
        this.add_To_Party(_loc2_);
    }

    public function add_To_Party(param1:Class_6) {
        var _loc2_ = 0;
        while (_loc2_ < 6) {
            if (this.currentProfile.partyList[_loc2_] == null) {
                this.currentProfile.partyList[_loc2_] = param1;
                break;
            }
            _loc2_++;
        }
    }

    public function method_72() {
        var _loc1_:ASAny = null;
        var _loc3_ = 1;
        while (_loc3_ <= 6) {
            _loc1_ = Std.downcast(this.gfx_UI.getChildByName("block_" + _loc3_), GfxMovieClip);
            _loc1_.gotoAndStop(1);
            _loc3_++;
        }
    }

    public function method_245(param1:Class_1104, param2:Bool = false) {
        param1.var_252.visible = false;
        this.method_394();
        this.reset_Poke();
        this.method_20();
        if (!param2) {
            return;
        }
        var _loc3_ = Class_10.method_131(param1.myProfile.num);
        if (_loc3_ <= param1.myProfile.level) {
            this.method_336(param1);
            return;
        }
        this.method_141(param1);
    }

    public function method_141(param1:Class_1104, param2:Bool = false):Bool {
        var _loc4_:ASAny = null;
        var _loc5_:ASAny = null;
        var _loc6_:ASAny = null;
        var _loc3_ = Class_12.method_170(param1.myProfile);
        if (_loc3_ != 0) {
            _loc5_ = (_loc4_ = new LevelUpSound()).play();
            _loc6_ = new SoundTransform(Class_1.var_194);
            _loc5_.soundTransform = _loc6_;
            this.method_325(param1, _loc3_, param2);
            return true;
        }
        return false;
    }

    public function method_336(param1:Class_1104) {
        this.method_12(true);
        this.method_14();
        this.add_Popup(new Class_980(this, param1));
    }

    public function method_325(param1:Class_1104, param2:Int, param3:Bool = false) {
        this.method_12();
        this.method_14();
        var _loc4_ = Class_9.method_21(param2, null).var_7;
        if (!param1.add_Attack(param2)) {
            trace("can\'t fit Attack");
            this.add_Popup(new Class_970(this, param1, _loc4_, param2));
            return;
        }
        this.add_Popup(new Class_979(this, param1, _loc4_));
    }

    public function show_Replace_Move(param1:Class_1104, param2:Int) {
        this.method_12(true);
        this.method_14();
        this.add_Popup(new Class_975(this, param1, param2));
    }

    @:allow(code) function method_56(param1:Float, param2:Float):Point {
        var _loc3_ = new Point(param1, param2);
        if (this.var_316.x > 0) {
            if (_loc3_.x > this.var_316.x) {
                _loc3_.x = this.var_316.x;
            }
            else if (_loc3_.x < 0) {
                _loc3_.x = 0;
            }
        }
        else if (_loc3_.x < this.var_316.x) {
            _loc3_.x = this.var_316.x;
        }
        else if (_loc3_.x > 0) {
            _loc3_.x = 0;
        }
        if (this.var_316.y > 0) {
            if (_loc3_.y > this.var_316.y) {
                _loc3_.y = this.var_316.y;
            }
            else if (_loc3_.y < 0) {
                _loc3_.y = 0;
            }
        }
        else if (_loc3_.y < this.var_316.y) {
            _loc3_.y = this.var_316.y;
        }
        else if (_loc3_.y > 0) {
            _loc3_.y = 0;
        }
        return _loc3_;
    }

    public function move_Screen(param1:Float, param2:Float, param3:Float) {
        var _loc4_:Point;
        param1 = (_loc4_ = this.method_56(param1, param2)).x;
        param2 = _loc4_.y;
        var _loc5_:Tween;
        (_loc5_ = new Tween(this.gfx_BG, "y", Strong.easeOut, this.gfx_BG.y, param2, param3, true)).start();
        var _loc6_:Tween;
        (_loc6_ = new Tween(this.gfx_BG, "x", Strong.easeOut, this.gfx_BG.x, param1, param3, true)).start();
    }

    public function method_246(param1:Class_1104) {
        this.method_272(param1);
        param1.var_252.visible = true;
        this.method_293(param1);
        this.method_14();
        this.method_72();
        var _loc2_ = new Class_879(param1, this.currentProfile, my_Parent);
        _loc2_.var_450 = this;
        this.var_203 = null;
        this.send_Msg(["overlay_Screen", _loc2_]);
    }

    public function method_293(param1:Class_1104) {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < this.towerList.length) {
            _loc2_ = this.towerList[_loc3_];
            _loc2_.alpha = 0.2;
            if (_loc2_ == param1) {
                _loc2_.alpha = 1;
            }
            _loc3_++;
        }
    }

    public function method_394() {
        var _loc1_:ASAny = null;
        var _loc2_ = 0;
        while (_loc2_ < this.towerList.length) {
            _loc1_ = this.towerList[_loc2_];
            _loc1_.alpha = 1;
            _loc2_++;
        }
    }

    public function remove_From_Party(param1:Poke) {
        param1.myProfile.var_298 = -2;
        this.return_Poke(param1);
        this.reset_Poke();
    }

    public function return_Poke(param1:Poke) {
        var _loc3_:ASAny = null;
        var _loc4_ = false;
        var _loc6_:ASAny = null;
        var _loc2_ = param1.myProfile;
        var _loc5_ = 0;
        while (_loc5_ < this.currentProfile.fightList.length) {
            _loc3_ = this.currentProfile.fightList[_loc5_];
            if (_loc2_ == _loc3_) {
                this.currentProfile.fightList.splice(_loc5_, 1);
                _loc4_ = true;
                break;
            }
            _loc5_++;
        }
        if (_loc4_) {
            if (this.gfx_BG.contains(param1)) {
                this.gfx_BG.removeChild(param1);
            }
        }
        _loc5_ = 0;
        while (_loc5_ < this.towerList.length) {
            if ((_loc6_ = this.towerList[_loc5_]) == param1) {
                this.towerList.splice(_loc5_, 1);
                break;
            }
            _loc5_++;
        }
        if (param1.currentSpot != null) {
            param1.currentSpot.full = false;
            param1.currentSpot = null;
        }
        this.reset_Poke();
    }

    public function method_14() {
        this.gfx_UI.visible = false;
    }

    public function method_20() {
        this.method_99();
        this.gfx_UI.visible = true;
    }

    @:allow(code) override function back_Pressed() {
        this.add_Popup(new Class_977(this));
    }

    @:allow(code) function defeated_Poke(param1:Poke) {
        this.var_6.defeated_Poke(param1.myProfile);
    }

    @:allow(code) override function send_Msg(param1:ASObject):ASObject {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_:ASAny = null;
        var _loc5_ = 0;
        if (Std.is(param1, String)) {
            _loc2_ = ASCompat.toString(param1);
        }
        else {
            if (!Std.is(param1, Array)) {
                return super.send_Msg(param1);
            }
            _loc3_ = (ASCompat.dynamicAs(param1, Array) : Array<ASAny>);
            _loc2_ = _loc3_[0];
        }
        if (_loc2_ == "fainted") {
            _loc4_ = ASCompat.dynamicAs(_loc3_[1], Poke);
            if (this.var_6 != null) {
                this.defeated_Poke(_loc4_);
            }
            _loc5_ = _loc4_.myProfile.var_27;
            if (this.sponsor == "arc") {
                _loc5_ *= 50;
                trace("Arcade: Money Increase");
            }
            else if (this.sponsor == "sam") {
                _loc5_ *= 1000;
                trace("Temporary money increase");
            }
            this.currentProfile.money += _loc5_;
            this.method_99();
            this.remove_Enemy(_loc4_);
            return true;
        }
        if (_loc2_ == "tower_fainted") {
            this.var_683 = true;
            this.remove_From_Party(_loc3_[1]);
            return true;
        }
        if (_loc2_ == "escape") {
            this.remove_Enemy(_loc3_[1]);
            return true;
        }
        if (_loc2_ == "add_path_effect") {
            this.add_path_effect(_loc3_[1]);
            return true;
        }
        return super.send_Msg(param1);
    }

    public function remove_Enemy(param1:Poke) {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < this.var_79.length) {
            _loc2_ = this.var_79[_loc3_];
            if (_loc2_ == param1) {
                this.gfx_BG.removeChild(param1);
                this.var_79.splice(_loc3_, 1);
                return;
            }
            _loc3_++;
        }
        trace("ERROR-> screen_LEVEL -> remove_Enemy, should always be an enemy to remove");
    }
}

