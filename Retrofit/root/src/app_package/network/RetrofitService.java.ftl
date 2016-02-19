package ${packageName}.network;

import retrofit2.Call;
import retrofit2.http.GET;

/**
 * A custom retrofit service.
 */
public interface ${retrofitServiceClass} {
	String END_POINT = "https://www.example.com/";
	
	// Add your requests here

	@GET("example/path")
    Call<${resulDataClass}> getDataRequestExample();	

}
