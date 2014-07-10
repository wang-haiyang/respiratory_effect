# -*- coding: utf-8 -*-  
#time_flow文件夹共36个文件，代表2012年8月20日上午6点到24点每半小时的所有区块的流量数。用在带有时间轴的热图展示。
for a in range(1,37):
	print a	
	for i in range(1,226):
		f = open('15cells_detal/detal%s.rst'%i,'r')
		line = f.read().split('\n')

		fw = open('time_flow_count_detal/time_people_count_%s.txt'%a,'a')
		people_incrate = line[a-1].split('\t')[0]
		fw.write(people_incrate)
		fw.write('\t')

		fw.close()
		f.close()
