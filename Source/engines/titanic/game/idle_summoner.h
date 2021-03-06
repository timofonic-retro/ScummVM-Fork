/* ScummVM - Graphic Adventure Engine
 *
 * ScummVM is the legal property of its developers, whose names
 * are too numerous to list here. Please refer to the COPYRIGHT
 * file distributed with this source distribution.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
 *
 */

#ifndef TITANIC_IDLE_SUMMONER_H
#define TITANIC_IDLE_SUMMONER_H

#include "titanic/core/game_object.h"

namespace Titanic {

class CIdleSummoner : public CGameObject {
	DECLARE_MESSAGE_MAP;
	bool EnterViewMsg(CEnterViewMsg *msg);
	bool TimerMsg(CTimerMsg *msg);
	bool ActMsg(CActMsg *msg);
	bool LoadSuccessMsg(CLoadSuccessMsg *msg);
public:
	int _fieldBC;
	int _fieldC0;
	int _fieldC4;
	int _fieldC8;
	int _fieldCC;
	int _fieldD0;
	int _timerId;
	uint _oldNodesCtr;
	uint _ticks;
public:
	CIdleSummoner();
	CLASSDEF;

	/**
	 * Save the data for the class to file
	 */
	virtual void save(SimpleFile *file, int indent);

	/**
	 * Load the data for the class from file
	 */
	virtual void load(SimpleFile *file);
};

} // End of namespace Titanic

#endif /* TITANIC_IDLE_SUMMONER_H */
