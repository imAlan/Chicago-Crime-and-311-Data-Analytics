import java.io.IOException;
import java.util.Arrays;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.commons.lang.StringUtils;

public class graffitiMapper extends Mapper<LongWritable, Text, Text,  IntWritable>{
	
	@Override 
	public void map (LongWritable key, Text value, Context context) throws IOException, InterruptedException
	{
		String line = value.toString();
		String[] arr = line.split(",");
		String year_area = "(" + arr[0] + "," + arr[2] +")";
		//System.out.println(year_area);
		context.write(new Text(year_area), new IntWritable(1));
	}
}
