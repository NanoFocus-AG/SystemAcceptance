<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="Lateralnormal">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="NFRotate">
                <NFParameterSet>
                    <NFParameter Name="ExtendedRegion">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="RotationAngle">
                        <NFVariant Type="float" Unit="°" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="4" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="37" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="2" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFRelativThresholdFilter">
                <NFParameterSet>
                    <NFParameter Name="LowerHeightThreshold">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">
                            <Value>0.5</Value>
                            <MetaInfo>
                                <NFParameterSet>
                                    <NFParameter Name="default">
                                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                                    </NFParameter>
                                    <NFParameter Name="max">
                                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                                    </NFParameter>
                                    <NFParameter Name="min">
                                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                                    </NFParameter>
                                </NFParameterSet>
                            </MetaInfo>
                        </NFVariant>
                    </NFParameter>
                    <NFParameter Name="LowerIntensityThreshold">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">
                            <Value>0</Value>
                            <MetaInfo>
                                <NFParameterSet>
                                    <NFParameter Name="default">
                                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                                    </NFParameter>
                                    <NFParameter Name="max">
                                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                                    </NFParameter>
                                    <NFParameter Name="min">
                                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                                    </NFParameter>
                                </NFParameterSet>
                            </MetaInfo>
                        </NFVariant>
                    </NFParameter>
                    <NFParameter Name="UpperHeightThreshold">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">
                            <Value>1</Value>
                            <MetaInfo>
                                <NFParameterSet>
                                    <NFParameter Name="default">
                                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                                    </NFParameter>
                                    <NFParameter Name="max">
                                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                                    </NFParameter>
                                    <NFParameter Name="min">
                                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                                    </NFParameter>
                                </NFParameterSet>
                            </MetaInfo>
                        </NFVariant>
                    </NFParameter>
                    <NFParameter Name="UpperIntensityThreshold">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">
                            <Value>1</Value>
                            <MetaInfo>
                                <NFParameterSet>
                                    <NFParameter Name="default">
                                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                                    </NFParameter>
                                    <NFParameter Name="max">
                                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                                    </NFParameter>
                                    <NFParameter Name="min">
                                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                                    </NFParameter>
                                </NFParameterSet>
                            </MetaInfo>
                        </NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="2" SourcePort="0" DestinationPort="1" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
            <NFEvaluation Name="NFMaskBinaryAND">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="3" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
            <NFEvaluation Name="NFRobustPlaneFit">
                <NFParameterSet>
                    <NFParameter Name="Epsilon">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.0010000000000000000208</NFVariant>
                    </NFParameter>
                    <NFParameter Name="MaximumNumberOfIterations">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
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
                <NextTopo NextIndex="4" SourcePort="1" DestinationPort="1" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="4" Description="">
            <NFEvaluation Name="NFHeightSub">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="5" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="25" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="30" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="41" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="5" Description="">
            <NFEvaluation Name="NFAlgoTopoMinMax">
                <NFParameterSet>
                    <NFParameter Name="IgnoreMaskedPoints">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="13" SourceParameterName="Minimum Height" DestinationParameterName="A" />
                <NextParameter NextIndex="13" SourceParameterName="Maximum Height" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="6" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="28" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="13" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;">
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
                <NextParameter NextIndex="6" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="25" Description="">
            <NFEvaluation Name="NFUnaryHeightFunctor&lt;Functor::NFHeightAddConst&gt;">
                <NFParameterSet>
                    <NFParameter Name="Offset">
                        <NFVariant Type="float" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="32" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="28" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">-1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="25" SourceParameterName="Result" DestinationParameterName="Offset" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="29" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="32" SourceParameterName="Result" DestinationParameterName="BeginY [Pixel]" />
                <NextParameter NextIndex="32" SourceParameterName="Result" DestinationParameterName="EndY [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="30" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="29" SourceParameterName="NumberPointsY" DestinationParameterName="A" />
                <NextParameter NextIndex="32" SourceParameterName="NumberPointsX" DestinationParameterName="EndX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="32" Description="">
            <NFEvaluation Name="NFExtractLine">
                <NFParameterSet>
                    <NFParameter Name="BeginX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="BeginY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="EndX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="EndY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Interpolator">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">NFBiLinear</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Upsampling Factor">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="33" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="34" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="33" Description="">
            <NFEvaluation Name="NFProfFindRoots">
                <NFParameterSet>
                    <NFParameter Name="RangeBegin">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">-1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="RangeEnd">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">-1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UseOffset">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="34" SourceParameterName="RootPositions" DestinationParameterName="Parameter" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="34" Description="">
            <NFEvaluation Name="NFParameterDistances">
                <NFParameterSet>
                    <NFParameter Name="Parameter">
                        <NFVariant Type="double []" Unit="" UnitMultiplicator="1" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="Periodicity">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="2" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="35" SourceParameterName="Mean Distance" DestinationParameterName="A" />
                <NextParameter NextIndex="36" SourceParameterName="Mean Distance" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="35" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="39" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="36" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarVectorElement&gt;">
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
                <NextParameter NextIndex="39" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="37" Description="">
            <NFEvaluation Name="NFRobustPlaneFit">
                <NFParameterSet>
                    <NFParameter Name="Epsilon">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.0010000000000000000208</NFVariant>
                    </NFParameter>
                    <NFParameter Name="MaximumNumberOfIterations">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
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
                <NextTopo NextIndex="1" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="39" Description="">
            <NFEvaluation Name="NFVarAdd">
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
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="40" Description="">
            <NFEvaluation Name="NFVarMul">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">-1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="41" SourceParameterName="Result" DestinationParameterName="RotationAngle" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="41" Description="">
            <NFEvaluation Name="NFRotate">
                <NFParameterSet>
                    <NFParameter Name="ExtendedRegion">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="RotationAngle">
                        <NFVariant Type="float" Unit="°" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="42" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="0" SourceParameterName="OutputParameter" DestinationParameterName="RotationAngle" />
                <NextParameter NextIndex="40" SourceParameterName="OutputParameter" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="0" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="32" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="41" EvalPort="0" MapPort="1" />
        </OutputTopoMapping>
        <InputParameterMapping>
            <IOParameterMap EvalIndex="42" EvalParameterName="InputParameter" MapName="Rotation" />
        </InputParameterMapping>
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="35" EvalParameterName="Result" MapName="Gap Width" />
            <IOParameterMap EvalIndex="36" EvalParameterName="Result" MapName="Lateral Width" />
            <IOParameterMap EvalIndex="39" EvalParameterName="Result" MapName="Sum Gap Lateral Width" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">12</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2015-11-02 15:30:27</string>
                    <string>2015-11-02 15:35:11</string>
                    <string>2015-11-02 15:48:34</string>
                    <string>2015-11-02 15:51:06</string>
                    <string>2015-11-02 16:10:27</string>
                    <string>2015-11-02 16:11:55</string>
                    <string>2015-11-02 16:33:25</string>
                    <string>2015-11-02 16:38:16</string>
                    <string>2015-11-02 16:39:28</string>
                    <string>2015-11-02 17:00:40</string>
                    <string>2022-11-14 06:27:32</string>
                    <string>2022-11-15 09:46:44</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>C:/data/build/NFEval/globalPlugins/Lateralnormal.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/Lateralnormal.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/Lateralnormal.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/Lateralnormal.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/Lateralnormal.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/Lateralnormal.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/Lateralnormal.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/Lateralnormal.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/Lateralnormal.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/Lateralnormal.ned</string>
                    <string>C:/NFEval/globalPlugins/Lateralnormal_V2.ned</string>
                    <string>C:/NFEval/globalPlugins/Lateralnormal_V2.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="Lateralnormal_V2">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFRotate" PosX="5053" PosY="5177" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFRelativThresholdFilter" PosX="5261" PosY="5248.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFMaskBinaryAND" PosX="5260.84" PosY="5325" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFRobustPlaneFit" PosX="5261" PosY="5395.67" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="4">
                <NFAlgoGUI Name="NFHeightSub" PosX="5053" PosY="5396" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="5">
                <NFAlgoGUI Name="NFAlgoTopoMinMax" PosX="4785" PosY="5395" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="6">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="4785" PosY="5606" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="13">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="4784" PosY="5500" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="25">
                <NFAlgoGUI Name="NFUnaryHeightFunctor&lt;Functor::NFHeightAddConst&gt;" PosX="5053" PosY="5704" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="28">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="4785" PosY="5704" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="29">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="5102.83" PosY="5577.56" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="30">
                <NFAlgoGUI Name="NFTopoInfo" PosX="5336.05" PosY="5485.23" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="32">
                <NFAlgoGUI Name="NFExtractLine" PosX="5334.74" PosY="5703.86" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="33">
                <NFAlgoGUI Name="NFProfFindRoots" PosX="5575.54" PosY="5704.38" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="34">
                <NFAlgoGUI Name="NFParameterDistances" PosX="5576.23" PosY="5788.6" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="35">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarVectorElement&gt;" PosX="5270.14" PosY="5787.14" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="36">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarVectorElement&gt;" PosX="5577.49" PosY="5865.36" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="37">
                <NFAlgoGUI Name="NFRobustPlaneFit" PosX="5261.13" PosY="5175.73" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="39">
                <NFAlgoGUI Name="NFVarAdd" PosX="5380.8" PosY="5866.4" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="40">
                <NFAlgoGUI Name="NFVarMul" PosX="4846.96" PosY="5257.65" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="41">
                <NFAlgoGUI Name="NFRotate" PosX="4846.79" PosY="5334.83" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="42">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="4845" PosY="5177" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="5449.23" PosY="5607.97" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="1">
                <NFAlgoGUI PosX="4750" PosY="5334.6" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="5053" PosY="5001" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="Rotation">
                <NFAlgoGUI PosX="4845" PosY="5083" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamOutput Name="Gap Width">
                <NFAlgoGUI PosX="5269.77" PosY="5949.59" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Lateral Width">
                <NFAlgoGUI PosX="5578.23" PosY="5961.66" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Sum Gap Lateral Width">
                <NFAlgoGUI PosX="5380.8" PosY="5997.6" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
