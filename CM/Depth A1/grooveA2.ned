<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="grooveA2">
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="grooveFindCenter">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="2" SourceParameterName="grooveWidth" DestinationParameterName="A" />
                <NextParameter NextIndex="6" SourceParameterName="grooveWidth" DestinationParameterName="A" />
                <NextParameter NextIndex="8" SourceParameterName="grooveCenterX" DestinationParameterName="A" />
                <NextParameter NextIndex="17" SourceParameterName="grooveCenterX" DestinationParameterName="A" />
                <NextParameter NextIndex="27" SourceParameterName="groove tilt" DestinationParameterName="RotationAngle" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
                    </NFParameter>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="17" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="18" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="13" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="9" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="4" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="15" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes>
                <NextParameter NextIndex="7" SourceParameterName="NumberPointsY" DestinationParameterName="SizeY [Pixel]" />
                <NextParameter NextIndex="16" SourceParameterName="NumberPointsY" DestinationParameterName="SizeY [Pixel]" />
                <NextParameter NextIndex="29" SourceParameterName="NumberPointsY" DestinationParameterName="A" />
                <NextParameter NextIndex="31" SourceParameterName="NumberPointsY" DestinationParameterName="A" />
                <NextParameter NextIndex="28" SourceParameterName="NumberPointsX" DestinationParameterName="SizeX [Pixel]" />
                <NextParameter NextIndex="34" SourceParameterName="NumberPointsX" DestinationParameterName="SizeX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="4" Description="">
            <NFEvaluation Name="NFFrameTopoBorder">
                <NFParameterSet>
                    <NFParameter Name="Use mask for frame">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Frame size in Pixel">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">5</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="7" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="6" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                    <NFParameter Name="A">
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
        <NFComplexEvalNode Index="7" Description="">
            <NFEvaluation Name="NFRoiMask">
                <NFParameterSet>
                    <NFParameter Name="OffsetX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OffsetY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Invert Mask">
                        <NFVariant Type="bool">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="14" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="8" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
                <NFParameterSet>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="9" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="9" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
                <NFParameterSet>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="7" SourceParameterName="Result" DestinationParameterName="OffsetX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="13" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
                <NFParameterSet>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">5</NFVariant>
                    </NFParameter>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="7" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="14" Description="">
            <NFEvaluation Name="NFRobustPlaneFit">
                <NFParameterSet>
                    <NFParameter Name="MaximumNumberOfIterations">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Order">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Epsilon">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.001</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WeightLimitFactor">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">4</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="15" SourcePort="1" DestinationPort="1" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="15" Description="">
            <NFEvaluation Name="NFHeightSub">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="16" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="34" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="16" Description="">
            <NFEvaluation Name="NFRoiMask">
                <NFParameterSet>
                    <NFParameter Name="OffsetX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OffsetY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Invert Mask">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="21" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="22" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="17" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
                <NFParameterSet>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="16" SourceParameterName="Result" DestinationParameterName="OffsetX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="18" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
                <NFParameterSet>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="16" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="21" Description="">
            <NFEvaluation Name="NFRobustLevelLineWise">
                <NFParameterSet>
                    <NFParameter Name="UseXDirection">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="LevelOrder">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WeightLimitFactor">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">4</NFVariant>
                    </NFParameter>
                    <NFParameter Name="NumberOfIterations">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Epsilon">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.001</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="22" SourcePort="0" DestinationPort="1" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="22" Description="">
            <NFEvaluation Name="NFHeightSub">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="28" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="24" Description="">
            <NFEvaluation Name="NFProfileSeriesStatistics">
                <NFParameterSet>
                    <NFParameter Name="Mean value: Aritmethic(0), Robust(1)">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="26" Description="">
            <NFEvaluation Name="NFProfileSeriesStatistics">
                <NFParameterSet>
                    <NFParameter Name="Mean value: Aritmethic(0), Robust(1)">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="27" Description="">
            <NFEvaluation Name="NFRotate">
                <NFParameterSet>
                    <NFParameter Name="RotationAngle">
                        <NFVariant Type="float" Unit="°" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ExtendedRegion">
                        <NFVariant Type="bool">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="3" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="28" Description="">
            <NFEvaluation Name="NFRoiMask">
                <NFParameterSet>
                    <NFParameter Name="OffsetX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OffsetY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Invert Mask">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="24" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="29" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="33" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="28" SourceParameterName="Result" DestinationParameterName="OffsetY [Pixel]" />
                <NextParameter NextIndex="34" SourceParameterName="Result" DestinationParameterName="OffsetY [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="31" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
                <NFParameterSet>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="28" SourceParameterName="Result" DestinationParameterName="SizeY [Pixel]" />
                <NextParameter NextIndex="34" SourceParameterName="Result" DestinationParameterName="SizeY [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="33" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
                <NFParameterSet>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="31" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="34" Description="">
            <NFEvaluation Name="NFRoiMask">
                <NFParameterSet>
                    <NFParameter Name="OffsetX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OffsetY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Invert Mask">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="26" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="1" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="27" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="34" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="28" EvalPort="0" MapPort="1" />
        </OutputTopoMapping>
        <InputParameterMapping />
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="26" EvalParameterName="mean(max-min)" MapName="Pt" />
            <IOParameterMap EvalIndex="24" EvalParameterName="mean(max-min)" MapName="d" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">17</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]">
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA2.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]">
                    <string>2015-08-14 14:43:51</string>
                    <string>2015-08-14 14:43:59</string>
                    <string>2015-08-14 14:48:30</string>
                    <string>2015-08-14 14:50:19</string>
                    <string>2015-08-14 15:01:55</string>
                    <string>2015-08-14 15:04:47</string>
                    <string>2015-08-14 15:05:02</string>
                    <string>2015-08-14 15:17:27</string>
                    <string>2015-08-14 15:17:58</string>
                    <string>2015-08-14 15:19:03</string>
                    <string>2015-08-14 15:20:24</string>
                    <string>2015-08-14 15:48:14</string>
                    <string>2015-08-14 15:51:13</string>
                    <string>2015-08-17 09:39:56</string>
                    <string>2015-11-04 08:31:23</string>
                    <string>2015-11-04 08:43:35</string>
                    <string>2015-11-04 08:45:57</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]">
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
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="grooveA2">
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="grooveFindCenter" PosX="5154.33" PosY="5078" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="5936" PosY="5079" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFTopoInfo" PosX="4866" PosY="5235.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="4">
                <NFAlgoGUI Name="NFFrameTopoBorder" PosX="4867" PosY="5444.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="6">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="5368" PosY="5235" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="7">
                <NFAlgoGUI Name="NFRoiMask" PosX="5378" PosY="5442" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="8">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="5154" PosY="5236" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="9">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="5379" PosY="5339" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="13">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="5649" PosY="5442" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="14">
                <NFAlgoGUI Name="NFRobustPlaneFit" PosX="5377" PosY="5596" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="15">
                <NFAlgoGUI Name="NFHeightSub" PosX="4750" PosY="5597" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="16">
                <NFAlgoGUI Name="NFRoiMask" PosX="4750" PosY="4922" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="17">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="5589" PosY="4984" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="18">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="5931" PosY="4922" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="21">
                <NFAlgoGUI Name="NFRobustLevelLineWise" PosX="4980.39" PosY="4793.84" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="22">
                <NFAlgoGUI Name="NFHeightSub" PosX="4751" PosY="4725" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="24">
                <NFAlgoGUI Name="NFProfileSeriesStatistics" PosX="4464.67" PosY="4680.18" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="26">
                <NFAlgoGUI Name="NFProfileSeriesStatistics" PosX="4749" PosY="5714" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="27">
                <NFAlgoGUI Name="NFRotate" PosX="4865.33" PosY="5160" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="28">
                <NFAlgoGUI Name="NFRoiMask" PosX="4492.88" PosY="4921.72" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="29">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="4473.05" PosY="5235.29" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="31">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="4363.98" PosY="5050.62" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="33">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="4363.98" PosY="5157.21" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="34">
                <NFAlgoGUI Name="NFRoiMask" PosX="4386.29" PosY="5745.93" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="4296.92" PosY="5846.4" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="1">
                <NFAlgoGUI PosX="4316.48" PosY="4885.12" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4866" PosY="5078.33" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamOutput Name="Pt">
                <NFAlgoGUI PosX="4750" PosY="5833" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="d">
                <NFAlgoGUI PosX="4389.49" PosY="4599.61" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
