<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NF_NED_LineSensorNoiseStatistics">
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFSensorNoiseStatistics">
                <NFParameterSet>
                    <NFParameter Name="CleanOutput">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageFormat [jpeg, png, svg]">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">svg</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageName">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">LineSensorNoiseStat</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageRatio">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1.6999999999999999556</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageSize_X [Pix]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">950</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageSize_Y [Pix]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">800</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Label">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Medians with Standard Deviations</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Label X-Axis">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Channel</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Label Y-Axis">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">[um]</NFVariant>
                    </NFParameter>
                    <NFParameter Name="MinMax Out">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Title">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Height Noise Statistics</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Title with Image Name">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use Y-Scaling">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WorkingDirectory">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">./</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Y_Max">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Y_Min">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Y_Scale">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">2.5</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
            <NFEvaluation Name="NFGetUserTmpDir">
                <NFParameterSet>
                    <NFParameter Name="Directory">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">.\</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use User Tmp Dir">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="Directory Name" DestinationParameterName="WorkingDirectory" />
                <NextParameter NextIndex="6" SourceParameterName="Directory Name" DestinationParameterName="WorkingDirectory" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
            <NFEvaluation Name="NFLevelPolynom">
                <NFParameterSet>
                    <NFParameter Name="Bins in X-Direction">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Bins in Y-Direction">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Mixed Coeffs [-]">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OrderX [-]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OrderY [-]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Statistical Binning">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="1" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="5" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="4" Description="">
            <NFEvaluation Name="NFFourierTransform">
                <NFParameterSet>
                    <NFParameter Name="Out-Imag-Part">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Out-Magnitude">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Out-Phase">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Out-Real-Part">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Shift Spectrum">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Unit [m, mm, um, s]">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">s</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use Padding">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="6" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="5" Description="">
            <NFEvaluation Name="NFTopoToProfile">
                <NFParameterSet>
                    <NFParameter Name="DirectionOfReduction">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ReductionType">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="4" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="6" Description="">
            <NFEvaluation Name="NFTopoGnuplotProfile">
                <NFParameterSet>
                    <NFParameter Name="CleanOutput">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Column Profile">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="GnuPlotLines_X">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="GnuPlotLines_Y">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="ImageFormat [jpeg, png, svg]">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">svg</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageName">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">LineSensorNoiseSpectrum</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageRatio">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1.6999999999999999556</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageSize_X [Pix]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">950</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageSize_Y [Pix]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">800</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Index">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Label">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="Label X-Axis">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Hz</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Label Y-Axis">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Mag</NFVariant>
                    </NFParameter>
                    <NFParameter Name="RemoveXOffset">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Texts">
                        <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="Texts X-Pos [um]">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="Texts Y-Pos [um]">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="Title">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Height Noise  Frequency Spectrum</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Title with Image Name">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UnitX [mm, um]">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">um</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use Y-Scaling">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WorkingDirectory">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">./</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Y_Max">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Y_Min">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Y_Scale">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="3" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="1" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="5" EvalPort="0" MapPort="1" />
            <IOTopoMap EvalIndex="4" EvalPort="0" MapPort="2" />
        </OutputTopoMapping>
        <InputParameterMapping>
            <IOParameterMap EvalIndex="2" EvalParameterName="Use User Tmp Dir" MapName="Use User Tmp Dir" />
            <IOParameterMap EvalIndex="2" EvalParameterName="Directory" MapName="Working Dir" />
        </InputParameterMapping>
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="1" EvalParameterName="Maximum Values" MapName="Max Values" />
            <IOParameterMap EvalIndex="1" EvalParameterName="Means" MapName="Means" />
            <IOParameterMap EvalIndex="1" EvalParameterName="Minimum Values" MapName="Min Values" />
            <IOParameterMap EvalIndex="1" EvalParameterName="Stddevs" MapName="Stddevs" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">18</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2023-02-24 13:35:36</string>
                    <string>2023-02-24 13:42:30</string>
                    <string>2023-02-24 13:47:35</string>
                    <string>2023-02-27 08:16:00</string>
                    <string>2023-02-27 08:36:09</string>
                    <string>2023-02-27 11:58:22</string>
                    <string>2023-02-27 12:44:29</string>
                    <string>2023-02-27 12:45:50</string>
                    <string>2023-02-27 12:46:29</string>
                    <string>2023-02-27 12:49:09</string>
                    <string>2023-02-27 12:50:56</string>
                    <string>2023-02-27 12:56:21</string>
                    <string>2023-02-27 13:01:31</string>
                    <string>2023-02-27 13:04:28</string>
                    <string>2023-02-27 13:10:32</string>
                    <string>2023-02-27 13:12:44</string>
                    <string>2023-02-27 13:40:12</string>
                    <string>2023-02-28 12:12:48</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>E:/build/myEvalPlugins/NF_NED_SensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_SensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_SensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_SensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_SensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_SensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_SensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_SensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_SensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_SensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_SensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_SensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_SensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_SensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_SensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_SensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_LineSensorNoiseStatistics.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_LineSensorNoiseStatistics.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NF_NED_LineSensorNoiseStatistics">
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFSensorNoiseStatistics" PosX="5526" PosY="5125" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFGetUserTmpDir" PosX="5321" PosY="5061" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFLevelPolynom" PosX="5156" PosY="5127" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="4">
                <NFAlgoGUI Name="NFFourierTransform" PosX="5158" PosY="5344" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="5">
                <NFAlgoGUI Name="NFTopoToProfile" PosX="5159" PosY="5237" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="6">
                <NFAlgoGUI Name="NFTopoGnuplotProfile" PosX="5324" PosY="5345" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="5744" PosY="5123" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="1">
                <NFAlgoGUI PosX="5025" PosY="5237" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="2">
                <NFAlgoGUI PosX="5031" PosY="5345" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="5156" PosY="5019" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="Use User Tmp Dir">
                <NFAlgoGUI PosX="5317" PosY="4926" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Working Dir">
                <NFAlgoGUI PosX="5318" PosY="4982" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamOutput Name="Max Values">
                <NFAlgoGUI PosX="5531" PosY="5296" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Means">
                <NFAlgoGUI PosX="5531" PosY="5370" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Min Values">
                <NFAlgoGUI PosX="5530" PosY="5447" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Stddevs">
                <NFAlgoGUI PosX="5530" PosY="5222" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
