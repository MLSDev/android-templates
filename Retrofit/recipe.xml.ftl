<?xml version="1.0"?>
<recipe>

	<instantiate from="src/app_package/network/RetrofitService.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/network/${retrofitServiceClass}.java" />
	
	<open file="${escapeXmlAttribute(srcOut)}/network/${retrofitServiceClass}.java" />

    <instantiate from="src/app_package/network/ApiService.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/network/${apiServiceClass}.java" />

	<open file="${escapeXmlAttribute(srcOut)}/network/${apiServiceClass}.java" />

    <instantiate from="src/app_package/network/ApiServiceImpl.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/network/${apiServiceClass}Impl.java" />

    <open file="${escapeXmlAttribute(srcOut)}/network/${apiServiceClass}Impl.java" />

</recipe>
