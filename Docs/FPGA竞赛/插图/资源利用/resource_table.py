import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt

# mpl.rcParams['text.usetex'] = True

col_label = [r'$Resource$',r'$Utilization$',r'$Available$',r'$Utilization\ %$']
name = [r'$LUT$',r'$LUTRAM$',r'$FF$',r'$BRAM$',r'$DSP$',r'$IO$',r'$MMCM$',r'$PLL$']
text_list = [name,
            [45071, 3382, 22820, 134, 176, 152, 3, 3],
            [133800, 46200, 267600, 365, 740, 285, 10, 10],
            [33.69, 7.32, 8.53, 36.71, 23.78, 53.33, 30.00, 30.00]
            ]
table_text = np.array(text_list).T
plt.table(table_text,colLabels=col_label)

plt.show()