import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = ""
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("oceanbasepro", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
    }

    public func getEndpoint(_ productId: String, _ regionId: String, _ endpointRule: String, _ network: String, _ suffix: String, _ endpointMap: [String: String], _ endpoint: String) throws -> String {
        if (!TeaUtils.Client.empty(endpoint)) {
            return endpoint as! String
        }
        if (!TeaUtils.Client.isUnset(endpointMap) && !TeaUtils.Client.empty(endpointMap[regionId as! String])) {
            return endpointMap[regionId as! String] ?? ""
        }
        return try AlibabacloudEndpointUtil.Client.getEndpointRules(productId, regionId, endpointRule, network, suffix)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatabaseWithOptions(_ request: CreateDatabaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encoding)) {
            body["Encoding"] = request.encoding ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDatabase",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatabase(_ request: CreateDatabaseRequest) async throws -> CreateDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDatabaseWithOptions(request as! CreateDatabaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceWithOptions(_ request: CreateInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            body["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenewPeriod)) {
            body["AutoRenewPeriod"] = request.autoRenewPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            body["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskSize)) {
            body["DiskSize"] = request.diskSize!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceClass)) {
            body["InstanceClass"] = request.instanceClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            body["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            body["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.series)) {
            body["Series"] = request.series ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zones)) {
            body["Zones"] = request.zones ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstance",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstance(_ request: CreateInstanceRequest) async throws -> CreateInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createInstanceWithOptions(request as! CreateInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOmsMysqlDataSourceWithOptions(_ request: CreateOmsMysqlDataSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOmsMysqlDataSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dgDatabaseId)) {
            body["DgDatabaseId"] = request.dgDatabaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            body["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            body["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            body["Port"] = request.port ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schema)) {
            body["Schema"] = request.schema ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            body["Username"] = request.username ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOmsMysqlDataSource",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOmsMysqlDataSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOmsMysqlDataSource(_ request: CreateOmsMysqlDataSourceRequest) async throws -> CreateOmsMysqlDataSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOmsMysqlDataSourceWithOptions(request as! CreateOmsMysqlDataSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOmsOpenAPIProjectWithOptions(_ tmpReq: CreateOmsOpenAPIProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOmsOpenAPIProjectResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateOmsOpenAPIProjectShrinkRequest = CreateOmsOpenAPIProjectShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.destConfig)) {
            request.destConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.destConfig, "DestConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.labelIds)) {
            request.labelIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.labelIds, "LabelIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sourceConfig)) {
            request.sourceConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceConfig, "SourceConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.transferMapping)) {
            request.transferMappingShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.transferMapping, "TransferMapping", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.transferStepConfig)) {
            request.transferStepConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.transferStepConfig, "TransferStepConfig", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessName)) {
            body["BusinessName"] = request.businessName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destConfigShrink)) {
            body["DestConfig"] = request.destConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelIdsShrink)) {
            body["LabelIds"] = request.labelIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceConfigShrink)) {
            body["SourceConfig"] = request.sourceConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transferMappingShrink)) {
            body["TransferMapping"] = request.transferMappingShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transferStepConfigShrink)) {
            body["TransferStepConfig"] = request.transferStepConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerGradeId)) {
            body["WorkerGradeId"] = request.workerGradeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOmsOpenAPIProject",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOmsOpenAPIProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOmsOpenAPIProject(_ request: CreateOmsOpenAPIProjectRequest) async throws -> CreateOmsOpenAPIProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOmsOpenAPIProjectWithOptions(request as! CreateOmsOpenAPIProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSecurityIpGroupWithOptions(_ request: CreateSecurityIpGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSecurityIpGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityIpGroupName)) {
            body["SecurityIpGroupName"] = request.securityIpGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityIps)) {
            body["SecurityIps"] = request.securityIps ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSecurityIpGroup",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSecurityIpGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSecurityIpGroup(_ request: CreateSecurityIpGroupRequest) async throws -> CreateSecurityIpGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSecurityIpGroupWithOptions(request as! CreateSecurityIpGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTenantWithOptions(_ request: CreateTenantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTenantResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.charset)) {
            body["Charset"] = request.charset ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            body["Cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            body["Memory"] = request.memory!;
        }
        if (!TeaUtils.Client.isUnset(request.primaryZone)) {
            body["PrimaryZone"] = request.primaryZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantMode)) {
            body["TenantMode"] = request.tenantMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantName)) {
            body["TenantName"] = request.tenantName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeZone)) {
            body["TimeZone"] = request.timeZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unitNum)) {
            body["UnitNum"] = request.unitNum!;
        }
        if (!TeaUtils.Client.isUnset(request.userVSwitchId)) {
            body["UserVSwitchId"] = request.userVSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userVpcId)) {
            body["UserVpcId"] = request.userVpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTenant",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTenantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTenant(_ request: CreateTenantRequest) async throws -> CreateTenantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTenantWithOptions(request as! CreateTenantRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTenantReadOnlyConnectionWithOptions(_ request: CreateTenantReadOnlyConnectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTenantReadOnlyConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTenantReadOnlyConnection",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTenantReadOnlyConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTenantReadOnlyConnection(_ request: CreateTenantReadOnlyConnectionRequest) async throws -> CreateTenantReadOnlyConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTenantReadOnlyConnectionWithOptions(request as! CreateTenantReadOnlyConnectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTenantUserWithOptions(_ request: CreateTenantUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTenantUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roles)) {
            body["Roles"] = request.roles ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userPassword)) {
            body["UserPassword"] = request.userPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userType)) {
            body["UserType"] = request.userType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTenantUser",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTenantUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTenantUser(_ request: CreateTenantUserRequest) async throws -> CreateTenantUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTenantUserWithOptions(request as! CreateTenantUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatabasesWithOptions(_ request: DeleteDatabasesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDatabasesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseNames)) {
            body["DatabaseNames"] = request.databaseNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDatabases",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDatabasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatabases(_ request: DeleteDatabasesRequest) async throws -> DeleteDatabasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDatabasesWithOptions(request as! DeleteDatabasesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstancesWithOptions(_ request: DeleteInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupRetainMode)) {
            body["BackupRetainMode"] = request.backupRetainMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            body["InstanceIds"] = request.instanceIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteInstances",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstances(_ request: DeleteInstancesRequest) async throws -> DeleteInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteInstancesWithOptions(request as! DeleteInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOmsOpenAPIProjectWithOptions(_ request: DeleteOmsOpenAPIProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteOmsOpenAPIProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerGradeId)) {
            body["WorkerGradeId"] = request.workerGradeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteOmsOpenAPIProject",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteOmsOpenAPIProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOmsOpenAPIProject(_ request: DeleteOmsOpenAPIProjectRequest) async throws -> DeleteOmsOpenAPIProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteOmsOpenAPIProjectWithOptions(request as! DeleteOmsOpenAPIProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecurityIpGroupWithOptions(_ request: DeleteSecurityIpGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSecurityIpGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityIpGroupName)) {
            body["SecurityIpGroupName"] = request.securityIpGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSecurityIpGroup",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSecurityIpGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecurityIpGroup(_ request: DeleteSecurityIpGroupRequest) async throws -> DeleteSecurityIpGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSecurityIpGroupWithOptions(request as! DeleteSecurityIpGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTenantUsersWithOptions(_ request: DeleteTenantUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTenantUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.users)) {
            body["Users"] = request.users ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTenantUsers",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTenantUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTenantUsers(_ request: DeleteTenantUsersRequest) async throws -> DeleteTenantUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTenantUsersWithOptions(request as! DeleteTenantUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTenantsWithOptions(_ request: DeleteTenantsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTenantsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantIds)) {
            body["TenantIds"] = request.tenantIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTenants",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTenantsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTenants(_ request: DeleteTenantsRequest) async throws -> DeleteTenantsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTenantsWithOptions(request as! DeleteTenantsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAnomalySQLListWithOptions(_ tmpReq: DescribeAnomalySQLListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAnomalySQLListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeAnomalySQLListShrinkRequest = DescribeAnomalySQLListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filterCondition)) {
            request.filterConditionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterCondition, "FilterCondition", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            body["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            body["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterConditionShrink)) {
            body["FilterCondition"] = request.filterConditionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeIp)) {
            body["NodeIp"] = request.nodeIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.SQLId)) {
            body["SQLId"] = request.SQLId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchKeyWord)) {
            body["SearchKeyWord"] = request.searchKeyWord ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchParameter)) {
            body["SearchParameter"] = request.searchParameter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchRule)) {
            body["SearchRule"] = request.searchRule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchValue)) {
            body["SearchValue"] = request.searchValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortColumn)) {
            body["SortColumn"] = request.sortColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortOrder)) {
            body["SortOrder"] = request.sortOrder ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAnomalySQLList",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAnomalySQLListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAnomalySQLList(_ request: DescribeAnomalySQLListRequest) async throws -> DescribeAnomalySQLListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAnomalySQLListWithOptions(request as! DescribeAnomalySQLListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableCpuResourceWithOptions(_ request: DescribeAvailableCpuResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAvailableCpuResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyType)) {
            body["ModifyType"] = request.modifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAvailableCpuResource",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAvailableCpuResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableCpuResource(_ request: DescribeAvailableCpuResourceRequest) async throws -> DescribeAvailableCpuResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAvailableCpuResourceWithOptions(request as! DescribeAvailableCpuResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableMemResourceWithOptions(_ request: DescribeAvailableMemResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAvailableMemResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cpuNum)) {
            body["CpuNum"] = request.cpuNum!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unitNum)) {
            body["UnitNum"] = request.unitNum!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAvailableMemResource",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAvailableMemResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableMemResource(_ request: DescribeAvailableMemResourceRequest) async throws -> DescribeAvailableMemResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAvailableMemResourceWithOptions(request as! DescribeAvailableMemResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCharsetWithOptions(_ request: DescribeCharsetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCharsetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantMode)) {
            body["TenantMode"] = request.tenantMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCharset",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCharsetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCharset(_ request: DescribeCharsetRequest) async throws -> DescribeCharsetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCharsetWithOptions(request as! DescribeCharsetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDatabasesWithOptions(_ request: DescribeDatabasesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDatabasesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchKey)) {
            body["SearchKey"] = request.searchKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withTables)) {
            body["WithTables"] = request.withTables!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDatabases",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDatabasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDatabases(_ request: DescribeDatabasesRequest) async throws -> DescribeDatabasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDatabasesWithOptions(request as! DescribeDatabasesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceWithOptions(_ request: DescribeInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstance",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstance(_ request: DescribeInstanceRequest) async throws -> DescribeInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceWithOptions(request as! DescribeInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceCreatableZoneWithOptions(_ request: DescribeInstanceCreatableZoneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceCreatableZoneResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceCreatableZone",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceCreatableZoneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceCreatableZone(_ request: DescribeInstanceCreatableZoneRequest) async throws -> DescribeInstanceCreatableZoneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceCreatableZoneWithOptions(request as! DescribeInstanceCreatableZoneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceTenantModesWithOptions(_ request: DescribeInstanceTenantModesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceTenantModesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceTenantModes",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceTenantModesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceTenantModes(_ request: DescribeInstanceTenantModesRequest) async throws -> DescribeInstanceTenantModesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceTenantModesWithOptions(request as! DescribeInstanceTenantModesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceTopologyWithOptions(_ request: DescribeInstanceTopologyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceTopologyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceTopology",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceTopologyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceTopology(_ request: DescribeInstanceTopologyRequest) async throws -> DescribeInstanceTopologyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceTopologyWithOptions(request as! DescribeInstanceTopologyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstancesWithOptions(_ request: DescribeInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchKey)) {
            body["SearchKey"] = request.searchKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstances",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstances(_ request: DescribeInstancesRequest) async throws -> DescribeInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstancesWithOptions(request as! DescribeInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNodeMetricsWithOptions(_ request: DescribeNodeMetricsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNodeMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metrics)) {
            body["Metrics"] = request.metrics ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeIdList)) {
            body["NodeIdList"] = request.nodeIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeName)) {
            body["NodeName"] = request.nodeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNodeMetrics",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNodeMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNodeMetrics(_ request: DescribeNodeMetricsRequest) async throws -> DescribeNodeMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNodeMetricsWithOptions(request as! DescribeNodeMetricsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOmsOpenAPIProjectWithOptions(_ request: DescribeOmsOpenAPIProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeOmsOpenAPIProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerGradeId)) {
            body["WorkerGradeId"] = request.workerGradeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeOmsOpenAPIProject",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeOmsOpenAPIProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOmsOpenAPIProject(_ request: DescribeOmsOpenAPIProjectRequest) async throws -> DescribeOmsOpenAPIProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeOmsOpenAPIProjectWithOptions(request as! DescribeOmsOpenAPIProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOmsOpenAPIProjectStepsWithOptions(_ request: DescribeOmsOpenAPIProjectStepsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeOmsOpenAPIProjectStepsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerGradeId)) {
            body["WorkerGradeId"] = request.workerGradeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeOmsOpenAPIProjectSteps",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeOmsOpenAPIProjectStepsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOmsOpenAPIProjectSteps(_ request: DescribeOmsOpenAPIProjectStepsRequest) async throws -> DescribeOmsOpenAPIProjectStepsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeOmsOpenAPIProjectStepsWithOptions(request as! DescribeOmsOpenAPIProjectStepsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOutlineBindingWithOptions(_ request: DescribeOutlineBindingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeOutlineBindingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isConcurrentLimit)) {
            body["IsConcurrentLimit"] = request.isConcurrentLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.SQLId)) {
            body["SQLId"] = request.SQLId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeOutlineBinding",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeOutlineBindingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOutlineBinding(_ request: DescribeOutlineBindingRequest) async throws -> DescribeOutlineBindingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeOutlineBindingWithOptions(request as! DescribeOutlineBindingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeParametersWithOptions(_ request: DescribeParametersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeParametersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dimension)) {
            body["Dimension"] = request.dimension ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dimensionValue)) {
            body["DimensionValue"] = request.dimensionValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeParameters",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeParametersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeParameters(_ request: DescribeParametersRequest) async throws -> DescribeParametersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeParametersWithOptions(request as! DescribeParametersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeParametersHistoryWithOptions(_ request: DescribeParametersHistoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeParametersHistoryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dimension)) {
            body["Dimension"] = request.dimension ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dimensionValue)) {
            body["DimensionValue"] = request.dimensionValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeParametersHistory",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeParametersHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeParametersHistory(_ request: DescribeParametersHistoryRequest) async throws -> DescribeParametersHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeParametersHistoryWithOptions(request as! DescribeParametersHistoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRecommendIndexWithOptions(_ request: DescribeRecommendIndexRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRecommendIndexResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.SQLId)) {
            body["SQLId"] = request.SQLId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRecommendIndex",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRecommendIndexResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRecommendIndex(_ request: DescribeRecommendIndexRequest) async throws -> DescribeRecommendIndexResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRecommendIndexWithOptions(request as! DescribeRecommendIndexRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSQLDetailsWithOptions(_ request: DescribeSQLDetailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSQLDetailsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.SQLId)) {
            body["SQLId"] = request.SQLId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSQLDetails",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSQLDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSQLDetails(_ request: DescribeSQLDetailsRequest) async throws -> DescribeSQLDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSQLDetailsWithOptions(request as! DescribeSQLDetailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSQLHistoryListWithOptions(_ request: DescribeSQLHistoryListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSQLHistoryListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.SQLId)) {
            body["SQLId"] = request.SQLId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSQLHistoryList",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSQLHistoryListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSQLHistoryList(_ request: DescribeSQLHistoryListRequest) async throws -> DescribeSQLHistoryListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSQLHistoryListWithOptions(request as! DescribeSQLHistoryListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSQLPlansWithOptions(_ request: DescribeSQLPlansRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSQLPlansResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.SQLId)) {
            body["SQLId"] = request.SQLId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSQLPlans",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSQLPlansResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSQLPlans(_ request: DescribeSQLPlansRequest) async throws -> DescribeSQLPlansResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSQLPlansWithOptions(request as! DescribeSQLPlansRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityIpGroupsWithOptions(_ request: DescribeSecurityIpGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecurityIpGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecurityIpGroups",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecurityIpGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityIpGroups(_ request: DescribeSecurityIpGroupsRequest) async throws -> DescribeSecurityIpGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSecurityIpGroupsWithOptions(request as! DescribeSecurityIpGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlowSQLHistoryListWithOptions(_ request: DescribeSlowSQLHistoryListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSlowSQLHistoryListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.SQLId)) {
            body["SQLId"] = request.SQLId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSlowSQLHistoryList",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSlowSQLHistoryListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlowSQLHistoryList(_ request: DescribeSlowSQLHistoryListRequest) async throws -> DescribeSlowSQLHistoryListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSlowSQLHistoryListWithOptions(request as! DescribeSlowSQLHistoryListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlowSQLListWithOptions(_ tmpReq: DescribeSlowSQLListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSlowSQLListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeSlowSQLListShrinkRequest = DescribeSlowSQLListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filterCondition)) {
            request.filterConditionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterCondition, "FilterCondition", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            body["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterConditionShrink)) {
            body["FilterCondition"] = request.filterConditionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeIp)) {
            body["NodeIp"] = request.nodeIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.SQLId)) {
            body["SQLId"] = request.SQLId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchKeyWord)) {
            body["SearchKeyWord"] = request.searchKeyWord ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchParameter)) {
            body["SearchParameter"] = request.searchParameter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchRule)) {
            body["SearchRule"] = request.searchRule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchValue)) {
            body["SearchValue"] = request.searchValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortColumn)) {
            body["SortColumn"] = request.sortColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortOrder)) {
            body["SortOrder"] = request.sortOrder ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSlowSQLList",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSlowSQLListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlowSQLList(_ request: DescribeSlowSQLListRequest) async throws -> DescribeSlowSQLListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSlowSQLListWithOptions(request as! DescribeSlowSQLListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTenantWithOptions(_ request: DescribeTenantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTenantResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTenant",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTenantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTenant(_ request: DescribeTenantRequest) async throws -> DescribeTenantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTenantWithOptions(request as! DescribeTenantRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTenantMetricsWithOptions(_ request: DescribeTenantMetricsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTenantMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metrics)) {
            body["Metrics"] = request.metrics ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantIdList)) {
            body["TenantIdList"] = request.tenantIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantName)) {
            body["TenantName"] = request.tenantName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTenantMetrics",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTenantMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTenantMetrics(_ request: DescribeTenantMetricsRequest) async throws -> DescribeTenantMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTenantMetricsWithOptions(request as! DescribeTenantMetricsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTenantUserRolesWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTenantUserRolesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTenantUserRoles",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTenantUserRolesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTenantUserRoles() async throws -> DescribeTenantUserRolesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTenantUserRolesWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTenantUsersWithOptions(_ request: DescribeTenantUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTenantUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchKey)) {
            body["SearchKey"] = request.searchKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTenantUsers",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTenantUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTenantUsers(_ request: DescribeTenantUsersRequest) async throws -> DescribeTenantUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTenantUsersWithOptions(request as! DescribeTenantUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTenantZonesReadWithOptions(_ request: DescribeTenantZonesReadRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTenantZonesReadResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTenantZonesRead",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTenantZonesReadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTenantZonesRead(_ request: DescribeTenantZonesReadRequest) async throws -> DescribeTenantZonesReadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTenantZonesReadWithOptions(request as! DescribeTenantZonesReadRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTenantsWithOptions(_ request: DescribeTenantsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTenantsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchKey)) {
            body["SearchKey"] = request.searchKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantName)) {
            body["TenantName"] = request.tenantName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTenants",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTenantsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTenants(_ request: DescribeTenantsRequest) async throws -> DescribeTenantsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTenantsWithOptions(request as! DescribeTenantsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTimeZonesWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTimeZonesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTimeZones",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTimeZonesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTimeZones() async throws -> DescribeTimeZonesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTimeZonesWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTopSQLListWithOptions(_ tmpReq: DescribeTopSQLListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTopSQLListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeTopSQLListShrinkRequest = DescribeTopSQLListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filterCondition)) {
            request.filterConditionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterCondition, "FilterCondition", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            body["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterConditionShrink)) {
            body["FilterCondition"] = request.filterConditionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeIp)) {
            body["NodeIp"] = request.nodeIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.SQLId)) {
            body["SQLId"] = request.SQLId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchKeyWord)) {
            body["SearchKeyWord"] = request.searchKeyWord ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchParameter)) {
            body["SearchParameter"] = request.searchParameter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchRule)) {
            body["SearchRule"] = request.searchRule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchValue)) {
            body["SearchValue"] = request.searchValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortColumn)) {
            body["SortColumn"] = request.sortColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortOrder)) {
            body["SortOrder"] = request.sortOrder ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTopSQLList",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTopSQLListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTopSQLList(_ request: DescribeTopSQLListRequest) async throws -> DescribeTopSQLListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTopSQLListWithOptions(request as! DescribeTopSQLListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeZonesWithOptions(_ request: DescribeZonesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeZonesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deployType)) {
            body["DeployType"] = request.deployType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.series)) {
            body["Series"] = request.series ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeZones",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeZonesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeZones(_ request: DescribeZonesRequest) async throws -> DescribeZonesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeZonesWithOptions(request as! DescribeZonesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDatabaseDescriptionWithOptions(_ request: ModifyDatabaseDescriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDatabaseDescriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDatabaseDescription",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDatabaseDescriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDatabaseDescription(_ request: ModifyDatabaseDescriptionRequest) async throws -> ModifyDatabaseDescriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDatabaseDescriptionWithOptions(request as! ModifyDatabaseDescriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDatabaseUserRolesWithOptions(_ request: ModifyDatabaseUserRolesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDatabaseUserRolesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.users)) {
            body["Users"] = request.users ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDatabaseUserRoles",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDatabaseUserRolesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDatabaseUserRoles(_ request: ModifyDatabaseUserRolesRequest) async throws -> ModifyDatabaseUserRolesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDatabaseUserRolesWithOptions(request as! ModifyDatabaseUserRolesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceNameWithOptions(_ request: ModifyInstanceNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceNameResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstanceName",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceName(_ request: ModifyInstanceNameRequest) async throws -> ModifyInstanceNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstanceNameWithOptions(request as! ModifyInstanceNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyParametersWithOptions(_ request: ModifyParametersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyParametersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dimension)) {
            body["Dimension"] = request.dimension ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dimensionValue)) {
            body["DimensionValue"] = request.dimensionValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            body["Parameters"] = request.parameters ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyParameters",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyParametersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyParameters(_ request: ModifyParametersRequest) async throws -> ModifyParametersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyParametersWithOptions(request as! ModifyParametersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySecurityIpsWithOptions(_ request: ModifySecurityIpsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySecurityIpsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityIpGroupName)) {
            body["SecurityIpGroupName"] = request.securityIpGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityIps)) {
            body["SecurityIps"] = request.securityIps ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySecurityIps",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySecurityIpsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySecurityIps(_ request: ModifySecurityIpsRequest) async throws -> ModifySecurityIpsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySecurityIpsWithOptions(request as! ModifySecurityIpsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTenantPrimaryZoneWithOptions(_ request: ModifyTenantPrimaryZoneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyTenantPrimaryZoneResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyType)) {
            body["ModifyType"] = request.modifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primaryZone)) {
            body["PrimaryZone"] = request.primaryZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userVSwitchId)) {
            body["UserVSwitchId"] = request.userVSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyTenantPrimaryZone",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyTenantPrimaryZoneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTenantPrimaryZone(_ request: ModifyTenantPrimaryZoneRequest) async throws -> ModifyTenantPrimaryZoneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyTenantPrimaryZoneWithOptions(request as! ModifyTenantPrimaryZoneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTenantResourceWithOptions(_ request: ModifyTenantResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyTenantResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            body["Cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            body["Memory"] = request.memory!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyTenantResource",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyTenantResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTenantResource(_ request: ModifyTenantResourceRequest) async throws -> ModifyTenantResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyTenantResourceWithOptions(request as! ModifyTenantResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTenantUserDescriptionWithOptions(_ request: ModifyTenantUserDescriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyTenantUserDescriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyTenantUserDescription",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyTenantUserDescriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTenantUserDescription(_ request: ModifyTenantUserDescriptionRequest) async throws -> ModifyTenantUserDescriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyTenantUserDescriptionWithOptions(request as! ModifyTenantUserDescriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTenantUserPasswordWithOptions(_ request: ModifyTenantUserPasswordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyTenantUserPasswordResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userPassword)) {
            body["UserPassword"] = request.userPassword ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyTenantUserPassword",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyTenantUserPasswordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTenantUserPassword(_ request: ModifyTenantUserPasswordRequest) async throws -> ModifyTenantUserPasswordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyTenantUserPasswordWithOptions(request as! ModifyTenantUserPasswordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTenantUserRolesWithOptions(_ request: ModifyTenantUserRolesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyTenantUserRolesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyType)) {
            body["ModifyType"] = request.modifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userRole)) {
            body["UserRole"] = request.userRole ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyTenantUserRoles",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyTenantUserRolesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTenantUserRoles(_ request: ModifyTenantUserRolesRequest) async throws -> ModifyTenantUserRolesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyTenantUserRolesWithOptions(request as! ModifyTenantUserRolesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTenantUserStatusWithOptions(_ request: ModifyTenantUserStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyTenantUserStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userStatus)) {
            body["UserStatus"] = request.userStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyTenantUserStatus",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyTenantUserStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTenantUserStatus(_ request: ModifyTenantUserStatusRequest) async throws -> ModifyTenantUserStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyTenantUserStatusWithOptions(request as! ModifyTenantUserStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseOmsOpenAPIProjectWithOptions(_ request: ReleaseOmsOpenAPIProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseOmsOpenAPIProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerGradeId)) {
            body["WorkerGradeId"] = request.workerGradeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseOmsOpenAPIProject",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseOmsOpenAPIProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseOmsOpenAPIProject(_ request: ReleaseOmsOpenAPIProjectRequest) async throws -> ReleaseOmsOpenAPIProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseOmsOpenAPIProjectWithOptions(request as! ReleaseOmsOpenAPIProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetOmsOpenAPIProjectWithOptions(_ request: ResetOmsOpenAPIProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetOmsOpenAPIProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerGradeId)) {
            body["WorkerGradeId"] = request.workerGradeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetOmsOpenAPIProject",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetOmsOpenAPIProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetOmsOpenAPIProject(_ request: ResetOmsOpenAPIProjectRequest) async throws -> ResetOmsOpenAPIProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetOmsOpenAPIProjectWithOptions(request as! ResetOmsOpenAPIProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeOmsOpenAPIProjectWithOptions(_ request: ResumeOmsOpenAPIProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumeOmsOpenAPIProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerGradeId)) {
            body["WorkerGradeId"] = request.workerGradeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResumeOmsOpenAPIProject",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumeOmsOpenAPIProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeOmsOpenAPIProject(_ request: ResumeOmsOpenAPIProjectRequest) async throws -> ResumeOmsOpenAPIProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resumeOmsOpenAPIProjectWithOptions(request as! ResumeOmsOpenAPIProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchOmsOpenAPIMonitorMetricWithOptions(_ request: SearchOmsOpenAPIMonitorMetricRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchOmsOpenAPIMonitorMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginTime)) {
            body["BeginTime"] = request.beginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.maxPointNum)) {
            body["MaxPointNum"] = request.maxPointNum!;
        }
        if (!TeaUtils.Client.isUnset(request.metric)) {
            body["Metric"] = request.metric ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerGradeId)) {
            body["WorkerGradeId"] = request.workerGradeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchOmsOpenAPIMonitorMetric",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchOmsOpenAPIMonitorMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchOmsOpenAPIMonitorMetric(_ request: SearchOmsOpenAPIMonitorMetricRequest) async throws -> SearchOmsOpenAPIMonitorMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchOmsOpenAPIMonitorMetricWithOptions(request as! SearchOmsOpenAPIMonitorMetricRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchOmsOpenAPIProjectsWithOptions(_ tmpReq: SearchOmsOpenAPIProjectsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchOmsOpenAPIProjectsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SearchOmsOpenAPIProjectsShrinkRequest = SearchOmsOpenAPIProjectsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.destDbTypes)) {
            request.destDbTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.destDbTypes, "DestDbTypes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.labelIds)) {
            request.labelIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.labelIds, "LabelIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sourceDbTypes)) {
            request.sourceDbTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceDbTypes, "SourceDbTypes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.statusList)) {
            request.statusListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.statusList, "StatusList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destDbTypesShrink)) {
            body["DestDbTypes"] = request.destDbTypesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelIdsShrink)) {
            body["LabelIds"] = request.labelIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchKey)) {
            body["SearchKey"] = request.searchKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceDbTypesShrink)) {
            body["SourceDbTypes"] = request.sourceDbTypesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusListShrink)) {
            body["StatusList"] = request.statusListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerGradeId)) {
            body["WorkerGradeId"] = request.workerGradeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchOmsOpenAPIProjects",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchOmsOpenAPIProjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchOmsOpenAPIProjects(_ request: SearchOmsOpenAPIProjectsRequest) async throws -> SearchOmsOpenAPIProjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchOmsOpenAPIProjectsWithOptions(request as! SearchOmsOpenAPIProjectsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startOmsOpenAPIProjectWithOptions(_ request: StartOmsOpenAPIProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartOmsOpenAPIProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerGradeId)) {
            body["WorkerGradeId"] = request.workerGradeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartOmsOpenAPIProject",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartOmsOpenAPIProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startOmsOpenAPIProject(_ request: StartOmsOpenAPIProjectRequest) async throws -> StartOmsOpenAPIProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startOmsOpenAPIProjectWithOptions(request as! StartOmsOpenAPIProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopOmsOpenAPIProjectWithOptions(_ request: StopOmsOpenAPIProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopOmsOpenAPIProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerGradeId)) {
            body["WorkerGradeId"] = request.workerGradeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopOmsOpenAPIProject",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopOmsOpenAPIProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopOmsOpenAPIProject(_ request: StopOmsOpenAPIProjectRequest) async throws -> StopOmsOpenAPIProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopOmsOpenAPIProjectWithOptions(request as! StopOmsOpenAPIProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
