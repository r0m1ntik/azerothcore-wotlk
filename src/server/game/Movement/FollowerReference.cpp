/*
 * Copyright (C) 2016+     AzerothCore <www.azerothcore.org>, released under GNU GPL v2 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-GPL2
 * Copyright (C) 2008-2016 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 */

#include "FollowerReference.h"
#include "TargetedMovementGenerator.h"
#include "Unit.h"

void FollowerReference::targetObjectBuildLink()
{
    getTarget()->addFollower(this);
}

void FollowerReference::targetObjectDestroyLink()
{
    getTarget()->removeFollower(this);
}

void FollowerReference::sourceObjectDestroyLink()
{
    GetSource()->stopFollowing();
}
