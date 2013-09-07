#import<Foundation/Foundation.h>

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSDictionary *key_value = [NSDictionary dictionaryWithObjectsAndKeys:
	             				[NSNumber numberWithInt:10], @"centimeter",
             					[NSNumber numberWithInt:40], @"pound",
             					[NSNumber numberWithInt:50], @"ounce",
            	 				[NSNumber numberWithInt:20], @"kilogram",
									[NSNumber numberWithInt:30], @"yard", 
									[NSNumber numberWithInt:10], @"millimeter",
									[NSNumber numberWithInt:10], @"kiloMeter", 
									[NSNumber numberWithInt:20], @"milligram", 
									[NSNumber numberWithInt:20], @"gram", 
									[NSNumber numberWithInt:10], @"Meter", nil];
   int flag=0;//For checking if any key exists ending with meter
	   
   //Enumeration
	for(NSString* key in key_value)
	{
      //Checking for all keys ending with meter in a case-sensitive way.
		if ([key rangeOfString:@"meter" options: NSCaseInsensitiveSearch].location != NSNotFound)
		{  
         if(flag==0) //check condition to print the line only once n only when key ending with meter exists
         {
            	NSLog(@"The dictionary keys which end with meter/Meter are:\n");
         }
         flag=1;
			NSLog(@"Key: %@, Value: %@\n", key, [key_value objectForKey:key]);
		}
	}
   if(flag==0)
   {
      NSLog(@"No Keys ending with meter");
   }
   
	[pool release];
	return 0;
}