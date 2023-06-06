trigger AssetTrigger on Asset (before insert, before update) {
    if (trigger.isBefore) {
        if (trigger.isInsert || trigger.isUpdate) {
            AssetTriggerHandler.Assethandlerupdate(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
        }
    }
}