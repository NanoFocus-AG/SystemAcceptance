<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="Abnahme_Rauheit">
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFRobustPlaneFit">
                <NFParameterSet>
                    <NFParameter Name="Epsilon">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.0010000000000000000208</NFVariant>
                    </NFParameter>
                    <NFParameter Name="MaximumNumberOfIterations">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
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
                <NextTopo NextIndex="8" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="10" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="8" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="18" SourceParameterName="LengthX" DestinationParameterName="A" />
                <NextParameter NextIndex="22" SourceParameterName="LengthX" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="10" Description="">
            <NFEvaluation Name="NFRoiFilterAM">
                <NFParameterSet>
                    <NFParameter Name="OffsetX">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OffsetY">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeX">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="15" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="15" Description="">
            <NFEvaluation Name="NF_ISO_16610_31_Filter_Profile">
                <NFParameterSet>
                    <NFParameter Name="Grenzwellenlaenge lambda cut off lc">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="0.001" UnitExponent="1">0.80000000000000004441</NFVariant>
                    </NFParameter>
                    <NFParameter Name="maximum iterations">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">50</NFVariant>
                    </NFParameter>
                    <NFParameter Name="perform Lowpass [0=Highpass,1=Lowpass]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="termination tolerance">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">9.9999999999999995475e-08</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="17" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="17" Description="">
            <NFEvaluation Name="NF_ISO_4287_Parameter">
                <NFParameterSet>
                    <NFParameter Name="Anzahl der Einzelmesstrecken le">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">7</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Beginn der Auswertung noffset">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Rpc dicrimination threshold peak">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.10000000000000000555</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Rpc dicrimination threshold valley">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.10000000000000000555</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="18" Description="">
            <NFEvaluation Name="NFVarDiv">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">800</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="21" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="19" Description="">
            <NFEvaluation Name="NFParameterUnaryOperation&lt;Functor::NFVarRound&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="17" SourceParameterName="Result" DestinationParameterName="Anzahl der Einzelmesstrecken le" />
                <NextParameter NextIndex="20" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="20" Description="">
            <NFEvaluation Name="NFVarMul">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">800</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="22" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="24" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="21" Description="">
            <NFEvaluation Name="NFVarSub">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0.5</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="19" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="22" Description="">
            <NFEvaluation Name="NFVarSub">
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
                <NextParameter NextIndex="23" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="23" Description="">
            <NFEvaluation Name="NFVarDiv">
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
                <NextParameter NextIndex="10" SourceParameterName="Result" DestinationParameterName="OffsetX" />
                <NextParameter NextIndex="24" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="24" Description="">
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
            <NextParameterNodes>
                <NextParameter NextIndex="10" SourceParameterName="Result" DestinationParameterName="SizeX" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="1" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="15" EvalPort="0" MapPort="0" />
        </OutputTopoMapping>
        <InputParameterMapping />
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="17" EvalParameterName="Ra" MapName="Ra" />
            <IOParameterMap EvalIndex="17" EvalParameterName="Rq" MapName="Rq" />
            <IOParameterMap EvalIndex="17" EvalParameterName="Rz" MapName="Rz" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">35</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2015-05-18 11:54:12</string>
                    <string>2015-05-18 11:54:34</string>
                    <string>2015-05-18 11:54:42</string>
                    <string>2015-05-18 11:55:30</string>
                    <string>2015-05-18 11:55:44</string>
                    <string>2015-05-18 11:56:02</string>
                    <string>2015-05-18 11:56:08</string>
                    <string>2015-05-18 11:58:56</string>
                    <string>2015-05-18 11:59:16</string>
                    <string>2015-05-18 11:59:35</string>
                    <string>2015-05-18 11:59:55</string>
                    <string>2015-05-18 12:00:22</string>
                    <string>2015-05-18 12:01:43</string>
                    <string>2015-05-18 12:07:55</string>
                    <string>2015-05-18 13:26:07</string>
                    <string>2015-07-24 15:25:55</string>
                    <string>2015-07-24 15:27:07</string>
                    <string>2015-07-27 15:42:49</string>
                    <string>2015-11-04 10:59:33</string>
                    <string>2015-11-04 11:48:28</string>
                    <string>2015-11-04 11:50:08</string>
                    <string>2015-11-04 12:05:41</string>
                    <string>2015-11-04 12:14:12</string>
                    <string>2015-11-04 12:50:59</string>
                    <string>2022-12-12 13:28:21</string>
                    <string>2022-12-12 13:34:02</string>
                    <string>2022-12-12 13:37:25</string>
                    <string>2022-12-12 13:38:19</string>
                    <string>2022-12-12 13:43:16</string>
                    <string>2022-12-12 13:43:30</string>
                    <string>2022-12-12 13:53:55</string>
                    <string>2022-12-12 13:58:19</string>
                    <string>2022-12-12 14:03:49</string>
                    <string>2022-12-12 14:05:12</string>
                    <string>2022-12-12 14:12:05</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>C:\Program Files (x86)\NanoFocus\NFMsoft/config/NFComplexEvaluation.ned</string>
                    <string>C:\Program Files (x86)\NanoFocus\NFMsoft/config/NFComplexEvaluation.ned</string>
                    <string>C:\Program Files (x86)\NanoFocus\NFMsoft/config/NFComplexEvaluation.ned</string>
                    <string>C:\Program Files (x86)\NanoFocus\NFMsoft/config/NFComplexEvaluation.ned</string>
                    <string>C:\Program Files (x86)\NanoFocus\NFMsoft/config/NFComplexEvaluation.ned</string>
                    <string>C:\Program Files (x86)\NanoFocus\NFMsoft/config/NFComplexEvaluation.ned</string>
                    <string>C:\Program Files (x86)\NanoFocus\NFMsoft/config/NFComplexEvaluation.ned</string>
                    <string>C:\Program Files (x86)\NanoFocus\NFMsoft/config/NFComplexEvaluation.ned</string>
                    <string>C:\Program Files (x86)\NanoFocus\NFMsoft/config/NFComplexEvaluation.ned</string>
                    <string>C:\Program Files (x86)\NanoFocus\NFMsoft/config/NFComplexEvaluation.ned</string>
                    <string>C:\Program Files (x86)\NanoFocus\NFMsoft/config/NFComplexEvaluation.ned</string>
                    <string>C:\Program Files (x86)\NanoFocus\NFMsoft/config/NFComplexEvaluation.ned</string>
                    <string>P:\30_Realisierung\40_Erprobung\NED_datei\Abnahme_Rauheit1.ned</string>
                    <string>P:/30_Realisierung/40_Erprobung/NED_datei/Abnahme_Rauheit2.ned</string>
                    <string>C:/Program Files/NanoFocus/evaluation/Plugins/Abnahme_Rauheit.ned</string>
                    <string>P:/30_Realisierung/40_Erprobung/NED_datei/Abnahme_Rauheit.ned</string>
                    <string>P:/30_Realisierung/40_Erprobung/NED_datei/Abnahme_Rauheit.ned</string>
                    <string>P:/30_Realisierung/40_Erprobung/NED_datei/Abnahme_Rauheit.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                    <string>C:/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                    <string>C:/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                    <string>C:/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                    <string>C:/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                    <string>C:/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                    <string>C:/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                    <string>C:/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                    <string>C:/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                    <string>C:/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                    <string>C:/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                    <string>C:/NFEval/globalPlugins/Abnahme_Rauheit.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>chanbai</string>
                    <string>chanbai</string>
                    <string>chanbai</string>
                    <string>chanbai</string>
                    <string>chanbai</string>
                    <string>chanbai</string>
                    <string>chanbai</string>
                    <string>chanbai</string>
                    <string>chanbai</string>
                    <string>chanbai</string>
                    <string>chanbai</string>
                    <string>chanbai</string>
                    <string>chanbai</string>
                    <string>chanbai</string>
                    <string>chanbai</string>
                    <string>chanbai</string>
                    <string>chanbai</string>
                    <string>chanbai</string>
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
        <NFComplexAlgoGUIDescription Version="1" Name="Abnahme_Rauheit">
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFRobustPlaneFit" PosX="466.38" PosY="382.965" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="8">
                <NFAlgoGUI Name="NFTopoInfo" PosX="466.134" PosY="456.062" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="10">
                <NFAlgoGUI Name="NFRoiFilterAM" PosX="920.028" PosY="382.989" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="15">
                <NFAlgoGUI Name="NF_ISO_16610_31_Filter_Profile" PosX="920.679" PosY="562.713" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="17">
                <NFAlgoGUI Name="NF_ISO_4287_Parameter" PosX="922.963" PosY="673.765" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="18">
                <NFAlgoGUI Name="NFVarDiv" PosX="466.356" PosY="526.449" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="19">
                <NFAlgoGUI Name="NFParameterUnaryOperation&lt;Functor::NFVarRound&gt;" PosX="462.886" PosY="675.214" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="20">
                <NFAlgoGUI Name="NFVarMul" PosX="637.135" PosY="596.125" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="21">
                <NFAlgoGUI Name="NFVarSub" PosX="464.432" PosY="598.784" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="22">
                <NFAlgoGUI Name="NFVarSub" PosX="634.813" PosY="483.704" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="23">
                <NFAlgoGUI Name="NFVarDiv" PosX="634.034" PosY="403.476" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="24">
                <NFAlgoGUI Name="NFVarAdd" PosX="793.711" PosY="515.639" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="1159.78" PosY="565.331" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="337.33" PosY="383.248" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamOutput Name="Ra">
                <NFAlgoGUI PosX="854.007" PosY="760.234" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Rq">
                <NFAlgoGUI PosX="935.652" PosY="779.464" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Rz">
                <NFAlgoGUI PosX="999.039" PosY="758.722" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
