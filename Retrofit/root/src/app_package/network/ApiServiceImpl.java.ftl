package ${packageName}.network;

<#if isAddRetrofitLoggingInterceptor>
    import okhttp3.OkHttpClient;
</#if>
<#if isAddRetrofitLoggingInterceptor>
    import okhttp3.logging.HttpLoggingInterceptor;
</#if>
import retrofit2.Call;
import retrofit2.GsonConverterFactory;
import retrofit2.Retrofit;

/**
 * The api service implementation
 */
public class ${apiServiceClass}Impl implements ${apiServiceClass} {
    <#if isAddRetrofitLoggingInterceptor>
        private OkHttpClient mOkHttpClient;
    </#if>
    private ${retrofitServiceClass} mApi;

    public ${apiServiceClass}Impl() {
        <#if isAddRetrofitLoggingInterceptor>
            HttpLoggingInterceptor logging = new HttpLoggingInterceptor();
            logging.setLevel(HttpLoggingInterceptor.Level.BODY);
            mOkHttpClient = new OkHttpClient.Builder()
            .addInterceptor(logging)
            .build();
        </#if>

        mApi = new Retrofit.Builder()
                .baseUrl(${retrofitServiceClass}.END_POINT)
                .addConverterFactory(GsonConverterFactory.create())
                <#if isAddRetrofitLoggingInterceptor>
                    .client(mOkHttpClient)
                </#if>
                .build()
                .create(${retrofitServiceClass}.class);
    }

    @Override
    public Call<${resulDataClass}> requestToRetrofitServiceExample() {
        return mApi.getDataRequestExample();
    }
}