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
			font-size:50px;
			fill:white;
			stroke:blue;
			stroke-width:2px;
		}
	</style>
	<rect class="test" stroke="white" fill="transparent" stroke-width="3"/>
	<text class="text" x="512" y="306">{{val}}</text>
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
</svg>
]]