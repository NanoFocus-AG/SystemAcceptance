<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="FlatBumpNormalV01">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="NF_Bumpnormal_crop">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="1" SourcePort="2" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFThresholdIntensity">
                <NFParameterSet>
                    <NFParameter Name="Cut Height and Intensity">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="lower Intensity">
                        <NFVariant Type="short" Unit="" UnitMultiplicator="1" UnitExponent="1">555</NFVariant>
                    </NFParameter>
                    <NFParameter Name="upper Intensity">
                        <NFVariant Type="short" Unit="" UnitMultiplicator="1" UnitExponent="1">32767</NFVariant>
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
                <NextTopo NextIndex="3" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
            <NFEvaluation Name="NFBGA">
                <NFParameterSet>
                    <NFParameter Name="1) Segmenation Mode">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">manual absolute</NFVariant>
                    </NFParameter>
                    <NFParameter Name="2) LowerHeight (manual mode)">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="3) UpperHeight (manual mode)">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">3.402823466e+38</NFVariant>
                    </NFParameter>
                    <NFParameter Name="4) Ball Dilate Radius [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="5) Plane Erode Radius [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="6) Ball Analysis Algo">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">NFBGA_flat</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Min. Item Size">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">222</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="0" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="2" EvalPort="0" MapPort="0" />
        </OutputTopoMapping>
        <InputParameterMapping />
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="3" EvalParameterName="3) heights" MapName="3) heights" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2023-03-09 10:05:15</string>
                    <string>2023-03-09 10:42:09</string>
                    <string>2023-03-09 10:46:54</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>C:/ProgramData/NanoFocus/SystemAcceptance/CX/FlatBumps/FlatBumpNormalV01.ned</string>
                    <string>C:/data/install/trunk/NFEval/vs2017_x64/bin/Plugins/FlatBumpNormalV01.ned</string>
                    <string>C:/data/install/trunk/NFEval/vs2017_x64/bin/Plugins/FlatBumpNormalV01.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>leitz</string>
                    <string>leitz</string>
                    <string>leitz</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="FlatBumpNormalV01">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NF_Bumpnormal_crop" PosX="4851.42" PosY="5106.41" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFThresholdIntensity" PosX="4861.43" PosY="5213.64" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFRobustPlaneFit" PosX="4869.08" PosY="5317.23" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFBGA" PosX="4865.14" PosY="5442.47" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="5166.21" PosY="5324.18" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4870" PosY="4985" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamOutput Name='&quot;3) heights&quot;'>
                <NFAlgoGUI PosX="4841.49" PosY="5579.85" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
