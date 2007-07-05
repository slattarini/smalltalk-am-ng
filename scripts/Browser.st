"======================================================================
|
|   Smalltalk GUI launching script
|
|
 ======================================================================"


"======================================================================
|
| Copyright 1992,94,95,99,2000,2001,2002 Free Software Foundation, Inc.
| Written by Brad Diller.
|
| This file is part of GNU Smalltalk.
|
| GNU Smalltalk is free software; you can redistribute it and/or modify it
| under the terms of the GNU General Public License as published by the Free
| Software Foundation; either version 2, or (at your option) any later version.
| 
| GNU Smalltalk is distributed in the hope that it will be useful, but WITHOUT
| ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
| FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
| details.
| 
| You should have received a copy of the GNU General Public License along with
| GNU Smalltalk; see the file COPYING.  If not, write to the Free Software
| Foundation, 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.  
|
 ======================================================================
 

"
(Smalltalk includesKey: #BLOX) ifFalse: [
    PackageLoader fileInPackage: 'Browser'.
    ObjectMemory snapshot
]!

(Smalltalk includesKey: #BLOX)
    ifFalse: [
        stdout nextPutAll: 'BLOX not loaded, is Tcl/Tk installed?'; nl
    ]
    ifTrue: [
        stdout nextPutAll: 'Starting window environment...'; nl.
        BLOX.BLOXBrowser.BrowserMain new initialize
    ]!

ObjectMemory quit!