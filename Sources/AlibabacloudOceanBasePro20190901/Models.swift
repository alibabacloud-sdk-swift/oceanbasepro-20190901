import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateDatabaseRequest : Tea.TeaModel {
    public var clientToken: String?

    public var collation: String?

    public var databaseName: String?

    public var description_: String?

    public var encoding: String?

    public var instanceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.collation != nil {
            map["Collation"] = self.collation!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.encoding != nil {
            map["Encoding"] = self.encoding!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Collation") && dict["Collation"] != nil {
            self.collation = dict["Collation"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Encoding") && dict["Encoding"] != nil {
            self.encoding = dict["Encoding"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class CreateDatabaseResponseBody : Tea.TeaModel {
    public var databaseName: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateDatabaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var autoRenewPeriod: Int64?

    public var chargeType: String?

    public var diskSize: Int64?

    public var diskType: String?

    public var instanceClass: String?

    public var instanceName: String?

    public var obVersion: String?

    public var period: Int64?

    public var periodUnit: String?

    public var resourceGroupId: String?

    public var series: String?

    public var zones: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.instanceClass != nil {
            map["InstanceClass"] = self.instanceClass!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.obVersion != nil {
            map["ObVersion"] = self.obVersion!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.series != nil {
            map["Series"] = self.series!
        }
        if self.zones != nil {
            map["Zones"] = self.zones!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewPeriod") && dict["AutoRenewPeriod"] != nil {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int64
        }
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
            self.diskSize = dict["DiskSize"] as! Int64
        }
        if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
            self.diskType = dict["DiskType"] as! String
        }
        if dict.keys.contains("InstanceClass") && dict["InstanceClass"] != nil {
            self.instanceClass = dict["InstanceClass"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("ObVersion") && dict["ObVersion"] != nil {
            self.obVersion = dict["ObVersion"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int64
        }
        if dict.keys.contains("PeriodUnit") && dict["PeriodUnit"] != nil {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Series") && dict["Series"] != nil {
            self.series = dict["Series"] as! String
        }
        if dict.keys.contains("Zones") && dict["Zones"] != nil {
            self.zones = dict["Zones"] as! String
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var orderId: String?

        public var resourceGroupId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
        }
    }
    public var data: CreateInstanceResponseBody.Data?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateOmsMysqlDataSourceRequest : Tea.TeaModel {
    public var description_: String?

    public var dgDatabaseId: String?

    public var instanceId: String?

    public var ip: String?

    public var name: String?

    public var password: String?

    public var port: String?

    public var schema: String?

    public var type: String?

    public var username: String?

    public var vpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dgDatabaseId != nil {
            map["DgDatabaseId"] = self.dgDatabaseId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.schema != nil {
            map["Schema"] = self.schema!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DgDatabaseId") && dict["DgDatabaseId"] != nil {
            self.dgDatabaseId = dict["DgDatabaseId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Ip") && dict["Ip"] != nil {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Port") && dict["Port"] != nil {
            self.port = dict["Port"] as! String
        }
        if dict.keys.contains("Schema") && dict["Schema"] != nil {
            self.schema = dict["Schema"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class CreateOmsMysqlDataSourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var endpointId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
                self.endpointId = dict["EndpointId"] as! String
            }
        }
    }
    public var data: CreateOmsMysqlDataSourceResponseBody.Data?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateOmsMysqlDataSourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateOmsMysqlDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOmsMysqlDataSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateOmsMysqlDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateOmsOpenAPIProjectRequest : Tea.TeaModel {
    public class DestConfig : Tea.TeaModel {
        public var enableMsgTrace: Bool?

        public var endpointId: String?

        public var endpointType: String?

        public var msgTags: String?

        public var partition: Int32?

        public var partitionMode: String?

        public var producerGroup: String?

        public var sendMsgTimeout: Int64?

        public var sequenceEnable: Bool?

        public var sequenceStartTimestamp: Int64?

        public var serializerType: String?

        public var topicType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableMsgTrace != nil {
                map["EnableMsgTrace"] = self.enableMsgTrace!
            }
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.endpointType != nil {
                map["EndpointType"] = self.endpointType!
            }
            if self.msgTags != nil {
                map["MsgTags"] = self.msgTags!
            }
            if self.partition != nil {
                map["Partition"] = self.partition!
            }
            if self.partitionMode != nil {
                map["PartitionMode"] = self.partitionMode!
            }
            if self.producerGroup != nil {
                map["ProducerGroup"] = self.producerGroup!
            }
            if self.sendMsgTimeout != nil {
                map["SendMsgTimeout"] = self.sendMsgTimeout!
            }
            if self.sequenceEnable != nil {
                map["SequenceEnable"] = self.sequenceEnable!
            }
            if self.sequenceStartTimestamp != nil {
                map["SequenceStartTimestamp"] = self.sequenceStartTimestamp!
            }
            if self.serializerType != nil {
                map["SerializerType"] = self.serializerType!
            }
            if self.topicType != nil {
                map["TopicType"] = self.topicType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableMsgTrace") && dict["EnableMsgTrace"] != nil {
                self.enableMsgTrace = dict["EnableMsgTrace"] as! Bool
            }
            if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
                self.endpointId = dict["EndpointId"] as! String
            }
            if dict.keys.contains("EndpointType") && dict["EndpointType"] != nil {
                self.endpointType = dict["EndpointType"] as! String
            }
            if dict.keys.contains("MsgTags") && dict["MsgTags"] != nil {
                self.msgTags = dict["MsgTags"] as! String
            }
            if dict.keys.contains("Partition") && dict["Partition"] != nil {
                self.partition = dict["Partition"] as! Int32
            }
            if dict.keys.contains("PartitionMode") && dict["PartitionMode"] != nil {
                self.partitionMode = dict["PartitionMode"] as! String
            }
            if dict.keys.contains("ProducerGroup") && dict["ProducerGroup"] != nil {
                self.producerGroup = dict["ProducerGroup"] as! String
            }
            if dict.keys.contains("SendMsgTimeout") && dict["SendMsgTimeout"] != nil {
                self.sendMsgTimeout = dict["SendMsgTimeout"] as! Int64
            }
            if dict.keys.contains("SequenceEnable") && dict["SequenceEnable"] != nil {
                self.sequenceEnable = dict["SequenceEnable"] as! Bool
            }
            if dict.keys.contains("SequenceStartTimestamp") && dict["SequenceStartTimestamp"] != nil {
                self.sequenceStartTimestamp = dict["SequenceStartTimestamp"] as! Int64
            }
            if dict.keys.contains("SerializerType") && dict["SerializerType"] != nil {
                self.serializerType = dict["SerializerType"] as! String
            }
            if dict.keys.contains("TopicType") && dict["TopicType"] != nil {
                self.topicType = dict["TopicType"] as! String
            }
        }
    }
    public class SourceConfig : Tea.TeaModel {
        public var enableMsgTrace: Bool?

        public var endpointId: String?

        public var endpointType: String?

        public var msgTags: String?

        public var partition: Int32?

        public var partitionMode: String?

        public var producerGroup: String?

        public var sendMsgTimeout: Int64?

        public var sequenceEnable: Bool?

        public var sequenceStartTimestamp: Int64?

        public var serializerType: String?

        public var topicType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableMsgTrace != nil {
                map["EnableMsgTrace"] = self.enableMsgTrace!
            }
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.endpointType != nil {
                map["EndpointType"] = self.endpointType!
            }
            if self.msgTags != nil {
                map["MsgTags"] = self.msgTags!
            }
            if self.partition != nil {
                map["Partition"] = self.partition!
            }
            if self.partitionMode != nil {
                map["PartitionMode"] = self.partitionMode!
            }
            if self.producerGroup != nil {
                map["ProducerGroup"] = self.producerGroup!
            }
            if self.sendMsgTimeout != nil {
                map["SendMsgTimeout"] = self.sendMsgTimeout!
            }
            if self.sequenceEnable != nil {
                map["SequenceEnable"] = self.sequenceEnable!
            }
            if self.sequenceStartTimestamp != nil {
                map["SequenceStartTimestamp"] = self.sequenceStartTimestamp!
            }
            if self.serializerType != nil {
                map["SerializerType"] = self.serializerType!
            }
            if self.topicType != nil {
                map["TopicType"] = self.topicType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableMsgTrace") && dict["EnableMsgTrace"] != nil {
                self.enableMsgTrace = dict["EnableMsgTrace"] as! Bool
            }
            if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
                self.endpointId = dict["EndpointId"] as! String
            }
            if dict.keys.contains("EndpointType") && dict["EndpointType"] != nil {
                self.endpointType = dict["EndpointType"] as! String
            }
            if dict.keys.contains("MsgTags") && dict["MsgTags"] != nil {
                self.msgTags = dict["MsgTags"] as! String
            }
            if dict.keys.contains("Partition") && dict["Partition"] != nil {
                self.partition = dict["Partition"] as! Int32
            }
            if dict.keys.contains("PartitionMode") && dict["PartitionMode"] != nil {
                self.partitionMode = dict["PartitionMode"] as! String
            }
            if dict.keys.contains("ProducerGroup") && dict["ProducerGroup"] != nil {
                self.producerGroup = dict["ProducerGroup"] as! String
            }
            if dict.keys.contains("SendMsgTimeout") && dict["SendMsgTimeout"] != nil {
                self.sendMsgTimeout = dict["SendMsgTimeout"] as! Int64
            }
            if dict.keys.contains("SequenceEnable") && dict["SequenceEnable"] != nil {
                self.sequenceEnable = dict["SequenceEnable"] as! Bool
            }
            if dict.keys.contains("SequenceStartTimestamp") && dict["SequenceStartTimestamp"] != nil {
                self.sequenceStartTimestamp = dict["SequenceStartTimestamp"] as! Int64
            }
            if dict.keys.contains("SerializerType") && dict["SerializerType"] != nil {
                self.serializerType = dict["SerializerType"] as! String
            }
            if dict.keys.contains("TopicType") && dict["TopicType"] != nil {
                self.topicType = dict["TopicType"] as! String
            }
        }
    }
    public class TransferMapping : Tea.TeaModel {
        public class Databases : Tea.TeaModel {
            public class Tables : Tea.TeaModel {
                public class AdbTableSchema : Tea.TeaModel {
                    public var distributedKeys: [String]?

                    public var partitionLifeCycle: Int32?

                    public var partitionStatement: String?

                    public var primaryKeys: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.distributedKeys != nil {
                            map["DistributedKeys"] = self.distributedKeys!
                        }
                        if self.partitionLifeCycle != nil {
                            map["PartitionLifeCycle"] = self.partitionLifeCycle!
                        }
                        if self.partitionStatement != nil {
                            map["PartitionStatement"] = self.partitionStatement!
                        }
                        if self.primaryKeys != nil {
                            map["PrimaryKeys"] = self.primaryKeys!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DistributedKeys") && dict["DistributedKeys"] != nil {
                            self.distributedKeys = dict["DistributedKeys"] as! [String]
                        }
                        if dict.keys.contains("PartitionLifeCycle") && dict["PartitionLifeCycle"] != nil {
                            self.partitionLifeCycle = dict["PartitionLifeCycle"] as! Int32
                        }
                        if dict.keys.contains("PartitionStatement") && dict["PartitionStatement"] != nil {
                            self.partitionStatement = dict["PartitionStatement"] as! String
                        }
                        if dict.keys.contains("PrimaryKeys") && dict["PrimaryKeys"] != nil {
                            self.primaryKeys = dict["PrimaryKeys"] as! [String]
                        }
                    }
                }
                public var adbTableSchema: CreateOmsOpenAPIProjectRequest.TransferMapping.Databases.Tables.AdbTableSchema?

                public var filterColumns: [String]?

                public var mappedName: String?

                public var shardColumns: [String]?

                public var tableId: String?

                public var tableName: String?

                public var type: String?

                public var whereClause: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.adbTableSchema?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.adbTableSchema != nil {
                        map["AdbTableSchema"] = self.adbTableSchema?.toMap()
                    }
                    if self.filterColumns != nil {
                        map["FilterColumns"] = self.filterColumns!
                    }
                    if self.mappedName != nil {
                        map["MappedName"] = self.mappedName!
                    }
                    if self.shardColumns != nil {
                        map["ShardColumns"] = self.shardColumns!
                    }
                    if self.tableId != nil {
                        map["TableId"] = self.tableId!
                    }
                    if self.tableName != nil {
                        map["TableName"] = self.tableName!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.whereClause != nil {
                        map["WhereClause"] = self.whereClause!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AdbTableSchema") && dict["AdbTableSchema"] != nil {
                        var model = CreateOmsOpenAPIProjectRequest.TransferMapping.Databases.Tables.AdbTableSchema()
                        model.fromMap(dict["AdbTableSchema"] as! [String: Any])
                        self.adbTableSchema = model
                    }
                    if dict.keys.contains("FilterColumns") && dict["FilterColumns"] != nil {
                        self.filterColumns = dict["FilterColumns"] as! [String]
                    }
                    if dict.keys.contains("MappedName") && dict["MappedName"] != nil {
                        self.mappedName = dict["MappedName"] as! String
                    }
                    if dict.keys.contains("ShardColumns") && dict["ShardColumns"] != nil {
                        self.shardColumns = dict["ShardColumns"] as! [String]
                    }
                    if dict.keys.contains("TableId") && dict["TableId"] != nil {
                        self.tableId = dict["TableId"] as! String
                    }
                    if dict.keys.contains("TableName") && dict["TableName"] != nil {
                        self.tableName = dict["TableName"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("WhereClause") && dict["WhereClause"] != nil {
                        self.whereClause = dict["WhereClause"] as! String
                    }
                }
            }
            public var databaseId: String?

            public var databaseName: String?

            public var mappedName: String?

            public var tables: [CreateOmsOpenAPIProjectRequest.TransferMapping.Databases.Tables]?

            public var tenantName: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.databaseId != nil {
                    map["DatabaseId"] = self.databaseId!
                }
                if self.databaseName != nil {
                    map["DatabaseName"] = self.databaseName!
                }
                if self.mappedName != nil {
                    map["MappedName"] = self.mappedName!
                }
                if self.tables != nil {
                    var tmp : [Any] = []
                    for k in self.tables! {
                        tmp.append(k.toMap())
                    }
                    map["Tables"] = tmp
                }
                if self.tenantName != nil {
                    map["TenantName"] = self.tenantName!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                    self.databaseId = dict["DatabaseId"] as! String
                }
                if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                    self.databaseName = dict["DatabaseName"] as! String
                }
                if dict.keys.contains("MappedName") && dict["MappedName"] != nil {
                    self.mappedName = dict["MappedName"] as! String
                }
                if dict.keys.contains("Tables") && dict["Tables"] != nil {
                    var tmp : [CreateOmsOpenAPIProjectRequest.TransferMapping.Databases.Tables] = []
                    for v in dict["Tables"] as! [Any] {
                        var model = CreateOmsOpenAPIProjectRequest.TransferMapping.Databases.Tables()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tables = tmp
                }
                if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
                    self.tenantName = dict["TenantName"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var databases: [CreateOmsOpenAPIProjectRequest.TransferMapping.Databases]?

        public var mode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databases != nil {
                var tmp : [Any] = []
                for k in self.databases! {
                    tmp.append(k.toMap())
                }
                map["Databases"] = tmp
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Databases") && dict["Databases"] != nil {
                var tmp : [CreateOmsOpenAPIProjectRequest.TransferMapping.Databases] = []
                for v in dict["Databases"] as! [Any] {
                    var model = CreateOmsOpenAPIProjectRequest.TransferMapping.Databases()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.databases = tmp
            }
            if dict.keys.contains("Mode") && dict["Mode"] != nil {
                self.mode = dict["Mode"] as! String
            }
        }
    }
    public class TransferStepConfig : Tea.TeaModel {
        public class IncrSyncStepTransferConfig : Tea.TeaModel {
            public var recordTypeList: [String]?

            public var startTimestamp: Int64?

            public var storeLogKeptHour: Int64?

            public var storeTransactionEnabled: Bool?

            public var transferStepType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.recordTypeList != nil {
                    map["RecordTypeList"] = self.recordTypeList!
                }
                if self.startTimestamp != nil {
                    map["StartTimestamp"] = self.startTimestamp!
                }
                if self.storeLogKeptHour != nil {
                    map["StoreLogKeptHour"] = self.storeLogKeptHour!
                }
                if self.storeTransactionEnabled != nil {
                    map["StoreTransactionEnabled"] = self.storeTransactionEnabled!
                }
                if self.transferStepType != nil {
                    map["TransferStepType"] = self.transferStepType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RecordTypeList") && dict["RecordTypeList"] != nil {
                    self.recordTypeList = dict["RecordTypeList"] as! [String]
                }
                if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
                    self.startTimestamp = dict["StartTimestamp"] as! Int64
                }
                if dict.keys.contains("StoreLogKeptHour") && dict["StoreLogKeptHour"] != nil {
                    self.storeLogKeptHour = dict["StoreLogKeptHour"] as! Int64
                }
                if dict.keys.contains("StoreTransactionEnabled") && dict["StoreTransactionEnabled"] != nil {
                    self.storeTransactionEnabled = dict["StoreTransactionEnabled"] as! Bool
                }
                if dict.keys.contains("TransferStepType") && dict["TransferStepType"] != nil {
                    self.transferStepType = dict["TransferStepType"] as! String
                }
            }
        }
        public var enableFullSync: Bool?

        public var enableIncrSync: Bool?

        public var enableStructSync: Bool?

        public var incrSyncStepTransferConfig: CreateOmsOpenAPIProjectRequest.TransferStepConfig.IncrSyncStepTransferConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.incrSyncStepTransferConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableFullSync != nil {
                map["EnableFullSync"] = self.enableFullSync!
            }
            if self.enableIncrSync != nil {
                map["EnableIncrSync"] = self.enableIncrSync!
            }
            if self.enableStructSync != nil {
                map["EnableStructSync"] = self.enableStructSync!
            }
            if self.incrSyncStepTransferConfig != nil {
                map["IncrSyncStepTransferConfig"] = self.incrSyncStepTransferConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableFullSync") && dict["EnableFullSync"] != nil {
                self.enableFullSync = dict["EnableFullSync"] as! Bool
            }
            if dict.keys.contains("EnableIncrSync") && dict["EnableIncrSync"] != nil {
                self.enableIncrSync = dict["EnableIncrSync"] as! Bool
            }
            if dict.keys.contains("EnableStructSync") && dict["EnableStructSync"] != nil {
                self.enableStructSync = dict["EnableStructSync"] as! Bool
            }
            if dict.keys.contains("IncrSyncStepTransferConfig") && dict["IncrSyncStepTransferConfig"] != nil {
                var model = CreateOmsOpenAPIProjectRequest.TransferStepConfig.IncrSyncStepTransferConfig()
                model.fromMap(dict["IncrSyncStepTransferConfig"] as! [String: Any])
                self.incrSyncStepTransferConfig = model
            }
        }
    }
    public var businessName: String?

    public var destConfig: CreateOmsOpenAPIProjectRequest.DestConfig?

    public var labelIds: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectName: String?

    public var sourceConfig: CreateOmsOpenAPIProjectRequest.SourceConfig?

    public var transferMapping: CreateOmsOpenAPIProjectRequest.TransferMapping?

    public var transferStepConfig: CreateOmsOpenAPIProjectRequest.TransferStepConfig?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.destConfig?.validate()
        try self.sourceConfig?.validate()
        try self.transferMapping?.validate()
        try self.transferStepConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessName != nil {
            map["BusinessName"] = self.businessName!
        }
        if self.destConfig != nil {
            map["DestConfig"] = self.destConfig?.toMap()
        }
        if self.labelIds != nil {
            map["LabelIds"] = self.labelIds!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceConfig != nil {
            map["SourceConfig"] = self.sourceConfig?.toMap()
        }
        if self.transferMapping != nil {
            map["TransferMapping"] = self.transferMapping?.toMap()
        }
        if self.transferStepConfig != nil {
            map["TransferStepConfig"] = self.transferStepConfig?.toMap()
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessName") && dict["BusinessName"] != nil {
            self.businessName = dict["BusinessName"] as! String
        }
        if dict.keys.contains("DestConfig") && dict["DestConfig"] != nil {
            var model = CreateOmsOpenAPIProjectRequest.DestConfig()
            model.fromMap(dict["DestConfig"] as! [String: Any])
            self.destConfig = model
        }
        if dict.keys.contains("LabelIds") && dict["LabelIds"] != nil {
            self.labelIds = dict["LabelIds"] as! [String]
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectName") && dict["ProjectName"] != nil {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceConfig") && dict["SourceConfig"] != nil {
            var model = CreateOmsOpenAPIProjectRequest.SourceConfig()
            model.fromMap(dict["SourceConfig"] as! [String: Any])
            self.sourceConfig = model
        }
        if dict.keys.contains("TransferMapping") && dict["TransferMapping"] != nil {
            var model = CreateOmsOpenAPIProjectRequest.TransferMapping()
            model.fromMap(dict["TransferMapping"] as! [String: Any])
            self.transferMapping = model
        }
        if dict.keys.contains("TransferStepConfig") && dict["TransferStepConfig"] != nil {
            var model = CreateOmsOpenAPIProjectRequest.TransferStepConfig()
            model.fromMap(dict["TransferStepConfig"] as! [String: Any])
            self.transferStepConfig = model
        }
        if dict.keys.contains("WorkerGradeId") && dict["WorkerGradeId"] != nil {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class CreateOmsOpenAPIProjectShrinkRequest : Tea.TeaModel {
    public var businessName: String?

    public var destConfigShrink: String?

    public var labelIdsShrink: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectName: String?

    public var sourceConfigShrink: String?

    public var transferMappingShrink: String?

    public var transferStepConfigShrink: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessName != nil {
            map["BusinessName"] = self.businessName!
        }
        if self.destConfigShrink != nil {
            map["DestConfig"] = self.destConfigShrink!
        }
        if self.labelIdsShrink != nil {
            map["LabelIds"] = self.labelIdsShrink!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceConfigShrink != nil {
            map["SourceConfig"] = self.sourceConfigShrink!
        }
        if self.transferMappingShrink != nil {
            map["TransferMapping"] = self.transferMappingShrink!
        }
        if self.transferStepConfigShrink != nil {
            map["TransferStepConfig"] = self.transferStepConfigShrink!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessName") && dict["BusinessName"] != nil {
            self.businessName = dict["BusinessName"] as! String
        }
        if dict.keys.contains("DestConfig") && dict["DestConfig"] != nil {
            self.destConfigShrink = dict["DestConfig"] as! String
        }
        if dict.keys.contains("LabelIds") && dict["LabelIds"] != nil {
            self.labelIdsShrink = dict["LabelIds"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectName") && dict["ProjectName"] != nil {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceConfig") && dict["SourceConfig"] != nil {
            self.sourceConfigShrink = dict["SourceConfig"] as! String
        }
        if dict.keys.contains("TransferMapping") && dict["TransferMapping"] != nil {
            self.transferMappingShrink = dict["TransferMapping"] as! String
        }
        if dict.keys.contains("TransferStepConfig") && dict["TransferStepConfig"] != nil {
            self.transferStepConfigShrink = dict["TransferStepConfig"] as! String
        }
        if dict.keys.contains("WorkerGradeId") && dict["WorkerGradeId"] != nil {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class CreateOmsOpenAPIProjectResponseBody : Tea.TeaModel {
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") && dict["Proposal"] != nil {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: String?

    public var errorDetail: CreateOmsOpenAPIProjectResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") && dict["Advice"] != nil {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") && dict["Cost"] != nil {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorDetail") && dict["ErrorDetail"] != nil {
            var model = CreateOmsOpenAPIProjectResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class CreateOmsOpenAPIProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOmsOpenAPIProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateOmsOpenAPIProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSecurityIpGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public var securityIpGroupName: String?

    public var securityIps: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.securityIpGroupName != nil {
            map["SecurityIpGroupName"] = self.securityIpGroupName!
        }
        if self.securityIps != nil {
            map["SecurityIps"] = self.securityIps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SecurityIpGroupName") && dict["SecurityIpGroupName"] != nil {
            self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
        }
        if dict.keys.contains("SecurityIps") && dict["SecurityIps"] != nil {
            self.securityIps = dict["SecurityIps"] as! String
        }
    }
}

public class CreateSecurityIpGroupResponseBody : Tea.TeaModel {
    public class SecurityIpGroup : Tea.TeaModel {
        public var instanceId: String?

        public var securityIpGroupName: String?

        public var securityIps: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.securityIpGroupName != nil {
                map["SecurityIpGroupName"] = self.securityIpGroupName!
            }
            if self.securityIps != nil {
                map["SecurityIps"] = self.securityIps!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("SecurityIpGroupName") && dict["SecurityIpGroupName"] != nil {
                self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
            }
            if dict.keys.contains("SecurityIps") && dict["SecurityIps"] != nil {
                self.securityIps = dict["SecurityIps"] as! String
            }
        }
    }
    public var requestId: String?

    public var securityIpGroup: CreateSecurityIpGroupResponseBody.SecurityIpGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityIpGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityIpGroup != nil {
            map["SecurityIpGroup"] = self.securityIpGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityIpGroup") && dict["SecurityIpGroup"] != nil {
            var model = CreateSecurityIpGroupResponseBody.SecurityIpGroup()
            model.fromMap(dict["SecurityIpGroup"] as! [String: Any])
            self.securityIpGroup = model
        }
    }
}

public class CreateSecurityIpGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSecurityIpGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateSecurityIpGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTenantRequest : Tea.TeaModel {
    public var charset: String?

    public var cpu: Int32?

    public var description_: String?

    public var instanceId: String?

    public var memory: Int32?

    public var primaryZone: String?

    public var tenantMode: String?

    public var tenantName: String?

    public var timeZone: String?

    public var unitNum: Int32?

    public var userVSwitchId: String?

    public var userVpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.charset != nil {
            map["Charset"] = self.charset!
        }
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.primaryZone != nil {
            map["PrimaryZone"] = self.primaryZone!
        }
        if self.tenantMode != nil {
            map["TenantMode"] = self.tenantMode!
        }
        if self.tenantName != nil {
            map["TenantName"] = self.tenantName!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        if self.unitNum != nil {
            map["UnitNum"] = self.unitNum!
        }
        if self.userVSwitchId != nil {
            map["UserVSwitchId"] = self.userVSwitchId!
        }
        if self.userVpcId != nil {
            map["UserVpcId"] = self.userVpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Charset") && dict["Charset"] != nil {
            self.charset = dict["Charset"] as! String
        }
        if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
            self.cpu = dict["Cpu"] as! Int32
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Memory") && dict["Memory"] != nil {
            self.memory = dict["Memory"] as! Int32
        }
        if dict.keys.contains("PrimaryZone") && dict["PrimaryZone"] != nil {
            self.primaryZone = dict["PrimaryZone"] as! String
        }
        if dict.keys.contains("TenantMode") && dict["TenantMode"] != nil {
            self.tenantMode = dict["TenantMode"] as! String
        }
        if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
            self.tenantName = dict["TenantName"] as! String
        }
        if dict.keys.contains("TimeZone") && dict["TimeZone"] != nil {
            self.timeZone = dict["TimeZone"] as! String
        }
        if dict.keys.contains("UnitNum") && dict["UnitNum"] != nil {
            self.unitNum = dict["UnitNum"] as! Int32
        }
        if dict.keys.contains("UserVSwitchId") && dict["UserVSwitchId"] != nil {
            self.userVSwitchId = dict["UserVSwitchId"] as! String
        }
        if dict.keys.contains("UserVpcId") && dict["UserVpcId"] != nil {
            self.userVpcId = dict["UserVpcId"] as! String
        }
    }
}

public class CreateTenantResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class CreateTenantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTenantResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateTenantResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTenantReadOnlyConnectionRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tenantId: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateTenantReadOnlyConnectionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateTenantReadOnlyConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTenantReadOnlyConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateTenantReadOnlyConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTenantSecurityIpGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public var securityIpGroupName: String?

    public var securityIps: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.securityIpGroupName != nil {
            map["SecurityIpGroupName"] = self.securityIpGroupName!
        }
        if self.securityIps != nil {
            map["SecurityIps"] = self.securityIps!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SecurityIpGroupName") && dict["SecurityIpGroupName"] != nil {
            self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
        }
        if dict.keys.contains("SecurityIps") && dict["SecurityIps"] != nil {
            self.securityIps = dict["SecurityIps"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class CreateTenantSecurityIpGroupResponseBody : Tea.TeaModel {
    public class SecurityIpGroup : Tea.TeaModel {
        public var instanceId: String?

        public var securityIpGroupName: String?

        public var securityIps: String?

        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.securityIpGroupName != nil {
                map["SecurityIpGroupName"] = self.securityIpGroupName!
            }
            if self.securityIps != nil {
                map["SecurityIps"] = self.securityIps!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("SecurityIpGroupName") && dict["SecurityIpGroupName"] != nil {
                self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
            }
            if dict.keys.contains("SecurityIps") && dict["SecurityIps"] != nil {
                self.securityIps = dict["SecurityIps"] as! String
            }
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! String
            }
        }
    }
    public var requestId: String?

    public var securityIpGroup: CreateTenantSecurityIpGroupResponseBody.SecurityIpGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityIpGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityIpGroup != nil {
            map["SecurityIpGroup"] = self.securityIpGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityIpGroup") && dict["SecurityIpGroup"] != nil {
            var model = CreateTenantSecurityIpGroupResponseBody.SecurityIpGroup()
            model.fromMap(dict["SecurityIpGroup"] as! [String: Any])
            self.securityIpGroup = model
        }
    }
}

public class CreateTenantSecurityIpGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTenantSecurityIpGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateTenantSecurityIpGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTenantUserRequest : Tea.TeaModel {
    public var description_: String?

    public var encryptionType: String?

    public var instanceId: String?

    public var roles: String?

    public var tenantId: String?

    public var userName: String?

    public var userPassword: String?

    public var userType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.encryptionType != nil {
            map["EncryptionType"] = self.encryptionType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.roles != nil {
            map["Roles"] = self.roles!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userPassword != nil {
            map["UserPassword"] = self.userPassword!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EncryptionType") && dict["EncryptionType"] != nil {
            self.encryptionType = dict["EncryptionType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Roles") && dict["Roles"] != nil {
            self.roles = dict["Roles"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("UserPassword") && dict["UserPassword"] != nil {
            self.userPassword = dict["UserPassword"] as! String
        }
        if dict.keys.contains("UserType") && dict["UserType"] != nil {
            self.userType = dict["UserType"] as! String
        }
    }
}

public class CreateTenantUserResponseBody : Tea.TeaModel {
    public class TenantUser : Tea.TeaModel {
        public class Roles : Tea.TeaModel {
            public var database: String?

            public var role: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.database != nil {
                    map["Database"] = self.database!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Database") && dict["Database"] != nil {
                    self.database = dict["Database"] as! String
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! String
                }
            }
        }
        public var roles: [CreateTenantUserResponseBody.TenantUser.Roles]?

        public var userName: String?

        public var userStatus: String?

        public var userType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.roles != nil {
                var tmp : [Any] = []
                for k in self.roles! {
                    tmp.append(k.toMap())
                }
                map["Roles"] = tmp
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userStatus != nil {
                map["UserStatus"] = self.userStatus!
            }
            if self.userType != nil {
                map["UserType"] = self.userType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Roles") && dict["Roles"] != nil {
                var tmp : [CreateTenantUserResponseBody.TenantUser.Roles] = []
                for v in dict["Roles"] as! [Any] {
                    var model = CreateTenantUserResponseBody.TenantUser.Roles()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.roles = tmp
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("UserStatus") && dict["UserStatus"] != nil {
                self.userStatus = dict["UserStatus"] as! String
            }
            if dict.keys.contains("UserType") && dict["UserType"] != nil {
                self.userType = dict["UserType"] as! String
            }
        }
    }
    public var requestId: String?

    public var tenantUser: [CreateTenantUserResponseBody.TenantUser]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantUser != nil {
            var tmp : [Any] = []
            for k in self.tenantUser! {
                tmp.append(k.toMap())
            }
            map["TenantUser"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantUser") && dict["TenantUser"] != nil {
            var tmp : [CreateTenantUserResponseBody.TenantUser] = []
            for v in dict["TenantUser"] as! [Any] {
                var model = CreateTenantUserResponseBody.TenantUser()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tenantUser = tmp
        }
    }
}

public class CreateTenantUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTenantUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateTenantUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDatabasesRequest : Tea.TeaModel {
    public var databaseNames: String?

    public var instanceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseNames != nil {
            map["DatabaseNames"] = self.databaseNames!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseNames") && dict["DatabaseNames"] != nil {
            self.databaseNames = dict["DatabaseNames"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DeleteDatabasesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteDatabasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatabasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteDatabasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteInstancesRequest : Tea.TeaModel {
    public var backupRetainMode: String?

    public var instanceIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupRetainMode != nil {
            map["BackupRetainMode"] = self.backupRetainMode!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupRetainMode") && dict["BackupRetainMode"] != nil {
            self.backupRetainMode = dict["BackupRetainMode"] as! String
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIds = dict["InstanceIds"] as! String
        }
    }
}

public class DeleteInstancesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteOmsOpenAPIProjectRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") && dict["WorkerGradeId"] != nil {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class DeleteOmsOpenAPIProjectResponseBody : Tea.TeaModel {
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") && dict["Proposal"] != nil {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: Bool?

    public var errorDetail: DeleteOmsOpenAPIProjectResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") && dict["Advice"] != nil {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") && dict["Cost"] != nil {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorDetail") && dict["ErrorDetail"] != nil {
            var model = DeleteOmsOpenAPIProjectResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DeleteOmsOpenAPIProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOmsOpenAPIProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteOmsOpenAPIProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSecurityIpGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public var securityIpGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.securityIpGroupName != nil {
            map["SecurityIpGroupName"] = self.securityIpGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SecurityIpGroupName") && dict["SecurityIpGroupName"] != nil {
            self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
        }
    }
}

public class DeleteSecurityIpGroupResponseBody : Tea.TeaModel {
    public class SecurityIpGroup : Tea.TeaModel {
        public var instanceId: String?

        public var securityIpGroupName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.securityIpGroupName != nil {
                map["SecurityIpGroupName"] = self.securityIpGroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("SecurityIpGroupName") && dict["SecurityIpGroupName"] != nil {
                self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
            }
        }
    }
    public var requestId: String?

    public var securityIpGroup: DeleteSecurityIpGroupResponseBody.SecurityIpGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityIpGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityIpGroup != nil {
            map["SecurityIpGroup"] = self.securityIpGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityIpGroup") && dict["SecurityIpGroup"] != nil {
            var model = DeleteSecurityIpGroupResponseBody.SecurityIpGroup()
            model.fromMap(dict["SecurityIpGroup"] as! [String: Any])
            self.securityIpGroup = model
        }
    }
}

public class DeleteSecurityIpGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSecurityIpGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteSecurityIpGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTenantSecurityIpGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public var securityIpGroupName: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.securityIpGroupName != nil {
            map["SecurityIpGroupName"] = self.securityIpGroupName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SecurityIpGroupName") && dict["SecurityIpGroupName"] != nil {
            self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DeleteTenantSecurityIpGroupResponseBody : Tea.TeaModel {
    public class SecurityIpGroup : Tea.TeaModel {
        public var instanceId: String?

        public var securityIpGroupName: String?

        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.securityIpGroupName != nil {
                map["SecurityIpGroupName"] = self.securityIpGroupName!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("SecurityIpGroupName") && dict["SecurityIpGroupName"] != nil {
                self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
            }
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! String
            }
        }
    }
    public var requestId: String?

    public var securityIpGroup: DeleteTenantSecurityIpGroupResponseBody.SecurityIpGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityIpGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityIpGroup != nil {
            map["SecurityIpGroup"] = self.securityIpGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityIpGroup") && dict["SecurityIpGroup"] != nil {
            var model = DeleteTenantSecurityIpGroupResponseBody.SecurityIpGroup()
            model.fromMap(dict["SecurityIpGroup"] as! [String: Any])
            self.securityIpGroup = model
        }
    }
}

public class DeleteTenantSecurityIpGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTenantSecurityIpGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteTenantSecurityIpGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTenantUsersRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tenantId: String?

    public var users: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
            self.users = dict["Users"] as! String
        }
    }
}

public class DeleteTenantUsersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteTenantUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTenantUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteTenantUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTenantsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tenantIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantIds != nil {
            map["TenantIds"] = self.tenantIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantIds") && dict["TenantIds"] != nil {
            self.tenantIds = dict["TenantIds"] as! String
        }
    }
}

public class DeleteTenantsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tenantIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantIds != nil {
            map["TenantIds"] = self.tenantIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantIds") && dict["TenantIds"] != nil {
            self.tenantIds = dict["TenantIds"] as! [String]
        }
    }
}

public class DeleteTenantsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTenantsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteTenantsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAnomalySQLListRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var dbName: String?

    public var endTime: String?

    public var filterCondition: [String: Any]?

    public var nodeIp: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: String?

    public var searchKeyWord: String?

    public var searchParameter: String?

    public var searchRule: String?

    public var searchValue: String?

    public var sortColumn: String?

    public var sortOrder: String?

    public var startTime: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterCondition != nil {
            map["FilterCondition"] = self.filterCondition!
        }
        if self.nodeIp != nil {
            map["NodeIp"] = self.nodeIp!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.searchKeyWord != nil {
            map["SearchKeyWord"] = self.searchKeyWord!
        }
        if self.searchParameter != nil {
            map["SearchParameter"] = self.searchParameter!
        }
        if self.searchRule != nil {
            map["SearchRule"] = self.searchRule!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        if self.sortColumn != nil {
            map["SortColumn"] = self.sortColumn!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterCondition") && dict["FilterCondition"] != nil {
            self.filterCondition = dict["FilterCondition"] as! [String: Any]
        }
        if dict.keys.contains("NodeIp") && dict["NodeIp"] != nil {
            self.nodeIp = dict["NodeIp"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") && dict["SQLId"] != nil {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("SearchKeyWord") && dict["SearchKeyWord"] != nil {
            self.searchKeyWord = dict["SearchKeyWord"] as! String
        }
        if dict.keys.contains("SearchParameter") && dict["SearchParameter"] != nil {
            self.searchParameter = dict["SearchParameter"] as! String
        }
        if dict.keys.contains("SearchRule") && dict["SearchRule"] != nil {
            self.searchRule = dict["SearchRule"] as! String
        }
        if dict.keys.contains("SearchValue") && dict["SearchValue"] != nil {
            self.searchValue = dict["SearchValue"] as! String
        }
        if dict.keys.contains("SortColumn") && dict["SortColumn"] != nil {
            self.sortColumn = dict["SortColumn"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeAnomalySQLListShrinkRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var dbName: String?

    public var endTime: String?

    public var filterConditionShrink: String?

    public var nodeIp: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: String?

    public var searchKeyWord: String?

    public var searchParameter: String?

    public var searchRule: String?

    public var searchValue: String?

    public var sortColumn: String?

    public var sortOrder: String?

    public var startTime: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterConditionShrink != nil {
            map["FilterCondition"] = self.filterConditionShrink!
        }
        if self.nodeIp != nil {
            map["NodeIp"] = self.nodeIp!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.searchKeyWord != nil {
            map["SearchKeyWord"] = self.searchKeyWord!
        }
        if self.searchParameter != nil {
            map["SearchParameter"] = self.searchParameter!
        }
        if self.searchRule != nil {
            map["SearchRule"] = self.searchRule!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        if self.sortColumn != nil {
            map["SortColumn"] = self.sortColumn!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterCondition") && dict["FilterCondition"] != nil {
            self.filterConditionShrink = dict["FilterCondition"] as! String
        }
        if dict.keys.contains("NodeIp") && dict["NodeIp"] != nil {
            self.nodeIp = dict["NodeIp"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") && dict["SQLId"] != nil {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("SearchKeyWord") && dict["SearchKeyWord"] != nil {
            self.searchKeyWord = dict["SearchKeyWord"] as! String
        }
        if dict.keys.contains("SearchParameter") && dict["SearchParameter"] != nil {
            self.searchParameter = dict["SearchParameter"] as! String
        }
        if dict.keys.contains("SearchRule") && dict["SearchRule"] != nil {
            self.searchRule = dict["SearchRule"] as! String
        }
        if dict.keys.contains("SearchValue") && dict["SearchValue"] != nil {
            self.searchValue = dict["SearchValue"] as! String
        }
        if dict.keys.contains("SortColumn") && dict["SortColumn"] != nil {
            self.sortColumn = dict["SortColumn"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeAnomalySQLListResponseBody : Tea.TeaModel {
    public class AnomalySQLList : Tea.TeaModel {
        public var cpuTime: Double?

        public var dbName: String?

        public var diagnosis: String?

        public var diagnosisRule: String?

        public var executions: Int64?

        public var key: Int64?

        public var requestTime: Double?

        public var requestTimeUTCString: String?

        public var SQLId: String?

        public var SQLText: String?

        public var suggestion: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpuTime != nil {
                map["CpuTime"] = self.cpuTime!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.diagnosis != nil {
                map["Diagnosis"] = self.diagnosis!
            }
            if self.diagnosisRule != nil {
                map["DiagnosisRule"] = self.diagnosisRule!
            }
            if self.executions != nil {
                map["Executions"] = self.executions!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.requestTime != nil {
                map["RequestTime"] = self.requestTime!
            }
            if self.requestTimeUTCString != nil {
                map["RequestTimeUTCString"] = self.requestTimeUTCString!
            }
            if self.SQLId != nil {
                map["SQLId"] = self.SQLId!
            }
            if self.SQLText != nil {
                map["SQLText"] = self.SQLText!
            }
            if self.suggestion != nil {
                map["Suggestion"] = self.suggestion!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CpuTime") && dict["CpuTime"] != nil {
                self.cpuTime = dict["CpuTime"] as! Double
            }
            if dict.keys.contains("DbName") && dict["DbName"] != nil {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("Diagnosis") && dict["Diagnosis"] != nil {
                self.diagnosis = dict["Diagnosis"] as! String
            }
            if dict.keys.contains("DiagnosisRule") && dict["DiagnosisRule"] != nil {
                self.diagnosisRule = dict["DiagnosisRule"] as! String
            }
            if dict.keys.contains("Executions") && dict["Executions"] != nil {
                self.executions = dict["Executions"] as! Int64
            }
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! Int64
            }
            if dict.keys.contains("RequestTime") && dict["RequestTime"] != nil {
                self.requestTime = dict["RequestTime"] as! Double
            }
            if dict.keys.contains("RequestTimeUTCString") && dict["RequestTimeUTCString"] != nil {
                self.requestTimeUTCString = dict["RequestTimeUTCString"] as! String
            }
            if dict.keys.contains("SQLId") && dict["SQLId"] != nil {
                self.SQLId = dict["SQLId"] as! String
            }
            if dict.keys.contains("SQLText") && dict["SQLText"] != nil {
                self.SQLText = dict["SQLText"] as! String
            }
            if dict.keys.contains("Suggestion") && dict["Suggestion"] != nil {
                self.suggestion = dict["Suggestion"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var anomalySQLList: [DescribeAnomalySQLListResponseBody.AnomalySQLList]?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anomalySQLList != nil {
            var tmp : [Any] = []
            for k in self.anomalySQLList! {
                tmp.append(k.toMap())
            }
            map["AnomalySQLList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnomalySQLList") && dict["AnomalySQLList"] != nil {
            var tmp : [DescribeAnomalySQLListResponseBody.AnomalySQLList] = []
            for v in dict["AnomalySQLList"] as! [Any] {
                var model = DescribeAnomalySQLListResponseBody.AnomalySQLList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.anomalySQLList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeAnomalySQLListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAnomalySQLListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeAnomalySQLListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAvailableCpuResourceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var modifyType: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModifyType") && dict["ModifyType"] != nil {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeAvailableCpuResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var maxCpu: Int64?

        public var minCpu: Int64?

        public var unitNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxCpu != nil {
                map["MaxCpu"] = self.maxCpu!
            }
            if self.minCpu != nil {
                map["MinCpu"] = self.minCpu!
            }
            if self.unitNum != nil {
                map["UnitNum"] = self.unitNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MaxCpu") && dict["MaxCpu"] != nil {
                self.maxCpu = dict["MaxCpu"] as! Int64
            }
            if dict.keys.contains("MinCpu") && dict["MinCpu"] != nil {
                self.minCpu = dict["MinCpu"] as! Int64
            }
            if dict.keys.contains("UnitNum") && dict["UnitNum"] != nil {
                self.unitNum = dict["UnitNum"] as! Int64
            }
        }
    }
    public var data: [DescribeAvailableCpuResourceResponseBody.Data]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeAvailableCpuResourceResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAvailableCpuResourceResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAvailableCpuResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAvailableCpuResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeAvailableCpuResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAvailableMemResourceRequest : Tea.TeaModel {
    public var cpuNum: Int64?

    public var instanceId: String?

    public var tenantId: String?

    public var unitNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cpuNum != nil {
            map["CpuNum"] = self.cpuNum!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.unitNum != nil {
            map["UnitNum"] = self.unitNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CpuNum") && dict["CpuNum"] != nil {
            self.cpuNum = dict["CpuNum"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UnitNum") && dict["UnitNum"] != nil {
            self.unitNum = dict["UnitNum"] as! Int64
        }
    }
}

public class DescribeAvailableMemResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var maxMem: Int64?

        public var minMem: Int64?

        public var usedMem: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxMem != nil {
                map["MaxMem"] = self.maxMem!
            }
            if self.minMem != nil {
                map["MinMem"] = self.minMem!
            }
            if self.usedMem != nil {
                map["UsedMem"] = self.usedMem!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MaxMem") && dict["MaxMem"] != nil {
                self.maxMem = dict["MaxMem"] as! Int64
            }
            if dict.keys.contains("MinMem") && dict["MinMem"] != nil {
                self.minMem = dict["MinMem"] as! Int64
            }
            if dict.keys.contains("UsedMem") && dict["UsedMem"] != nil {
                self.usedMem = dict["UsedMem"] as! Int64
            }
        }
    }
    public var data: DescribeAvailableMemResourceResponseBody.Data?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeAvailableMemResourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAvailableMemResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAvailableMemResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeAvailableMemResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCharsetRequest : Tea.TeaModel {
    public var series: String?

    public var tenantMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.series != nil {
            map["Series"] = self.series!
        }
        if self.tenantMode != nil {
            map["TenantMode"] = self.tenantMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Series") && dict["Series"] != nil {
            self.series = dict["Series"] as! String
        }
        if dict.keys.contains("TenantMode") && dict["TenantMode"] != nil {
            self.tenantMode = dict["TenantMode"] as! String
        }
    }
}

public class DescribeCharsetResponseBody : Tea.TeaModel {
    public class Charset : Tea.TeaModel {
        public var charset: String?

        public var collations: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.charset != nil {
                map["Charset"] = self.charset!
            }
            if self.collations != nil {
                map["Collations"] = self.collations!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Charset") && dict["Charset"] != nil {
                self.charset = dict["Charset"] as! String
            }
            if dict.keys.contains("Collations") && dict["Collations"] != nil {
                self.collations = dict["Collations"] as! [String]
            }
        }
    }
    public var charset: [DescribeCharsetResponseBody.Charset]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.charset != nil {
            var tmp : [Any] = []
            for k in self.charset! {
                tmp.append(k.toMap())
            }
            map["Charset"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Charset") && dict["Charset"] != nil {
            var tmp : [DescribeCharsetResponseBody.Charset] = []
            for v in dict["Charset"] as! [Any] {
                var model = DescribeCharsetResponseBody.Charset()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.charset = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCharsetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCharsetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeCharsetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDatabasesRequest : Tea.TeaModel {
    public var databaseName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

    public var tenantId: String?

    public var withTables: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.withTables != nil {
            map["WithTables"] = self.withTables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") && dict["SearchKey"] != nil {
            self.searchKey = dict["SearchKey"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("WithTables") && dict["WithTables"] != nil {
            self.withTables = dict["WithTables"] as! Bool
        }
    }
}

public class DescribeDatabasesResponseBody : Tea.TeaModel {
    public class Databases : Tea.TeaModel {
        public class Tables : Tea.TeaModel {
            public var tableName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TableName") && dict["TableName"] != nil {
                    self.tableName = dict["TableName"] as! String
                }
            }
        }
        public class Users : Tea.TeaModel {
            public var role: String?

            public var userName: String?

            public var userType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                if self.userType != nil {
                    map["UserType"] = self.userType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("UserName") && dict["UserName"] != nil {
                    self.userName = dict["UserName"] as! String
                }
                if dict.keys.contains("UserType") && dict["UserType"] != nil {
                    self.userType = dict["UserType"] as! String
                }
            }
        }
        public var collation: String?

        public var createTime: String?

        public var dataSize: Double?

        public var databaseName: String?

        public var dbType: String?

        public var description_: String?

        public var encoding: String?

        public var instanceId: String?

        public var requiredSize: Double?

        public var status: String?

        public var tables: [DescribeDatabasesResponseBody.Databases.Tables]?

        public var tenantId: String?

        public var users: [DescribeDatabasesResponseBody.Databases.Users]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.collation != nil {
                map["Collation"] = self.collation!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataSize != nil {
                map["DataSize"] = self.dataSize!
            }
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.dbType != nil {
                map["DbType"] = self.dbType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.encoding != nil {
                map["Encoding"] = self.encoding!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.requiredSize != nil {
                map["RequiredSize"] = self.requiredSize!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tables != nil {
                var tmp : [Any] = []
                for k in self.tables! {
                    tmp.append(k.toMap())
                }
                map["Tables"] = tmp
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.users != nil {
                var tmp : [Any] = []
                for k in self.users! {
                    tmp.append(k.toMap())
                }
                map["Users"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Collation") && dict["Collation"] != nil {
                self.collation = dict["Collation"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DataSize") && dict["DataSize"] != nil {
                self.dataSize = dict["DataSize"] as! Double
            }
            if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                self.databaseName = dict["DatabaseName"] as! String
            }
            if dict.keys.contains("DbType") && dict["DbType"] != nil {
                self.dbType = dict["DbType"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Encoding") && dict["Encoding"] != nil {
                self.encoding = dict["Encoding"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("RequiredSize") && dict["RequiredSize"] != nil {
                self.requiredSize = dict["RequiredSize"] as! Double
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tables") && dict["Tables"] != nil {
                var tmp : [DescribeDatabasesResponseBody.Databases.Tables] = []
                for v in dict["Tables"] as! [Any] {
                    var model = DescribeDatabasesResponseBody.Databases.Tables()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tables = tmp
            }
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("Users") && dict["Users"] != nil {
                var tmp : [DescribeDatabasesResponseBody.Databases.Users] = []
                for v in dict["Users"] as! [Any] {
                    var model = DescribeDatabasesResponseBody.Databases.Users()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.users = tmp
            }
        }
    }
    public var databases: [DescribeDatabasesResponseBody.Databases]?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databases != nil {
            var tmp : [Any] = []
            for k in self.databases! {
                tmp.append(k.toMap())
            }
            map["Databases"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Databases") && dict["Databases"] != nil {
            var tmp : [DescribeDatabasesResponseBody.Databases] = []
            for v in dict["Databases"] as! [Any] {
                var model = DescribeDatabasesResponseBody.Databases()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.databases = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDatabasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDatabasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDatabasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeInstanceResponseBody : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
        public class Resource : Tea.TeaModel {
            public class Cpu : Tea.TeaModel {
                public var totalCpu: Int64?

                public var unitCpu: Int64?

                public var usedCpu: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalCpu != nil {
                        map["TotalCpu"] = self.totalCpu!
                    }
                    if self.unitCpu != nil {
                        map["UnitCpu"] = self.unitCpu!
                    }
                    if self.usedCpu != nil {
                        map["UsedCpu"] = self.usedCpu!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalCpu") && dict["TotalCpu"] != nil {
                        self.totalCpu = dict["TotalCpu"] as! Int64
                    }
                    if dict.keys.contains("UnitCpu") && dict["UnitCpu"] != nil {
                        self.unitCpu = dict["UnitCpu"] as! Int64
                    }
                    if dict.keys.contains("UsedCpu") && dict["UsedCpu"] != nil {
                        self.usedCpu = dict["UsedCpu"] as! Int64
                    }
                }
            }
            public class DiskSize : Tea.TeaModel {
                public var dataUsedSize: Double?

                public var maxDiskUsedObServer: [String]?

                public var maxDiskUsedPercent: Double?

                public var totalDiskSize: Int64?

                public var unitDiskSize: Int64?

                public var usedDiskSize: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dataUsedSize != nil {
                        map["DataUsedSize"] = self.dataUsedSize!
                    }
                    if self.maxDiskUsedObServer != nil {
                        map["MaxDiskUsedObServer"] = self.maxDiskUsedObServer!
                    }
                    if self.maxDiskUsedPercent != nil {
                        map["MaxDiskUsedPercent"] = self.maxDiskUsedPercent!
                    }
                    if self.totalDiskSize != nil {
                        map["TotalDiskSize"] = self.totalDiskSize!
                    }
                    if self.unitDiskSize != nil {
                        map["UnitDiskSize"] = self.unitDiskSize!
                    }
                    if self.usedDiskSize != nil {
                        map["UsedDiskSize"] = self.usedDiskSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DataUsedSize") && dict["DataUsedSize"] != nil {
                        self.dataUsedSize = dict["DataUsedSize"] as! Double
                    }
                    if dict.keys.contains("MaxDiskUsedObServer") && dict["MaxDiskUsedObServer"] != nil {
                        self.maxDiskUsedObServer = dict["MaxDiskUsedObServer"] as! [String]
                    }
                    if dict.keys.contains("MaxDiskUsedPercent") && dict["MaxDiskUsedPercent"] != nil {
                        self.maxDiskUsedPercent = dict["MaxDiskUsedPercent"] as! Double
                    }
                    if dict.keys.contains("TotalDiskSize") && dict["TotalDiskSize"] != nil {
                        self.totalDiskSize = dict["TotalDiskSize"] as! Int64
                    }
                    if dict.keys.contains("UnitDiskSize") && dict["UnitDiskSize"] != nil {
                        self.unitDiskSize = dict["UnitDiskSize"] as! Int64
                    }
                    if dict.keys.contains("UsedDiskSize") && dict["UsedDiskSize"] != nil {
                        self.usedDiskSize = dict["UsedDiskSize"] as! Int64
                    }
                }
            }
            public class LogDiskSize : Tea.TeaModel {
                public var totalDiskSize: Int64?

                public var unitDiskSize: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalDiskSize != nil {
                        map["TotalDiskSize"] = self.totalDiskSize!
                    }
                    if self.unitDiskSize != nil {
                        map["UnitDiskSize"] = self.unitDiskSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalDiskSize") && dict["TotalDiskSize"] != nil {
                        self.totalDiskSize = dict["TotalDiskSize"] as! Int64
                    }
                    if dict.keys.contains("UnitDiskSize") && dict["UnitDiskSize"] != nil {
                        self.unitDiskSize = dict["UnitDiskSize"] as! Int64
                    }
                }
            }
            public class Memory : Tea.TeaModel {
                public var totalMemory: Int64?

                public var unitMemory: Int64?

                public var usedMemory: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalMemory != nil {
                        map["TotalMemory"] = self.totalMemory!
                    }
                    if self.unitMemory != nil {
                        map["UnitMemory"] = self.unitMemory!
                    }
                    if self.usedMemory != nil {
                        map["UsedMemory"] = self.usedMemory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalMemory") && dict["TotalMemory"] != nil {
                        self.totalMemory = dict["TotalMemory"] as! Int64
                    }
                    if dict.keys.contains("UnitMemory") && dict["UnitMemory"] != nil {
                        self.unitMemory = dict["UnitMemory"] as! Int64
                    }
                    if dict.keys.contains("UsedMemory") && dict["UsedMemory"] != nil {
                        self.usedMemory = dict["UsedMemory"] as! Int64
                    }
                }
            }
            public var cpu: DescribeInstanceResponseBody.Instance.Resource.Cpu?

            public var diskSize: DescribeInstanceResponseBody.Instance.Resource.DiskSize?

            public var logDiskSize: DescribeInstanceResponseBody.Instance.Resource.LogDiskSize?

            public var memory: DescribeInstanceResponseBody.Instance.Resource.Memory?

            public var unitCount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cpu?.validate()
                try self.diskSize?.validate()
                try self.logDiskSize?.validate()
                try self.memory?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpu != nil {
                    map["Cpu"] = self.cpu?.toMap()
                }
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize?.toMap()
                }
                if self.logDiskSize != nil {
                    map["LogDiskSize"] = self.logDiskSize?.toMap()
                }
                if self.memory != nil {
                    map["Memory"] = self.memory?.toMap()
                }
                if self.unitCount != nil {
                    map["UnitCount"] = self.unitCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                    var model = DescribeInstanceResponseBody.Instance.Resource.Cpu()
                    model.fromMap(dict["Cpu"] as! [String: Any])
                    self.cpu = model
                }
                if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
                    var model = DescribeInstanceResponseBody.Instance.Resource.DiskSize()
                    model.fromMap(dict["DiskSize"] as! [String: Any])
                    self.diskSize = model
                }
                if dict.keys.contains("LogDiskSize") && dict["LogDiskSize"] != nil {
                    var model = DescribeInstanceResponseBody.Instance.Resource.LogDiskSize()
                    model.fromMap(dict["LogDiskSize"] as! [String: Any])
                    self.logDiskSize = model
                }
                if dict.keys.contains("Memory") && dict["Memory"] != nil {
                    var model = DescribeInstanceResponseBody.Instance.Resource.Memory()
                    model.fromMap(dict["Memory"] as! [String: Any])
                    self.memory = model
                }
                if dict.keys.contains("UnitCount") && dict["UnitCount"] != nil {
                    self.unitCount = dict["UnitCount"] as! Int64
                }
            }
        }
        public var autoRenewal: Bool?

        public var autoUpgradeObVersion: Bool?

        public var availableZones: [String]?

        public var createTime: String?

        public var dataMergeTime: String?

        public var deployMode: String?

        public var deployType: String?

        public var diskType: String?

        public var enableIsolationOptimization: Bool?

        public var enableUpgradeLogDisk: Bool?

        public var expireTime: String?

        public var instanceClass: String?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceRole: String?

        public var isLatestObVersion: Bool?

        public var isTrustEcs: Bool?

        public var isolationOptimization: Bool?

        public var maintainTime: String?

        public var nodeNum: String?

        public var obRpmVersion: String?

        public var payType: String?

        public var resource: DescribeInstanceResponseBody.Instance.Resource?

        public var series: String?

        public var status: String?

        public var version: String?

        public var zones: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resource?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRenewal != nil {
                map["AutoRenewal"] = self.autoRenewal!
            }
            if self.autoUpgradeObVersion != nil {
                map["AutoUpgradeObVersion"] = self.autoUpgradeObVersion!
            }
            if self.availableZones != nil {
                map["AvailableZones"] = self.availableZones!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataMergeTime != nil {
                map["DataMergeTime"] = self.dataMergeTime!
            }
            if self.deployMode != nil {
                map["DeployMode"] = self.deployMode!
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.diskType != nil {
                map["DiskType"] = self.diskType!
            }
            if self.enableIsolationOptimization != nil {
                map["EnableIsolationOptimization"] = self.enableIsolationOptimization!
            }
            if self.enableUpgradeLogDisk != nil {
                map["EnableUpgradeLogDisk"] = self.enableUpgradeLogDisk!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.instanceClass != nil {
                map["InstanceClass"] = self.instanceClass!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceRole != nil {
                map["InstanceRole"] = self.instanceRole!
            }
            if self.isLatestObVersion != nil {
                map["IsLatestObVersion"] = self.isLatestObVersion!
            }
            if self.isTrustEcs != nil {
                map["IsTrustEcs"] = self.isTrustEcs!
            }
            if self.isolationOptimization != nil {
                map["IsolationOptimization"] = self.isolationOptimization!
            }
            if self.maintainTime != nil {
                map["MaintainTime"] = self.maintainTime!
            }
            if self.nodeNum != nil {
                map["NodeNum"] = self.nodeNum!
            }
            if self.obRpmVersion != nil {
                map["ObRpmVersion"] = self.obRpmVersion!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.resource != nil {
                map["Resource"] = self.resource?.toMap()
            }
            if self.series != nil {
                map["Series"] = self.series!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.zones != nil {
                map["Zones"] = self.zones!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoRenewal") && dict["AutoRenewal"] != nil {
                self.autoRenewal = dict["AutoRenewal"] as! Bool
            }
            if dict.keys.contains("AutoUpgradeObVersion") && dict["AutoUpgradeObVersion"] != nil {
                self.autoUpgradeObVersion = dict["AutoUpgradeObVersion"] as! Bool
            }
            if dict.keys.contains("AvailableZones") && dict["AvailableZones"] != nil {
                self.availableZones = dict["AvailableZones"] as! [String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DataMergeTime") && dict["DataMergeTime"] != nil {
                self.dataMergeTime = dict["DataMergeTime"] as! String
            }
            if dict.keys.contains("DeployMode") && dict["DeployMode"] != nil {
                self.deployMode = dict["DeployMode"] as! String
            }
            if dict.keys.contains("DeployType") && dict["DeployType"] != nil {
                self.deployType = dict["DeployType"] as! String
            }
            if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
                self.diskType = dict["DiskType"] as! String
            }
            if dict.keys.contains("EnableIsolationOptimization") && dict["EnableIsolationOptimization"] != nil {
                self.enableIsolationOptimization = dict["EnableIsolationOptimization"] as! Bool
            }
            if dict.keys.contains("EnableUpgradeLogDisk") && dict["EnableUpgradeLogDisk"] != nil {
                self.enableUpgradeLogDisk = dict["EnableUpgradeLogDisk"] as! Bool
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("InstanceClass") && dict["InstanceClass"] != nil {
                self.instanceClass = dict["InstanceClass"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("InstanceRole") && dict["InstanceRole"] != nil {
                self.instanceRole = dict["InstanceRole"] as! String
            }
            if dict.keys.contains("IsLatestObVersion") && dict["IsLatestObVersion"] != nil {
                self.isLatestObVersion = dict["IsLatestObVersion"] as! Bool
            }
            if dict.keys.contains("IsTrustEcs") && dict["IsTrustEcs"] != nil {
                self.isTrustEcs = dict["IsTrustEcs"] as! Bool
            }
            if dict.keys.contains("IsolationOptimization") && dict["IsolationOptimization"] != nil {
                self.isolationOptimization = dict["IsolationOptimization"] as! Bool
            }
            if dict.keys.contains("MaintainTime") && dict["MaintainTime"] != nil {
                self.maintainTime = dict["MaintainTime"] as! String
            }
            if dict.keys.contains("NodeNum") && dict["NodeNum"] != nil {
                self.nodeNum = dict["NodeNum"] as! String
            }
            if dict.keys.contains("ObRpmVersion") && dict["ObRpmVersion"] != nil {
                self.obRpmVersion = dict["ObRpmVersion"] as! String
            }
            if dict.keys.contains("PayType") && dict["PayType"] != nil {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("Resource") && dict["Resource"] != nil {
                var model = DescribeInstanceResponseBody.Instance.Resource()
                model.fromMap(dict["Resource"] as! [String: Any])
                self.resource = model
            }
            if dict.keys.contains("Series") && dict["Series"] != nil {
                self.series = dict["Series"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("Zones") && dict["Zones"] != nil {
                self.zones = dict["Zones"] as! [String]
            }
        }
    }
    public var instance: DescribeInstanceResponseBody.Instance?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instance != nil {
            map["Instance"] = self.instance?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instance") && dict["Instance"] != nil {
            var model = DescribeInstanceResponseBody.Instance()
            model.fromMap(dict["Instance"] as! [String: Any])
            self.instance = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceCreatableZoneRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeInstanceCreatableZoneResponseBody : Tea.TeaModel {
    public class ZoneList : Tea.TeaModel {
        public var isInCluster: Bool?

        public var zone: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isInCluster != nil {
                map["IsInCluster"] = self.isInCluster!
            }
            if self.zone != nil {
                map["Zone"] = self.zone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsInCluster") && dict["IsInCluster"] != nil {
                self.isInCluster = dict["IsInCluster"] as! Bool
            }
            if dict.keys.contains("Zone") && dict["Zone"] != nil {
                self.zone = dict["Zone"] as! String
            }
        }
    }
    public var requestId: String?

    public var zoneList: [DescribeInstanceCreatableZoneResponseBody.ZoneList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.zoneList != nil {
            var tmp : [Any] = []
            for k in self.zoneList! {
                tmp.append(k.toMap())
            }
            map["ZoneList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ZoneList") && dict["ZoneList"] != nil {
            var tmp : [DescribeInstanceCreatableZoneResponseBody.ZoneList] = []
            for v in dict["ZoneList"] as! [Any] {
                var model = DescribeInstanceCreatableZoneResponseBody.ZoneList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.zoneList = tmp
        }
    }
}

public class DescribeInstanceCreatableZoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceCreatableZoneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeInstanceCreatableZoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceSecurityConfigsRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeInstanceSecurityConfigsResponseBody : Tea.TeaModel {
    public class InstanceSecurityConfigs : Tea.TeaModel {
        public class SecurityConfigs : Tea.TeaModel {
            public var configDescription: String?

            public var configGroup: String?

            public var configName: String?

            public var risk: Bool?

            public var riskDescription: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configDescription != nil {
                    map["ConfigDescription"] = self.configDescription!
                }
                if self.configGroup != nil {
                    map["ConfigGroup"] = self.configGroup!
                }
                if self.configName != nil {
                    map["ConfigName"] = self.configName!
                }
                if self.risk != nil {
                    map["Risk"] = self.risk!
                }
                if self.riskDescription != nil {
                    map["RiskDescription"] = self.riskDescription!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigDescription") && dict["ConfigDescription"] != nil {
                    self.configDescription = dict["ConfigDescription"] as! String
                }
                if dict.keys.contains("ConfigGroup") && dict["ConfigGroup"] != nil {
                    self.configGroup = dict["ConfigGroup"] as! String
                }
                if dict.keys.contains("ConfigName") && dict["ConfigName"] != nil {
                    self.configName = dict["ConfigName"] as! String
                }
                if dict.keys.contains("Risk") && dict["Risk"] != nil {
                    self.risk = dict["Risk"] as! Bool
                }
                if dict.keys.contains("RiskDescription") && dict["RiskDescription"] != nil {
                    self.riskDescription = dict["RiskDescription"] as! String
                }
            }
        }
        public var securityConfigs: [DescribeInstanceSecurityConfigsResponseBody.InstanceSecurityConfigs.SecurityConfigs]?

        public var totalCheckCount: Int32?

        public var totalRiskCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityConfigs != nil {
                var tmp : [Any] = []
                for k in self.securityConfigs! {
                    tmp.append(k.toMap())
                }
                map["SecurityConfigs"] = tmp
            }
            if self.totalCheckCount != nil {
                map["TotalCheckCount"] = self.totalCheckCount!
            }
            if self.totalRiskCount != nil {
                map["TotalRiskCount"] = self.totalRiskCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SecurityConfigs") && dict["SecurityConfigs"] != nil {
                var tmp : [DescribeInstanceSecurityConfigsResponseBody.InstanceSecurityConfigs.SecurityConfigs] = []
                for v in dict["SecurityConfigs"] as! [Any] {
                    var model = DescribeInstanceSecurityConfigsResponseBody.InstanceSecurityConfigs.SecurityConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.securityConfigs = tmp
            }
            if dict.keys.contains("TotalCheckCount") && dict["TotalCheckCount"] != nil {
                self.totalCheckCount = dict["TotalCheckCount"] as! Int32
            }
            if dict.keys.contains("TotalRiskCount") && dict["TotalRiskCount"] != nil {
                self.totalRiskCount = dict["TotalRiskCount"] as! Int32
            }
        }
    }
    public var instanceSecurityConfigs: DescribeInstanceSecurityConfigsResponseBody.InstanceSecurityConfigs?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceSecurityConfigs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceSecurityConfigs != nil {
            map["InstanceSecurityConfigs"] = self.instanceSecurityConfigs?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceSecurityConfigs") && dict["InstanceSecurityConfigs"] != nil {
            var model = DescribeInstanceSecurityConfigsResponseBody.InstanceSecurityConfigs()
            model.fromMap(dict["InstanceSecurityConfigs"] as! [String: Any])
            self.instanceSecurityConfigs = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeInstanceSecurityConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceSecurityConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeInstanceSecurityConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceTagsRequest : Tea.TeaModel {
    public var instanceIds: String?

    public var tags: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIds = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class DescribeInstanceTagsResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public var resourceId: String?

        public var resourceType: String?

        public var tag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                self.tag = dict["Tag"] as! String
            }
        }
    }
    public var requestId: String?

    public var tagResources: [DescribeInstanceTagsResponseBody.TagResources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["TagResources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") && dict["TagResources"] != nil {
            var tmp : [DescribeInstanceTagsResponseBody.TagResources] = []
            for v in dict["TagResources"] as! [Any] {
                var model = DescribeInstanceTagsResponseBody.TagResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagResources = tmp
        }
    }
}

public class DescribeInstanceTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeInstanceTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceTenantModesRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeInstanceTenantModesResponseBody : Tea.TeaModel {
    public var instanceModes: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceModes != nil {
            map["InstanceModes"] = self.instanceModes!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceModes") && dict["InstanceModes"] != nil {
            self.instanceModes = dict["InstanceModes"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeInstanceTenantModesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceTenantModesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeInstanceTenantModesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceTopologyRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeInstanceTopologyResponseBody : Tea.TeaModel {
    public class InstanceTopology : Tea.TeaModel {
        public class Tenants : Tea.TeaModel {
            public class TenantZones : Tea.TeaModel {
                public class Units : Tea.TeaModel {
                    public var enableCancelMigrateUnit: Bool?

                    public var enableMigrateUnit: Bool?

                    public var manualMigrate: Bool?

                    public var nodeId: String?

                    public var unitCpu: Double?

                    public var unitDataSize: Int64?

                    public var unitId: String?

                    public var unitMemory: Double?

                    public var unitStatus: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.enableCancelMigrateUnit != nil {
                            map["EnableCancelMigrateUnit"] = self.enableCancelMigrateUnit!
                        }
                        if self.enableMigrateUnit != nil {
                            map["EnableMigrateUnit"] = self.enableMigrateUnit!
                        }
                        if self.manualMigrate != nil {
                            map["ManualMigrate"] = self.manualMigrate!
                        }
                        if self.nodeId != nil {
                            map["NodeId"] = self.nodeId!
                        }
                        if self.unitCpu != nil {
                            map["UnitCpu"] = self.unitCpu!
                        }
                        if self.unitDataSize != nil {
                            map["UnitDataSize"] = self.unitDataSize!
                        }
                        if self.unitId != nil {
                            map["UnitId"] = self.unitId!
                        }
                        if self.unitMemory != nil {
                            map["UnitMemory"] = self.unitMemory!
                        }
                        if self.unitStatus != nil {
                            map["UnitStatus"] = self.unitStatus!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("EnableCancelMigrateUnit") && dict["EnableCancelMigrateUnit"] != nil {
                            self.enableCancelMigrateUnit = dict["EnableCancelMigrateUnit"] as! Bool
                        }
                        if dict.keys.contains("EnableMigrateUnit") && dict["EnableMigrateUnit"] != nil {
                            self.enableMigrateUnit = dict["EnableMigrateUnit"] as! Bool
                        }
                        if dict.keys.contains("ManualMigrate") && dict["ManualMigrate"] != nil {
                            self.manualMigrate = dict["ManualMigrate"] as! Bool
                        }
                        if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
                            self.nodeId = dict["NodeId"] as! String
                        }
                        if dict.keys.contains("UnitCpu") && dict["UnitCpu"] != nil {
                            self.unitCpu = dict["UnitCpu"] as! Double
                        }
                        if dict.keys.contains("UnitDataSize") && dict["UnitDataSize"] != nil {
                            self.unitDataSize = dict["UnitDataSize"] as! Int64
                        }
                        if dict.keys.contains("UnitId") && dict["UnitId"] != nil {
                            self.unitId = dict["UnitId"] as! String
                        }
                        if dict.keys.contains("UnitMemory") && dict["UnitMemory"] != nil {
                            self.unitMemory = dict["UnitMemory"] as! Double
                        }
                        if dict.keys.contains("UnitStatus") && dict["UnitStatus"] != nil {
                            self.unitStatus = dict["UnitStatus"] as! String
                        }
                    }
                }
                public var isPrimaryTenantZone: String?

                public var tenantZoneId: String?

                public var tenantZoneRole: String?

                public var units: [DescribeInstanceTopologyResponseBody.InstanceTopology.Tenants.TenantZones.Units]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.isPrimaryTenantZone != nil {
                        map["IsPrimaryTenantZone"] = self.isPrimaryTenantZone!
                    }
                    if self.tenantZoneId != nil {
                        map["TenantZoneId"] = self.tenantZoneId!
                    }
                    if self.tenantZoneRole != nil {
                        map["TenantZoneRole"] = self.tenantZoneRole!
                    }
                    if self.units != nil {
                        var tmp : [Any] = []
                        for k in self.units! {
                            tmp.append(k.toMap())
                        }
                        map["Units"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IsPrimaryTenantZone") && dict["IsPrimaryTenantZone"] != nil {
                        self.isPrimaryTenantZone = dict["IsPrimaryTenantZone"] as! String
                    }
                    if dict.keys.contains("TenantZoneId") && dict["TenantZoneId"] != nil {
                        self.tenantZoneId = dict["TenantZoneId"] as! String
                    }
                    if dict.keys.contains("TenantZoneRole") && dict["TenantZoneRole"] != nil {
                        self.tenantZoneRole = dict["TenantZoneRole"] as! String
                    }
                    if dict.keys.contains("Units") && dict["Units"] != nil {
                        var tmp : [DescribeInstanceTopologyResponseBody.InstanceTopology.Tenants.TenantZones.Units] = []
                        for v in dict["Units"] as! [Any] {
                            var model = DescribeInstanceTopologyResponseBody.InstanceTopology.Tenants.TenantZones.Units()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.units = tmp
                    }
                }
            }
            public var primaryZoneDeployType: String?

            public var tenantCpu: Double?

            public var tenantDeployType: String?

            public var tenantId: String?

            public var tenantMemory: Double?

            public var tenantMode: String?

            public var tenantName: String?

            public var tenantStatus: String?

            public var tenantUnitNum: Int32?

            public var tenantZones: [DescribeInstanceTopologyResponseBody.InstanceTopology.Tenants.TenantZones]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.primaryZoneDeployType != nil {
                    map["PrimaryZoneDeployType"] = self.primaryZoneDeployType!
                }
                if self.tenantCpu != nil {
                    map["TenantCpu"] = self.tenantCpu!
                }
                if self.tenantDeployType != nil {
                    map["TenantDeployType"] = self.tenantDeployType!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.tenantMemory != nil {
                    map["TenantMemory"] = self.tenantMemory!
                }
                if self.tenantMode != nil {
                    map["TenantMode"] = self.tenantMode!
                }
                if self.tenantName != nil {
                    map["TenantName"] = self.tenantName!
                }
                if self.tenantStatus != nil {
                    map["TenantStatus"] = self.tenantStatus!
                }
                if self.tenantUnitNum != nil {
                    map["TenantUnitNum"] = self.tenantUnitNum!
                }
                if self.tenantZones != nil {
                    var tmp : [Any] = []
                    for k in self.tenantZones! {
                        tmp.append(k.toMap())
                    }
                    map["TenantZones"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PrimaryZoneDeployType") && dict["PrimaryZoneDeployType"] != nil {
                    self.primaryZoneDeployType = dict["PrimaryZoneDeployType"] as! String
                }
                if dict.keys.contains("TenantCpu") && dict["TenantCpu"] != nil {
                    self.tenantCpu = dict["TenantCpu"] as! Double
                }
                if dict.keys.contains("TenantDeployType") && dict["TenantDeployType"] != nil {
                    self.tenantDeployType = dict["TenantDeployType"] as! String
                }
                if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                    self.tenantId = dict["TenantId"] as! String
                }
                if dict.keys.contains("TenantMemory") && dict["TenantMemory"] != nil {
                    self.tenantMemory = dict["TenantMemory"] as! Double
                }
                if dict.keys.contains("TenantMode") && dict["TenantMode"] != nil {
                    self.tenantMode = dict["TenantMode"] as! String
                }
                if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
                    self.tenantName = dict["TenantName"] as! String
                }
                if dict.keys.contains("TenantStatus") && dict["TenantStatus"] != nil {
                    self.tenantStatus = dict["TenantStatus"] as! String
                }
                if dict.keys.contains("TenantUnitNum") && dict["TenantUnitNum"] != nil {
                    self.tenantUnitNum = dict["TenantUnitNum"] as! Int32
                }
                if dict.keys.contains("TenantZones") && dict["TenantZones"] != nil {
                    var tmp : [DescribeInstanceTopologyResponseBody.InstanceTopology.Tenants.TenantZones] = []
                    for v in dict["TenantZones"] as! [Any] {
                        var model = DescribeInstanceTopologyResponseBody.InstanceTopology.Tenants.TenantZones()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tenantZones = tmp
                }
            }
        }
        public class Zones : Tea.TeaModel {
            public class Nodes : Tea.TeaModel {
                public class NodeResource : Tea.TeaModel {
                    public class Cpu : Tea.TeaModel {
                        public var totalCpu: Int32?

                        public var usedCpu: Double?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.totalCpu != nil {
                                map["TotalCpu"] = self.totalCpu!
                            }
                            if self.usedCpu != nil {
                                map["UsedCpu"] = self.usedCpu!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("TotalCpu") && dict["TotalCpu"] != nil {
                                self.totalCpu = dict["TotalCpu"] as! Int32
                            }
                            if dict.keys.contains("UsedCpu") && dict["UsedCpu"] != nil {
                                self.usedCpu = dict["UsedCpu"] as! Double
                            }
                        }
                    }
                    public class DiskSize : Tea.TeaModel {
                        public var totalDiskSize: Double?

                        public var usedDiskSize: Double?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.totalDiskSize != nil {
                                map["TotalDiskSize"] = self.totalDiskSize!
                            }
                            if self.usedDiskSize != nil {
                                map["UsedDiskSize"] = self.usedDiskSize!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("TotalDiskSize") && dict["TotalDiskSize"] != nil {
                                self.totalDiskSize = dict["TotalDiskSize"] as! Double
                            }
                            if dict.keys.contains("UsedDiskSize") && dict["UsedDiskSize"] != nil {
                                self.usedDiskSize = dict["UsedDiskSize"] as! Double
                            }
                        }
                    }
                    public class Memory : Tea.TeaModel {
                        public var totalMemory: Int64?

                        public var usedMemory: Double?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.totalMemory != nil {
                                map["TotalMemory"] = self.totalMemory!
                            }
                            if self.usedMemory != nil {
                                map["UsedMemory"] = self.usedMemory!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("TotalMemory") && dict["TotalMemory"] != nil {
                                self.totalMemory = dict["TotalMemory"] as! Int64
                            }
                            if dict.keys.contains("UsedMemory") && dict["UsedMemory"] != nil {
                                self.usedMemory = dict["UsedMemory"] as! Double
                            }
                        }
                    }
                    public var cpu: DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource.Cpu?

                    public var diskSize: DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource.DiskSize?

                    public var memory: DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource.Memory?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.cpu?.validate()
                        try self.diskSize?.validate()
                        try self.memory?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.cpu != nil {
                            map["Cpu"] = self.cpu?.toMap()
                        }
                        if self.diskSize != nil {
                            map["DiskSize"] = self.diskSize?.toMap()
                        }
                        if self.memory != nil {
                            map["Memory"] = self.memory?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                            var model = DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource.Cpu()
                            model.fromMap(dict["Cpu"] as! [String: Any])
                            self.cpu = model
                        }
                        if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
                            var model = DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource.DiskSize()
                            model.fromMap(dict["DiskSize"] as! [String: Any])
                            self.diskSize = model
                        }
                        if dict.keys.contains("Memory") && dict["Memory"] != nil {
                            var model = DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource.Memory()
                            model.fromMap(dict["Memory"] as! [String: Any])
                            self.memory = model
                        }
                    }
                }
                public var nodeCopyId: Int64?

                public var nodeId: String?

                public var nodeResource: [DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource]?

                public var nodeStatus: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.nodeCopyId != nil {
                        map["NodeCopyId"] = self.nodeCopyId!
                    }
                    if self.nodeId != nil {
                        map["NodeId"] = self.nodeId!
                    }
                    if self.nodeResource != nil {
                        var tmp : [Any] = []
                        for k in self.nodeResource! {
                            tmp.append(k.toMap())
                        }
                        map["NodeResource"] = tmp
                    }
                    if self.nodeStatus != nil {
                        map["NodeStatus"] = self.nodeStatus!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("NodeCopyId") && dict["NodeCopyId"] != nil {
                        self.nodeCopyId = dict["NodeCopyId"] as! Int64
                    }
                    if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
                        self.nodeId = dict["NodeId"] as! String
                    }
                    if dict.keys.contains("NodeResource") && dict["NodeResource"] != nil {
                        var tmp : [DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource] = []
                        for v in dict["NodeResource"] as! [Any] {
                            var model = DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.nodeResource = tmp
                    }
                    if dict.keys.contains("NodeStatus") && dict["NodeStatus"] != nil {
                        self.nodeStatus = dict["NodeStatus"] as! String
                    }
                }
            }
            public class ZoneResource : Tea.TeaModel {
                public class DiskSize : Tea.TeaModel {
                    public var maxDiskUsedObServer: [String]?

                    public var maxDiskUsedPercent: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.maxDiskUsedObServer != nil {
                            map["MaxDiskUsedObServer"] = self.maxDiskUsedObServer!
                        }
                        if self.maxDiskUsedPercent != nil {
                            map["MaxDiskUsedPercent"] = self.maxDiskUsedPercent!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("MaxDiskUsedObServer") && dict["MaxDiskUsedObServer"] != nil {
                            self.maxDiskUsedObServer = dict["MaxDiskUsedObServer"] as! [String]
                        }
                        if dict.keys.contains("MaxDiskUsedPercent") && dict["MaxDiskUsedPercent"] != nil {
                            self.maxDiskUsedPercent = dict["MaxDiskUsedPercent"] as! Double
                        }
                    }
                }
                public var diskSize: DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.ZoneResource.DiskSize?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.diskSize?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.diskSize != nil {
                        map["DiskSize"] = self.diskSize?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
                        var model = DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.ZoneResource.DiskSize()
                        model.fromMap(dict["DiskSize"] as! [String: Any])
                        self.diskSize = model
                    }
                }
            }
            public var nodes: [DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes]?

            public var region: String?

            public var zoneDisk: String?

            public var zoneId: String?

            public var zoneResource: DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.ZoneResource?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.zoneResource?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nodes != nil {
                    var tmp : [Any] = []
                    for k in self.nodes! {
                        tmp.append(k.toMap())
                    }
                    map["Nodes"] = tmp
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.zoneDisk != nil {
                    map["ZoneDisk"] = self.zoneDisk!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                if self.zoneResource != nil {
                    map["ZoneResource"] = self.zoneResource?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
                    var tmp : [DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes] = []
                    for v in dict["Nodes"] as! [Any] {
                        var model = DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.nodes = tmp
                }
                if dict.keys.contains("Region") && dict["Region"] != nil {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ZoneDisk") && dict["ZoneDisk"] != nil {
                    self.zoneDisk = dict["ZoneDisk"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
                if dict.keys.contains("ZoneResource") && dict["ZoneResource"] != nil {
                    var model = DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.ZoneResource()
                    model.fromMap(dict["ZoneResource"] as! [String: Any])
                    self.zoneResource = model
                }
            }
        }
        public var tenants: [DescribeInstanceTopologyResponseBody.InstanceTopology.Tenants]?

        public var zones: [DescribeInstanceTopologyResponseBody.InstanceTopology.Zones]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenants != nil {
                var tmp : [Any] = []
                for k in self.tenants! {
                    tmp.append(k.toMap())
                }
                map["Tenants"] = tmp
            }
            if self.zones != nil {
                var tmp : [Any] = []
                for k in self.zones! {
                    tmp.append(k.toMap())
                }
                map["Zones"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Tenants") && dict["Tenants"] != nil {
                var tmp : [DescribeInstanceTopologyResponseBody.InstanceTopology.Tenants] = []
                for v in dict["Tenants"] as! [Any] {
                    var model = DescribeInstanceTopologyResponseBody.InstanceTopology.Tenants()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tenants = tmp
            }
            if dict.keys.contains("Zones") && dict["Zones"] != nil {
                var tmp : [DescribeInstanceTopologyResponseBody.InstanceTopology.Zones] = []
                for v in dict["Zones"] as! [Any] {
                    var model = DescribeInstanceTopologyResponseBody.InstanceTopology.Zones()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.zones = tmp
            }
        }
    }
    public var instanceTopology: DescribeInstanceTopologyResponseBody.InstanceTopology?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceTopology?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceTopology != nil {
            map["InstanceTopology"] = self.instanceTopology?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceTopology") && dict["InstanceTopology"] != nil {
            var model = DescribeInstanceTopologyResponseBody.InstanceTopology()
            model.fromMap(dict["InstanceTopology"] as! [String: Any])
            self.instanceTopology = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeInstanceTopologyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceTopologyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeInstanceTopologyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstancesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instanceName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var searchKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SearchKey") && dict["SearchKey"] != nil {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class DescribeInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class Resource : Tea.TeaModel {
            public class Cpu : Tea.TeaModel {
                public var totalCpu: Int64?

                public var unitCpu: Int64?

                public var usedCpu: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalCpu != nil {
                        map["TotalCpu"] = self.totalCpu!
                    }
                    if self.unitCpu != nil {
                        map["UnitCpu"] = self.unitCpu!
                    }
                    if self.usedCpu != nil {
                        map["UsedCpu"] = self.usedCpu!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalCpu") && dict["TotalCpu"] != nil {
                        self.totalCpu = dict["TotalCpu"] as! Int64
                    }
                    if dict.keys.contains("UnitCpu") && dict["UnitCpu"] != nil {
                        self.unitCpu = dict["UnitCpu"] as! Int64
                    }
                    if dict.keys.contains("UsedCpu") && dict["UsedCpu"] != nil {
                        self.usedCpu = dict["UsedCpu"] as! Int64
                    }
                }
            }
            public class DiskSize : Tea.TeaModel {
                public var totalDiskSize: Int64?

                public var unitDiskSize: Int64?

                public var usedDiskSize: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalDiskSize != nil {
                        map["TotalDiskSize"] = self.totalDiskSize!
                    }
                    if self.unitDiskSize != nil {
                        map["UnitDiskSize"] = self.unitDiskSize!
                    }
                    if self.usedDiskSize != nil {
                        map["UsedDiskSize"] = self.usedDiskSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalDiskSize") && dict["TotalDiskSize"] != nil {
                        self.totalDiskSize = dict["TotalDiskSize"] as! Int64
                    }
                    if dict.keys.contains("UnitDiskSize") && dict["UnitDiskSize"] != nil {
                        self.unitDiskSize = dict["UnitDiskSize"] as! Int64
                    }
                    if dict.keys.contains("UsedDiskSize") && dict["UsedDiskSize"] != nil {
                        self.usedDiskSize = dict["UsedDiskSize"] as! Int64
                    }
                }
            }
            public class Memory : Tea.TeaModel {
                public var totalMemory: Int64?

                public var unitMemory: Int64?

                public var usedMemory: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalMemory != nil {
                        map["TotalMemory"] = self.totalMemory!
                    }
                    if self.unitMemory != nil {
                        map["UnitMemory"] = self.unitMemory!
                    }
                    if self.usedMemory != nil {
                        map["UsedMemory"] = self.usedMemory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalMemory") && dict["TotalMemory"] != nil {
                        self.totalMemory = dict["TotalMemory"] as! Int64
                    }
                    if dict.keys.contains("UnitMemory") && dict["UnitMemory"] != nil {
                        self.unitMemory = dict["UnitMemory"] as! Int64
                    }
                    if dict.keys.contains("UsedMemory") && dict["UsedMemory"] != nil {
                        self.usedMemory = dict["UsedMemory"] as! Int64
                    }
                }
            }
            public var cpu: DescribeInstancesResponseBody.Instances.Resource.Cpu?

            public var diskSize: DescribeInstancesResponseBody.Instances.Resource.DiskSize?

            public var memory: DescribeInstancesResponseBody.Instances.Resource.Memory?

            public var unitCount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cpu?.validate()
                try self.diskSize?.validate()
                try self.memory?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpu != nil {
                    map["Cpu"] = self.cpu?.toMap()
                }
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize?.toMap()
                }
                if self.memory != nil {
                    map["Memory"] = self.memory?.toMap()
                }
                if self.unitCount != nil {
                    map["UnitCount"] = self.unitCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                    var model = DescribeInstancesResponseBody.Instances.Resource.Cpu()
                    model.fromMap(dict["Cpu"] as! [String: Any])
                    self.cpu = model
                }
                if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
                    var model = DescribeInstancesResponseBody.Instances.Resource.DiskSize()
                    model.fromMap(dict["DiskSize"] as! [String: Any])
                    self.diskSize = model
                }
                if dict.keys.contains("Memory") && dict["Memory"] != nil {
                    var model = DescribeInstancesResponseBody.Instances.Resource.Memory()
                    model.fromMap(dict["Memory"] as! [String: Any])
                    self.memory = model
                }
                if dict.keys.contains("UnitCount") && dict["UnitCount"] != nil {
                    self.unitCount = dict["UnitCount"] as! Int64
                }
            }
        }
        public var availableZones: [String]?

        public var commodityCode: String?

        public var cpu: Int32?

        public var createTime: String?

        public var deployMode: String?

        public var deployType: String?

        public var diskSize: String?

        public var diskType: String?

        public var enableUpgradeNodes: Bool?

        public var expireSeconds: Int32?

        public var expireTime: String?

        public var instanceClass: String?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceRole: String?

        public var instanceType: String?

        public var maintainTime: String?

        public var mem: Int64?

        public var payType: String?

        public var resource: DescribeInstancesResponseBody.Instances.Resource?

        public var resourceGroupId: String?

        public var securityIps: [String]?

        public var series: String?

        public var state: String?

        public var usedDiskSize: Int64?

        public var version: String?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resource?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.availableZones != nil {
                map["AvailableZones"] = self.availableZones!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deployMode != nil {
                map["DeployMode"] = self.deployMode!
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.diskSize != nil {
                map["DiskSize"] = self.diskSize!
            }
            if self.diskType != nil {
                map["DiskType"] = self.diskType!
            }
            if self.enableUpgradeNodes != nil {
                map["EnableUpgradeNodes"] = self.enableUpgradeNodes!
            }
            if self.expireSeconds != nil {
                map["ExpireSeconds"] = self.expireSeconds!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.instanceClass != nil {
                map["InstanceClass"] = self.instanceClass!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceRole != nil {
                map["InstanceRole"] = self.instanceRole!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.maintainTime != nil {
                map["MaintainTime"] = self.maintainTime!
            }
            if self.mem != nil {
                map["Mem"] = self.mem!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.resource != nil {
                map["Resource"] = self.resource?.toMap()
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.securityIps != nil {
                map["SecurityIps"] = self.securityIps!
            }
            if self.series != nil {
                map["Series"] = self.series!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.usedDiskSize != nil {
                map["UsedDiskSize"] = self.usedDiskSize!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvailableZones") && dict["AvailableZones"] != nil {
                self.availableZones = dict["AvailableZones"] as! [String]
            }
            if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeployMode") && dict["DeployMode"] != nil {
                self.deployMode = dict["DeployMode"] as! String
            }
            if dict.keys.contains("DeployType") && dict["DeployType"] != nil {
                self.deployType = dict["DeployType"] as! String
            }
            if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
                self.diskSize = dict["DiskSize"] as! String
            }
            if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
                self.diskType = dict["DiskType"] as! String
            }
            if dict.keys.contains("EnableUpgradeNodes") && dict["EnableUpgradeNodes"] != nil {
                self.enableUpgradeNodes = dict["EnableUpgradeNodes"] as! Bool
            }
            if dict.keys.contains("ExpireSeconds") && dict["ExpireSeconds"] != nil {
                self.expireSeconds = dict["ExpireSeconds"] as! Int32
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("InstanceClass") && dict["InstanceClass"] != nil {
                self.instanceClass = dict["InstanceClass"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("InstanceRole") && dict["InstanceRole"] != nil {
                self.instanceRole = dict["InstanceRole"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("MaintainTime") && dict["MaintainTime"] != nil {
                self.maintainTime = dict["MaintainTime"] as! String
            }
            if dict.keys.contains("Mem") && dict["Mem"] != nil {
                self.mem = dict["Mem"] as! Int64
            }
            if dict.keys.contains("PayType") && dict["PayType"] != nil {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("Resource") && dict["Resource"] != nil {
                var model = DescribeInstancesResponseBody.Instances.Resource()
                model.fromMap(dict["Resource"] as! [String: Any])
                self.resource = model
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SecurityIps") && dict["SecurityIps"] != nil {
                self.securityIps = dict["SecurityIps"] as! [String]
            }
            if dict.keys.contains("Series") && dict["Series"] != nil {
                self.series = dict["Series"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("UsedDiskSize") && dict["UsedDiskSize"] != nil {
                self.usedDiskSize = dict["UsedDiskSize"] as! Int64
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var instances: [DescribeInstancesResponseBody.Instances]?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instances") && dict["Instances"] != nil {
            var tmp : [DescribeInstancesResponseBody.Instances] = []
            for v in dict["Instances"] as! [Any] {
                var model = DescribeInstancesResponseBody.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNodeMetricsRequest : Tea.TeaModel {
    public var endTime: String?

    public var instanceId: String?

    public var metrics: String?

    public var nodeIdList: String?

    public var nodeName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.metrics != nil {
            map["Metrics"] = self.metrics!
        }
        if self.nodeIdList != nil {
            map["NodeIdList"] = self.nodeIdList!
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Metrics") && dict["Metrics"] != nil {
            self.metrics = dict["Metrics"] as! String
        }
        if dict.keys.contains("NodeIdList") && dict["NodeIdList"] != nil {
            self.nodeIdList = dict["NodeIdList"] as! String
        }
        if dict.keys.contains("NodeName") && dict["NodeName"] != nil {
            self.nodeName = dict["NodeName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeNodeMetricsResponseBody : Tea.TeaModel {
    public var nodeMetrics: String?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeMetrics != nil {
            map["NodeMetrics"] = self.nodeMetrics!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeMetrics") && dict["NodeMetrics"] != nil {
            self.nodeMetrics = dict["NodeMetrics"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeNodeMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNodeMetricsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeNodeMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOasAnomalySQLListRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var current: Int64?

    public var dbName: String?

    public var endTime: String?

    public var filterCondition: String?

    public var instanceId: String?

    public var nodeIp: String?

    public var pageSize: Int64?

    public var searchKeyWord: String?

    public var searchParam: String?

    public var searchRule: String?

    public var searchValue: String?

    public var sqlId: String?

    public var sqlTextLength: Int64?

    public var startTime: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterCondition != nil {
            map["FilterCondition"] = self.filterCondition!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeIp != nil {
            map["NodeIp"] = self.nodeIp!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKeyWord != nil {
            map["SearchKeyWord"] = self.searchKeyWord!
        }
        if self.searchParam != nil {
            map["SearchParam"] = self.searchParam!
        }
        if self.searchRule != nil {
            map["SearchRule"] = self.searchRule!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        if self.sqlId != nil {
            map["SqlId"] = self.sqlId!
        }
        if self.sqlTextLength != nil {
            map["SqlTextLength"] = self.sqlTextLength!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int64
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterCondition") && dict["FilterCondition"] != nil {
            self.filterCondition = dict["FilterCondition"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NodeIp") && dict["NodeIp"] != nil {
            self.nodeIp = dict["NodeIp"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SearchKeyWord") && dict["SearchKeyWord"] != nil {
            self.searchKeyWord = dict["SearchKeyWord"] as! String
        }
        if dict.keys.contains("SearchParam") && dict["SearchParam"] != nil {
            self.searchParam = dict["SearchParam"] as! String
        }
        if dict.keys.contains("SearchRule") && dict["SearchRule"] != nil {
            self.searchRule = dict["SearchRule"] as! String
        }
        if dict.keys.contains("SearchValue") && dict["SearchValue"] != nil {
            self.searchValue = dict["SearchValue"] as! String
        }
        if dict.keys.contains("SqlId") && dict["SqlId"] != nil {
            self.sqlId = dict["SqlId"] as! String
        }
        if dict.keys.contains("SqlTextLength") && dict["SqlTextLength"] != nil {
            self.sqlTextLength = dict["SqlTextLength"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeOasAnomalySQLListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var avgCpuTime: Double?

        public var avgElapsedTime: Double?

        public var avgGetPlanTime: Double?

        public var cpuTime: Double?

        public var dbName: String?

        public var diagTypes: [String]?

        public var diagnosis: String?

        public var executions: Double?

        public var lastExecutedTime: Double?

        public var riskLevel: String?

        public var sqlId: String?

        public var sqlTextShort: String?

        public var suggestion: String?

        public var sumElapsedTime: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avgCpuTime != nil {
                map["AvgCpuTime"] = self.avgCpuTime!
            }
            if self.avgElapsedTime != nil {
                map["AvgElapsedTime"] = self.avgElapsedTime!
            }
            if self.avgGetPlanTime != nil {
                map["AvgGetPlanTime"] = self.avgGetPlanTime!
            }
            if self.cpuTime != nil {
                map["CpuTime"] = self.cpuTime!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.diagTypes != nil {
                map["DiagTypes"] = self.diagTypes!
            }
            if self.diagnosis != nil {
                map["Diagnosis"] = self.diagnosis!
            }
            if self.executions != nil {
                map["Executions"] = self.executions!
            }
            if self.lastExecutedTime != nil {
                map["LastExecutedTime"] = self.lastExecutedTime!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.sqlId != nil {
                map["SqlId"] = self.sqlId!
            }
            if self.sqlTextShort != nil {
                map["SqlTextShort"] = self.sqlTextShort!
            }
            if self.suggestion != nil {
                map["Suggestion"] = self.suggestion!
            }
            if self.sumElapsedTime != nil {
                map["SumElapsedTime"] = self.sumElapsedTime!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvgCpuTime") && dict["AvgCpuTime"] != nil {
                self.avgCpuTime = dict["AvgCpuTime"] as! Double
            }
            if dict.keys.contains("AvgElapsedTime") && dict["AvgElapsedTime"] != nil {
                self.avgElapsedTime = dict["AvgElapsedTime"] as! Double
            }
            if dict.keys.contains("AvgGetPlanTime") && dict["AvgGetPlanTime"] != nil {
                self.avgGetPlanTime = dict["AvgGetPlanTime"] as! Double
            }
            if dict.keys.contains("CpuTime") && dict["CpuTime"] != nil {
                self.cpuTime = dict["CpuTime"] as! Double
            }
            if dict.keys.contains("DbName") && dict["DbName"] != nil {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("DiagTypes") && dict["DiagTypes"] != nil {
                self.diagTypes = dict["DiagTypes"] as! [String]
            }
            if dict.keys.contains("Diagnosis") && dict["Diagnosis"] != nil {
                self.diagnosis = dict["Diagnosis"] as! String
            }
            if dict.keys.contains("Executions") && dict["Executions"] != nil {
                self.executions = dict["Executions"] as! Double
            }
            if dict.keys.contains("LastExecutedTime") && dict["LastExecutedTime"] != nil {
                self.lastExecutedTime = dict["LastExecutedTime"] as! Double
            }
            if dict.keys.contains("RiskLevel") && dict["RiskLevel"] != nil {
                self.riskLevel = dict["RiskLevel"] as! String
            }
            if dict.keys.contains("SqlId") && dict["SqlId"] != nil {
                self.sqlId = dict["SqlId"] as! String
            }
            if dict.keys.contains("SqlTextShort") && dict["SqlTextShort"] != nil {
                self.sqlTextShort = dict["SqlTextShort"] as! String
            }
            if dict.keys.contains("Suggestion") && dict["Suggestion"] != nil {
                self.suggestion = dict["Suggestion"] as! String
            }
            if dict.keys.contains("SumElapsedTime") && dict["SumElapsedTime"] != nil {
                self.sumElapsedTime = dict["SumElapsedTime"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var data: [DescribeOasAnomalySQLListResponseBody.Data]?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeOasAnomalySQLListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeOasAnomalySQLListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeOasAnomalySQLListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOasAnomalySQLListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeOasAnomalySQLListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOasSQLDetailsRequest : Tea.TeaModel {
    public var dbName: String?

    public var endTime: String?

    public var instanceId: String?

    public var sqlId: String?

    public var startTime: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.sqlId != nil {
            map["SqlId"] = self.sqlId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SqlId") && dict["SqlId"] != nil {
            self.sqlId = dict["SqlId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeOasSQLDetailsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dbName: String?

        public var fulltext: String?

        public var statement: String?

        public var tables: [String]?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.fulltext != nil {
                map["Fulltext"] = self.fulltext!
            }
            if self.statement != nil {
                map["Statement"] = self.statement!
            }
            if self.tables != nil {
                map["Tables"] = self.tables!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbName") && dict["DbName"] != nil {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("Fulltext") && dict["Fulltext"] != nil {
                self.fulltext = dict["Fulltext"] as! String
            }
            if dict.keys.contains("Statement") && dict["Statement"] != nil {
                self.statement = dict["Statement"] as! String
            }
            if dict.keys.contains("Tables") && dict["Tables"] != nil {
                self.tables = dict["Tables"] as! [String]
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var data: DescribeOasSQLDetailsResponseBody.Data?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeOasSQLDetailsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOasSQLDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOasSQLDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeOasSQLDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOasSQLHistoryListRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var dbName: String?

    public var endTime: String?

    public var instanceId: String?

    public var nodeIp: String?

    public var sqlId: String?

    public var startTime: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeIp != nil {
            map["NodeIp"] = self.nodeIp!
        }
        if self.sqlId != nil {
            map["SqlId"] = self.sqlId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NodeIp") && dict["NodeIp"] != nil {
            self.nodeIp = dict["NodeIp"] as! String
        }
        if dict.keys.contains("SqlId") && dict["SqlId"] != nil {
            self.sqlId = dict["SqlId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeOasSQLHistoryListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var avgAffectedRows: Int64?

        public var avgApplicationWaitTime: Double?

        public var avgBlockCacheHit: Int64?

        public var avgBlockIndexCacheHit: Int64?

        public var avgBloomFilterCacheHit: Int64?

        public var avgConcurrencyWaitTime: Double?

        public var avgCpuTime: Double?

        public var avgDecodeTime: Double?

        public var avgDiskReads: Int64?

        public var avgElapsedTime: Double?

        public var avgExecuteTime: Double?

        public var avgExecutorRpcCount: Double?

        public var avgExpectedWorkerCount: Double?

        public var avgGetPlanTime: Double?

        public var avgLogicalReads: Int64?

        public var avgMemstoreReadRows: Int64?

        public var avgNetTime: Double?

        public var avgNetWaitTime: Double?

        public var avgPartitionCount: Double?

        public var avgQueueTime: Double?

        public var avgReturnRows: Int64?

        public var avgRowCacheHit: Int64?

        public var avgRpcCount: Int64?

        public var avgScheduleTime: Double?

        public var avgSsstoreReadRows: Int64?

        public var avgUsedWorkerCount: Double?

        public var avgUserIoWaitTime: Double?

        public var avgWaitCount: Double?

        public var avgWaitTime: Double?

        public var dbName: String?

        public var distPlanPercentage: Double?

        public var execPs: Double?

        public var executions: Int64?

        public var failCount: Int64?

        public var failPercentage: Double?

        public var localPlanPercentage: Double?

        public var maxAffectedRows: Double?

        public var maxApplicationWaitTime: Double?

        public var maxConcurrencyWaitTime: Double?

        public var maxCpuTime: Double?

        public var maxDiskReads: Double?

        public var maxElapsedTime: Double?

        public var maxReturnRows: Double?

        public var maxUserIoWaitTime: Double?

        public var maxWaitTime: Double?

        public var missPlanPercentage: Double?

        public var missPlans: Int64?

        public var remotePlanPercentage: Double?

        public var remotePlans: Int64?

        public var retCode4012Count: Double?

        public var retCode4013Count: Double?

        public var retCode5001Count: Double?

        public var retCode5024Count: Double?

        public var retCode5167Count: Double?

        public var retCode5217Count: Double?

        public var retCode6002Count: Double?

        public var retryCount: Int64?

        public var SQLId: String?

        public var server: String?

        public var strongConsistencyPercentage: Double?

        public var sumElapsedTime: Double?

        public var sumLogicalReads: Double?

        public var sumWaitTime: Double?

        public var tableScanPercentage: Double?

        public var timestamp: String?

        public var userName: String?

        public var weakConsistencyPercentage: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avgAffectedRows != nil {
                map["AvgAffectedRows"] = self.avgAffectedRows!
            }
            if self.avgApplicationWaitTime != nil {
                map["AvgApplicationWaitTime"] = self.avgApplicationWaitTime!
            }
            if self.avgBlockCacheHit != nil {
                map["AvgBlockCacheHit"] = self.avgBlockCacheHit!
            }
            if self.avgBlockIndexCacheHit != nil {
                map["AvgBlockIndexCacheHit"] = self.avgBlockIndexCacheHit!
            }
            if self.avgBloomFilterCacheHit != nil {
                map["AvgBloomFilterCacheHit"] = self.avgBloomFilterCacheHit!
            }
            if self.avgConcurrencyWaitTime != nil {
                map["AvgConcurrencyWaitTime"] = self.avgConcurrencyWaitTime!
            }
            if self.avgCpuTime != nil {
                map["AvgCpuTime"] = self.avgCpuTime!
            }
            if self.avgDecodeTime != nil {
                map["AvgDecodeTime"] = self.avgDecodeTime!
            }
            if self.avgDiskReads != nil {
                map["AvgDiskReads"] = self.avgDiskReads!
            }
            if self.avgElapsedTime != nil {
                map["AvgElapsedTime"] = self.avgElapsedTime!
            }
            if self.avgExecuteTime != nil {
                map["AvgExecuteTime"] = self.avgExecuteTime!
            }
            if self.avgExecutorRpcCount != nil {
                map["AvgExecutorRpcCount"] = self.avgExecutorRpcCount!
            }
            if self.avgExpectedWorkerCount != nil {
                map["AvgExpectedWorkerCount"] = self.avgExpectedWorkerCount!
            }
            if self.avgGetPlanTime != nil {
                map["AvgGetPlanTime"] = self.avgGetPlanTime!
            }
            if self.avgLogicalReads != nil {
                map["AvgLogicalReads"] = self.avgLogicalReads!
            }
            if self.avgMemstoreReadRows != nil {
                map["AvgMemstoreReadRows"] = self.avgMemstoreReadRows!
            }
            if self.avgNetTime != nil {
                map["AvgNetTime"] = self.avgNetTime!
            }
            if self.avgNetWaitTime != nil {
                map["AvgNetWaitTime"] = self.avgNetWaitTime!
            }
            if self.avgPartitionCount != nil {
                map["AvgPartitionCount"] = self.avgPartitionCount!
            }
            if self.avgQueueTime != nil {
                map["AvgQueueTime"] = self.avgQueueTime!
            }
            if self.avgReturnRows != nil {
                map["AvgReturnRows"] = self.avgReturnRows!
            }
            if self.avgRowCacheHit != nil {
                map["AvgRowCacheHit"] = self.avgRowCacheHit!
            }
            if self.avgRpcCount != nil {
                map["AvgRpcCount"] = self.avgRpcCount!
            }
            if self.avgScheduleTime != nil {
                map["AvgScheduleTime"] = self.avgScheduleTime!
            }
            if self.avgSsstoreReadRows != nil {
                map["AvgSsstoreReadRows"] = self.avgSsstoreReadRows!
            }
            if self.avgUsedWorkerCount != nil {
                map["AvgUsedWorkerCount"] = self.avgUsedWorkerCount!
            }
            if self.avgUserIoWaitTime != nil {
                map["AvgUserIoWaitTime"] = self.avgUserIoWaitTime!
            }
            if self.avgWaitCount != nil {
                map["AvgWaitCount"] = self.avgWaitCount!
            }
            if self.avgWaitTime != nil {
                map["AvgWaitTime"] = self.avgWaitTime!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.distPlanPercentage != nil {
                map["DistPlanPercentage"] = self.distPlanPercentage!
            }
            if self.execPs != nil {
                map["ExecPs"] = self.execPs!
            }
            if self.executions != nil {
                map["Executions"] = self.executions!
            }
            if self.failCount != nil {
                map["FailCount"] = self.failCount!
            }
            if self.failPercentage != nil {
                map["FailPercentage"] = self.failPercentage!
            }
            if self.localPlanPercentage != nil {
                map["LocalPlanPercentage"] = self.localPlanPercentage!
            }
            if self.maxAffectedRows != nil {
                map["MaxAffectedRows"] = self.maxAffectedRows!
            }
            if self.maxApplicationWaitTime != nil {
                map["MaxApplicationWaitTime"] = self.maxApplicationWaitTime!
            }
            if self.maxConcurrencyWaitTime != nil {
                map["MaxConcurrencyWaitTime"] = self.maxConcurrencyWaitTime!
            }
            if self.maxCpuTime != nil {
                map["MaxCpuTime"] = self.maxCpuTime!
            }
            if self.maxDiskReads != nil {
                map["MaxDiskReads"] = self.maxDiskReads!
            }
            if self.maxElapsedTime != nil {
                map["MaxElapsedTime"] = self.maxElapsedTime!
            }
            if self.maxReturnRows != nil {
                map["MaxReturnRows"] = self.maxReturnRows!
            }
            if self.maxUserIoWaitTime != nil {
                map["MaxUserIoWaitTime"] = self.maxUserIoWaitTime!
            }
            if self.maxWaitTime != nil {
                map["MaxWaitTime"] = self.maxWaitTime!
            }
            if self.missPlanPercentage != nil {
                map["MissPlanPercentage"] = self.missPlanPercentage!
            }
            if self.missPlans != nil {
                map["MissPlans"] = self.missPlans!
            }
            if self.remotePlanPercentage != nil {
                map["RemotePlanPercentage"] = self.remotePlanPercentage!
            }
            if self.remotePlans != nil {
                map["RemotePlans"] = self.remotePlans!
            }
            if self.retCode4012Count != nil {
                map["RetCode4012Count"] = self.retCode4012Count!
            }
            if self.retCode4013Count != nil {
                map["RetCode4013Count"] = self.retCode4013Count!
            }
            if self.retCode5001Count != nil {
                map["RetCode5001Count"] = self.retCode5001Count!
            }
            if self.retCode5024Count != nil {
                map["RetCode5024Count"] = self.retCode5024Count!
            }
            if self.retCode5167Count != nil {
                map["RetCode5167Count"] = self.retCode5167Count!
            }
            if self.retCode5217Count != nil {
                map["RetCode5217Count"] = self.retCode5217Count!
            }
            if self.retCode6002Count != nil {
                map["RetCode6002Count"] = self.retCode6002Count!
            }
            if self.retryCount != nil {
                map["RetryCount"] = self.retryCount!
            }
            if self.SQLId != nil {
                map["SQLId"] = self.SQLId!
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.strongConsistencyPercentage != nil {
                map["StrongConsistencyPercentage"] = self.strongConsistencyPercentage!
            }
            if self.sumElapsedTime != nil {
                map["SumElapsedTime"] = self.sumElapsedTime!
            }
            if self.sumLogicalReads != nil {
                map["SumLogicalReads"] = self.sumLogicalReads!
            }
            if self.sumWaitTime != nil {
                map["SumWaitTime"] = self.sumWaitTime!
            }
            if self.tableScanPercentage != nil {
                map["TableScanPercentage"] = self.tableScanPercentage!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.weakConsistencyPercentage != nil {
                map["WeakConsistencyPercentage"] = self.weakConsistencyPercentage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvgAffectedRows") && dict["AvgAffectedRows"] != nil {
                self.avgAffectedRows = dict["AvgAffectedRows"] as! Int64
            }
            if dict.keys.contains("AvgApplicationWaitTime") && dict["AvgApplicationWaitTime"] != nil {
                self.avgApplicationWaitTime = dict["AvgApplicationWaitTime"] as! Double
            }
            if dict.keys.contains("AvgBlockCacheHit") && dict["AvgBlockCacheHit"] != nil {
                self.avgBlockCacheHit = dict["AvgBlockCacheHit"] as! Int64
            }
            if dict.keys.contains("AvgBlockIndexCacheHit") && dict["AvgBlockIndexCacheHit"] != nil {
                self.avgBlockIndexCacheHit = dict["AvgBlockIndexCacheHit"] as! Int64
            }
            if dict.keys.contains("AvgBloomFilterCacheHit") && dict["AvgBloomFilterCacheHit"] != nil {
                self.avgBloomFilterCacheHit = dict["AvgBloomFilterCacheHit"] as! Int64
            }
            if dict.keys.contains("AvgConcurrencyWaitTime") && dict["AvgConcurrencyWaitTime"] != nil {
                self.avgConcurrencyWaitTime = dict["AvgConcurrencyWaitTime"] as! Double
            }
            if dict.keys.contains("AvgCpuTime") && dict["AvgCpuTime"] != nil {
                self.avgCpuTime = dict["AvgCpuTime"] as! Double
            }
            if dict.keys.contains("AvgDecodeTime") && dict["AvgDecodeTime"] != nil {
                self.avgDecodeTime = dict["AvgDecodeTime"] as! Double
            }
            if dict.keys.contains("AvgDiskReads") && dict["AvgDiskReads"] != nil {
                self.avgDiskReads = dict["AvgDiskReads"] as! Int64
            }
            if dict.keys.contains("AvgElapsedTime") && dict["AvgElapsedTime"] != nil {
                self.avgElapsedTime = dict["AvgElapsedTime"] as! Double
            }
            if dict.keys.contains("AvgExecuteTime") && dict["AvgExecuteTime"] != nil {
                self.avgExecuteTime = dict["AvgExecuteTime"] as! Double
            }
            if dict.keys.contains("AvgExecutorRpcCount") && dict["AvgExecutorRpcCount"] != nil {
                self.avgExecutorRpcCount = dict["AvgExecutorRpcCount"] as! Double
            }
            if dict.keys.contains("AvgExpectedWorkerCount") && dict["AvgExpectedWorkerCount"] != nil {
                self.avgExpectedWorkerCount = dict["AvgExpectedWorkerCount"] as! Double
            }
            if dict.keys.contains("AvgGetPlanTime") && dict["AvgGetPlanTime"] != nil {
                self.avgGetPlanTime = dict["AvgGetPlanTime"] as! Double
            }
            if dict.keys.contains("AvgLogicalReads") && dict["AvgLogicalReads"] != nil {
                self.avgLogicalReads = dict["AvgLogicalReads"] as! Int64
            }
            if dict.keys.contains("AvgMemstoreReadRows") && dict["AvgMemstoreReadRows"] != nil {
                self.avgMemstoreReadRows = dict["AvgMemstoreReadRows"] as! Int64
            }
            if dict.keys.contains("AvgNetTime") && dict["AvgNetTime"] != nil {
                self.avgNetTime = dict["AvgNetTime"] as! Double
            }
            if dict.keys.contains("AvgNetWaitTime") && dict["AvgNetWaitTime"] != nil {
                self.avgNetWaitTime = dict["AvgNetWaitTime"] as! Double
            }
            if dict.keys.contains("AvgPartitionCount") && dict["AvgPartitionCount"] != nil {
                self.avgPartitionCount = dict["AvgPartitionCount"] as! Double
            }
            if dict.keys.contains("AvgQueueTime") && dict["AvgQueueTime"] != nil {
                self.avgQueueTime = dict["AvgQueueTime"] as! Double
            }
            if dict.keys.contains("AvgReturnRows") && dict["AvgReturnRows"] != nil {
                self.avgReturnRows = dict["AvgReturnRows"] as! Int64
            }
            if dict.keys.contains("AvgRowCacheHit") && dict["AvgRowCacheHit"] != nil {
                self.avgRowCacheHit = dict["AvgRowCacheHit"] as! Int64
            }
            if dict.keys.contains("AvgRpcCount") && dict["AvgRpcCount"] != nil {
                self.avgRpcCount = dict["AvgRpcCount"] as! Int64
            }
            if dict.keys.contains("AvgScheduleTime") && dict["AvgScheduleTime"] != nil {
                self.avgScheduleTime = dict["AvgScheduleTime"] as! Double
            }
            if dict.keys.contains("AvgSsstoreReadRows") && dict["AvgSsstoreReadRows"] != nil {
                self.avgSsstoreReadRows = dict["AvgSsstoreReadRows"] as! Int64
            }
            if dict.keys.contains("AvgUsedWorkerCount") && dict["AvgUsedWorkerCount"] != nil {
                self.avgUsedWorkerCount = dict["AvgUsedWorkerCount"] as! Double
            }
            if dict.keys.contains("AvgUserIoWaitTime") && dict["AvgUserIoWaitTime"] != nil {
                self.avgUserIoWaitTime = dict["AvgUserIoWaitTime"] as! Double
            }
            if dict.keys.contains("AvgWaitCount") && dict["AvgWaitCount"] != nil {
                self.avgWaitCount = dict["AvgWaitCount"] as! Double
            }
            if dict.keys.contains("AvgWaitTime") && dict["AvgWaitTime"] != nil {
                self.avgWaitTime = dict["AvgWaitTime"] as! Double
            }
            if dict.keys.contains("DbName") && dict["DbName"] != nil {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("DistPlanPercentage") && dict["DistPlanPercentage"] != nil {
                self.distPlanPercentage = dict["DistPlanPercentage"] as! Double
            }
            if dict.keys.contains("ExecPs") && dict["ExecPs"] != nil {
                self.execPs = dict["ExecPs"] as! Double
            }
            if dict.keys.contains("Executions") && dict["Executions"] != nil {
                self.executions = dict["Executions"] as! Int64
            }
            if dict.keys.contains("FailCount") && dict["FailCount"] != nil {
                self.failCount = dict["FailCount"] as! Int64
            }
            if dict.keys.contains("FailPercentage") && dict["FailPercentage"] != nil {
                self.failPercentage = dict["FailPercentage"] as! Double
            }
            if dict.keys.contains("LocalPlanPercentage") && dict["LocalPlanPercentage"] != nil {
                self.localPlanPercentage = dict["LocalPlanPercentage"] as! Double
            }
            if dict.keys.contains("MaxAffectedRows") && dict["MaxAffectedRows"] != nil {
                self.maxAffectedRows = dict["MaxAffectedRows"] as! Double
            }
            if dict.keys.contains("MaxApplicationWaitTime") && dict["MaxApplicationWaitTime"] != nil {
                self.maxApplicationWaitTime = dict["MaxApplicationWaitTime"] as! Double
            }
            if dict.keys.contains("MaxConcurrencyWaitTime") && dict["MaxConcurrencyWaitTime"] != nil {
                self.maxConcurrencyWaitTime = dict["MaxConcurrencyWaitTime"] as! Double
            }
            if dict.keys.contains("MaxCpuTime") && dict["MaxCpuTime"] != nil {
                self.maxCpuTime = dict["MaxCpuTime"] as! Double
            }
            if dict.keys.contains("MaxDiskReads") && dict["MaxDiskReads"] != nil {
                self.maxDiskReads = dict["MaxDiskReads"] as! Double
            }
            if dict.keys.contains("MaxElapsedTime") && dict["MaxElapsedTime"] != nil {
                self.maxElapsedTime = dict["MaxElapsedTime"] as! Double
            }
            if dict.keys.contains("MaxReturnRows") && dict["MaxReturnRows"] != nil {
                self.maxReturnRows = dict["MaxReturnRows"] as! Double
            }
            if dict.keys.contains("MaxUserIoWaitTime") && dict["MaxUserIoWaitTime"] != nil {
                self.maxUserIoWaitTime = dict["MaxUserIoWaitTime"] as! Double
            }
            if dict.keys.contains("MaxWaitTime") && dict["MaxWaitTime"] != nil {
                self.maxWaitTime = dict["MaxWaitTime"] as! Double
            }
            if dict.keys.contains("MissPlanPercentage") && dict["MissPlanPercentage"] != nil {
                self.missPlanPercentage = dict["MissPlanPercentage"] as! Double
            }
            if dict.keys.contains("MissPlans") && dict["MissPlans"] != nil {
                self.missPlans = dict["MissPlans"] as! Int64
            }
            if dict.keys.contains("RemotePlanPercentage") && dict["RemotePlanPercentage"] != nil {
                self.remotePlanPercentage = dict["RemotePlanPercentage"] as! Double
            }
            if dict.keys.contains("RemotePlans") && dict["RemotePlans"] != nil {
                self.remotePlans = dict["RemotePlans"] as! Int64
            }
            if dict.keys.contains("RetCode4012Count") && dict["RetCode4012Count"] != nil {
                self.retCode4012Count = dict["RetCode4012Count"] as! Double
            }
            if dict.keys.contains("RetCode4013Count") && dict["RetCode4013Count"] != nil {
                self.retCode4013Count = dict["RetCode4013Count"] as! Double
            }
            if dict.keys.contains("RetCode5001Count") && dict["RetCode5001Count"] != nil {
                self.retCode5001Count = dict["RetCode5001Count"] as! Double
            }
            if dict.keys.contains("RetCode5024Count") && dict["RetCode5024Count"] != nil {
                self.retCode5024Count = dict["RetCode5024Count"] as! Double
            }
            if dict.keys.contains("RetCode5167Count") && dict["RetCode5167Count"] != nil {
                self.retCode5167Count = dict["RetCode5167Count"] as! Double
            }
            if dict.keys.contains("RetCode5217Count") && dict["RetCode5217Count"] != nil {
                self.retCode5217Count = dict["RetCode5217Count"] as! Double
            }
            if dict.keys.contains("RetCode6002Count") && dict["RetCode6002Count"] != nil {
                self.retCode6002Count = dict["RetCode6002Count"] as! Double
            }
            if dict.keys.contains("RetryCount") && dict["RetryCount"] != nil {
                self.retryCount = dict["RetryCount"] as! Int64
            }
            if dict.keys.contains("SQLId") && dict["SQLId"] != nil {
                self.SQLId = dict["SQLId"] as! String
            }
            if dict.keys.contains("Server") && dict["Server"] != nil {
                self.server = dict["Server"] as! String
            }
            if dict.keys.contains("StrongConsistencyPercentage") && dict["StrongConsistencyPercentage"] != nil {
                self.strongConsistencyPercentage = dict["StrongConsistencyPercentage"] as! Double
            }
            if dict.keys.contains("SumElapsedTime") && dict["SumElapsedTime"] != nil {
                self.sumElapsedTime = dict["SumElapsedTime"] as! Double
            }
            if dict.keys.contains("SumLogicalReads") && dict["SumLogicalReads"] != nil {
                self.sumLogicalReads = dict["SumLogicalReads"] as! Double
            }
            if dict.keys.contains("SumWaitTime") && dict["SumWaitTime"] != nil {
                self.sumWaitTime = dict["SumWaitTime"] as! Double
            }
            if dict.keys.contains("TableScanPercentage") && dict["TableScanPercentage"] != nil {
                self.tableScanPercentage = dict["TableScanPercentage"] as! Double
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("WeakConsistencyPercentage") && dict["WeakConsistencyPercentage"] != nil {
                self.weakConsistencyPercentage = dict["WeakConsistencyPercentage"] as! Double
            }
        }
    }
    public var data: [DescribeOasSQLHistoryListResponseBody.Data]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeOasSQLHistoryListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeOasSQLHistoryListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOasSQLHistoryListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOasSQLHistoryListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeOasSQLHistoryListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOasSQLPlansRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var dbName: String?

    public var endTime: String?

    public var instanceId: String?

    public var sqlId: String?

    public var startTime: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.sqlId != nil {
            map["SqlId"] = self.sqlId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SqlId") && dict["SqlId"] != nil {
            self.sqlId = dict["SqlId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeOasSQLPlansResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PlanExplain : Tea.TeaModel {
            public var planJsonString: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.planJsonString != nil {
                    map["PlanJsonString"] = self.planJsonString!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PlanJsonString") && dict["PlanJsonString"] != nil {
                    self.planJsonString = dict["PlanJsonString"] as! String
                }
            }
        }
        public class Plans : Tea.TeaModel {
            public var avgApplicationWaitTime: Double?

            public var avgBufferGets: Double?

            public var avgConcurrencyWaitTime: Double?

            public var avgCpuTime: Double?

            public var avgDiskReads: Double?

            public var avgDiskWrites: Double?

            public var avgElapsedTime: Double?

            public var avgRowProcessed: Double?

            public var avgUserIoWaitTime: Double?

            public var collectTimeUs: Int64?

            public var delayedLargeQueryPercentage: Double?

            public var execPs: Double?

            public var executions: Int64?

            public var firstLoadTime: String?

            public var firstLoadTimeUs: Int64?

            public var hitDiagnosis: Bool?

            public var hitPercentage: Double?

            public var largeQueryPercentage: Double?

            public var mergedVersion: Int64?

            public var obDbId: Int64?

            public var obServerId: Int64?

            public var outlineData: String?

            public var outlineId: Int64?

            public var planHash: String?

            public var planId: Int64?

            public var planSize: Int64?

            public var planType: String?

            public var planUnionHash: String?

            public var schemaVersion: Int64?

            public var server: String?

            public var serverId: Int64?

            public var tableScan: Bool?

            public var timeoutPercentage: Double?

            public var uid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avgApplicationWaitTime != nil {
                    map["AvgApplicationWaitTime"] = self.avgApplicationWaitTime!
                }
                if self.avgBufferGets != nil {
                    map["AvgBufferGets"] = self.avgBufferGets!
                }
                if self.avgConcurrencyWaitTime != nil {
                    map["AvgConcurrencyWaitTime"] = self.avgConcurrencyWaitTime!
                }
                if self.avgCpuTime != nil {
                    map["AvgCpuTime"] = self.avgCpuTime!
                }
                if self.avgDiskReads != nil {
                    map["AvgDiskReads"] = self.avgDiskReads!
                }
                if self.avgDiskWrites != nil {
                    map["AvgDiskWrites"] = self.avgDiskWrites!
                }
                if self.avgElapsedTime != nil {
                    map["AvgElapsedTime"] = self.avgElapsedTime!
                }
                if self.avgRowProcessed != nil {
                    map["AvgRowProcessed"] = self.avgRowProcessed!
                }
                if self.avgUserIoWaitTime != nil {
                    map["AvgUserIoWaitTime"] = self.avgUserIoWaitTime!
                }
                if self.collectTimeUs != nil {
                    map["CollectTimeUs"] = self.collectTimeUs!
                }
                if self.delayedLargeQueryPercentage != nil {
                    map["DelayedLargeQueryPercentage"] = self.delayedLargeQueryPercentage!
                }
                if self.execPs != nil {
                    map["ExecPs"] = self.execPs!
                }
                if self.executions != nil {
                    map["Executions"] = self.executions!
                }
                if self.firstLoadTime != nil {
                    map["FirstLoadTime"] = self.firstLoadTime!
                }
                if self.firstLoadTimeUs != nil {
                    map["FirstLoadTimeUs"] = self.firstLoadTimeUs!
                }
                if self.hitDiagnosis != nil {
                    map["HitDiagnosis"] = self.hitDiagnosis!
                }
                if self.hitPercentage != nil {
                    map["HitPercentage"] = self.hitPercentage!
                }
                if self.largeQueryPercentage != nil {
                    map["LargeQueryPercentage"] = self.largeQueryPercentage!
                }
                if self.mergedVersion != nil {
                    map["MergedVersion"] = self.mergedVersion!
                }
                if self.obDbId != nil {
                    map["ObDbId"] = self.obDbId!
                }
                if self.obServerId != nil {
                    map["ObServerId"] = self.obServerId!
                }
                if self.outlineData != nil {
                    map["OutlineData"] = self.outlineData!
                }
                if self.outlineId != nil {
                    map["OutlineId"] = self.outlineId!
                }
                if self.planHash != nil {
                    map["PlanHash"] = self.planHash!
                }
                if self.planId != nil {
                    map["PlanId"] = self.planId!
                }
                if self.planSize != nil {
                    map["PlanSize"] = self.planSize!
                }
                if self.planType != nil {
                    map["PlanType"] = self.planType!
                }
                if self.planUnionHash != nil {
                    map["PlanUnionHash"] = self.planUnionHash!
                }
                if self.schemaVersion != nil {
                    map["SchemaVersion"] = self.schemaVersion!
                }
                if self.server != nil {
                    map["Server"] = self.server!
                }
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.tableScan != nil {
                    map["TableScan"] = self.tableScan!
                }
                if self.timeoutPercentage != nil {
                    map["TimeoutPercentage"] = self.timeoutPercentage!
                }
                if self.uid != nil {
                    map["Uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvgApplicationWaitTime") && dict["AvgApplicationWaitTime"] != nil {
                    self.avgApplicationWaitTime = dict["AvgApplicationWaitTime"] as! Double
                }
                if dict.keys.contains("AvgBufferGets") && dict["AvgBufferGets"] != nil {
                    self.avgBufferGets = dict["AvgBufferGets"] as! Double
                }
                if dict.keys.contains("AvgConcurrencyWaitTime") && dict["AvgConcurrencyWaitTime"] != nil {
                    self.avgConcurrencyWaitTime = dict["AvgConcurrencyWaitTime"] as! Double
                }
                if dict.keys.contains("AvgCpuTime") && dict["AvgCpuTime"] != nil {
                    self.avgCpuTime = dict["AvgCpuTime"] as! Double
                }
                if dict.keys.contains("AvgDiskReads") && dict["AvgDiskReads"] != nil {
                    self.avgDiskReads = dict["AvgDiskReads"] as! Double
                }
                if dict.keys.contains("AvgDiskWrites") && dict["AvgDiskWrites"] != nil {
                    self.avgDiskWrites = dict["AvgDiskWrites"] as! Double
                }
                if dict.keys.contains("AvgElapsedTime") && dict["AvgElapsedTime"] != nil {
                    self.avgElapsedTime = dict["AvgElapsedTime"] as! Double
                }
                if dict.keys.contains("AvgRowProcessed") && dict["AvgRowProcessed"] != nil {
                    self.avgRowProcessed = dict["AvgRowProcessed"] as! Double
                }
                if dict.keys.contains("AvgUserIoWaitTime") && dict["AvgUserIoWaitTime"] != nil {
                    self.avgUserIoWaitTime = dict["AvgUserIoWaitTime"] as! Double
                }
                if dict.keys.contains("CollectTimeUs") && dict["CollectTimeUs"] != nil {
                    self.collectTimeUs = dict["CollectTimeUs"] as! Int64
                }
                if dict.keys.contains("DelayedLargeQueryPercentage") && dict["DelayedLargeQueryPercentage"] != nil {
                    self.delayedLargeQueryPercentage = dict["DelayedLargeQueryPercentage"] as! Double
                }
                if dict.keys.contains("ExecPs") && dict["ExecPs"] != nil {
                    self.execPs = dict["ExecPs"] as! Double
                }
                if dict.keys.contains("Executions") && dict["Executions"] != nil {
                    self.executions = dict["Executions"] as! Int64
                }
                if dict.keys.contains("FirstLoadTime") && dict["FirstLoadTime"] != nil {
                    self.firstLoadTime = dict["FirstLoadTime"] as! String
                }
                if dict.keys.contains("FirstLoadTimeUs") && dict["FirstLoadTimeUs"] != nil {
                    self.firstLoadTimeUs = dict["FirstLoadTimeUs"] as! Int64
                }
                if dict.keys.contains("HitDiagnosis") && dict["HitDiagnosis"] != nil {
                    self.hitDiagnosis = dict["HitDiagnosis"] as! Bool
                }
                if dict.keys.contains("HitPercentage") && dict["HitPercentage"] != nil {
                    self.hitPercentage = dict["HitPercentage"] as! Double
                }
                if dict.keys.contains("LargeQueryPercentage") && dict["LargeQueryPercentage"] != nil {
                    self.largeQueryPercentage = dict["LargeQueryPercentage"] as! Double
                }
                if dict.keys.contains("MergedVersion") && dict["MergedVersion"] != nil {
                    self.mergedVersion = dict["MergedVersion"] as! Int64
                }
                if dict.keys.contains("ObDbId") && dict["ObDbId"] != nil {
                    self.obDbId = dict["ObDbId"] as! Int64
                }
                if dict.keys.contains("ObServerId") && dict["ObServerId"] != nil {
                    self.obServerId = dict["ObServerId"] as! Int64
                }
                if dict.keys.contains("OutlineData") && dict["OutlineData"] != nil {
                    self.outlineData = dict["OutlineData"] as! String
                }
                if dict.keys.contains("OutlineId") && dict["OutlineId"] != nil {
                    self.outlineId = dict["OutlineId"] as! Int64
                }
                if dict.keys.contains("PlanHash") && dict["PlanHash"] != nil {
                    self.planHash = dict["PlanHash"] as! String
                }
                if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
                    self.planId = dict["PlanId"] as! Int64
                }
                if dict.keys.contains("PlanSize") && dict["PlanSize"] != nil {
                    self.planSize = dict["PlanSize"] as! Int64
                }
                if dict.keys.contains("PlanType") && dict["PlanType"] != nil {
                    self.planType = dict["PlanType"] as! String
                }
                if dict.keys.contains("PlanUnionHash") && dict["PlanUnionHash"] != nil {
                    self.planUnionHash = dict["PlanUnionHash"] as! String
                }
                if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                    self.schemaVersion = dict["SchemaVersion"] as! Int64
                }
                if dict.keys.contains("Server") && dict["Server"] != nil {
                    self.server = dict["Server"] as! String
                }
                if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
                    self.serverId = dict["ServerId"] as! Int64
                }
                if dict.keys.contains("TableScan") && dict["TableScan"] != nil {
                    self.tableScan = dict["TableScan"] as! Bool
                }
                if dict.keys.contains("TimeoutPercentage") && dict["TimeoutPercentage"] != nil {
                    self.timeoutPercentage = dict["TimeoutPercentage"] as! Double
                }
                if dict.keys.contains("Uid") && dict["Uid"] != nil {
                    self.uid = dict["Uid"] as! String
                }
            }
        }
        public var avgCpuTime: Double?

        public var bounded: Bool?

        public var executions: Int64?

        public var firstLoadTime: String?

        public var hitDiagnosis: Bool?

        public var hitPercentage: Double?

        public var mergedVersion: Int64?

        public var planExplain: DescribeOasSQLPlansResponseBody.Data.PlanExplain?

        public var planHash: String?

        public var planType: String?

        public var planUnionHash: String?

        public var plans: [DescribeOasSQLPlansResponseBody.Data.Plans]?

        public var querySql: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.planExplain?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avgCpuTime != nil {
                map["AvgCpuTime"] = self.avgCpuTime!
            }
            if self.bounded != nil {
                map["Bounded"] = self.bounded!
            }
            if self.executions != nil {
                map["Executions"] = self.executions!
            }
            if self.firstLoadTime != nil {
                map["FirstLoadTime"] = self.firstLoadTime!
            }
            if self.hitDiagnosis != nil {
                map["HitDiagnosis"] = self.hitDiagnosis!
            }
            if self.hitPercentage != nil {
                map["HitPercentage"] = self.hitPercentage!
            }
            if self.mergedVersion != nil {
                map["MergedVersion"] = self.mergedVersion!
            }
            if self.planExplain != nil {
                map["PlanExplain"] = self.planExplain?.toMap()
            }
            if self.planHash != nil {
                map["PlanHash"] = self.planHash!
            }
            if self.planType != nil {
                map["PlanType"] = self.planType!
            }
            if self.planUnionHash != nil {
                map["PlanUnionHash"] = self.planUnionHash!
            }
            if self.plans != nil {
                var tmp : [Any] = []
                for k in self.plans! {
                    tmp.append(k.toMap())
                }
                map["Plans"] = tmp
            }
            if self.querySql != nil {
                map["QuerySql"] = self.querySql!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvgCpuTime") && dict["AvgCpuTime"] != nil {
                self.avgCpuTime = dict["AvgCpuTime"] as! Double
            }
            if dict.keys.contains("Bounded") && dict["Bounded"] != nil {
                self.bounded = dict["Bounded"] as! Bool
            }
            if dict.keys.contains("Executions") && dict["Executions"] != nil {
                self.executions = dict["Executions"] as! Int64
            }
            if dict.keys.contains("FirstLoadTime") && dict["FirstLoadTime"] != nil {
                self.firstLoadTime = dict["FirstLoadTime"] as! String
            }
            if dict.keys.contains("HitDiagnosis") && dict["HitDiagnosis"] != nil {
                self.hitDiagnosis = dict["HitDiagnosis"] as! Bool
            }
            if dict.keys.contains("HitPercentage") && dict["HitPercentage"] != nil {
                self.hitPercentage = dict["HitPercentage"] as! Double
            }
            if dict.keys.contains("MergedVersion") && dict["MergedVersion"] != nil {
                self.mergedVersion = dict["MergedVersion"] as! Int64
            }
            if dict.keys.contains("PlanExplain") && dict["PlanExplain"] != nil {
                var model = DescribeOasSQLPlansResponseBody.Data.PlanExplain()
                model.fromMap(dict["PlanExplain"] as! [String: Any])
                self.planExplain = model
            }
            if dict.keys.contains("PlanHash") && dict["PlanHash"] != nil {
                self.planHash = dict["PlanHash"] as! String
            }
            if dict.keys.contains("PlanType") && dict["PlanType"] != nil {
                self.planType = dict["PlanType"] as! String
            }
            if dict.keys.contains("PlanUnionHash") && dict["PlanUnionHash"] != nil {
                self.planUnionHash = dict["PlanUnionHash"] as! String
            }
            if dict.keys.contains("Plans") && dict["Plans"] != nil {
                var tmp : [DescribeOasSQLPlansResponseBody.Data.Plans] = []
                for v in dict["Plans"] as! [Any] {
                    var model = DescribeOasSQLPlansResponseBody.Data.Plans()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.plans = tmp
            }
            if dict.keys.contains("QuerySql") && dict["QuerySql"] != nil {
                self.querySql = dict["QuerySql"] as! String
            }
        }
    }
    public var data: [DescribeOasSQLPlansResponseBody.Data]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeOasSQLPlansResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeOasSQLPlansResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOasSQLPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOasSQLPlansResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeOasSQLPlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOasSlowSQLListRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var dbName: String?

    public var endTime: String?

    public var filterCondition: String?

    public var instanceId: String?

    public var nodeIp: String?

    public var searchKeyWord: String?

    public var searchParam: String?

    public var searchRule: String?

    public var searchValue: String?

    public var sqlId: String?

    public var sqlTextLength: Int64?

    public var startTime: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterCondition != nil {
            map["FilterCondition"] = self.filterCondition!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeIp != nil {
            map["NodeIp"] = self.nodeIp!
        }
        if self.searchKeyWord != nil {
            map["SearchKeyWord"] = self.searchKeyWord!
        }
        if self.searchParam != nil {
            map["SearchParam"] = self.searchParam!
        }
        if self.searchRule != nil {
            map["SearchRule"] = self.searchRule!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        if self.sqlId != nil {
            map["SqlId"] = self.sqlId!
        }
        if self.sqlTextLength != nil {
            map["SqlTextLength"] = self.sqlTextLength!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterCondition") && dict["FilterCondition"] != nil {
            self.filterCondition = dict["FilterCondition"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NodeIp") && dict["NodeIp"] != nil {
            self.nodeIp = dict["NodeIp"] as! String
        }
        if dict.keys.contains("SearchKeyWord") && dict["SearchKeyWord"] != nil {
            self.searchKeyWord = dict["SearchKeyWord"] as! String
        }
        if dict.keys.contains("SearchParam") && dict["SearchParam"] != nil {
            self.searchParam = dict["SearchParam"] as! String
        }
        if dict.keys.contains("SearchRule") && dict["SearchRule"] != nil {
            self.searchRule = dict["SearchRule"] as! String
        }
        if dict.keys.contains("SearchValue") && dict["SearchValue"] != nil {
            self.searchValue = dict["SearchValue"] as! String
        }
        if dict.keys.contains("SqlId") && dict["SqlId"] != nil {
            self.sqlId = dict["SqlId"] as! String
        }
        if dict.keys.contains("SqlTextLength") && dict["SqlTextLength"] != nil {
            self.sqlTextLength = dict["SqlTextLength"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeOasSlowSQLListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var avgAffectedRows: Double?

        public var avgApplicationWaitTime: Double?

        public var avgBlockCacheHit: Double?

        public var avgBlockIndexCacheHit: Double?

        public var avgBloomFilterCacheHit: Double?

        public var avgConcurrencyWaitTime: Double?

        public var avgCpuTime: Double?

        public var avgDecodeTime: Double?

        public var avgDiskReads: Double?

        public var avgElapsedTime: Double?

        public var avgExecuteTime: Double?

        public var avgExecutorRpcCount: Double?

        public var avgExpectedWorkerCount: Double?

        public var avgGetPlanTime: Double?

        public var avgLogicalReads: Double?

        public var avgMemstoreReadRows: Double?

        public var avgNetTime: Double?

        public var avgNetWaitTime: Double?

        public var avgPartitionCount: Double?

        public var avgQueueTime: Double?

        public var avgReturnRows: Double?

        public var avgRowCacheHit: Double?

        public var avgRpcCount: Double?

        public var avgScheduleTime: Double?

        public var avgSsstoreReadRows: Double?

        public var avgUsedWorkerCount: Double?

        public var avgUserIoWaitTime: Double?

        public var avgWaitCount: Double?

        public var avgWaitTime: Double?

        public var clientIp: String?

        public var dbName: String?

        public var distPlanPercentage: Double?

        public var execPs: Double?

        public var executions: Double?

        public var failCount: Double?

        public var failPercentage: Double?

        public var inner: Bool?

        public var localPlanPercentage: Double?

        public var maxAffectedRows: Double?

        public var maxApplicationWaitTime: Double?

        public var maxConcurrencyWaitTime: Double?

        public var maxCpuTime: Double?

        public var maxDiskReads: Double?

        public var maxElapsedTime: Double?

        public var maxReturnRows: Double?

        public var maxUserIoWaitTime: Double?

        public var maxWaitTime: Double?

        public var missPlanPercentage: Double?

        public var missPlans: Double?

        public var remotePlanPercentage: Double?

        public var remotePlans: Double?

        public var retCode4012Count: Int64?

        public var retCode4013Count: Int64?

        public var retCode5001Count: Int64?

        public var retCode5024Count: Int64?

        public var retCode5167Count: Int64?

        public var retCode5217Count: Int64?

        public var retCode6002Count: Int64?

        public var retryCount: Double?

        public var rpcCount: Double?

        public var server: String?

        public var serverIp: String?

        public var serverPort: Int64?

        public var sqlId: String?

        public var sqlTextShort: String?

        public var sqlType: String?

        public var strongConsistencyPercentage: Double?

        public var sumElapsedTime: Double?

        public var sumLogicalReads: Double?

        public var sumWaitTime: Double?

        public var tableScanPercentage: Double?

        public var totalWaitTime: Double?

        public var userName: String?

        public var waitEvent: String?

        public var weakConsistencyPercentage: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avgAffectedRows != nil {
                map["AvgAffectedRows"] = self.avgAffectedRows!
            }
            if self.avgApplicationWaitTime != nil {
                map["AvgApplicationWaitTime"] = self.avgApplicationWaitTime!
            }
            if self.avgBlockCacheHit != nil {
                map["AvgBlockCacheHit"] = self.avgBlockCacheHit!
            }
            if self.avgBlockIndexCacheHit != nil {
                map["AvgBlockIndexCacheHit"] = self.avgBlockIndexCacheHit!
            }
            if self.avgBloomFilterCacheHit != nil {
                map["AvgBloomFilterCacheHit"] = self.avgBloomFilterCacheHit!
            }
            if self.avgConcurrencyWaitTime != nil {
                map["AvgConcurrencyWaitTime"] = self.avgConcurrencyWaitTime!
            }
            if self.avgCpuTime != nil {
                map["AvgCpuTime"] = self.avgCpuTime!
            }
            if self.avgDecodeTime != nil {
                map["AvgDecodeTime"] = self.avgDecodeTime!
            }
            if self.avgDiskReads != nil {
                map["AvgDiskReads"] = self.avgDiskReads!
            }
            if self.avgElapsedTime != nil {
                map["AvgElapsedTime"] = self.avgElapsedTime!
            }
            if self.avgExecuteTime != nil {
                map["AvgExecuteTime"] = self.avgExecuteTime!
            }
            if self.avgExecutorRpcCount != nil {
                map["AvgExecutorRpcCount"] = self.avgExecutorRpcCount!
            }
            if self.avgExpectedWorkerCount != nil {
                map["AvgExpectedWorkerCount"] = self.avgExpectedWorkerCount!
            }
            if self.avgGetPlanTime != nil {
                map["AvgGetPlanTime"] = self.avgGetPlanTime!
            }
            if self.avgLogicalReads != nil {
                map["AvgLogicalReads"] = self.avgLogicalReads!
            }
            if self.avgMemstoreReadRows != nil {
                map["AvgMemstoreReadRows"] = self.avgMemstoreReadRows!
            }
            if self.avgNetTime != nil {
                map["AvgNetTime"] = self.avgNetTime!
            }
            if self.avgNetWaitTime != nil {
                map["AvgNetWaitTime"] = self.avgNetWaitTime!
            }
            if self.avgPartitionCount != nil {
                map["AvgPartitionCount"] = self.avgPartitionCount!
            }
            if self.avgQueueTime != nil {
                map["AvgQueueTime"] = self.avgQueueTime!
            }
            if self.avgReturnRows != nil {
                map["AvgReturnRows"] = self.avgReturnRows!
            }
            if self.avgRowCacheHit != nil {
                map["AvgRowCacheHit"] = self.avgRowCacheHit!
            }
            if self.avgRpcCount != nil {
                map["AvgRpcCount"] = self.avgRpcCount!
            }
            if self.avgScheduleTime != nil {
                map["AvgScheduleTime"] = self.avgScheduleTime!
            }
            if self.avgSsstoreReadRows != nil {
                map["AvgSsstoreReadRows"] = self.avgSsstoreReadRows!
            }
            if self.avgUsedWorkerCount != nil {
                map["AvgUsedWorkerCount"] = self.avgUsedWorkerCount!
            }
            if self.avgUserIoWaitTime != nil {
                map["AvgUserIoWaitTime"] = self.avgUserIoWaitTime!
            }
            if self.avgWaitCount != nil {
                map["AvgWaitCount"] = self.avgWaitCount!
            }
            if self.avgWaitTime != nil {
                map["AvgWaitTime"] = self.avgWaitTime!
            }
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.distPlanPercentage != nil {
                map["DistPlanPercentage"] = self.distPlanPercentage!
            }
            if self.execPs != nil {
                map["ExecPs"] = self.execPs!
            }
            if self.executions != nil {
                map["Executions"] = self.executions!
            }
            if self.failCount != nil {
                map["FailCount"] = self.failCount!
            }
            if self.failPercentage != nil {
                map["FailPercentage"] = self.failPercentage!
            }
            if self.inner != nil {
                map["Inner"] = self.inner!
            }
            if self.localPlanPercentage != nil {
                map["LocalPlanPercentage"] = self.localPlanPercentage!
            }
            if self.maxAffectedRows != nil {
                map["MaxAffectedRows"] = self.maxAffectedRows!
            }
            if self.maxApplicationWaitTime != nil {
                map["MaxApplicationWaitTime"] = self.maxApplicationWaitTime!
            }
            if self.maxConcurrencyWaitTime != nil {
                map["MaxConcurrencyWaitTime"] = self.maxConcurrencyWaitTime!
            }
            if self.maxCpuTime != nil {
                map["MaxCpuTime"] = self.maxCpuTime!
            }
            if self.maxDiskReads != nil {
                map["MaxDiskReads"] = self.maxDiskReads!
            }
            if self.maxElapsedTime != nil {
                map["MaxElapsedTime"] = self.maxElapsedTime!
            }
            if self.maxReturnRows != nil {
                map["MaxReturnRows"] = self.maxReturnRows!
            }
            if self.maxUserIoWaitTime != nil {
                map["MaxUserIoWaitTime"] = self.maxUserIoWaitTime!
            }
            if self.maxWaitTime != nil {
                map["MaxWaitTime"] = self.maxWaitTime!
            }
            if self.missPlanPercentage != nil {
                map["MissPlanPercentage"] = self.missPlanPercentage!
            }
            if self.missPlans != nil {
                map["MissPlans"] = self.missPlans!
            }
            if self.remotePlanPercentage != nil {
                map["RemotePlanPercentage"] = self.remotePlanPercentage!
            }
            if self.remotePlans != nil {
                map["RemotePlans"] = self.remotePlans!
            }
            if self.retCode4012Count != nil {
                map["RetCode4012Count"] = self.retCode4012Count!
            }
            if self.retCode4013Count != nil {
                map["RetCode4013Count"] = self.retCode4013Count!
            }
            if self.retCode5001Count != nil {
                map["RetCode5001Count"] = self.retCode5001Count!
            }
            if self.retCode5024Count != nil {
                map["RetCode5024Count"] = self.retCode5024Count!
            }
            if self.retCode5167Count != nil {
                map["RetCode5167Count"] = self.retCode5167Count!
            }
            if self.retCode5217Count != nil {
                map["RetCode5217Count"] = self.retCode5217Count!
            }
            if self.retCode6002Count != nil {
                map["RetCode6002Count"] = self.retCode6002Count!
            }
            if self.retryCount != nil {
                map["RetryCount"] = self.retryCount!
            }
            if self.rpcCount != nil {
                map["RpcCount"] = self.rpcCount!
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.serverIp != nil {
                map["ServerIp"] = self.serverIp!
            }
            if self.serverPort != nil {
                map["ServerPort"] = self.serverPort!
            }
            if self.sqlId != nil {
                map["SqlId"] = self.sqlId!
            }
            if self.sqlTextShort != nil {
                map["SqlTextShort"] = self.sqlTextShort!
            }
            if self.sqlType != nil {
                map["SqlType"] = self.sqlType!
            }
            if self.strongConsistencyPercentage != nil {
                map["StrongConsistencyPercentage"] = self.strongConsistencyPercentage!
            }
            if self.sumElapsedTime != nil {
                map["SumElapsedTime"] = self.sumElapsedTime!
            }
            if self.sumLogicalReads != nil {
                map["SumLogicalReads"] = self.sumLogicalReads!
            }
            if self.sumWaitTime != nil {
                map["SumWaitTime"] = self.sumWaitTime!
            }
            if self.tableScanPercentage != nil {
                map["TableScanPercentage"] = self.tableScanPercentage!
            }
            if self.totalWaitTime != nil {
                map["TotalWaitTime"] = self.totalWaitTime!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.waitEvent != nil {
                map["WaitEvent"] = self.waitEvent!
            }
            if self.weakConsistencyPercentage != nil {
                map["WeakConsistencyPercentage"] = self.weakConsistencyPercentage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvgAffectedRows") && dict["AvgAffectedRows"] != nil {
                self.avgAffectedRows = dict["AvgAffectedRows"] as! Double
            }
            if dict.keys.contains("AvgApplicationWaitTime") && dict["AvgApplicationWaitTime"] != nil {
                self.avgApplicationWaitTime = dict["AvgApplicationWaitTime"] as! Double
            }
            if dict.keys.contains("AvgBlockCacheHit") && dict["AvgBlockCacheHit"] != nil {
                self.avgBlockCacheHit = dict["AvgBlockCacheHit"] as! Double
            }
            if dict.keys.contains("AvgBlockIndexCacheHit") && dict["AvgBlockIndexCacheHit"] != nil {
                self.avgBlockIndexCacheHit = dict["AvgBlockIndexCacheHit"] as! Double
            }
            if dict.keys.contains("AvgBloomFilterCacheHit") && dict["AvgBloomFilterCacheHit"] != nil {
                self.avgBloomFilterCacheHit = dict["AvgBloomFilterCacheHit"] as! Double
            }
            if dict.keys.contains("AvgConcurrencyWaitTime") && dict["AvgConcurrencyWaitTime"] != nil {
                self.avgConcurrencyWaitTime = dict["AvgConcurrencyWaitTime"] as! Double
            }
            if dict.keys.contains("AvgCpuTime") && dict["AvgCpuTime"] != nil {
                self.avgCpuTime = dict["AvgCpuTime"] as! Double
            }
            if dict.keys.contains("AvgDecodeTime") && dict["AvgDecodeTime"] != nil {
                self.avgDecodeTime = dict["AvgDecodeTime"] as! Double
            }
            if dict.keys.contains("AvgDiskReads") && dict["AvgDiskReads"] != nil {
                self.avgDiskReads = dict["AvgDiskReads"] as! Double
            }
            if dict.keys.contains("AvgElapsedTime") && dict["AvgElapsedTime"] != nil {
                self.avgElapsedTime = dict["AvgElapsedTime"] as! Double
            }
            if dict.keys.contains("AvgExecuteTime") && dict["AvgExecuteTime"] != nil {
                self.avgExecuteTime = dict["AvgExecuteTime"] as! Double
            }
            if dict.keys.contains("AvgExecutorRpcCount") && dict["AvgExecutorRpcCount"] != nil {
                self.avgExecutorRpcCount = dict["AvgExecutorRpcCount"] as! Double
            }
            if dict.keys.contains("AvgExpectedWorkerCount") && dict["AvgExpectedWorkerCount"] != nil {
                self.avgExpectedWorkerCount = dict["AvgExpectedWorkerCount"] as! Double
            }
            if dict.keys.contains("AvgGetPlanTime") && dict["AvgGetPlanTime"] != nil {
                self.avgGetPlanTime = dict["AvgGetPlanTime"] as! Double
            }
            if dict.keys.contains("AvgLogicalReads") && dict["AvgLogicalReads"] != nil {
                self.avgLogicalReads = dict["AvgLogicalReads"] as! Double
            }
            if dict.keys.contains("AvgMemstoreReadRows") && dict["AvgMemstoreReadRows"] != nil {
                self.avgMemstoreReadRows = dict["AvgMemstoreReadRows"] as! Double
            }
            if dict.keys.contains("AvgNetTime") && dict["AvgNetTime"] != nil {
                self.avgNetTime = dict["AvgNetTime"] as! Double
            }
            if dict.keys.contains("AvgNetWaitTime") && dict["AvgNetWaitTime"] != nil {
                self.avgNetWaitTime = dict["AvgNetWaitTime"] as! Double
            }
            if dict.keys.contains("AvgPartitionCount") && dict["AvgPartitionCount"] != nil {
                self.avgPartitionCount = dict["AvgPartitionCount"] as! Double
            }
            if dict.keys.contains("AvgQueueTime") && dict["AvgQueueTime"] != nil {
                self.avgQueueTime = dict["AvgQueueTime"] as! Double
            }
            if dict.keys.contains("AvgReturnRows") && dict["AvgReturnRows"] != nil {
                self.avgReturnRows = dict["AvgReturnRows"] as! Double
            }
            if dict.keys.contains("AvgRowCacheHit") && dict["AvgRowCacheHit"] != nil {
                self.avgRowCacheHit = dict["AvgRowCacheHit"] as! Double
            }
            if dict.keys.contains("AvgRpcCount") && dict["AvgRpcCount"] != nil {
                self.avgRpcCount = dict["AvgRpcCount"] as! Double
            }
            if dict.keys.contains("AvgScheduleTime") && dict["AvgScheduleTime"] != nil {
                self.avgScheduleTime = dict["AvgScheduleTime"] as! Double
            }
            if dict.keys.contains("AvgSsstoreReadRows") && dict["AvgSsstoreReadRows"] != nil {
                self.avgSsstoreReadRows = dict["AvgSsstoreReadRows"] as! Double
            }
            if dict.keys.contains("AvgUsedWorkerCount") && dict["AvgUsedWorkerCount"] != nil {
                self.avgUsedWorkerCount = dict["AvgUsedWorkerCount"] as! Double
            }
            if dict.keys.contains("AvgUserIoWaitTime") && dict["AvgUserIoWaitTime"] != nil {
                self.avgUserIoWaitTime = dict["AvgUserIoWaitTime"] as! Double
            }
            if dict.keys.contains("AvgWaitCount") && dict["AvgWaitCount"] != nil {
                self.avgWaitCount = dict["AvgWaitCount"] as! Double
            }
            if dict.keys.contains("AvgWaitTime") && dict["AvgWaitTime"] != nil {
                self.avgWaitTime = dict["AvgWaitTime"] as! Double
            }
            if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("DbName") && dict["DbName"] != nil {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("DistPlanPercentage") && dict["DistPlanPercentage"] != nil {
                self.distPlanPercentage = dict["DistPlanPercentage"] as! Double
            }
            if dict.keys.contains("ExecPs") && dict["ExecPs"] != nil {
                self.execPs = dict["ExecPs"] as! Double
            }
            if dict.keys.contains("Executions") && dict["Executions"] != nil {
                self.executions = dict["Executions"] as! Double
            }
            if dict.keys.contains("FailCount") && dict["FailCount"] != nil {
                self.failCount = dict["FailCount"] as! Double
            }
            if dict.keys.contains("FailPercentage") && dict["FailPercentage"] != nil {
                self.failPercentage = dict["FailPercentage"] as! Double
            }
            if dict.keys.contains("Inner") && dict["Inner"] != nil {
                self.inner = dict["Inner"] as! Bool
            }
            if dict.keys.contains("LocalPlanPercentage") && dict["LocalPlanPercentage"] != nil {
                self.localPlanPercentage = dict["LocalPlanPercentage"] as! Double
            }
            if dict.keys.contains("MaxAffectedRows") && dict["MaxAffectedRows"] != nil {
                self.maxAffectedRows = dict["MaxAffectedRows"] as! Double
            }
            if dict.keys.contains("MaxApplicationWaitTime") && dict["MaxApplicationWaitTime"] != nil {
                self.maxApplicationWaitTime = dict["MaxApplicationWaitTime"] as! Double
            }
            if dict.keys.contains("MaxConcurrencyWaitTime") && dict["MaxConcurrencyWaitTime"] != nil {
                self.maxConcurrencyWaitTime = dict["MaxConcurrencyWaitTime"] as! Double
            }
            if dict.keys.contains("MaxCpuTime") && dict["MaxCpuTime"] != nil {
                self.maxCpuTime = dict["MaxCpuTime"] as! Double
            }
            if dict.keys.contains("MaxDiskReads") && dict["MaxDiskReads"] != nil {
                self.maxDiskReads = dict["MaxDiskReads"] as! Double
            }
            if dict.keys.contains("MaxElapsedTime") && dict["MaxElapsedTime"] != nil {
                self.maxElapsedTime = dict["MaxElapsedTime"] as! Double
            }
            if dict.keys.contains("MaxReturnRows") && dict["MaxReturnRows"] != nil {
                self.maxReturnRows = dict["MaxReturnRows"] as! Double
            }
            if dict.keys.contains("MaxUserIoWaitTime") && dict["MaxUserIoWaitTime"] != nil {
                self.maxUserIoWaitTime = dict["MaxUserIoWaitTime"] as! Double
            }
            if dict.keys.contains("MaxWaitTime") && dict["MaxWaitTime"] != nil {
                self.maxWaitTime = dict["MaxWaitTime"] as! Double
            }
            if dict.keys.contains("MissPlanPercentage") && dict["MissPlanPercentage"] != nil {
                self.missPlanPercentage = dict["MissPlanPercentage"] as! Double
            }
            if dict.keys.contains("MissPlans") && dict["MissPlans"] != nil {
                self.missPlans = dict["MissPlans"] as! Double
            }
            if dict.keys.contains("RemotePlanPercentage") && dict["RemotePlanPercentage"] != nil {
                self.remotePlanPercentage = dict["RemotePlanPercentage"] as! Double
            }
            if dict.keys.contains("RemotePlans") && dict["RemotePlans"] != nil {
                self.remotePlans = dict["RemotePlans"] as! Double
            }
            if dict.keys.contains("RetCode4012Count") && dict["RetCode4012Count"] != nil {
                self.retCode4012Count = dict["RetCode4012Count"] as! Int64
            }
            if dict.keys.contains("RetCode4013Count") && dict["RetCode4013Count"] != nil {
                self.retCode4013Count = dict["RetCode4013Count"] as! Int64
            }
            if dict.keys.contains("RetCode5001Count") && dict["RetCode5001Count"] != nil {
                self.retCode5001Count = dict["RetCode5001Count"] as! Int64
            }
            if dict.keys.contains("RetCode5024Count") && dict["RetCode5024Count"] != nil {
                self.retCode5024Count = dict["RetCode5024Count"] as! Int64
            }
            if dict.keys.contains("RetCode5167Count") && dict["RetCode5167Count"] != nil {
                self.retCode5167Count = dict["RetCode5167Count"] as! Int64
            }
            if dict.keys.contains("RetCode5217Count") && dict["RetCode5217Count"] != nil {
                self.retCode5217Count = dict["RetCode5217Count"] as! Int64
            }
            if dict.keys.contains("RetCode6002Count") && dict["RetCode6002Count"] != nil {
                self.retCode6002Count = dict["RetCode6002Count"] as! Int64
            }
            if dict.keys.contains("RetryCount") && dict["RetryCount"] != nil {
                self.retryCount = dict["RetryCount"] as! Double
            }
            if dict.keys.contains("RpcCount") && dict["RpcCount"] != nil {
                self.rpcCount = dict["RpcCount"] as! Double
            }
            if dict.keys.contains("Server") && dict["Server"] != nil {
                self.server = dict["Server"] as! String
            }
            if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
                self.serverIp = dict["ServerIp"] as! String
            }
            if dict.keys.contains("ServerPort") && dict["ServerPort"] != nil {
                self.serverPort = dict["ServerPort"] as! Int64
            }
            if dict.keys.contains("SqlId") && dict["SqlId"] != nil {
                self.sqlId = dict["SqlId"] as! String
            }
            if dict.keys.contains("SqlTextShort") && dict["SqlTextShort"] != nil {
                self.sqlTextShort = dict["SqlTextShort"] as! String
            }
            if dict.keys.contains("SqlType") && dict["SqlType"] != nil {
                self.sqlType = dict["SqlType"] as! String
            }
            if dict.keys.contains("StrongConsistencyPercentage") && dict["StrongConsistencyPercentage"] != nil {
                self.strongConsistencyPercentage = dict["StrongConsistencyPercentage"] as! Double
            }
            if dict.keys.contains("SumElapsedTime") && dict["SumElapsedTime"] != nil {
                self.sumElapsedTime = dict["SumElapsedTime"] as! Double
            }
            if dict.keys.contains("SumLogicalReads") && dict["SumLogicalReads"] != nil {
                self.sumLogicalReads = dict["SumLogicalReads"] as! Double
            }
            if dict.keys.contains("SumWaitTime") && dict["SumWaitTime"] != nil {
                self.sumWaitTime = dict["SumWaitTime"] as! Double
            }
            if dict.keys.contains("TableScanPercentage") && dict["TableScanPercentage"] != nil {
                self.tableScanPercentage = dict["TableScanPercentage"] as! Double
            }
            if dict.keys.contains("TotalWaitTime") && dict["TotalWaitTime"] != nil {
                self.totalWaitTime = dict["TotalWaitTime"] as! Double
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("WaitEvent") && dict["WaitEvent"] != nil {
                self.waitEvent = dict["WaitEvent"] as! String
            }
            if dict.keys.contains("WeakConsistencyPercentage") && dict["WeakConsistencyPercentage"] != nil {
                self.weakConsistencyPercentage = dict["WeakConsistencyPercentage"] as! Double
            }
        }
    }
    public var data: [DescribeOasSlowSQLListResponseBody.Data]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeOasSlowSQLListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeOasSlowSQLListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOasSlowSQLListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOasSlowSQLListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeOasSlowSQLListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOasTopSQLListRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var dbName: String?

    public var endTime: String?

    public var filterCondition: String?

    public var instanceId: String?

    public var nodeIp: String?

    public var searchKeyWord: String?

    public var searchParam: String?

    public var searchRule: String?

    public var searchValue: String?

    public var sqlId: String?

    public var sqlTextLength: Int64?

    public var startTime: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterCondition != nil {
            map["FilterCondition"] = self.filterCondition!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeIp != nil {
            map["NodeIp"] = self.nodeIp!
        }
        if self.searchKeyWord != nil {
            map["SearchKeyWord"] = self.searchKeyWord!
        }
        if self.searchParam != nil {
            map["SearchParam"] = self.searchParam!
        }
        if self.searchRule != nil {
            map["SearchRule"] = self.searchRule!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        if self.sqlId != nil {
            map["SqlId"] = self.sqlId!
        }
        if self.sqlTextLength != nil {
            map["SqlTextLength"] = self.sqlTextLength!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterCondition") && dict["FilterCondition"] != nil {
            self.filterCondition = dict["FilterCondition"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NodeIp") && dict["NodeIp"] != nil {
            self.nodeIp = dict["NodeIp"] as! String
        }
        if dict.keys.contains("SearchKeyWord") && dict["SearchKeyWord"] != nil {
            self.searchKeyWord = dict["SearchKeyWord"] as! String
        }
        if dict.keys.contains("SearchParam") && dict["SearchParam"] != nil {
            self.searchParam = dict["SearchParam"] as! String
        }
        if dict.keys.contains("SearchRule") && dict["SearchRule"] != nil {
            self.searchRule = dict["SearchRule"] as! String
        }
        if dict.keys.contains("SearchValue") && dict["SearchValue"] != nil {
            self.searchValue = dict["SearchValue"] as! String
        }
        if dict.keys.contains("SqlId") && dict["SqlId"] != nil {
            self.sqlId = dict["SqlId"] as! String
        }
        if dict.keys.contains("SqlTextLength") && dict["SqlTextLength"] != nil {
            self.sqlTextLength = dict["SqlTextLength"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeOasTopSQLListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var avgAffectedRows: Double?

        public var avgApplicationWaitTime: Double?

        public var avgBlockCacheHit: Double?

        public var avgBlockIndexCacheHit: Double?

        public var avgBloomFilterCacheHit: Double?

        public var avgConcurrencyWaitTime: Double?

        public var avgCpuTime: Double?

        public var avgDecodeTime: Double?

        public var avgDiskReads: Double?

        public var avgElapsedTime: Double?

        public var avgExecuteTime: Double?

        public var avgExecutorRpcCount: Double?

        public var avgExpectedWorkerCount: Double?

        public var avgGetPlanTime: Double?

        public var avgLogicalReads: Double?

        public var avgMemstoreReadRows: Double?

        public var avgNetTime: Double?

        public var avgNetWaitTime: Double?

        public var avgPartitionCount: Double?

        public var avgQueueTime: Double?

        public var avgReturnRows: Double?

        public var avgRowCacheHit: Double?

        public var avgRpcCount: Double?

        public var avgScheduleTime: Double?

        public var avgSsstoreReadRows: Double?

        public var avgUsedWorkerCount: Double?

        public var avgUserIoWaitTime: Double?

        public var avgWaitCount: Double?

        public var avgWaitTime: Double?

        public var clientIp: String?

        public var cpuPercentage: Double?

        public var dbName: String?

        public var distPlanPercentage: Double?

        public var execPs: Double?

        public var executions: Double?

        public var failCount: Double?

        public var failPercentage: Double?

        public var inner: Bool?

        public var localPlanPercentage: Double?

        public var maxAffectedRows: Double?

        public var maxApplicationWaitTime: Double?

        public var maxConcurrencyWaitTime: Double?

        public var maxCpuTime: Double?

        public var maxDiskReads: Double?

        public var maxElapsedTime: Double?

        public var maxReturnRows: Double?

        public var maxUserIoWaitTime: Double?

        public var maxWaitTime: Double?

        public var missPlanPercentage: Double?

        public var missPlans: Double?

        public var remotePlanPercentage: Double?

        public var remotePlans: Double?

        public var retCode4012Count: Int64?

        public var retCode4013Count: Int64?

        public var retCode5001Count: Int64?

        public var retCode5024Count: Int64?

        public var retCode5167Count: Int64?

        public var retCode5217Count: Int64?

        public var retCode6002Count: Int64?

        public var retryCount: Double?

        public var rpcCount: Double?

        public var server: String?

        public var serverIp: String?

        public var serverPort: Int64?

        public var sqlId: String?

        public var sqlTextShort: String?

        public var sqlType: String?

        public var strongConsistencyPercentage: Double?

        public var sumElapsedTime: Double?

        public var sumLogicalReads: Double?

        public var sumWaitTime: Double?

        public var tableScanPercentage: Double?

        public var totalWaitTime: Double?

        public var userName: String?

        public var waitEvent: String?

        public var weakConsistencyPercentage: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avgAffectedRows != nil {
                map["AvgAffectedRows"] = self.avgAffectedRows!
            }
            if self.avgApplicationWaitTime != nil {
                map["AvgApplicationWaitTime"] = self.avgApplicationWaitTime!
            }
            if self.avgBlockCacheHit != nil {
                map["AvgBlockCacheHit"] = self.avgBlockCacheHit!
            }
            if self.avgBlockIndexCacheHit != nil {
                map["AvgBlockIndexCacheHit"] = self.avgBlockIndexCacheHit!
            }
            if self.avgBloomFilterCacheHit != nil {
                map["AvgBloomFilterCacheHit"] = self.avgBloomFilterCacheHit!
            }
            if self.avgConcurrencyWaitTime != nil {
                map["AvgConcurrencyWaitTime"] = self.avgConcurrencyWaitTime!
            }
            if self.avgCpuTime != nil {
                map["AvgCpuTime"] = self.avgCpuTime!
            }
            if self.avgDecodeTime != nil {
                map["AvgDecodeTime"] = self.avgDecodeTime!
            }
            if self.avgDiskReads != nil {
                map["AvgDiskReads"] = self.avgDiskReads!
            }
            if self.avgElapsedTime != nil {
                map["AvgElapsedTime"] = self.avgElapsedTime!
            }
            if self.avgExecuteTime != nil {
                map["AvgExecuteTime"] = self.avgExecuteTime!
            }
            if self.avgExecutorRpcCount != nil {
                map["AvgExecutorRpcCount"] = self.avgExecutorRpcCount!
            }
            if self.avgExpectedWorkerCount != nil {
                map["AvgExpectedWorkerCount"] = self.avgExpectedWorkerCount!
            }
            if self.avgGetPlanTime != nil {
                map["AvgGetPlanTime"] = self.avgGetPlanTime!
            }
            if self.avgLogicalReads != nil {
                map["AvgLogicalReads"] = self.avgLogicalReads!
            }
            if self.avgMemstoreReadRows != nil {
                map["AvgMemstoreReadRows"] = self.avgMemstoreReadRows!
            }
            if self.avgNetTime != nil {
                map["AvgNetTime"] = self.avgNetTime!
            }
            if self.avgNetWaitTime != nil {
                map["AvgNetWaitTime"] = self.avgNetWaitTime!
            }
            if self.avgPartitionCount != nil {
                map["AvgPartitionCount"] = self.avgPartitionCount!
            }
            if self.avgQueueTime != nil {
                map["AvgQueueTime"] = self.avgQueueTime!
            }
            if self.avgReturnRows != nil {
                map["AvgReturnRows"] = self.avgReturnRows!
            }
            if self.avgRowCacheHit != nil {
                map["AvgRowCacheHit"] = self.avgRowCacheHit!
            }
            if self.avgRpcCount != nil {
                map["AvgRpcCount"] = self.avgRpcCount!
            }
            if self.avgScheduleTime != nil {
                map["AvgScheduleTime"] = self.avgScheduleTime!
            }
            if self.avgSsstoreReadRows != nil {
                map["AvgSsstoreReadRows"] = self.avgSsstoreReadRows!
            }
            if self.avgUsedWorkerCount != nil {
                map["AvgUsedWorkerCount"] = self.avgUsedWorkerCount!
            }
            if self.avgUserIoWaitTime != nil {
                map["AvgUserIoWaitTime"] = self.avgUserIoWaitTime!
            }
            if self.avgWaitCount != nil {
                map["AvgWaitCount"] = self.avgWaitCount!
            }
            if self.avgWaitTime != nil {
                map["AvgWaitTime"] = self.avgWaitTime!
            }
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.cpuPercentage != nil {
                map["CpuPercentage"] = self.cpuPercentage!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.distPlanPercentage != nil {
                map["DistPlanPercentage"] = self.distPlanPercentage!
            }
            if self.execPs != nil {
                map["ExecPs"] = self.execPs!
            }
            if self.executions != nil {
                map["Executions"] = self.executions!
            }
            if self.failCount != nil {
                map["FailCount"] = self.failCount!
            }
            if self.failPercentage != nil {
                map["FailPercentage"] = self.failPercentage!
            }
            if self.inner != nil {
                map["Inner"] = self.inner!
            }
            if self.localPlanPercentage != nil {
                map["LocalPlanPercentage"] = self.localPlanPercentage!
            }
            if self.maxAffectedRows != nil {
                map["MaxAffectedRows"] = self.maxAffectedRows!
            }
            if self.maxApplicationWaitTime != nil {
                map["MaxApplicationWaitTime"] = self.maxApplicationWaitTime!
            }
            if self.maxConcurrencyWaitTime != nil {
                map["MaxConcurrencyWaitTime"] = self.maxConcurrencyWaitTime!
            }
            if self.maxCpuTime != nil {
                map["MaxCpuTime"] = self.maxCpuTime!
            }
            if self.maxDiskReads != nil {
                map["MaxDiskReads"] = self.maxDiskReads!
            }
            if self.maxElapsedTime != nil {
                map["MaxElapsedTime"] = self.maxElapsedTime!
            }
            if self.maxReturnRows != nil {
                map["MaxReturnRows"] = self.maxReturnRows!
            }
            if self.maxUserIoWaitTime != nil {
                map["MaxUserIoWaitTime"] = self.maxUserIoWaitTime!
            }
            if self.maxWaitTime != nil {
                map["MaxWaitTime"] = self.maxWaitTime!
            }
            if self.missPlanPercentage != nil {
                map["MissPlanPercentage"] = self.missPlanPercentage!
            }
            if self.missPlans != nil {
                map["MissPlans"] = self.missPlans!
            }
            if self.remotePlanPercentage != nil {
                map["RemotePlanPercentage"] = self.remotePlanPercentage!
            }
            if self.remotePlans != nil {
                map["RemotePlans"] = self.remotePlans!
            }
            if self.retCode4012Count != nil {
                map["RetCode4012Count"] = self.retCode4012Count!
            }
            if self.retCode4013Count != nil {
                map["RetCode4013Count"] = self.retCode4013Count!
            }
            if self.retCode5001Count != nil {
                map["RetCode5001Count"] = self.retCode5001Count!
            }
            if self.retCode5024Count != nil {
                map["RetCode5024Count"] = self.retCode5024Count!
            }
            if self.retCode5167Count != nil {
                map["RetCode5167Count"] = self.retCode5167Count!
            }
            if self.retCode5217Count != nil {
                map["RetCode5217Count"] = self.retCode5217Count!
            }
            if self.retCode6002Count != nil {
                map["RetCode6002Count"] = self.retCode6002Count!
            }
            if self.retryCount != nil {
                map["RetryCount"] = self.retryCount!
            }
            if self.rpcCount != nil {
                map["RpcCount"] = self.rpcCount!
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.serverIp != nil {
                map["ServerIp"] = self.serverIp!
            }
            if self.serverPort != nil {
                map["ServerPort"] = self.serverPort!
            }
            if self.sqlId != nil {
                map["SqlId"] = self.sqlId!
            }
            if self.sqlTextShort != nil {
                map["SqlTextShort"] = self.sqlTextShort!
            }
            if self.sqlType != nil {
                map["SqlType"] = self.sqlType!
            }
            if self.strongConsistencyPercentage != nil {
                map["StrongConsistencyPercentage"] = self.strongConsistencyPercentage!
            }
            if self.sumElapsedTime != nil {
                map["SumElapsedTime"] = self.sumElapsedTime!
            }
            if self.sumLogicalReads != nil {
                map["SumLogicalReads"] = self.sumLogicalReads!
            }
            if self.sumWaitTime != nil {
                map["SumWaitTime"] = self.sumWaitTime!
            }
            if self.tableScanPercentage != nil {
                map["TableScanPercentage"] = self.tableScanPercentage!
            }
            if self.totalWaitTime != nil {
                map["TotalWaitTime"] = self.totalWaitTime!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.waitEvent != nil {
                map["WaitEvent"] = self.waitEvent!
            }
            if self.weakConsistencyPercentage != nil {
                map["WeakConsistencyPercentage"] = self.weakConsistencyPercentage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvgAffectedRows") && dict["AvgAffectedRows"] != nil {
                self.avgAffectedRows = dict["AvgAffectedRows"] as! Double
            }
            if dict.keys.contains("AvgApplicationWaitTime") && dict["AvgApplicationWaitTime"] != nil {
                self.avgApplicationWaitTime = dict["AvgApplicationWaitTime"] as! Double
            }
            if dict.keys.contains("AvgBlockCacheHit") && dict["AvgBlockCacheHit"] != nil {
                self.avgBlockCacheHit = dict["AvgBlockCacheHit"] as! Double
            }
            if dict.keys.contains("AvgBlockIndexCacheHit") && dict["AvgBlockIndexCacheHit"] != nil {
                self.avgBlockIndexCacheHit = dict["AvgBlockIndexCacheHit"] as! Double
            }
            if dict.keys.contains("AvgBloomFilterCacheHit") && dict["AvgBloomFilterCacheHit"] != nil {
                self.avgBloomFilterCacheHit = dict["AvgBloomFilterCacheHit"] as! Double
            }
            if dict.keys.contains("AvgConcurrencyWaitTime") && dict["AvgConcurrencyWaitTime"] != nil {
                self.avgConcurrencyWaitTime = dict["AvgConcurrencyWaitTime"] as! Double
            }
            if dict.keys.contains("AvgCpuTime") && dict["AvgCpuTime"] != nil {
                self.avgCpuTime = dict["AvgCpuTime"] as! Double
            }
            if dict.keys.contains("AvgDecodeTime") && dict["AvgDecodeTime"] != nil {
                self.avgDecodeTime = dict["AvgDecodeTime"] as! Double
            }
            if dict.keys.contains("AvgDiskReads") && dict["AvgDiskReads"] != nil {
                self.avgDiskReads = dict["AvgDiskReads"] as! Double
            }
            if dict.keys.contains("AvgElapsedTime") && dict["AvgElapsedTime"] != nil {
                self.avgElapsedTime = dict["AvgElapsedTime"] as! Double
            }
            if dict.keys.contains("AvgExecuteTime") && dict["AvgExecuteTime"] != nil {
                self.avgExecuteTime = dict["AvgExecuteTime"] as! Double
            }
            if dict.keys.contains("AvgExecutorRpcCount") && dict["AvgExecutorRpcCount"] != nil {
                self.avgExecutorRpcCount = dict["AvgExecutorRpcCount"] as! Double
            }
            if dict.keys.contains("AvgExpectedWorkerCount") && dict["AvgExpectedWorkerCount"] != nil {
                self.avgExpectedWorkerCount = dict["AvgExpectedWorkerCount"] as! Double
            }
            if dict.keys.contains("AvgGetPlanTime") && dict["AvgGetPlanTime"] != nil {
                self.avgGetPlanTime = dict["AvgGetPlanTime"] as! Double
            }
            if dict.keys.contains("AvgLogicalReads") && dict["AvgLogicalReads"] != nil {
                self.avgLogicalReads = dict["AvgLogicalReads"] as! Double
            }
            if dict.keys.contains("AvgMemstoreReadRows") && dict["AvgMemstoreReadRows"] != nil {
                self.avgMemstoreReadRows = dict["AvgMemstoreReadRows"] as! Double
            }
            if dict.keys.contains("AvgNetTime") && dict["AvgNetTime"] != nil {
                self.avgNetTime = dict["AvgNetTime"] as! Double
            }
            if dict.keys.contains("AvgNetWaitTime") && dict["AvgNetWaitTime"] != nil {
                self.avgNetWaitTime = dict["AvgNetWaitTime"] as! Double
            }
            if dict.keys.contains("AvgPartitionCount") && dict["AvgPartitionCount"] != nil {
                self.avgPartitionCount = dict["AvgPartitionCount"] as! Double
            }
            if dict.keys.contains("AvgQueueTime") && dict["AvgQueueTime"] != nil {
                self.avgQueueTime = dict["AvgQueueTime"] as! Double
            }
            if dict.keys.contains("AvgReturnRows") && dict["AvgReturnRows"] != nil {
                self.avgReturnRows = dict["AvgReturnRows"] as! Double
            }
            if dict.keys.contains("AvgRowCacheHit") && dict["AvgRowCacheHit"] != nil {
                self.avgRowCacheHit = dict["AvgRowCacheHit"] as! Double
            }
            if dict.keys.contains("AvgRpcCount") && dict["AvgRpcCount"] != nil {
                self.avgRpcCount = dict["AvgRpcCount"] as! Double
            }
            if dict.keys.contains("AvgScheduleTime") && dict["AvgScheduleTime"] != nil {
                self.avgScheduleTime = dict["AvgScheduleTime"] as! Double
            }
            if dict.keys.contains("AvgSsstoreReadRows") && dict["AvgSsstoreReadRows"] != nil {
                self.avgSsstoreReadRows = dict["AvgSsstoreReadRows"] as! Double
            }
            if dict.keys.contains("AvgUsedWorkerCount") && dict["AvgUsedWorkerCount"] != nil {
                self.avgUsedWorkerCount = dict["AvgUsedWorkerCount"] as! Double
            }
            if dict.keys.contains("AvgUserIoWaitTime") && dict["AvgUserIoWaitTime"] != nil {
                self.avgUserIoWaitTime = dict["AvgUserIoWaitTime"] as! Double
            }
            if dict.keys.contains("AvgWaitCount") && dict["AvgWaitCount"] != nil {
                self.avgWaitCount = dict["AvgWaitCount"] as! Double
            }
            if dict.keys.contains("AvgWaitTime") && dict["AvgWaitTime"] != nil {
                self.avgWaitTime = dict["AvgWaitTime"] as! Double
            }
            if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("CpuPercentage") && dict["CpuPercentage"] != nil {
                self.cpuPercentage = dict["CpuPercentage"] as! Double
            }
            if dict.keys.contains("DbName") && dict["DbName"] != nil {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("DistPlanPercentage") && dict["DistPlanPercentage"] != nil {
                self.distPlanPercentage = dict["DistPlanPercentage"] as! Double
            }
            if dict.keys.contains("ExecPs") && dict["ExecPs"] != nil {
                self.execPs = dict["ExecPs"] as! Double
            }
            if dict.keys.contains("Executions") && dict["Executions"] != nil {
                self.executions = dict["Executions"] as! Double
            }
            if dict.keys.contains("FailCount") && dict["FailCount"] != nil {
                self.failCount = dict["FailCount"] as! Double
            }
            if dict.keys.contains("FailPercentage") && dict["FailPercentage"] != nil {
                self.failPercentage = dict["FailPercentage"] as! Double
            }
            if dict.keys.contains("Inner") && dict["Inner"] != nil {
                self.inner = dict["Inner"] as! Bool
            }
            if dict.keys.contains("LocalPlanPercentage") && dict["LocalPlanPercentage"] != nil {
                self.localPlanPercentage = dict["LocalPlanPercentage"] as! Double
            }
            if dict.keys.contains("MaxAffectedRows") && dict["MaxAffectedRows"] != nil {
                self.maxAffectedRows = dict["MaxAffectedRows"] as! Double
            }
            if dict.keys.contains("MaxApplicationWaitTime") && dict["MaxApplicationWaitTime"] != nil {
                self.maxApplicationWaitTime = dict["MaxApplicationWaitTime"] as! Double
            }
            if dict.keys.contains("MaxConcurrencyWaitTime") && dict["MaxConcurrencyWaitTime"] != nil {
                self.maxConcurrencyWaitTime = dict["MaxConcurrencyWaitTime"] as! Double
            }
            if dict.keys.contains("MaxCpuTime") && dict["MaxCpuTime"] != nil {
                self.maxCpuTime = dict["MaxCpuTime"] as! Double
            }
            if dict.keys.contains("MaxDiskReads") && dict["MaxDiskReads"] != nil {
                self.maxDiskReads = dict["MaxDiskReads"] as! Double
            }
            if dict.keys.contains("MaxElapsedTime") && dict["MaxElapsedTime"] != nil {
                self.maxElapsedTime = dict["MaxElapsedTime"] as! Double
            }
            if dict.keys.contains("MaxReturnRows") && dict["MaxReturnRows"] != nil {
                self.maxReturnRows = dict["MaxReturnRows"] as! Double
            }
            if dict.keys.contains("MaxUserIoWaitTime") && dict["MaxUserIoWaitTime"] != nil {
                self.maxUserIoWaitTime = dict["MaxUserIoWaitTime"] as! Double
            }
            if dict.keys.contains("MaxWaitTime") && dict["MaxWaitTime"] != nil {
                self.maxWaitTime = dict["MaxWaitTime"] as! Double
            }
            if dict.keys.contains("MissPlanPercentage") && dict["MissPlanPercentage"] != nil {
                self.missPlanPercentage = dict["MissPlanPercentage"] as! Double
            }
            if dict.keys.contains("MissPlans") && dict["MissPlans"] != nil {
                self.missPlans = dict["MissPlans"] as! Double
            }
            if dict.keys.contains("RemotePlanPercentage") && dict["RemotePlanPercentage"] != nil {
                self.remotePlanPercentage = dict["RemotePlanPercentage"] as! Double
            }
            if dict.keys.contains("RemotePlans") && dict["RemotePlans"] != nil {
                self.remotePlans = dict["RemotePlans"] as! Double
            }
            if dict.keys.contains("RetCode4012Count") && dict["RetCode4012Count"] != nil {
                self.retCode4012Count = dict["RetCode4012Count"] as! Int64
            }
            if dict.keys.contains("RetCode4013Count") && dict["RetCode4013Count"] != nil {
                self.retCode4013Count = dict["RetCode4013Count"] as! Int64
            }
            if dict.keys.contains("RetCode5001Count") && dict["RetCode5001Count"] != nil {
                self.retCode5001Count = dict["RetCode5001Count"] as! Int64
            }
            if dict.keys.contains("RetCode5024Count") && dict["RetCode5024Count"] != nil {
                self.retCode5024Count = dict["RetCode5024Count"] as! Int64
            }
            if dict.keys.contains("RetCode5167Count") && dict["RetCode5167Count"] != nil {
                self.retCode5167Count = dict["RetCode5167Count"] as! Int64
            }
            if dict.keys.contains("RetCode5217Count") && dict["RetCode5217Count"] != nil {
                self.retCode5217Count = dict["RetCode5217Count"] as! Int64
            }
            if dict.keys.contains("RetCode6002Count") && dict["RetCode6002Count"] != nil {
                self.retCode6002Count = dict["RetCode6002Count"] as! Int64
            }
            if dict.keys.contains("RetryCount") && dict["RetryCount"] != nil {
                self.retryCount = dict["RetryCount"] as! Double
            }
            if dict.keys.contains("RpcCount") && dict["RpcCount"] != nil {
                self.rpcCount = dict["RpcCount"] as! Double
            }
            if dict.keys.contains("Server") && dict["Server"] != nil {
                self.server = dict["Server"] as! String
            }
            if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
                self.serverIp = dict["ServerIp"] as! String
            }
            if dict.keys.contains("ServerPort") && dict["ServerPort"] != nil {
                self.serverPort = dict["ServerPort"] as! Int64
            }
            if dict.keys.contains("SqlId") && dict["SqlId"] != nil {
                self.sqlId = dict["SqlId"] as! String
            }
            if dict.keys.contains("SqlTextShort") && dict["SqlTextShort"] != nil {
                self.sqlTextShort = dict["SqlTextShort"] as! String
            }
            if dict.keys.contains("SqlType") && dict["SqlType"] != nil {
                self.sqlType = dict["SqlType"] as! String
            }
            if dict.keys.contains("StrongConsistencyPercentage") && dict["StrongConsistencyPercentage"] != nil {
                self.strongConsistencyPercentage = dict["StrongConsistencyPercentage"] as! Double
            }
            if dict.keys.contains("SumElapsedTime") && dict["SumElapsedTime"] != nil {
                self.sumElapsedTime = dict["SumElapsedTime"] as! Double
            }
            if dict.keys.contains("SumLogicalReads") && dict["SumLogicalReads"] != nil {
                self.sumLogicalReads = dict["SumLogicalReads"] as! Double
            }
            if dict.keys.contains("SumWaitTime") && dict["SumWaitTime"] != nil {
                self.sumWaitTime = dict["SumWaitTime"] as! Double
            }
            if dict.keys.contains("TableScanPercentage") && dict["TableScanPercentage"] != nil {
                self.tableScanPercentage = dict["TableScanPercentage"] as! Double
            }
            if dict.keys.contains("TotalWaitTime") && dict["TotalWaitTime"] != nil {
                self.totalWaitTime = dict["TotalWaitTime"] as! Double
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("WaitEvent") && dict["WaitEvent"] != nil {
                self.waitEvent = dict["WaitEvent"] as! String
            }
            if dict.keys.contains("WeakConsistencyPercentage") && dict["WeakConsistencyPercentage"] != nil {
                self.weakConsistencyPercentage = dict["WeakConsistencyPercentage"] as! Double
            }
        }
    }
    public var data: [DescribeOasTopSQLListResponseBody.Data]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeOasTopSQLListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeOasTopSQLListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOasTopSQLListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOasTopSQLListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeOasTopSQLListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOmsOpenAPIProjectRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") && dict["WorkerGradeId"] != nil {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class DescribeOmsOpenAPIProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DestConfig : Tea.TeaModel {
            public var enableMsgTrace: Bool?

            public var endpointId: String?

            public var endpointType: String?

            public var msgTags: String?

            public var partition: Int32?

            public var partitionMode: String?

            public var producerGroup: String?

            public var sendMsgTimeout: Int64?

            public var sequenceEnable: Bool?

            public var sequenceStartTimestamp: Int64?

            public var serializerType: String?

            public var topicType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableMsgTrace != nil {
                    map["EnableMsgTrace"] = self.enableMsgTrace!
                }
                if self.endpointId != nil {
                    map["EndpointId"] = self.endpointId!
                }
                if self.endpointType != nil {
                    map["EndpointType"] = self.endpointType!
                }
                if self.msgTags != nil {
                    map["MsgTags"] = self.msgTags!
                }
                if self.partition != nil {
                    map["Partition"] = self.partition!
                }
                if self.partitionMode != nil {
                    map["PartitionMode"] = self.partitionMode!
                }
                if self.producerGroup != nil {
                    map["ProducerGroup"] = self.producerGroup!
                }
                if self.sendMsgTimeout != nil {
                    map["SendMsgTimeout"] = self.sendMsgTimeout!
                }
                if self.sequenceEnable != nil {
                    map["SequenceEnable"] = self.sequenceEnable!
                }
                if self.sequenceStartTimestamp != nil {
                    map["SequenceStartTimestamp"] = self.sequenceStartTimestamp!
                }
                if self.serializerType != nil {
                    map["SerializerType"] = self.serializerType!
                }
                if self.topicType != nil {
                    map["TopicType"] = self.topicType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableMsgTrace") && dict["EnableMsgTrace"] != nil {
                    self.enableMsgTrace = dict["EnableMsgTrace"] as! Bool
                }
                if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
                    self.endpointId = dict["EndpointId"] as! String
                }
                if dict.keys.contains("EndpointType") && dict["EndpointType"] != nil {
                    self.endpointType = dict["EndpointType"] as! String
                }
                if dict.keys.contains("MsgTags") && dict["MsgTags"] != nil {
                    self.msgTags = dict["MsgTags"] as! String
                }
                if dict.keys.contains("Partition") && dict["Partition"] != nil {
                    self.partition = dict["Partition"] as! Int32
                }
                if dict.keys.contains("PartitionMode") && dict["PartitionMode"] != nil {
                    self.partitionMode = dict["PartitionMode"] as! String
                }
                if dict.keys.contains("ProducerGroup") && dict["ProducerGroup"] != nil {
                    self.producerGroup = dict["ProducerGroup"] as! String
                }
                if dict.keys.contains("SendMsgTimeout") && dict["SendMsgTimeout"] != nil {
                    self.sendMsgTimeout = dict["SendMsgTimeout"] as! Int64
                }
                if dict.keys.contains("SequenceEnable") && dict["SequenceEnable"] != nil {
                    self.sequenceEnable = dict["SequenceEnable"] as! Bool
                }
                if dict.keys.contains("SequenceStartTimestamp") && dict["SequenceStartTimestamp"] != nil {
                    self.sequenceStartTimestamp = dict["SequenceStartTimestamp"] as! Int64
                }
                if dict.keys.contains("SerializerType") && dict["SerializerType"] != nil {
                    self.serializerType = dict["SerializerType"] as! String
                }
                if dict.keys.contains("TopicType") && dict["TopicType"] != nil {
                    self.topicType = dict["TopicType"] as! String
                }
            }
        }
        public class Labels : Tea.TeaModel {
            public var count: Int32?

            public var creator: String?

            public var id: String?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") && dict["Count"] != nil {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("Creator") && dict["Creator"] != nil {
                    self.creator = dict["Creator"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class SourceConfig : Tea.TeaModel {
            public var enableMsgTrace: Bool?

            public var endpointId: String?

            public var endpointType: String?

            public var msgTags: String?

            public var partition: Int32?

            public var partitionMode: String?

            public var producerGroup: String?

            public var sendMsgTimeout: Int64?

            public var sequenceEnable: Bool?

            public var sequenceStartTimestamp: Int64?

            public var serializerType: String?

            public var topicType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableMsgTrace != nil {
                    map["EnableMsgTrace"] = self.enableMsgTrace!
                }
                if self.endpointId != nil {
                    map["EndpointId"] = self.endpointId!
                }
                if self.endpointType != nil {
                    map["EndpointType"] = self.endpointType!
                }
                if self.msgTags != nil {
                    map["MsgTags"] = self.msgTags!
                }
                if self.partition != nil {
                    map["Partition"] = self.partition!
                }
                if self.partitionMode != nil {
                    map["PartitionMode"] = self.partitionMode!
                }
                if self.producerGroup != nil {
                    map["ProducerGroup"] = self.producerGroup!
                }
                if self.sendMsgTimeout != nil {
                    map["SendMsgTimeout"] = self.sendMsgTimeout!
                }
                if self.sequenceEnable != nil {
                    map["SequenceEnable"] = self.sequenceEnable!
                }
                if self.sequenceStartTimestamp != nil {
                    map["SequenceStartTimestamp"] = self.sequenceStartTimestamp!
                }
                if self.serializerType != nil {
                    map["SerializerType"] = self.serializerType!
                }
                if self.topicType != nil {
                    map["TopicType"] = self.topicType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableMsgTrace") && dict["EnableMsgTrace"] != nil {
                    self.enableMsgTrace = dict["EnableMsgTrace"] as! Bool
                }
                if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
                    self.endpointId = dict["EndpointId"] as! String
                }
                if dict.keys.contains("EndpointType") && dict["EndpointType"] != nil {
                    self.endpointType = dict["EndpointType"] as! String
                }
                if dict.keys.contains("MsgTags") && dict["MsgTags"] != nil {
                    self.msgTags = dict["MsgTags"] as! String
                }
                if dict.keys.contains("Partition") && dict["Partition"] != nil {
                    self.partition = dict["Partition"] as! Int32
                }
                if dict.keys.contains("PartitionMode") && dict["PartitionMode"] != nil {
                    self.partitionMode = dict["PartitionMode"] as! String
                }
                if dict.keys.contains("ProducerGroup") && dict["ProducerGroup"] != nil {
                    self.producerGroup = dict["ProducerGroup"] as! String
                }
                if dict.keys.contains("SendMsgTimeout") && dict["SendMsgTimeout"] != nil {
                    self.sendMsgTimeout = dict["SendMsgTimeout"] as! Int64
                }
                if dict.keys.contains("SequenceEnable") && dict["SequenceEnable"] != nil {
                    self.sequenceEnable = dict["SequenceEnable"] as! Bool
                }
                if dict.keys.contains("SequenceStartTimestamp") && dict["SequenceStartTimestamp"] != nil {
                    self.sequenceStartTimestamp = dict["SequenceStartTimestamp"] as! Int64
                }
                if dict.keys.contains("SerializerType") && dict["SerializerType"] != nil {
                    self.serializerType = dict["SerializerType"] as! String
                }
                if dict.keys.contains("TopicType") && dict["TopicType"] != nil {
                    self.topicType = dict["TopicType"] as! String
                }
            }
        }
        public class Steps : Tea.TeaModel {
            public class ExtraInfo : Tea.TeaModel {
                public class ErrorDetails : Tea.TeaModel {
                    public var code: String?

                    public var level: String?

                    public var message: String?

                    public var proposal: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.code != nil {
                            map["Code"] = self.code!
                        }
                        if self.level != nil {
                            map["Level"] = self.level!
                        }
                        if self.message != nil {
                            map["Message"] = self.message!
                        }
                        if self.proposal != nil {
                            map["Proposal"] = self.proposal!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Code") && dict["Code"] != nil {
                            self.code = dict["Code"] as! String
                        }
                        if dict.keys.contains("Level") && dict["Level"] != nil {
                            self.level = dict["Level"] as! String
                        }
                        if dict.keys.contains("Message") && dict["Message"] != nil {
                            self.message = dict["Message"] as! String
                        }
                        if dict.keys.contains("Proposal") && dict["Proposal"] != nil {
                            self.proposal = dict["Proposal"] as! String
                        }
                    }
                }
                public var errorCode: String?

                public var errorDetails: [DescribeOmsOpenAPIProjectResponseBody.Data.Steps.ExtraInfo.ErrorDetails]?

                public var errorMsg: String?

                public var errorParam: [String: String]?

                public var failedTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.errorCode != nil {
                        map["ErrorCode"] = self.errorCode!
                    }
                    if self.errorDetails != nil {
                        var tmp : [Any] = []
                        for k in self.errorDetails! {
                            tmp.append(k.toMap())
                        }
                        map["ErrorDetails"] = tmp
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.errorParam != nil {
                        map["ErrorParam"] = self.errorParam!
                    }
                    if self.failedTime != nil {
                        map["FailedTime"] = self.failedTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                        self.errorCode = dict["ErrorCode"] as! String
                    }
                    if dict.keys.contains("ErrorDetails") && dict["ErrorDetails"] != nil {
                        var tmp : [DescribeOmsOpenAPIProjectResponseBody.Data.Steps.ExtraInfo.ErrorDetails] = []
                        for v in dict["ErrorDetails"] as! [Any] {
                            var model = DescribeOmsOpenAPIProjectResponseBody.Data.Steps.ExtraInfo.ErrorDetails()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.errorDetails = tmp
                    }
                    if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
                        self.errorMsg = dict["ErrorMsg"] as! String
                    }
                    if dict.keys.contains("ErrorParam") && dict["ErrorParam"] != nil {
                        self.errorParam = dict["ErrorParam"] as! [String: String]
                    }
                    if dict.keys.contains("FailedTime") && dict["FailedTime"] != nil {
                        self.failedTime = dict["FailedTime"] as! String
                    }
                }
            }
            public class StepInfo : Tea.TeaModel {
                public class ConnectorFullProgressOverview : Tea.TeaModel {
                    public var estimatedRemainingTimeOfSec: Int64?

                    public var estimatedTotalCount: Int64?

                    public var finishedCount: Int64?

                    public var progress: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.estimatedRemainingTimeOfSec != nil {
                            map["EstimatedRemainingTimeOfSec"] = self.estimatedRemainingTimeOfSec!
                        }
                        if self.estimatedTotalCount != nil {
                            map["EstimatedTotalCount"] = self.estimatedTotalCount!
                        }
                        if self.finishedCount != nil {
                            map["FinishedCount"] = self.finishedCount!
                        }
                        if self.progress != nil {
                            map["Progress"] = self.progress!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("EstimatedRemainingTimeOfSec") && dict["EstimatedRemainingTimeOfSec"] != nil {
                            self.estimatedRemainingTimeOfSec = dict["EstimatedRemainingTimeOfSec"] as! Int64
                        }
                        if dict.keys.contains("EstimatedTotalCount") && dict["EstimatedTotalCount"] != nil {
                            self.estimatedTotalCount = dict["EstimatedTotalCount"] as! Int64
                        }
                        if dict.keys.contains("FinishedCount") && dict["FinishedCount"] != nil {
                            self.finishedCount = dict["FinishedCount"] as! Int64
                        }
                        if dict.keys.contains("Progress") && dict["Progress"] != nil {
                            self.progress = dict["Progress"] as! Int32
                        }
                    }
                }
                public var capacity: Int64?

                public var checkpoint: String?

                public var connectorFullProgressOverview: DescribeOmsOpenAPIProjectResponseBody.Data.Steps.StepInfo.ConnectorFullProgressOverview?

                public var deployId: String?

                public var dstIops: Int64?

                public var dstRps: Int64?

                public var dstRpsRef: Int64?

                public var dstRt: Int64?

                public var dstRtRef: Int64?

                public var gmt: Int64?

                public var inconsistencies: Int64?

                public var incrTimestampCheckpoint: Int64?

                public var jobId: String?

                public var processedRecords: Int64?

                public var skipped: Bool?

                public var srcIops: Int64?

                public var srcIopsRef: Int64?

                public var srcRps: Int64?

                public var srcRpsRef: Int64?

                public var srcRt: Int64?

                public var srcRtRef: Int64?

                public var validated: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.connectorFullProgressOverview?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.capacity != nil {
                        map["Capacity"] = self.capacity!
                    }
                    if self.checkpoint != nil {
                        map["Checkpoint"] = self.checkpoint!
                    }
                    if self.connectorFullProgressOverview != nil {
                        map["ConnectorFullProgressOverview"] = self.connectorFullProgressOverview?.toMap()
                    }
                    if self.deployId != nil {
                        map["DeployId"] = self.deployId!
                    }
                    if self.dstIops != nil {
                        map["DstIops"] = self.dstIops!
                    }
                    if self.dstRps != nil {
                        map["DstRps"] = self.dstRps!
                    }
                    if self.dstRpsRef != nil {
                        map["DstRpsRef"] = self.dstRpsRef!
                    }
                    if self.dstRt != nil {
                        map["DstRt"] = self.dstRt!
                    }
                    if self.dstRtRef != nil {
                        map["DstRtRef"] = self.dstRtRef!
                    }
                    if self.gmt != nil {
                        map["Gmt"] = self.gmt!
                    }
                    if self.inconsistencies != nil {
                        map["Inconsistencies"] = self.inconsistencies!
                    }
                    if self.incrTimestampCheckpoint != nil {
                        map["IncrTimestampCheckpoint"] = self.incrTimestampCheckpoint!
                    }
                    if self.jobId != nil {
                        map["JobId"] = self.jobId!
                    }
                    if self.processedRecords != nil {
                        map["ProcessedRecords"] = self.processedRecords!
                    }
                    if self.skipped != nil {
                        map["Skipped"] = self.skipped!
                    }
                    if self.srcIops != nil {
                        map["SrcIops"] = self.srcIops!
                    }
                    if self.srcIopsRef != nil {
                        map["SrcIopsRef"] = self.srcIopsRef!
                    }
                    if self.srcRps != nil {
                        map["SrcRps"] = self.srcRps!
                    }
                    if self.srcRpsRef != nil {
                        map["SrcRpsRef"] = self.srcRpsRef!
                    }
                    if self.srcRt != nil {
                        map["SrcRt"] = self.srcRt!
                    }
                    if self.srcRtRef != nil {
                        map["SrcRtRef"] = self.srcRtRef!
                    }
                    if self.validated != nil {
                        map["Validated"] = self.validated!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Capacity") && dict["Capacity"] != nil {
                        self.capacity = dict["Capacity"] as! Int64
                    }
                    if dict.keys.contains("Checkpoint") && dict["Checkpoint"] != nil {
                        self.checkpoint = dict["Checkpoint"] as! String
                    }
                    if dict.keys.contains("ConnectorFullProgressOverview") && dict["ConnectorFullProgressOverview"] != nil {
                        var model = DescribeOmsOpenAPIProjectResponseBody.Data.Steps.StepInfo.ConnectorFullProgressOverview()
                        model.fromMap(dict["ConnectorFullProgressOverview"] as! [String: Any])
                        self.connectorFullProgressOverview = model
                    }
                    if dict.keys.contains("DeployId") && dict["DeployId"] != nil {
                        self.deployId = dict["DeployId"] as! String
                    }
                    if dict.keys.contains("DstIops") && dict["DstIops"] != nil {
                        self.dstIops = dict["DstIops"] as! Int64
                    }
                    if dict.keys.contains("DstRps") && dict["DstRps"] != nil {
                        self.dstRps = dict["DstRps"] as! Int64
                    }
                    if dict.keys.contains("DstRpsRef") && dict["DstRpsRef"] != nil {
                        self.dstRpsRef = dict["DstRpsRef"] as! Int64
                    }
                    if dict.keys.contains("DstRt") && dict["DstRt"] != nil {
                        self.dstRt = dict["DstRt"] as! Int64
                    }
                    if dict.keys.contains("DstRtRef") && dict["DstRtRef"] != nil {
                        self.dstRtRef = dict["DstRtRef"] as! Int64
                    }
                    if dict.keys.contains("Gmt") && dict["Gmt"] != nil {
                        self.gmt = dict["Gmt"] as! Int64
                    }
                    if dict.keys.contains("Inconsistencies") && dict["Inconsistencies"] != nil {
                        self.inconsistencies = dict["Inconsistencies"] as! Int64
                    }
                    if dict.keys.contains("IncrTimestampCheckpoint") && dict["IncrTimestampCheckpoint"] != nil {
                        self.incrTimestampCheckpoint = dict["IncrTimestampCheckpoint"] as! Int64
                    }
                    if dict.keys.contains("JobId") && dict["JobId"] != nil {
                        self.jobId = dict["JobId"] as! String
                    }
                    if dict.keys.contains("ProcessedRecords") && dict["ProcessedRecords"] != nil {
                        self.processedRecords = dict["ProcessedRecords"] as! Int64
                    }
                    if dict.keys.contains("Skipped") && dict["Skipped"] != nil {
                        self.skipped = dict["Skipped"] as! Bool
                    }
                    if dict.keys.contains("SrcIops") && dict["SrcIops"] != nil {
                        self.srcIops = dict["SrcIops"] as! Int64
                    }
                    if dict.keys.contains("SrcIopsRef") && dict["SrcIopsRef"] != nil {
                        self.srcIopsRef = dict["SrcIopsRef"] as! Int64
                    }
                    if dict.keys.contains("SrcRps") && dict["SrcRps"] != nil {
                        self.srcRps = dict["SrcRps"] as! Int64
                    }
                    if dict.keys.contains("SrcRpsRef") && dict["SrcRpsRef"] != nil {
                        self.srcRpsRef = dict["SrcRpsRef"] as! Int64
                    }
                    if dict.keys.contains("SrcRt") && dict["SrcRt"] != nil {
                        self.srcRt = dict["SrcRt"] as! Int64
                    }
                    if dict.keys.contains("SrcRtRef") && dict["SrcRtRef"] != nil {
                        self.srcRtRef = dict["SrcRtRef"] as! Int64
                    }
                    if dict.keys.contains("Validated") && dict["Validated"] != nil {
                        self.validated = dict["Validated"] as! Bool
                    }
                }
            }
            public var estimatedRemainingSeconds: Int64?

            public var extraInfo: DescribeOmsOpenAPIProjectResponseBody.Data.Steps.ExtraInfo?

            public var finishTime: String?

            public var interactive: Bool?

            public var startTime: String?

            public var stepDescription: String?

            public var stepInfo: DescribeOmsOpenAPIProjectResponseBody.Data.Steps.StepInfo?

            public var stepName: String?

            public var stepOrder: Int32?

            public var stepProgress: Int32?

            public var stepStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.extraInfo?.validate()
                try self.stepInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.estimatedRemainingSeconds != nil {
                    map["EstimatedRemainingSeconds"] = self.estimatedRemainingSeconds!
                }
                if self.extraInfo != nil {
                    map["ExtraInfo"] = self.extraInfo?.toMap()
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.interactive != nil {
                    map["Interactive"] = self.interactive!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.stepDescription != nil {
                    map["StepDescription"] = self.stepDescription!
                }
                if self.stepInfo != nil {
                    map["StepInfo"] = self.stepInfo?.toMap()
                }
                if self.stepName != nil {
                    map["StepName"] = self.stepName!
                }
                if self.stepOrder != nil {
                    map["StepOrder"] = self.stepOrder!
                }
                if self.stepProgress != nil {
                    map["StepProgress"] = self.stepProgress!
                }
                if self.stepStatus != nil {
                    map["StepStatus"] = self.stepStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EstimatedRemainingSeconds") && dict["EstimatedRemainingSeconds"] != nil {
                    self.estimatedRemainingSeconds = dict["EstimatedRemainingSeconds"] as! Int64
                }
                if dict.keys.contains("ExtraInfo") && dict["ExtraInfo"] != nil {
                    var model = DescribeOmsOpenAPIProjectResponseBody.Data.Steps.ExtraInfo()
                    model.fromMap(dict["ExtraInfo"] as! [String: Any])
                    self.extraInfo = model
                }
                if dict.keys.contains("FinishTime") && dict["FinishTime"] != nil {
                    self.finishTime = dict["FinishTime"] as! String
                }
                if dict.keys.contains("Interactive") && dict["Interactive"] != nil {
                    self.interactive = dict["Interactive"] as! Bool
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("StepDescription") && dict["StepDescription"] != nil {
                    self.stepDescription = dict["StepDescription"] as! String
                }
                if dict.keys.contains("StepInfo") && dict["StepInfo"] != nil {
                    var model = DescribeOmsOpenAPIProjectResponseBody.Data.Steps.StepInfo()
                    model.fromMap(dict["StepInfo"] as! [String: Any])
                    self.stepInfo = model
                }
                if dict.keys.contains("StepName") && dict["StepName"] != nil {
                    self.stepName = dict["StepName"] as! String
                }
                if dict.keys.contains("StepOrder") && dict["StepOrder"] != nil {
                    self.stepOrder = dict["StepOrder"] as! Int32
                }
                if dict.keys.contains("StepProgress") && dict["StepProgress"] != nil {
                    self.stepProgress = dict["StepProgress"] as! Int32
                }
                if dict.keys.contains("StepStatus") && dict["StepStatus"] != nil {
                    self.stepStatus = dict["StepStatus"] as! String
                }
            }
        }
        public class TransferMapping : Tea.TeaModel {
            public class Databases : Tea.TeaModel {
                public class Tables : Tea.TeaModel {
                    public class AdbTableSchema : Tea.TeaModel {
                        public var distributedKeys: [String]?

                        public var partitionLifeCycle: Int32?

                        public var partitionStatement: String?

                        public var primaryKeys: [String]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.distributedKeys != nil {
                                map["DistributedKeys"] = self.distributedKeys!
                            }
                            if self.partitionLifeCycle != nil {
                                map["PartitionLifeCycle"] = self.partitionLifeCycle!
                            }
                            if self.partitionStatement != nil {
                                map["PartitionStatement"] = self.partitionStatement!
                            }
                            if self.primaryKeys != nil {
                                map["PrimaryKeys"] = self.primaryKeys!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("DistributedKeys") && dict["DistributedKeys"] != nil {
                                self.distributedKeys = dict["DistributedKeys"] as! [String]
                            }
                            if dict.keys.contains("PartitionLifeCycle") && dict["PartitionLifeCycle"] != nil {
                                self.partitionLifeCycle = dict["PartitionLifeCycle"] as! Int32
                            }
                            if dict.keys.contains("PartitionStatement") && dict["PartitionStatement"] != nil {
                                self.partitionStatement = dict["PartitionStatement"] as! String
                            }
                            if dict.keys.contains("PrimaryKeys") && dict["PrimaryKeys"] != nil {
                                self.primaryKeys = dict["PrimaryKeys"] as! [String]
                            }
                        }
                    }
                    public var adbTableSchema: DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping.Databases.Tables.AdbTableSchema?

                    public var filterColumns: [String]?

                    public var mappedName: String?

                    public var shardColumns: [String]?

                    public var tableId: String?

                    public var tableName: String?

                    public var type: String?

                    public var whereClause: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.adbTableSchema?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.adbTableSchema != nil {
                            map["AdbTableSchema"] = self.adbTableSchema?.toMap()
                        }
                        if self.filterColumns != nil {
                            map["FilterColumns"] = self.filterColumns!
                        }
                        if self.mappedName != nil {
                            map["MappedName"] = self.mappedName!
                        }
                        if self.shardColumns != nil {
                            map["ShardColumns"] = self.shardColumns!
                        }
                        if self.tableId != nil {
                            map["TableId"] = self.tableId!
                        }
                        if self.tableName != nil {
                            map["TableName"] = self.tableName!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.whereClause != nil {
                            map["WhereClause"] = self.whereClause!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AdbTableSchema") && dict["AdbTableSchema"] != nil {
                            var model = DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping.Databases.Tables.AdbTableSchema()
                            model.fromMap(dict["AdbTableSchema"] as! [String: Any])
                            self.adbTableSchema = model
                        }
                        if dict.keys.contains("FilterColumns") && dict["FilterColumns"] != nil {
                            self.filterColumns = dict["FilterColumns"] as! [String]
                        }
                        if dict.keys.contains("MappedName") && dict["MappedName"] != nil {
                            self.mappedName = dict["MappedName"] as! String
                        }
                        if dict.keys.contains("ShardColumns") && dict["ShardColumns"] != nil {
                            self.shardColumns = dict["ShardColumns"] as! [String]
                        }
                        if dict.keys.contains("TableId") && dict["TableId"] != nil {
                            self.tableId = dict["TableId"] as! String
                        }
                        if dict.keys.contains("TableName") && dict["TableName"] != nil {
                            self.tableName = dict["TableName"] as! String
                        }
                        if dict.keys.contains("Type") && dict["Type"] != nil {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("WhereClause") && dict["WhereClause"] != nil {
                            self.whereClause = dict["WhereClause"] as! String
                        }
                    }
                }
                public var databaseId: String?

                public var databaseName: String?

                public var mappedName: String?

                public var tables: [DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping.Databases.Tables]?

                public var tenantName: String?

                public var type: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.databaseId != nil {
                        map["DatabaseId"] = self.databaseId!
                    }
                    if self.databaseName != nil {
                        map["DatabaseName"] = self.databaseName!
                    }
                    if self.mappedName != nil {
                        map["MappedName"] = self.mappedName!
                    }
                    if self.tables != nil {
                        var tmp : [Any] = []
                        for k in self.tables! {
                            tmp.append(k.toMap())
                        }
                        map["Tables"] = tmp
                    }
                    if self.tenantName != nil {
                        map["TenantName"] = self.tenantName!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                        self.databaseId = dict["DatabaseId"] as! String
                    }
                    if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                        self.databaseName = dict["DatabaseName"] as! String
                    }
                    if dict.keys.contains("MappedName") && dict["MappedName"] != nil {
                        self.mappedName = dict["MappedName"] as! String
                    }
                    if dict.keys.contains("Tables") && dict["Tables"] != nil {
                        var tmp : [DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping.Databases.Tables] = []
                        for v in dict["Tables"] as! [Any] {
                            var model = DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping.Databases.Tables()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tables = tmp
                    }
                    if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
                        self.tenantName = dict["TenantName"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var databases: [DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping.Databases]?

            public var mode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.databases != nil {
                    var tmp : [Any] = []
                    for k in self.databases! {
                        tmp.append(k.toMap())
                    }
                    map["Databases"] = tmp
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Databases") && dict["Databases"] != nil {
                    var tmp : [DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping.Databases] = []
                    for v in dict["Databases"] as! [Any] {
                        var model = DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping.Databases()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.databases = tmp
                }
                if dict.keys.contains("Mode") && dict["Mode"] != nil {
                    self.mode = dict["Mode"] as! String
                }
            }
        }
        public class TransferStepConfig : Tea.TeaModel {
            public class IncrSyncStepTransferConfig : Tea.TeaModel {
                public var recordTypeList: [String]?

                public var startTimestamp: Int64?

                public var storeLogKeptHour: Int64?

                public var storeTransactionEnabled: Bool?

                public var transferStepType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.recordTypeList != nil {
                        map["RecordTypeList"] = self.recordTypeList!
                    }
                    if self.startTimestamp != nil {
                        map["StartTimestamp"] = self.startTimestamp!
                    }
                    if self.storeLogKeptHour != nil {
                        map["StoreLogKeptHour"] = self.storeLogKeptHour!
                    }
                    if self.storeTransactionEnabled != nil {
                        map["StoreTransactionEnabled"] = self.storeTransactionEnabled!
                    }
                    if self.transferStepType != nil {
                        map["TransferStepType"] = self.transferStepType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RecordTypeList") && dict["RecordTypeList"] != nil {
                        self.recordTypeList = dict["RecordTypeList"] as! [String]
                    }
                    if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
                        self.startTimestamp = dict["StartTimestamp"] as! Int64
                    }
                    if dict.keys.contains("StoreLogKeptHour") && dict["StoreLogKeptHour"] != nil {
                        self.storeLogKeptHour = dict["StoreLogKeptHour"] as! Int64
                    }
                    if dict.keys.contains("StoreTransactionEnabled") && dict["StoreTransactionEnabled"] != nil {
                        self.storeTransactionEnabled = dict["StoreTransactionEnabled"] as! Bool
                    }
                    if dict.keys.contains("TransferStepType") && dict["TransferStepType"] != nil {
                        self.transferStepType = dict["TransferStepType"] as! String
                    }
                }
            }
            public var enableFullSync: Bool?

            public var enableIncrSync: Bool?

            public var enableStructSync: Bool?

            public var incrSyncStepTransferConfig: DescribeOmsOpenAPIProjectResponseBody.Data.TransferStepConfig.IncrSyncStepTransferConfig?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.incrSyncStepTransferConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableFullSync != nil {
                    map["EnableFullSync"] = self.enableFullSync!
                }
                if self.enableIncrSync != nil {
                    map["EnableIncrSync"] = self.enableIncrSync!
                }
                if self.enableStructSync != nil {
                    map["EnableStructSync"] = self.enableStructSync!
                }
                if self.incrSyncStepTransferConfig != nil {
                    map["IncrSyncStepTransferConfig"] = self.incrSyncStepTransferConfig?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableFullSync") && dict["EnableFullSync"] != nil {
                    self.enableFullSync = dict["EnableFullSync"] as! Bool
                }
                if dict.keys.contains("EnableIncrSync") && dict["EnableIncrSync"] != nil {
                    self.enableIncrSync = dict["EnableIncrSync"] as! Bool
                }
                if dict.keys.contains("EnableStructSync") && dict["EnableStructSync"] != nil {
                    self.enableStructSync = dict["EnableStructSync"] as! Bool
                }
                if dict.keys.contains("IncrSyncStepTransferConfig") && dict["IncrSyncStepTransferConfig"] != nil {
                    var model = DescribeOmsOpenAPIProjectResponseBody.Data.TransferStepConfig.IncrSyncStepTransferConfig()
                    model.fromMap(dict["IncrSyncStepTransferConfig"] as! [String: Any])
                    self.incrSyncStepTransferConfig = model
                }
            }
        }
        public var businessName: String?

        public var destConfig: DescribeOmsOpenAPIProjectResponseBody.Data.DestConfig?

        public var labels: [DescribeOmsOpenAPIProjectResponseBody.Data.Labels]?

        public var projectId: String?

        public var projectName: String?

        public var projectOwner: String?

        public var sourceConfig: DescribeOmsOpenAPIProjectResponseBody.Data.SourceConfig?

        public var steps: [DescribeOmsOpenAPIProjectResponseBody.Data.Steps]?

        public var transferMapping: DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping?

        public var transferStepConfig: DescribeOmsOpenAPIProjectResponseBody.Data.TransferStepConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.destConfig?.validate()
            try self.sourceConfig?.validate()
            try self.transferMapping?.validate()
            try self.transferStepConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessName != nil {
                map["BusinessName"] = self.businessName!
            }
            if self.destConfig != nil {
                map["DestConfig"] = self.destConfig?.toMap()
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.projectOwner != nil {
                map["ProjectOwner"] = self.projectOwner!
            }
            if self.sourceConfig != nil {
                map["SourceConfig"] = self.sourceConfig?.toMap()
            }
            if self.steps != nil {
                var tmp : [Any] = []
                for k in self.steps! {
                    tmp.append(k.toMap())
                }
                map["Steps"] = tmp
            }
            if self.transferMapping != nil {
                map["TransferMapping"] = self.transferMapping?.toMap()
            }
            if self.transferStepConfig != nil {
                map["TransferStepConfig"] = self.transferStepConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessName") && dict["BusinessName"] != nil {
                self.businessName = dict["BusinessName"] as! String
            }
            if dict.keys.contains("DestConfig") && dict["DestConfig"] != nil {
                var model = DescribeOmsOpenAPIProjectResponseBody.Data.DestConfig()
                model.fromMap(dict["DestConfig"] as! [String: Any])
                self.destConfig = model
            }
            if dict.keys.contains("Labels") && dict["Labels"] != nil {
                var tmp : [DescribeOmsOpenAPIProjectResponseBody.Data.Labels] = []
                for v in dict["Labels"] as! [Any] {
                    var model = DescribeOmsOpenAPIProjectResponseBody.Data.Labels()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.labels = tmp
            }
            if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") && dict["ProjectName"] != nil {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("ProjectOwner") && dict["ProjectOwner"] != nil {
                self.projectOwner = dict["ProjectOwner"] as! String
            }
            if dict.keys.contains("SourceConfig") && dict["SourceConfig"] != nil {
                var model = DescribeOmsOpenAPIProjectResponseBody.Data.SourceConfig()
                model.fromMap(dict["SourceConfig"] as! [String: Any])
                self.sourceConfig = model
            }
            if dict.keys.contains("Steps") && dict["Steps"] != nil {
                var tmp : [DescribeOmsOpenAPIProjectResponseBody.Data.Steps] = []
                for v in dict["Steps"] as! [Any] {
                    var model = DescribeOmsOpenAPIProjectResponseBody.Data.Steps()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.steps = tmp
            }
            if dict.keys.contains("TransferMapping") && dict["TransferMapping"] != nil {
                var model = DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping()
                model.fromMap(dict["TransferMapping"] as! [String: Any])
                self.transferMapping = model
            }
            if dict.keys.contains("TransferStepConfig") && dict["TransferStepConfig"] != nil {
                var model = DescribeOmsOpenAPIProjectResponseBody.Data.TransferStepConfig()
                model.fromMap(dict["TransferStepConfig"] as! [String: Any])
                self.transferStepConfig = model
            }
        }
    }
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") && dict["Proposal"] != nil {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: DescribeOmsOpenAPIProjectResponseBody.Data?

    public var errorDetail: DescribeOmsOpenAPIProjectResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") && dict["Advice"] != nil {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") && dict["Cost"] != nil {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeOmsOpenAPIProjectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorDetail") && dict["ErrorDetail"] != nil {
            var model = DescribeOmsOpenAPIProjectResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeOmsOpenAPIProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOmsOpenAPIProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeOmsOpenAPIProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOmsOpenAPIProjectStepsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") && dict["WorkerGradeId"] != nil {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class DescribeOmsOpenAPIProjectStepsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ExtraInfo : Tea.TeaModel {
            public class ErrorDetails : Tea.TeaModel {
                public var code: String?

                public var level: String?

                public var message: String?

                public var proposal: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.code != nil {
                        map["Code"] = self.code!
                    }
                    if self.level != nil {
                        map["Level"] = self.level!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.proposal != nil {
                        map["Proposal"] = self.proposal!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Code") && dict["Code"] != nil {
                        self.code = dict["Code"] as! String
                    }
                    if dict.keys.contains("Level") && dict["Level"] != nil {
                        self.level = dict["Level"] as! String
                    }
                    if dict.keys.contains("Message") && dict["Message"] != nil {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Proposal") && dict["Proposal"] != nil {
                        self.proposal = dict["Proposal"] as! String
                    }
                }
            }
            public var errorCode: String?

            public var errorDetails: [DescribeOmsOpenAPIProjectStepsResponseBody.Data.ExtraInfo.ErrorDetails]?

            public var errorMsg: String?

            public var errorParam: [String: String]?

            public var failedTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorDetails != nil {
                    var tmp : [Any] = []
                    for k in self.errorDetails! {
                        tmp.append(k.toMap())
                    }
                    map["ErrorDetails"] = tmp
                }
                if self.errorMsg != nil {
                    map["ErrorMsg"] = self.errorMsg!
                }
                if self.errorParam != nil {
                    map["ErrorParam"] = self.errorParam!
                }
                if self.failedTime != nil {
                    map["FailedTime"] = self.failedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorDetails") && dict["ErrorDetails"] != nil {
                    var tmp : [DescribeOmsOpenAPIProjectStepsResponseBody.Data.ExtraInfo.ErrorDetails] = []
                    for v in dict["ErrorDetails"] as! [Any] {
                        var model = DescribeOmsOpenAPIProjectStepsResponseBody.Data.ExtraInfo.ErrorDetails()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.errorDetails = tmp
                }
                if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
                    self.errorMsg = dict["ErrorMsg"] as! String
                }
                if dict.keys.contains("ErrorParam") && dict["ErrorParam"] != nil {
                    self.errorParam = dict["ErrorParam"] as! [String: String]
                }
                if dict.keys.contains("FailedTime") && dict["FailedTime"] != nil {
                    self.failedTime = dict["FailedTime"] as! String
                }
            }
        }
        public class StepInfo : Tea.TeaModel {
            public class ConnectorFullProgressOverview : Tea.TeaModel {
                public var estimatedRemainingTimeOfSec: Int64?

                public var estimatedTotalCount: Int64?

                public var finishedCount: Int64?

                public var progress: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.estimatedRemainingTimeOfSec != nil {
                        map["EstimatedRemainingTimeOfSec"] = self.estimatedRemainingTimeOfSec!
                    }
                    if self.estimatedTotalCount != nil {
                        map["EstimatedTotalCount"] = self.estimatedTotalCount!
                    }
                    if self.finishedCount != nil {
                        map["FinishedCount"] = self.finishedCount!
                    }
                    if self.progress != nil {
                        map["Progress"] = self.progress!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EstimatedRemainingTimeOfSec") && dict["EstimatedRemainingTimeOfSec"] != nil {
                        self.estimatedRemainingTimeOfSec = dict["EstimatedRemainingTimeOfSec"] as! Int64
                    }
                    if dict.keys.contains("EstimatedTotalCount") && dict["EstimatedTotalCount"] != nil {
                        self.estimatedTotalCount = dict["EstimatedTotalCount"] as! Int64
                    }
                    if dict.keys.contains("FinishedCount") && dict["FinishedCount"] != nil {
                        self.finishedCount = dict["FinishedCount"] as! Int64
                    }
                    if dict.keys.contains("Progress") && dict["Progress"] != nil {
                        self.progress = dict["Progress"] as! Int32
                    }
                }
            }
            public var capacity: Int64?

            public var checkpoint: String?

            public var connectorFullProgressOverview: DescribeOmsOpenAPIProjectStepsResponseBody.Data.StepInfo.ConnectorFullProgressOverview?

            public var deployId: String?

            public var dstIops: Int64?

            public var dstRps: Int64?

            public var dstRpsRef: Int64?

            public var dstRt: Int64?

            public var dstRtRef: Int64?

            public var gmt: Int64?

            public var inconsistencies: Int64?

            public var incrTimestampCheckpoint: Int64?

            public var jobId: String?

            public var processedRecords: Int64?

            public var skipped: Bool?

            public var srcIops: Int64?

            public var srcIopsRef: Int64?

            public var srcRps: Int64?

            public var srcRpsRef: Int64?

            public var srcRt: Int64?

            public var srcRtRef: Int64?

            public var validated: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.connectorFullProgressOverview?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capacity != nil {
                    map["Capacity"] = self.capacity!
                }
                if self.checkpoint != nil {
                    map["Checkpoint"] = self.checkpoint!
                }
                if self.connectorFullProgressOverview != nil {
                    map["ConnectorFullProgressOverview"] = self.connectorFullProgressOverview?.toMap()
                }
                if self.deployId != nil {
                    map["DeployId"] = self.deployId!
                }
                if self.dstIops != nil {
                    map["DstIops"] = self.dstIops!
                }
                if self.dstRps != nil {
                    map["DstRps"] = self.dstRps!
                }
                if self.dstRpsRef != nil {
                    map["DstRpsRef"] = self.dstRpsRef!
                }
                if self.dstRt != nil {
                    map["DstRt"] = self.dstRt!
                }
                if self.dstRtRef != nil {
                    map["DstRtRef"] = self.dstRtRef!
                }
                if self.gmt != nil {
                    map["Gmt"] = self.gmt!
                }
                if self.inconsistencies != nil {
                    map["Inconsistencies"] = self.inconsistencies!
                }
                if self.incrTimestampCheckpoint != nil {
                    map["IncrTimestampCheckpoint"] = self.incrTimestampCheckpoint!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.processedRecords != nil {
                    map["ProcessedRecords"] = self.processedRecords!
                }
                if self.skipped != nil {
                    map["Skipped"] = self.skipped!
                }
                if self.srcIops != nil {
                    map["SrcIops"] = self.srcIops!
                }
                if self.srcIopsRef != nil {
                    map["SrcIopsRef"] = self.srcIopsRef!
                }
                if self.srcRps != nil {
                    map["SrcRps"] = self.srcRps!
                }
                if self.srcRpsRef != nil {
                    map["SrcRpsRef"] = self.srcRpsRef!
                }
                if self.srcRt != nil {
                    map["SrcRt"] = self.srcRt!
                }
                if self.srcRtRef != nil {
                    map["SrcRtRef"] = self.srcRtRef!
                }
                if self.validated != nil {
                    map["Validated"] = self.validated!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Capacity") && dict["Capacity"] != nil {
                    self.capacity = dict["Capacity"] as! Int64
                }
                if dict.keys.contains("Checkpoint") && dict["Checkpoint"] != nil {
                    self.checkpoint = dict["Checkpoint"] as! String
                }
                if dict.keys.contains("ConnectorFullProgressOverview") && dict["ConnectorFullProgressOverview"] != nil {
                    var model = DescribeOmsOpenAPIProjectStepsResponseBody.Data.StepInfo.ConnectorFullProgressOverview()
                    model.fromMap(dict["ConnectorFullProgressOverview"] as! [String: Any])
                    self.connectorFullProgressOverview = model
                }
                if dict.keys.contains("DeployId") && dict["DeployId"] != nil {
                    self.deployId = dict["DeployId"] as! String
                }
                if dict.keys.contains("DstIops") && dict["DstIops"] != nil {
                    self.dstIops = dict["DstIops"] as! Int64
                }
                if dict.keys.contains("DstRps") && dict["DstRps"] != nil {
                    self.dstRps = dict["DstRps"] as! Int64
                }
                if dict.keys.contains("DstRpsRef") && dict["DstRpsRef"] != nil {
                    self.dstRpsRef = dict["DstRpsRef"] as! Int64
                }
                if dict.keys.contains("DstRt") && dict["DstRt"] != nil {
                    self.dstRt = dict["DstRt"] as! Int64
                }
                if dict.keys.contains("DstRtRef") && dict["DstRtRef"] != nil {
                    self.dstRtRef = dict["DstRtRef"] as! Int64
                }
                if dict.keys.contains("Gmt") && dict["Gmt"] != nil {
                    self.gmt = dict["Gmt"] as! Int64
                }
                if dict.keys.contains("Inconsistencies") && dict["Inconsistencies"] != nil {
                    self.inconsistencies = dict["Inconsistencies"] as! Int64
                }
                if dict.keys.contains("IncrTimestampCheckpoint") && dict["IncrTimestampCheckpoint"] != nil {
                    self.incrTimestampCheckpoint = dict["IncrTimestampCheckpoint"] as! Int64
                }
                if dict.keys.contains("JobId") && dict["JobId"] != nil {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("ProcessedRecords") && dict["ProcessedRecords"] != nil {
                    self.processedRecords = dict["ProcessedRecords"] as! Int64
                }
                if dict.keys.contains("Skipped") && dict["Skipped"] != nil {
                    self.skipped = dict["Skipped"] as! Bool
                }
                if dict.keys.contains("SrcIops") && dict["SrcIops"] != nil {
                    self.srcIops = dict["SrcIops"] as! Int64
                }
                if dict.keys.contains("SrcIopsRef") && dict["SrcIopsRef"] != nil {
                    self.srcIopsRef = dict["SrcIopsRef"] as! Int64
                }
                if dict.keys.contains("SrcRps") && dict["SrcRps"] != nil {
                    self.srcRps = dict["SrcRps"] as! Int64
                }
                if dict.keys.contains("SrcRpsRef") && dict["SrcRpsRef"] != nil {
                    self.srcRpsRef = dict["SrcRpsRef"] as! Int64
                }
                if dict.keys.contains("SrcRt") && dict["SrcRt"] != nil {
                    self.srcRt = dict["SrcRt"] as! Int64
                }
                if dict.keys.contains("SrcRtRef") && dict["SrcRtRef"] != nil {
                    self.srcRtRef = dict["SrcRtRef"] as! Int64
                }
                if dict.keys.contains("Validated") && dict["Validated"] != nil {
                    self.validated = dict["Validated"] as! Bool
                }
            }
        }
        public var estimatedRemainingSeconds: Int64?

        public var extraInfo: DescribeOmsOpenAPIProjectStepsResponseBody.Data.ExtraInfo?

        public var finishTime: String?

        public var interactive: Bool?

        public var startTime: String?

        public var stepDescription: String?

        public var stepInfo: DescribeOmsOpenAPIProjectStepsResponseBody.Data.StepInfo?

        public var stepName: String?

        public var stepOrder: Int32?

        public var stepProgress: Int32?

        public var stepStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extraInfo?.validate()
            try self.stepInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.estimatedRemainingSeconds != nil {
                map["EstimatedRemainingSeconds"] = self.estimatedRemainingSeconds!
            }
            if self.extraInfo != nil {
                map["ExtraInfo"] = self.extraInfo?.toMap()
            }
            if self.finishTime != nil {
                map["FinishTime"] = self.finishTime!
            }
            if self.interactive != nil {
                map["Interactive"] = self.interactive!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.stepDescription != nil {
                map["StepDescription"] = self.stepDescription!
            }
            if self.stepInfo != nil {
                map["StepInfo"] = self.stepInfo?.toMap()
            }
            if self.stepName != nil {
                map["StepName"] = self.stepName!
            }
            if self.stepOrder != nil {
                map["StepOrder"] = self.stepOrder!
            }
            if self.stepProgress != nil {
                map["StepProgress"] = self.stepProgress!
            }
            if self.stepStatus != nil {
                map["StepStatus"] = self.stepStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EstimatedRemainingSeconds") && dict["EstimatedRemainingSeconds"] != nil {
                self.estimatedRemainingSeconds = dict["EstimatedRemainingSeconds"] as! Int64
            }
            if dict.keys.contains("ExtraInfo") && dict["ExtraInfo"] != nil {
                var model = DescribeOmsOpenAPIProjectStepsResponseBody.Data.ExtraInfo()
                model.fromMap(dict["ExtraInfo"] as! [String: Any])
                self.extraInfo = model
            }
            if dict.keys.contains("FinishTime") && dict["FinishTime"] != nil {
                self.finishTime = dict["FinishTime"] as! String
            }
            if dict.keys.contains("Interactive") && dict["Interactive"] != nil {
                self.interactive = dict["Interactive"] as! Bool
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("StepDescription") && dict["StepDescription"] != nil {
                self.stepDescription = dict["StepDescription"] as! String
            }
            if dict.keys.contains("StepInfo") && dict["StepInfo"] != nil {
                var model = DescribeOmsOpenAPIProjectStepsResponseBody.Data.StepInfo()
                model.fromMap(dict["StepInfo"] as! [String: Any])
                self.stepInfo = model
            }
            if dict.keys.contains("StepName") && dict["StepName"] != nil {
                self.stepName = dict["StepName"] as! String
            }
            if dict.keys.contains("StepOrder") && dict["StepOrder"] != nil {
                self.stepOrder = dict["StepOrder"] as! Int32
            }
            if dict.keys.contains("StepProgress") && dict["StepProgress"] != nil {
                self.stepProgress = dict["StepProgress"] as! Int32
            }
            if dict.keys.contains("StepStatus") && dict["StepStatus"] != nil {
                self.stepStatus = dict["StepStatus"] as! String
            }
        }
    }
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") && dict["Proposal"] != nil {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: [DescribeOmsOpenAPIProjectStepsResponseBody.Data]?

    public var errorDetail: DescribeOmsOpenAPIProjectStepsResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") && dict["Advice"] != nil {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") && dict["Cost"] != nil {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeOmsOpenAPIProjectStepsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeOmsOpenAPIProjectStepsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorDetail") && dict["ErrorDetail"] != nil {
            var model = DescribeOmsOpenAPIProjectStepsResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeOmsOpenAPIProjectStepsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOmsOpenAPIProjectStepsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeOmsOpenAPIProjectStepsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOutlineBindingRequest : Tea.TeaModel {
    public var databaseName: String?

    public var instanceId: String?

    public var isConcurrentLimit: Bool?

    public var SQLId: String?

    public var tableName: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isConcurrentLimit != nil {
            map["IsConcurrentLimit"] = self.isConcurrentLimit!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsConcurrentLimit") && dict["IsConcurrentLimit"] != nil {
            self.isConcurrentLimit = dict["IsConcurrentLimit"] as! Bool
        }
        if dict.keys.contains("SQLId") && dict["SQLId"] != nil {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeOutlineBindingResponseBody : Tea.TeaModel {
    public class OutlineBinding : Tea.TeaModel {
        public var bindIndex: String?

        public var bindPlan: String?

        public var maxConcurrent: Int32?

        public var outlineId: Int64?

        public var tableName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bindIndex != nil {
                map["BindIndex"] = self.bindIndex!
            }
            if self.bindPlan != nil {
                map["BindPlan"] = self.bindPlan!
            }
            if self.maxConcurrent != nil {
                map["MaxConcurrent"] = self.maxConcurrent!
            }
            if self.outlineId != nil {
                map["OutlineId"] = self.outlineId!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BindIndex") && dict["BindIndex"] != nil {
                self.bindIndex = dict["BindIndex"] as! String
            }
            if dict.keys.contains("BindPlan") && dict["BindPlan"] != nil {
                self.bindPlan = dict["BindPlan"] as! String
            }
            if dict.keys.contains("MaxConcurrent") && dict["MaxConcurrent"] != nil {
                self.maxConcurrent = dict["MaxConcurrent"] as! Int32
            }
            if dict.keys.contains("OutlineId") && dict["OutlineId"] != nil {
                self.outlineId = dict["OutlineId"] as! Int64
            }
            if dict.keys.contains("TableName") && dict["TableName"] != nil {
                self.tableName = dict["TableName"] as! String
            }
        }
    }
    public var outlineBinding: DescribeOutlineBindingResponseBody.OutlineBinding?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.outlineBinding?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outlineBinding != nil {
            map["OutlineBinding"] = self.outlineBinding?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OutlineBinding") && dict["OutlineBinding"] != nil {
            var model = DescribeOutlineBindingResponseBody.OutlineBinding()
            model.fromMap(dict["OutlineBinding"] as! [String: Any])
            self.outlineBinding = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOutlineBindingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOutlineBindingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeOutlineBindingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeParametersRequest : Tea.TeaModel {
    public var dimension: String?

    public var dimensionValue: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dimension != nil {
            map["Dimension"] = self.dimension!
        }
        if self.dimensionValue != nil {
            map["DimensionValue"] = self.dimensionValue!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dimension") && dict["Dimension"] != nil {
            self.dimension = dict["Dimension"] as! String
        }
        if dict.keys.contains("DimensionValue") && dict["DimensionValue"] != nil {
            self.dimensionValue = dict["DimensionValue"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeParametersResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var acceptableValue: [String]?

        public var currentValue: String?

        public var defaultValue: String?

        public var description_: String?

        public var name: String?

        public var needReboot: Bool?

        public var readonly: Bool?

        public var rejectedValue: [String]?

        public var valueType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceptableValue != nil {
                map["AcceptableValue"] = self.acceptableValue!
            }
            if self.currentValue != nil {
                map["CurrentValue"] = self.currentValue!
            }
            if self.defaultValue != nil {
                map["DefaultValue"] = self.defaultValue!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.needReboot != nil {
                map["NeedReboot"] = self.needReboot!
            }
            if self.readonly != nil {
                map["Readonly"] = self.readonly!
            }
            if self.rejectedValue != nil {
                map["RejectedValue"] = self.rejectedValue!
            }
            if self.valueType != nil {
                map["ValueType"] = self.valueType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceptableValue") && dict["AcceptableValue"] != nil {
                self.acceptableValue = dict["AcceptableValue"] as! [String]
            }
            if dict.keys.contains("CurrentValue") && dict["CurrentValue"] != nil {
                self.currentValue = dict["CurrentValue"] as! String
            }
            if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                self.defaultValue = dict["DefaultValue"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NeedReboot") && dict["NeedReboot"] != nil {
                self.needReboot = dict["NeedReboot"] as! Bool
            }
            if dict.keys.contains("Readonly") && dict["Readonly"] != nil {
                self.readonly = dict["Readonly"] as! Bool
            }
            if dict.keys.contains("RejectedValue") && dict["RejectedValue"] != nil {
                self.rejectedValue = dict["RejectedValue"] as! [String]
            }
            if dict.keys.contains("ValueType") && dict["ValueType"] != nil {
                self.valueType = dict["ValueType"] as! String
            }
        }
    }
    public var parameters: [DescribeParametersResponseBody.Parameters]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            var tmp : [DescribeParametersResponseBody.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = DescribeParametersResponseBody.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeParametersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeParametersHistoryRequest : Tea.TeaModel {
    public var dimension: String?

    public var dimensionValue: String?

    public var endTime: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dimension != nil {
            map["Dimension"] = self.dimension!
        }
        if self.dimensionValue != nil {
            map["DimensionValue"] = self.dimensionValue!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dimension") && dict["Dimension"] != nil {
            self.dimension = dict["Dimension"] as! String
        }
        if dict.keys.contains("DimensionValue") && dict["DimensionValue"] != nil {
            self.dimensionValue = dict["DimensionValue"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeParametersHistoryResponseBody : Tea.TeaModel {
    public class Respond : Tea.TeaModel {
        public class Parameters : Tea.TeaModel {
            public var createTime: String?

            public var dimensionValue: String?

            public var name: String?

            public var newValue: String?

            public var oldValue: String?

            public var status: String?

            public var updateTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dimensionValue != nil {
                    map["DimensionValue"] = self.dimensionValue!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.newValue != nil {
                    map["NewValue"] = self.newValue!
                }
                if self.oldValue != nil {
                    map["OldValue"] = self.oldValue!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DimensionValue") && dict["DimensionValue"] != nil {
                    self.dimensionValue = dict["DimensionValue"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NewValue") && dict["NewValue"] != nil {
                    self.newValue = dict["NewValue"] as! String
                }
                if dict.keys.contains("OldValue") && dict["OldValue"] != nil {
                    self.oldValue = dict["OldValue"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                    self.updateTime = dict["UpdateTime"] as! String
                }
            }
        }
        public var pageNumber: Int32?

        public var parameters: [DescribeParametersHistoryResponseBody.Respond.Parameters]?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.parameters != nil {
                var tmp : [Any] = []
                for k in self.parameters! {
                    tmp.append(k.toMap())
                }
                map["Parameters"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
                var tmp : [DescribeParametersHistoryResponseBody.Respond.Parameters] = []
                for v in dict["Parameters"] as! [Any] {
                    var model = DescribeParametersHistoryResponseBody.Respond.Parameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.parameters = tmp
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var respond: [DescribeParametersHistoryResponseBody.Respond]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.respond != nil {
            var tmp : [Any] = []
            for k in self.respond! {
                tmp.append(k.toMap())
            }
            map["Respond"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Respond") && dict["Respond"] != nil {
            var tmp : [DescribeParametersHistoryResponseBody.Respond] = []
            for v in dict["Respond"] as! [Any] {
                var model = DescribeParametersHistoryResponseBody.Respond()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.respond = tmp
        }
    }
}

public class DescribeParametersHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeParametersHistoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeParametersHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRecommendIndexRequest : Tea.TeaModel {
    public var instanceId: String?

    public var SQLId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SQLId") && dict["SQLId"] != nil {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeRecommendIndexResponseBody : Tea.TeaModel {
    public class RecommendIndex : Tea.TeaModel {
        public var suggestIndex: String?

        public var tableList: String?

        public var tenantMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.suggestIndex != nil {
                map["SuggestIndex"] = self.suggestIndex!
            }
            if self.tableList != nil {
                map["TableList"] = self.tableList!
            }
            if self.tenantMode != nil {
                map["TenantMode"] = self.tenantMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SuggestIndex") && dict["SuggestIndex"] != nil {
                self.suggestIndex = dict["SuggestIndex"] as! String
            }
            if dict.keys.contains("TableList") && dict["TableList"] != nil {
                self.tableList = dict["TableList"] as! String
            }
            if dict.keys.contains("TenantMode") && dict["TenantMode"] != nil {
                self.tenantMode = dict["TenantMode"] as! String
            }
        }
    }
    public var recommendIndex: DescribeRecommendIndexResponseBody.RecommendIndex?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.recommendIndex?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recommendIndex != nil {
            map["RecommendIndex"] = self.recommendIndex?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecommendIndex") && dict["RecommendIndex"] != nil {
            var model = DescribeRecommendIndexResponseBody.RecommendIndex()
            model.fromMap(dict["RecommendIndex"] as! [String: Any])
            self.recommendIndex = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeRecommendIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRecommendIndexResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRecommendIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLDetailsRequest : Tea.TeaModel {
    public var SQLId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SQLId") && dict["SQLId"] != nil {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeSQLDetailsResponseBody : Tea.TeaModel {
    public class SQLDetails : Tea.TeaModel {
        public var dbName: String?

        public var SQLText: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.SQLText != nil {
                map["SQLText"] = self.SQLText!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbName") && dict["DbName"] != nil {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("SQLText") && dict["SQLText"] != nil {
                self.SQLText = dict["SQLText"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var requestId: String?

    public var SQLDetails: [DescribeSQLDetailsResponseBody.SQLDetails]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SQLDetails != nil {
            var tmp : [Any] = []
            for k in self.SQLDetails! {
                tmp.append(k.toMap())
            }
            map["SQLDetails"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SQLDetails") && dict["SQLDetails"] != nil {
            var tmp : [DescribeSQLDetailsResponseBody.SQLDetails] = []
            for v in dict["SQLDetails"] as! [Any] {
                var model = DescribeSQLDetailsResponseBody.SQLDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.SQLDetails = tmp
        }
    }
}

public class DescribeSQLDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSQLDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLHistoryListRequest : Tea.TeaModel {
    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: String?

    public var startTime: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") && dict["SQLId"] != nil {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeSQLHistoryListResponseBody : Tea.TeaModel {
    public class SQLHistoryList : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var affectedRows: Int64?

            public var appWaitTime: Double?

            public var blockCacheHit: Int64?

            public var blockIndexCacheHit: Int64?

            public var bloomFilterCacheHit: Int64?

            public var clientIp: String?

            public var concurrencyWaitTime: Double?

            public var cpuTime: Double?

            public var dbName: String?

            public var decodeTime: Double?

            public var diskRead: Int64?

            public var elapsedTime: Double?

            public var endTime: Int64?

            public var endTimeUTCString: String?

            public var event: String?

            public var execPerSecond: Int64?

            public var executeTime: Double?

            public var executions: Int64?

            public var failTimes: Int64?

            public var getPlanTime: Double?

            public var IOWaitTime: Double?

            public var logicalRead: Int64?

            public var maxCpuTime: Double?

            public var maxElapsedTime: Double?

            public var memstoreReadRowCount: Int64?

            public var missPlans: Int64?

            public var netWaitTime: Double?

            public var nodeIp: String?

            public var queueTime: Double?

            public var RPCCount: Int64?

            public var remotePlans: Int64?

            public var retryCount: Int64?

            public var returnRows: Int64?

            public var rowCacheHit: Int64?

            public var scheduleTime: Double?

            public var ssstoreReadRowCount: Int64?

            public var totalWaitTime: Double?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.affectedRows != nil {
                    map["AffectedRows"] = self.affectedRows!
                }
                if self.appWaitTime != nil {
                    map["AppWaitTime"] = self.appWaitTime!
                }
                if self.blockCacheHit != nil {
                    map["BlockCacheHit"] = self.blockCacheHit!
                }
                if self.blockIndexCacheHit != nil {
                    map["BlockIndexCacheHit"] = self.blockIndexCacheHit!
                }
                if self.bloomFilterCacheHit != nil {
                    map["BloomFilterCacheHit"] = self.bloomFilterCacheHit!
                }
                if self.clientIp != nil {
                    map["ClientIp"] = self.clientIp!
                }
                if self.concurrencyWaitTime != nil {
                    map["ConcurrencyWaitTime"] = self.concurrencyWaitTime!
                }
                if self.cpuTime != nil {
                    map["CpuTime"] = self.cpuTime!
                }
                if self.dbName != nil {
                    map["DbName"] = self.dbName!
                }
                if self.decodeTime != nil {
                    map["DecodeTime"] = self.decodeTime!
                }
                if self.diskRead != nil {
                    map["DiskRead"] = self.diskRead!
                }
                if self.elapsedTime != nil {
                    map["ElapsedTime"] = self.elapsedTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.endTimeUTCString != nil {
                    map["EndTimeUTCString"] = self.endTimeUTCString!
                }
                if self.event != nil {
                    map["Event"] = self.event!
                }
                if self.execPerSecond != nil {
                    map["ExecPerSecond"] = self.execPerSecond!
                }
                if self.executeTime != nil {
                    map["ExecuteTime"] = self.executeTime!
                }
                if self.executions != nil {
                    map["Executions"] = self.executions!
                }
                if self.failTimes != nil {
                    map["FailTimes"] = self.failTimes!
                }
                if self.getPlanTime != nil {
                    map["GetPlanTime"] = self.getPlanTime!
                }
                if self.IOWaitTime != nil {
                    map["IOWaitTime"] = self.IOWaitTime!
                }
                if self.logicalRead != nil {
                    map["LogicalRead"] = self.logicalRead!
                }
                if self.maxCpuTime != nil {
                    map["MaxCpuTime"] = self.maxCpuTime!
                }
                if self.maxElapsedTime != nil {
                    map["MaxElapsedTime"] = self.maxElapsedTime!
                }
                if self.memstoreReadRowCount != nil {
                    map["MemstoreReadRowCount"] = self.memstoreReadRowCount!
                }
                if self.missPlans != nil {
                    map["MissPlans"] = self.missPlans!
                }
                if self.netWaitTime != nil {
                    map["NetWaitTime"] = self.netWaitTime!
                }
                if self.nodeIp != nil {
                    map["NodeIp"] = self.nodeIp!
                }
                if self.queueTime != nil {
                    map["QueueTime"] = self.queueTime!
                }
                if self.RPCCount != nil {
                    map["RPCCount"] = self.RPCCount!
                }
                if self.remotePlans != nil {
                    map["RemotePlans"] = self.remotePlans!
                }
                if self.retryCount != nil {
                    map["RetryCount"] = self.retryCount!
                }
                if self.returnRows != nil {
                    map["ReturnRows"] = self.returnRows!
                }
                if self.rowCacheHit != nil {
                    map["RowCacheHit"] = self.rowCacheHit!
                }
                if self.scheduleTime != nil {
                    map["ScheduleTime"] = self.scheduleTime!
                }
                if self.ssstoreReadRowCount != nil {
                    map["SsstoreReadRowCount"] = self.ssstoreReadRowCount!
                }
                if self.totalWaitTime != nil {
                    map["TotalWaitTime"] = self.totalWaitTime!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AffectedRows") && dict["AffectedRows"] != nil {
                    self.affectedRows = dict["AffectedRows"] as! Int64
                }
                if dict.keys.contains("AppWaitTime") && dict["AppWaitTime"] != nil {
                    self.appWaitTime = dict["AppWaitTime"] as! Double
                }
                if dict.keys.contains("BlockCacheHit") && dict["BlockCacheHit"] != nil {
                    self.blockCacheHit = dict["BlockCacheHit"] as! Int64
                }
                if dict.keys.contains("BlockIndexCacheHit") && dict["BlockIndexCacheHit"] != nil {
                    self.blockIndexCacheHit = dict["BlockIndexCacheHit"] as! Int64
                }
                if dict.keys.contains("BloomFilterCacheHit") && dict["BloomFilterCacheHit"] != nil {
                    self.bloomFilterCacheHit = dict["BloomFilterCacheHit"] as! Int64
                }
                if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
                    self.clientIp = dict["ClientIp"] as! String
                }
                if dict.keys.contains("ConcurrencyWaitTime") && dict["ConcurrencyWaitTime"] != nil {
                    self.concurrencyWaitTime = dict["ConcurrencyWaitTime"] as! Double
                }
                if dict.keys.contains("CpuTime") && dict["CpuTime"] != nil {
                    self.cpuTime = dict["CpuTime"] as! Double
                }
                if dict.keys.contains("DbName") && dict["DbName"] != nil {
                    self.dbName = dict["DbName"] as! String
                }
                if dict.keys.contains("DecodeTime") && dict["DecodeTime"] != nil {
                    self.decodeTime = dict["DecodeTime"] as! Double
                }
                if dict.keys.contains("DiskRead") && dict["DiskRead"] != nil {
                    self.diskRead = dict["DiskRead"] as! Int64
                }
                if dict.keys.contains("ElapsedTime") && dict["ElapsedTime"] != nil {
                    self.elapsedTime = dict["ElapsedTime"] as! Double
                }
                if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("EndTimeUTCString") && dict["EndTimeUTCString"] != nil {
                    self.endTimeUTCString = dict["EndTimeUTCString"] as! String
                }
                if dict.keys.contains("Event") && dict["Event"] != nil {
                    self.event = dict["Event"] as! String
                }
                if dict.keys.contains("ExecPerSecond") && dict["ExecPerSecond"] != nil {
                    self.execPerSecond = dict["ExecPerSecond"] as! Int64
                }
                if dict.keys.contains("ExecuteTime") && dict["ExecuteTime"] != nil {
                    self.executeTime = dict["ExecuteTime"] as! Double
                }
                if dict.keys.contains("Executions") && dict["Executions"] != nil {
                    self.executions = dict["Executions"] as! Int64
                }
                if dict.keys.contains("FailTimes") && dict["FailTimes"] != nil {
                    self.failTimes = dict["FailTimes"] as! Int64
                }
                if dict.keys.contains("GetPlanTime") && dict["GetPlanTime"] != nil {
                    self.getPlanTime = dict["GetPlanTime"] as! Double
                }
                if dict.keys.contains("IOWaitTime") && dict["IOWaitTime"] != nil {
                    self.IOWaitTime = dict["IOWaitTime"] as! Double
                }
                if dict.keys.contains("LogicalRead") && dict["LogicalRead"] != nil {
                    self.logicalRead = dict["LogicalRead"] as! Int64
                }
                if dict.keys.contains("MaxCpuTime") && dict["MaxCpuTime"] != nil {
                    self.maxCpuTime = dict["MaxCpuTime"] as! Double
                }
                if dict.keys.contains("MaxElapsedTime") && dict["MaxElapsedTime"] != nil {
                    self.maxElapsedTime = dict["MaxElapsedTime"] as! Double
                }
                if dict.keys.contains("MemstoreReadRowCount") && dict["MemstoreReadRowCount"] != nil {
                    self.memstoreReadRowCount = dict["MemstoreReadRowCount"] as! Int64
                }
                if dict.keys.contains("MissPlans") && dict["MissPlans"] != nil {
                    self.missPlans = dict["MissPlans"] as! Int64
                }
                if dict.keys.contains("NetWaitTime") && dict["NetWaitTime"] != nil {
                    self.netWaitTime = dict["NetWaitTime"] as! Double
                }
                if dict.keys.contains("NodeIp") && dict["NodeIp"] != nil {
                    self.nodeIp = dict["NodeIp"] as! String
                }
                if dict.keys.contains("QueueTime") && dict["QueueTime"] != nil {
                    self.queueTime = dict["QueueTime"] as! Double
                }
                if dict.keys.contains("RPCCount") && dict["RPCCount"] != nil {
                    self.RPCCount = dict["RPCCount"] as! Int64
                }
                if dict.keys.contains("RemotePlans") && dict["RemotePlans"] != nil {
                    self.remotePlans = dict["RemotePlans"] as! Int64
                }
                if dict.keys.contains("RetryCount") && dict["RetryCount"] != nil {
                    self.retryCount = dict["RetryCount"] as! Int64
                }
                if dict.keys.contains("ReturnRows") && dict["ReturnRows"] != nil {
                    self.returnRows = dict["ReturnRows"] as! Int64
                }
                if dict.keys.contains("RowCacheHit") && dict["RowCacheHit"] != nil {
                    self.rowCacheHit = dict["RowCacheHit"] as! Int64
                }
                if dict.keys.contains("ScheduleTime") && dict["ScheduleTime"] != nil {
                    self.scheduleTime = dict["ScheduleTime"] as! Double
                }
                if dict.keys.contains("SsstoreReadRowCount") && dict["SsstoreReadRowCount"] != nil {
                    self.ssstoreReadRowCount = dict["SsstoreReadRowCount"] as! Int64
                }
                if dict.keys.contains("TotalWaitTime") && dict["TotalWaitTime"] != nil {
                    self.totalWaitTime = dict["TotalWaitTime"] as! Double
                }
                if dict.keys.contains("UserName") && dict["UserName"] != nil {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var count: Int64?

        public var list: [DescribeSQLHistoryListResponseBody.SQLHistoryList.List]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [DescribeSQLHistoryListResponseBody.SQLHistoryList.List] = []
                for v in dict["List"] as! [Any] {
                    var model = DescribeSQLHistoryListResponseBody.SQLHistoryList.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
        }
    }
    public var requestId: String?

    public var SQLHistoryList: DescribeSQLHistoryListResponseBody.SQLHistoryList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SQLHistoryList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SQLHistoryList != nil {
            map["SQLHistoryList"] = self.SQLHistoryList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SQLHistoryList") && dict["SQLHistoryList"] != nil {
            var model = DescribeSQLHistoryListResponseBody.SQLHistoryList()
            model.fromMap(dict["SQLHistoryList"] as! [String: Any])
            self.SQLHistoryList = model
        }
    }
}

public class DescribeSQLHistoryListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLHistoryListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSQLHistoryListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLPlansRequest : Tea.TeaModel {
    public var SQLId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SQLId") && dict["SQLId"] != nil {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeSQLPlansResponseBody : Tea.TeaModel {
    public class SQLPlans : Tea.TeaModel {
        public var avgExecutionMS: Double?

        public var avgExecutionTimeMS: Int64?

        public var firstLoadTime: Int64?

        public var firstLoadTimeUTCString: String?

        public var hitCount: Int32?

        public var mergedVersion: Int32?

        public var nodeIp: String?

        public var outlineData: String?

        public var outlineId: Int64?

        public var outlineTime: Int64?

        public var outlineTimeUTCString: String?

        public var planFull: String?

        public var planId: Int32?

        public var planInfo: String?

        public var planUnionHash: String?

        public var querySQL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avgExecutionMS != nil {
                map["AvgExecutionMS"] = self.avgExecutionMS!
            }
            if self.avgExecutionTimeMS != nil {
                map["AvgExecutionTimeMS"] = self.avgExecutionTimeMS!
            }
            if self.firstLoadTime != nil {
                map["FirstLoadTime"] = self.firstLoadTime!
            }
            if self.firstLoadTimeUTCString != nil {
                map["FirstLoadTimeUTCString"] = self.firstLoadTimeUTCString!
            }
            if self.hitCount != nil {
                map["HitCount"] = self.hitCount!
            }
            if self.mergedVersion != nil {
                map["MergedVersion"] = self.mergedVersion!
            }
            if self.nodeIp != nil {
                map["NodeIp"] = self.nodeIp!
            }
            if self.outlineData != nil {
                map["OutlineData"] = self.outlineData!
            }
            if self.outlineId != nil {
                map["OutlineId"] = self.outlineId!
            }
            if self.outlineTime != nil {
                map["OutlineTime"] = self.outlineTime!
            }
            if self.outlineTimeUTCString != nil {
                map["OutlineTimeUTCString"] = self.outlineTimeUTCString!
            }
            if self.planFull != nil {
                map["PlanFull"] = self.planFull!
            }
            if self.planId != nil {
                map["PlanId"] = self.planId!
            }
            if self.planInfo != nil {
                map["PlanInfo"] = self.planInfo!
            }
            if self.planUnionHash != nil {
                map["PlanUnionHash"] = self.planUnionHash!
            }
            if self.querySQL != nil {
                map["QuerySQL"] = self.querySQL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvgExecutionMS") && dict["AvgExecutionMS"] != nil {
                self.avgExecutionMS = dict["AvgExecutionMS"] as! Double
            }
            if dict.keys.contains("AvgExecutionTimeMS") && dict["AvgExecutionTimeMS"] != nil {
                self.avgExecutionTimeMS = dict["AvgExecutionTimeMS"] as! Int64
            }
            if dict.keys.contains("FirstLoadTime") && dict["FirstLoadTime"] != nil {
                self.firstLoadTime = dict["FirstLoadTime"] as! Int64
            }
            if dict.keys.contains("FirstLoadTimeUTCString") && dict["FirstLoadTimeUTCString"] != nil {
                self.firstLoadTimeUTCString = dict["FirstLoadTimeUTCString"] as! String
            }
            if dict.keys.contains("HitCount") && dict["HitCount"] != nil {
                self.hitCount = dict["HitCount"] as! Int32
            }
            if dict.keys.contains("MergedVersion") && dict["MergedVersion"] != nil {
                self.mergedVersion = dict["MergedVersion"] as! Int32
            }
            if dict.keys.contains("NodeIp") && dict["NodeIp"] != nil {
                self.nodeIp = dict["NodeIp"] as! String
            }
            if dict.keys.contains("OutlineData") && dict["OutlineData"] != nil {
                self.outlineData = dict["OutlineData"] as! String
            }
            if dict.keys.contains("OutlineId") && dict["OutlineId"] != nil {
                self.outlineId = dict["OutlineId"] as! Int64
            }
            if dict.keys.contains("OutlineTime") && dict["OutlineTime"] != nil {
                self.outlineTime = dict["OutlineTime"] as! Int64
            }
            if dict.keys.contains("OutlineTimeUTCString") && dict["OutlineTimeUTCString"] != nil {
                self.outlineTimeUTCString = dict["OutlineTimeUTCString"] as! String
            }
            if dict.keys.contains("PlanFull") && dict["PlanFull"] != nil {
                self.planFull = dict["PlanFull"] as! String
            }
            if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
                self.planId = dict["PlanId"] as! Int32
            }
            if dict.keys.contains("PlanInfo") && dict["PlanInfo"] != nil {
                self.planInfo = dict["PlanInfo"] as! String
            }
            if dict.keys.contains("PlanUnionHash") && dict["PlanUnionHash"] != nil {
                self.planUnionHash = dict["PlanUnionHash"] as! String
            }
            if dict.keys.contains("QuerySQL") && dict["QuerySQL"] != nil {
                self.querySQL = dict["QuerySQL"] as! String
            }
        }
    }
    public var requestId: String?

    public var SQLPlans: [DescribeSQLPlansResponseBody.SQLPlans]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SQLPlans != nil {
            var tmp : [Any] = []
            for k in self.SQLPlans! {
                tmp.append(k.toMap())
            }
            map["SQLPlans"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SQLPlans") && dict["SQLPlans"] != nil {
            var tmp : [DescribeSQLPlansResponseBody.SQLPlans] = []
            for v in dict["SQLPlans"] as! [Any] {
                var model = DescribeSQLPlansResponseBody.SQLPlans()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.SQLPlans = tmp
        }
    }
}

public class DescribeSQLPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLPlansResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSQLPlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLSamplesRequest : Tea.TeaModel {
    public var dbName: String?

    public var endTime: String?

    public var instanceId: String?

    public var sqlId: String?

    public var startTime: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.sqlId != nil {
            map["SqlId"] = self.sqlId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SqlId") && dict["SqlId"] != nil {
            self.sqlId = dict["SqlId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeSQLSamplesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var affectedRows: Double?

        public var applicationWaitTime: Double?

        public var blockCacheHit: Double?

        public var blockIndexCacheHit: Double?

        public var bloomFilterCacheHit: Double?

        public var clientIp: String?

        public var clientPort: String?

        public var concurrencyWaitTime: Double?

        public var consistencyLevel: String?

        public var cpuTime: Double?

        public var dbName: String?

        public var decodeTime: Double?

        public var diskReads: Double?

        public var elapsedTime: Double?

        public var executeTime: Double?

        public var executorRpc: Double?

        public var expectedWorkerCount: Double?

        public var getPlanTime: Double?

        public var hitPlan: Double?

        public var inner: Bool?

        public var memstoreReadRows: Double?

        public var netTime: Double?

        public var netWaitTime: Double?

        public var obDbId: Double?

        public var obServerId: Double?

        public var obUserId: Double?

        public var partitionCount: Double?

        public var planId: Double?

        public var planType: String?

        public var queueTime: Double?

        public var requestId: String?

        public var requestTime: String?

        public var retCode: Double?

        public var retryCount: Double?

        public var returnRows: Double?

        public var rowCacheHit: Double?

        public var rpcCount: Double?

        public var scheduleTime: Double?

        public var server: String?

        public var sqlType: String?

        public var ssstoreReadRows: Double?

        public var statement: String?

        public var tableScan: Double?

        public var traceId: String?

        public var transHash: String?

        public var usedWorkerCount: Double?

        public var userIoWaitTime: Double?

        public var userName: String?

        public var waitCount: Double?

        public var waitEvent: String?

        public var waitTime: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.affectedRows != nil {
                map["AffectedRows"] = self.affectedRows!
            }
            if self.applicationWaitTime != nil {
                map["ApplicationWaitTime"] = self.applicationWaitTime!
            }
            if self.blockCacheHit != nil {
                map["BlockCacheHit"] = self.blockCacheHit!
            }
            if self.blockIndexCacheHit != nil {
                map["BlockIndexCacheHit"] = self.blockIndexCacheHit!
            }
            if self.bloomFilterCacheHit != nil {
                map["BloomFilterCacheHit"] = self.bloomFilterCacheHit!
            }
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.clientPort != nil {
                map["ClientPort"] = self.clientPort!
            }
            if self.concurrencyWaitTime != nil {
                map["ConcurrencyWaitTime"] = self.concurrencyWaitTime!
            }
            if self.consistencyLevel != nil {
                map["ConsistencyLevel"] = self.consistencyLevel!
            }
            if self.cpuTime != nil {
                map["CpuTime"] = self.cpuTime!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.decodeTime != nil {
                map["DecodeTime"] = self.decodeTime!
            }
            if self.diskReads != nil {
                map["DiskReads"] = self.diskReads!
            }
            if self.elapsedTime != nil {
                map["ElapsedTime"] = self.elapsedTime!
            }
            if self.executeTime != nil {
                map["ExecuteTime"] = self.executeTime!
            }
            if self.executorRpc != nil {
                map["ExecutorRpc"] = self.executorRpc!
            }
            if self.expectedWorkerCount != nil {
                map["ExpectedWorkerCount"] = self.expectedWorkerCount!
            }
            if self.getPlanTime != nil {
                map["GetPlanTime"] = self.getPlanTime!
            }
            if self.hitPlan != nil {
                map["HitPlan"] = self.hitPlan!
            }
            if self.inner != nil {
                map["Inner"] = self.inner!
            }
            if self.memstoreReadRows != nil {
                map["MemstoreReadRows"] = self.memstoreReadRows!
            }
            if self.netTime != nil {
                map["NetTime"] = self.netTime!
            }
            if self.netWaitTime != nil {
                map["NetWaitTime"] = self.netWaitTime!
            }
            if self.obDbId != nil {
                map["ObDbId"] = self.obDbId!
            }
            if self.obServerId != nil {
                map["ObServerId"] = self.obServerId!
            }
            if self.obUserId != nil {
                map["ObUserId"] = self.obUserId!
            }
            if self.partitionCount != nil {
                map["PartitionCount"] = self.partitionCount!
            }
            if self.planId != nil {
                map["PlanId"] = self.planId!
            }
            if self.planType != nil {
                map["PlanType"] = self.planType!
            }
            if self.queueTime != nil {
                map["QueueTime"] = self.queueTime!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.requestTime != nil {
                map["RequestTime"] = self.requestTime!
            }
            if self.retCode != nil {
                map["RetCode"] = self.retCode!
            }
            if self.retryCount != nil {
                map["RetryCount"] = self.retryCount!
            }
            if self.returnRows != nil {
                map["ReturnRows"] = self.returnRows!
            }
            if self.rowCacheHit != nil {
                map["RowCacheHit"] = self.rowCacheHit!
            }
            if self.rpcCount != nil {
                map["RpcCount"] = self.rpcCount!
            }
            if self.scheduleTime != nil {
                map["ScheduleTime"] = self.scheduleTime!
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.sqlType != nil {
                map["SqlType"] = self.sqlType!
            }
            if self.ssstoreReadRows != nil {
                map["SsstoreReadRows"] = self.ssstoreReadRows!
            }
            if self.statement != nil {
                map["Statement"] = self.statement!
            }
            if self.tableScan != nil {
                map["TableScan"] = self.tableScan!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            if self.transHash != nil {
                map["TransHash"] = self.transHash!
            }
            if self.usedWorkerCount != nil {
                map["UsedWorkerCount"] = self.usedWorkerCount!
            }
            if self.userIoWaitTime != nil {
                map["UserIoWaitTime"] = self.userIoWaitTime!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.waitCount != nil {
                map["WaitCount"] = self.waitCount!
            }
            if self.waitEvent != nil {
                map["WaitEvent"] = self.waitEvent!
            }
            if self.waitTime != nil {
                map["WaitTime"] = self.waitTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AffectedRows") && dict["AffectedRows"] != nil {
                self.affectedRows = dict["AffectedRows"] as! Double
            }
            if dict.keys.contains("ApplicationWaitTime") && dict["ApplicationWaitTime"] != nil {
                self.applicationWaitTime = dict["ApplicationWaitTime"] as! Double
            }
            if dict.keys.contains("BlockCacheHit") && dict["BlockCacheHit"] != nil {
                self.blockCacheHit = dict["BlockCacheHit"] as! Double
            }
            if dict.keys.contains("BlockIndexCacheHit") && dict["BlockIndexCacheHit"] != nil {
                self.blockIndexCacheHit = dict["BlockIndexCacheHit"] as! Double
            }
            if dict.keys.contains("BloomFilterCacheHit") && dict["BloomFilterCacheHit"] != nil {
                self.bloomFilterCacheHit = dict["BloomFilterCacheHit"] as! Double
            }
            if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("ClientPort") && dict["ClientPort"] != nil {
                self.clientPort = dict["ClientPort"] as! String
            }
            if dict.keys.contains("ConcurrencyWaitTime") && dict["ConcurrencyWaitTime"] != nil {
                self.concurrencyWaitTime = dict["ConcurrencyWaitTime"] as! Double
            }
            if dict.keys.contains("ConsistencyLevel") && dict["ConsistencyLevel"] != nil {
                self.consistencyLevel = dict["ConsistencyLevel"] as! String
            }
            if dict.keys.contains("CpuTime") && dict["CpuTime"] != nil {
                self.cpuTime = dict["CpuTime"] as! Double
            }
            if dict.keys.contains("DbName") && dict["DbName"] != nil {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("DecodeTime") && dict["DecodeTime"] != nil {
                self.decodeTime = dict["DecodeTime"] as! Double
            }
            if dict.keys.contains("DiskReads") && dict["DiskReads"] != nil {
                self.diskReads = dict["DiskReads"] as! Double
            }
            if dict.keys.contains("ElapsedTime") && dict["ElapsedTime"] != nil {
                self.elapsedTime = dict["ElapsedTime"] as! Double
            }
            if dict.keys.contains("ExecuteTime") && dict["ExecuteTime"] != nil {
                self.executeTime = dict["ExecuteTime"] as! Double
            }
            if dict.keys.contains("ExecutorRpc") && dict["ExecutorRpc"] != nil {
                self.executorRpc = dict["ExecutorRpc"] as! Double
            }
            if dict.keys.contains("ExpectedWorkerCount") && dict["ExpectedWorkerCount"] != nil {
                self.expectedWorkerCount = dict["ExpectedWorkerCount"] as! Double
            }
            if dict.keys.contains("GetPlanTime") && dict["GetPlanTime"] != nil {
                self.getPlanTime = dict["GetPlanTime"] as! Double
            }
            if dict.keys.contains("HitPlan") && dict["HitPlan"] != nil {
                self.hitPlan = dict["HitPlan"] as! Double
            }
            if dict.keys.contains("Inner") && dict["Inner"] != nil {
                self.inner = dict["Inner"] as! Bool
            }
            if dict.keys.contains("MemstoreReadRows") && dict["MemstoreReadRows"] != nil {
                self.memstoreReadRows = dict["MemstoreReadRows"] as! Double
            }
            if dict.keys.contains("NetTime") && dict["NetTime"] != nil {
                self.netTime = dict["NetTime"] as! Double
            }
            if dict.keys.contains("NetWaitTime") && dict["NetWaitTime"] != nil {
                self.netWaitTime = dict["NetWaitTime"] as! Double
            }
            if dict.keys.contains("ObDbId") && dict["ObDbId"] != nil {
                self.obDbId = dict["ObDbId"] as! Double
            }
            if dict.keys.contains("ObServerId") && dict["ObServerId"] != nil {
                self.obServerId = dict["ObServerId"] as! Double
            }
            if dict.keys.contains("ObUserId") && dict["ObUserId"] != nil {
                self.obUserId = dict["ObUserId"] as! Double
            }
            if dict.keys.contains("PartitionCount") && dict["PartitionCount"] != nil {
                self.partitionCount = dict["PartitionCount"] as! Double
            }
            if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
                self.planId = dict["PlanId"] as! Double
            }
            if dict.keys.contains("PlanType") && dict["PlanType"] != nil {
                self.planType = dict["PlanType"] as! String
            }
            if dict.keys.contains("QueueTime") && dict["QueueTime"] != nil {
                self.queueTime = dict["QueueTime"] as! Double
            }
            if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("RequestTime") && dict["RequestTime"] != nil {
                self.requestTime = dict["RequestTime"] as! String
            }
            if dict.keys.contains("RetCode") && dict["RetCode"] != nil {
                self.retCode = dict["RetCode"] as! Double
            }
            if dict.keys.contains("RetryCount") && dict["RetryCount"] != nil {
                self.retryCount = dict["RetryCount"] as! Double
            }
            if dict.keys.contains("ReturnRows") && dict["ReturnRows"] != nil {
                self.returnRows = dict["ReturnRows"] as! Double
            }
            if dict.keys.contains("RowCacheHit") && dict["RowCacheHit"] != nil {
                self.rowCacheHit = dict["RowCacheHit"] as! Double
            }
            if dict.keys.contains("RpcCount") && dict["RpcCount"] != nil {
                self.rpcCount = dict["RpcCount"] as! Double
            }
            if dict.keys.contains("ScheduleTime") && dict["ScheduleTime"] != nil {
                self.scheduleTime = dict["ScheduleTime"] as! Double
            }
            if dict.keys.contains("Server") && dict["Server"] != nil {
                self.server = dict["Server"] as! String
            }
            if dict.keys.contains("SqlType") && dict["SqlType"] != nil {
                self.sqlType = dict["SqlType"] as! String
            }
            if dict.keys.contains("SsstoreReadRows") && dict["SsstoreReadRows"] != nil {
                self.ssstoreReadRows = dict["SsstoreReadRows"] as! Double
            }
            if dict.keys.contains("Statement") && dict["Statement"] != nil {
                self.statement = dict["Statement"] as! String
            }
            if dict.keys.contains("TableScan") && dict["TableScan"] != nil {
                self.tableScan = dict["TableScan"] as! Double
            }
            if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
                self.traceId = dict["TraceId"] as! String
            }
            if dict.keys.contains("TransHash") && dict["TransHash"] != nil {
                self.transHash = dict["TransHash"] as! String
            }
            if dict.keys.contains("UsedWorkerCount") && dict["UsedWorkerCount"] != nil {
                self.usedWorkerCount = dict["UsedWorkerCount"] as! Double
            }
            if dict.keys.contains("UserIoWaitTime") && dict["UserIoWaitTime"] != nil {
                self.userIoWaitTime = dict["UserIoWaitTime"] as! Double
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("WaitCount") && dict["WaitCount"] != nil {
                self.waitCount = dict["WaitCount"] as! Double
            }
            if dict.keys.contains("WaitEvent") && dict["WaitEvent"] != nil {
                self.waitEvent = dict["WaitEvent"] as! String
            }
            if dict.keys.contains("WaitTime") && dict["WaitTime"] != nil {
                self.waitTime = dict["WaitTime"] as! Double
            }
        }
    }
    public var data: [DescribeSQLSamplesResponseBody.Data]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeSQLSamplesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeSQLSamplesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeSQLSamplesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLSamplesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSQLSamplesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSecurityIpGroupsRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeSecurityIpGroupsResponseBody : Tea.TeaModel {
    public class SecurityIpGroups : Tea.TeaModel {
        public var securityIpGroupName: String?

        public var securityIps: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityIpGroupName != nil {
                map["SecurityIpGroupName"] = self.securityIpGroupName!
            }
            if self.securityIps != nil {
                map["SecurityIps"] = self.securityIps!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SecurityIpGroupName") && dict["SecurityIpGroupName"] != nil {
                self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
            }
            if dict.keys.contains("SecurityIps") && dict["SecurityIps"] != nil {
                self.securityIps = dict["SecurityIps"] as! String
            }
        }
    }
    public var requestId: String?

    public var securityIpGroups: [DescribeSecurityIpGroupsResponseBody.SecurityIpGroups]?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityIpGroups != nil {
            var tmp : [Any] = []
            for k in self.securityIpGroups! {
                tmp.append(k.toMap())
            }
            map["SecurityIpGroups"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityIpGroups") && dict["SecurityIpGroups"] != nil {
            var tmp : [DescribeSecurityIpGroupsResponseBody.SecurityIpGroups] = []
            for v in dict["SecurityIpGroups"] as! [Any] {
                var model = DescribeSecurityIpGroupsResponseBody.SecurityIpGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.securityIpGroups = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeSecurityIpGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecurityIpGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSecurityIpGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSlowSQLHistoryListRequest : Tea.TeaModel {
    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: String?

    public var startTime: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") && dict["SQLId"] != nil {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeSlowSQLHistoryListResponseBody : Tea.TeaModel {
    public class SlowSQLHistoryList : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var affectedRows: Double?

            public var appWaitTime: Double?

            public var blockCacheHit: Double?

            public var blockIndexCacheHit: Double?

            public var bloomFilterCacheHit: Double?

            public var clientIp: String?

            public var concurrencyWaitTime: Double?

            public var cpuTime: Double?

            public var dbName: String?

            public var decodeTime: Double?

            public var diskRead: Double?

            public var elapsedTime: Double?

            public var endTimeUTCString: String?

            public var event: String?

            public var execPerSecond: Double?

            public var executeTime: Double?

            public var executions: Double?

            public var failTimes: Double?

            public var getPlanTime: Double?

            public var IOWaitTime: Double?

            public var logicalRead: Double?

            public var maxCpuTime: Double?

            public var maxElapsedTime: Double?

            public var memstoreReadRowCount: Double?

            public var missPlans: Double?

            public var netWaitTime: Double?

            public var nodeIp: String?

            public var queueTime: Double?

            public var RPCCount: Double?

            public var remotePlans: Double?

            public var retryCount: Double?

            public var returnRows: Double?

            public var rowCacheHit: Double?

            public var scheduleTime: Double?

            public var sqlId: String?

            public var sqlType: String?

            public var ssstoreReadRowCount: Double?

            public var tenantName: String?

            public var totalWaitTime: Double?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.affectedRows != nil {
                    map["AffectedRows"] = self.affectedRows!
                }
                if self.appWaitTime != nil {
                    map["AppWaitTime"] = self.appWaitTime!
                }
                if self.blockCacheHit != nil {
                    map["BlockCacheHit"] = self.blockCacheHit!
                }
                if self.blockIndexCacheHit != nil {
                    map["BlockIndexCacheHit"] = self.blockIndexCacheHit!
                }
                if self.bloomFilterCacheHit != nil {
                    map["BloomFilterCacheHit"] = self.bloomFilterCacheHit!
                }
                if self.clientIp != nil {
                    map["ClientIp"] = self.clientIp!
                }
                if self.concurrencyWaitTime != nil {
                    map["ConcurrencyWaitTime"] = self.concurrencyWaitTime!
                }
                if self.cpuTime != nil {
                    map["CpuTime"] = self.cpuTime!
                }
                if self.dbName != nil {
                    map["DbName"] = self.dbName!
                }
                if self.decodeTime != nil {
                    map["DecodeTime"] = self.decodeTime!
                }
                if self.diskRead != nil {
                    map["DiskRead"] = self.diskRead!
                }
                if self.elapsedTime != nil {
                    map["ElapsedTime"] = self.elapsedTime!
                }
                if self.endTimeUTCString != nil {
                    map["EndTimeUTCString"] = self.endTimeUTCString!
                }
                if self.event != nil {
                    map["Event"] = self.event!
                }
                if self.execPerSecond != nil {
                    map["ExecPerSecond"] = self.execPerSecond!
                }
                if self.executeTime != nil {
                    map["ExecuteTime"] = self.executeTime!
                }
                if self.executions != nil {
                    map["Executions"] = self.executions!
                }
                if self.failTimes != nil {
                    map["FailTimes"] = self.failTimes!
                }
                if self.getPlanTime != nil {
                    map["GetPlanTime"] = self.getPlanTime!
                }
                if self.IOWaitTime != nil {
                    map["IOWaitTime"] = self.IOWaitTime!
                }
                if self.logicalRead != nil {
                    map["LogicalRead"] = self.logicalRead!
                }
                if self.maxCpuTime != nil {
                    map["MaxCpuTime"] = self.maxCpuTime!
                }
                if self.maxElapsedTime != nil {
                    map["MaxElapsedTime"] = self.maxElapsedTime!
                }
                if self.memstoreReadRowCount != nil {
                    map["MemstoreReadRowCount"] = self.memstoreReadRowCount!
                }
                if self.missPlans != nil {
                    map["MissPlans"] = self.missPlans!
                }
                if self.netWaitTime != nil {
                    map["NetWaitTime"] = self.netWaitTime!
                }
                if self.nodeIp != nil {
                    map["NodeIp"] = self.nodeIp!
                }
                if self.queueTime != nil {
                    map["QueueTime"] = self.queueTime!
                }
                if self.RPCCount != nil {
                    map["RPCCount"] = self.RPCCount!
                }
                if self.remotePlans != nil {
                    map["RemotePlans"] = self.remotePlans!
                }
                if self.retryCount != nil {
                    map["RetryCount"] = self.retryCount!
                }
                if self.returnRows != nil {
                    map["ReturnRows"] = self.returnRows!
                }
                if self.rowCacheHit != nil {
                    map["RowCacheHit"] = self.rowCacheHit!
                }
                if self.scheduleTime != nil {
                    map["ScheduleTime"] = self.scheduleTime!
                }
                if self.sqlId != nil {
                    map["SqlId"] = self.sqlId!
                }
                if self.sqlType != nil {
                    map["SqlType"] = self.sqlType!
                }
                if self.ssstoreReadRowCount != nil {
                    map["SsstoreReadRowCount"] = self.ssstoreReadRowCount!
                }
                if self.tenantName != nil {
                    map["TenantName"] = self.tenantName!
                }
                if self.totalWaitTime != nil {
                    map["TotalWaitTime"] = self.totalWaitTime!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AffectedRows") && dict["AffectedRows"] != nil {
                    self.affectedRows = dict["AffectedRows"] as! Double
                }
                if dict.keys.contains("AppWaitTime") && dict["AppWaitTime"] != nil {
                    self.appWaitTime = dict["AppWaitTime"] as! Double
                }
                if dict.keys.contains("BlockCacheHit") && dict["BlockCacheHit"] != nil {
                    self.blockCacheHit = dict["BlockCacheHit"] as! Double
                }
                if dict.keys.contains("BlockIndexCacheHit") && dict["BlockIndexCacheHit"] != nil {
                    self.blockIndexCacheHit = dict["BlockIndexCacheHit"] as! Double
                }
                if dict.keys.contains("BloomFilterCacheHit") && dict["BloomFilterCacheHit"] != nil {
                    self.bloomFilterCacheHit = dict["BloomFilterCacheHit"] as! Double
                }
                if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
                    self.clientIp = dict["ClientIp"] as! String
                }
                if dict.keys.contains("ConcurrencyWaitTime") && dict["ConcurrencyWaitTime"] != nil {
                    self.concurrencyWaitTime = dict["ConcurrencyWaitTime"] as! Double
                }
                if dict.keys.contains("CpuTime") && dict["CpuTime"] != nil {
                    self.cpuTime = dict["CpuTime"] as! Double
                }
                if dict.keys.contains("DbName") && dict["DbName"] != nil {
                    self.dbName = dict["DbName"] as! String
                }
                if dict.keys.contains("DecodeTime") && dict["DecodeTime"] != nil {
                    self.decodeTime = dict["DecodeTime"] as! Double
                }
                if dict.keys.contains("DiskRead") && dict["DiskRead"] != nil {
                    self.diskRead = dict["DiskRead"] as! Double
                }
                if dict.keys.contains("ElapsedTime") && dict["ElapsedTime"] != nil {
                    self.elapsedTime = dict["ElapsedTime"] as! Double
                }
                if dict.keys.contains("EndTimeUTCString") && dict["EndTimeUTCString"] != nil {
                    self.endTimeUTCString = dict["EndTimeUTCString"] as! String
                }
                if dict.keys.contains("Event") && dict["Event"] != nil {
                    self.event = dict["Event"] as! String
                }
                if dict.keys.contains("ExecPerSecond") && dict["ExecPerSecond"] != nil {
                    self.execPerSecond = dict["ExecPerSecond"] as! Double
                }
                if dict.keys.contains("ExecuteTime") && dict["ExecuteTime"] != nil {
                    self.executeTime = dict["ExecuteTime"] as! Double
                }
                if dict.keys.contains("Executions") && dict["Executions"] != nil {
                    self.executions = dict["Executions"] as! Double
                }
                if dict.keys.contains("FailTimes") && dict["FailTimes"] != nil {
                    self.failTimes = dict["FailTimes"] as! Double
                }
                if dict.keys.contains("GetPlanTime") && dict["GetPlanTime"] != nil {
                    self.getPlanTime = dict["GetPlanTime"] as! Double
                }
                if dict.keys.contains("IOWaitTime") && dict["IOWaitTime"] != nil {
                    self.IOWaitTime = dict["IOWaitTime"] as! Double
                }
                if dict.keys.contains("LogicalRead") && dict["LogicalRead"] != nil {
                    self.logicalRead = dict["LogicalRead"] as! Double
                }
                if dict.keys.contains("MaxCpuTime") && dict["MaxCpuTime"] != nil {
                    self.maxCpuTime = dict["MaxCpuTime"] as! Double
                }
                if dict.keys.contains("MaxElapsedTime") && dict["MaxElapsedTime"] != nil {
                    self.maxElapsedTime = dict["MaxElapsedTime"] as! Double
                }
                if dict.keys.contains("MemstoreReadRowCount") && dict["MemstoreReadRowCount"] != nil {
                    self.memstoreReadRowCount = dict["MemstoreReadRowCount"] as! Double
                }
                if dict.keys.contains("MissPlans") && dict["MissPlans"] != nil {
                    self.missPlans = dict["MissPlans"] as! Double
                }
                if dict.keys.contains("NetWaitTime") && dict["NetWaitTime"] != nil {
                    self.netWaitTime = dict["NetWaitTime"] as! Double
                }
                if dict.keys.contains("NodeIp") && dict["NodeIp"] != nil {
                    self.nodeIp = dict["NodeIp"] as! String
                }
                if dict.keys.contains("QueueTime") && dict["QueueTime"] != nil {
                    self.queueTime = dict["QueueTime"] as! Double
                }
                if dict.keys.contains("RPCCount") && dict["RPCCount"] != nil {
                    self.RPCCount = dict["RPCCount"] as! Double
                }
                if dict.keys.contains("RemotePlans") && dict["RemotePlans"] != nil {
                    self.remotePlans = dict["RemotePlans"] as! Double
                }
                if dict.keys.contains("RetryCount") && dict["RetryCount"] != nil {
                    self.retryCount = dict["RetryCount"] as! Double
                }
                if dict.keys.contains("ReturnRows") && dict["ReturnRows"] != nil {
                    self.returnRows = dict["ReturnRows"] as! Double
                }
                if dict.keys.contains("RowCacheHit") && dict["RowCacheHit"] != nil {
                    self.rowCacheHit = dict["RowCacheHit"] as! Double
                }
                if dict.keys.contains("ScheduleTime") && dict["ScheduleTime"] != nil {
                    self.scheduleTime = dict["ScheduleTime"] as! Double
                }
                if dict.keys.contains("SqlId") && dict["SqlId"] != nil {
                    self.sqlId = dict["SqlId"] as! String
                }
                if dict.keys.contains("SqlType") && dict["SqlType"] != nil {
                    self.sqlType = dict["SqlType"] as! String
                }
                if dict.keys.contains("SsstoreReadRowCount") && dict["SsstoreReadRowCount"] != nil {
                    self.ssstoreReadRowCount = dict["SsstoreReadRowCount"] as! Double
                }
                if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
                    self.tenantName = dict["TenantName"] as! String
                }
                if dict.keys.contains("TotalWaitTime") && dict["TotalWaitTime"] != nil {
                    self.totalWaitTime = dict["TotalWaitTime"] as! Double
                }
                if dict.keys.contains("UserName") && dict["UserName"] != nil {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var count: Int64?

        public var list: [DescribeSlowSQLHistoryListResponseBody.SlowSQLHistoryList.List]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [DescribeSlowSQLHistoryListResponseBody.SlowSQLHistoryList.List] = []
                for v in dict["List"] as! [Any] {
                    var model = DescribeSlowSQLHistoryListResponseBody.SlowSQLHistoryList.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
        }
    }
    public var requestId: String?

    public var slowSQLHistoryList: DescribeSlowSQLHistoryListResponseBody.SlowSQLHistoryList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.slowSQLHistoryList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slowSQLHistoryList != nil {
            map["SlowSQLHistoryList"] = self.slowSQLHistoryList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SlowSQLHistoryList") && dict["SlowSQLHistoryList"] != nil {
            var model = DescribeSlowSQLHistoryListResponseBody.SlowSQLHistoryList()
            model.fromMap(dict["SlowSQLHistoryList"] as! [String: Any])
            self.slowSQLHistoryList = model
        }
    }
}

public class DescribeSlowSQLHistoryListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlowSQLHistoryListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSlowSQLHistoryListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSlowSQLListRequest : Tea.TeaModel {
    public var dbName: String?

    public var endTime: String?

    public var filterCondition: [String: Any]?

    public var nodeIp: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: String?

    public var searchKeyWord: String?

    public var searchParameter: String?

    public var searchRule: String?

    public var searchValue: String?

    public var sortColumn: String?

    public var sortOrder: String?

    public var startTime: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterCondition != nil {
            map["FilterCondition"] = self.filterCondition!
        }
        if self.nodeIp != nil {
            map["NodeIp"] = self.nodeIp!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.searchKeyWord != nil {
            map["SearchKeyWord"] = self.searchKeyWord!
        }
        if self.searchParameter != nil {
            map["SearchParameter"] = self.searchParameter!
        }
        if self.searchRule != nil {
            map["SearchRule"] = self.searchRule!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        if self.sortColumn != nil {
            map["SortColumn"] = self.sortColumn!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterCondition") && dict["FilterCondition"] != nil {
            self.filterCondition = dict["FilterCondition"] as! [String: Any]
        }
        if dict.keys.contains("NodeIp") && dict["NodeIp"] != nil {
            self.nodeIp = dict["NodeIp"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") && dict["SQLId"] != nil {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("SearchKeyWord") && dict["SearchKeyWord"] != nil {
            self.searchKeyWord = dict["SearchKeyWord"] as! String
        }
        if dict.keys.contains("SearchParameter") && dict["SearchParameter"] != nil {
            self.searchParameter = dict["SearchParameter"] as! String
        }
        if dict.keys.contains("SearchRule") && dict["SearchRule"] != nil {
            self.searchRule = dict["SearchRule"] as! String
        }
        if dict.keys.contains("SearchValue") && dict["SearchValue"] != nil {
            self.searchValue = dict["SearchValue"] as! String
        }
        if dict.keys.contains("SortColumn") && dict["SortColumn"] != nil {
            self.sortColumn = dict["SortColumn"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeSlowSQLListShrinkRequest : Tea.TeaModel {
    public var dbName: String?

    public var endTime: String?

    public var filterConditionShrink: String?

    public var nodeIp: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: String?

    public var searchKeyWord: String?

    public var searchParameter: String?

    public var searchRule: String?

    public var searchValue: String?

    public var sortColumn: String?

    public var sortOrder: String?

    public var startTime: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterConditionShrink != nil {
            map["FilterCondition"] = self.filterConditionShrink!
        }
        if self.nodeIp != nil {
            map["NodeIp"] = self.nodeIp!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.searchKeyWord != nil {
            map["SearchKeyWord"] = self.searchKeyWord!
        }
        if self.searchParameter != nil {
            map["SearchParameter"] = self.searchParameter!
        }
        if self.searchRule != nil {
            map["SearchRule"] = self.searchRule!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        if self.sortColumn != nil {
            map["SortColumn"] = self.sortColumn!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterCondition") && dict["FilterCondition"] != nil {
            self.filterConditionShrink = dict["FilterCondition"] as! String
        }
        if dict.keys.contains("NodeIp") && dict["NodeIp"] != nil {
            self.nodeIp = dict["NodeIp"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") && dict["SQLId"] != nil {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("SearchKeyWord") && dict["SearchKeyWord"] != nil {
            self.searchKeyWord = dict["SearchKeyWord"] as! String
        }
        if dict.keys.contains("SearchParameter") && dict["SearchParameter"] != nil {
            self.searchParameter = dict["SearchParameter"] as! String
        }
        if dict.keys.contains("SearchRule") && dict["SearchRule"] != nil {
            self.searchRule = dict["SearchRule"] as! String
        }
        if dict.keys.contains("SearchValue") && dict["SearchValue"] != nil {
            self.searchValue = dict["SearchValue"] as! String
        }
        if dict.keys.contains("SortColumn") && dict["SortColumn"] != nil {
            self.sortColumn = dict["SortColumn"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeSlowSQLListResponseBody : Tea.TeaModel {
    public class SlowSQLList : Tea.TeaModel {
        public var affectedRows: Int64?

        public var appWaitTime: Double?

        public var blockCacheHit: Int64?

        public var blockIndexCacheHit: Int64?

        public var bloomFilterCacheHit: Int64?

        public var clientIp: String?

        public var concurrencyWaitTime: Double?

        public var cpuTime: Double?

        public var dbName: String?

        public var decodeTime: Double?

        public var diskRead: Int64?

        public var elapsedTime: Double?

        public var event: String?

        public var execPerSecond: Double?

        public var executeTime: Double?

        public var executions: Int64?

        public var failTimes: Int64?

        public var getPlanTime: Double?

        public var IOWaitTime: Double?

        public var key: Int64?

        public var logicalRead: Int64?

        public var maxCpuTime: Double?

        public var maxElapsedTime: Double?

        public var memstoreReadRowCount: Int64?

        public var missPlans: Int64?

        public var netWaitTime: Double?

        public var nodeIp: String?

        public var queueTime: Double?

        public var RPCCount: Int64?

        public var remotePlans: Int64?

        public var retryCount: Int64?

        public var returnRows: Int64?

        public var rowCacheHit: Int64?

        public var SQLId: String?

        public var SQLText: String?

        public var SQLType: Int64?

        public var scheduleTime: Double?

        public var ssstoreReadRowCount: Int64?

        public var totalWaitTime: Double?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.affectedRows != nil {
                map["AffectedRows"] = self.affectedRows!
            }
            if self.appWaitTime != nil {
                map["AppWaitTime"] = self.appWaitTime!
            }
            if self.blockCacheHit != nil {
                map["BlockCacheHit"] = self.blockCacheHit!
            }
            if self.blockIndexCacheHit != nil {
                map["BlockIndexCacheHit"] = self.blockIndexCacheHit!
            }
            if self.bloomFilterCacheHit != nil {
                map["BloomFilterCacheHit"] = self.bloomFilterCacheHit!
            }
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.concurrencyWaitTime != nil {
                map["ConcurrencyWaitTime"] = self.concurrencyWaitTime!
            }
            if self.cpuTime != nil {
                map["CpuTime"] = self.cpuTime!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.decodeTime != nil {
                map["DecodeTime"] = self.decodeTime!
            }
            if self.diskRead != nil {
                map["DiskRead"] = self.diskRead!
            }
            if self.elapsedTime != nil {
                map["ElapsedTime"] = self.elapsedTime!
            }
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.execPerSecond != nil {
                map["ExecPerSecond"] = self.execPerSecond!
            }
            if self.executeTime != nil {
                map["ExecuteTime"] = self.executeTime!
            }
            if self.executions != nil {
                map["Executions"] = self.executions!
            }
            if self.failTimes != nil {
                map["FailTimes"] = self.failTimes!
            }
            if self.getPlanTime != nil {
                map["GetPlanTime"] = self.getPlanTime!
            }
            if self.IOWaitTime != nil {
                map["IOWaitTime"] = self.IOWaitTime!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.logicalRead != nil {
                map["LogicalRead"] = self.logicalRead!
            }
            if self.maxCpuTime != nil {
                map["MaxCpuTime"] = self.maxCpuTime!
            }
            if self.maxElapsedTime != nil {
                map["MaxElapsedTime"] = self.maxElapsedTime!
            }
            if self.memstoreReadRowCount != nil {
                map["MemstoreReadRowCount"] = self.memstoreReadRowCount!
            }
            if self.missPlans != nil {
                map["MissPlans"] = self.missPlans!
            }
            if self.netWaitTime != nil {
                map["NetWaitTime"] = self.netWaitTime!
            }
            if self.nodeIp != nil {
                map["NodeIp"] = self.nodeIp!
            }
            if self.queueTime != nil {
                map["QueueTime"] = self.queueTime!
            }
            if self.RPCCount != nil {
                map["RPCCount"] = self.RPCCount!
            }
            if self.remotePlans != nil {
                map["RemotePlans"] = self.remotePlans!
            }
            if self.retryCount != nil {
                map["RetryCount"] = self.retryCount!
            }
            if self.returnRows != nil {
                map["ReturnRows"] = self.returnRows!
            }
            if self.rowCacheHit != nil {
                map["RowCacheHit"] = self.rowCacheHit!
            }
            if self.SQLId != nil {
                map["SQLId"] = self.SQLId!
            }
            if self.SQLText != nil {
                map["SQLText"] = self.SQLText!
            }
            if self.SQLType != nil {
                map["SQLType"] = self.SQLType!
            }
            if self.scheduleTime != nil {
                map["ScheduleTime"] = self.scheduleTime!
            }
            if self.ssstoreReadRowCount != nil {
                map["SsstoreReadRowCount"] = self.ssstoreReadRowCount!
            }
            if self.totalWaitTime != nil {
                map["TotalWaitTime"] = self.totalWaitTime!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AffectedRows") && dict["AffectedRows"] != nil {
                self.affectedRows = dict["AffectedRows"] as! Int64
            }
            if dict.keys.contains("AppWaitTime") && dict["AppWaitTime"] != nil {
                self.appWaitTime = dict["AppWaitTime"] as! Double
            }
            if dict.keys.contains("BlockCacheHit") && dict["BlockCacheHit"] != nil {
                self.blockCacheHit = dict["BlockCacheHit"] as! Int64
            }
            if dict.keys.contains("BlockIndexCacheHit") && dict["BlockIndexCacheHit"] != nil {
                self.blockIndexCacheHit = dict["BlockIndexCacheHit"] as! Int64
            }
            if dict.keys.contains("BloomFilterCacheHit") && dict["BloomFilterCacheHit"] != nil {
                self.bloomFilterCacheHit = dict["BloomFilterCacheHit"] as! Int64
            }
            if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("ConcurrencyWaitTime") && dict["ConcurrencyWaitTime"] != nil {
                self.concurrencyWaitTime = dict["ConcurrencyWaitTime"] as! Double
            }
            if dict.keys.contains("CpuTime") && dict["CpuTime"] != nil {
                self.cpuTime = dict["CpuTime"] as! Double
            }
            if dict.keys.contains("DbName") && dict["DbName"] != nil {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("DecodeTime") && dict["DecodeTime"] != nil {
                self.decodeTime = dict["DecodeTime"] as! Double
            }
            if dict.keys.contains("DiskRead") && dict["DiskRead"] != nil {
                self.diskRead = dict["DiskRead"] as! Int64
            }
            if dict.keys.contains("ElapsedTime") && dict["ElapsedTime"] != nil {
                self.elapsedTime = dict["ElapsedTime"] as! Double
            }
            if dict.keys.contains("Event") && dict["Event"] != nil {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("ExecPerSecond") && dict["ExecPerSecond"] != nil {
                self.execPerSecond = dict["ExecPerSecond"] as! Double
            }
            if dict.keys.contains("ExecuteTime") && dict["ExecuteTime"] != nil {
                self.executeTime = dict["ExecuteTime"] as! Double
            }
            if dict.keys.contains("Executions") && dict["Executions"] != nil {
                self.executions = dict["Executions"] as! Int64
            }
            if dict.keys.contains("FailTimes") && dict["FailTimes"] != nil {
                self.failTimes = dict["FailTimes"] as! Int64
            }
            if dict.keys.contains("GetPlanTime") && dict["GetPlanTime"] != nil {
                self.getPlanTime = dict["GetPlanTime"] as! Double
            }
            if dict.keys.contains("IOWaitTime") && dict["IOWaitTime"] != nil {
                self.IOWaitTime = dict["IOWaitTime"] as! Double
            }
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! Int64
            }
            if dict.keys.contains("LogicalRead") && dict["LogicalRead"] != nil {
                self.logicalRead = dict["LogicalRead"] as! Int64
            }
            if dict.keys.contains("MaxCpuTime") && dict["MaxCpuTime"] != nil {
                self.maxCpuTime = dict["MaxCpuTime"] as! Double
            }
            if dict.keys.contains("MaxElapsedTime") && dict["MaxElapsedTime"] != nil {
                self.maxElapsedTime = dict["MaxElapsedTime"] as! Double
            }
            if dict.keys.contains("MemstoreReadRowCount") && dict["MemstoreReadRowCount"] != nil {
                self.memstoreReadRowCount = dict["MemstoreReadRowCount"] as! Int64
            }
            if dict.keys.contains("MissPlans") && dict["MissPlans"] != nil {
                self.missPlans = dict["MissPlans"] as! Int64
            }
            if dict.keys.contains("NetWaitTime") && dict["NetWaitTime"] != nil {
                self.netWaitTime = dict["NetWaitTime"] as! Double
            }
            if dict.keys.contains("NodeIp") && dict["NodeIp"] != nil {
                self.nodeIp = dict["NodeIp"] as! String
            }
            if dict.keys.contains("QueueTime") && dict["QueueTime"] != nil {
                self.queueTime = dict["QueueTime"] as! Double
            }
            if dict.keys.contains("RPCCount") && dict["RPCCount"] != nil {
                self.RPCCount = dict["RPCCount"] as! Int64
            }
            if dict.keys.contains("RemotePlans") && dict["RemotePlans"] != nil {
                self.remotePlans = dict["RemotePlans"] as! Int64
            }
            if dict.keys.contains("RetryCount") && dict["RetryCount"] != nil {
                self.retryCount = dict["RetryCount"] as! Int64
            }
            if dict.keys.contains("ReturnRows") && dict["ReturnRows"] != nil {
                self.returnRows = dict["ReturnRows"] as! Int64
            }
            if dict.keys.contains("RowCacheHit") && dict["RowCacheHit"] != nil {
                self.rowCacheHit = dict["RowCacheHit"] as! Int64
            }
            if dict.keys.contains("SQLId") && dict["SQLId"] != nil {
                self.SQLId = dict["SQLId"] as! String
            }
            if dict.keys.contains("SQLText") && dict["SQLText"] != nil {
                self.SQLText = dict["SQLText"] as! String
            }
            if dict.keys.contains("SQLType") && dict["SQLType"] != nil {
                self.SQLType = dict["SQLType"] as! Int64
            }
            if dict.keys.contains("ScheduleTime") && dict["ScheduleTime"] != nil {
                self.scheduleTime = dict["ScheduleTime"] as! Double
            }
            if dict.keys.contains("SsstoreReadRowCount") && dict["SsstoreReadRowCount"] != nil {
                self.ssstoreReadRowCount = dict["SsstoreReadRowCount"] as! Int64
            }
            if dict.keys.contains("TotalWaitTime") && dict["TotalWaitTime"] != nil {
                self.totalWaitTime = dict["TotalWaitTime"] as! Double
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var requestId: String?

    public var slowSQLList: [DescribeSlowSQLListResponseBody.SlowSQLList]?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slowSQLList != nil {
            var tmp : [Any] = []
            for k in self.slowSQLList! {
                tmp.append(k.toMap())
            }
            map["SlowSQLList"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SlowSQLList") && dict["SlowSQLList"] != nil {
            var tmp : [DescribeSlowSQLListResponseBody.SlowSQLList] = []
            for v in dict["SlowSQLList"] as! [Any] {
                var model = DescribeSlowSQLListResponseBody.SlowSQLList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.slowSQLList = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeSlowSQLListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlowSQLListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSlowSQLListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTenantRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeTenantResponseBody : Tea.TeaModel {
    public class Tenant : Tea.TeaModel {
        public class TenantConnections : Tea.TeaModel {
            public var addressType: String?

            public var connectionRole: String?

            public var connectionZones: [String]?

            public var internetAddress: String?

            public var internetAddressStatus: String?

            public var internetPort: Int32?

            public var intranetAddress: String?

            public var intranetAddressMasterZoneId: String?

            public var intranetAddressSlaveZoneId: String?

            public var intranetAddressStatus: String?

            public var intranetPort: Int32?

            public var transactionSplit: Bool?

            public var vSwitchId: String?

            public var vpcId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addressType != nil {
                    map["AddressType"] = self.addressType!
                }
                if self.connectionRole != nil {
                    map["ConnectionRole"] = self.connectionRole!
                }
                if self.connectionZones != nil {
                    map["ConnectionZones"] = self.connectionZones!
                }
                if self.internetAddress != nil {
                    map["InternetAddress"] = self.internetAddress!
                }
                if self.internetAddressStatus != nil {
                    map["InternetAddressStatus"] = self.internetAddressStatus!
                }
                if self.internetPort != nil {
                    map["InternetPort"] = self.internetPort!
                }
                if self.intranetAddress != nil {
                    map["IntranetAddress"] = self.intranetAddress!
                }
                if self.intranetAddressMasterZoneId != nil {
                    map["IntranetAddressMasterZoneId"] = self.intranetAddressMasterZoneId!
                }
                if self.intranetAddressSlaveZoneId != nil {
                    map["IntranetAddressSlaveZoneId"] = self.intranetAddressSlaveZoneId!
                }
                if self.intranetAddressStatus != nil {
                    map["IntranetAddressStatus"] = self.intranetAddressStatus!
                }
                if self.intranetPort != nil {
                    map["IntranetPort"] = self.intranetPort!
                }
                if self.transactionSplit != nil {
                    map["TransactionSplit"] = self.transactionSplit!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddressType") && dict["AddressType"] != nil {
                    self.addressType = dict["AddressType"] as! String
                }
                if dict.keys.contains("ConnectionRole") && dict["ConnectionRole"] != nil {
                    self.connectionRole = dict["ConnectionRole"] as! String
                }
                if dict.keys.contains("ConnectionZones") && dict["ConnectionZones"] != nil {
                    self.connectionZones = dict["ConnectionZones"] as! [String]
                }
                if dict.keys.contains("InternetAddress") && dict["InternetAddress"] != nil {
                    self.internetAddress = dict["InternetAddress"] as! String
                }
                if dict.keys.contains("InternetAddressStatus") && dict["InternetAddressStatus"] != nil {
                    self.internetAddressStatus = dict["InternetAddressStatus"] as! String
                }
                if dict.keys.contains("InternetPort") && dict["InternetPort"] != nil {
                    self.internetPort = dict["InternetPort"] as! Int32
                }
                if dict.keys.contains("IntranetAddress") && dict["IntranetAddress"] != nil {
                    self.intranetAddress = dict["IntranetAddress"] as! String
                }
                if dict.keys.contains("IntranetAddressMasterZoneId") && dict["IntranetAddressMasterZoneId"] != nil {
                    self.intranetAddressMasterZoneId = dict["IntranetAddressMasterZoneId"] as! String
                }
                if dict.keys.contains("IntranetAddressSlaveZoneId") && dict["IntranetAddressSlaveZoneId"] != nil {
                    self.intranetAddressSlaveZoneId = dict["IntranetAddressSlaveZoneId"] as! String
                }
                if dict.keys.contains("IntranetAddressStatus") && dict["IntranetAddressStatus"] != nil {
                    self.intranetAddressStatus = dict["IntranetAddressStatus"] as! String
                }
                if dict.keys.contains("IntranetPort") && dict["IntranetPort"] != nil {
                    self.intranetPort = dict["IntranetPort"] as! Int32
                }
                if dict.keys.contains("TransactionSplit") && dict["TransactionSplit"] != nil {
                    self.transactionSplit = dict["TransactionSplit"] as! Bool
                }
                if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public class TenantResource : Tea.TeaModel {
            public class Cpu : Tea.TeaModel {
                public var totalCpu: Double?

                public var unitCpu: Double?

                public var usedCpu: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalCpu != nil {
                        map["TotalCpu"] = self.totalCpu!
                    }
                    if self.unitCpu != nil {
                        map["UnitCpu"] = self.unitCpu!
                    }
                    if self.usedCpu != nil {
                        map["UsedCpu"] = self.usedCpu!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalCpu") && dict["TotalCpu"] != nil {
                        self.totalCpu = dict["TotalCpu"] as! Double
                    }
                    if dict.keys.contains("UnitCpu") && dict["UnitCpu"] != nil {
                        self.unitCpu = dict["UnitCpu"] as! Double
                    }
                    if dict.keys.contains("UsedCpu") && dict["UsedCpu"] != nil {
                        self.usedCpu = dict["UsedCpu"] as! Double
                    }
                }
            }
            public class DiskSize : Tea.TeaModel {
                public var usedDiskSize: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.usedDiskSize != nil {
                        map["UsedDiskSize"] = self.usedDiskSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("UsedDiskSize") && dict["UsedDiskSize"] != nil {
                        self.usedDiskSize = dict["UsedDiskSize"] as! Double
                    }
                }
            }
            public class Memory : Tea.TeaModel {
                public var totalMemory: Double?

                public var unitMemory: Double?

                public var usedMemory: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalMemory != nil {
                        map["TotalMemory"] = self.totalMemory!
                    }
                    if self.unitMemory != nil {
                        map["UnitMemory"] = self.unitMemory!
                    }
                    if self.usedMemory != nil {
                        map["UsedMemory"] = self.usedMemory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalMemory") && dict["TotalMemory"] != nil {
                        self.totalMemory = dict["TotalMemory"] as! Double
                    }
                    if dict.keys.contains("UnitMemory") && dict["UnitMemory"] != nil {
                        self.unitMemory = dict["UnitMemory"] as! Double
                    }
                    if dict.keys.contains("UsedMemory") && dict["UsedMemory"] != nil {
                        self.usedMemory = dict["UsedMemory"] as! Double
                    }
                }
            }
            public var cpu: DescribeTenantResponseBody.Tenant.TenantResource.Cpu?

            public var diskSize: DescribeTenantResponseBody.Tenant.TenantResource.DiskSize?

            public var memory: DescribeTenantResponseBody.Tenant.TenantResource.Memory?

            public var unitNum: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cpu?.validate()
                try self.diskSize?.validate()
                try self.memory?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpu != nil {
                    map["Cpu"] = self.cpu?.toMap()
                }
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize?.toMap()
                }
                if self.memory != nil {
                    map["Memory"] = self.memory?.toMap()
                }
                if self.unitNum != nil {
                    map["UnitNum"] = self.unitNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                    var model = DescribeTenantResponseBody.Tenant.TenantResource.Cpu()
                    model.fromMap(dict["Cpu"] as! [String: Any])
                    self.cpu = model
                }
                if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
                    var model = DescribeTenantResponseBody.Tenant.TenantResource.DiskSize()
                    model.fromMap(dict["DiskSize"] as! [String: Any])
                    self.diskSize = model
                }
                if dict.keys.contains("Memory") && dict["Memory"] != nil {
                    var model = DescribeTenantResponseBody.Tenant.TenantResource.Memory()
                    model.fromMap(dict["Memory"] as! [String: Any])
                    self.memory = model
                }
                if dict.keys.contains("UnitNum") && dict["UnitNum"] != nil {
                    self.unitNum = dict["UnitNum"] as! Int32
                }
            }
        }
        public class TenantZones : Tea.TeaModel {
            public var region: String?

            public var tenantZoneId: String?

            public var tenantZoneRole: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.tenantZoneId != nil {
                    map["TenantZoneId"] = self.tenantZoneId!
                }
                if self.tenantZoneRole != nil {
                    map["TenantZoneRole"] = self.tenantZoneRole!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Region") && dict["Region"] != nil {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("TenantZoneId") && dict["TenantZoneId"] != nil {
                    self.tenantZoneId = dict["TenantZoneId"] as! String
                }
                if dict.keys.contains("TenantZoneRole") && dict["TenantZoneRole"] != nil {
                    self.tenantZoneRole = dict["TenantZoneRole"] as! String
                }
            }
        }
        public var availableZones: [String]?

        public var charset: String?

        public var clogServiceStatus: String?

        public var collation: String?

        public var createTime: String?

        public var deployMode: String?

        public var deployType: String?

        public var description_: String?

        public var diskType: String?

        public var enableBinlogService: Bool?

        public var enableClogService: Bool?

        public var enableInternetAddressService: Bool?

        public var enableReadWriteSplit: Bool?

        public var instanceType: String?

        public var masterIntranetAddressZone: String?

        public var payType: String?

        public var primaryZone: String?

        public var primaryZoneDeployType: String?

        public var series: String?

        public var status: String?

        public var tenantConnections: [DescribeTenantResponseBody.Tenant.TenantConnections]?

        public var tenantId: String?

        public var tenantMode: String?

        public var tenantName: String?

        public var tenantResource: DescribeTenantResponseBody.Tenant.TenantResource?

        public var tenantZones: [DescribeTenantResponseBody.Tenant.TenantZones]?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.tenantResource?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.availableZones != nil {
                map["AvailableZones"] = self.availableZones!
            }
            if self.charset != nil {
                map["Charset"] = self.charset!
            }
            if self.clogServiceStatus != nil {
                map["ClogServiceStatus"] = self.clogServiceStatus!
            }
            if self.collation != nil {
                map["Collation"] = self.collation!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deployMode != nil {
                map["DeployMode"] = self.deployMode!
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.diskType != nil {
                map["DiskType"] = self.diskType!
            }
            if self.enableBinlogService != nil {
                map["EnableBinlogService"] = self.enableBinlogService!
            }
            if self.enableClogService != nil {
                map["EnableClogService"] = self.enableClogService!
            }
            if self.enableInternetAddressService != nil {
                map["EnableInternetAddressService"] = self.enableInternetAddressService!
            }
            if self.enableReadWriteSplit != nil {
                map["EnableReadWriteSplit"] = self.enableReadWriteSplit!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.masterIntranetAddressZone != nil {
                map["MasterIntranetAddressZone"] = self.masterIntranetAddressZone!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.primaryZone != nil {
                map["PrimaryZone"] = self.primaryZone!
            }
            if self.primaryZoneDeployType != nil {
                map["PrimaryZoneDeployType"] = self.primaryZoneDeployType!
            }
            if self.series != nil {
                map["Series"] = self.series!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tenantConnections != nil {
                var tmp : [Any] = []
                for k in self.tenantConnections! {
                    tmp.append(k.toMap())
                }
                map["TenantConnections"] = tmp
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.tenantMode != nil {
                map["TenantMode"] = self.tenantMode!
            }
            if self.tenantName != nil {
                map["TenantName"] = self.tenantName!
            }
            if self.tenantResource != nil {
                map["TenantResource"] = self.tenantResource?.toMap()
            }
            if self.tenantZones != nil {
                var tmp : [Any] = []
                for k in self.tenantZones! {
                    tmp.append(k.toMap())
                }
                map["TenantZones"] = tmp
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvailableZones") && dict["AvailableZones"] != nil {
                self.availableZones = dict["AvailableZones"] as! [String]
            }
            if dict.keys.contains("Charset") && dict["Charset"] != nil {
                self.charset = dict["Charset"] as! String
            }
            if dict.keys.contains("ClogServiceStatus") && dict["ClogServiceStatus"] != nil {
                self.clogServiceStatus = dict["ClogServiceStatus"] as! String
            }
            if dict.keys.contains("Collation") && dict["Collation"] != nil {
                self.collation = dict["Collation"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeployMode") && dict["DeployMode"] != nil {
                self.deployMode = dict["DeployMode"] as! String
            }
            if dict.keys.contains("DeployType") && dict["DeployType"] != nil {
                self.deployType = dict["DeployType"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
                self.diskType = dict["DiskType"] as! String
            }
            if dict.keys.contains("EnableBinlogService") && dict["EnableBinlogService"] != nil {
                self.enableBinlogService = dict["EnableBinlogService"] as! Bool
            }
            if dict.keys.contains("EnableClogService") && dict["EnableClogService"] != nil {
                self.enableClogService = dict["EnableClogService"] as! Bool
            }
            if dict.keys.contains("EnableInternetAddressService") && dict["EnableInternetAddressService"] != nil {
                self.enableInternetAddressService = dict["EnableInternetAddressService"] as! Bool
            }
            if dict.keys.contains("EnableReadWriteSplit") && dict["EnableReadWriteSplit"] != nil {
                self.enableReadWriteSplit = dict["EnableReadWriteSplit"] as! Bool
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("MasterIntranetAddressZone") && dict["MasterIntranetAddressZone"] != nil {
                self.masterIntranetAddressZone = dict["MasterIntranetAddressZone"] as! String
            }
            if dict.keys.contains("PayType") && dict["PayType"] != nil {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("PrimaryZone") && dict["PrimaryZone"] != nil {
                self.primaryZone = dict["PrimaryZone"] as! String
            }
            if dict.keys.contains("PrimaryZoneDeployType") && dict["PrimaryZoneDeployType"] != nil {
                self.primaryZoneDeployType = dict["PrimaryZoneDeployType"] as! String
            }
            if dict.keys.contains("Series") && dict["Series"] != nil {
                self.series = dict["Series"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TenantConnections") && dict["TenantConnections"] != nil {
                var tmp : [DescribeTenantResponseBody.Tenant.TenantConnections] = []
                for v in dict["TenantConnections"] as! [Any] {
                    var model = DescribeTenantResponseBody.Tenant.TenantConnections()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tenantConnections = tmp
            }
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("TenantMode") && dict["TenantMode"] != nil {
                self.tenantMode = dict["TenantMode"] as! String
            }
            if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
                self.tenantName = dict["TenantName"] as! String
            }
            if dict.keys.contains("TenantResource") && dict["TenantResource"] != nil {
                var model = DescribeTenantResponseBody.Tenant.TenantResource()
                model.fromMap(dict["TenantResource"] as! [String: Any])
                self.tenantResource = model
            }
            if dict.keys.contains("TenantZones") && dict["TenantZones"] != nil {
                var tmp : [DescribeTenantResponseBody.Tenant.TenantZones] = []
                for v in dict["TenantZones"] as! [Any] {
                    var model = DescribeTenantResponseBody.Tenant.TenantZones()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tenantZones = tmp
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var requestId: String?

    public var tenant: DescribeTenantResponseBody.Tenant?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenant?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenant != nil {
            map["Tenant"] = self.tenant?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tenant") && dict["Tenant"] != nil {
            var model = DescribeTenantResponseBody.Tenant()
            model.fromMap(dict["Tenant"] as! [String: Any])
            self.tenant = model
        }
    }
}

public class DescribeTenantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTenantResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTenantResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTenantMetricsRequest : Tea.TeaModel {
    public var endTime: String?

    public var instanceId: String?

    public var metrics: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public var tenantId: String?

    public var tenantIdList: String?

    public var tenantName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.metrics != nil {
            map["Metrics"] = self.metrics!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.tenantIdList != nil {
            map["TenantIdList"] = self.tenantIdList!
        }
        if self.tenantName != nil {
            map["TenantName"] = self.tenantName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Metrics") && dict["Metrics"] != nil {
            self.metrics = dict["Metrics"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("TenantIdList") && dict["TenantIdList"] != nil {
            self.tenantIdList = dict["TenantIdList"] as! String
        }
        if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
            self.tenantName = dict["TenantName"] as! String
        }
    }
}

public class DescribeTenantMetricsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tenantMetrics: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantMetrics != nil {
            map["TenantMetrics"] = self.tenantMetrics!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantMetrics") && dict["TenantMetrics"] != nil {
            self.tenantMetrics = dict["TenantMetrics"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeTenantMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTenantMetricsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTenantMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTenantSecurityConfigsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeTenantSecurityConfigsResponseBody : Tea.TeaModel {
    public class Configs : Tea.TeaModel {
        public class TenantSecurityConfigs : Tea.TeaModel {
            public class SecurityConfigs : Tea.TeaModel {
                public var configDescription: String?

                public var configGroup: String?

                public var configName: String?

                public var risk: Bool?

                public var riskDescription: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.configDescription != nil {
                        map["ConfigDescription"] = self.configDescription!
                    }
                    if self.configGroup != nil {
                        map["ConfigGroup"] = self.configGroup!
                    }
                    if self.configName != nil {
                        map["ConfigName"] = self.configName!
                    }
                    if self.risk != nil {
                        map["Risk"] = self.risk!
                    }
                    if self.riskDescription != nil {
                        map["RiskDescription"] = self.riskDescription!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConfigDescription") && dict["ConfigDescription"] != nil {
                        self.configDescription = dict["ConfigDescription"] as! String
                    }
                    if dict.keys.contains("ConfigGroup") && dict["ConfigGroup"] != nil {
                        self.configGroup = dict["ConfigGroup"] as! String
                    }
                    if dict.keys.contains("ConfigName") && dict["ConfigName"] != nil {
                        self.configName = dict["ConfigName"] as! String
                    }
                    if dict.keys.contains("Risk") && dict["Risk"] != nil {
                        self.risk = dict["Risk"] as! Bool
                    }
                    if dict.keys.contains("RiskDescription") && dict["RiskDescription"] != nil {
                        self.riskDescription = dict["RiskDescription"] as! String
                    }
                }
            }
            public var riskCount: Int32?

            public var securityConfigs: [DescribeTenantSecurityConfigsResponseBody.Configs.TenantSecurityConfigs.SecurityConfigs]?

            public var tenantId: String?

            public var tenantName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.riskCount != nil {
                    map["RiskCount"] = self.riskCount!
                }
                if self.securityConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.securityConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["SecurityConfigs"] = tmp
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.tenantName != nil {
                    map["TenantName"] = self.tenantName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RiskCount") && dict["RiskCount"] != nil {
                    self.riskCount = dict["RiskCount"] as! Int32
                }
                if dict.keys.contains("SecurityConfigs") && dict["SecurityConfigs"] != nil {
                    var tmp : [DescribeTenantSecurityConfigsResponseBody.Configs.TenantSecurityConfigs.SecurityConfigs] = []
                    for v in dict["SecurityConfigs"] as! [Any] {
                        var model = DescribeTenantSecurityConfigsResponseBody.Configs.TenantSecurityConfigs.SecurityConfigs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.securityConfigs = tmp
                }
                if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                    self.tenantId = dict["TenantId"] as! String
                }
                if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
                    self.tenantName = dict["TenantName"] as! String
                }
            }
        }
        public var tenantSecurityConfigs: [DescribeTenantSecurityConfigsResponseBody.Configs.TenantSecurityConfigs]?

        public var totalCheckCount: Int32?

        public var totalRiskCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantSecurityConfigs != nil {
                var tmp : [Any] = []
                for k in self.tenantSecurityConfigs! {
                    tmp.append(k.toMap())
                }
                map["TenantSecurityConfigs"] = tmp
            }
            if self.totalCheckCount != nil {
                map["TotalCheckCount"] = self.totalCheckCount!
            }
            if self.totalRiskCount != nil {
                map["TotalRiskCount"] = self.totalRiskCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TenantSecurityConfigs") && dict["TenantSecurityConfigs"] != nil {
                var tmp : [DescribeTenantSecurityConfigsResponseBody.Configs.TenantSecurityConfigs] = []
                for v in dict["TenantSecurityConfigs"] as! [Any] {
                    var model = DescribeTenantSecurityConfigsResponseBody.Configs.TenantSecurityConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tenantSecurityConfigs = tmp
            }
            if dict.keys.contains("TotalCheckCount") && dict["TotalCheckCount"] != nil {
                self.totalCheckCount = dict["TotalCheckCount"] as! Int32
            }
            if dict.keys.contains("TotalRiskCount") && dict["TotalRiskCount"] != nil {
                self.totalRiskCount = dict["TotalRiskCount"] as! Int32
            }
        }
    }
    public var configs: DescribeTenantSecurityConfigsResponseBody.Configs?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configs != nil {
            map["Configs"] = self.configs?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Configs") && dict["Configs"] != nil {
            var model = DescribeTenantSecurityConfigsResponseBody.Configs()
            model.fromMap(dict["Configs"] as! [String: Any])
            self.configs = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeTenantSecurityConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTenantSecurityConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTenantSecurityConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTenantSecurityIpGroupsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeTenantSecurityIpGroupsResponseBody : Tea.TeaModel {
    public class SecurityIpGroups : Tea.TeaModel {
        public var securityIpGroupName: String?

        public var securityIpGroupType: String?

        public var securityIps: String?

        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityIpGroupName != nil {
                map["SecurityIpGroupName"] = self.securityIpGroupName!
            }
            if self.securityIpGroupType != nil {
                map["SecurityIpGroupType"] = self.securityIpGroupType!
            }
            if self.securityIps != nil {
                map["SecurityIps"] = self.securityIps!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SecurityIpGroupName") && dict["SecurityIpGroupName"] != nil {
                self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
            }
            if dict.keys.contains("SecurityIpGroupType") && dict["SecurityIpGroupType"] != nil {
                self.securityIpGroupType = dict["SecurityIpGroupType"] as! String
            }
            if dict.keys.contains("SecurityIps") && dict["SecurityIps"] != nil {
                self.securityIps = dict["SecurityIps"] as! String
            }
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! String
            }
        }
    }
    public var requestId: String?

    public var securityIpGroups: [DescribeTenantSecurityIpGroupsResponseBody.SecurityIpGroups]?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityIpGroups != nil {
            var tmp : [Any] = []
            for k in self.securityIpGroups! {
                tmp.append(k.toMap())
            }
            map["SecurityIpGroups"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityIpGroups") && dict["SecurityIpGroups"] != nil {
            var tmp : [DescribeTenantSecurityIpGroupsResponseBody.SecurityIpGroups] = []
            for v in dict["SecurityIpGroups"] as! [Any] {
                var model = DescribeTenantSecurityIpGroupsResponseBody.SecurityIpGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.securityIpGroups = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeTenantSecurityIpGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTenantSecurityIpGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTenantSecurityIpGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTenantTagsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tags: String?

    public var tenantIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.tenantIds != nil {
            map["TenantIds"] = self.tenantIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! String
        }
        if dict.keys.contains("TenantIds") && dict["TenantIds"] != nil {
            self.tenantIds = dict["TenantIds"] as! String
        }
    }
}

public class DescribeTenantTagsResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public var resourceId: String?

        public var resourceType: String?

        public var tag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                self.tag = dict["Tag"] as! String
            }
        }
    }
    public var requestId: String?

    public var tagResources: [DescribeTenantTagsResponseBody.TagResources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["TagResources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") && dict["TagResources"] != nil {
            var tmp : [DescribeTenantTagsResponseBody.TagResources] = []
            for v in dict["TagResources"] as! [Any] {
                var model = DescribeTenantTagsResponseBody.TagResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagResources = tmp
        }
    }
}

public class DescribeTenantTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTenantTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTenantTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTenantUserRolesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var role: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Role") && dict["Role"] != nil {
            self.role = dict["Role"] as! [String]
        }
    }
}

public class DescribeTenantUserRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTenantUserRolesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTenantUserRolesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTenantUsersRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

    public var tenantId: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") && dict["SearchKey"] != nil {
            self.searchKey = dict["SearchKey"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class DescribeTenantUsersResponseBody : Tea.TeaModel {
    public class TenantUsers : Tea.TeaModel {
        public class Databases : Tea.TeaModel {
            public var database: String?

            public var role: String?

            public var table: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.database != nil {
                    map["Database"] = self.database!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.table != nil {
                    map["Table"] = self.table!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Database") && dict["Database"] != nil {
                    self.database = dict["Database"] as! String
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("Table") && dict["Table"] != nil {
                    self.table = dict["Table"] as! String
                }
            }
        }
        public var databases: [DescribeTenantUsersResponseBody.TenantUsers.Databases]?

        public var description_: String?

        public var instanceId: String?

        public var tenantId: String?

        public var userName: String?

        public var userStatus: String?

        public var userType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databases != nil {
                var tmp : [Any] = []
                for k in self.databases! {
                    tmp.append(k.toMap())
                }
                map["Databases"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userStatus != nil {
                map["UserStatus"] = self.userStatus!
            }
            if self.userType != nil {
                map["UserType"] = self.userType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Databases") && dict["Databases"] != nil {
                var tmp : [DescribeTenantUsersResponseBody.TenantUsers.Databases] = []
                for v in dict["Databases"] as! [Any] {
                    var model = DescribeTenantUsersResponseBody.TenantUsers.Databases()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.databases = tmp
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("UserStatus") && dict["UserStatus"] != nil {
                self.userStatus = dict["UserStatus"] as! String
            }
            if dict.keys.contains("UserType") && dict["UserType"] != nil {
                self.userType = dict["UserType"] as! String
            }
        }
    }
    public var requestId: String?

    public var tenantUsers: [DescribeTenantUsersResponseBody.TenantUsers]?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantUsers != nil {
            var tmp : [Any] = []
            for k in self.tenantUsers! {
                tmp.append(k.toMap())
            }
            map["TenantUsers"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantUsers") && dict["TenantUsers"] != nil {
            var tmp : [DescribeTenantUsersResponseBody.TenantUsers] = []
            for v in dict["TenantUsers"] as! [Any] {
                var model = DescribeTenantUsersResponseBody.TenantUsers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tenantUsers = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeTenantUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTenantUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTenantUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTenantZonesReadRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeTenantZonesReadResponseBody : Tea.TeaModel {
    public class TenantZones : Tea.TeaModel {
        public var isElectable: Bool?

        public var isPrimary: Bool?

        public var isReadOnlyAddressMaster: Bool?

        public var isReadable: String?

        public var zone: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isElectable != nil {
                map["IsElectable"] = self.isElectable!
            }
            if self.isPrimary != nil {
                map["IsPrimary"] = self.isPrimary!
            }
            if self.isReadOnlyAddressMaster != nil {
                map["IsReadOnlyAddressMaster"] = self.isReadOnlyAddressMaster!
            }
            if self.isReadable != nil {
                map["IsReadable"] = self.isReadable!
            }
            if self.zone != nil {
                map["Zone"] = self.zone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsElectable") && dict["IsElectable"] != nil {
                self.isElectable = dict["IsElectable"] as! Bool
            }
            if dict.keys.contains("IsPrimary") && dict["IsPrimary"] != nil {
                self.isPrimary = dict["IsPrimary"] as! Bool
            }
            if dict.keys.contains("IsReadOnlyAddressMaster") && dict["IsReadOnlyAddressMaster"] != nil {
                self.isReadOnlyAddressMaster = dict["IsReadOnlyAddressMaster"] as! Bool
            }
            if dict.keys.contains("IsReadable") && dict["IsReadable"] != nil {
                self.isReadable = dict["IsReadable"] as! String
            }
            if dict.keys.contains("Zone") && dict["Zone"] != nil {
                self.zone = dict["Zone"] as! String
            }
        }
    }
    public var requestId: String?

    public var tenantZones: [DescribeTenantZonesReadResponseBody.TenantZones]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantZones != nil {
            var tmp : [Any] = []
            for k in self.tenantZones! {
                tmp.append(k.toMap())
            }
            map["TenantZones"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantZones") && dict["TenantZones"] != nil {
            var tmp : [DescribeTenantZonesReadResponseBody.TenantZones] = []
            for v in dict["TenantZones"] as! [Any] {
                var model = DescribeTenantZonesReadResponseBody.TenantZones()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tenantZones = tmp
        }
    }
}

public class DescribeTenantZonesReadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTenantZonesReadResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTenantZonesReadResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTenantsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

    public var tenantId: String?

    public var tenantName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.tenantName != nil {
            map["TenantName"] = self.tenantName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") && dict["SearchKey"] != nil {
            self.searchKey = dict["SearchKey"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
            self.tenantName = dict["TenantName"] as! String
        }
    }
}

public class DescribeTenantsResponseBody : Tea.TeaModel {
    public class Tenants : Tea.TeaModel {
        public var charset: String?

        public var collation: String?

        public var cpu: Int32?

        public var createTime: String?

        public var deployMode: String?

        public var deployType: String?

        public var description_: String?

        public var mem: Int32?

        public var primaryZone: String?

        public var status: String?

        public var tenantId: String?

        public var tenantMode: String?

        public var tenantName: String?

        public var unitCpu: Int32?

        public var unitMem: Int32?

        public var unitNum: Int32?

        public var usedDiskSize: Double?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.charset != nil {
                map["Charset"] = self.charset!
            }
            if self.collation != nil {
                map["Collation"] = self.collation!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deployMode != nil {
                map["DeployMode"] = self.deployMode!
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.mem != nil {
                map["Mem"] = self.mem!
            }
            if self.primaryZone != nil {
                map["PrimaryZone"] = self.primaryZone!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.tenantMode != nil {
                map["TenantMode"] = self.tenantMode!
            }
            if self.tenantName != nil {
                map["TenantName"] = self.tenantName!
            }
            if self.unitCpu != nil {
                map["UnitCpu"] = self.unitCpu!
            }
            if self.unitMem != nil {
                map["UnitMem"] = self.unitMem!
            }
            if self.unitNum != nil {
                map["UnitNum"] = self.unitNum!
            }
            if self.usedDiskSize != nil {
                map["UsedDiskSize"] = self.usedDiskSize!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Charset") && dict["Charset"] != nil {
                self.charset = dict["Charset"] as! String
            }
            if dict.keys.contains("Collation") && dict["Collation"] != nil {
                self.collation = dict["Collation"] as! String
            }
            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeployMode") && dict["DeployMode"] != nil {
                self.deployMode = dict["DeployMode"] as! String
            }
            if dict.keys.contains("DeployType") && dict["DeployType"] != nil {
                self.deployType = dict["DeployType"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Mem") && dict["Mem"] != nil {
                self.mem = dict["Mem"] as! Int32
            }
            if dict.keys.contains("PrimaryZone") && dict["PrimaryZone"] != nil {
                self.primaryZone = dict["PrimaryZone"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("TenantMode") && dict["TenantMode"] != nil {
                self.tenantMode = dict["TenantMode"] as! String
            }
            if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
                self.tenantName = dict["TenantName"] as! String
            }
            if dict.keys.contains("UnitCpu") && dict["UnitCpu"] != nil {
                self.unitCpu = dict["UnitCpu"] as! Int32
            }
            if dict.keys.contains("UnitMem") && dict["UnitMem"] != nil {
                self.unitMem = dict["UnitMem"] as! Int32
            }
            if dict.keys.contains("UnitNum") && dict["UnitNum"] != nil {
                self.unitNum = dict["UnitNum"] as! Int32
            }
            if dict.keys.contains("UsedDiskSize") && dict["UsedDiskSize"] != nil {
                self.usedDiskSize = dict["UsedDiskSize"] as! Double
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var requestId: String?

    public var tenants: [DescribeTenantsResponseBody.Tenants]?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenants != nil {
            var tmp : [Any] = []
            for k in self.tenants! {
                tmp.append(k.toMap())
            }
            map["Tenants"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tenants") && dict["Tenants"] != nil {
            var tmp : [DescribeTenantsResponseBody.Tenants] = []
            for v in dict["Tenants"] as! [Any] {
                var model = DescribeTenantsResponseBody.Tenants()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tenants = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeTenantsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTenantsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTenantsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTimeZonesResponseBody : Tea.TeaModel {
    public class TimeZones : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var description_: String?

            public var timeZone: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.timeZone != nil {
                    map["TimeZone"] = self.timeZone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("TimeZone") && dict["TimeZone"] != nil {
                    self.timeZone = dict["TimeZone"] as! String
                }
            }
        }
        public var default_: String?

        public var list: [DescribeTimeZonesResponseBody.TimeZones.List]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.default_ != nil {
                map["Default"] = self.default_!
            }
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Default") && dict["Default"] != nil {
                self.default_ = dict["Default"] as! String
            }
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [DescribeTimeZonesResponseBody.TimeZones.List] = []
                for v in dict["List"] as! [Any] {
                    var model = DescribeTimeZonesResponseBody.TimeZones.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
        }
    }
    public var requestId: String?

    public var timeZones: DescribeTimeZonesResponseBody.TimeZones?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.timeZones?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.timeZones != nil {
            map["TimeZones"] = self.timeZones?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TimeZones") && dict["TimeZones"] != nil {
            var model = DescribeTimeZonesResponseBody.TimeZones()
            model.fromMap(dict["TimeZones"] as! [String: Any])
            self.timeZones = model
        }
    }
}

public class DescribeTimeZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTimeZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTimeZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTopSQLListRequest : Tea.TeaModel {
    public var dbName: String?

    public var endTime: String?

    public var filterCondition: [String: Any]?

    public var nodeIp: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: String?

    public var searchKeyWord: String?

    public var searchParameter: String?

    public var searchRule: String?

    public var searchValue: String?

    public var sortColumn: String?

    public var sortOrder: String?

    public var startTime: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterCondition != nil {
            map["FilterCondition"] = self.filterCondition!
        }
        if self.nodeIp != nil {
            map["NodeIp"] = self.nodeIp!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.searchKeyWord != nil {
            map["SearchKeyWord"] = self.searchKeyWord!
        }
        if self.searchParameter != nil {
            map["SearchParameter"] = self.searchParameter!
        }
        if self.searchRule != nil {
            map["SearchRule"] = self.searchRule!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        if self.sortColumn != nil {
            map["SortColumn"] = self.sortColumn!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterCondition") && dict["FilterCondition"] != nil {
            self.filterCondition = dict["FilterCondition"] as! [String: Any]
        }
        if dict.keys.contains("NodeIp") && dict["NodeIp"] != nil {
            self.nodeIp = dict["NodeIp"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") && dict["SQLId"] != nil {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("SearchKeyWord") && dict["SearchKeyWord"] != nil {
            self.searchKeyWord = dict["SearchKeyWord"] as! String
        }
        if dict.keys.contains("SearchParameter") && dict["SearchParameter"] != nil {
            self.searchParameter = dict["SearchParameter"] as! String
        }
        if dict.keys.contains("SearchRule") && dict["SearchRule"] != nil {
            self.searchRule = dict["SearchRule"] as! String
        }
        if dict.keys.contains("SearchValue") && dict["SearchValue"] != nil {
            self.searchValue = dict["SearchValue"] as! String
        }
        if dict.keys.contains("SortColumn") && dict["SortColumn"] != nil {
            self.sortColumn = dict["SortColumn"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeTopSQLListShrinkRequest : Tea.TeaModel {
    public var dbName: String?

    public var endTime: String?

    public var filterConditionShrink: String?

    public var nodeIp: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: String?

    public var searchKeyWord: String?

    public var searchParameter: String?

    public var searchRule: String?

    public var searchValue: String?

    public var sortColumn: String?

    public var sortOrder: String?

    public var startTime: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterConditionShrink != nil {
            map["FilterCondition"] = self.filterConditionShrink!
        }
        if self.nodeIp != nil {
            map["NodeIp"] = self.nodeIp!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.searchKeyWord != nil {
            map["SearchKeyWord"] = self.searchKeyWord!
        }
        if self.searchParameter != nil {
            map["SearchParameter"] = self.searchParameter!
        }
        if self.searchRule != nil {
            map["SearchRule"] = self.searchRule!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        if self.sortColumn != nil {
            map["SortColumn"] = self.sortColumn!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterCondition") && dict["FilterCondition"] != nil {
            self.filterConditionShrink = dict["FilterCondition"] as! String
        }
        if dict.keys.contains("NodeIp") && dict["NodeIp"] != nil {
            self.nodeIp = dict["NodeIp"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") && dict["SQLId"] != nil {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("SearchKeyWord") && dict["SearchKeyWord"] != nil {
            self.searchKeyWord = dict["SearchKeyWord"] as! String
        }
        if dict.keys.contains("SearchParameter") && dict["SearchParameter"] != nil {
            self.searchParameter = dict["SearchParameter"] as! String
        }
        if dict.keys.contains("SearchRule") && dict["SearchRule"] != nil {
            self.searchRule = dict["SearchRule"] as! String
        }
        if dict.keys.contains("SearchValue") && dict["SearchValue"] != nil {
            self.searchValue = dict["SearchValue"] as! String
        }
        if dict.keys.contains("SortColumn") && dict["SortColumn"] != nil {
            self.sortColumn = dict["SortColumn"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeTopSQLListResponseBody : Tea.TeaModel {
    public class TopSQLList : Tea.TeaModel {
        public var affectedRows: Int64?

        public var appWaitTime: Double?

        public var blockCacheHit: Int64?

        public var blockIndexCacheHit: Int64?

        public var bloomFilterCacheHit: Int64?

        public var clientIp: String?

        public var concurrencyWaitTime: Double?

        public var cpuTime: Double?

        public var dbName: String?

        public var decodeTime: Double?

        public var diskRead: Int64?

        public var elapsedTime: Double?

        public var event: String?

        public var execPerSecond: Double?

        public var executeTime: Double?

        public var executions: Int64?

        public var failTimes: Int64?

        public var getPlanTime: Double?

        public var IOWaitTime: Double?

        public var key: Int64?

        public var logicalRead: Int64?

        public var maxCpuTime: Double?

        public var maxElapsedTime: Double?

        public var memstoreReadRowCount: Int64?

        public var missPlans: Int64?

        public var netWaitTime: Double?

        public var nodeIp: String?

        public var queueTime: Double?

        public var RPCCount: Int64?

        public var remotePlans: Int64?

        public var retryCount: Int64?

        public var returnRows: Int64?

        public var rowCacheHit: Int64?

        public var SQLId: String?

        public var SQLText: String?

        public var SQLType: Int64?

        public var scheduleTime: Double?

        public var ssstoreReadRowCount: Int64?

        public var totalWaitTime: Double?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.affectedRows != nil {
                map["AffectedRows"] = self.affectedRows!
            }
            if self.appWaitTime != nil {
                map["AppWaitTime"] = self.appWaitTime!
            }
            if self.blockCacheHit != nil {
                map["BlockCacheHit"] = self.blockCacheHit!
            }
            if self.blockIndexCacheHit != nil {
                map["BlockIndexCacheHit"] = self.blockIndexCacheHit!
            }
            if self.bloomFilterCacheHit != nil {
                map["BloomFilterCacheHit"] = self.bloomFilterCacheHit!
            }
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.concurrencyWaitTime != nil {
                map["ConcurrencyWaitTime"] = self.concurrencyWaitTime!
            }
            if self.cpuTime != nil {
                map["CpuTime"] = self.cpuTime!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.decodeTime != nil {
                map["DecodeTime"] = self.decodeTime!
            }
            if self.diskRead != nil {
                map["DiskRead"] = self.diskRead!
            }
            if self.elapsedTime != nil {
                map["ElapsedTime"] = self.elapsedTime!
            }
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.execPerSecond != nil {
                map["ExecPerSecond"] = self.execPerSecond!
            }
            if self.executeTime != nil {
                map["ExecuteTime"] = self.executeTime!
            }
            if self.executions != nil {
                map["Executions"] = self.executions!
            }
            if self.failTimes != nil {
                map["FailTimes"] = self.failTimes!
            }
            if self.getPlanTime != nil {
                map["GetPlanTime"] = self.getPlanTime!
            }
            if self.IOWaitTime != nil {
                map["IOWaitTime"] = self.IOWaitTime!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.logicalRead != nil {
                map["LogicalRead"] = self.logicalRead!
            }
            if self.maxCpuTime != nil {
                map["MaxCpuTime"] = self.maxCpuTime!
            }
            if self.maxElapsedTime != nil {
                map["MaxElapsedTime"] = self.maxElapsedTime!
            }
            if self.memstoreReadRowCount != nil {
                map["MemstoreReadRowCount"] = self.memstoreReadRowCount!
            }
            if self.missPlans != nil {
                map["MissPlans"] = self.missPlans!
            }
            if self.netWaitTime != nil {
                map["NetWaitTime"] = self.netWaitTime!
            }
            if self.nodeIp != nil {
                map["NodeIp"] = self.nodeIp!
            }
            if self.queueTime != nil {
                map["QueueTime"] = self.queueTime!
            }
            if self.RPCCount != nil {
                map["RPCCount"] = self.RPCCount!
            }
            if self.remotePlans != nil {
                map["RemotePlans"] = self.remotePlans!
            }
            if self.retryCount != nil {
                map["RetryCount"] = self.retryCount!
            }
            if self.returnRows != nil {
                map["ReturnRows"] = self.returnRows!
            }
            if self.rowCacheHit != nil {
                map["RowCacheHit"] = self.rowCacheHit!
            }
            if self.SQLId != nil {
                map["SQLId"] = self.SQLId!
            }
            if self.SQLText != nil {
                map["SQLText"] = self.SQLText!
            }
            if self.SQLType != nil {
                map["SQLType"] = self.SQLType!
            }
            if self.scheduleTime != nil {
                map["ScheduleTime"] = self.scheduleTime!
            }
            if self.ssstoreReadRowCount != nil {
                map["SsstoreReadRowCount"] = self.ssstoreReadRowCount!
            }
            if self.totalWaitTime != nil {
                map["TotalWaitTime"] = self.totalWaitTime!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AffectedRows") && dict["AffectedRows"] != nil {
                self.affectedRows = dict["AffectedRows"] as! Int64
            }
            if dict.keys.contains("AppWaitTime") && dict["AppWaitTime"] != nil {
                self.appWaitTime = dict["AppWaitTime"] as! Double
            }
            if dict.keys.contains("BlockCacheHit") && dict["BlockCacheHit"] != nil {
                self.blockCacheHit = dict["BlockCacheHit"] as! Int64
            }
            if dict.keys.contains("BlockIndexCacheHit") && dict["BlockIndexCacheHit"] != nil {
                self.blockIndexCacheHit = dict["BlockIndexCacheHit"] as! Int64
            }
            if dict.keys.contains("BloomFilterCacheHit") && dict["BloomFilterCacheHit"] != nil {
                self.bloomFilterCacheHit = dict["BloomFilterCacheHit"] as! Int64
            }
            if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("ConcurrencyWaitTime") && dict["ConcurrencyWaitTime"] != nil {
                self.concurrencyWaitTime = dict["ConcurrencyWaitTime"] as! Double
            }
            if dict.keys.contains("CpuTime") && dict["CpuTime"] != nil {
                self.cpuTime = dict["CpuTime"] as! Double
            }
            if dict.keys.contains("DbName") && dict["DbName"] != nil {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("DecodeTime") && dict["DecodeTime"] != nil {
                self.decodeTime = dict["DecodeTime"] as! Double
            }
            if dict.keys.contains("DiskRead") && dict["DiskRead"] != nil {
                self.diskRead = dict["DiskRead"] as! Int64
            }
            if dict.keys.contains("ElapsedTime") && dict["ElapsedTime"] != nil {
                self.elapsedTime = dict["ElapsedTime"] as! Double
            }
            if dict.keys.contains("Event") && dict["Event"] != nil {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("ExecPerSecond") && dict["ExecPerSecond"] != nil {
                self.execPerSecond = dict["ExecPerSecond"] as! Double
            }
            if dict.keys.contains("ExecuteTime") && dict["ExecuteTime"] != nil {
                self.executeTime = dict["ExecuteTime"] as! Double
            }
            if dict.keys.contains("Executions") && dict["Executions"] != nil {
                self.executions = dict["Executions"] as! Int64
            }
            if dict.keys.contains("FailTimes") && dict["FailTimes"] != nil {
                self.failTimes = dict["FailTimes"] as! Int64
            }
            if dict.keys.contains("GetPlanTime") && dict["GetPlanTime"] != nil {
                self.getPlanTime = dict["GetPlanTime"] as! Double
            }
            if dict.keys.contains("IOWaitTime") && dict["IOWaitTime"] != nil {
                self.IOWaitTime = dict["IOWaitTime"] as! Double
            }
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! Int64
            }
            if dict.keys.contains("LogicalRead") && dict["LogicalRead"] != nil {
                self.logicalRead = dict["LogicalRead"] as! Int64
            }
            if dict.keys.contains("MaxCpuTime") && dict["MaxCpuTime"] != nil {
                self.maxCpuTime = dict["MaxCpuTime"] as! Double
            }
            if dict.keys.contains("MaxElapsedTime") && dict["MaxElapsedTime"] != nil {
                self.maxElapsedTime = dict["MaxElapsedTime"] as! Double
            }
            if dict.keys.contains("MemstoreReadRowCount") && dict["MemstoreReadRowCount"] != nil {
                self.memstoreReadRowCount = dict["MemstoreReadRowCount"] as! Int64
            }
            if dict.keys.contains("MissPlans") && dict["MissPlans"] != nil {
                self.missPlans = dict["MissPlans"] as! Int64
            }
            if dict.keys.contains("NetWaitTime") && dict["NetWaitTime"] != nil {
                self.netWaitTime = dict["NetWaitTime"] as! Double
            }
            if dict.keys.contains("NodeIp") && dict["NodeIp"] != nil {
                self.nodeIp = dict["NodeIp"] as! String
            }
            if dict.keys.contains("QueueTime") && dict["QueueTime"] != nil {
                self.queueTime = dict["QueueTime"] as! Double
            }
            if dict.keys.contains("RPCCount") && dict["RPCCount"] != nil {
                self.RPCCount = dict["RPCCount"] as! Int64
            }
            if dict.keys.contains("RemotePlans") && dict["RemotePlans"] != nil {
                self.remotePlans = dict["RemotePlans"] as! Int64
            }
            if dict.keys.contains("RetryCount") && dict["RetryCount"] != nil {
                self.retryCount = dict["RetryCount"] as! Int64
            }
            if dict.keys.contains("ReturnRows") && dict["ReturnRows"] != nil {
                self.returnRows = dict["ReturnRows"] as! Int64
            }
            if dict.keys.contains("RowCacheHit") && dict["RowCacheHit"] != nil {
                self.rowCacheHit = dict["RowCacheHit"] as! Int64
            }
            if dict.keys.contains("SQLId") && dict["SQLId"] != nil {
                self.SQLId = dict["SQLId"] as! String
            }
            if dict.keys.contains("SQLText") && dict["SQLText"] != nil {
                self.SQLText = dict["SQLText"] as! String
            }
            if dict.keys.contains("SQLType") && dict["SQLType"] != nil {
                self.SQLType = dict["SQLType"] as! Int64
            }
            if dict.keys.contains("ScheduleTime") && dict["ScheduleTime"] != nil {
                self.scheduleTime = dict["ScheduleTime"] as! Double
            }
            if dict.keys.contains("SsstoreReadRowCount") && dict["SsstoreReadRowCount"] != nil {
                self.ssstoreReadRowCount = dict["SsstoreReadRowCount"] as! Int64
            }
            if dict.keys.contains("TotalWaitTime") && dict["TotalWaitTime"] != nil {
                self.totalWaitTime = dict["TotalWaitTime"] as! Double
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var requestId: String?

    public var topSQLList: [DescribeTopSQLListResponseBody.TopSQLList]?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.topSQLList != nil {
            var tmp : [Any] = []
            for k in self.topSQLList! {
                tmp.append(k.toMap())
            }
            map["TopSQLList"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TopSQLList") && dict["TopSQLList"] != nil {
            var tmp : [DescribeTopSQLListResponseBody.TopSQLList] = []
            for v in dict["TopSQLList"] as! [Any] {
                var model = DescribeTopSQLListResponseBody.TopSQLList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.topSQLList = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeTopSQLListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTopSQLListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTopSQLListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeZonesRequest : Tea.TeaModel {
    public var deployType: String?

    public var series: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.series != nil {
            map["Series"] = self.series!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeployType") && dict["DeployType"] != nil {
            self.deployType = dict["DeployType"] as! String
        }
        if dict.keys.contains("Series") && dict["Series"] != nil {
            self.series = dict["Series"] as! String
        }
    }
}

public class DescribeZonesResponseBody : Tea.TeaModel {
    public class Zones : Tea.TeaModel {
        public var deployType: String?

        public var series: String?

        public var zoneId: String?

        public var zoneName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.series != nil {
                map["Series"] = self.series!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            if self.zoneName != nil {
                map["ZoneName"] = self.zoneName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeployType") && dict["DeployType"] != nil {
                self.deployType = dict["DeployType"] as! String
            }
            if dict.keys.contains("Series") && dict["Series"] != nil {
                self.series = dict["Series"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
            if dict.keys.contains("ZoneName") && dict["ZoneName"] != nil {
                self.zoneName = dict["ZoneName"] as! String
            }
        }
    }
    public var requestId: String?

    public var zones: [DescribeZonesResponseBody.Zones]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.zones != nil {
            var tmp : [Any] = []
            for k in self.zones! {
                tmp.append(k.toMap())
            }
            map["Zones"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Zones") && dict["Zones"] != nil {
            var tmp : [DescribeZonesResponseBody.Zones] = []
            for v in dict["Zones"] as! [Any] {
                var model = DescribeZonesResponseBody.Zones()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.zones = tmp
        }
    }
}

public class DescribeZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class KillProcessListRequest : Tea.TeaModel {
    public var instanceId: String?

    public var sessionList: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.sessionList != nil {
            map["SessionList"] = self.sessionList!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SessionList") && dict["SessionList"] != nil {
            self.sessionList = dict["SessionList"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class KillProcessListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clientIp: String?

        public var command: String?

        public var database: String?

        public var errorMessage: String?

        public var executeTime: String?

        public var serverIp: String?

        public var sessionId: Int64?

        public var sqlText: String?

        public var status: String?

        public var tenantId: String?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.command != nil {
                map["Command"] = self.command!
            }
            if self.database != nil {
                map["Database"] = self.database!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.executeTime != nil {
                map["ExecuteTime"] = self.executeTime!
            }
            if self.serverIp != nil {
                map["ServerIp"] = self.serverIp!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.sqlText != nil {
                map["SqlText"] = self.sqlText!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("Command") && dict["Command"] != nil {
                self.command = dict["Command"] as! String
            }
            if dict.keys.contains("Database") && dict["Database"] != nil {
                self.database = dict["Database"] as! String
            }
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("ExecuteTime") && dict["ExecuteTime"] != nil {
                self.executeTime = dict["ExecuteTime"] as! String
            }
            if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
                self.serverIp = dict["ServerIp"] as! String
            }
            if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
                self.sessionId = dict["SessionId"] as! Int64
            }
            if dict.keys.contains("SqlText") && dict["SqlText"] != nil {
                self.sqlText = dict["SqlText"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("User") && dict["User"] != nil {
                self.user = dict["User"] as! String
            }
        }
    }
    public var data: [KillProcessListResponseBody.Data]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [KillProcessListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = KillProcessListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class KillProcessListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KillProcessListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = KillProcessListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDatabaseDescriptionRequest : Tea.TeaModel {
    public var databaseName: String?

    public var description_: String?

    public var instanceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ModifyDatabaseDescriptionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDatabaseDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDatabaseDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyDatabaseDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDatabaseUserRolesRequest : Tea.TeaModel {
    public var databaseName: String?

    public var instanceId: String?

    public var tenantId: String?

    public var users: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
            self.users = dict["Users"] as! String
        }
    }
}

public class ModifyDatabaseUserRolesResponseBody : Tea.TeaModel {
    public class TenantUser : Tea.TeaModel {
        public class Users : Tea.TeaModel {
            public var role: String?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("UserName") && dict["UserName"] != nil {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var databaseName: String?

        public var tenantId: String?

        public var users: [ModifyDatabaseUserRolesResponseBody.TenantUser.Users]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.users != nil {
                var tmp : [Any] = []
                for k in self.users! {
                    tmp.append(k.toMap())
                }
                map["Users"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                self.databaseName = dict["DatabaseName"] as! String
            }
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("Users") && dict["Users"] != nil {
                var tmp : [ModifyDatabaseUserRolesResponseBody.TenantUser.Users] = []
                for v in dict["Users"] as! [Any] {
                    var model = ModifyDatabaseUserRolesResponseBody.TenantUser.Users()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.users = tmp
            }
        }
    }
    public var requestId: String?

    public var tenantUser: ModifyDatabaseUserRolesResponseBody.TenantUser?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantUser?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantUser != nil {
            map["TenantUser"] = self.tenantUser?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantUser") && dict["TenantUser"] != nil {
            var model = ModifyDatabaseUserRolesResponseBody.TenantUser()
            model.fromMap(dict["TenantUser"] as! [String: Any])
            self.tenantUser = model
        }
    }
}

public class ModifyDatabaseUserRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDatabaseUserRolesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyDatabaseUserRolesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyInstanceNameRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instanceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
    }
}

public class ModifyInstanceNameResponseBody : Tea.TeaModel {
    public var instanceName: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyInstanceNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyInstanceNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyInstanceNodeNumRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeNum: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeNum != nil {
            map["NodeNum"] = self.nodeNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NodeNum") && dict["NodeNum"] != nil {
            self.nodeNum = dict["NodeNum"] as! String
        }
    }
}

public class ModifyInstanceNodeNumResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! String
            }
        }
    }
    public var data: ModifyInstanceNodeNumResponseBody.Data?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ModifyInstanceNodeNumResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyInstanceNodeNumResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceNodeNumResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyInstanceNodeNumResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyInstanceSpecRequest : Tea.TeaModel {
    public var diskSize: Int64?

    public var instanceClass: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.instanceClass != nil {
            map["InstanceClass"] = self.instanceClass!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
            self.diskSize = dict["DiskSize"] as! Int64
        }
        if dict.keys.contains("InstanceClass") && dict["InstanceClass"] != nil {
            self.instanceClass = dict["InstanceClass"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class ModifyInstanceSpecResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! String
            }
        }
    }
    public var data: ModifyInstanceSpecResponseBody.Data?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ModifyInstanceSpecResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyInstanceSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceSpecResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyInstanceSpecResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyInstanceTagsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tags: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class ModifyInstanceTagsResponseBody : Tea.TeaModel {
    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyInstanceTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyInstanceTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyParametersRequest : Tea.TeaModel {
    public var dimension: String?

    public var dimensionValue: String?

    public var instanceId: String?

    public var parameters: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dimension != nil {
            map["Dimension"] = self.dimension!
        }
        if self.dimensionValue != nil {
            map["DimensionValue"] = self.dimensionValue!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dimension") && dict["Dimension"] != nil {
            self.dimension = dict["Dimension"] as! String
        }
        if dict.keys.contains("DimensionValue") && dict["DimensionValue"] != nil {
            self.dimensionValue = dict["DimensionValue"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parameters = dict["Parameters"] as! String
        }
    }
}

public class ModifyParametersResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var message: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var results: ModifyParametersResponseBody.Results?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.results?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            map["Results"] = self.results?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var model = ModifyParametersResponseBody.Results()
            model.fromMap(dict["Results"] as! [String: Any])
            self.results = model
        }
    }
}

public class ModifyParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyParametersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySecurityIpsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var securityIpGroupName: String?

    public var securityIps: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.securityIpGroupName != nil {
            map["SecurityIpGroupName"] = self.securityIpGroupName!
        }
        if self.securityIps != nil {
            map["SecurityIps"] = self.securityIps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SecurityIpGroupName") && dict["SecurityIpGroupName"] != nil {
            self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
        }
        if dict.keys.contains("SecurityIps") && dict["SecurityIps"] != nil {
            self.securityIps = dict["SecurityIps"] as! String
        }
    }
}

public class ModifySecurityIpsResponseBody : Tea.TeaModel {
    public class SecurityIpGroup : Tea.TeaModel {
        public var instanceId: String?

        public var securityIpGroupName: String?

        public var securityIps: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.securityIpGroupName != nil {
                map["SecurityIpGroupName"] = self.securityIpGroupName!
            }
            if self.securityIps != nil {
                map["SecurityIps"] = self.securityIps!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("SecurityIpGroupName") && dict["SecurityIpGroupName"] != nil {
                self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
            }
            if dict.keys.contains("SecurityIps") && dict["SecurityIps"] != nil {
                self.securityIps = dict["SecurityIps"] as! String
            }
        }
    }
    public var requestId: String?

    public var securityIpGroup: ModifySecurityIpsResponseBody.SecurityIpGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityIpGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityIpGroup != nil {
            map["SecurityIpGroup"] = self.securityIpGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityIpGroup") && dict["SecurityIpGroup"] != nil {
            var model = ModifySecurityIpsResponseBody.SecurityIpGroup()
            model.fromMap(dict["SecurityIpGroup"] as! [String: Any])
            self.securityIpGroup = model
        }
    }
}

public class ModifySecurityIpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySecurityIpsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifySecurityIpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTenantPrimaryZoneRequest : Tea.TeaModel {
    public var instanceId: String?

    public var masterIntranetAddressZone: String?

    public var modifyType: String?

    public var primaryZone: String?

    public var primaryZoneDeployType: String?

    public var tenantId: String?

    public var userVSwitchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.masterIntranetAddressZone != nil {
            map["MasterIntranetAddressZone"] = self.masterIntranetAddressZone!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.primaryZone != nil {
            map["PrimaryZone"] = self.primaryZone!
        }
        if self.primaryZoneDeployType != nil {
            map["PrimaryZoneDeployType"] = self.primaryZoneDeployType!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userVSwitchId != nil {
            map["UserVSwitchId"] = self.userVSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MasterIntranetAddressZone") && dict["MasterIntranetAddressZone"] != nil {
            self.masterIntranetAddressZone = dict["MasterIntranetAddressZone"] as! String
        }
        if dict.keys.contains("ModifyType") && dict["ModifyType"] != nil {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("PrimaryZone") && dict["PrimaryZone"] != nil {
            self.primaryZone = dict["PrimaryZone"] as! String
        }
        if dict.keys.contains("PrimaryZoneDeployType") && dict["PrimaryZoneDeployType"] != nil {
            self.primaryZoneDeployType = dict["PrimaryZoneDeployType"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UserVSwitchId") && dict["UserVSwitchId"] != nil {
            self.userVSwitchId = dict["UserVSwitchId"] as! String
        }
    }
}

public class ModifyTenantPrimaryZoneResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyTenantPrimaryZoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTenantPrimaryZoneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyTenantPrimaryZoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTenantResourceRequest : Tea.TeaModel {
    public var cpu: Int32?

    public var instanceId: String?

    public var memory: Int32?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
            self.cpu = dict["Cpu"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Memory") && dict["Memory"] != nil {
            self.memory = dict["Memory"] as! Int32
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ModifyTenantResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ModifyTenantResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTenantResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyTenantResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTenantSecurityIpGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public var securityIpGroupName: String?

    public var securityIps: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.securityIpGroupName != nil {
            map["SecurityIpGroupName"] = self.securityIpGroupName!
        }
        if self.securityIps != nil {
            map["SecurityIps"] = self.securityIps!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SecurityIpGroupName") && dict["SecurityIpGroupName"] != nil {
            self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
        }
        if dict.keys.contains("SecurityIps") && dict["SecurityIps"] != nil {
            self.securityIps = dict["SecurityIps"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ModifyTenantSecurityIpGroupResponseBody : Tea.TeaModel {
    public class SecurityIpGroup : Tea.TeaModel {
        public var instanceId: String?

        public var securityIpGroupName: String?

        public var securityIps: String?

        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.securityIpGroupName != nil {
                map["SecurityIpGroupName"] = self.securityIpGroupName!
            }
            if self.securityIps != nil {
                map["SecurityIps"] = self.securityIps!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("SecurityIpGroupName") && dict["SecurityIpGroupName"] != nil {
                self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
            }
            if dict.keys.contains("SecurityIps") && dict["SecurityIps"] != nil {
                self.securityIps = dict["SecurityIps"] as! String
            }
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! String
            }
        }
    }
    public var requestId: String?

    public var securityIpGroup: ModifyTenantSecurityIpGroupResponseBody.SecurityIpGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityIpGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityIpGroup != nil {
            map["SecurityIpGroup"] = self.securityIpGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityIpGroup") && dict["SecurityIpGroup"] != nil {
            var model = ModifyTenantSecurityIpGroupResponseBody.SecurityIpGroup()
            model.fromMap(dict["SecurityIpGroup"] as! [String: Any])
            self.securityIpGroup = model
        }
    }
}

public class ModifyTenantSecurityIpGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTenantSecurityIpGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyTenantSecurityIpGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTenantTagsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tags: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ModifyTenantTagsResponseBody : Tea.TeaModel {
    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyTenantTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTenantTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyTenantTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTenantUserDescriptionRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var tenantId: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class ModifyTenantUserDescriptionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyTenantUserDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTenantUserDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyTenantUserDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTenantUserPasswordRequest : Tea.TeaModel {
    public var encryptionType: String?

    public var instanceId: String?

    public var tenantId: String?

    public var userName: String?

    public var userPassword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encryptionType != nil {
            map["EncryptionType"] = self.encryptionType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userPassword != nil {
            map["UserPassword"] = self.userPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EncryptionType") && dict["EncryptionType"] != nil {
            self.encryptionType = dict["EncryptionType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("UserPassword") && dict["UserPassword"] != nil {
            self.userPassword = dict["UserPassword"] as! String
        }
    }
}

public class ModifyTenantUserPasswordResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyTenantUserPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTenantUserPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyTenantUserPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTenantUserRolesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var modifyType: String?

    public var tenantId: String?

    public var userName: String?

    public var userRole: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userRole != nil {
            map["UserRole"] = self.userRole!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModifyType") && dict["ModifyType"] != nil {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("UserRole") && dict["UserRole"] != nil {
            self.userRole = dict["UserRole"] as! String
        }
    }
}

public class ModifyTenantUserRolesResponseBody : Tea.TeaModel {
    public class TenantUser : Tea.TeaModel {
        public class UserRole : Tea.TeaModel {
            public var database: String?

            public var isSuccess: Bool?

            public var role: String?

            public var table: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.database != nil {
                    map["Database"] = self.database!
                }
                if self.isSuccess != nil {
                    map["IsSuccess"] = self.isSuccess!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.table != nil {
                    map["Table"] = self.table!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Database") && dict["Database"] != nil {
                    self.database = dict["Database"] as! String
                }
                if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
                    self.isSuccess = dict["IsSuccess"] as! Bool
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("Table") && dict["Table"] != nil {
                    self.table = dict["Table"] as! String
                }
            }
        }
        public var tenantId: String?

        public var userName: String?

        public var userRole: [ModifyTenantUserRolesResponseBody.TenantUser.UserRole]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userRole != nil {
                var tmp : [Any] = []
                for k in self.userRole! {
                    tmp.append(k.toMap())
                }
                map["UserRole"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("UserRole") && dict["UserRole"] != nil {
                var tmp : [ModifyTenantUserRolesResponseBody.TenantUser.UserRole] = []
                for v in dict["UserRole"] as! [Any] {
                    var model = ModifyTenantUserRolesResponseBody.TenantUser.UserRole()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userRole = tmp
            }
        }
    }
    public var requestId: String?

    public var tenantUser: ModifyTenantUserRolesResponseBody.TenantUser?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantUser?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantUser != nil {
            map["TenantUser"] = self.tenantUser?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantUser") && dict["TenantUser"] != nil {
            var model = ModifyTenantUserRolesResponseBody.TenantUser()
            model.fromMap(dict["TenantUser"] as! [String: Any])
            self.tenantUser = model
        }
    }
}

public class ModifyTenantUserRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTenantUserRolesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyTenantUserRolesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTenantUserStatusRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tenantId: String?

    public var userName: String?

    public var userStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userStatus != nil {
            map["UserStatus"] = self.userStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("UserStatus") && dict["UserStatus"] != nil {
            self.userStatus = dict["UserStatus"] as! String
        }
    }
}

public class ModifyTenantUserStatusResponseBody : Tea.TeaModel {
    public class TenantUser : Tea.TeaModel {
        public var tenantId: String?

        public var userName: String?

        public var userStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userStatus != nil {
                map["UserStatus"] = self.userStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("UserStatus") && dict["UserStatus"] != nil {
                self.userStatus = dict["UserStatus"] as! String
            }
        }
    }
    public var requestId: String?

    public var tenantUser: [ModifyTenantUserStatusResponseBody.TenantUser]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantUser != nil {
            var tmp : [Any] = []
            for k in self.tenantUser! {
                tmp.append(k.toMap())
            }
            map["TenantUser"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantUser") && dict["TenantUser"] != nil {
            var tmp : [ModifyTenantUserStatusResponseBody.TenantUser] = []
            for v in dict["TenantUser"] as! [Any] {
                var model = ModifyTenantUserStatusResponseBody.TenantUser()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tenantUser = tmp
        }
    }
}

public class ModifyTenantUserStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTenantUserStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyTenantUserStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseOmsOpenAPIProjectRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") && dict["WorkerGradeId"] != nil {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class ReleaseOmsOpenAPIProjectResponseBody : Tea.TeaModel {
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") && dict["Proposal"] != nil {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: Bool?

    public var errorDetail: ReleaseOmsOpenAPIProjectResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") && dict["Advice"] != nil {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") && dict["Cost"] != nil {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorDetail") && dict["ErrorDetail"] != nil {
            var model = ReleaseOmsOpenAPIProjectResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ReleaseOmsOpenAPIProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseOmsOpenAPIProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ReleaseOmsOpenAPIProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetOmsOpenAPIProjectRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") && dict["WorkerGradeId"] != nil {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class ResetOmsOpenAPIProjectResponseBody : Tea.TeaModel {
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") && dict["Proposal"] != nil {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: Bool?

    public var errorDetail: ResetOmsOpenAPIProjectResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") && dict["Advice"] != nil {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") && dict["Cost"] != nil {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorDetail") && dict["ErrorDetail"] != nil {
            var model = ResetOmsOpenAPIProjectResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ResetOmsOpenAPIProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetOmsOpenAPIProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResetOmsOpenAPIProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResumeOmsOpenAPIProjectRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") && dict["WorkerGradeId"] != nil {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class ResumeOmsOpenAPIProjectResponseBody : Tea.TeaModel {
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") && dict["Proposal"] != nil {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: Bool?

    public var errorDetail: ResumeOmsOpenAPIProjectResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") && dict["Advice"] != nil {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") && dict["Cost"] != nil {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorDetail") && dict["ErrorDetail"] != nil {
            var model = ResumeOmsOpenAPIProjectResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ResumeOmsOpenAPIProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeOmsOpenAPIProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResumeOmsOpenAPIProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchOmsOpenAPIMonitorMetricRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var endTime: Int64?

    public var maxPointNum: Int64?

    public var metric: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.maxPointNum != nil {
            map["MaxPointNum"] = self.maxPointNum!
        }
        if self.metric != nil {
            map["Metric"] = self.metric!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("MaxPointNum") && dict["MaxPointNum"] != nil {
            self.maxPointNum = dict["MaxPointNum"] as! Int64
        }
        if dict.keys.contains("Metric") && dict["Metric"] != nil {
            self.metric = dict["Metric"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") && dict["WorkerGradeId"] != nil {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class SearchOmsOpenAPIMonitorMetricResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DataPoints : Tea.TeaModel {
            public var timestamp: Int64?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                    self.timestamp = dict["Timestamp"] as! Int64
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public var dataPoints: [SearchOmsOpenAPIMonitorMetricResponseBody.Data.DataPoints]?

        public var metric: String?

        public var tags: [String: String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataPoints != nil {
                var tmp : [Any] = []
                for k in self.dataPoints! {
                    tmp.append(k.toMap())
                }
                map["DataPoints"] = tmp
            }
            if self.metric != nil {
                map["Metric"] = self.metric!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataPoints") && dict["DataPoints"] != nil {
                var tmp : [SearchOmsOpenAPIMonitorMetricResponseBody.Data.DataPoints] = []
                for v in dict["DataPoints"] as! [Any] {
                    var model = SearchOmsOpenAPIMonitorMetricResponseBody.Data.DataPoints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataPoints = tmp
            }
            if dict.keys.contains("Metric") && dict["Metric"] != nil {
                self.metric = dict["Metric"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                self.tags = dict["Tags"] as! [String: String]
            }
        }
    }
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") && dict["Proposal"] != nil {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: [SearchOmsOpenAPIMonitorMetricResponseBody.Data]?

    public var errorDetail: SearchOmsOpenAPIMonitorMetricResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") && dict["Advice"] != nil {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") && dict["Cost"] != nil {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [SearchOmsOpenAPIMonitorMetricResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = SearchOmsOpenAPIMonitorMetricResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorDetail") && dict["ErrorDetail"] != nil {
            var model = SearchOmsOpenAPIMonitorMetricResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class SearchOmsOpenAPIMonitorMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchOmsOpenAPIMonitorMetricResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SearchOmsOpenAPIMonitorMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchOmsOpenAPIProjectsRequest : Tea.TeaModel {
    public var destDbTypes: [String]?

    public var labelIds: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

    public var sourceDbTypes: [String]?

    public var statusList: [String]?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destDbTypes != nil {
            map["DestDbTypes"] = self.destDbTypes!
        }
        if self.labelIds != nil {
            map["LabelIds"] = self.labelIds!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.sourceDbTypes != nil {
            map["SourceDbTypes"] = self.sourceDbTypes!
        }
        if self.statusList != nil {
            map["StatusList"] = self.statusList!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestDbTypes") && dict["DestDbTypes"] != nil {
            self.destDbTypes = dict["DestDbTypes"] as! [String]
        }
        if dict.keys.contains("LabelIds") && dict["LabelIds"] != nil {
            self.labelIds = dict["LabelIds"] as! [String]
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") && dict["SearchKey"] != nil {
            self.searchKey = dict["SearchKey"] as! String
        }
        if dict.keys.contains("SourceDbTypes") && dict["SourceDbTypes"] != nil {
            self.sourceDbTypes = dict["SourceDbTypes"] as! [String]
        }
        if dict.keys.contains("StatusList") && dict["StatusList"] != nil {
            self.statusList = dict["StatusList"] as! [String]
        }
        if dict.keys.contains("WorkerGradeId") && dict["WorkerGradeId"] != nil {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class SearchOmsOpenAPIProjectsShrinkRequest : Tea.TeaModel {
    public var destDbTypesShrink: String?

    public var labelIdsShrink: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

    public var sourceDbTypesShrink: String?

    public var statusListShrink: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destDbTypesShrink != nil {
            map["DestDbTypes"] = self.destDbTypesShrink!
        }
        if self.labelIdsShrink != nil {
            map["LabelIds"] = self.labelIdsShrink!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.sourceDbTypesShrink != nil {
            map["SourceDbTypes"] = self.sourceDbTypesShrink!
        }
        if self.statusListShrink != nil {
            map["StatusList"] = self.statusListShrink!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestDbTypes") && dict["DestDbTypes"] != nil {
            self.destDbTypesShrink = dict["DestDbTypes"] as! String
        }
        if dict.keys.contains("LabelIds") && dict["LabelIds"] != nil {
            self.labelIdsShrink = dict["LabelIds"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") && dict["SearchKey"] != nil {
            self.searchKey = dict["SearchKey"] as! String
        }
        if dict.keys.contains("SourceDbTypes") && dict["SourceDbTypes"] != nil {
            self.sourceDbTypesShrink = dict["SourceDbTypes"] as! String
        }
        if dict.keys.contains("StatusList") && dict["StatusList"] != nil {
            self.statusListShrink = dict["StatusList"] as! String
        }
        if dict.keys.contains("WorkerGradeId") && dict["WorkerGradeId"] != nil {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class SearchOmsOpenAPIProjectsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DestConfig : Tea.TeaModel {
            public var enableMsgTrace: Bool?

            public var endpointId: String?

            public var endpointType: String?

            public var msgTags: String?

            public var partition: Int32?

            public var partitionMode: String?

            public var producerGroup: String?

            public var sendMsgTimeout: Int64?

            public var sequenceEnable: Bool?

            public var sequenceStartTimestamp: Int64?

            public var serializerType: String?

            public var topicType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableMsgTrace != nil {
                    map["EnableMsgTrace"] = self.enableMsgTrace!
                }
                if self.endpointId != nil {
                    map["EndpointId"] = self.endpointId!
                }
                if self.endpointType != nil {
                    map["EndpointType"] = self.endpointType!
                }
                if self.msgTags != nil {
                    map["MsgTags"] = self.msgTags!
                }
                if self.partition != nil {
                    map["Partition"] = self.partition!
                }
                if self.partitionMode != nil {
                    map["PartitionMode"] = self.partitionMode!
                }
                if self.producerGroup != nil {
                    map["ProducerGroup"] = self.producerGroup!
                }
                if self.sendMsgTimeout != nil {
                    map["SendMsgTimeout"] = self.sendMsgTimeout!
                }
                if self.sequenceEnable != nil {
                    map["SequenceEnable"] = self.sequenceEnable!
                }
                if self.sequenceStartTimestamp != nil {
                    map["SequenceStartTimestamp"] = self.sequenceStartTimestamp!
                }
                if self.serializerType != nil {
                    map["SerializerType"] = self.serializerType!
                }
                if self.topicType != nil {
                    map["TopicType"] = self.topicType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableMsgTrace") && dict["EnableMsgTrace"] != nil {
                    self.enableMsgTrace = dict["EnableMsgTrace"] as! Bool
                }
                if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
                    self.endpointId = dict["EndpointId"] as! String
                }
                if dict.keys.contains("EndpointType") && dict["EndpointType"] != nil {
                    self.endpointType = dict["EndpointType"] as! String
                }
                if dict.keys.contains("MsgTags") && dict["MsgTags"] != nil {
                    self.msgTags = dict["MsgTags"] as! String
                }
                if dict.keys.contains("Partition") && dict["Partition"] != nil {
                    self.partition = dict["Partition"] as! Int32
                }
                if dict.keys.contains("PartitionMode") && dict["PartitionMode"] != nil {
                    self.partitionMode = dict["PartitionMode"] as! String
                }
                if dict.keys.contains("ProducerGroup") && dict["ProducerGroup"] != nil {
                    self.producerGroup = dict["ProducerGroup"] as! String
                }
                if dict.keys.contains("SendMsgTimeout") && dict["SendMsgTimeout"] != nil {
                    self.sendMsgTimeout = dict["SendMsgTimeout"] as! Int64
                }
                if dict.keys.contains("SequenceEnable") && dict["SequenceEnable"] != nil {
                    self.sequenceEnable = dict["SequenceEnable"] as! Bool
                }
                if dict.keys.contains("SequenceStartTimestamp") && dict["SequenceStartTimestamp"] != nil {
                    self.sequenceStartTimestamp = dict["SequenceStartTimestamp"] as! Int64
                }
                if dict.keys.contains("SerializerType") && dict["SerializerType"] != nil {
                    self.serializerType = dict["SerializerType"] as! String
                }
                if dict.keys.contains("TopicType") && dict["TopicType"] != nil {
                    self.topicType = dict["TopicType"] as! String
                }
            }
        }
        public class Labels : Tea.TeaModel {
            public var count: Int32?

            public var creator: String?

            public var id: String?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") && dict["Count"] != nil {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("Creator") && dict["Creator"] != nil {
                    self.creator = dict["Creator"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class SourceConfig : Tea.TeaModel {
            public var enableMsgTrace: Bool?

            public var endpointId: String?

            public var endpointType: String?

            public var msgTags: String?

            public var partition: Int32?

            public var partitionMode: String?

            public var producerGroup: String?

            public var sendMsgTimeout: Int64?

            public var sequenceEnable: Bool?

            public var sequenceStartTimestamp: Int64?

            public var serializerType: String?

            public var topicType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableMsgTrace != nil {
                    map["EnableMsgTrace"] = self.enableMsgTrace!
                }
                if self.endpointId != nil {
                    map["EndpointId"] = self.endpointId!
                }
                if self.endpointType != nil {
                    map["EndpointType"] = self.endpointType!
                }
                if self.msgTags != nil {
                    map["MsgTags"] = self.msgTags!
                }
                if self.partition != nil {
                    map["Partition"] = self.partition!
                }
                if self.partitionMode != nil {
                    map["PartitionMode"] = self.partitionMode!
                }
                if self.producerGroup != nil {
                    map["ProducerGroup"] = self.producerGroup!
                }
                if self.sendMsgTimeout != nil {
                    map["SendMsgTimeout"] = self.sendMsgTimeout!
                }
                if self.sequenceEnable != nil {
                    map["SequenceEnable"] = self.sequenceEnable!
                }
                if self.sequenceStartTimestamp != nil {
                    map["SequenceStartTimestamp"] = self.sequenceStartTimestamp!
                }
                if self.serializerType != nil {
                    map["SerializerType"] = self.serializerType!
                }
                if self.topicType != nil {
                    map["TopicType"] = self.topicType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableMsgTrace") && dict["EnableMsgTrace"] != nil {
                    self.enableMsgTrace = dict["EnableMsgTrace"] as! Bool
                }
                if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
                    self.endpointId = dict["EndpointId"] as! String
                }
                if dict.keys.contains("EndpointType") && dict["EndpointType"] != nil {
                    self.endpointType = dict["EndpointType"] as! String
                }
                if dict.keys.contains("MsgTags") && dict["MsgTags"] != nil {
                    self.msgTags = dict["MsgTags"] as! String
                }
                if dict.keys.contains("Partition") && dict["Partition"] != nil {
                    self.partition = dict["Partition"] as! Int32
                }
                if dict.keys.contains("PartitionMode") && dict["PartitionMode"] != nil {
                    self.partitionMode = dict["PartitionMode"] as! String
                }
                if dict.keys.contains("ProducerGroup") && dict["ProducerGroup"] != nil {
                    self.producerGroup = dict["ProducerGroup"] as! String
                }
                if dict.keys.contains("SendMsgTimeout") && dict["SendMsgTimeout"] != nil {
                    self.sendMsgTimeout = dict["SendMsgTimeout"] as! Int64
                }
                if dict.keys.contains("SequenceEnable") && dict["SequenceEnable"] != nil {
                    self.sequenceEnable = dict["SequenceEnable"] as! Bool
                }
                if dict.keys.contains("SequenceStartTimestamp") && dict["SequenceStartTimestamp"] != nil {
                    self.sequenceStartTimestamp = dict["SequenceStartTimestamp"] as! Int64
                }
                if dict.keys.contains("SerializerType") && dict["SerializerType"] != nil {
                    self.serializerType = dict["SerializerType"] as! String
                }
                if dict.keys.contains("TopicType") && dict["TopicType"] != nil {
                    self.topicType = dict["TopicType"] as! String
                }
            }
        }
        public class Steps : Tea.TeaModel {
            public class ExtraInfo : Tea.TeaModel {
                public class ErrorDetails : Tea.TeaModel {
                    public var code: String?

                    public var level: String?

                    public var message: String?

                    public var proposal: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.code != nil {
                            map["Code"] = self.code!
                        }
                        if self.level != nil {
                            map["Level"] = self.level!
                        }
                        if self.message != nil {
                            map["Message"] = self.message!
                        }
                        if self.proposal != nil {
                            map["Proposal"] = self.proposal!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Code") && dict["Code"] != nil {
                            self.code = dict["Code"] as! String
                        }
                        if dict.keys.contains("Level") && dict["Level"] != nil {
                            self.level = dict["Level"] as! String
                        }
                        if dict.keys.contains("Message") && dict["Message"] != nil {
                            self.message = dict["Message"] as! String
                        }
                        if dict.keys.contains("Proposal") && dict["Proposal"] != nil {
                            self.proposal = dict["Proposal"] as! String
                        }
                    }
                }
                public var errorCode: String?

                public var errorDetails: [SearchOmsOpenAPIProjectsResponseBody.Data.Steps.ExtraInfo.ErrorDetails]?

                public var errorMsg: String?

                public var errorParam: [String: String]?

                public var failedTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.errorCode != nil {
                        map["ErrorCode"] = self.errorCode!
                    }
                    if self.errorDetails != nil {
                        var tmp : [Any] = []
                        for k in self.errorDetails! {
                            tmp.append(k.toMap())
                        }
                        map["ErrorDetails"] = tmp
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.errorParam != nil {
                        map["ErrorParam"] = self.errorParam!
                    }
                    if self.failedTime != nil {
                        map["FailedTime"] = self.failedTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                        self.errorCode = dict["ErrorCode"] as! String
                    }
                    if dict.keys.contains("ErrorDetails") && dict["ErrorDetails"] != nil {
                        var tmp : [SearchOmsOpenAPIProjectsResponseBody.Data.Steps.ExtraInfo.ErrorDetails] = []
                        for v in dict["ErrorDetails"] as! [Any] {
                            var model = SearchOmsOpenAPIProjectsResponseBody.Data.Steps.ExtraInfo.ErrorDetails()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.errorDetails = tmp
                    }
                    if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
                        self.errorMsg = dict["ErrorMsg"] as! String
                    }
                    if dict.keys.contains("ErrorParam") && dict["ErrorParam"] != nil {
                        self.errorParam = dict["ErrorParam"] as! [String: String]
                    }
                    if dict.keys.contains("FailedTime") && dict["FailedTime"] != nil {
                        self.failedTime = dict["FailedTime"] as! String
                    }
                }
            }
            public class StepInfo : Tea.TeaModel {
                public class ConnectorFullProgressOverview : Tea.TeaModel {
                    public var estimatedRemainingTimeOfSec: Int64?

                    public var estimatedTotalCount: Int64?

                    public var finishedCount: Int64?

                    public var progress: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.estimatedRemainingTimeOfSec != nil {
                            map["EstimatedRemainingTimeOfSec"] = self.estimatedRemainingTimeOfSec!
                        }
                        if self.estimatedTotalCount != nil {
                            map["EstimatedTotalCount"] = self.estimatedTotalCount!
                        }
                        if self.finishedCount != nil {
                            map["FinishedCount"] = self.finishedCount!
                        }
                        if self.progress != nil {
                            map["Progress"] = self.progress!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("EstimatedRemainingTimeOfSec") && dict["EstimatedRemainingTimeOfSec"] != nil {
                            self.estimatedRemainingTimeOfSec = dict["EstimatedRemainingTimeOfSec"] as! Int64
                        }
                        if dict.keys.contains("EstimatedTotalCount") && dict["EstimatedTotalCount"] != nil {
                            self.estimatedTotalCount = dict["EstimatedTotalCount"] as! Int64
                        }
                        if dict.keys.contains("FinishedCount") && dict["FinishedCount"] != nil {
                            self.finishedCount = dict["FinishedCount"] as! Int64
                        }
                        if dict.keys.contains("Progress") && dict["Progress"] != nil {
                            self.progress = dict["Progress"] as! Int32
                        }
                    }
                }
                public var capacity: Int64?

                public var checkpoint: String?

                public var connectorFullProgressOverview: SearchOmsOpenAPIProjectsResponseBody.Data.Steps.StepInfo.ConnectorFullProgressOverview?

                public var deployId: String?

                public var dstIops: Int64?

                public var dstRps: Int64?

                public var dstRpsRef: Int64?

                public var dstRt: Int64?

                public var dstRtRef: Int64?

                public var gmt: Int64?

                public var inconsistencies: Int64?

                public var incrTimestampCheckpoint: Int64?

                public var jobId: String?

                public var processedRecords: Int64?

                public var skipped: Bool?

                public var srcIops: Int64?

                public var srcIopsRef: Int64?

                public var srcRps: Int64?

                public var srcRpsRef: Int64?

                public var srcRt: Int64?

                public var srcRtRef: Int64?

                public var validated: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.connectorFullProgressOverview?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.capacity != nil {
                        map["Capacity"] = self.capacity!
                    }
                    if self.checkpoint != nil {
                        map["Checkpoint"] = self.checkpoint!
                    }
                    if self.connectorFullProgressOverview != nil {
                        map["ConnectorFullProgressOverview"] = self.connectorFullProgressOverview?.toMap()
                    }
                    if self.deployId != nil {
                        map["DeployId"] = self.deployId!
                    }
                    if self.dstIops != nil {
                        map["DstIops"] = self.dstIops!
                    }
                    if self.dstRps != nil {
                        map["DstRps"] = self.dstRps!
                    }
                    if self.dstRpsRef != nil {
                        map["DstRpsRef"] = self.dstRpsRef!
                    }
                    if self.dstRt != nil {
                        map["DstRt"] = self.dstRt!
                    }
                    if self.dstRtRef != nil {
                        map["DstRtRef"] = self.dstRtRef!
                    }
                    if self.gmt != nil {
                        map["Gmt"] = self.gmt!
                    }
                    if self.inconsistencies != nil {
                        map["Inconsistencies"] = self.inconsistencies!
                    }
                    if self.incrTimestampCheckpoint != nil {
                        map["IncrTimestampCheckpoint"] = self.incrTimestampCheckpoint!
                    }
                    if self.jobId != nil {
                        map["JobId"] = self.jobId!
                    }
                    if self.processedRecords != nil {
                        map["ProcessedRecords"] = self.processedRecords!
                    }
                    if self.skipped != nil {
                        map["Skipped"] = self.skipped!
                    }
                    if self.srcIops != nil {
                        map["SrcIops"] = self.srcIops!
                    }
                    if self.srcIopsRef != nil {
                        map["SrcIopsRef"] = self.srcIopsRef!
                    }
                    if self.srcRps != nil {
                        map["SrcRps"] = self.srcRps!
                    }
                    if self.srcRpsRef != nil {
                        map["SrcRpsRef"] = self.srcRpsRef!
                    }
                    if self.srcRt != nil {
                        map["SrcRt"] = self.srcRt!
                    }
                    if self.srcRtRef != nil {
                        map["SrcRtRef"] = self.srcRtRef!
                    }
                    if self.validated != nil {
                        map["Validated"] = self.validated!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Capacity") && dict["Capacity"] != nil {
                        self.capacity = dict["Capacity"] as! Int64
                    }
                    if dict.keys.contains("Checkpoint") && dict["Checkpoint"] != nil {
                        self.checkpoint = dict["Checkpoint"] as! String
                    }
                    if dict.keys.contains("ConnectorFullProgressOverview") && dict["ConnectorFullProgressOverview"] != nil {
                        var model = SearchOmsOpenAPIProjectsResponseBody.Data.Steps.StepInfo.ConnectorFullProgressOverview()
                        model.fromMap(dict["ConnectorFullProgressOverview"] as! [String: Any])
                        self.connectorFullProgressOverview = model
                    }
                    if dict.keys.contains("DeployId") && dict["DeployId"] != nil {
                        self.deployId = dict["DeployId"] as! String
                    }
                    if dict.keys.contains("DstIops") && dict["DstIops"] != nil {
                        self.dstIops = dict["DstIops"] as! Int64
                    }
                    if dict.keys.contains("DstRps") && dict["DstRps"] != nil {
                        self.dstRps = dict["DstRps"] as! Int64
                    }
                    if dict.keys.contains("DstRpsRef") && dict["DstRpsRef"] != nil {
                        self.dstRpsRef = dict["DstRpsRef"] as! Int64
                    }
                    if dict.keys.contains("DstRt") && dict["DstRt"] != nil {
                        self.dstRt = dict["DstRt"] as! Int64
                    }
                    if dict.keys.contains("DstRtRef") && dict["DstRtRef"] != nil {
                        self.dstRtRef = dict["DstRtRef"] as! Int64
                    }
                    if dict.keys.contains("Gmt") && dict["Gmt"] != nil {
                        self.gmt = dict["Gmt"] as! Int64
                    }
                    if dict.keys.contains("Inconsistencies") && dict["Inconsistencies"] != nil {
                        self.inconsistencies = dict["Inconsistencies"] as! Int64
                    }
                    if dict.keys.contains("IncrTimestampCheckpoint") && dict["IncrTimestampCheckpoint"] != nil {
                        self.incrTimestampCheckpoint = dict["IncrTimestampCheckpoint"] as! Int64
                    }
                    if dict.keys.contains("JobId") && dict["JobId"] != nil {
                        self.jobId = dict["JobId"] as! String
                    }
                    if dict.keys.contains("ProcessedRecords") && dict["ProcessedRecords"] != nil {
                        self.processedRecords = dict["ProcessedRecords"] as! Int64
                    }
                    if dict.keys.contains("Skipped") && dict["Skipped"] != nil {
                        self.skipped = dict["Skipped"] as! Bool
                    }
                    if dict.keys.contains("SrcIops") && dict["SrcIops"] != nil {
                        self.srcIops = dict["SrcIops"] as! Int64
                    }
                    if dict.keys.contains("SrcIopsRef") && dict["SrcIopsRef"] != nil {
                        self.srcIopsRef = dict["SrcIopsRef"] as! Int64
                    }
                    if dict.keys.contains("SrcRps") && dict["SrcRps"] != nil {
                        self.srcRps = dict["SrcRps"] as! Int64
                    }
                    if dict.keys.contains("SrcRpsRef") && dict["SrcRpsRef"] != nil {
                        self.srcRpsRef = dict["SrcRpsRef"] as! Int64
                    }
                    if dict.keys.contains("SrcRt") && dict["SrcRt"] != nil {
                        self.srcRt = dict["SrcRt"] as! Int64
                    }
                    if dict.keys.contains("SrcRtRef") && dict["SrcRtRef"] != nil {
                        self.srcRtRef = dict["SrcRtRef"] as! Int64
                    }
                    if dict.keys.contains("Validated") && dict["Validated"] != nil {
                        self.validated = dict["Validated"] as! Bool
                    }
                }
            }
            public var estimatedRemainingSeconds: Int64?

            public var extraInfo: SearchOmsOpenAPIProjectsResponseBody.Data.Steps.ExtraInfo?

            public var finishTime: String?

            public var interactive: Bool?

            public var startTime: String?

            public var stepDescription: String?

            public var stepInfo: SearchOmsOpenAPIProjectsResponseBody.Data.Steps.StepInfo?

            public var stepName: String?

            public var stepOrder: Int32?

            public var stepProgress: Int32?

            public var stepStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.extraInfo?.validate()
                try self.stepInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.estimatedRemainingSeconds != nil {
                    map["EstimatedRemainingSeconds"] = self.estimatedRemainingSeconds!
                }
                if self.extraInfo != nil {
                    map["ExtraInfo"] = self.extraInfo?.toMap()
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.interactive != nil {
                    map["Interactive"] = self.interactive!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.stepDescription != nil {
                    map["StepDescription"] = self.stepDescription!
                }
                if self.stepInfo != nil {
                    map["StepInfo"] = self.stepInfo?.toMap()
                }
                if self.stepName != nil {
                    map["StepName"] = self.stepName!
                }
                if self.stepOrder != nil {
                    map["StepOrder"] = self.stepOrder!
                }
                if self.stepProgress != nil {
                    map["StepProgress"] = self.stepProgress!
                }
                if self.stepStatus != nil {
                    map["StepStatus"] = self.stepStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EstimatedRemainingSeconds") && dict["EstimatedRemainingSeconds"] != nil {
                    self.estimatedRemainingSeconds = dict["EstimatedRemainingSeconds"] as! Int64
                }
                if dict.keys.contains("ExtraInfo") && dict["ExtraInfo"] != nil {
                    var model = SearchOmsOpenAPIProjectsResponseBody.Data.Steps.ExtraInfo()
                    model.fromMap(dict["ExtraInfo"] as! [String: Any])
                    self.extraInfo = model
                }
                if dict.keys.contains("FinishTime") && dict["FinishTime"] != nil {
                    self.finishTime = dict["FinishTime"] as! String
                }
                if dict.keys.contains("Interactive") && dict["Interactive"] != nil {
                    self.interactive = dict["Interactive"] as! Bool
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("StepDescription") && dict["StepDescription"] != nil {
                    self.stepDescription = dict["StepDescription"] as! String
                }
                if dict.keys.contains("StepInfo") && dict["StepInfo"] != nil {
                    var model = SearchOmsOpenAPIProjectsResponseBody.Data.Steps.StepInfo()
                    model.fromMap(dict["StepInfo"] as! [String: Any])
                    self.stepInfo = model
                }
                if dict.keys.contains("StepName") && dict["StepName"] != nil {
                    self.stepName = dict["StepName"] as! String
                }
                if dict.keys.contains("StepOrder") && dict["StepOrder"] != nil {
                    self.stepOrder = dict["StepOrder"] as! Int32
                }
                if dict.keys.contains("StepProgress") && dict["StepProgress"] != nil {
                    self.stepProgress = dict["StepProgress"] as! Int32
                }
                if dict.keys.contains("StepStatus") && dict["StepStatus"] != nil {
                    self.stepStatus = dict["StepStatus"] as! String
                }
            }
        }
        public class TransferMapping : Tea.TeaModel {
            public class Databases : Tea.TeaModel {
                public class Tables : Tea.TeaModel {
                    public class AdbTableSchema : Tea.TeaModel {
                        public var distributedKeys: [String]?

                        public var partitionLifeCycle: Int32?

                        public var partitionStatement: String?

                        public var primaryKeys: [String]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.distributedKeys != nil {
                                map["DistributedKeys"] = self.distributedKeys!
                            }
                            if self.partitionLifeCycle != nil {
                                map["PartitionLifeCycle"] = self.partitionLifeCycle!
                            }
                            if self.partitionStatement != nil {
                                map["PartitionStatement"] = self.partitionStatement!
                            }
                            if self.primaryKeys != nil {
                                map["PrimaryKeys"] = self.primaryKeys!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("DistributedKeys") && dict["DistributedKeys"] != nil {
                                self.distributedKeys = dict["DistributedKeys"] as! [String]
                            }
                            if dict.keys.contains("PartitionLifeCycle") && dict["PartitionLifeCycle"] != nil {
                                self.partitionLifeCycle = dict["PartitionLifeCycle"] as! Int32
                            }
                            if dict.keys.contains("PartitionStatement") && dict["PartitionStatement"] != nil {
                                self.partitionStatement = dict["PartitionStatement"] as! String
                            }
                            if dict.keys.contains("PrimaryKeys") && dict["PrimaryKeys"] != nil {
                                self.primaryKeys = dict["PrimaryKeys"] as! [String]
                            }
                        }
                    }
                    public var adbTableSchema: SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping.Databases.Tables.AdbTableSchema?

                    public var filterColumns: [String]?

                    public var mappedName: String?

                    public var shardColumns: [String]?

                    public var tableId: String?

                    public var tableName: String?

                    public var type: String?

                    public var whereClause: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.adbTableSchema?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.adbTableSchema != nil {
                            map["AdbTableSchema"] = self.adbTableSchema?.toMap()
                        }
                        if self.filterColumns != nil {
                            map["FilterColumns"] = self.filterColumns!
                        }
                        if self.mappedName != nil {
                            map["MappedName"] = self.mappedName!
                        }
                        if self.shardColumns != nil {
                            map["ShardColumns"] = self.shardColumns!
                        }
                        if self.tableId != nil {
                            map["TableId"] = self.tableId!
                        }
                        if self.tableName != nil {
                            map["TableName"] = self.tableName!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.whereClause != nil {
                            map["WhereClause"] = self.whereClause!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AdbTableSchema") && dict["AdbTableSchema"] != nil {
                            var model = SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping.Databases.Tables.AdbTableSchema()
                            model.fromMap(dict["AdbTableSchema"] as! [String: Any])
                            self.adbTableSchema = model
                        }
                        if dict.keys.contains("FilterColumns") && dict["FilterColumns"] != nil {
                            self.filterColumns = dict["FilterColumns"] as! [String]
                        }
                        if dict.keys.contains("MappedName") && dict["MappedName"] != nil {
                            self.mappedName = dict["MappedName"] as! String
                        }
                        if dict.keys.contains("ShardColumns") && dict["ShardColumns"] != nil {
                            self.shardColumns = dict["ShardColumns"] as! [String]
                        }
                        if dict.keys.contains("TableId") && dict["TableId"] != nil {
                            self.tableId = dict["TableId"] as! String
                        }
                        if dict.keys.contains("TableName") && dict["TableName"] != nil {
                            self.tableName = dict["TableName"] as! String
                        }
                        if dict.keys.contains("Type") && dict["Type"] != nil {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("WhereClause") && dict["WhereClause"] != nil {
                            self.whereClause = dict["WhereClause"] as! String
                        }
                    }
                }
                public var databaseId: String?

                public var databaseName: String?

                public var mappedName: String?

                public var tables: [SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping.Databases.Tables]?

                public var tenantName: String?

                public var type: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.databaseId != nil {
                        map["DatabaseId"] = self.databaseId!
                    }
                    if self.databaseName != nil {
                        map["DatabaseName"] = self.databaseName!
                    }
                    if self.mappedName != nil {
                        map["MappedName"] = self.mappedName!
                    }
                    if self.tables != nil {
                        var tmp : [Any] = []
                        for k in self.tables! {
                            tmp.append(k.toMap())
                        }
                        map["Tables"] = tmp
                    }
                    if self.tenantName != nil {
                        map["TenantName"] = self.tenantName!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                        self.databaseId = dict["DatabaseId"] as! String
                    }
                    if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                        self.databaseName = dict["DatabaseName"] as! String
                    }
                    if dict.keys.contains("MappedName") && dict["MappedName"] != nil {
                        self.mappedName = dict["MappedName"] as! String
                    }
                    if dict.keys.contains("Tables") && dict["Tables"] != nil {
                        var tmp : [SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping.Databases.Tables] = []
                        for v in dict["Tables"] as! [Any] {
                            var model = SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping.Databases.Tables()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tables = tmp
                    }
                    if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
                        self.tenantName = dict["TenantName"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var databases: [SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping.Databases]?

            public var mode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.databases != nil {
                    var tmp : [Any] = []
                    for k in self.databases! {
                        tmp.append(k.toMap())
                    }
                    map["Databases"] = tmp
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Databases") && dict["Databases"] != nil {
                    var tmp : [SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping.Databases] = []
                    for v in dict["Databases"] as! [Any] {
                        var model = SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping.Databases()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.databases = tmp
                }
                if dict.keys.contains("Mode") && dict["Mode"] != nil {
                    self.mode = dict["Mode"] as! String
                }
            }
        }
        public class TransferStepConfig : Tea.TeaModel {
            public class IncrSyncStepTransferConfig : Tea.TeaModel {
                public var recordTypeList: [String]?

                public var startTimestamp: Int64?

                public var storeLogKeptHour: Int64?

                public var storeTransactionEnabled: Bool?

                public var transferStepType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.recordTypeList != nil {
                        map["RecordTypeList"] = self.recordTypeList!
                    }
                    if self.startTimestamp != nil {
                        map["StartTimestamp"] = self.startTimestamp!
                    }
                    if self.storeLogKeptHour != nil {
                        map["StoreLogKeptHour"] = self.storeLogKeptHour!
                    }
                    if self.storeTransactionEnabled != nil {
                        map["StoreTransactionEnabled"] = self.storeTransactionEnabled!
                    }
                    if self.transferStepType != nil {
                        map["TransferStepType"] = self.transferStepType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RecordTypeList") && dict["RecordTypeList"] != nil {
                        self.recordTypeList = dict["RecordTypeList"] as! [String]
                    }
                    if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
                        self.startTimestamp = dict["StartTimestamp"] as! Int64
                    }
                    if dict.keys.contains("StoreLogKeptHour") && dict["StoreLogKeptHour"] != nil {
                        self.storeLogKeptHour = dict["StoreLogKeptHour"] as! Int64
                    }
                    if dict.keys.contains("StoreTransactionEnabled") && dict["StoreTransactionEnabled"] != nil {
                        self.storeTransactionEnabled = dict["StoreTransactionEnabled"] as! Bool
                    }
                    if dict.keys.contains("TransferStepType") && dict["TransferStepType"] != nil {
                        self.transferStepType = dict["TransferStepType"] as! String
                    }
                }
            }
            public var enableFullSync: Bool?

            public var enableIncrSync: Bool?

            public var enableStructSync: Bool?

            public var incrSyncStepTransferConfig: SearchOmsOpenAPIProjectsResponseBody.Data.TransferStepConfig.IncrSyncStepTransferConfig?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.incrSyncStepTransferConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableFullSync != nil {
                    map["EnableFullSync"] = self.enableFullSync!
                }
                if self.enableIncrSync != nil {
                    map["EnableIncrSync"] = self.enableIncrSync!
                }
                if self.enableStructSync != nil {
                    map["EnableStructSync"] = self.enableStructSync!
                }
                if self.incrSyncStepTransferConfig != nil {
                    map["IncrSyncStepTransferConfig"] = self.incrSyncStepTransferConfig?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableFullSync") && dict["EnableFullSync"] != nil {
                    self.enableFullSync = dict["EnableFullSync"] as! Bool
                }
                if dict.keys.contains("EnableIncrSync") && dict["EnableIncrSync"] != nil {
                    self.enableIncrSync = dict["EnableIncrSync"] as! Bool
                }
                if dict.keys.contains("EnableStructSync") && dict["EnableStructSync"] != nil {
                    self.enableStructSync = dict["EnableStructSync"] as! Bool
                }
                if dict.keys.contains("IncrSyncStepTransferConfig") && dict["IncrSyncStepTransferConfig"] != nil {
                    var model = SearchOmsOpenAPIProjectsResponseBody.Data.TransferStepConfig.IncrSyncStepTransferConfig()
                    model.fromMap(dict["IncrSyncStepTransferConfig"] as! [String: Any])
                    self.incrSyncStepTransferConfig = model
                }
            }
        }
        public var businessName: String?

        public var destConfig: SearchOmsOpenAPIProjectsResponseBody.Data.DestConfig?

        public var labels: [SearchOmsOpenAPIProjectsResponseBody.Data.Labels]?

        public var projectId: String?

        public var projectName: String?

        public var projectOwner: String?

        public var sourceConfig: SearchOmsOpenAPIProjectsResponseBody.Data.SourceConfig?

        public var steps: [SearchOmsOpenAPIProjectsResponseBody.Data.Steps]?

        public var transferMapping: SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping?

        public var transferStepConfig: SearchOmsOpenAPIProjectsResponseBody.Data.TransferStepConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.destConfig?.validate()
            try self.sourceConfig?.validate()
            try self.transferMapping?.validate()
            try self.transferStepConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessName != nil {
                map["BusinessName"] = self.businessName!
            }
            if self.destConfig != nil {
                map["DestConfig"] = self.destConfig?.toMap()
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.projectOwner != nil {
                map["ProjectOwner"] = self.projectOwner!
            }
            if self.sourceConfig != nil {
                map["SourceConfig"] = self.sourceConfig?.toMap()
            }
            if self.steps != nil {
                var tmp : [Any] = []
                for k in self.steps! {
                    tmp.append(k.toMap())
                }
                map["Steps"] = tmp
            }
            if self.transferMapping != nil {
                map["TransferMapping"] = self.transferMapping?.toMap()
            }
            if self.transferStepConfig != nil {
                map["TransferStepConfig"] = self.transferStepConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessName") && dict["BusinessName"] != nil {
                self.businessName = dict["BusinessName"] as! String
            }
            if dict.keys.contains("DestConfig") && dict["DestConfig"] != nil {
                var model = SearchOmsOpenAPIProjectsResponseBody.Data.DestConfig()
                model.fromMap(dict["DestConfig"] as! [String: Any])
                self.destConfig = model
            }
            if dict.keys.contains("Labels") && dict["Labels"] != nil {
                var tmp : [SearchOmsOpenAPIProjectsResponseBody.Data.Labels] = []
                for v in dict["Labels"] as! [Any] {
                    var model = SearchOmsOpenAPIProjectsResponseBody.Data.Labels()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.labels = tmp
            }
            if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") && dict["ProjectName"] != nil {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("ProjectOwner") && dict["ProjectOwner"] != nil {
                self.projectOwner = dict["ProjectOwner"] as! String
            }
            if dict.keys.contains("SourceConfig") && dict["SourceConfig"] != nil {
                var model = SearchOmsOpenAPIProjectsResponseBody.Data.SourceConfig()
                model.fromMap(dict["SourceConfig"] as! [String: Any])
                self.sourceConfig = model
            }
            if dict.keys.contains("Steps") && dict["Steps"] != nil {
                var tmp : [SearchOmsOpenAPIProjectsResponseBody.Data.Steps] = []
                for v in dict["Steps"] as! [Any] {
                    var model = SearchOmsOpenAPIProjectsResponseBody.Data.Steps()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.steps = tmp
            }
            if dict.keys.contains("TransferMapping") && dict["TransferMapping"] != nil {
                var model = SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping()
                model.fromMap(dict["TransferMapping"] as! [String: Any])
                self.transferMapping = model
            }
            if dict.keys.contains("TransferStepConfig") && dict["TransferStepConfig"] != nil {
                var model = SearchOmsOpenAPIProjectsResponseBody.Data.TransferStepConfig()
                model.fromMap(dict["TransferStepConfig"] as! [String: Any])
                self.transferStepConfig = model
            }
        }
    }
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") && dict["Proposal"] != nil {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: [SearchOmsOpenAPIProjectsResponseBody.Data]?

    public var errorDetail: SearchOmsOpenAPIProjectsResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") && dict["Advice"] != nil {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") && dict["Cost"] != nil {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [SearchOmsOpenAPIProjectsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = SearchOmsOpenAPIProjectsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorDetail") && dict["ErrorDetail"] != nil {
            var model = SearchOmsOpenAPIProjectsResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class SearchOmsOpenAPIProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchOmsOpenAPIProjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SearchOmsOpenAPIProjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartOmsOpenAPIProjectRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") && dict["WorkerGradeId"] != nil {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class StartOmsOpenAPIProjectResponseBody : Tea.TeaModel {
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") && dict["Proposal"] != nil {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: Bool?

    public var errorDetail: StartOmsOpenAPIProjectResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") && dict["Advice"] != nil {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") && dict["Cost"] != nil {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorDetail") && dict["ErrorDetail"] != nil {
            var model = StartOmsOpenAPIProjectResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class StartOmsOpenAPIProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartOmsOpenAPIProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = StartOmsOpenAPIProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopOmsOpenAPIProjectRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") && dict["WorkerGradeId"] != nil {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class StopOmsOpenAPIProjectResponseBody : Tea.TeaModel {
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") && dict["Proposal"] != nil {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: Bool?

    public var errorDetail: StopOmsOpenAPIProjectResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") && dict["Advice"] != nil {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") && dict["Cost"] != nil {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorDetail") && dict["ErrorDetail"] != nil {
            var model = StopOmsOpenAPIProjectResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class StopOmsOpenAPIProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopOmsOpenAPIProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = StopOmsOpenAPIProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SwitchoverInstanceRequest : Tea.TeaModel {
    public var forced: Bool?

    public var instanceId: String?

    public var targetInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.forced != nil {
            map["Forced"] = self.forced!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.targetInstanceId != nil {
            map["TargetInstanceId"] = self.targetInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Forced") && dict["Forced"] != nil {
            self.forced = dict["Forced"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TargetInstanceId") && dict["TargetInstanceId"] != nil {
            self.targetInstanceId = dict["TargetInstanceId"] as! String
        }
    }
}

public class SwitchoverInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var message: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var data: SwitchoverInstanceResponseBody.Data?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SwitchoverInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SwitchoverInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchoverInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SwitchoverInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
