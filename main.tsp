import "@typespec/rest";
import "@typespec/http";
import "@typespec/versioning";
import "@azure-tools/typespec-azure-core";
import "./routes.tsp";

using TypeSpec.Http;
using TypeSpec.Rest;
using TypeSpec.Versioning;
using Azure.Core;

#suppress "@azure-tools/typespec-autorest/unsupported-http-auth-scheme" ""
@service({
  title: "CommunicationChatConfigClient",
})
//@useAuth(BearerAuth)
@server(
  "{endpoint}",
  "Azure Communication Chat Config Service",
  {
    @doc("The communication resource, for example https://my-resource.communication.azure.com")
    endpoint: url,
  }
)
@versioned(Azure.Communication.Chat.Config.Versions)

namespace Azure.Communication.Chat.Config;





