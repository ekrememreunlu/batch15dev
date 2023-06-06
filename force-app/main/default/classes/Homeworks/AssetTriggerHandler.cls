public class AssetTriggerHandler {
    public static void Assethandlerupdate(List<Asset> aTriggerNew, List<Asset> aTriggerOld, Map<Id, Asset> newAssetMap, Map<Id, Asset> oldAssetMap) {
       for (Asset eachas : aTriggerNew) {
        if (eachas.status == 'Shipped') {
            eachas.description = 'Asset is shipped';
        }
        else if (eachas.status == 'Installed') {
            eachas.description = 'Asset is Installed';
        }
        else {
            Asset oldAsset = oldAssetMap.get(eachas.Id);
            if (oldAsset != null) {
                eachas.Description = oldAsset.Description;
            }
    }

    }
}
}