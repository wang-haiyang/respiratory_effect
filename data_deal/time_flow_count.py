# -*- coding: utf-8 -*-  
#time_flow文件夹共36个文件，代表2012年8月20日上午6点到24点每半小时的所有区块的流量数。用在带有时间轴的热图展示。
for a in range(1,37):
	print a	
	for i in range(1,226):
		f = open('15cells/%s.rst'%i,'r')
		fline = f.read().split('\n')
		if len(fline)-1<(a-1):
			continue
		line = fline[a-1]
		fw = open('time_flow_count/time_flow_count_%s.txt'%a,'a')

		if len(line.split('\t')) == 4:
			if line.split('\t')[2] != 'NULL':
				fw.write(str(int(float(line.split('\t')[2]))))
			else:
				fw.write('0')
		else:
			fw.write('0')
		fw.write('\t')
		fw.close()
