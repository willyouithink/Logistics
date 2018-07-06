/*! -v1.0 项目描述  By Linyer */
layui.use(["layer"], function () {
    var e = (layui.jquery, layui.layer, [{
            name: "北京",
            value: 21300
        }, {
            name: "天津",
            value: 5816
        }, {
            name: "上海",
            value: 28408
        }, {
            name: "重庆",
            value: 7890
        }, {
            name: "河北",
            value: 7120
        }, {
            name: "河南",
            value: 12406
        }, {
            name: "云南",
            value: 6870
        }, {
            name: "辽宁",
            value: 9845
        }, {
            name: "黑龙江",
            value: 5222
        }, {
            name: "湖南",
            value: 12658
        }, {
            name: "安徽",
            value: 10783
        }, {
            name: "山东",
            value: 16253
        }, {
            name: "新疆",
            value: 3536
        }, {
            name: "江苏",
            value: 31939
        }, {
            name: "浙江",
            value: 33156
        }, {
            name: "江西",
            value: 8684
        }, {
            name: "湖北",
            value: 14803
        }, {
            name: "广西",
            value: 7531
        }, {
            name: "甘肃",
            value: 2880
        }, {
            name: "山西",
            value: 5444
        }, {
            name: "内蒙古",
            value: 37750
        }, {
            name: "陕西",
            value: 7435
        }, {
            name: "吉林",
            value: 40190
        }, {
            name: "福建",
            value: 14269
        }, {
            name: "贵州",
            value: 5106
        }, {
            name: "广东",
            value: 11800
        }, {
            name: "青海",
            value: 60001
        }, {
            name: "西藏",
            value: 36500
        }, {
            name: "四川",
            value: 48894
        }, {
            name: "宁夏",
            value: 10270
        }, {
            name: "海南",
            value: 2149
        }, {
            name: "台湾",
            value: 58888
        }, {
            name: "香港",
            value: 36666
        }, {
            name: "澳门",
            value: 7e3
        }]),
        a = [];
    e.forEach(function (e, t) {
        a.push(e.value)
    }), provinceMaxNum = a.max(), console.log("人数最多的省份" + provinceMaxNum), provinceMaxNum = 1e4 * Math.ceil(provinceMaxNum / 1e4), console.log("人数最多的省份最接近的整万数" + provinceMaxNum);
    var t = echarts.init(document.getElementById("user-form-map"));
    t.setOption({
        title: {
            text: "本站用户来源省份",
            subtext: "",
            left: "center",
            textStyle: {
                fontWeight: "normal"
            }
        },
        tooltip: {
            trigger: "item"
        },
        legend: {
            orient: "vertical",
            left: "left",
            data: ["2016年"]
        },
        visualMap: {
            min: 0,
            max: provinceMaxNum,
            left: "left",
            top: "middle",
            text: ["高", "低"],
            calculable: !0
        },
        toolbox: {
            show: !0,
            orient: "vertical",
            right: "5%",
            top: "center",
            feature: {
                saveAsImage: {}
            }
        },
        series: [{
            name: "本站用户来源的省份",
            type: "map",
            mapType: "china",
            roam: !1,
            label: {
                normal: {
                    show: !0
                },
                emphasis: {
                    show: !0
                }
            },
            data: e
        }]
    });
    var l = e.sorts(sortBy("value")).reverse().splice(0, 10),
        o = [];
    l.forEach(function (e, a) {
        o.push(e.name)
    });
    var n = [];
    l.forEach(function (e, a) {
        n.push(e.value)
    });
    var r = echarts.init(document.getElementById("user-form-pie"));
    r.setOption({
        title: {
            text: "站点用户来源最多的十大省份",
            subtext: "",
            x: "center",
            textStyle: {
                fontWeight: "normal"
            }
        },
        tooltip: {
            trigger: "item",
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: "vertical",
            left: "left",
            top: "middle",
            data: o
        },
        series: [{
            name: "访问来源",
            type: "pie",
            radius: "55%",
            center: ["50%", "60%"],
            data: l,
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: "rgba(0, 0, 0, 0.5)"
                }
            }
        }]
    }), console.log("前十省份名称" + o), console.log("前十省份人数" + n);
    var i = [];
    n.forEach(function (e, a) {
        i.push(e / 2)
    }), console.log("投资用户人数" + i);
    var m = echarts.init(document.getElementById("user-form-line"), "macarons");
    m.setOption({
        title: {
            text: "本站用户增长曲线",
            subtext: "数据是错误的，实际用法一样",
            left: "center",
            textStyle: {
                color: "#333"
            }
        },
        tooltip: {
            trigger: "axis"
        },
        legend: {
            data: ["注册人数", "投资人数"],
            top: 50
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            },
            right: 15,
            top: 20
        },
        grid: {
            top: 100,
            left: 10,
            right: 20,
            bottom: 10,
            containLabel: !0,
            borderWidth: 0
        },
        xAxis: {
            type: "category",
            boundaryGap: !1,
            nameTextStyle: {
                color: "#646464"
            },
            axisLine: {
                lineStyle: {
                    color: "#999999",
                    type: "solid",
                    width: 1
                }
            },
            z: 10,
            data: o
        },
        yAxis: [{
            type: "value",
            name: "注册人数（人）",
            splitNumber: "5",
            nameTextStyle: {
                color: "#646464"
            },
            axisTick: {
                show: !0
            },
            min: 0,
            axisLine: {
                lineStyle: {
                    color: "#999999",
                    width: 1
                }
            }
        }],
        series: [{
            name: "注册人数",
            type: "line",
            symbolSize: 6,
            z: 10,
            smooth: !0,
            data: n,
            itemStyle: {
                normal: {
                    color: "#ff6e6e",
                    borderWidth: 2
                }
            }
        }, {
            name: "投资人数",
            type: "line",
            symbolSize: 6,
            z: 10,
            smooth: !0,
            data: i,
            itemStyle: {
                normal: {
                    color: "#0099cc",
                    borderWidth: 2
                }
            }
        }]
    })
});
var echartBar = echarts.init(document.getElementById("user-form-bar"));
echartBar.setOption({
    title: {
        text: "本站用户增长曲线",
        subtext: "随便放的数据",
        left: "center",
        textStyle: {
            color: "#333"
        }
    },
    tooltip: {
        trigger: "axis"
    },
    toolbox: {
        feature: {
            dataView: {
                show: !0,
                readOnly: !1
            },
            magicType: {
                show: !0,
                type: ["line", "bar"]
            },
            restore: {
                show: !0
            },
            saveAsImage: {
                show: !0
            }
        },
        top: 30,
        right: 15
    },
    grid: {
        top: 100,
        left: 10,
        right: 10,
        bottom: 10,
        containLabel: !0,
        borderWidth: 0
    },
    legend: {
        data: ["蒸发量", "降水量", "平均温度"],
        top: 50
    },
    xAxis: [{
        type: "category",
        data: ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"]
    }],
    yAxis: [{
        type: "value",
        name: "水量",
        min: 0,
        max: 250,
        interval: 50,
        axisLabel: {
            formatter: "{value} ml"
        }
    }, {
        type: "value",
        name: "温度",
        min: 0,
        max: 25,
        interval: 5,
        axisLabel: {
            formatter: "{value} °C"
        }
    }],
    series: [{
        name: "蒸发量",
        type: "bar",
        data: [2, 4.9, 7, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20, 6.4, 3.3]
    }, {
        name: "降水量",
        type: "bar",
        data: [2.6, 5.9, 9, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6, 2.3]
    }, {
        name: "平均温度",
        type: "line",
        yAxisIndex: 1,
        data: [2, 2.2, 3.3, 4.5, 6.3, 10.2, 20.3, 23.4, 23, 16.5, 12, 6.2]
    }]
});