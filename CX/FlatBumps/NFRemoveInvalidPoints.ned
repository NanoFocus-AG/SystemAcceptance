<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NFRemoveInvalidPoints">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="NFEraseAngle">
                <NFParameterSet>
                    <NFParameter Name="Angle">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">80</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Count">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="2" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFVarSub">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">90</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="0" SourceParameterName="Result" DestinationParameterName="Angle" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
            <NFEvaluation Name="NFThresholdIntensity">
                <NFParameterSet>
                    <NFParameter Name="Cut Height and Intensity">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="lower Intensity">
                        <NFVariant Type="short" Unit="" UnitMultiplicator="1" UnitExponent="1">300</NFVariant>
                    </NFParameter>
                    <NFParameter Name="upper Intensity">
                        <NFVariant Type="short" Unit="" UnitMultiplicator="1" UnitExponent="1">32767</NFVariant>
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
        <InputParameterMapping>
            <IOParameterMap EvalIndex="1" EvalParameterName="B" MapName="halber Oeffnungswinkel" />
            <IOParameterMap EvalIndex="2" EvalParameterName="lower Intensity" MapName="min Intensity" />
        </InputParameterMapping>
        <OutputParameterMapping />
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2023-03-15 13:18:50</string>
                    <string>2023-03-15 13:32:33</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NFRemove_invalid_points.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NFRemoveInvalidPoints.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>weimann</string>
                    <string>weimann</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NFRemoveInvalidPoints">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFEraseAngle" PosX="5129" PosY="5073" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFVarSub" PosX="5278" PosY="4994" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFThresholdIntensity" PosX="5213" PosY="5175" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="5062" PosY="5306" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="5104" PosY="4886" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="halber Oeffnungswinkel">
                <NFAlgoGUI PosX="5467" PosY="4928" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="min Intensity">
                <NFAlgoGUI PosX="5499" PosY="5072" />
            </NFComplexAlgoParamInput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
