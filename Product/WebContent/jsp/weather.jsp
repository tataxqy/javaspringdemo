<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>天气查询</title>
    <link rel="stylesheet" href="./element.css">
    <style>
        #app {
            min-width: 100vw;
            min-height: 100vh;
            background: #F05F40;
        }

        .title {
            font-size: 36px;
            font-weight: 600;
            color: white;
            display: flex;
            justify-content: center;
            padding-top: 30px
        }

        .el-input__suffix {
            opacity: 0 !important;
        }

        .search-panel {
            width: 100vw;
            display: flex;
            justify-content: center;
            margin-top: 120px;
        }


        .result-panel {
            font-size: 26px;
            display: flex;
            flex-direction: column;
            color: white;
            align-items: center;
            margin-top: 100px
        }
    </style>
</head>

<body style="margin:0;padding:0">
    <div id="app">
        <div class="title">天气查询</div>
        <div class="search-panel">
            <el-select v-model="city" filterable placeholder="请选择城市" @change="getWeather">
                <el-option v-for="item in cityList" :key="item.city_id" :label="item.name" :value="item.city_id">
                </el-option>
            </el-select>
        </div>
        <div class="result-panel" v-if="weather">
            <div class="first">{{weather.cityName}} {{weather.tq}} </div>
            <div class="second" style="margin-top:20px">风：{{weather.fx}} {{weather.fl}}</div>
            <div class="third" style="margin-top:20px">温度：{{weather.qw}}</div>
            <div class="four" style="margin-top:20px">湿度：{{weather.sd}}</div>
        </div>
    </div>

    <script src="./vue.js"></script>
    <script src="./element.js"></script>
    <script>
        var app = new Vue({
            el: '#app',
            data: {
                city: '',
                weather: null,
                cityList: []
            },
            methods: {
                getWeather() {
                    fetch('http://api.yytianqi.com/observe?city='+app.city+'&key=6j428o2l2g5ngg0r').then(resp => {
                        resp.json().then(data => {
                            app.weather = data.data
                        })
                    })
                },
                getCityList() {
                    fetch('http://api.yytianqi.com/citylist/id/1').then(resp => {
                        resp.json().then(data => {
                            var arr = []
                            data.list.forEach(item => {
                                if (item.list) {
                                    item.list.forEach(item1 => {
                                        if (item1.list) {
                                            item1.list.forEach(item2 => {
                                                arr.push(item2)
                                            })
                                        } else {
                                            arr.push(item1)
                                        }
                                    })
                                } else {
                                    arr.push(item)
                                }
                            })
                            app.cityList = arr
                        })
                    })
                }
            },

        })
        app.getCityList()
    
    </script>
</body>

</html>