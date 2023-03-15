<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NFBGABumpnormalfFlatGoldPreprocessing">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="NFRemoveInvalidPoints">
                <NFParameterSet>
                    <NFParameter Name="halber Oeffnungswinkel">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="min Intensity">
                        <NFVariant Type="short" Unit="" UnitMultiplicator="1" UnitExponent="1">300</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="3" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NF_Bumpnormal_crop">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="0" SourcePort="2" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
            <NFEvaluation Name="NFBGA_normal_flat_preprocessing">
                <NFParameterSet>
                    <NFParameter Name="Min blobsize">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">100</NFVariant>
                    </NFParameter>
                    <NFParameter Name="radius erode dilate mask">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="1" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="3" EvalPort="0" MapPort="0" />
        </OutputTopoMapping>
        <InputParameterMapping>
            <IOParameterMap EvalIndex="0" EvalParameterName="halber Oeffnungswinkel" MapName="half angle" />
            <IOParameterMap EvalIndex="0" EvalParameterName="min Intensity" MapName="min Intensity" />
        </InputParameterMapping>
        <OutputParameterMapping />
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2023-03-15 13:37:59</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NFBGABumpnormalfFlatGoldPreprocessing.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>weimann</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NFBGABumpnormalfFlatGoldPreprocessing">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFRemoveInvalidPoints" PosX="5085" PosY="5205" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NF_Bumpnormal_crop" PosX="5098" PosY="5093" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFBGA_normal_flat_preprocessing" PosX="5190" PosY="5405" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="5091" PosY="5552" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="5020" PosY="4878" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="half angle">
                <NFAlgoGUI PosX="5401" PosY="4977" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="min Intensity">
                <NFAlgoGUI PosX="5430" PosY="5117" />
            </NFComplexAlgoParamInput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
