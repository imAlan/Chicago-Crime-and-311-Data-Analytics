import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.FloatWritable;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;

public class graffiti {

  public static void main(String[] args) throws Exception {
    if (args.length != 2) {
      System.err.println("Usage: graffiti <input path> <output path>");
      System.exit(-1);
    }
    
    @SuppressWarnings("deprecation")
	Job job = new Job();
    job.setJarByClass(graffiti.class);
    job.setJobName("graffiti");
 
    FileInputFormat.addInputPath(job, new Path(args[0]));
    FileOutputFormat.setOutputPath(job, new Path(args[1]));
    
    job.setMapperClass(graffitiMapper.class);
    job.setReducerClass(graffitiReducer.class);

    job.setOutputKeyClass(Text.class);
    job.setOutputValueClass(IntWritable.class);
    
    System.exit(job.waitForCompletion(true) ? 0 : 1);
  }
}