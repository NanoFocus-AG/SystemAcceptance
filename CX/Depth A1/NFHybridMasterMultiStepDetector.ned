<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NFHybridMasterMultiStepDetector">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="3" SourceParameterName="DeltaX" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFMedianHeights">
                <NFParameterSet>
                    <NFParameter Name="HeightRadiusPixel">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WidthRadiusPixel">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="2" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
            <NFEvaluation Name="NFGaussProfile">
                <NFParameterSet>
                    <NFParameter Name="Crop Region">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="CutOff Wavelength [um]">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">80</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Direction [0=x;1=y]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use FFT">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use Low-Pass">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="4" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="6" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="7" SourcePort="2" DestinationPort="0" />
                <NextTopo NextIndex="10" SourcePort="0" DestinationPort="2" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="2" SourceParameterName="Result" DestinationParameterName="CutOff Wavelength [um]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="4" Description="">
            <NFEvaluation Name="NFGradient">
                <NFParameterSet>
                    <NFParameter Name="PositiveAngleOnly">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ProjectionAngle">
                        <NFVariant Type="float" Unit="°" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="10" SourcePort="0" DestinationPort="1" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="6" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="9" SourceParameterName="NumberPointsX" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="7" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="9" SourceParameterName="NumberPointsX" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="9" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="10" SourceParameterName="Result" DestinationParameterName="Crop Size" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="10" Description="">
            <NFEvaluation Name="NFHybridMaster_MultiStepProfile">
                <NFParameterSet>
                    <NFParameter Name="Border to Distance">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="CompleteAnalyze">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Crop Size">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Gnuplot Path">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">C:\ProgramData\NanoFocus\Temp\</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Grad Peak Width">
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="1" UnitExponent="1">50</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Max No. Steps">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">100</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Max PNG-Files">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Minimum Slope Threshold">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.10000000000000000555</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Nominal Height">
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="PNG Filename">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">HMresultImage</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Step Steepness">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Step Width">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">100</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Steps from Gradient">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Trapeze Approx.">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use Gnuplot">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use Inverse Gnuplot">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="11" Description="">
            <NFEvaluation Name="NFInterpolator">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="1" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="10" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="0" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="11" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="10" EvalPort="0" MapPort="0" />
        </OutputTopoMapping>
        <InputParameterMapping>
            <IOParameterMap EvalIndex="10" EvalParameterName="Border to Distance" MapName="Distance To Border" />
            <IOParameterMap EvalIndex="10" EvalParameterName="CompleteAnalyze" MapName="Full Analyze" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Grad Peak Width" MapName="Gradient Peak Width" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Use Inverse Gnuplot" MapName="Inverse Profile" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Max No. Steps" MapName="Max No. Steps" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Maximum Slope Threshold" MapName="Maximum Slope" />
            <IOParameterMap EvalIndex="1" EvalParameterName="WidthRadiusPixel" MapName="Median Width Radius" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Minimum Slope Threshold" MapName="Minimum Slope" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Nominal Height" MapName="Nominal Height" />
            <IOParameterMap EvalIndex="10" EvalParameterName="PNG Filename" MapName="PNG File" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Step Steepness" MapName="Step Steepness" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Step Width" MapName="Step Width" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Steps from Gradient" MapName="Steps from Gradient" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Trapeze Approx." MapName="Trapeze Approx" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Use Gnuplot" MapName="Use Gnuplot" />
        </InputParameterMapping>
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="10" EvalParameterName="Area" MapName="Area" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Bottom Levels Mean" MapName="Bottom Levels mean" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Distance" MapName="Distance" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Distance to Border" MapName="Distance to Border" />
            <IOParameterMap EvalIndex="10" EvalParameterName="First Step Position" MapName="First Step Pos" />
            <IOParameterMap EvalIndex="10" EvalParameterName="GnuPlot Path" MapName="Gnuplot Path" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Thickness" MapName="Height" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Hmax" MapName="Hmax" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Hmin" MapName="Hmin" />
            <IOParameterMap EvalIndex="10" EvalParameterName="No. Rectangles" MapName="No. Rects" />
            <IOParameterMap EvalIndex="10" EvalParameterName="No. Steps" MapName="No. Steps" />
            <IOParameterMap EvalIndex="10" EvalParameterName="ThicknessMean" MapName="ThicknessMean" />
            <IOParameterMap EvalIndex="10" EvalParameterName="Width" MapName="Width" />
            <IOParameterMap EvalIndex="10" EvalParameterName="WidthMean" MapName="WidthMean" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">12</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2019-03-08 11:40:14</string>
                    <string>2019-03-08 13:12:12</string>
                    <string>2019-07-19 11:46:45</string>
                    <string>2019-07-19 14:15:49</string>
                    <string>2019-08-16 11:02:07</string>
                    <string>2020-12-03 12:54:10</string>
                    <string>2020-12-03 12:54:32</string>
                    <string>2020-12-03 12:55:28</string>
                    <string>2020-12-03 14:39:22</string>
                    <string>2020-12-03 15:30:41</string>
                    <string>2020-12-09 12:55:17</string>
                    <string>2022-02-09 15:52:52</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>C:/build/myEvalPlugins/NFHybridMasterMultiStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterMultiStepDetector.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector.ned</string>
                    <string>E:/code/NFEval_Trunk/NFEvalPlugins/NFComplexFilters/NFHybridMasterMultiStepDetector.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NFHybridMasterMultiStepDetector">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFTopoInfo" PosX="4572" PosY="5012" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFMedianHeights" PosX="4852.06" PosY="5004.57" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFGaussProfile" PosX="4852.55" PosY="5114.71" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="4572.13" PosY="5114.17" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="4">
                <NFAlgoGUI Name="NFGradient" PosX="5039.12" PosY="5114.03" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="6">
                <NFAlgoGUI Name="NFTopoInfo" PosX="4912.2" PosY="5270.56" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="7">
                <NFAlgoGUI Name="NFTopoInfo" PosX="4910.65" PosY="5198.87" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="9">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="5154.09" PosY="5244.29" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="10">
                <NFAlgoGUI Name="NFHybridMaster_MultiStepProfile" PosX="5152.81" PosY="4899.94" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="11">
                <NFAlgoGUI Name="NFInterpolator" PosX="4709.08" PosY="4899.44" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="5766.44" PosY="4901.82" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4574.73" PosY="4898.95" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="Distance To Border">
                <NFAlgoGUI PosX="5124.58" PosY="4099.75" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Full Analyze">
                <NFAlgoGUI PosX="5133.7" PosY="4369.8" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Gradient Peak Width">
                <NFAlgoGUI PosX="5143.08" PosY="4634.58" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Inverse Profile">
                <NFAlgoGUI PosX="5151" PosY="4838" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Max No. Steps">
                <NFAlgoGUI PosX="5147.22" PosY="4705.2" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Maximum Slope">
                <NFAlgoGUI PosX="5143.79" PosY="4561.88" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Median Width Radius">
                <NFAlgoGUI PosX="4852" PosY="4716" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Minimum Slope">
                <NFAlgoGUI PosX="5141.19" PosY="4499.9" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Nominal Height">
                <NFAlgoGUI PosX="5119.63" PosY="3977.11" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="PNG File">
                <NFAlgoGUI PosX="5121.72" PosY="4039.5" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Step Steepness">
                <NFAlgoGUI PosX="5149.54" PosY="4774.52" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Step Width">
                <NFAlgoGUI PosX="5126" PosY="4168.17" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Steps from Gradient">
                <NFAlgoGUI PosX="5130.65" PosY="4307.96" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Trapeze Approx">
                <NFAlgoGUI PosX="5136.83" PosY="4435.04" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Use Gnuplot">
                <NFAlgoGUI PosX="5132.95" PosY="4238.88" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamOutput Name="Area">
                <NFAlgoGUI PosX="5519.18" PosY="5059.45" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Bottom Levels mean">
                <NFAlgoGUI PosX="5546.18" PosY="5423.82" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Distance">
                <NFAlgoGUI PosX="5525.19" PosY="5173.7" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Distance to Border">
                <NFAlgoGUI PosX="5536.42" PosY="5354.81" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="First Step Pos">
                <NFAlgoGUI PosX="5528.2" PosY="5232.48" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Gnuplot Path">
                <NFAlgoGUI PosX="5536.44" PosY="5298.6" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Height">
                <NFAlgoGUI PosX="5515.96" PosY="5008.49" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Hmax">
                <NFAlgoGUI PosX="5556.83" PosY="5703" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Hmin">
                <NFAlgoGUI PosX="5552.59" PosY="5626.69" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="No. Rects">
                <NFAlgoGUI PosX="5514.63" PosY="4954.87" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="No. Steps">
                <NFAlgoGUI PosX="5512.62" PosY="4900.99" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="ThicknessMean">
                <NFAlgoGUI PosX="5552.04" PosY="5561.27" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Width">
                <NFAlgoGUI PosX="5520.92" PosY="5113.8" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="WidthMean">
                <NFAlgoGUI PosX="5547.74" PosY="5492.64" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
