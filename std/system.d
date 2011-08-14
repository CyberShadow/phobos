// Written in the D programming language.

/**
 * Information about the target operating system, environment, and CPU
 *
 * Macros:
 *      WIKI = Phobos/StdSystem
 *
 * Copyright: Copyright Digital Mars 2000 - 2009.
 * License:   <a href="http://www.boost.org/LICENSE_1_0.txt">Boost License 1.0</a>.
 * Authors:   $(WEB digitalmars.com, Walter Bright)
 * Source:    $(PHOBOSSRC std/_system.d)
 */
/*          Copyright Digital Mars 2000 - 2009.
 * Distributed under the Boost Software License, Version 1.0.
 *    (See accompanying file LICENSE_1_0.txt or copy at
 *          http://www.boost.org/LICENSE_1_0.txt)
 */
module std.system;

/// Operating system family
enum OS
{
	Other,
	Windows,                  /// Microsoft 32 bit Windows systems
	Linux,                    /// all Linux systems
	FreeBSD,
	OSX,
}

version (Windows)
	const OS os = OS.Windows;
else
version (linux)
	const OS os = OS.Linux;
else
version (FreeBSD)
	const OS os = OS.FreeBSD;
else
version (OSX)
	const OS os = OS.OSX;
else
	const OS os = OS.Other;

/// Byte order endianness
enum Endian
{
	BigEndian,      /// big endian byte order
	LittleEndian    /// little endian byte order
}

/// Native system endianness
version (LittleEndian)
	const Endian endian = Endian.LittleEndian;
else
	const Endian endian = Endian.BigEndian;

alias uint[] OSVersion;

OSVersion getOSVersion()
{
	// return parsed version from GetVersion / uname
	return null;
}

enum OSVersion_Windows2000 = [5, 0];
enum OSVersion_WindowsXP = [5, 1];
enum OSVersion_WindowsVista = [6, 0];
enum OSVersion_Windows7 = [6, 1];
