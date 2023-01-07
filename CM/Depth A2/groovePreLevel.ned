<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="groovePreLevel">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="2" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="3" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="5" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="NumberPointsX" DestinationParameterName="A" />
                <NextParameter NextIndex="3" SourceParameterName="NumberPointsY" DestinationParameterName="SizeY [Pixel]" />
                <NextParameter NextIndex="5" SourceParameterName="NumberPointsY" DestinationParameterName="SizeY [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">8</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="2" SourceParameterName="Result" DestinationParameterName="Frame size in Pixel" />
                <NextParameter NextIndex="4" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="3" SourceParameterName="Result" DestinationParameterName="OffsetX [Pixel]" />
                <NextParameter NextIndex="3" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
                <NextParameter NextIndex="5" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
                <NextParameter NextIndex="13" SourceParameterName="Result" DestinationParameterName="Frame size in Pixel" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
            <NFEvaluation Name="NFFrameTopoBorder">
                <NFParameterSet>
                    <NFParameter Name="Use mask for frame">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Frame size in Pixel">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
            <NFEvaluation Name="NFRoiMask">
                <NFParameterSet>
                    <NFParameter Name="OffsetX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OffsetY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Invert Mask">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="11" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="4" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">6</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="5" SourceParameterName="Result" DestinationParameterName="OffsetX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="5" Description="">
            <NFEvaluation Name="NFRoiMask">
                <NFParameterSet>
                    <NFParameter Name="OffsetX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OffsetY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Invert Mask">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="11" SourcePort="0" DestinationPort="1" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="11" Description="">
            <NFEvaluation Name="NFBinaryMaskFunctor&lt;Functor::NFMaskBinaryOR&gt;">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="13" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="12" Description="">
            <NFEvaluation Name="NFRobustPlaneFit">
                <NFParameterSet>
                    <NFParameter Name="Order">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="MaximumNumberOfIterations">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
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
                <NextTopo NextIndex="14" SourcePort="1" DestinationPort="1" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="13" Description="">
            <NFEvaluation Name="NFFrameTopoBorder">
                <NFParameterSet>
                    <NFParameter Name="Use mask for frame">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Frame size in Pixel">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="12" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="14" Description="">
            <NFEvaluation Name="NFHeightSub">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="0" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="14" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="14" EvalPort="0" MapPort="0" />
        </OutputTopoMapping>
        <InputParameterMapping />
        <OutputParameterMapping />
        <sMetaInfo>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]">
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]">
                    <string>2015-07-28 12:22:07</string>
                    <string>2015-07-28 12:30:29</string>
                    <string>2015-07-28 12:36:20</string>
                    <string>2015-07-28 13:34:24</string>
                    <string>2015-07-28 13:41:49</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">5</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]">
                    <string>C:/data/build/NFEval/globalPlugins/groovePreLevel.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/groovePreLevel.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/groovePreLevel.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/groovePreLevel.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/groovePreLevel.ned</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="groovePreLevel">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFTopoInfo" PosX="5076" PosY="5173" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="5261" PosY="5172" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFFrameTopoBorder" PosX="5076" PosY="5333" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFRoiMask" PosX="5259" PosY="5332" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="4">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="5503" PosY="5173" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="5">
                <NFAlgoGUI Name="NFRoiMask" PosX="5503" PosY="5331" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="11">
                <NFAlgoGUI Name="NFBinaryMaskFunctor&lt;Functor::NFMaskBinaryOR&gt;" PosX="5357" PosY="5442" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="12">
                <NFAlgoGUI Name="NFRobustPlaneFit" PosX="5126.42" PosY="5564.31" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="13">
                <NFAlgoGUI Name="NFFrameTopoBorder" PosX="5129.6" PosY="5486.4" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="14">
                <NFAlgoGUI Name="NFHeightSub" PosX="5089.16" PosY="5676.77" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="5366.93" PosY="5676.64" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4945" PosY="5172" />
            </NFComplexAlgoTopoInput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
