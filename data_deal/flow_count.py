# -*- coding: utf-8 -*-  
#flow_count.txt的内容是每个区块流量数，共255行，36列，代表每个区块中从上午6点到24点每半小时的流量数。该数据用在总的chart图展示。
#漏了第15个时间分片，13:00~13:30
fw = open('flow_count.txt','w')

for i in range(1,226):
	print i
	f = open('15cells/%s.rst'%i,'r')
	for lines in f.read().split('\n'):
		if lines != '':
			if len(lines.split('\t')) == 4:
				if lines.split('\t')[2] != 'NULL':
					fw.write(str(int(float(lines.split('\t')[2]))))
				else:
					fw.write('0')
			else:
				fw.write('0')
			fw.write('\t')

	fw.write('\n')
	f.close()

fw.close()
