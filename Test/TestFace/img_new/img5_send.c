#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <termios.h>
#include <errno.h>
#include <string.h>
#include <sys/signal.h>
#include <pthread.h>
#include <time.h>
#include <sys/select.h>

void setT(struct termios *t, unsigned short speed)
{
		bzero(t,sizeof(struct termios));
		t->c_cflag=speed|CS8|CREAD|CLOCAL;
		t->c_cflag &= ~CSTOPB;
		t->c_cflag &= ~PARODD;
		t->c_cflag &= ~CRTSCTS;
		t->c_iflag=IGNBRK|IGNPAR|IGNCR;
		t->c_iflag &= ~(IXON|IXOFF|IXANY|INLCR|ICRNL|IGNCR|INPCK|PARMRK);
		t->c_oflag &= ~(ONLCR|OCRNL);
		t->c_lflag &= ~(ICANON);;
		t->c_cc[VTIME]=0;
		t->c_cc[VMIN]=3;
}//串口配置

int main()
{
	printf("program begin\n");
	struct termios old,new1;
	int fd0;//串口标识符
	const char *dev0="/dev/ttyS3";//USB串口

	time_t now;
	struct tm *timenow;
	int flag1=0;
	while(1)
	{
		fd0 = open(dev0,O_RDWR|O_NOCTTY);
		if(fd0==-1)
		{
			if(flag1==0)
			{
				printf("please check serial port 0 connection and try again \n");
				flag1=1;
			}
			continue;
		}
		else 
		{
			printf("serial port connect successfully\n");		
			break;
		}
	}//串口打开

	FILE *fp;//日志文件标识符
	tcgetattr(fd0,&old);
	setT(&new1,B115200);//串口参数配置
	tcflush(fd0,TCIFLUSH);//串口刷新
	tcsetattr(fd0,TCSANOW,&new1);//串口设制
	
	//fp = fopen("weight&featuremap/img260.txt","r");
	//u_int32_t a[274576];
	fp = fopen("img_src/5.txt","r");
	u_int32_t a[76800];
	int i;
	int j = 0;
	if(fp == NULL)
	{
		printf("文件读取无效。\n");
		return -1;
	}
	for(i = 0; !feof(fp); i++)
		fscanf(fp, "%x", &a[i]);
	
	fclose(fp);
 
	for(i=0; i < 100; i++)
		printf("%x\n", a[i]);
	printf("\n");

	while(1) {
		
		write(fd0,&a[j],sizeof(u_int32_t));
		if(j==76799) break;
		j++;
	}
			
	close(fd0);

	return 0;
}
