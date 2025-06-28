using OptenStatus as my from '../db/schema';



@impl : 'srv/services.js'
service OptenStatusService {
    //@odata.draft.enabled
    @odata.draft.bypass
    entity BPStatuses as projection on my.BPStatuses actions{
        action MarkForDeletion();
    }

    entity OptenStatuses as projection on my.OptenStatuses;

}

