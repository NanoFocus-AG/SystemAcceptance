<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="Abnahme_Rauheit">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="2" SourceParameterName="NumberPointsY" DestinationParameterName="A" />
                <NextParameter NextIndex="3" SourceParameterName="NumberPointsX" DestinationParameterName="SizeX [Pixel]" />
                <NextParameter NextIndex="8" SourceParameterName="NumberPointsX" DestinationParameterName="EndX [Pixel]" />
                <NextParameter NextIndex="9" SourceParameterName="NumberPointsX" DestinationParameterName="EndX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
            <NFEvaluation Name="NFVarSub">
                <NFParameterSet>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">10.00000000000000000000</NFVariant>
                    </NFParameter>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.00000000000000000000</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="3" SourceParameterName="Result" DestinationParameterName="SizeY [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
            <NFEvaluation Name="NFRoiFilter">
                <NFParameterSet>
                    <NFParameter Name="PixelStepY [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OffsetX [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeX [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="PixelStepX [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OffsetY [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">5</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="4" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="5" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="4" Description="">
            <NFEvaluation Name="NF_ISO_16610_61_Filter_Area">
                <NFParameterSet>
                    <NFParameter Name="Grenzwellenlaenge lambda cut off lc_y">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="0.001" UnitExponent="1">0.80000000000000004441</NFVariant>
                    </NFParameter>
                    <NFParameter Name="perform Lowpass [0=Highpass,1=Lowpass]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="filter mode [0=standard,1=only X,2=only Y]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Grenzwellenlaenge lambda cut off lc_x">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="0.001" UnitExponent="1">0.80000000000000004441</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="6" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="8" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="5" Description="">
            <NFEvaluation Name="NF_ISO_16610_61_Filter_Area">
                <NFParameterSet>
                    <NFParameter Name="Grenzwellenlaenge lambda cut off lc_y">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="0.001" UnitExponent="1">0.25000000000000000000</NFVariant>
                    </NFParameter>
                    <NFParameter Name="perform Lowpass [0=Highpass,1=Lowpass]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="filter mode [0=standard,1=only X,2=only Y]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Grenzwellenlaenge lambda cut off lc_x">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="0.001" UnitExponent="1">0.25000000000000000000</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="7" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="9" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="6" Description="">
            <NFEvaluation Name="NF_ISO_4287_Parameter_Series">
                <NFParameterSet>
                    <NFParameter Name="profile direction [0=x-profiles,1=y-profiles]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Beginn der Auswertung noffset">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Anzahl der Einzelmesstrecken le">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">5</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="7" Description="">
            <NFEvaluation Name="NF_ISO_4287_Parameter_Series">
                <NFParameterSet>
                    <NFParameter Name="profile direction [0=x-profiles,1=y-profiles]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Beginn der Auswertung noffset">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Anzahl der Einzelmesstrecken le">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">5</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="8" Description="">
            <NFEvaluation Name="NFExtractLine">
                <NFParameterSet>
                    <NFParameter Name="Interpolator">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">NFBiLinear</NFVariant>
                    </NFParameter>
                    <NFParameter Name="BeginY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="EndX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Upsampling Factor">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="BeginX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="EndY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="9" Description="">
            <NFEvaluation Name="NFExtractLine">
                <NFParameterSet>
                    <NFParameter Name="Interpolator">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">NFBiLinear</NFVariant>
                    </NFParameter>
                    <NFParameter Name="BeginY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="EndX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Upsampling Factor">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="BeginX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="EndY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
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
            <IOTopoMap EvalIndex="3" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="8" EvalPort="0" MapPort="1" />
            <IOTopoMap EvalIndex="9" EvalPort="0" MapPort="2" />
        </OutputTopoMapping>
        <InputParameterMapping />
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="7" EvalParameterName="Mittelwert Ra" MapName="Ra025" />
            <IOParameterMap EvalIndex="6" EvalParameterName="Mittelwert Ra" MapName="Ra08" />
            <IOParameterMap EvalIndex="7" EvalParameterName="Mittelwert Rq" MapName="Rq025" />
            <IOParameterMap EvalIndex="6" EvalParameterName="Mittelwert Rq" MapName="Rq08" />
            <IOParameterMap EvalIndex="7" EvalParameterName="Mittelwert Rz" MapName="Rz025" />
            <IOParameterMap EvalIndex="6" EvalParameterName="Mittelwert Rz" MapName="Rz08" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>C:/ProgramData/MarSurf/evaluation/plugins/Rauheit_entwurf.ned</string>
                    <string>C:/ProgramData/MarSurf/evaluation/plugins/Rauheit_entwurf.ned</string>
                    <string>C:/ProgramData/MarSurf/evaluation/plugins/Rauheit_entwurf.ned</string>
                    <string>C:/ProgramData/MarSurf/evaluation/plugins/Rauheit_entwurf.ned</string>
                    <string>C:/ProgramData/MarSurf/evaluation/plugins/Rauheit_entwurf.ned</string>
                    <string>C:/ProgramData/MarSurf/evaluation/plugins/Rauheit_entwurf.ned</string>
                    <string>C:/ProgramData/NanoFocus/SystemAcceptance/CM/Roughness/Abnahme_Rauheit1.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>Marsurf #600469</string>
                    <string>Marsurf #600469</string>
                    <string>Marsurf #600469</string>
                    <string>Marsurf #600469</string>
                    <string>Marsurf #600469</string>
                    <string>Marsurf #600469</string>
                    <string>Marsurf #600469</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2024-07-10 21:06:21</string>
                    <string>2024-07-10 21:08:43</string>
                    <string>2024-07-10 21:09:51</string>
                    <string>2024-07-10 22:19:15</string>
                    <string>2024-07-10 22:22:43</string>
                    <string>2024-07-10 22:28:34</string>
                    <string>2024-07-10 22:31:26</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">7</NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="Abnahme_Rauheit1">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFTopoInfo" PosX="4931" PosY="5133" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFVarSub" PosX="5141" PosY="5188" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFRoiFilter" PosX="5078" PosY="4923" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="4">
                <NFAlgoGUI Name="NF_ISO_16610_61_Filter_Area" PosX="5353.85" PosY="4929.62" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="5">
                <NFAlgoGUI Name="NF_ISO_16610_61_Filter_Area" PosX="5292.46" PosY="5032.66" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="6">
                <NFAlgoGUI Name="NF_ISO_4287_Parameter_Series" PosX="5678.32" PosY="4934" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="7">
                <NFAlgoGUI Name="NF_ISO_4287_Parameter_Series" PosX="5599.39" PosY="5068.83" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="8">
                <NFAlgoGUI Name="NFExtractLine" PosX="5525.95" PosY="4992.1" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="9">
                <NFAlgoGUI Name="NFExtractLine" PosX="5553.35" PosY="5142.28" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="5398" PosY="4990" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="1">
                <NFAlgoGUI PosX="5782.46" PosY="5012.93" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="2">
                <NFAlgoGUI PosX="5774.79" PosY="5201.47" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4893" PosY="4966" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamOutput Name="Ra025">
                <NFAlgoGUI PosX="5914" PosY="5158" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Ra08">
                <NFAlgoGUI PosX="5956" PosY="4926" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Rq025">
                <NFAlgoGUI PosX="5945" PosY="5215" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Rq08">
                <NFAlgoGUI PosX="5944" PosY="4984" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Rz025">
                <NFAlgoGUI PosX="5926" PosY="5084" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Rz08">
                <NFAlgoGUI PosX="5907" PosY="4882" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
