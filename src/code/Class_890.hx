package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import openfl.events.Event;
import openfl.events.IOErrorEvent;
import openfl.events.MouseEvent;
import openfl.net.SharedObject;
import openfl.net.URLLoader;
import openfl.net.URLLoaderDataFormat;
import openfl.net.URLRequest;
import openfl.net.URLRequestMethod;
import openfl.errors.Error;

class Class_890 extends _Obj implements Class_3 {

    public static inline final const_199 = "http://www.sndgames.com/php/newPoke8.php";


    @:allow(code) var gfx_BG:GfxMovieClip;

    var var_127:Class_877;

    var var_41:URLLoader;

    var onlineProfile:ASObject;

    var var_240:SharedObject;

    var var_378:Array<ASAny>;

    var email:String;

    var pass:String;

    var var_627:String;

    public function new(param1:_Obj) {
        super(param1);
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
        this.gfx_BG = this.get_BG();
        addChild(this.gfx_BG);
        this.var_240 = SharedObject.getLocal("PokeTD");
        if (this.var_240.data.onlineProfile) {
            this.email = this.var_240.data.onlineProfile.email;
            this.pass = this.var_240.data.onlineProfile.pass;
            this.method_121();
        }
    }

    @:allow(code) override function get_BG():GfxMovieClip {
        return new Gfx_Screen_Profile_Page();
    }

    @:allow(code) function method_286() {
        this.email = this.gfx_BG.email_input.text;
        this.pass = this.gfx_BG.pass_input.text;
        if (!ASCompat.stringAsBool(this.email) || !ASCompat.stringAsBool(this.pass)) {
            return;
        }
        this.var_240.data.onlineProfile = new ASObject();
        this.var_240.data.onlineProfile.email = this.email;
        this.var_240.data.onlineProfile.pass = this.pass;
        this.var_240.flush();
        this.method_121();
    }

    @:allow(code) function method_341() {
        this.email = this.gfx_BG.email_input.text;
        this.pass = this.gfx_BG.pass_input.text;
        if (!ASCompat.stringAsBool(this.email) || !ASCompat.stringAsBool(this.pass)) {
            return;
        }
        this.var_240.data.onlineProfile = new ASObject();
        this.var_240.data.onlineProfile.email = this.email;
        this.var_240.data.onlineProfile.pass = this.pass;
        this.var_240.flush();
        this.method_256();
    }

    @:allow(code) function method_256() {
        this.gfx_BG.gotoAndStop("profile_get");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = const_199 + "?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "createAccount";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc3_.ver = Class_878.const_184;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.TEXT;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_121() {
        this.gfx_BG.gotoAndStop("profile_get");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = const_199 + "?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "loadAccount";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc3_.ver = Class_878.const_184;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.TEXT;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        var responce:String = null;
        var responseData:SamURLVariables = null;
        var val:Class_18 = null;
        var myVal:String = null;
        var profileScreen:Class_891 = null;
        var e = param1;
        if (ASCompat.stringAsBool(this.var_627)) {
            responce = this.var_627;
            this.var_627 = null;
            try {
                responseData = new URLVariables(responce);
                this.var_41 = null;
            }
            catch (e:Error) {
                gfx_BG.gotoAndStop("error_internet");
                return false;
            }
            if (responseData.Result == "Failure") {
                if (responseData.Reason == "DatabaseConnection") {
                    this.gfx_BG.gotoAndStop("error_database");
                }
                else if (responseData.Reason == "oldVersion") {
                    this.gfx_BG.gotoAndStop("error_version");
                }
                else if (responseData.Reason == "NotFound") {
                    this.gfx_BG.gotoAndStop("error_match");
                    this.var_240.data.onlineProfile = null;
                    this.var_240.flush();
                }
                else if (responseData.Reason == "taken") {
                    this.var_240.data.onlineProfile = null;
                    this.var_240.flush();
                    this.gfx_BG.gotoAndStop("error_taken");
                }
                else if (responseData.Reason == "Maintenance") {
                    this.gfx_BG.gotoAndStop("error_Maintenance");
                }
            }
            else if (responseData.Result == "Success") {
                if (responseData.Reason == "LoggedIn") {
                    this.var_240.data.timePlayed1 = null;
                    this.var_240.data.timePlayed2 = null;
                    this.var_240.data.timePlayed3 = null;
                    this.var_240.flush();
                    val = new Class_18();
                    myVal = val.method_137(responseData.CurrentSave, responseData.TrainerID);
                    if (myVal == responseData.ProfileID) {
                        profileScreen = new Class_891(my_Parent, responseData);
                        profileScreen.email = this.email;
                        profileScreen.pass = this.pass;
                        send_Msg(["change_Screen", profileScreen]);
                    }
                    else {
                        this.gfx_BG.gotoAndStop("error_hacking");
                    }
                }
            }
        }
        return true;
    }

    @:allow(code) function method_17(param1:Event) {
        this.var_41.removeEventListener(Event.COMPLETE, this.method_17);
        this.var_41.removeEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.gfx_BG.gotoAndStop("got_responce");
        var data:URLLoader = param1.target;
        this.var_627 = data.data;
    }

    @:allow(code) function method_16(param1:IOErrorEvent) {
        this.var_41.removeEventListener(Event.COMPLETE, this.method_17);
        this.var_41.removeEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41 = null;
        this.gfx_BG.gotoAndStop("error_internet");
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc3_:ASAny = null;
        if (this.var_127 != null) {
            return this.var_127.mouse_Down(param1);
        }
        if (Std.is(param1.target, GfxMovieClip)) {
            _loc3_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
            if (!_loc3_) {
                return false;
            }
            if (this.gfx_BG.back_butt && this.gfx_BG.back_butt.contains(_loc3_)) {
                this.back_Pressed();
                return true;
            }
            if (this.gfx_BG.create_butt && this.gfx_BG.create_butt.contains(_loc3_)) {
                this.gfx_BG.gotoAndStop("create_Account");
                return true;
            }
            if (this.gfx_BG.log_in_butt && this.gfx_BG.log_in_butt.contains(_loc3_)) {
                this.gfx_BG.gotoAndStop("log_In_Account");
                return true;
            }
            if (this.gfx_BG.password_butt && this.gfx_BG.password_butt.contains(_loc3_)) {
                Lib.getURL(new URLRequest("http://www.snd-storage.com/games/ptd/password.php"));
                return true;
            }
            if (this.gfx_BG.log_in_actual_butt && this.gfx_BG.log_in_actual_butt.contains(_loc3_)) {
                this.method_286();
                return true;
            }
            if (this.gfx_BG.create_actual_butt && this.gfx_BG.create_actual_butt.contains(_loc3_)) {
                this.method_341();
                return true;
            }
        }
        return false;
    }

    @:allow(code) override function back_Pressed() {
        var _loc1_:_Obj = new Class_876(my_Parent);
        send_Msg(["change_Screen", _loc1_]);
    }
}

