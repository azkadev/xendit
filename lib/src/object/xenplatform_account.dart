
/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myXenPlatformAccountNode = XenPlatformAccount.fromJson(map);
*/ 
part of xendit;

class PublicProfile {
    String? businessname;

    PublicProfile({this.businessname}); 

    PublicProfile.fromJson(Map<String, dynamic> json) {
        businessname = json['business_name'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data['business_name'] = businessname;
        return data;
    }
}

class XenPlatformAccount {
    String? id;
    String? created;
    String? updated;
    String? type;
    String? email;
    PublicProfile? publicprofile;
    String? status;

    XenPlatformAccount({this.id, this.created, this.updated, this.type, this.email, this.publicprofile, this.status}); 

    XenPlatformAccount.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        created = json['created'];
        updated = json['updated'];
        type = json['type'];
        email = json['email'];
        publicprofile = json['public_profile'] != null ? PublicProfile?.fromJson(json['public_profile']) : null;
        status = json['status'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data['id'] = id;
        data['created'] = created;
        data['updated'] = updated;
        data['type'] = type;
        data['email'] = email;
        try {
        data['public_profile'] = publicprofile!.toJson();
        }catch (e){
          
        }
        data['status'] = status;
        return data;
    }
}

