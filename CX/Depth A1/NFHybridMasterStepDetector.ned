<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NFHybridMasterStepDetector">
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
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">25</NFVariant>
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
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">100</NFVariant>
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
                <NextTopo NextIndex="5" SourcePort="0" DestinationPort="1" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="5" Description="">
            <NFEvaluation Name="NFHybridMaster_StepProfile">
                <NFParameterSet>
                    <NFParameter Name="Crop Size">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Grad Peak Width">
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="1" UnitExponent="1">20</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Maximum Slope Threshold">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">5</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Minimum Slope Threshold">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.050000000000000002776</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
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
                <NextParameter NextIndex="5" SourceParameterName="Result" DestinationParameterName="Crop Size" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="10" Description="">
            <NFEvaluation Name="NFInterpolator">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="5" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="1" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="0" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="10" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="5" EvalPort="0" MapPort="0" />
        </OutputTopoMapping>
        <InputParameterMapping>
            <IOParameterMap EvalIndex="5" EvalParameterName="Grad Peak Width" MapName="Gradient Peak Width" />
            <IOParameterMap EvalIndex="5" EvalParameterName="Maximum Slope Threshold" MapName="Maximum Slope" />
            <IOParameterMap EvalIndex="1" EvalParameterName="HeightRadiusPixel" MapName="Median Height Radius" />
            <IOParameterMap EvalIndex="1" EvalParameterName="WidthRadiusPixel" MapName="Median Width Radius" />
            <IOParameterMap EvalIndex="5" EvalParameterName="Minimum Slope Threshold" MapName="Minimum Slope" />
        </InputParameterMapping>
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="5" EvalParameterName="Step Height" MapName="Height" />
            <IOParameterMap EvalIndex="5" EvalParameterName="Index" MapName="Index" />
            <IOParameterMap EvalIndex="5" EvalParameterName="Left Side Level" MapName="Left Side Level" />
            <IOParameterMap EvalIndex="5" EvalParameterName="Right Side Level" MapName="Right Side Level" />
            <IOParameterMap EvalIndex="5" EvalParameterName="Slope" MapName="Slope" />
            <IOParameterMap EvalIndex="5" EvalParameterName="Step Width" MapName="Step Width" />
            <IOParameterMap EvalIndex="5" EvalParameterName="X Left" MapName="X - Left" />
            <IOParameterMap EvalIndex="5" EvalParameterName="X Right" MapName="X - Right" />
            <IOParameterMap EvalIndex="5" EvalParameterName="X Left Index" MapName="X-Left Index" />
            <IOParameterMap EvalIndex="5" EvalParameterName="X Right Index" MapName="X-Right Index" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">31</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2018-11-23 09:23:48</string>
                    <string>2018-11-23 09:26:25</string>
                    <string>2018-11-23 09:34:45</string>
                    <string>2018-11-23 11:51:48</string>
                    <string>2018-11-23 11:55:18</string>
                    <string>2018-11-23 12:17:23</string>
                    <string>2018-11-23 12:21:31</string>
                    <string>2018-11-23 12:28:25</string>
                    <string>2018-11-26 09:47:13</string>
                    <string>2018-11-26 09:50:19</string>
                    <string>2018-11-26 09:54:01</string>
                    <string>2018-11-26 09:56:25</string>
                    <string>2018-11-26 10:36:49</string>
                    <string>2018-11-26 12:01:20</string>
                    <string>2018-11-26 12:14:29</string>
                    <string>2018-11-26 12:18:50</string>
                    <string>2018-11-26 12:26:53</string>
                    <string>2018-11-26 12:36:35</string>
                    <string>2018-11-26 12:39:40</string>
                    <string>2018-11-26 13:51:24</string>
                    <string>2018-11-26 13:56:58</string>
                    <string>2018-11-26 13:58:58</string>
                    <string>2018-11-26 14:52:09</string>
                    <string>2018-11-26 15:01:59</string>
                    <string>2018-11-26 15:07:52</string>
                    <string>2019-01-09 13:11:09</string>
                    <string>2019-01-14 10:35:30</string>
                    <string>2019-09-26 10:11:17</string>
                    <string>2019-09-26 10:51:03</string>
                    <string>2019-09-26 10:52:19</string>
                    <string>2019-09-26 14:51:30</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterStepDetector.ned</string>
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
        <NFComplexAlgoGUIDescription Version="1" Name="NFHybridMasterStepDetector">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFTopoInfo" PosX="4432.67" PosY="4983.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFMedianHeights" PosX="4738.54" PosY="4989.42" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFGaussProfile" PosX="4737.05" PosY="5069.04" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="4433.13" PosY="5067.17" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="4">
                <NFAlgoGUI Name="NFGradient" PosX="4918.31" PosY="5069.36" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="5">
                <NFAlgoGUI Name="NFHybridMaster_StepProfile" PosX="5088.03" PosY="4898.54" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="6">
                <NFAlgoGUI Name="NFTopoInfo" PosX="4920.79" PosY="5197.99" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="7">
                <NFAlgoGUI Name="NFTopoInfo" PosX="4918.57" PosY="5131.64" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="9">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="5087.43" PosY="5177.23" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="10">
                <NFAlgoGUI Name="NFInterpolator" PosX="4688" PosY="4898" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="5337.61" PosY="4898.89" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4432.85" PosY="4898.31" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="Gradient Peak Width">
                <NFAlgoGUI PosX="5083.95" PosY="4703.19" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Maximum Slope">
                <NFAlgoGUI PosX="5087.33" PosY="4832" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Median Height Radius">
                <NFAlgoGUI PosX="4739.2" PosY="4777.09" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Median Width Radius">
                <NFAlgoGUI PosX="4738.97" PosY="4842.52" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Minimum Slope">
                <NFAlgoGUI PosX="5085.33" PosY="4763.67" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamOutput Name="Height">
                <NFAlgoGUI PosX="5167.67" PosY="4966.38" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Index">
                <NFAlgoGUI PosX="5883.97" PosY="5523.52" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Left Side Level">
                <NFAlgoGUI PosX="5246.66" PosY="5027.76" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Right Side Level">
                <NFAlgoGUI PosX="5323.62" PosY="5088.7" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Slope">
                <NFAlgoGUI PosX="5404.28" PosY="5152.4" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Step Width">
                <NFAlgoGUI PosX="5641.34" PosY="5336.91" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="X - Left">
                <NFAlgoGUI PosX="5484.93" PosY="5214.74" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="X - Right">
                <NFAlgoGUI PosX="5561.65" PosY="5273.12" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="X-Left Index">
                <NFAlgoGUI PosX="5725.93" PosY="5400.67" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="X-Right Index">
                <NFAlgoGUI PosX="5806.88" PosY="5463.67" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
