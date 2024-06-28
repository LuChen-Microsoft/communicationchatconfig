import "@azure-tools/typespec-azure-core";
import "@typespec/http";
import "@typespec/rest";
import "@azure-tools/typespec-client-generator-core";
import "./models.tsp";

using TypeSpec.Versioning;
using TypeSpec.Rest;
using TypeSpec.Http;
using Azure.Core.Traits;
using Azure.ClientGenerator.Core;

@versioned(Azure.Communication.Chat.Config.Versions)
namespace Azure.Communication.Chat.Config;


interface ChatCommunicationOperations {
  @summary("Gets a real time notification.")
  @doc("Gets a real time notification.")
  @route("/chat/config/realtimenotification")
  @get
  @useAuth(BearerAuth)
  getRealTimeNotificationConfig is Azure.Core.Foundations.Operation<
    {}, RealTimeNotificationConfig
  >;
}
  