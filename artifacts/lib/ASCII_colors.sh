#!/bin/bash

#---------------------------------------------------------------------------------------
echo ' ______  ____    ____    ______  ______      ____     _____   __       _____   ____    ____       ';
echo '/\  _  \/\  _\`\ /\  _\`\ /\__  _\/\__  _\    /\  _\`\  /\  __\`\/\ \     /\  __\`\/\  _\`\ /\  _\`\     ';
echo '\ \ \L\ \ \,\L\_\ \ \/\_\/_/\ \/\/_/\ \/    \ \ \/\_\\ \ \/\ \ \ \    \ \ \/\ \ \ \L\ \ \,\L\_\   ';
echo ' \ \  __ \/_\__ \\ \ \/_/_ \ \ \   \ \ \     \ \ \/_/_\ \ \ \ \ \ \  __\ \ \ \ \ \ ,  /\/_\__ \   ';
echo '  \ \ \/\ \/\ \L\ \ \ \L\ \ \_\ \__ \_\ \__   \ \ \L\ \\ \ \_\ \ \ \L\ \\ \ \_\ \ \ \\ \ /\ \L\ \ ';
echo '   \ \_\ \_\ \`\____\ \____/ /\_____\/\_____\   \ \____/ \ \_____\ \____/ \ \_____\ \_\ \_\ \`\____\';
echo '    \/_/\/_/\/_____/\/___/  \/_____/\/_____/    \/___/   \/_____/\/___/   \/_____/\/_/\/ /\/_____/';
echo '                                                                                                  ';
echo '                                                                                                  ';
echo "Made by: slowloris-coding"
echo "-------------------------"
echo "https://github.com/slowloris-coding"

# Every color and effect witch is used in the same printf statement will be there until the N_ ("no" / "not") variable of the used variable is used.
# For disabling colors every attribute has to be removed.
# Effects can be stackt, colors not
# !! "printf" has to be used, it will not work with "echo" !!

#----------------------------------------------------------------------------------------------------------------------------------------------------------
#==========================
# FORMATING & EFFECTS
#==========================

NEWLINE='\n'                # Newline for printf

N_ATTRIB='\033[0m'          # "No Attribute", disabling all effects

BOLD='\033[1m'              # Bold in/output
DIM='\033[2m'               # dimmed in/output
UNDERLINED='\033[4m'        # underlined in/output
BLINK='\033[5m'             # blinking in/output
REVERSE_COLOR='\033[7m'     # inverted in/output color
HIDDEN='\033[8m'            # hidden in/output, like passwords in ubuntu or other debian distros (the in/output will not appear but is still there)

N_BOLD='\033[21m'           # "not bold", disabling the "bold" attribute
N_DIM='\033[22m'            # "no dim", disabling the "dim" attribute
N_UNDERLINED='\033[24m'     # "not undelined", disabling the "underlined" attribute
N_BLINK='\033[25m'          # "no blinking", disabling the "blink" attribute
N_REVERSE_COLOR='\033[27m'  # "no reverse", disabling the "reverse" (invert) attribute 
N_HIDDEN='\033[28m'         # "not hidden", disabling the "hidden" attribute

#----------------------------------------------------------------------------------------
#====================
# FOREGROUND COLORS
#====================

# F_XXXX --> foreground colors
# F_L_XXXXX --> light forground colors (e.g. F_L_GREEN = light green)
# F_D_XXXXX --> dark foreground colors (e.g. F_D_GREY = dark grey)

F_DEFAULT='\033[39m'
F_Black='\033[30m'
F_RED='\033[31m'
F_GREEN='\033[32m'
F_YELLOW='\033[33m'
F_BLUE='\033[34m'
F_MAGENTA='\033[35m'
F_CYAN='\033[36m'
F_WHITE='\033[97m'


# light colors

F_L_GREY='\033[37m'
F_L_RED='\033[91m'
F_L_GREEN='\033[92m'
F_L_YELLOW='\033[93m'
F_L_BLUE='\033[94m'
F_L_MAGENTA='\033[95m'
F_L_CYAN='\033[96m'


# dark colors

F_D_GREY='\033[90m'

#----------------------------------------------------------------------------------------
#====================
# BACKGROUND COLOR
#====================

# B_XXXXX --> background colors
# B_L_XXXX --> light background colors (e.g. B_L_GREEN = light green)
# B_D_XXXX --> dark background colors (e.g. B_D_GREY = dark grey)

B_DEFAULT='\033[49m'
B_Black='\033[40m'
B_RED='\033[41m'      
B_GREEN='\033[42m'    
B_YELLOW='\033[43m'   
B_BLUE='\033[44m'
B_MAGENTA='\033[45m'
B_CYAN='\033[46m'
B_WHITE='\033[107m'

