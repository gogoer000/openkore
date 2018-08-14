#########################################################################
#  OpenKore - Packet Receiveing
#  This module contains functions for Receiveing packets to the server.
#
#  This software is open source, licensed under the GNU General Public
#  License, version 2.
#  Basically, this means that you're allowed to modify and distribute
#  this software. However, if you distribute modified versions, you MUST
#  also distribute the source code.
#  See http://www.gnu.org/licenses/gpl.html for the full license.
########################################################################
# Korea (kRO) #bysctnightcore
# The majority of private servers use eAthena, this is a clone of kRO
package Network::Receive::kRO::RagexeRE_2017_09_27b;
use strict;
use base qw(Network::Receive::kRO::RagexeRE_2017_09_20b);

sub new {
	my ($class) = @_;
	return $class->SUPER::new(@_);
}

1;
=pod
// 20170927
if (packetVersion == 20170927)
{
    packet(CMSG_HOMUNCULUS_MENU,          0x02c4,   5, clif->pHomMenu);
    packet(CMSG_NAME_REQUEST,             0x035f,   6, clif->pGetCharNameRequest);
//  packet(UNKNOWN,                       0x0361,   4, clif->pDull);
    packet(CMSG_BUYINGSTORE_CREATE,       0x0362,  -1, clif->pReqOpenBuyingStore);
    packet(CMSG_MAP_SERVER_CONNECT,       0x0366,  19, clif->pWantToConnection);
    packet(CMSG_SKILL_USE_BEING,          0x085c,  10, clif->pUseSkillToId);
    packet(CMSG_SOLVE_CHAR_NAME,          0x0873,   6, clif->pSolveCharName);
    packet(CMSG_SEARCHSTORE_CLICK,        0x0875,  12, clif->pSearchStoreInfoListItemClick);
    packet(CMSG_BUYINGSTORE_SELL,         0x087d,  -1, clif->pReqTradeBuyingStore);
    packet(CMSG_PLAYER_CHANGE_DIR,        0x087e,   5, clif->pChangeDir);
    packet(CMSG_SEARCHSTORE_NEXT_PAGE,    0x088b,   2, clif->pSearchStoreInfoNextPage);
    packet(CMSG_PLAYER_CHANGE_ACT,        0x0899,   7, clif->pActionRequest);
    packet(CMSG_STORAGE_PASSWORD,         0x089a,  36, clif->pStoragePassword);
    packet(CMSG_MOVE_FROM_STORAGE,        0x089b,   8, clif->pMoveFromKafra);
    packet(CMSG_BUYINGSTORE_CLOSE,        0x08a3,   2, clif->pReqCloseBuyingStore);
    packet(CMSG_ITEM_LIST_WINDOW_SELECT,  0x08a5,  -1, clif->pItemListWindowSelected);
//  packet(UNKNOWN,                       0x08a6,   8, clif->pDull);
    packet(CMSG_SEARCHSTORE_SEARCH,       0x08ad,  -1, clif->pSearchStoreInfo);
    packet(CMSG_BUYINGSTORE_OPEN,         0x091e,   6, clif->pReqClickBuyingStore);
    packet(CMSG_PARTY_INVITE2,            0x0922,  26, clif->pPartyInvite2);
    packet(CMSG_PLAYER_INVENTORY_DROP,    0x0923,   6, clif->pDropItem);
    packet(CMSG_PLAYER_CHANGE_DEST,       0x0927,   5, clif->pWalkToXY);
    packet(CMSG_SKILL_USE_POSITION_MORE,  0x093b,  90, clif->pUseSkillToPosMoreInfo);
    packet(CMSG_BOOKING_REGISTER_REQ,     0x0942,  18, clif->pPartyBookingRegisterReq);
    packet(CMSG_MAP_PING,                 0x0945,   6, clif->pTickSend);
    packet(CMSG_FRIENDS_ADD_PLAYER,       0x094b,  26, clif->pFriendsListAdd);
    packet(CMSG_ITEM_PICKUP,              0x094d,   6, clif->pTakeItem);
    packet(CMSG_MOVE_TO_STORAGE,          0x0959,   8, clif->pMoveToKafra);
    packet(CMSG_SKILL_USE_POSITION,       0x095a,  10, clif->pUseSkillToPos);
}

#elif PACKETVER == 20170927 // 2017-09-27bRagexeRE or 2017-09-27dRagexeRE
#	packet_keys(0x15624100,0x0CE1463E,0x0E5D6534);
=cut
