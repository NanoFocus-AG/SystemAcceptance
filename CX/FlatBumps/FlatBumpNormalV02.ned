<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="FlatBumpNormalV02">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="NFBGABumpnormalfFlatGoldPreprocessing">
                <NFParameterSet>
                    <NFParameter Name="half angle">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="min Intensity">
                        <NFVariant Type="short" Unit="" UnitMultiplicator="1" UnitExponent="1">300</NFVariant>
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
                <NextTopo NextIndex="2" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
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
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">55</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
            <NFEvaluation Name="NF_Bumpnormal_crop">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="0" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="3" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="3" EvalPort="2" MapPort="0" />
        </OutputTopoMapping>
        <InputParameterMapping />
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="2" EvalParameterName="3) heights" MapName="3) heights" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2023-03-15 17:18:42</string>
                    <string>2023-03-15 17:27:09</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>C:/data/install/trunk/NFEval/vs2017_x64/bin/Plugins/FlatBumpNormalV02.ned</string>
                    <string>C:/data/install/trunk/NFEval/vs2017_x64/bin/Plugins/FlatBumpNormalV02.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>leitz</string>
                    <string>leitz</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="FlatBumpNormalV02">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFBGABumpnormalfFlatGoldPreprocessing" PosX="4998.17" PosY="4869.54" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFRobustPlaneFit" PosX="4998.97" PosY="4957.17" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFBGA" PosX="4999.78" PosY="5066.51" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NF_Bumpnormal_crop" PosX="4794.77" PosY="4985.31" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="4746.53" PosY="5084.19" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4903.3" PosY="4785.12" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamOutput Name="3) heights">
                <NFAlgoGUI PosX="4910.54" PosY="5144.49" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
