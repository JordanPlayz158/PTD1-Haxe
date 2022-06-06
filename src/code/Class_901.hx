package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import flash.display.DisplayObject;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.MouseEvent;
import flash.net.SharedObject;
import flash.net.URLLoader;
import flash.net.URLLoaderDataFormat;
import flash.net.URLRequest;
import flash.net.URLRequestMethod;
import xyz.jordanplayz158.ptd1.SamURLVariables;

class Class_901 extends _Obj implements Class_3 {

    public static inline final const_25 = "http://www.sndgames.com/php/trading.php";


    @:allow(code) var gfx_BG:GfxMovieClip;

    var var_127:Class_877;

    @:allow(code) var currentProfile:Class_878;

    @:allow(code) var var_41:URLLoader;

    

    @:allow(code) var var_304:Class_6;

    @:allow(code) var var_37:Class_6;

    var var_240:SharedObject;

    var var_378:Array<ASAny>;

    var email:String;

    var pass:String;

    var onlineProfile:ASObject;

    var var_307:Int = 0;

    @:allow(code) var var_229:Sprite;

    @:allow(code) var previewCode:String;

    @:allow(code) var securityCode:String;

    public function new(param1:Class_878, param2:_Obj) {
        super(param2);
        this.currentProfile = param1;
        this.currentProfile.reset_Fight_List();
        this.currentProfile.method_86();
        this.var_307 = 1;
        this.init();
    }

    public function add_Popup(param1:Class_877) {
        this.var_127 = param1;
        addChild(this.var_127);
    }

    public function method_24(param1:Class_877) {
        if (this.var_127 == param1) {
            removeChild(param1);
            this.var_127 = null;
        }
    }

    @:allow(code) function init() {
        this.gfx_BG = new Gfx_Screen_Trading();
        this.gfx_BG.back_butt.buttonMode = true;
        addChild(this.gfx_BG);
    }

