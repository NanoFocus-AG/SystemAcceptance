<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NF_NED_Abnahme_Tiefennormal_A1_GP05">
        <NFComplexEvalNode Index="13" Description="">
            <NFEvaluation Name="NFRoiFilter">
                <NFParameterSet>
                    <NFParameter Name="OffsetX [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OffsetY [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="PixelStepX [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="PixelStepY [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeX [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="15" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="14" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="23" SourceParameterName="DeltaX" DestinationParameterName="B" />
                <NextParameter NextIndex="22" SourceParameterName="DeltaX" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="15" Description="">
            <NFEvaluation Name="NFTopoGnuplotProfile">
                <NFParameterSet>
                    <NFParameter Name="CleanOutput">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Column Profile">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="GnuPlotLines_X">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="GnuPlotLines_Y">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageFormat [jpeg, png, svg]">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">svg</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageName">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Tiefennormal_Profil_05</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageRatio">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1.6</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageSize_X [Pix]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">600</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageSize_Y [Pix]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">800</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Index">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Label">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Rille 5</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Label X-Axis">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">[um]</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Label Y-Axis">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">[um]</NFVariant>
                    </NFParameter>
                    <NFParameter Name="RemoveXOffset">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Texts">
                        <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                            <string />
                        </NFVariant>
                    </NFParameter>
                    <NFParameter Name="Texts X-Pos [um]">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Texts Y-Pos [um]">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Title">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Abnahme-Messung: Tiefennormal A1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Title with Image Name">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UnitX [mm, um]">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">um</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use Y-Scaling">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WorkingDirectory">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">./</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Y_Max">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Y_Min">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-2</NFVariant>
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
        <NFComplexEvalNode Index="16" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
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
                <NextParameter NextIndex="20" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="21" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="17" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="16" SourceParameterName="OutputParameter" DestinationParameterName="B" />
                <NextParameter NextIndex="20" SourceParameterName="OutputParameter" DestinationParameterName="A" />
                <NextParameter NextIndex="28" SourceParameterName="OutputParameter" DestinationParameterName="C" />
                <NextParameter NextIndex="29" SourceParameterName="OutputParameter" DestinationParameterName="C" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="18" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="16" SourceParameterName="OutputParameter" DestinationParameterName="A" />
                <NextParameter NextIndex="26" SourceParameterName="OutputParameter" DestinationParameterName="C" />
                <NextParameter NextIndex="27" SourceParameterName="OutputParameter" DestinationParameterName="C" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="20" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
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
                <NextParameter NextIndex="22" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="21" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="23" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="22" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
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
                <NextParameter NextIndex="13" SourceParameterName="Result" DestinationParameterName="OffsetX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="23" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
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
                <NextParameter NextIndex="13" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="24" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarCreateVector&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">4</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="26" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="26" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;0;1;1;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="27" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="27" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;0;1;1;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="28" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="28" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;0;1;1;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="29" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="29" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;0;1;1;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="15" SourceParameterName="Result" DestinationParameterName="GnuPlotLines_X" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="30" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;0;1;1;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="31" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="31" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;0;1;1;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="32" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="32" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;0;1;1;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="33" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="33" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;0;1;1;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="15" SourceParameterName="Result" DestinationParameterName="GnuPlotLines_Y" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="34" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarCreateVector&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">4</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="30" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="13" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="14" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping />
        <InputParameterMapping>
            <IOParameterMap EvalIndex="17" EvalParameterName="InputParameter" MapName="Left Position [um]" />
            <IOParameterMap EvalIndex="18" EvalParameterName="InputParameter" MapName="Right Position [um]" />
            <IOParameterMap EvalIndex="15" EvalParameterName="WorkingDirectory" MapName="Workingdirectory" />
        </InputParameterMapping>
        <OutputParameterMapping />
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">57</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2023-03-13 10:22:45</string>
                    <string>2023-03-13 10:57:26</string>
                    <string>2023-03-13 10:58:47</string>
                    <string>2023-03-13 11:06:34</string>
                    <string>2023-03-13 11:11:54</string>
                    <string>2023-03-13 11:20:48</string>
                    <string>2023-03-13 11:27:36</string>
                    <string>2023-03-13 12:05:29</string>
                    <string>2023-03-13 12:06:10</string>
                    <string>2023-03-13 12:22:20</string>
                    <string>2023-03-13 12:40:46</string>
                    <string>2023-03-13 12:49:58</string>
                    <string>2023-03-13 12:51:26</string>
                    <string>2023-03-13 12:55:10</string>
                    <string>2023-03-13 13:24:52</string>
                    <string>2023-03-13 13:45:29</string>
                    <string>2023-03-13 13:45:56</string>
                    <string>2023-03-13 13:50:26</string>
                    <string>2023-03-13 13:52:21</string>
                    <string>2023-03-13 13:54:43</string>
                    <string>2023-03-13 14:05:43</string>
                    <string>2023-03-14 09:01:38</string>
                    <string>2023-03-14 09:36:19</string>
                    <string>2023-03-14 09:39:07</string>
                    <string>2023-03-14 09:40:08</string>
                    <string>2023-03-14 09:41:18</string>
                    <string>2023-03-14 10:04:58</string>
                    <string>2023-03-14 11:32:33</string>
                    <string>2023-03-14 11:35:01</string>
                    <string>2023-03-14 11:49:56</string>
                    <string>2023-03-14 11:54:43</string>
                    <string>2023-03-14 12:12:12</string>
                    <string>2023-03-14 12:24:26</string>
                    <string>2023-03-14 12:54:14</string>
                    <string>2023-03-14 12:54:55</string>
                    <string>2023-03-14 13:15:29</string>
                    <string>2023-03-14 13:19:15</string>
                    <string>2023-03-14 13:25:00</string>
                    <string>2023-03-15 09:02:55</string>
                    <string>2023-03-15 14:14:12</string>
                    <string>2023-03-15 15:11:17</string>
                    <string>2023-03-15 15:40:25</string>
                    <string>2023-03-15 15:43:59</string>
                    <string>2023-03-15 15:46:58</string>
                    <string>2023-03-15 16:49:15</string>
                    <string>2023-03-15 16:49:48</string>
                    <string>2023-03-15 17:14:43</string>
                    <string>2023-03-20 13:15:27</string>
                    <string>2023-03-20 13:21:28</string>
                    <string>2023-03-20 13:50:17</string>
                    <string>2023-03-20 14:28:50</string>
                    <string>2023-03-20 16:21:29</string>
                    <string>2023-03-20 16:24:12</string>
                    <string>2023-03-20 16:27:12</string>
                    <string>2023-03-20 16:27:48</string>
                    <string>2023-03-20 16:30:55</string>
                    <string>2023-03-21 09:09:01</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1_GP01.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1_GP01.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1_GP01.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1_GP01.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1_GP01.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1_GP01.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1_GP01.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1_GP01.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1_GP01.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1_GP05.ned</string>
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
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NF_NED_Abnahme_Tiefennormal_A1_GP05">
            <NFComplexAlgoNodeGUI Index="13">
                <NFAlgoGUI Name="NFRoiFilter" PosX="5230.97" PosY="5253" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="14">
                <NFAlgoGUI Name="NFTopoInfo" PosX="4967.58" PosY="5238.64" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="15">
                <NFAlgoGUI Name="NFTopoGnuplotProfile" PosX="5231.86" PosY="5806.97" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="16">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="4684.69" PosY="5232.24" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="17">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="4555.37" PosY="5389.02" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="18">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="4483.31" PosY="5233.06" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="20">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="4683.78" PosY="5332.88" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="21">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="4683.35" PosY="5137.94" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="22">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="4967.04" PosY="5333.02" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="23">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="4967.39" PosY="5140" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="24">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarCreateVector&gt;" PosX="4624.46" PosY="5519.78" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="26">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="4435.37" PosY="5578.91" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="27">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="4441.64" PosY="5654.21" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="28">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="4441.64" PosY="5728.72" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="29">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="4446.66" PosY="5805.82" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="30">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="5310.51" PosY="5503.85" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="31">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="5313.26" PosY="5583.46" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="32">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="5316.71" PosY="5658.99" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="33">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="5318.34" PosY="5733.18" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="34">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarCreateVector&gt;" PosX="5310.21" PosY="5428.25" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="5230.84" PosY="5104.29" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="Left Position [um]">
                <NFAlgoGUI PosX="4283.73" PosY="5388.7" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Right Position [um]">
                <NFAlgoGUI PosX="4272.89" PosY="5232.85" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Workingdirectory">
                <NFAlgoGUI PosX="5063.2" PosY="5743.04" />
            </NFComplexAlgoParamInput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