#HELLE FARBEN
B_L_GREY='\033[47m'
B_L_RED='\033[101m'
B_L_GREEN='\033[102m'
B_L_YELLOW='\033[103m'
B_L_BLUE='\033[104m'
B_L_MAGENTA='\033[105m'
B_L_CYAN='\033[106m'

#Dunkle Farben
B_D_GREY='\033[100m'

#--------------------------------------------------------------------------------------------
#===================================
#ALL POSSIBLE COLORS WITH ASCII CODE
#===================================

# F --> foreground color
# B --> background color
# The variablenames are structurized like this --> F(or B)_ASCIICODE 

# The Color-Variables with ASCII-Code 0
F_0 = \033[38;5;0m
B_0 = \033[48;5;0m

# The Color-Variables with ASCII-Code 1
F_1 = \033[38;5;1m
B_1 = \033[48;5;1m

# The Color-Variables with ASCII-Code 2
F_2 = \033[38;5;2m
B_2 = \033[48;5;2m

# The Color-Variables with ASCII-Code 3
F_3 = \033[38;5;3m
B_3 = \033[48;5;3m

# The Color-Variables with ASCII-Code 4
F_4 = \033[38;5;4m
B_4 = \033[48;5;4m

# The Color-Variables with ASCII-Code 5
F_5 = \033[38;5;5m
B_5 = \033[48;5;5m

# The Color-Variables with ASCII-Code 6
F_6 = \033[38;5;6m
B_6 = \033[48;5;6m

# The Color-Variables with ASCII-Code 7
F_7 = \033[38;5;7m
B_7 = \033[48;5;7m

# The Color-Variables with ASCII-Code 8
F_8 = \033[38;5;8m
B_8 = \033[48;5;8m

# The Color-Variables with ASCII-Code 9
F_9 = \033[38;5;9m
B_9 = \033[48;5;9m

# The Color-Variables with ASCII-Code 10
F_10 = \033[38;5;10m
B_10 = \033[48;5;10m

# The Color-Variables with ASCII-Code 11
F_11 = \033[38;5;11m
B_11 = \033[48;5;11m

# The Color-Variables with ASCII-Code 12
F_12 = \033[38;5;12m
B_12 = \033[48;5;12m

# The Color-Variables with ASCII-Code 13
F_13 = \033[38;5;13m
B_13 = \033[48;5;13m

# The Color-Variables with ASCII-Code 14
F_14 = \033[38;5;14m
B_14 = \033[48;5;14m

# The Color-Variables with ASCII-Code 15
F_15 = \033[38;5;15m
B_15 = \033[48;5;15m

# The Color-Variables with ASCII-Code 16
F_16 = \033[38;5;16m
B_16 = \033[48;5;16m

# The Color-Variables with ASCII-Code 17
F_17 = \033[38;5;17m
B_17 = \033[48;5;17m

# The Color-Variables with ASCII-Code 18
F_18 = \033[38;5;18m
B_18 = \033[48;5;18m

# The Color-Variables with ASCII-Code 19
F_19 = \033[38;5;19m
B_19 = \033[48;5;19m

# The Color-Variables with ASCII-Code 20
F_20 = \033[38;5;20m
B_20 = \033[48;5;20m

# The Color-Variables with ASCII-Code 21
F_21 = \033[38;5;21m
B_21 = \033[48;5;21m

# The Color-Variables with ASCII-Code 22
F_22 = \033[38;5;22m
B_22 = \033[48;5;22m

# The Color-Variables with ASCII-Code 23
F_23 = \033[38;5;23m
B_23 = \033[48;5;23m

# The Color-Variables with ASCII-Code 24
F_24 = \033[38;5;24m
B_24 = \033[48;5;24m

# The Color-Variables with ASCII-Code 25
F_25 = \033[38;5;25m
B_25 = \033[48;5;25m

# The Color-Variables with ASCII-Code 26
F_26 = \033[38;5;26m
B_26 = \033[48;5;26m

# The Color-Variables with ASCII-Code 27
F_27 = \033[38;5;27m
B_27 = \033[48;5;27m

# The Color-Variables with ASCII-Code 28
F_28 = \033[38;5;28m
B_28 = \033[48;5;28m

# The Color-Variables with ASCII-Code 29
F_29 = \033[38;5;29m
B_29 = \033[48;5;29m

# The Color-Variables with ASCII-Code 30
F_30 = \033[38;5;30m
B_30 = \033[48;5;30m

# The Color-Variables with ASCII-Code 31
F_31 = \033[38;5;31m
B_31 = \033[48;5;31m

# The Color-Variables with ASCII-Code 32
F_32 = \033[38;5;32m
B_32 = \033[48;5;32m

# The Color-Variables with ASCII-Code 33
F_33 = \033[38;5;33m
B_33 = \033[48;5;33m

# The Color-Variables with ASCII-Code 34
F_34 = \033[38;5;34m
B_34 = \033[48;5;34m

# The Color-Variables with ASCII-Code 35
F_35 = \033[38;5;35m
B_35 = \033[48;5;35m

# The Color-Variables with ASCII-Code 36
F_36 = \033[38;5;36m
B_36 = \033[48;5;36m

# The Color-Variables with ASCII-Code 37
F_37 = \033[38;5;37m
B_37 = \033[48;5;37m

# The Color-Variables with ASCII-Code 38
F_38 = \033[38;5;38m
B_38 = \033[48;5;38m

# The Color-Variables with ASCII-Code 39
F_39 = \033[38;5;39m
B_39 = \033[48;5;39m

# The Color-Variables with ASCII-Code 40
F_40 = \033[38;5;40m
B_40 = \033[48;5;40m

# The Color-Variables with ASCII-Code 41
F_41 = \033[38;5;41m
B_41 = \033[48;5;41m

# The Color-Variables with ASCII-Code 42
F_42 = \033[38;5;42m
B_42 = \033[48;5;42m

# The Color-Variables with ASCII-Code 43
F_43 = \033[38;5;43m
B_43 = \033[48;5;43m

# The Color-Variables with ASCII-Code 44
F_44 = \033[38;5;44m
B_44 = \033[48;5;44m

# The Color-Variables with ASCII-Code 45
F_45 = \033[38;5;45m
B_45 = \033[48;5;45m

# The Color-Variables with ASCII-Code 46
F_46 = \033[38;5;46m
B_46 = \033[48;5;46m

# The Color-Variables with ASCII-Code 47
F_47 = \033[38;5;47m
B_47 = \033[48;5;47m

# The Color-Variables with ASCII-Code 48
F_48 = \033[38;5;48m
B_48 = \033[48;5;48m

# The Color-Variables with ASCII-Code 49
F_49 = \033[38;5;49m
B_49 = \033[48;5;49m

# The Color-Variables with ASCII-Code 50
F_50 = \033[38;5;50m
B_50 = \033[48;5;50m

# The Color-Variables with ASCII-Code 51
F_51 = \033[38;5;51m
B_51 = \033[48;5;51m

# The Color-Variables with ASCII-Code 52
F_52 = \033[38;5;52m
B_52 = \033[48;5;52m

# The Color-Variables with ASCII-Code 53
F_53 = \033[38;5;53m
B_53 = \033[48;5;53m

# The Color-Variables with ASCII-Code 54
F_54 = \033[38;5;54m
B_54 = \033[48;5;54m

# The Color-Variables with ASCII-Code 55
F_55 = \033[38;5;55m
B_55 = \033[48;5;55m

# The Color-Variables with ASCII-Code 56
F_56 = \033[38;5;56m
B_56 = \033[48;5;56m

# The Color-Variables with ASCII-Code 57
F_57 = \033[38;5;57m
B_57 = \033[48;5;57m

# The Color-Variables with ASCII-Code 58
F_58 = \033[38;5;58m
B_58 = \033[48;5;58m

# The Color-Variables with ASCII-Code 59
F_59 = \033[38;5;59m
B_59 = \033[48;5;59m

# The Color-Variables with ASCII-Code 60
F_60 = \033[38;5;60m
B_60 = \033[48;5;60m

# The Color-Variables with ASCII-Code 61
F_61 = \033[38;5;61m
B_61 = \033[48;5;61m

# The Color-Variables with ASCII-Code 62
F_62 = \033[38;5;62m
B_62 = \033[48;5;62m

# The Color-Variables with ASCII-Code 63
F_63 = \033[38;5;63m
B_63 = \033[48;5;63m

# The Color-Variables with ASCII-Code 64
F_64 = \033[38;5;64m
B_64 = \033[48;5;64m

# The Color-Variables with ASCII-Code 65
F_65 = \033[38;5;65m
B_65 = \033[48;5;65m

# The Color-Variables with ASCII-Code 66
F_66 = \033[38;5;66m
B_66 = \033[48;5;66m

# The Color-Variables with ASCII-Code 67
F_67 = \033[38;5;67m
B_67 = \033[48;5;67m

# The Color-Variables with ASCII-Code 68
F_68 = \033[38;5;68m
B_68 = \033[48;5;68m

# The Color-Variables with ASCII-Code 69
F_69 = \033[38;5;69m
B_69 = \033[48;5;69m

# The Color-Variables with ASCII-Code 70
F_70 = \033[38;5;70m
B_70 = \033[48;5;70m

# The Color-Variables with ASCII-Code 71
F_71 = \033[38;5;71m
B_71 = \033[48;5;71m

# The Color-Variables with ASCII-Code 72
F_72 = \033[38;5;72m
B_72 = \033[48;5;72m

# The Color-Variables with ASCII-Code 73
F_73 = \033[38;5;73m
B_73 = \033[48;5;73m

# The Color-Variables with ASCII-Code 74
F_74 = \033[38;5;74m
B_74 = \033[48;5;74m

# The Color-Variables with ASCII-Code 75
F_75 = \033[38;5;75m
B_75 = \033[48;5;75m

# The Color-Variables with ASCII-Code 76
F_76 = \033[38;5;76m
B_76 = \033[48;5;76m

# The Color-Variables with ASCII-Code 77
F_77 = \033[38;5;77m
B_77 = \033[48;5;77m

# The Color-Variables with ASCII-Code 78
F_78 = \033[38;5;78m
B_78 = \033[48;5;78m

# The Color-Variables with ASCII-Code 79
F_79 = \033[38;5;79m
B_79 = \033[48;5;79m

# The Color-Variables with ASCII-Code 80
F_80 = \033[38;5;80m
B_80 = \033[48;5;80m

# The Color-Variables with ASCII-Code 81
F_81 = \033[38;5;81m
B_81 = \033[48;5;81m

# The Color-Variables with ASCII-Code 82
F_82 = \033[38;5;82m
B_82 = \033[48;5;82m

# The Color-Variables with ASCII-Code 83
F_83 = \033[38;5;83m
B_83 = \033[48;5;83m

# The Color-Variables with ASCII-Code 84
F_84 = \033[38;5;84m
B_84 = \033[48;5;84m

# The Color-Variables with ASCII-Code 85
F_85 = \033[38;5;85m
B_85 = \033[48;5;85m

# The Color-Variables with ASCII-Code 86
F_86 = \033[38;5;86m
B_86 = \033[48;5;86m

# The Color-Variables with ASCII-Code 87
F_87 = \033[38;5;87m
B_87 = \033[48;5;87m

# The Color-Variables with ASCII-Code 88
F_88 = \033[38;5;88m
B_88 = \033[48;5;88m

# The Color-Variables with ASCII-Code 89
F_89 = \033[38;5;89m
B_89 = \033[48;5;89m

# The Color-Variables with ASCII-Code 90
F_90 = \033[38;5;90m
B_90 = \033[48;5;90m

# The Color-Variables with ASCII-Code 91
F_91 = \033[38;5;91m
B_91 = \033[48;5;91m

# The Color-Variables with ASCII-Code 92
F_92 = \033[38;5;92m
B_92 = \033[48;5;92m

# The Color-Variables with ASCII-Code 93
F_93 = \033[38;5;93m
B_93 = \033[48;5;93m

# The Color-Variables with ASCII-Code 94
F_94 = \033[38;5;94m
B_94 = \033[48;5;94m

# The Color-Variables with ASCII-Code 95
F_95 = \033[38;5;95m
B_95 = \033[48;5;95m

# The Color-Variables with ASCII-Code 96
F_96 = \033[38;5;96m
B_96 = \033[48;5;96m

# The Color-Variables with ASCII-Code 97
F_97 = \033[38;5;97m
B_97 = \033[48;5;97m

# The Color-Variables with ASCII-Code 98
F_98 = \033[38;5;98m
B_98 = \033[48;5;98m

# The Color-Variables with ASCII-Code 99
F_99 = \033[38;5;99m
B_99 = \033[48;5;99m

# The Color-Variables with ASCII-Code 100
F_100 = \033[38;5;100m
B_100 = \033[48;5;100m

# The Color-Variables with ASCII-Code 101
F_101 = \033[38;5;101m
B_101 = \033[48;5;101m

# The Color-Variables with ASCII-Code 102
F_102 = \033[38;5;102m
B_102 = \033[48;5;102m

# The Color-Variables with ASCII-Code 103
F_103 = \033[38;5;103m
B_103 = \033[48;5;103m

# The Color-Variables with ASCII-Code 104
F_104 = \033[38;5;104m
B_104 = \033[48;5;104m

# The Color-Variables with ASCII-Code 105
F_105 = \033[38;5;105m
B_105 = \033[48;5;105m

# The Color-Variables with ASCII-Code 106
F_106 = \033[38;5;106m
B_106 = \033[48;5;106m

# The Color-Variables with ASCII-Code 107
F_107 = \033[38;5;107m
B_107 = \033[48;5;107m

# The Color-Variables with ASCII-Code 108
F_108 = \033[38;5;108m
B_108 = \033[48;5;108m

# The Color-Variables with ASCII-Code 109
F_109 = \033[38;5;109m
B_109 = \033[48;5;109m

# The Color-Variables with ASCII-Code 110
F_110 = \033[38;5;110m
B_110 = \033[48;5;110m

# The Color-Variables with ASCII-Code 111
F_111 = \033[38;5;111m
B_111 = \033[48;5;111m

# The Color-Variables with ASCII-Code 112
F_112 = \033[38;5;112m
B_112 = \033[48;5;112m

# The Color-Variables with ASCII-Code 113
F_113 = \033[38;5;113m
B_113 = \033[48;5;113m

# The Color-Variables with ASCII-Code 114
F_114 = \033[38;5;114m
B_114 = \033[48;5;114m

# The Color-Variables with ASCII-Code 115
F_115 = \033[38;5;115m
B_115 = \033[48;5;115m

# The Color-Variables with ASCII-Code 116
F_116 = \033[38;5;116m
B_116 = \033[48;5;116m

# The Color-Variables with ASCII-Code 117
F_117 = \033[38;5;117m
B_117 = \033[48;5;117m

# The Color-Variables with ASCII-Code 118
F_118 = \033[38;5;118m
B_118 = \033[48;5;118m

# The Color-Variables with ASCII-Code 119
F_119 = \033[38;5;119m
B_119 = \033[48;5;119m

# The Color-Variables with ASCII-Code 120
F_120 = \033[38;5;120m
B_120 = \033[48;5;120m

# The Color-Variables with ASCII-Code 121
F_121 = \033[38;5;121m
B_121 = \033[48;5;121m

# The Color-Variables with ASCII-Code 122
F_122 = \033[38;5;122m
B_122 = \033[48;5;122m

# The Color-Variables with ASCII-Code 123
F_123 = \033[38;5;123m
B_123 = \033[48;5;123m

# The Color-Variables with ASCII-Code 124
F_124 = \033[38;5;124m
B_124 = \033[48;5;124m

# The Color-Variables with ASCII-Code 125
F_125 = \033[38;5;125m
B_125 = \033[48;5;125m

# The Color-Variables with ASCII-Code 126
F_126 = \033[38;5;126m
B_126 = \033[48;5;126m

# The Color-Variables with ASCII-Code 127
F_127 = \033[38;5;127m
B_127 = \033[48;5;127m

# The Color-Variables with ASCII-Code 128
F_128 = \033[38;5;128m
B_128 = \033[48;5;128m

# The Color-Variables with ASCII-Code 129
F_129 = \033[38;5;129m
B_129 = \033[48;5;129m

# The Color-Variables with ASCII-Code 130
F_130 = \033[38;5;130m
B_130 = \033[48;5;130m

# The Color-Variables with ASCII-Code 131
F_131 = \033[38;5;131m
B_131 = \033[48;5;131m

# The Color-Variables with ASCII-Code 132
F_132 = \033[38;5;132m
B_132 = \033[48;5;132m

# The Color-Variables with ASCII-Code 133
F_133 = \033[38;5;133m
B_133 = \033[48;5;133m

# The Color-Variables with ASCII-Code 134
F_134 = \033[38;5;134m
B_134 = \033[48;5;134m

# The Color-Variables with ASCII-Code 135
F_135 = \033[38;5;135m
B_135 = \033[48;5;135m

# The Color-Variables with ASCII-Code 136
F_136 = \033[38;5;136m
B_136 = \033[48;5;136m

# The Color-Variables with ASCII-Code 137
F_137 = \033[38;5;137m
B_137 = \033[48;5;137m

# The Color-Variables with ASCII-Code 138
F_138 = \033[38;5;138m
B_138 = \033[48;5;138m

# The Color-Variables with ASCII-Code 139
F_139 = \033[38;5;139m
B_139 = \033[48;5;139m

# The Color-Variables with ASCII-Code 140
F_140 = \033[38;5;140m
B_140 = \033[48;5;140m

# The Color-Variables with ASCII-Code 141
F_141 = \033[38;5;141m
B_141 = \033[48;5;141m

# The Color-Variables with ASCII-Code 142
F_142 = \033[38;5;142m
B_142 = \033[48;5;142m

# The Color-Variables with ASCII-Code 143
F_143 = \033[38;5;143m
B_143 = \033[48;5;143m

# The Color-Variables with ASCII-Code 144
F_144 = \033[38;5;144m
B_144 = \033[48;5;144m

# The Color-Variables with ASCII-Code 145
F_145 = \033[38;5;145m
B_145 = \033[48;5;145m

# The Color-Variables with ASCII-Code 146
F_146 = \033[38;5;146m
B_146 = \033[48;5;146m

# The Color-Variables with ASCII-Code 147
F_147 = \033[38;5;147m
B_147 = \033[48;5;147m

# The Color-Variables with ASCII-Code 148
F_148 = \033[38;5;148m
B_148 = \033[48;5;148m

# The Color-Variables with ASCII-Code 149
F_149 = \033[38;5;149m
B_149 = \033[48;5;149m

# The Color-Variables with ASCII-Code 150
F_150 = \033[38;5;150m
B_150 = \033[48;5;150m

# The Color-Variables with ASCII-Code 151
F_151 = \033[38;5;151m
B_151 = \033[48;5;151m

# The Color-Variables with ASCII-Code 152
F_152 = \033[38;5;152m
B_152 = \033[48;5;152m

# The Color-Variables with ASCII-Code 153
F_153 = \033[38;5;153m
B_153 = \033[48;5;153m

# The Color-Variables with ASCII-Code 154
F_154 = \033[38;5;154m
B_154 = \033[48;5;154m

# The Color-Variables with ASCII-Code 155
F_155 = \033[38;5;155m
B_155 = \033[48;5;155m

# The Color-Variables with ASCII-Code 156
F_156 = \033[38;5;156m
B_156 = \033[48;5;156m

# The Color-Variables with ASCII-Code 157
F_157 = \033[38;5;157m
B_157 = \033[48;5;157m

# The Color-Variables with ASCII-Code 158
F_158 = \033[38;5;158m
B_158 = \033[48;5;158m

# The Color-Variables with ASCII-Code 159
F_159 = \033[38;5;159m
B_159 = \033[48;5;159m

# The Color-Variables with ASCII-Code 160
F_160 = \033[38;5;160m
B_160 = \033[48;5;160m

# The Color-Variables with ASCII-Code 161
F_161 = \033[38;5;161m
B_161 = \033[48;5;161m

# The Color-Variables with ASCII-Code 162
F_162 = \033[38;5;162m
B_162 = \033[48;5;162m

# The Color-Variables with ASCII-Code 163
F_163 = \033[38;5;163m
B_163 = \033[48;5;163m

# The Color-Variables with ASCII-Code 164
F_164 = \033[38;5;164m
B_164 = \033[48;5;164m

# The Color-Variables with ASCII-Code 165
F_165 = \033[38;5;165m
B_165 = \033[48;5;165m

# The Color-Variables with ASCII-Code 166
F_166 = \033[38;5;166m
B_166 = \033[48;5;166m

# The Color-Variables with ASCII-Code 167
F_167 = \033[38;5;167m
B_167 = \033[48;5;167m

# The Color-Variables with ASCII-Code 168
F_168 = \033[38;5;168m
B_168 = \033[48;5;168m

# The Color-Variables with ASCII-Code 169
F_169 = \033[38;5;169m
B_169 = \033[48;5;169m

# The Color-Variables with ASCII-Code 170
F_170 = \033[38;5;170m
B_170 = \033[48;5;170m

# The Color-Variables with ASCII-Code 171
F_171 = \033[38;5;171m
B_171 = \033[48;5;171m

# The Color-Variables with ASCII-Code 172
F_172 = \033[38;5;172m
B_172 = \033[48;5;172m

# The Color-Variables with ASCII-Code 173
F_173 = \033[38;5;173m
B_173 = \033[48;5;173m

# The Color-Variables with ASCII-Code 174
F_174 = \033[38;5;174m
B_174 = \033[48;5;174m

# The Color-Variables with ASCII-Code 175
F_175 = \033[38;5;175m
B_175 = \033[48;5;175m

# The Color-Variables with ASCII-Code 176
F_176 = \033[38;5;176m
B_176 = \033[48;5;176m

# The Color-Variables with ASCII-Code 177
F_177 = \033[38;5;177m
B_177 = \033[48;5;177m

# The Color-Variables with ASCII-Code 178
F_178 = \033[38;5;178m
B_178 = \033[48;5;178m

# The Color-Variables with ASCII-Code 179
F_179 = \033[38;5;179m
B_179 = \033[48;5;179m

# The Color-Variables with ASCII-Code 180
F_180 = \033[38;5;180m
B_180 = \033[48;5;180m

# The Color-Variables with ASCII-Code 181
F_181 = \033[38;5;181m
B_181 = \033[48;5;181m

# The Color-Variables with ASCII-Code 182
F_182 = \033[38;5;182m
B_182 = \033[48;5;182m

# The Color-Variables with ASCII-Code 183
F_183 = \033[38;5;183m
B_183 = \033[48;5;183m

# The Color-Variables with ASCII-Code 184
F_184 = \033[38;5;184m
B_184 = \033[48;5;184m

# The Color-Variables with ASCII-Code 185
F_185 = \033[38;5;185m
B_185 = \033[48;5;185m

# The Color-Variables with ASCII-Code 186
F_186 = \033[38;5;186m
B_186 = \033[48;5;186m

# The Color-Variables with ASCII-Code 187
F_187 = \033[38;5;187m
B_187 = \033[48;5;187m

# The Color-Variables with ASCII-Code 188
F_188 = \033[38;5;188m
B_188 = \033[48;5;188m

# The Color-Variables with ASCII-Code 189
F_189 = \033[38;5;189m
B_189 = \033[48;5;189m

# The Color-Variables with ASCII-Code 190
F_190 = \033[38;5;190m
B_190 = \033[48;5;190m

# The Color-Variables with ASCII-Code 191
F_191 = \033[38;5;191m
B_191 = \033[48;5;191m

# The Color-Variables with ASCII-Code 192
F_192 = \033[38;5;192m
B_192 = \033[48;5;192m

# The Color-Variables with ASCII-Code 193
F_193 = \033[38;5;193m
B_193 = \033[48;5;193m

# The Color-Variables with ASCII-Code 194
F_194 = \033[38;5;194m
B_194 = \033[48;5;194m

# The Color-Variables with ASCII-Code 195
F_195 = \033[38;5;195m
B_195 = \033[48;5;195m

# The Color-Variables with ASCII-Code 196
F_196 = \033[38;5;196m
B_196 = \033[48;5;196m

# The Color-Variables with ASCII-Code 197
F_197 = \033[38;5;197m
B_197 = \033[48;5;197m

# The Color-Variables with ASCII-Code 198
F_198 = \033[38;5;198m
B_198 = \033[48;5;198m

# The Color-Variables with ASCII-Code 199
F_199 = \033[38;5;199m
B_199 = \033[48;5;199m

# The Color-Variables with ASCII-Code 200
F_200 = \033[38;5;200m
B_200 = \033[48;5;200m

# The Color-Variables with ASCII-Code 201
F_201 = \033[38;5;201m
B_201 = \033[48;5;201m

# The Color-Variables with ASCII-Code 202
F_202 = \033[38;5;202m
B_202 = \033[48;5;202m

# The Color-Variables with ASCII-Code 203
F_203 = \033[38;5;203m
B_203 = \033[48;5;203m

# The Color-Variables with ASCII-Code 204
F_204 = \033[38;5;204m
B_204 = \033[48;5;204m

# The Color-Variables with ASCII-Code 205
F_205 = \033[38;5;205m
B_205 = \033[48;5;205m

# The Color-Variables with ASCII-Code 206
F_206 = \033[38;5;206m
B_206 = \033[48;5;206m

# The Color-Variables with ASCII-Code 207
F_207 = \033[38;5;207m
B_207 = \033[48;5;207m

# The Color-Variables with ASCII-Code 208
F_208 = \033[38;5;208m
B_208 = \033[48;5;208m

# The Color-Variables with ASCII-Code 209
F_209 = \033[38;5;209m
B_209 = \033[48;5;209m

# The Color-Variables with ASCII-Code 210
F_210 = \033[38;5;210m
B_210 = \033[48;5;210m

# The Color-Variables with ASCII-Code 211
F_211 = \033[38;5;211m
B_211 = \033[48;5;211m

# The Color-Variables with ASCII-Code 212
F_212 = \033[38;5;212m
B_212 = \033[48;5;212m

# The Color-Variables with ASCII-Code 213
F_213 = \033[38;5;213m
B_213 = \033[48;5;213m

# The Color-Variables with ASCII-Code 214
F_214 = \033[38;5;214m
B_214 = \033[48;5;214m

# The Color-Variables with ASCII-Code 215
F_215 = \033[38;5;215m
B_215 = \033[48;5;215m

# The Color-Variables with ASCII-Code 216
F_216 = \033[38;5;216m
B_216 = \033[48;5;216m

# The Color-Variables with ASCII-Code 217
F_217 = \033[38;5;217m
B_217 = \033[48;5;217m

# The Color-Variables with ASCII-Code 218
F_218 = \033[38;5;218m
B_218 = \033[48;5;218m

# The Color-Variables with ASCII-Code 219
F_219 = \033[38;5;219m
B_219 = \033[48;5;219m

# The Color-Variables with ASCII-Code 220
F_220 = \033[38;5;220m
B_220 = \033[48;5;220m

# The Color-Variables with ASCII-Code 221
F_221 = \033[38;5;221m
B_221 = \033[48;5;221m

# The Color-Variables with ASCII-Code 222
F_222 = \033[38;5;222m
B_222 = \033[48;5;222m

# The Color-Variables with ASCII-Code 223
F_223 = \033[38;5;223m
B_223 = \033[48;5;223m

# The Color-Variables with ASCII-Code 224
F_224 = \033[38;5;224m
B_224 = \033[48;5;224m

# The Color-Variables with ASCII-Code 225
F_225 = \033[38;5;225m
B_225 = \033[48;5;225m

# The Color-Variables with ASCII-Code 226
F_226 = \033[38;5;226m
B_226 = \033[48;5;226m

# The Color-Variables with ASCII-Code 227
F_227 = \033[38;5;227m
B_227 = \033[48;5;227m

# The Color-Variables with ASCII-Code 228
F_228 = \033[38;5;228m
B_228 = \033[48;5;228m

# The Color-Variables with ASCII-Code 229
F_229 = \033[38;5;229m
B_229 = \033[48;5;229m

# The Color-Variables with ASCII-Code 230
F_230 = \033[38;5;230m
B_230 = \033[48;5;230m

# The Color-Variables with ASCII-Code 231
F_231 = \033[38;5;231m
B_231 = \033[48;5;231m

# The Color-Variables with ASCII-Code 232
F_232 = \033[38;5;232m
B_232 = \033[48;5;232m

# The Color-Variables with ASCII-Code 233
F_233 = \033[38;5;233m
B_233 = \033[48;5;233m

# The Color-Variables with ASCII-Code 234
F_234 = \033[38;5;234m
B_234 = \033[48;5;234m

# The Color-Variables with ASCII-Code 235
F_235 = \033[38;5;235m
B_235 = \033[48;5;235m

# The Color-Variables with ASCII-Code 236
F_236 = \033[38;5;236m
B_236 = \033[48;5;236m

# The Color-Variables with ASCII-Code 237
F_237 = \033[38;5;237m
B_237 = \033[48;5;237m

# The Color-Variables with ASCII-Code 238
F_238 = \033[38;5;238m
B_238 = \033[48;5;238m

# The Color-Variables with ASCII-Code 239
F_239 = \033[38;5;239m
B_239 = \033[48;5;239m

# The Color-Variables with ASCII-Code 240
F_240 = \033[38;5;240m
B_240 = \033[48;5;240m

# The Color-Variables with ASCII-Code 241
F_241 = \033[38;5;241m
B_241 = \033[48;5;241m

# The Color-Variables with ASCII-Code 242
F_242 = \033[38;5;242m
B_242 = \033[48;5;242m

# The Color-Variables with ASCII-Code 243
F_243 = \033[38;5;243m
B_243 = \033[48;5;243m

# The Color-Variables with ASCII-Code 244
F_244 = \033[38;5;244m
B_244 = \033[48;5;244m

# The Color-Variables with ASCII-Code 245
F_245 = \033[38;5;245m
B_245 = \033[48;5;245m

# The Color-Variables with ASCII-Code 246
F_246 = \033[38;5;246m
B_246 = \033[48;5;246m

# The Color-Variables with ASCII-Code 247
F_247 = \033[38;5;247m
B_247 = \033[48;5;247m

# The Color-Variables with ASCII-Code 248
F_248 = \033[38;5;248m
B_248 = \033[48;5;248m

# The Color-Variables with ASCII-Code 249
F_249 = \033[38;5;249m
B_249 = \033[48;5;249m

# The Color-Variables with ASCII-Code 250
F_250 = \033[38;5;250m
B_250 = \033[48;5;250m

# The Color-Variables with ASCII-Code 251
F_251 = \033[38;5;251m
B_251 = \033[48;5;251m

# The Color-Variables with ASCII-Code 252
F_252 = \033[38;5;252m
B_252 = \033[48;5;252m

# The Color-Variables with ASCII-Code 253
F_253 = \033[38;5;253m
B_253 = \033[48;5;253m

# The Color-Variables with ASCII-Code 254
F_254 = \033[38;5;254m
B_254 = \033[48;5;254m

# The Color-Variables with ASCII-Code 255
F_255 = \033[38;5;255m
B_255 = \033[48;5;255m