    function method_392() {
        this.var_378 = this.method_152();
        if (this.var_378 == null) {
            this.gfx_BG.gotoAndStop("must_save");
            return;
        }
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "saveAccount";
        this.email = this.onlineProfile.email;
        this.pass = this.onlineProfile.pass;
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc3_.Info1 = this.var_378[0];
        _loc3_.Info2 = this.var_378[1];
        _loc3_.Info3 = this.var_378[2];
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    function method_250() {
        var _loc2_ = 0;
        this.method_188();
        this.var_378 = this.method_152();
        if (this.var_378 == null) {
            this.gfx_BG.gotoAndStop("must_save");
            return;
        }
        var _loc1_ = this.method_333();
        if (this.var_37.shiny != 0) {
            _loc2_ = 1;
        }
        else {
            _loc2_ = 0;
        }
        trace(_loc1_);
        var _loc3_ = new URLRequest();
        var _loc4_ = Date.now();
        _loc3_.url = "undefined?Date=" + _loc4_.getTime();
        var _loc5_:SamURLVariables;
        (_loc5_ = new SamURLVariables()).Action = "createCode";
        this.email = this.onlineProfile.email;
        this.pass = this.onlineProfile.pass;
        _loc5_.Email = this.email;
        _loc5_.Pass = this.pass;
        _loc5_.Info1 = this.var_378[0];
        _loc5_.Info2 = this.var_378[1];
        _loc5_.Info3 = this.var_378[2];
        _loc5_.Code = _loc1_;
        _loc5_.num = this.var_37.num;
        _loc5_.lvl = this.var_37.level;
        _loc5_.shiny = _loc2_;
        _loc5_.move1 = this.var_37.move1;
        _loc5_.move2 = this.var_37.move2;
        _loc5_.move3 = this.var_37.move3;
        _loc5_.move4 = this.var_37.move4;
        _loc3_.method = URLRequestMethod.POST;
        _loc3_.data = _loc5_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_166);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc3_);
    }

    @:allow(code) function method_333():String {
        var _loc1_ = 0;
        if (this.var_37.shiny != 0) {
            _loc1_ = 1;
        }
        else {
            _loc1_ = 0;
        }
        return "" + this.var_37.num + this.var_37.level + this.var_37.move1 + this.var_37.move2 + this.var_37.move3 + this.var_37.move4 + _loc1_;
    }

    @:allow(code) function method_188() {
        var _loc1_:ASAny = null;
        var _loc2_ = 0;
        while (_loc2_ < this.currentProfile.PokeList.length) {
            _loc1_ = this.currentProfile.PokeList[_loc2_];
            if (_loc1_ == this.var_37) {
                this.currentProfile.PokeList.splice(_loc2_, 1);
                break;
            }
            _loc2_++;
        }
        this.currentProfile.save_Profile();
    }

    @:allow(code) function method_17(param1:Event) {
        this.var_41.removeEventListener(Event.COMPLETE, this.method_17);
        this.var_41.removeEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        var target:URLLoader = param1.target;
        var _loc2_:ASObject = target.data;
        this.var_41 = null;
        trace(_loc2_.Result);
        trace(_loc2_.Reason);
        if (_loc2_.Result == "Failure") {
            if (_loc2_.Reason == "DatabaseConnection") {
                this.gfx_BG.gotoAndStop("database_error");
            }
            else if (_loc2_.Reason == "NotFound") {
                this.gfx_BG.gotoAndStop("must_save");
            }
        }
        else if (_loc2_.Result == "Success") {
            if (_loc2_.Reason == "saved") {
                this.method_268();
            }
        }
    }

    @:allow(code) function method_166(param1:Event) {
        this.var_41.removeEventListener(Event.COMPLETE, this.method_166);
        this.var_41.removeEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        var target:URLLoader = param1.target;
        var _loc2_:ASObject = target.data;
        this.var_41 = null;
        trace(_loc2_.Result);
        trace(_loc2_.Reason);
        if (_loc2_.Result == "Failure") {
            if (_loc2_.Reason == "DatabaseConnection") {
                this.gfx_BG.gotoAndStop("database_error");
            }
            else if (_loc2_.Reason == "NotFound") {
                this.gfx_BG.gotoAndStop("must_save");
            }
        }
        else if (_loc2_.Result == "Success") {
            if (_loc2_.Reason == "saved") {
                this.previewCode = _loc2_.PreviewCode;
                this.securityCode = _loc2_.SecurityCode;
                this.method_202();
            }
        }
    }

    @:allow(code) function method_171(param1:Event) {
        this.var_41.removeEventListener(Event.COMPLETE, this.method_171);
        this.var_41.removeEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        var target:URLLoader = param1.target;
        var _loc2_:ASObject = target.data;
        this.var_41 = null;
        trace(_loc2_.Result);
        trace(_loc2_.Reason);
        if (_loc2_.Result == "Failure") {
            if (_loc2_.Reason == "DatabaseConnection") {
                this.gfx_BG.gotoAndStop("database_error");
            }
            else if (_loc2_.Reason == "NotFound") {
                this.gfx_BG.gotoAndStop("must_save");
            }
            else if (_loc2_.Reason == "PreviewNotFound") {
                this.gfx_BG.gotoAndStop("previewNotFound");
            }
        }
        else if (_loc2_.Result == "Success") {
            this.method_407(_loc2_);
        }
    }

    @:allow(code) function method_128(param1:Event) {
        this.var_41.removeEventListener(Event.COMPLETE, this.method_128);
        this.var_41.removeEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        var target:URLLoader = param1.target;
        var _loc2_:ASObject = target.data;
        this.var_41 = null;
        trace(_loc2_.Result);
        trace(_loc2_.Reason);
        if (_loc2_.Result == "Failure") {
            if (_loc2_.Reason == "DatabaseConnection") {
                this.gfx_BG.gotoAndStop("database_error");
            }
            else if (_loc2_.Reason == "NotFound") {
                this.gfx_BG.gotoAndStop("must_save");
            }
            else if (_loc2_.Reason == "PreviewNotFound") {
                this.gfx_BG.gotoAndStop("previewNotFound");
            }
        }
        else if (_loc2_.Result == "Success") {
            this.method_326(_loc2_);
        }
    }

    @:allow(code) function method_202() {
        this.gfx_BG.gotoAndStop("trade_step_3");
        this.gfx_BG.previewCodetxt.text = this.previewCode;
        this.gfx_BG.securityCodetxt.text = this.securityCode;
    }

    @:allow(code) function method_16(param1:IOErrorEvent) {
        this.var_41.removeEventListener(Event.COMPLETE, this.method_17);
        this.var_41.removeEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41 = null;
        this.gfx_BG.gotoAndStop("connection_error");
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc4_ = 0;
        var _loc5_ = 0;
        var _loc6_:ASAny = null;
        var _loc7_:ASAny = null;
        var _loc8_ = 0;
        if (this.var_127 != null) {
            return this.var_127.mouse_Down(param1);
        }
        if (!Std.is(param1.target, GfxMovieClip)) {
            return false;
        }
        var _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
        if (_loc2_ == null) {
            return false;
        }
        if (this.gfx_BG.back_butt.contains(_loc2_)) {
            this.back_Pressed();
            return true;
        }
        if (this.gfx_BG.select_butt && this.gfx_BG.select_butt.contains(_loc2_)) {
            flash.Lib.getURL(new URLRequest("http://www.sndgames.com/games/ptd/trading.php"));
            send_Msg(["change_Screen", new Class_876(my_Parent)]);
            return true;
        }
        if (this.gfx_BG.receive_butt && this.gfx_BG.receive_butt.contains(_loc2_)) {
            this.gfx_BG.gotoAndStop("Poke_receive");
            return true;
        }
        if (this.gfx_BG.enter_preview_butt && this.gfx_BG.enter_preview_butt.contains(_loc2_)) {
            this.method_200();
            return true;
        }
        if (this.gfx_BG.enter_security_butt && this.gfx_BG.enter_security_butt.contains(_loc2_)) {
            this.method_404();
            return true;
        }
        if (this.gfx_BG.trade_yes_butt && this.gfx_BG.trade_yes_butt.contains(_loc2_)) {
            this.method_364();
            return true;
        }
        if (this.gfx_BG.arrow_right && this.gfx_BG.arrow_right.visible && this.gfx_BG.butt_right.contains(_loc2_)) {
            ++this.var_307;
            this.method_61();
            return true;
        }
        if (this.gfx_BG.arrow_left && this.gfx_BG.arrow_left.visible && this.gfx_BG.butt_left.contains(_loc2_)) {
            --this.var_307;
            this.method_61();
            return true;
        }
        if (this.gfx_BG.currentLabel == "select_1") {
            _loc5_ = (_loc4_ = (this.var_307 - 1) * 21) + 21;
            _loc6_ = this.currentProfile.PokeList;
            if (_loc5_ > _loc6_.length) {
                _loc5_ = _loc6_.length;
            }
            _loc8_ = _loc4_;
            while (_loc8_ < _loc5_) {
                if ((_loc7_ = Std.downcast(this.var_229.getChildByName("block_storage_" + _loc8_), GfxMovieClip)).contains(ASCompat.dynamicAs(param1.target, DisplayObject))) {
                    this.var_37 = _loc6_[_loc8_];
                    this.method_402();
                    return true;
                }
                _loc8_++;
            }
        }
        return false;
    }

    @:allow(code) function method_407(param1:ASObject) {
        var _loc4_ = 0;
        var _loc5_:ASAny = null;
        this.gfx_BG.gotoAndStop("Poke_receive_2");
        var _loc2_ = "";
        var _loc3_ = new Class_6();
        _loc3_.num = param1.PokeNum;
        _loc3_.level = param1.PokeLevel;
        if (param1.isShiny == "1") {
            _loc3_.shiny = 1;
        }
        else {
            _loc3_.shiny = 0;
        }
        if (_loc3_.shiny != 0) {
            _loc2_ = "s";
        }
        Class_13.method_2(_loc3_);
        this.gfx_BG.Poke_selected.gotoAndStop(_loc2_ + _loc3_.num);
        this.gfx_BG.Poke_name.text = _loc3_.name;
        this.gfx_BG.Poke_level.text = "Lvl " + _loc3_.level;
        var _loc6_ = 1;
        while (_loc6_ <= 4) {
            _loc5_ = (this.gfx_BG : ASAny)["Attack_" + _loc6_];
            _loc4_ = param1["PokeMove" + _loc6_];
            _loc5_.visible = false;
            if (_loc4_ != 0) {
                _loc5_.visible = true;
                _loc5_.gotoAndStop(_loc4_);
            }
            _loc6_++;
        }
    }

    @:allow(code) function method_326(param1:ASObject) {
        this.gfx_BG.gotoAndStop("Poke_receive_done");
        var _loc2_ = new Class_6();
        _loc2_.num = param1.PokeNum;
        _loc2_.level = param1.PokeLevel;
        _loc2_.var_40 = 0;
        if (param1.isShiny == "1") {
            _loc2_.shiny = 1;
        }
        else {
            _loc2_.shiny = 0;
        }
        if (_loc2_.num == Class_13.const_56 || _loc2_.num == Class_13.const_116) {
            ++_loc2_.num;
        }
        Class_13.method_2(_loc2_);
        _loc2_.move1 = param1.PokeMove1;
        _loc2_.move2 = param1.PokeMove2;
        _loc2_.move3 = param1.PokeMove3;
        _loc2_.move4 = param1.PokeMove4;
        _loc2_.moveSelected = 1;
        if (_loc2_.move2 == 0) {
            _loc2_.var_13 = 1;
        }
        else if (_loc2_.move3 == 0) {
            _loc2_.var_13 = 2;
        }
        else if (_loc2_.move4 == 0) {
            _loc2_.var_13 = 3;
        }
        else {
            _loc2_.var_13 = 4;
        }
        _loc2_.var_35 = ++this.currentProfile.latestID;
        this.currentProfile.PokeList.push(_loc2_);
        this.currentProfile.save_Profile();
    }

    @:allow(code) function method_404() {
        this.securityCode = this.gfx_BG.securityTxt.text;
        if (this.previewCode.length != 14 && this.previewCode.length != 13 || this.securityCode.length != 4) {
            this.gfx_BG.gotoAndStop("previewNotFound");
            return;
        }
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "checkSecurity1";
        _loc3_.previewCode = this.previewCode;
        _loc3_.securityCode = this.securityCode;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_128);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.gfx_BG.gotoAndStop("wait");
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_200() {
        this.previewCode = this.gfx_BG.previewTxt.text;
        if (this.previewCode.length != 14 && this.previewCode.length != 13) {
            this.gfx_BG.gotoAndStop("previewNotFound");
            return;
        }
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "checkPreview";
        _loc3_.previewCode = this.previewCode;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_171);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.gfx_BG.gotoAndStop("wait");
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_364() {
        this.gfx_BG.gotoAndStop("trade_step_1");
        this.method_392();
    }

    @:allow(code) function method_268() {
        this.gfx_BG.gotoAndStop("trade_step_2");
        this.method_250();
    }

    @:allow(code) function method_434() {
        this.gfx_BG.gotoAndStop("select_1");
        this.method_61();
    }

    @:allow(code) function method_402() {
        this.gfx_BG.gotoAndStop("Poke_select");
        this.set_Profile();
    }

    @:allow(code) function method_61() {
        var _loc3_:ASAny = null;
        var _loc1_:ASAny = 0;
        var _loc2_:ASAny = 0;
        if (this.var_229 != null) {
            _loc1_ = this.var_229.x;
            _loc2_ = this.var_229.y;
            this.gfx_BG.bg_your_Pokemon.removeChild(this.var_229);
        }
        this.var_229 = new Sprite();
        this.gfx_BG.bg_your_Pokemon.addChild(this.var_229);
        this.var_229.x = _loc1_;
        this.var_229.y = _loc2_;
        var _loc5_:ASAny = 114;
        var _loc6_:ASAny = 40;
        var _loc8_ = 1;
        var _loc9_ = this.currentProfile.PokeList;
        this.gfx_BG.arrow_left.visible = true;
        this.gfx_BG.arrow_right.visible = true;
        if (_loc9_.length <= 21) {
            this.gfx_BG.arrow_left.visible = false;
            this.gfx_BG.arrow_right.visible = false;
            this.var_307 = 1;
        }
        else if (this.var_307 == 1) {
            this.gfx_BG.arrow_left.visible = false;
        }
        else if (this.var_307 * 21 >= _loc9_.length) {
            this.gfx_BG.arrow_right.visible = false;
        }
        var _loc11_:Int;
        var _loc10_:Int;
        if ((_loc11_ = (_loc10_ = (this.var_307 - 1) * 21) + 21) > _loc9_.length) {
            _loc11_ = _loc9_.length;
        }
        var _loc12_ = _loc10_;
        while (_loc12_ < _loc11_) {
            _loc3_ = new Butt_Poke();
            this.var_229.addChild(_loc3_);
            _loc3_.name = "block_storage_" + _loc12_;
            _loc3_.x = _loc5_;
            _loc3_.y = _loc6_;
            if (_loc8_ == 3) {
                _loc6_ = 40;
                _loc5_ += 87;
                _loc8_ = 0;
            }
            else {
                _loc6_ += 80;
            }
            this.method_45(_loc9_[_loc12_], _loc3_, false);
            _loc8_++;
            _loc12_++;
        }
    }

    @:allow(code) function method_45(param1:Class_6, param2:GfxMovieClip, param3:Bool = true) {
        param2.gotoAndStop(1);
        var _loc4_ = "";
        if (param1.shiny != 0) {
            _loc4_ = "s";
        }
        param2.Poke_actual.gotoAndStop(_loc4_ + param1.num);
        param2.Poke_Level.text = "Lvl" + param1.level;
        param2.upgrade_bg.visible = false;
        param2.tapIn.gotoAndStop(1);
        param2.tapIn.visible = false;
    }

    @:allow(code) function set_Profile() {
        var _loc1_ = "";
        this.var_37.transformed = false;
        Class_13.method_2(this.var_37);
        if (this.var_37.shiny != 0) {
            _loc1_ = "s";
        }
        this.gfx_BG.Poke_selected.gotoAndStop(_loc1_ + this.var_37.num);
        this.gfx_BG.Poke_name.text = this.var_37.name;
        this.gfx_BG.Poke_level.text = "Lvl " + this.var_37.level;
    }

    @:allow(code) function method_418() {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_77;
        Class_13.method_2(_loc1_);
        _loc1_.level = 1;
        _loc1_.move1 = Class_9.var_222;
        _loc1_.var_13 = 1;
        _loc1_.moveSelected = 1;
        _loc1_.shiny = 1;
        _loc1_.var_35 = ++this.currentProfile.latestID;
        _loc1_.var_40 = 0;
        this.currentProfile.PokeList.push(_loc1_);
        this.currentProfile.save_Profile();
    }

    @:allow(code) override function back_Pressed() {
        var _loc1_:_Obj = new Class_892(this.currentProfile, my_Parent);
        send_Msg(["change_Screen", _loc1_]);
    }

    function method_152():Array<ASAny> {
        var _loc2_ = false;
        var _loc3_:ASAny = null;
        var _loc4_:ASAny = null;
        var _loc5_ = 0;
        var _loc6_ = false;
        var _loc8_ = 0;
        var _loc9_ = 0;
        var _loc10_ = 0;
        var _loc11_ = 0;
        var _loc12_ = 0;
        var _loc1_:ASAny = [];
        var _loc7_:Int = 1;
        while (_loc7_ <= 3) {

            var data:Map<String, ASAny> = this.var_240.data;

            if (!(_loc4_ = data["p" + _loc7_])) {
                _loc1_.push("");
            }
            else {
                _loc2_ = true;
                _loc3_ = _loc4_.name + "|";
                if (_loc4_.badges) {
                    _loc3_ += _loc4_.badges + "|";
                }
                else {
                    _loc3_ += "0|";
                }
                _loc3_ += _loc4_.money + "|";
                _loc3_ += _loc4_.unlocked + "|";
                _loc3_ += _loc4_.levelAttempted + "|";
                _loc3_ += _loc4_.ver + "|";
                _loc3_ += _loc4_.hmp + "";
                _loc8_ = 1;
                while (_loc8_ <= _loc4_.hmp) {
                    _loc3_ += "|" + _loc4_["pk" + _loc8_ + "_id"] + "|";
                    _loc3_ += _loc4_["pk" + _loc8_ + "_num"] + "|";
                    _loc3_ += _loc4_["pk" + _loc8_ + "_lvl"] + "|";
                    _loc3_ += _loc4_["pk" + _loc8_ + "_exp"] + "|";
                    _loc5_ = _loc4_["pk" + _loc8_ + "_numMoves"];
                    _loc3_ += _loc5_ + "|";
                    if (_loc6_ = _loc4_["pk" + _loc8_ + "_shiny"]) {
                        _loc3_ += "1|";
                    }
                    else {
                        _loc3_ += "0|";
                    }
                    _loc12_ = 1;
                    while (_loc12_ <= _loc5_) {
                        _loc3_ += _loc4_["pk" + _loc8_ + "_m" + _loc12_] + "|";
                        _loc12_++;
                    }
                    _loc3_ += _loc4_["pk" + _loc8_ + "_moveSel"] + "";
                    _loc8_++;
                }
                _loc9_ = _loc4_.numInv;
                _loc3_ += "|" + _loc9_;
                _loc8_ = 1;
                while (_loc8_ <= _loc9_) {
                    _loc3_ += "|" + _loc4_.Inv["Inv" + _loc8_];
                    _loc8_++;
                }
                if (_loc4_.CLevelCompleted) {
                    _loc10_ = _loc4_.CLevelCompleted;
                }
                if (_loc4_.CLevel1CodeUsed) {
                    _loc11_ = _loc4_.CLevel1CodeUsed;
                }
                _loc3_ += "|" + _loc10_;
                _loc3_ += "|" + _loc11_;
                trace(_loc3_);
                _loc1_.push(_loc3_);
            }
            _loc7_++;
        }
        if (!_loc2_) {
            return null;
        }
        return _loc1_;
    }
}

