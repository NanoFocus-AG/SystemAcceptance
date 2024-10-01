<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NFHybridMasterMultiStepDetector2X_inverse">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="NFHybridMasterMultiStepDetector">
                <NFParameterSet>
                    <NFParameter Name="Distance To Border">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Full Analyze">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Gradient Peak Width">
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="1" UnitExponent="1">50</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Inverse Profile">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Max No. Steps">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">100</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Median Width Radius">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Minimum Slope">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.10000000000000000555</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Nominal Height">
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="PNG File">
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
                    <NFParameter Name="Trapeze Approx">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use Gnuplot">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="1" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFHybridMasterMultiStepDetector">
                <NFParameterSet>
                    <NFParameter Name="Distance To Border">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Full Analyze">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Gradient Peak Width">
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="1" UnitExponent="1">50</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Inverse Profile">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Max No. Steps">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">100</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Median Width Radius">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Minimum Slope">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.10000000000000000555</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Nominal Height">
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="PNG File">
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
                    <NFParameter Name="Trapeze Approx">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use Gnuplot">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="14" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="1" UnitExponent="1">50</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="Gradient Peak Width" />
                <NextParameter NextIndex="0" SourceParameterName="OutputParameter" DestinationParameterName="Gradient Peak Width" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="4" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.10000000000000000555</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="Minimum Slope" />
                <NextParameter NextIndex="0" SourceParameterName="OutputParameter" DestinationParameterName="Minimum Slope" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="6" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="Step Steepness" />
                <NextParameter NextIndex="0" SourceParameterName="OutputParameter" DestinationParameterName="Step Steepness" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="7" Description="">
            <NFEvaluation Name="NFLevelPolynom">
                <NFParameterSet>
                    <NFParameter Name="Bins in X-Direction">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Bins in Y-Direction">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Mixed Coeffs [-]">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OrderX [-]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OrderY [-]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Statistical Binning">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="0" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="8" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="Steps from Gradient" />
                <NextParameter NextIndex="0" SourceParameterName="OutputParameter" DestinationParameterName="Steps from Gradient" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="11" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="0" SourceParameterName="OutputParameter" DestinationParameterName="Median Width Radius" />
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="Median Width Radius" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="12" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">100</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="Step Width" />
                <NextParameter NextIndex="0" SourceParameterName="OutputParameter" DestinationParameterName="Step Width" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="13" Description="">
            <NFEvaluation Name="NFMirrorHeights">
                <NFParameterSet>
                    <NFParameter Name="Mirror Height">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Mirror at Maximum">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Mirror at Minimum">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="7" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="14" Description="">
            <NFEvaluation Name="NFMirrorHeights">
                <NFParameterSet>
                    <NFParameter Name="Mirror Height">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Mirror at Maximum">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Mirror at Minimum">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="13" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="14" EvalPort="0" MapPort="0" />
        </OutputTopoMapping>
        <InputParameterMapping>
            <IOParameterMap EvalIndex="1" EvalParameterName="Distance To Border" MapName="Distance To Border" />
            <IOParameterMap EvalIndex="2" EvalParameterName="InputParameter" MapName="Gradient Peak Width" />
            <IOParameterMap EvalIndex="7" EvalParameterName="OrderX [-]" MapName="Level Order" />
            <IOParameterMap EvalIndex="11" EvalParameterName="InputParameter" MapName="Median Width Radius" />
            <IOParameterMap EvalIndex="4" EvalParameterName="InputParameter" MapName="Minimum Slope" />
            <IOParameterMap EvalIndex="1" EvalParameterName="Nominal Height" MapName="Nominal Height" />
            <IOParameterMap EvalIndex="1" EvalParameterName="PNG File" MapName="PNG File" />
            <IOParameterMap EvalIndex="6" EvalParameterName="InputParameter" MapName="Step Steepness" />
            <IOParameterMap EvalIndex="12" EvalParameterName="InputParameter" MapName="Step Width" />
            <IOParameterMap EvalIndex="8" EvalParameterName="InputParameter" MapName="Steps from Gradient" />
        </InputParameterMapping>
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="1" EvalParameterName="Area" MapName="Area" />
            <IOParameterMap EvalIndex="1" EvalParameterName="Bottom Levels mean" MapName="Bottom Levels Mean" />
            <IOParameterMap EvalIndex="1" EvalParameterName="Distance" MapName="Distance" />
            <IOParameterMap EvalIndex="1" EvalParameterName="Distance to Border" MapName="Distance to Border" />
            <IOParameterMap EvalIndex="1" EvalParameterName="First Step Pos" MapName="First Step Pos" />
            <IOParameterMap EvalIndex="1" EvalParameterName="Gnuplot Path" MapName="Gnuplot Path" />
            <IOParameterMap EvalIndex="1" EvalParameterName="Height" MapName="Thickness" />
            <IOParameterMap EvalIndex="1" EvalParameterName="ThicknessMean" MapName="ThicknessMean" />
            <IOParameterMap EvalIndex="1" EvalParameterName="Width" MapName="Width" />
            <IOParameterMap EvalIndex="1" EvalParameterName="WidthMean" MapName="WidthMean" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">14</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2019-03-08 08:52:28</string>
                    <string>2019-03-08 13:13:45</string>
                    <string>2019-07-19 11:50:21</string>
                    <string>2019-07-19 14:16:40</string>
                    <string>2019-08-16 11:06:40</string>
                    <string>2020-02-18 15:33:05</string>
                    <string>2020-02-18 15:37:58</string>
                    <string>2020-02-18 15:49:04</string>
                    <string>2020-12-03 12:51:05</string>
                    <string>2020-12-03 13:01:47</string>
                    <string>2020-12-03 15:34:25</string>
                    <string>2020-12-09 12:57:46</string>
                    <string>2020-12-09 13:11:36</string>
                    <string>2020-12-09 13:14:29</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>C:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X_inverse.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X_inverse.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X_inverse.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X_inverse.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X_inverse.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X_inverse.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X_inverse.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X_inverse.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X_inverse.ned</string>
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
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NFHybridMasterMultiStepDetector2X_inverse">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFHybridMasterMultiStepDetector" PosX="5425.82" PosY="5389.62" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFHybridMasterMultiStepDetector" PosX="5711.09" PosY="5390" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5575.85" PosY="5024.53" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="4">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5573.93" PosY="5082.14" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="6">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5570.55" PosY="5138.93" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="7">
                <NFAlgoGUI Name="NFLevelPolynom" PosX="5185.26" PosY="5390.1" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="8">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5568.17" PosY="4964.53" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="11">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5575.26" PosY="4905.17" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="12">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5574.75" PosY="4841.49" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="13">
                <NFAlgoGUI Name="NFMirrorHeights" PosX="5009" PosY="5390" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="14">
                <NFAlgoGUI Name="NFMirrorHeights" PosX="5931.98" PosY="5385.54" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="6143" PosY="5384.63" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4885.73" PosY="5389.47" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="Distance To Border">
                <NFAlgoGUI PosX="5779" PosY="5304" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Gradient Peak Width">
                <NFAlgoGUI PosX="5310.88" PosY="5024.16" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Level Order">
                <NFAlgoGUI PosX="5186" PosY="5292.4" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Median Width Radius">
                <NFAlgoGUI PosX="5309.59" PosY="4903.89" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Minimum Slope">
                <NFAlgoGUI PosX="5311.05" PosY="5082.42" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Nominal Height">
                <NFAlgoGUI PosX="5823" PosY="5250" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="PNG File">
                <NFAlgoGUI PosX="5869" PosY="5193" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Step Steepness">
                <NFAlgoGUI PosX="5317.99" PosY="5138.7" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Step Width">
                <NFAlgoGUI PosX="5309.66" PosY="4841.17" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Steps from Gradient">
                <NFAlgoGUI PosX="5310.96" PosY="4964.14" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamOutput Name="Area">
                <NFAlgoGUI PosX="5709.18" PosY="5480.18" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Bottom Levels Mean">
                <NFAlgoGUI PosX="5716.49" PosY="6089.69" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Distance">
                <NFAlgoGUI PosX="5714.25" PosY="5743.44" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Distance to Border">
                <NFAlgoGUI PosX="5715.2" PosY="5831.16" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="First Step Pos">
                <NFAlgoGUI PosX="5716.71" PosY="6001.73" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Gnuplot Path">
                <NFAlgoGUI PosX="5713.01" PosY="5918.58" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Thickness">
                <NFAlgoGUI PosX="5713.35" PosY="5566.53" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="ThicknessMean">
                <NFAlgoGUI PosX="5718.91" PosY="6244.01" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Width">
                <NFAlgoGUI PosX="5710.77" PosY="5657.45" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="WidthMean">
                <NFAlgoGUI PosX="5719.46" PosY="6164.51" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
