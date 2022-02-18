import matplotlib as mpl
import matplotlib.pyplot as plt

# mpl.rcParams['text.usetex'] = True

name = [r'$LUT$',r'$LUTRAM$',r'$FF$',r'$BRAM$',r'$DSP$',r'$IO$',r'$MMCM$',r'$PLL$']
data = [34, 7, 9, 37, 24, 53, 30, 30]

fig, ax = plt.subplots(figsize=(10,6))

ax.barh(name, data, height=.3, color='lime')
ax.set_xlim(0,100)
ax.set_xlabel('Utilization(%)')
ax.grid(axis='x', linestyle='-')

for i in range(len(name)):
    plt.text(data[i], name[i], s=str(data[i])+'%')

plt.show()