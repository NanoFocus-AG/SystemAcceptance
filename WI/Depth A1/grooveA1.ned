<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="grooveA1">
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
                <NextParameter NextIndex="20" SourceParameterName="grooveWidth" DestinationParameterName="A" />
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
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">22</NFVariant>
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
                <NextTopo NextIndex="22" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="24" SourcePort="0" DestinationPort="0" />
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
        <NFComplexEvalNode Index="20" Description="">
            <NFEvaluation Name="NFVarDiv">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">20</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="13" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="9" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="21" Description="">
            <NFEvaluation Name="NFTopoStatistic">
                <NFParameterSet>
                    <NFParameter Name="HeightQuantile [%]">
                        <NFVariant Type="float" Unit="%" UnitMultiplicator="1" UnitExponent="1">50</NFVariant>
                    </NFParameter>
                    <NFParameter Name="IntensityQuantile [%]">
                        <NFVariant Type="float" Unit="%" UnitMultiplicator="1" UnitExponent="1">50</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Height Quantile Vector">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-006" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="Intensity Quantile Vector">
                        <NFVariant Type="double []" Unit="" UnitMultiplicator="1" UnitExponent="1" />
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="22" Description="">
            <NFEvaluation Name="NFGradient">
                <NFParameterSet>
                    <NFParameter Name="ProjectionAngle">
                        <NFVariant Type="float" Unit="°" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="PositiveAngleOnly">
                        <NFVariant Type="bool">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="23" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="23" Description="">
            <NFEvaluation Name="NFThresholdFilter">
                <NFParameterSet>
                    <NFParameter Name="Cut Height and Intensity">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="LowerHeightThreshold">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-006" UnitExponent="1">-0.01999999955</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UpperHeightThreshold">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-006" UnitExponent="1">0.01999999955</NFVariant>
                    </NFParameter>
                    <NFParameter Name="LowerIntensityThreshold">
                        <NFVariant Type="short" Unit="" UnitMultiplicator="1" UnitExponent="1">-32768</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UpperIntensityThreshold">
                        <NFVariant Type="short" Unit="" UnitMultiplicator="1" UnitExponent="1">32767</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="24" SourcePort="0" DestinationPort="1" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="24" Description="">
            <NFEvaluation Name="NFMaskBinaryAND">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="25" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="25" Description="">
            <NFEvaluation Name="NFErodeMask">
                <NFParameterSet>
                    <NFParameter Name="Radius [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="21" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="1" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="3" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="15" EvalPort="0" MapPort="0" />
        </OutputTopoMapping>
        <InputParameterMapping />
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="21" EvalParameterName="Mean Height" MapName="d" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]">
                    <string>C:/data/build/NFEval/globalPlugins/grooveA1.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA1.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA1.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA1.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA1.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA1.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA1.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA1.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA1.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveA1.ned</string>
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
                    <string>2015-08-14 16:01:08</string>
                    <string>2015-08-14 16:08:28</string>
                    <string>2015-11-04 09:07:45</string>
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
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="grooveA1">
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="grooveFindCenter" PosX="5369" PosY="5078" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="5936" PosY="5079" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFTopoInfo" PosX="4946" PosY="5246" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="4">
                <NFAlgoGUI Name="NFFrameTopoBorder" PosX="4947" PosY="5443" />
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
            <NFComplexAlgoNodeGUI Index="20">
                <NFAlgoGUI Name="NFVarDiv" PosX="5649" PosY="5233" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="21">
                <NFAlgoGUI Name="NFTopoStatistic" PosX="4749.35" PosY="4805.76" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="22">
                <NFAlgoGUI Name="NFGradient" PosX="4442.35" PosY="4981.46" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="23">
                <NFAlgoGUI Name="NFThresholdFilter" PosX="4372.07" PosY="4909.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="24">
                <NFAlgoGUI Name="NFMaskBinaryAND" PosX="4405.36" PosY="4823.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="25">
                <NFAlgoGUI Name="NFErodeMask" PosX="4499.68" PosY="4755.83" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="4639" PosY="5601" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4946" PosY="5077" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamOutput Name="d">
                <NFAlgoGUI PosX="4750.77" PosY="4701.45" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
