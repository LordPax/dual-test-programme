viewCompter = [[
<svg width="1024" height="612" version="1.1" xmlns="http://www.w3.org/2000/svg">
    <style>
        .test{
            x:33%;
            y:33%;
            width:33%;
            height:33%;
        }
        .text{
            font-size:100px;
            fill:white;
            stroke:none;
            /*font-weight:bold;*/
            /*stroke-width:2px;*/
        }
        .button{
            font-size:40px;
            position:absolute;
            left:412px;
            top:500px;
            padding:5px;
            background-color:#0174DF;
            border:5px solid #045FB4;
            border-radius:5px;
            color:white;
            display:inline;
            text-align:center;
            width:200px;
        }
    </style>
    <!--<rect class="test" stroke="white" fill="transparent" stroke-width="3"/>-->
    <text class="text" x="212" y="306">{{min}} min {{sec}} sec</text>

    <div class="button">btnTest</div>
</svg>
]]

viewGauge = [[
<svg width="1024" height="612" version="1.1" xmlns="http://www.w3.org/2000/svg">
    <style>
        .gauge{
            x:100px;
            width:824px;
            height:50px;
            stroke:#088A08;
            fill:transparent;
            stroke-width:5px;
        }
        .progress{
            x:100px;
            height:50px;
            stroke:#01DF01;
            fill:#01DF01;
            stroke-width:5px;
        }
        .text{
            font-size:40px;
            fill:white;
            stroke:none;
        }
        .g1{
            y:100px;
        }
        .g2{
            y:200px;
        }
        .g3{
            y:300px;
        }
        .button{
            font-size:40px;
            position:absolute;
            left:412px;
            top:500px;
            padding:5px;
            background-color:#0174DF;
            border:5px solid #045FB4;
            border-radius:5px;
            color:white;
            display:inline;
            text-align:center;
            width:200px;
        }
    </style>
    <text x="110" y="90" class="text">Atmo 1</text>
    <rect class="progress g1" width="{{fuel1}}"/>
    <rect class="gauge g1"/>
    <text x="110" y="135" class="text">{{val1}} %</text>

    <text x="110" y="190" class="text">Atmo 2</text>
    <rect class="progress g2" width="{{fuel2}}"/>
    <rect class="gauge g2"/>
    <text x="110" y="235" class="text">{{val2}} %</text>

    <text x="110" y="290" class="text">Space</text>
    <rect class="progress g3" width="{{fuel3}}"/>
    <rect class="gauge g3"/>
    <text x="110" y="335" class="text">{{val3}} %</text>

    <div class="button">btnTest</div>
</svg>
]]

viewDep = [[
<svg width="1024" height="612" version="1.1" xmlns="http://www.w3.org/2000/svg">
    <style>
        .button{
            font-size:40px;
            position:absolute;
            left:412px;
            top:500px;
            padding:5px;
            background-color:#0174DF;
            border:5px solid #045FB4;
            border-radius:5px;
            color:white;
            display:inline;
            text-align:center;
            width:200px;
        }
        .rect{
            x:{{x}}px;
            y:{{y}}px;
            width:100px;
            height:100px;
            stroke:#DF0101;
            fill:#FE2E2E;
            stroke-width:5px;
        }
    </style>
    <rect class="rect" />

    <div class="button">btnTest</div>
</svg>
]]

viewVeille = [[
<svg width="1024" height="612" version="1.1" xmlns="http://www.w3.org/2000/svg">
    <style>
        .img{
            width:512px;
            height:512px
            x:256px;
            y:50px
        }
    </style>
    <image class="img" href="https://cdn.discordapp.com/attachments/597133708922978304/597137058988818432/3dlogo.gif"/>
</svg>
]]