CDOMOverlay <- function()
{
	require(lattice)
	file.data = choose.files(caption="Select CDOM file(s)")
	CDOM = list()
	for(i in 1:length(file.data))
	{
		data = read.table(file.data[i],skip=1,header=1,sep=",")
		WV <- data[,1]
		abs <- data[,2]
		CDOM[[i]] = cbind(WV,abs)
	}
	for(i in 1:length(CDOM))
	{
	  if(i < 9)	  {l.type = "l"}
	  if(i >= 9 & i < 17)	  {l.type = "p"}
	  if(i >= 17 & i < 25)	  {l.type = "c"}
    CDOM.temp = CDOM[[i]][,2]
		if(i==1)
		{
			plot(CDOM.temp~CDOM[[i]][,1],xlim=c(190,900),ylim=c(0,3),type=l.type,col=i,bg=i,main="")
		}
		else
		{
			lines(CDOM.temp~CDOM[[i]][,1], type=l.type, col =i,bg=i)
		}
	}
}

