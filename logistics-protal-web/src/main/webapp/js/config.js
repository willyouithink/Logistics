/**
 * Created by 272689 on 2017/5/17.
 */
window.DepponCfg = function () {
	var LoginUrl = 'https://www.deppon.com';//���Ի���
    //var LoginUrl = 'http://owsdev.deppon.com:81';//ָ�򱾵�H5���룬�ٸ��nginxָ���̨������ַ
   // var LoginUrl = 'http://owstest.deppon.com';//���Ի���
   //var LoginUrl = 'http://localhost:8089';//���Ի���

    var depponVersion = '1.0.3';
    var sysCode = "OWS";

    var uuid= function() {
        var s = [];
        var hexDigits = "0123456789ABCDEF";
        for (var i = 0; i < 36; i++) {
            s[i] = hexDigits.substr(Math.floor(Math.random() * 0x10), 1);
        }
        s[14] = "4"; // bits 12-15 of the time_hi_and_version field to 0010
        s[19] = hexDigits.substr((s[19] & 0x3) | 0x8, 1); // bits 6-7 of the clock_seq_hi_and_reserved to 01
        s[8] = s[13] = s[18] = s[23];

        var uuid = s.join("");
        return uuid;
    };
   
//unicodeת��
    var unicode = function(input) {

        var matches = input.match(/[^\x00-\xff]/g);
        if (matches) {
            for (var i = 0; i < matches.length; ++i) {
                input = input.replace(/[^\x00-\xff]/, "\\u" + parseInt(matches[i].charCodeAt(0), 10).toString(16));
            }
        }
        return input;
    };
   
    /*
     * ʱ���תʱ��
     * */
    var dateTimeFormat = function (shijianchuo) {
        if (shijianchuo == 0 || shijianchuo == "") {
            return "";
        }
        var time = new Date(shijianchuo);
        var y = time.getFullYear();
        var m = time.getMonth() + 1;
        var d = time.getDate();
        var h = time.getHours();
        var mm = time.getMinutes();
        var s = time.getSeconds();
        return y + '-' + add0(m) + '-' + add0(d) + ' ' + add0(h) + ':' + add0(mm) + ':' + add0(s);
    }

    var currentDate = function () {
        var date = new Date();
        var seperator1 = "-";
        var seperator2 = ":";
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        }
        var hours = date.getHours();
        if (hours >= 0 && hours <= 9) {
            hours = "0" + hours;
        }

        var minutes = date.getMinutes();
        if (minutes >= 0 && minutes <= 9) {
            minutes = "0" + minutes;
        }

        var seconds = date.getSeconds();
        if (seconds >= 0 && seconds <= 9) {
            seconds = "0" + seconds;
        }

        var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
                + " " + hours + seperator2 + minutes
                + seperator2 + seconds;
        return currentdate;
    }
    /*
     * ʱ���תʱ���ڲ�����
     * */
    var add0 = function (m) {
        return m < 10 ? '0' + m : m;
    }
    var clientHeight = window.screen.height;
    var clientWidth = window.screen.width;

    /*
     * �ж��ַ��Ƿ�Ϊ��
     * */
    var isEmpty = function(str){
        if(str==""||str==null||str==undefined){
            return true;//Ϊ��
        }
        return false;//��Ϊ��
    }
    /*
     *�ж��Ƿ�����ĸ�������
     * */
    var checkRate = function (str) {
        var re = /^[0-9a-zA-Z]*$/g;  //�ж��ַ��Ƿ�Ϊ���ֺ���ĸ���     //�ж������� /^[1-9]+[0-9]*]*$/    
        if (!re.test(str)) {
            return false;
        } else {
            return true;
        }
    }
    /*
     * �ж��ַ����Ƿ���Ӣ��
     * */
    var hasEnglish = function (str) {
        var reg = /^[A-Za-z]+$/;
        if (reg.test(str)) {
            return true
        }
        return false;
    }
    /*
     * ʱ���תʱ��
     * */
    var dateFormat = function (shijianchuo) {
        if (shijianchuo == 0 || shijianchuo == "") {
            return "";
        }
        var time = new Date(shijianchuo);
        var y = time.getFullYear();
        var m = time.getMonth() + 1;
        var d = time.getDate();
       
        return y + '-' + add0(m) + '-' + add0(d);
    }
    /*
     * ʱ���תʱ���ڲ�����
     * */
    var add0 = function (m) {
        return m < 10 ? '0' + m : m;
    }


    var depponCfg = {};
    depponCfg.unicode=unicode;
    depponCfg.depponVersion=depponVersion;
    depponCfg.LoginUrl = LoginUrl;
    depponCfg.uuid=uuid;
    depponCfg.isEmpty = isEmpty;
    depponCfg.dateTimeFormat = dateTimeFormat;
    depponCfg.sysCode = sysCode;
    depponCfg.urlPath = "";
    depponCfg.dateFormat = dateFormat;

    return depponCfg;
}();


var patrn = /^\d*$/;
 
/**
 * У���˵���
 */
window.Deppon_Test_WayBillNo = function(wayBillNo) {
	if (!DepponCfg.isEmpty(wayBillNo) && (patrn.test(wayBillNo))
			&& (wayBillNo.length > 7) && (wayBillNo.length < 15)) {
		return true;
	} else {
		return false;
	}
}
