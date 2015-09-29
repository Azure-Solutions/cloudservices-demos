<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="MyFixItCloudService" generation="1" functional="0" release="0" Id="f6499c71-8e1a-4949-bb19-36206882bb15" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="MyFixItCloudServiceGroup" generation="1" functional="0" release="0">
      <settings>
        <aCS name="MyFixIt.WorkerRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/MyFixItCloudService/MyFixItCloudServiceGroup/MapMyFixIt.WorkerRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="MyFixIt.WorkerRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/MyFixItCloudService/MyFixItCloudServiceGroup/MapMyFixIt.WorkerRoleInstances" />
          </maps>
        </aCS>
      </settings>
      <maps>
        <map name="MapMyFixIt.WorkerRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/MyFixItCloudService/MyFixItCloudServiceGroup/MyFixIt.WorkerRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapMyFixIt.WorkerRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/MyFixItCloudService/MyFixItCloudServiceGroup/MyFixIt.WorkerRoleInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="MyFixIt.WorkerRole" generation="1" functional="0" release="0" software="C:\Src\Repos\cloudservices-demos2\MyFixIt\C#\MyFixItCloudService\csx\Debug\roles\MyFixIt.WorkerRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;MyFixIt.WorkerRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;MyFixIt.WorkerRole&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/MyFixItCloudService/MyFixItCloudServiceGroup/MyFixIt.WorkerRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/MyFixItCloudService/MyFixItCloudServiceGroup/MyFixIt.WorkerRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/MyFixItCloudService/MyFixItCloudServiceGroup/MyFixIt.WorkerRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="MyFixIt.WorkerRoleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="MyFixIt.WorkerRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="MyFixIt.WorkerRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
</serviceModel>