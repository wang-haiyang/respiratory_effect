#/bin/bash  
  

count=0
cell=61
location=(1 2 3 4)


cat data61 | while read line
do 
  OLD_IFS="$IFS" 
  IFS=" " 
  arr=($line) 
  IFS="$OLD_IFS"
  count=0 
  for s in ${arr[@]} 
  do 
      location[count]="$s"
      count=$[$count+1] 
  done
 
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 06:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 06:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 06:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 07:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 07:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 07:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 07:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 08:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 08:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 08:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 08:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 09:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 09:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 09:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 09:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 10:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 10:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 10:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 10:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 11:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 11:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 11:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 11:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 12:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 12:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 12:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 12:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 13:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 13:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 13:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 13:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 14:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 14:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 14:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 14:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 15:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 15:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 15:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 15:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 16:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 16:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 16:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 16:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 17:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 17:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 17:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 17:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 18:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 18:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 18:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 18:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 19:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 19:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 19:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 19:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 20:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 20:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 20:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 20:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 21:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 21:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 21:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 21:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 22:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 22:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 22:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 22:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 23:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 23:00:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 23:30:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst
  hive -e "select count(distinct imsi),sum(packets),sum(web_volume),count(distinct logt,latt) from mobile_gis_0820 where unix_timestamp(ttime) >= unix_timestamp('2012-08-20 23:30:00') and unix_timestamp(ttime) < unix_timestamp('2012-08-20 24:00:00') and logt > '${location[0]}' and  logt < '${location[1]}' and latt > '${location[2]}' and latt < '${location[3]}';" >> /home/wanghaiyang/worspace/respiratory/0820/15/data/${cell}.rst  

cell=$[$cell+1]


done
  
