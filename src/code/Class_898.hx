package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.MouseEvent;
import flash.net.URLLoader;
import flash.net.URLLoaderDataFormat;
import flash.net.URLRequest;
import flash.net.URLRequestMethod;
import xyz.jordanplayz158.ptd1.SamURLVariables;

class Class_898 extends _Obj implements Class_3 {

    public static inline final const_25 = "http://www.sndgames.com/php/Poke.php";


    @:allow(code) var gfx_BG:GfxMovieClip;

    var var_127:Class_877;

    @:allow(code) var currentProfile:Class_878;

    @:allow(code) var var_41:URLLoader;

    

    @:allow(code) var var_304:Class_6;

    public function new(param1:Class_878, param2:_Obj) {
        super(param2);
        this.currentProfile = param1;
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
        this.gfx_BG = new Gfx_Screen_Mystery_Gift();
        this.gfx_BG.back_butt.buttonMode = true;
        addChild(this.gfx_BG);
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
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
        if (this.gfx_BG.enter_butt && this.gfx_BG.enter_butt.contains(_loc2_)) {
            this.method_331();
            return true;
        }
        if (this.gfx_BG.find_daily_butt && this.gfx_BG.find_daily_butt.contains(_loc2_)) {
            flash.Lib.getURL(new URLRequest("http://samdangames.blogspot.com/p/mystery-gift.html"));
            return true;
        }
        if (this.gfx_BG.find_butt && this.gfx_BG.find_butt.contains(_loc2_)) {
            flash.Lib.getURL(new URLRequest("http://samdangames.blogspot.com/p/mystery-gift.html"));
            return true;
        }
        if (this.gfx_BG.shiny_butt && this.gfx_BG.shiny_butt.contains(_loc2_)) {
            this.method_228();
            return true;
        }
        return false;
    }

