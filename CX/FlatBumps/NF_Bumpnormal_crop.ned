<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NF_Bumpnormal_crop">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="NFIntensityToHeight">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="1" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFAutomaticThresholdFilter">
                <NFParameterSet>
                    <NFParameter Name="Lower Height Threshold?">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
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
            <NFEvaluation Name="NFRobustRectangleFit">
                <NFParameterSet>
                    <NFParameter Name="Distance metric parameter C">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Distance type for line fitting">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">CV_DIST_WELSCH</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Epsilon [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Is parallel to topo border">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Number of iterations">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="5" SourceParameterName="Edge points" DestinationParameterName="A" />
                <NextParameter NextIndex="9" SourceParameterName="Edge points" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="5" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVector2D&gt;">
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
                <NextParameter NextIndex="21" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="25" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="9" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVector2D&gt;">
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
                <NextParameter NextIndex="26" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="27" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="21" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVector2DElement&gt;">
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
                <NextParameter NextIndex="28" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="30" SourceParameterName="Result" DestinationParameterName="OffsetX [Pixel]" />
                <NextParameter NextIndex="35" SourceParameterName="Result" DestinationParameterName="OffsetX [Pixel]" />
                <NextParameter NextIndex="36" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
                <NextParameter NextIndex="37" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="25" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVector2DElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="29" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="30" SourceParameterName="Result" DestinationParameterName="OffsetY [Pixel]" />
                <NextParameter NextIndex="34" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="36" SourceParameterName="Result" DestinationParameterName="OffsetY [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="26" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVector2DElement&gt;">
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
                <NextParameter NextIndex="28" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="27" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVector2DElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="29" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="28" Description="">
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
                <NextParameter NextIndex="30" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
                <NextParameter NextIndex="35" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="29" Description="">
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
                <NextParameter NextIndex="31" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="30" Description="">
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
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="31" Description="">
            <NFEvaluation Name="NFVarMul">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.5</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="30" SourceParameterName="Result" DestinationParameterName="SizeY [Pixel]" />
                <NextParameter NextIndex="35" SourceParameterName="Result" DestinationParameterName="SizeY [Pixel]" />
                <NextParameter NextIndex="34" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="36" SourceParameterName="Result" DestinationParameterName="SizeY [Pixel]" />
                <NextParameter NextIndex="37" SourceParameterName="Result" DestinationParameterName="SizeY [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="34" Description="">
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
                <NextParameter NextIndex="35" SourceParameterName="Result" DestinationParameterName="OffsetY [Pixel]" />
                <NextParameter NextIndex="37" SourceParameterName="Result" DestinationParameterName="OffsetY [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="35" Description="">
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
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="36" Description="">
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
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="37" Description="">
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
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="0" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="30" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="35" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="36" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="37" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="30" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="35" EvalPort="0" MapPort="1" />
            <IOTopoMap EvalIndex="37" EvalPort="0" MapPort="2" />
            <IOTopoMap EvalIndex="36" EvalPort="0" MapPort="3" />
        </OutputTopoMapping>
        <InputParameterMapping />
        <OutputParameterMapping />
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">18</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2023-03-08 13:31:00</string>
                    <string>2023-03-08 13:36:09</string>
                    <string>2023-03-08 13:47:05</string>
                    <string>2023-03-08 13:49:32</string>
                    <string>2023-03-08 13:56:22</string>
                    <string>2023-03-08 14:02:42</string>
                    <string>2023-03-08 14:06:52</string>
                    <string>2023-03-08 14:10:27</string>
                    <string>2023-03-08 14:13:55</string>
                    <string>2023-03-08 14:18:21</string>
                    <string>2023-03-08 14:25:52</string>
                    <string>2023-03-08 14:29:23</string>
                    <string>2023-03-08 14:32:22</string>
                    <string>2023-03-08 14:37:14</string>
                    <string>2023-03-08 14:40:05</string>
                    <string>2023-03-08 14:42:24</string>
                    <string>2023-03-08 14:43:38</string>
                    <string>2023-03-08 14:47:30</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NF_Bumpnormal_crop.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NF_Bumpnormal_crop">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFIntensityToHeight" PosX="4626.45" PosY="5094.57" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFAutomaticThresholdFilter" PosX="6033.82" PosY="5094.65" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFRobustRectangleFit" PosX="6080.36" PosY="5556.19" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="5">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVector2D&gt;" PosX="5776.33" PosY="5280.92" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="9">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVector2D&gt;" PosX="5846.74" PosY="5706.15" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="21">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVector2DElement&gt;" PosX="5458.93" PosY="5163.74" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="25">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVector2DElement&gt;" PosX="5469.46" PosY="5617.06" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="26">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVector2DElement&gt;" PosX="5454.88" PosY="5463.35" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="27">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVector2DElement&gt;" PosX="5470.55" PosY="6005.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="28">
                <NFAlgoGUI Name="NFVarSub" PosX="5460.01" PosY="5309.51" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="29">
                <NFAlgoGUI Name="NFVarSub" PosX="5469.7" PosY="5794.55" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="30">
                <NFAlgoGUI Name="NFRoiFilter" PosX="4811.67" PosY="6113.89" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="31">
                <NFAlgoGUI Name="NFVarMul" PosX="5326.15" PosY="6007.45" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="34">
                <NFAlgoGUI Name="NFVarAdd" PosX="5320.87" PosY="5798.44" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="35">
                <NFAlgoGUI Name="NFRoiFilter" PosX="4797.92" PosY="5820.62" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="36">
                <NFAlgoGUI Name="NFRoiFilter" PosX="4787.79" PosY="5266.23" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="37">
                <NFAlgoGUI Name="NFRoiFilter" PosX="4785.11" PosY="5545.32" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="4814.09" PosY="5919.3" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="1">
                <NFAlgoGUI PosX="4798.17" PosY="5656.14" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="2">
                <NFAlgoGUI PosX="4795.47" PosY="5384.51" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="3">
                <NFAlgoGUI PosX="4796.56" PosY="5167.79" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4611.04" PosY="5684.21" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamOutput Name="Param1">
                <NFAlgoGUI PosX="5262" PosY="5552" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
