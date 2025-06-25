using OptenStatus as my from '../db/schema';

using {API_BUSINESS_PARTNER as bp} from './external/API_BUSINESS_PARTNER';

@impl : 'srv/services.js'
service OptenStatusService {
    @odata.draft.enabled
    @odata.draft.bypass
    entity BPStatuses as projection on my.BPStatuses actions{
        action MarkForDeletion();
    }

}

