<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="Ebenheit">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="NFRobustPlaneFit">
                <NFParameterSet>
                    <NFParameter Name="Epsilon">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.0010000000000000000208</NFVariant>
                    </NFParameter>
                    <NFParameter Name="MaximumNumberOfIterations">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Order">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WeightLimitFactor">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">4</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="2" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="3" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFRobustPlaneFit">
                <NFParameterSet>
                    <NFParameter Name="Epsilon">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.0010000000000000000208</NFVariant>
                    </NFParameter>
                    <NFParameter Name="MaximumNumberOfIterations">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Order">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WeightLimitFactor">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">4</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="3" SourcePort="0" DestinationPort="1" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
            <NFEvaluation Name="NFRelativThresholdFilter">
                <NFParameterSet>
                    <NFParameter Name="LowerHeightThreshold">
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="0.01" UnitExponent="1">0.010000000000000000208</NFVariant>
                    </NFParameter>
                    <NFParameter Name="LowerIntensityThreshold">
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="0.01" UnitExponent="1">0.010000000000000000208</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UpperHeightThreshold">
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="0.01" UnitExponent="1">0.98999999999999999112</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UpperIntensityThreshold">
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="0.01" UnitExponent="1">0.98999999999999999112</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="9" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes>
                <NextParameter NextIndex="5" SourceParameterName="LowerIntensityThreshold" DestinationParameterName="B" />
                <NextParameter NextIndex="6" SourceParameterName="UpperIntensityThreshold" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
            <NFEvaluation Name="NFHeightSub">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="4" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="4" Description="">
            <NFEvaluation Name="NFRoughSaSqSskSku">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="5" Description="">
            <NFEvaluation Name="NFVarMul">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="7" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="6" Description="">
            <NFEvaluation Name="NFVarMul">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="7" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="7" Description="">
            <NFEvaluation Name="NFVarDiv">
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
                <NextParameter NextIndex="8" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="8" Description="">
            <NFEvaluation Name="NFVarMul">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">100</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="9" Description="">
            <NFEvaluation Name="NFRoughSzSpSv">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="0" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="1" EvalPort="0" MapPort="1" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="2" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="3" EvalPort="0" MapPort="1" />
        </OutputTopoMapping>
        <InputParameterMapping />
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="8" EvalParameterName="Result" MapName="Homogenity" />
            <IOParameterMap EvalIndex="4" EvalParameterName="Sq" MapName="Sq" />
            <IOParameterMap EvalIndex="9" EvalParameterName="Sz" MapName="Sz" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">4</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2022-11-14 07:46:22</string>
                    <string>2022-11-14 07:48:34</string>
                    <string>2022-11-14 08:14:19</string>
                    <string>2022-11-14 08:21:29</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>C:/NFEval/globalPlugins/Ebenheit.ned</string>
                    <string>C:/NFEval/globalPlugins/Ebenheit.ned</string>
                    <string>C:/NFEval/globalPlugins/Ebenheit.ned</string>
                    <string>C:/NFEval/globalPlugins/Ebenheit.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="Ebenheit">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFRobustPlaneFit" PosX="5046.62" PosY="4865.15" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFRobustPlaneFit" PosX="5004" PosY="5078" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFRelativThresholdFilter" PosX="5239.39" PosY="4865.01" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFHeightSub" PosX="5196" PosY="5078" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="4">
                <NFAlgoGUI Name="NFRoughSaSqSskSku" PosX="5386" PosY="5077" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="5">
                <NFAlgoGUI Name="NFVarMul" PosX="5460.05" PosY="4962.34" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="6">
                <NFAlgoGUI Name="NFVarMul" PosX="5442.52" PosY="4865.97" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="7">
                <NFAlgoGUI Name="NFVarDiv" PosX="5620.33" PosY="4866.05" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="8">
                <NFAlgoGUI Name="NFVarMul" PosX="5789.61" PosY="4867.01" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="9">
                <NFAlgoGUI Name="NFRoughSzSpSv" PosX="5238.86" PosY="4763.63" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="5238.39" PosY="5006.93" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="1">
                <NFAlgoGUI PosX="5197.53" PosY="5220.26" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4851.33" PosY="4866.18" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoTopoInput Index="1">
                <NFAlgoGUI PosX="4845" PosY="5078" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamOutput Name="Homogenity">
                <NFAlgoGUI PosX="5790.83" PosY="4952.51" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Sq">
                <NFAlgoGUI PosX="5386" PosY="5187" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Sz">
                <NFAlgoGUI PosX="5433.08" PosY="4760.53" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
