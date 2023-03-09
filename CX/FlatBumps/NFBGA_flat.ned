<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NFBGA_flat">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="NFTopoStatistic">
                <NFParameterSet>
                    <NFParameter Name="Height Quantile Vector">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="HeightQuantile [%]">
                        <NFVariant Type="float" Unit="%" UnitMultiplicator="1" UnitExponent="1">50</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Intensity Quantile Vector">
                        <NFVariant Type="double []" Unit="" UnitMultiplicator="1" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="IntensityQuantile [%]">
                        <NFVariant Type="float" Unit="%" UnitMultiplicator="1" UnitExponent="1">50</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="0" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="1" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="0" EvalPort="0" MapPort="0" />
        </OutputTopoMapping>
        <InputParameterMapping />
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="0" EvalParameterName="Number of valid points" MapName="diam" />
            <IOParameterMap EvalIndex="0" EvalParameterName="Quantile Height" MapName="height" />
            <IOParameterMap EvalIndex="1" EvalParameterName="OffsetX" MapName="x_pos" />
            <IOParameterMap EvalIndex="1" EvalParameterName="OffsetY" MapName="y_pos" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">4</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2022-03-30 16:58:01</string>
                    <string>2022-03-30 17:11:13</string>
                    <string>2022-03-31 09:01:43</string>
                    <string>2022-03-31 09:01:58</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>C:/data/install/trunk/NFEval/vs2017_x64/bin/Plugins/NFBGA_flat.ned</string>
                    <string>C:/data/install/trunk/NFEval/vs2017_x64/bin/Plugins/NFBGA_flat.ned</string>
                    <string>C:/data/install/trunk/NFEval/vs2017_x64/bin/Plugins/NFBGA_flat.ned</string>
                    <string>C:/data/install/trunk/NFEval/vs2017_x64/bin/Plugins/NFBGA_flat.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>leitz</string>
                    <string>leitz</string>
                    <string>leitz</string>
                    <string>leitz</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NFBGA_flat">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFTopoStatistic" PosX="4947" PosY="5053" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFTopoInfo" PosX="5317" PosY="4936" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="5222.96" PosY="5251.12" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="5042" PosY="4907" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamOutput Name="diam">
                <NFAlgoGUI PosX="5040.18" PosY="5272.37" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="height">
                <NFAlgoGUI PosX="4880" PosY="5290" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="x_pos">
                <NFAlgoGUI PosX="5229" PosY="5109" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="y_pos">
                <NFAlgoGUI PosX="5446" PosY="5172" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
