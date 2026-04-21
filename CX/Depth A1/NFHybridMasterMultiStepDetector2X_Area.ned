<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NFHybridMasterMultiStepDetector2X_Area">
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
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="1" UnitExponent="1">20</NFVariant>
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
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1.1999999999999999556</NFVariant>
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
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="1" UnitExponent="1">20</NFVariant>
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
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1.1999999999999999556</NFVariant>
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
            <NextTopoNodes />
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
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="Median Width Radius" />
                <NextParameter NextIndex="0" SourceParameterName="OutputParameter" DestinationParameterName="Median Width Radius" />
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
            <NFEvaluation Name="NFTopoToProfile">
                <NFParameterSet>
                    <NFParameter Name="DirectionOfReduction">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ReductionType">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
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
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGreater&gt;">
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
                <NextParameter NextIndex="13" SourceParameterName="Result" DestinationParameterName="DirectionOfReduction" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="15" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="14" SourceParameterName="NumberPointsX" DestinationParameterName="A" />
                <NextParameter NextIndex="14" SourceParameterName="NumberPointsY" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="13" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="15" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="1" EvalPort="0" MapPort="0" />
        </OutputTopoMapping>
        <InputParameterMapping>
            <IOParameterMap EvalIndex="1" EvalParameterName="Distance To Border" MapName="Distance To Border" />
            <IOParameterMap EvalIndex="2" EvalParameterName="InputParameter" MapName="Gradient Peak Width" />
            <IOParameterMap EvalIndex="7" EvalParameterName="OrderX [-]" MapName="Level Order" />
            <IOParameterMap EvalIndex="11" EvalParameterName="InputParameter" MapName="Median Width Radius" />
            <IOParameterMap EvalIndex="4" EvalParameterName="InputParameter" MapName="Minimum Slope" />
            <IOParameterMap EvalIndex="1" EvalParameterName="PNG File" MapName="PNG File" />
            <IOParameterMap EvalIndex="6" EvalParameterName="InputParameter" MapName="Step Steepness" />
            <IOParameterMap EvalIndex="12" EvalParameterName="InputParameter" MapName="Step Width" />
            <IOParameterMap EvalIndex="8" EvalParameterName="InputParameter" MapName="Steps from Gradient" />
        </InputParameterMapping>
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="1" EvalParameterName="Area" MapName="Area" />
            <IOParameterMap EvalIndex="1" EvalParameterName="Distance" MapName="Distance" />
            <IOParameterMap EvalIndex="1" EvalParameterName="Distance to Border" MapName="Distance to Border" />
            <IOParameterMap EvalIndex="1" EvalParameterName="First Step Pos" MapName="First Step Pos" />
            <IOParameterMap EvalIndex="1" EvalParameterName="Gnuplot Path" MapName="Gnuplot Path" />
            <IOParameterMap EvalIndex="1" EvalParameterName="Height" MapName="Thickness" />
            <IOParameterMap EvalIndex="1" EvalParameterName="Width" MapName="Width" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2019-03-08 09:10:24</string>
                    <string>2019-03-08 13:14:36</string>
                    <string>2020-12-03 16:35:23</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>C:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X_Aerea.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X_Area.ned</string>
                    <string>E:/build/myEvalPlugins/NFHybridMasterMultiStepDetector2X_Area.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NFHybridMasterMultiStepDetector2X_Area">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFHybridMasterMultiStepDetector" PosX="5425.82" PosY="5389.62" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFHybridMasterMultiStepDetector" PosX="5707.09" PosY="5390" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5708.19" PosY="5116.1" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="4">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5708" PosY="5201.64" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="6">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5704.16" PosY="5269.22" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="7">
                <NFAlgoGUI Name="NFLevelPolynom" PosX="5185.26" PosY="5390.1" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="8">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5703.32" PosY="5035.85" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="11">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5698.91" PosY="4947.1" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="12">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5699.24" PosY="4874.37" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="13">
                <NFAlgoGUI Name="NFTopoToProfile" PosX="5024.98" PosY="5391.84" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="14">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGreater&gt;" PosX="5024.98" PosY="5496.84" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="15">
                <NFAlgoGUI Name="NFTopoInfo" PosX="4882.92" PosY="5498.07" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="6001" PosY="5390" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4883.97" PosY="5393.29" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="Distance To Border">
                <NFAlgoGUI PosX="5865.64" PosY="5318.07" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Gradient Peak Width">
                <NFAlgoGUI PosX="5392.19" PosY="5113.91" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Level Order">
                <NFAlgoGUI PosX="5186" PosY="4982" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Median Height Radius">
                <NFAlgoGUI PosX="5379.51" PosY="4868.03" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Median Width Radius">
                <NFAlgoGUI PosX="5383.35" PosY="4947.26" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Minimum Slope">
                <NFAlgoGUI PosX="5394" PosY="5201" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="PNG File">
                <NFAlgoGUI PosX="5930.65" PosY="5291.63" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Step Steepness">
                <NFAlgoGUI PosX="5393.94" PosY="5270.54" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Step Width">
                <NFAlgoGUI PosX="5381.66" PosY="4871.67" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Steps from Gradient">
                <NFAlgoGUI PosX="5388.62" PosY="5032.37" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamOutput Name="Area">
                <NFAlgoGUI PosX="5710.37" PosY="5483.65" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Distance">
                <NFAlgoGUI PosX="5711.6" PosY="5736.89" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Distance to Border">
                <NFAlgoGUI PosX="5711.1" PosY="5819.72" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="First Step Pos">
                <NFAlgoGUI PosX="5714.06" PosY="5993.99" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Gnuplot Path">
                <NFAlgoGUI PosX="5714.84" PosY="5912.05" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Thickness">
                <NFAlgoGUI PosX="5707.79" PosY="5566.43" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Width">
                <NFAlgoGUI PosX="5710.5" PosY="5649.56" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