    @:allow(code) function method_228() {
        if (!ASCompat.stringAsBool(this.myCode)) {
            this.gfx_BG.gotoAndStop(1);
            return;
        }
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = const_25 + "?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "use";
        _loc3_.Code = this.myCode;
        _loc3_.Email = this.currentProfile.var_553;
        _loc3_.Pass = this.currentProfile.var_585;
        _loc3_.ver = Class_878.const_184;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.gfx_BG.gotoAndStop("wait");
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_331() {
        this.myCode = this.gfx_BG.myCode.text;
        if (!ASCompat.stringAsBool(this.myCode)) {
            return;
        }
        this.myCode = StringTools.replace(this.myCode, " ", "");
        if (this.myCode == "5231") {
            this.gfx_BG.gotoAndStop("error_recognized");
            return;
        }
        this.myCode = this.myCode.toLowerCase();
        if (this.myCode == "sndgames") {
            this.gfx_BG.gotoAndStop("PokeDone");
            this.method_384();
            return;
        }
        this.gfx_BG.gotoAndStop("error_recognized");
    }

    @:allow(code) function method_17(param1:Event) {
        this.var_41.removeEventListener(Event.COMPLETE, this.method_17);
        this.var_41.removeEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        var target:URLLoader = param1.target;
        var _loc2_:ASObject = target.data;
        this.var_41 = null;
        if (_loc2_.Result == "Failure") {
            if (_loc2_.Reason == "DatabaseConnection") {
                this.gfx_BG.gotoAndStop("error_database");
            }
            else if (_loc2_.Reason == "CodeUsed") {
                this.gfx_BG.gotoAndStop("error_used");
            }
            else if (_loc2_.Reason == "CodeNotRecognized") {
                this.gfx_BG.gotoAndStop("error_recognized");
            }
            else if (_loc2_.Reason == "MissingCode") {
                this.gfx_BG.gotoAndStop("error_missing");
            }
        }
        else if (_loc2_.Result == "Success") {
            if (_loc2_.Reason == "UseCode") {
                this.gfx_BG.gotoAndStop("shinyDone");
                this.method_328();
            }
            else if (_loc2_.Type == "1") {
                this.gfx_BG.gotoAndStop("shinyCode");
                this.method_291();
            }
            else if (_loc2_.Type == "2") {
                this.gfx_BG.gotoAndStop("mewCode");
            }
            else if (_loc2_.Type == "3") {
                this.gfx_BG.gotoAndStop("magiCode");
            }
            else if (_loc2_.Type == "4") {
                this.gfx_BG.gotoAndStop("pikaCode");
            }
            else if (_loc2_.Type == "5") {
                this.gfx_BG.gotoAndStop("pidgeyCode");
            }
            else if (_loc2_.Type == "6") {
                this.gfx_BG.gotoAndStop("error_recognized");
                return;
            }
        }
    }

    @:allow(code) function method_384() {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_187;
        Class_13.method_2(_loc1_);
        _loc1_.level = 1;
        _loc1_.move1 = Class_9.var_46;
        _loc1_.move2 = Class_9.var_452;
        _loc1_.var_13 = 2;
        _loc1_.moveSelected = 1;
        _loc1_.shiny = 0;
        _loc1_.saveInfo.var_154 = 210;
        _loc1_.var_35 = ++this.currentProfile.latestID;
        _loc1_.var_40 = 0;
        _loc1_.var_179 = _loc1_.level;
        _loc1_.var_175 = _loc1_.num;
        _loc1_.val = new Class_11();
        _loc1_.val.reset(_loc1_);
        _loc1_.saveInfo.var_212 = true;
        this.currentProfile.PokeList.push(_loc1_);
    }

    @:allow(code) function method_436() {
        if (this.currentProfile.extraInfo == null) {
            this.currentProfile.extraInfo = [];
        }
        if (!this.currentProfile.haveThisExtraInfo("16")) {
            this.currentProfile.extraInfo.push("16");
        }
    }

    @:allow(code) function method_328() {
        this.var_304.shiny = 1;
        this.var_304.val.method_387(1, 2);
        this.gfx_BG.postShiny.gotoAndStop("s" + this.var_304.num);
    }

    @:allow(code) function method_291() {
        var _loc1_ = 0;
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < this.currentProfile.PokeList.length) {
            _loc2_ = this.currentProfile.PokeList[_loc3_];
            if (!_loc2_.shiny) {
                if (_loc2_.num == Class_13.const_60) {
                    this.var_304 = _loc2_;
                    _loc1_ = 0;
                    break;
                }
                if (_loc2_.num == Class_13.const_95) {
                    this.var_304 = _loc2_;
                    _loc1_ = 0;
                    break;
                }
                if (_loc2_.num == Class_13.const_69) {
                    this.var_304 = _loc2_;
                    _loc1_ = 0;
                    break;
                }
                if (_loc2_.num == Class_13.const_46) {
                    this.var_304 = _loc2_;
                    _loc1_ = 0;
                    break;
                }
                if (_loc2_.num == Class_13.const_36) {
                    this.var_304 = _loc2_;
                    _loc1_ = 0;
                    break;
                }
                if (_loc2_.num == Class_13.const_57) {
                    this.var_304 = _loc2_;
                    _loc1_ = 0;
                    break;
                }
                if (_loc2_.num == Class_13.const_75) {
                    this.var_304 = _loc2_;
                    _loc1_ = 0;
                    break;
                }
                if (_loc2_.num == Class_13.const_112) {
                    this.var_304 = _loc2_;
                    _loc1_ = 0;
                    break;
                }
                if (_loc2_.num == Class_13.const_66) {
                    this.var_304 = _loc2_;
                    _loc1_ = 0;
                    break;
                }
            }
            _loc3_++;
        }
        if (_loc1_ == 0) {
            this.gfx_BG.gotoAndStop(1);
            return;
        }
        this.gfx_BG.preShiny.gotoAndStop(_loc1_);
        this.gfx_BG.postShiny.gotoAndStop("s" + _loc1_);
    }

    @:allow(code) function method_16(param1:IOErrorEvent) {
        this.var_41.removeEventListener(Event.COMPLETE, this.method_17);
        this.var_41.removeEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41 = null;
        this.gfx_BG.gotoAndStop(1);
    }

    @:allow(code) override function back_Pressed() {
        var _loc1_:_Obj = new Class_892(this.currentProfile, my_Parent);
        send_Msg(["change_Screen", _loc1_]);
    }
}

