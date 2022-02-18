import matplotlib as mpl
import matplotlib.pyplot as plt
import math

mpl.rcParams['text.usetex'] = True

fig = plt.figure(figsize=(6,3),dpi=180)
bwidth = 1.5

weights1 = [20105,14751,7786,2429]
label1 = [r'$ACC$', r'$M3Core$',r'$DDR$', r'$Others(BUS,DMA,etc)$']
explode1 = (0.05,0.01,0.01,.01,)
color1 = ["lightslategrey","seagreen","coral","brown"]

ax1 = fig.add_subplot(1,2,1)
plt.title(r'$LUT\ Utilization$')
plt.pie(weights1, labels=label1,colors=color1,explode=explode1, pctdistance=0.7,autopct='%1.2f%%',startangle=100)

weights2 = [67,32,16,16,3]
label2 = [r'$ACC$', r'$Camera$',r'$ITCM$', r'$DTCM$', r'$DDR$']
explode2 = (0.05,0.01,0.01,0.01,0.01)
color2 = ["lightslategrey","seagreen","coral","brown"]

ax2 = fig.add_subplot(1,2,2)
plt.title(r'$BRAM\ Utilization$')
plt.pie(weights2, labels=label2,colors=color2,explode=explode2, pctdistance=0.7,autopct='%1.2f%%',startangle=50)

plt.show()
# plt.savefig('util_part.png',dpi=600)