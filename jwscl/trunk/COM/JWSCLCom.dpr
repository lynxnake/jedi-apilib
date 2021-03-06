library JWSCLCom;

uses
  ComServ,
  JWSCLCom_TLB in 'JWSCLCom_TLB.pas',
  JwsclCoSid in 'JwsclCoSid.pas' {JwCoSid: CoClass},
  JwsclCOMExports in 'JwsclCOMExports.pas',
  JWSCLCoException in 'JWSCLCoException.pas',
  ComLib in 'Common\ComLib.pas',
  JwsclCoMapping in 'JwsclCoMapping.pas',
  JwsclComRegistration in 'JwsclComRegistration.pas',
  JwsclCoTerminalServer in 'JwsclCoTerminalServer.pas',
  JwsclCoLSA in 'JwsclCoLSA.pas',
  JwsclCoWTSSession in 'JwsclCoWTSSession.pas' {JwWTSSession: CoClass},
  JwsclCoWTSSessionList in 'JwsclCoWTSSessionList.pas' {JwWTSSessionList: CoClass},
  JwsclCoWTSProcess in 'JwsclCoWTSProcess.pas' {JwWTSProcess: CoClass},
  JwsclCoWTSProcessList in 'JwsclCoWTSProcessList.pas' {JwWTSProcessList: CoClass},
  JwsclCoWTSSessionShadow in 'JwsclCoWTSSessionShadow.pas' {JwWTSSessionShadow: CoClass},
  JwsclCoInheritTypeList in 'JwsclCoInheritTypeList.pas' {JwInheritTypeList: CoClass},
  JwsclCoAuthContext in 'JwsclCoAuthContext.pas',
  JwsclCoAuthResourceManager in 'JwsclCoAuthResourceManager.pas',
  JwsclCoAuthZAccessReply in 'JwsclCoAuthZAccessReply.pas',
  JwsclCoAuthZAccessRequest in 'JwsclCoAuthZAccessRequest.pas',
  JwsclCoCredentialsPrompt in 'JwsclCoCredentialsPrompt.pas',
  JwsclCoCredentialsTools in 'JwsclCoCredentialsTools.pas',
  JwsclCoCryptKey in 'JwsclCoCryptKey.pas',
  JwsclCoCryptProvider in 'JwsclCoCryptProvider.pas',
  JwsclCoDesktop in 'JwsclCoDesktop.pas',
  JwsclCoDesktops in 'JwsclCoDesktops.pas',
  JwsclCoEncryptData in 'JwsclCoEncryptData.pas',
  JwsclCoEncryptionApi in 'JwsclCoEncryptionApi.pas',
  JwsclCoEncryptMemory in 'JwsclCoEncryptMemory.pas',
  JwsclCoHash in 'JwsclCoHash.pas',
  JwsclCoImpersonation in 'JwsclCoImpersonation.pas',
  JwsclCoKnownSIDs in 'JwsclCoKnownSIDs.pas',
  JwsclCoLogging in 'JwsclCoLogging.pas',
  JwsclCoLoggingTests in 'JwsclCoLoggingTests.pas',
  JwsclCoLSALogonSession in 'JwsclCoLSALogonSession.pas',
  JwsclCoLSALogonSessionData in 'JwsclCoLSALogonSessionData.pas',
  JwsclCoPrivilegeScope in 'JwsclCoPrivilegeScope.pas',
  JwsclCoProcessUtils in 'JwsclCoProcessUtils.pas',
  JwsclCoProgressCallback in 'JwsclCoProgressCallback.pas',
  JwsclCoRandomDataGenerator in 'JwsclCoRandomDataGenerator.pas',
  JwsclCoSecureBaseClass in 'JwsclCoSecureBaseClass.pas',
  JwsclCoSecureFileObject in 'JwsclCoSecureFileObject.pas',
  JwsclCoSecureRegistryKey in 'JwsclCoSecureRegistryKey.pas',
  JwsclCoTerminalServerList in 'JwsclCoTerminalServerList.pas',
  JwsclCoThreadUserSid in 'JwsclCoThreadUserSid.pas',
  JwsclCoWindowStation in 'JwsclCoWindowStation.pas',
  JwsclCoWindowStations in 'JwsclCoWindowStations.pas',
  JwsclCoUtils in 'JwsclCoUtils.pas' {JwUtils: CoClass},
  JwsclCoElevationClassFactory in 'JwsclCoElevationClassFactory.pas' {JwElevationClassFactory: CoClass},
  JwsclCoExplicitAccessArray in 'JwsclCoExplicitAccessArray.pas' {JwExplicitAccessArray: CoClass},
  JwsclCoExplicitAccess in 'JwsclCoExplicitAccess.pas' {JwExplicitAccess: CoClass},
  JwsclCoGuidArray in 'JwsclCoGuidArray.pas' {JwGuidArray: CoClass},
  JwsclCoInheritedFromRecord in 'JwsclCoInheritedFromRecord.pas' {JwInheritedFromRecord: CoClass},
  JwCoInheritedFromArray in 'JwCoInheritedFromArray.pas' {JwInheritedFromArray: CoClass},
  JwsclCoRootTuple in 'JwsclCoRootTuple.pas' {JwRootTuple: CoClass},
  JwsclCoKeyRootTupleArray in 'JwsclCoKeyRootTupleArray.pas' {JwKeyRootTupleArray: CoClass},
  JwsclCoAccessMaskArray in 'JwsclCoAccessMaskArray.pas' {JwAccessMaskArray: CoClass},
  JwsclCoObjectTypeList in 'JwsclCoObjectTypeList.pas' {JwObjectTypeList: CoClass},
  JwsclCoObjectTypeListArray in 'JwsclCoObjectTypeListArray.pas' {JwObjectTypeListArray: CoClass},
  JwsclCoSIDInfoData in 'JwsclCoSIDInfoData.pas' {JwSIDInfoData: CoClass},
  JwsclCoSIDInfoDataArray in 'JwsclCoSIDInfoDataArray.pas' {JwSIDInfoDataArray: CoClass},
  JwsclCoSIAccessArray in 'JwsclCoSIAccessArray.pas' {JwSiAccessArray: CoClass},
  JwsclCoSIAccess in 'JwsclCoSIAccess.pas' {JwSiAccess: CoClass},
  JwsclCoStringArray in 'JwsclCoStringArray.pas' {JwStringArray: CoClass},
  JwsclCoEnumProviderArray in 'JwsclCoEnumProviderArray.pas' {JwEnumProviderArray: CoClass},
  JwsclCoEnumAlgorithmsEntry in 'JwsclCoEnumAlgorithmsEntry.pas' {JwEnumAlgorithmsEntry: CoClass},
  JwsclCoEnumAlgorithms in 'JwsclCoEnumAlgorithms.pas' {JwEnumAlgorithms: CoClass},
  JwsclCoEnumProviderEntry in 'JwsclCoEnumProviderEntry.pas' {JwEnumProviderEntry: CoClass},
  JwsclCoReplyErrorArray in 'JwsclCoReplyErrorArray.pas' {JwReplyErrorArray: CoClass},
  JwsclCoPointerList in 'JwsclCoPointerList.pas' {JwPointerList: CoClass},
  JwsclCoGenericList in 'JwsclCoGenericList.pas' {JwGenericList: CoClass},
  JwsclCoEnumSet in 'JwsclCoEnumSet.pas' {JwEnumSet: CoClass},
  JwsclCoAccessControlList in 'JwsclCoAccessControlList.pas' {test1: CoClass},
  JwsclCoAccessControlListTests in 'UnitTests\JwsclCoAccessControlListTests.pas',
  JwsclCoAccessControlEntry in 'JwsclCoAccessControlEntry.pas' {IJwAccessControlEntry2: CoClass};

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer,
  JwOleRaise,
  JwHasException,
  CreateSidAndAttributesStream
  ;



{$R *.TLB}

{$R *.RES}

begin
end.
