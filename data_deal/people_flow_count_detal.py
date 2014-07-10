# -*- coding: utf-8 -*-  
#输入原来256个文件的流量，输出成增量


for i in range(1,226):
	f = open('15cells/%s.rst'%i,'r')  #先打开一个.rst文件

	fw = open('15cells_detal/detal%s.rst'%(i),'w')#用于写入增量值的文件

	lines = f.read().split('\n')#获得打开的某一个.rst文件的全部内容，lines是一个长度为37的数组，前30行为"用户数，包数，流量，基站数"，最后一行为""

	for j in range(0,36):#对每一有效行
		people_num = float(lines[j].split('\t')[0])#存储用户数
		if lines[j].split('\t')[2] != 'NULL':#存储流量数
			flow_num = float(lines[j].split('\t')[2])
		else:
			flow_num = 0
		if j!=0:#存储上个时间分片的用户数和流量数
			last_people_num = float(lines[j-1].split('\t')[0])#存储用户数
			if lines[j-1].split('\t')[2] != 'NULL':#存储流量数
				last_flow_num = float(lines[j-1].split('\t')[2])
			else:
				last_flow_num = 0

		if j==0:#写入增量文件中，第一小时是0
			fw.write('0')#用户数
			fw.write('\t')
			fw.write('0')#流量数
		else:
			if last_people_num==0:
				if people_num==0:
					fw.write('0')
				else:
					fw.write('1')
			else:
				fw.write(str((people_num-last_people_num)/last_people_num))#写入用户数
			fw.write('\t')
			if last_flow_num==0:
				if last_flow_num==0:
					if flow_num==0:
						fw.write('0')
					else:
						fw.write('1')
			else:
				fw.write(str((flow_num-last_flow_num)/last_flow_num))#写入用户数
		
		fw.write('\n')


	fw.close()#关闭写入的文件	
	f.close()#关闭读的文件

fw.close()
