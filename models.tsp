
import "@typespec/rest";
import "@typespec/versioning";
import "@azure-tools/typespec-autorest";
import "@azure-tools/typespec-azure-core";

using TypeSpec.Versioning;
using TypeSpec.Http;
using TypeSpec.Rest;
using Azure.Core;

@versioned(Azure.Communication.Chat.Config.Versions)
namespace Azure.Communication.Chat.Config;

@doc("Azure Communication Chat Config Service")
enum Versions {
  @doc("Azure Communication Chat Config 2024-09-01 api version")
  @useDependency(Azure.Core.Versions.v1_0_Preview_2)
  v2024_09_01: "2024-09-01",
}

@doc("Real time notification configuation")
model  RealTimeNotificationConfig {
    @doc("Trouter service endpoint.")
    trouterServiceUrl: string;
  
    @doc("Registrar service endpoint.")
    registrarServiceUrl: string;
  
    @doc("cloudType")
    cloudType?: string;
}