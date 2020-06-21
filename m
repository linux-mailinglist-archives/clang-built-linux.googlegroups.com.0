Return-Path: <clang-built-linux+bncBDD5ZFHSSQARB36EXX3QKGQEXWD6CTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id BF804202ACD
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jun 2020 15:36:48 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id o1sf1820648ljg.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jun 2020 06:36:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592746608; cv=pass;
        d=google.com; s=arc-20160816;
        b=qzuG7RCOaaLDr9UvaHa8DHz0HBFlGmvkK/wM9PzGHV8GLJhDTKcc1lDwy8s+SYRD7I
         WNEdspvJ75+FF76luyL3VMTQmtmfSjh8bMMG6xkP46ykjW9kMlTGMOXrD4Bn3PcEYwFW
         av94phebgHY8fikR2ZikCEQps077MhbfwOxPp95DecZjyhudXTz3/ijVq714UzeBJfY1
         lVCoVcGUx8ZZGewSqVdmEtxD4yFHi5ulXlvSkmfa9RvB6gvmP5ZtCtFT79QjB9GYH3PH
         iwH4UaTS2J9L0ah/vsirUK7G7x7Dhqs/Kzr4t+biYPRINN6pKh/vb4lbiBDUBA4P6GvM
         1P4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=EHh/iDisQsMl52anvzBYkhF71R//xxzV9qAWylzzf58=;
        b=rDS7QwyUHqlECE6oHPEKaUDNdyQkeLkJfxwTiP3Bc3YSs73S2q4zpQVHpdbITwSnMf
         7dvdNS0W00gAkQoziUdnSgKRCDw73Bxfsc4WM5AlPRT+DdsQqPrp6qfsBRi796tKQBej
         9L+BXFaBJHWjVc9n1bzLmPy3dO9yivXPxajbExYMOXDiHIKhIHq6wlutpq2lRZ5OsnZN
         mo6dBsI74ZsPsIlpMrIV7+kBcCnFSBuoUJYNypsvlBQ7axBIoTAzjaxPL+vrBrcpzGn4
         mnxsb4slx5zmWZfJU3U6/g1cAPh37n+8YKMx2ebBalBlixCjRSz0G+X5Y5rYKbXulnv/
         fNmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EHh/iDisQsMl52anvzBYkhF71R//xxzV9qAWylzzf58=;
        b=ciRn3Nev+AFfdtv1bGZrsftuq2NMUttRnQrrEYEL63VvYtdICderX+206s6xc0TaAh
         OY4QSVMt1zStmAk8+3gSDu82lAhkNBe6ybV+pT/09ejD7zpwT6rPRWWaKH3XlNsX0MLG
         fk9dTTejcWQNCmGz4MiK9+5GG9lEQ+YLpwagZ+DRNGTewtZFfeIAuq2+VRKz8Q/fRqLo
         yL/GY8vLPD7k8gdoMMCxh7v6tkutC7i5HYjkvU4VaPId4BP988uzcbmONuNcEiENLOBH
         F7JWi6OadpPowRkwUbX9X9Jj/v6zYV9EZiu+rjMqV84w2PalXhZ0w0gC2AeBF7mgikCg
         n2ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EHh/iDisQsMl52anvzBYkhF71R//xxzV9qAWylzzf58=;
        b=OIgYu2BdoO0c+iHhJ77J5E/Qdoke6Bo9jfsMckfYvn1W/2rE87bv4y79vnI+EMuzrV
         XBcC/8i1TOQGS2z/VQlfEu1QTg8gpSmms36z7+x8jEdUhhCqnpxnHyRK+jFK3DRaps9o
         h5t07HMPVuO6rdCNPJheatCFx7Ljf0ReiWPlvUwIwcoByBEoktQmV8S0FoxLWD8/uS5p
         xn333F36bdEh6Tu8M7FSGpWFnNn4i+MkeHkbVF6H73OOQoKC++Abwg6T1ZwqbqZ/M6zd
         qQhzjRjLGzsyVJFped9VmZ7xWd2gx4zVnuCgsHttenTon1N1ta3GhCLa73676lbdzlsb
         WRiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316zfo54S7y5CgCVUFCLyk02LV3WBK06ZQyE9KD/dN+HoxeY3IK
	nhwi/nyeemT/iNyVHNRnqQw=
X-Google-Smtp-Source: ABdhPJzWXKFA1xL/hEeIXNmC8gf4kajjeCbcL8uesdN4TTYV/lpvry+xUi83RkgRJfj4L79Fy+GmBQ==
X-Received: by 2002:a19:ef09:: with SMTP id n9mr2580716lfh.215.1592746608021;
        Sun, 21 Jun 2020 06:36:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:be95:: with SMTP id o143ls1379098lff.0.gmail; Sun, 21
 Jun 2020 06:36:47 -0700 (PDT)
X-Received: by 2002:a19:7f02:: with SMTP id a2mr7023453lfd.193.1592746607192;
        Sun, 21 Jun 2020 06:36:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592746607; cv=none;
        d=google.com; s=arc-20160816;
        b=zA8F8EajWK9wflvC5cOCxdsAikkfReBKjExKa08gQObps3ZoMGHI8KAPj1UUGOiiN/
         EZ4lLY1bQE6oYG1+TjlIBh1rUryE/ts0TrZSROIdYJ28OBy8+kaLkRS4wys4JR0RxLJD
         27n9kMB6qOpNfA0DhTuGLSsfLgAgAF2nKW15LDSr91pWP0iynJy3nA891rx2zbTzJbHL
         /yBwbSbQF7wbA4tcWP/fllLRVx7rPhvJYzdCceg09IdrVwiFGW/e3aVR/ZGDG0TooCN5
         z4wBWsbaZrchW6yc8a1+4wWn8P2dPL5qN68mK4BvXDebJMuWQBdh3CfyVJTPtj+9xCWQ
         UXVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=eBsS+JO6azwWwN7H9ecYzSg2ZLoMmtlWvlawSMZAQcQ=;
        b=eR5nWyoVcY69zL8tp02TWFHt/qUU8tM4DgOtiDw4nBDakzlrYE/O5L+Bl9wEB1VNZ3
         ylb+/NSVDFzvCWCnGfR5kwOksUtyyfgMboL1dwB6/zLCkkjq1CkVgDjnmIiJyH3Knktw
         rAl5+G6ei5eL8OXF3CTmT2JxEfYX4OI9B1WEDjjHbWxSsfvRbjdwaNsRl/61qDXGfzun
         bohBF2ZoHoiI/Ne1Rzh20z06DjOVZ0yx81MKRlAkNy7NY2x02pT2q7JQosP1hRokrkck
         2fkSFUUZLfdTlCXQ+UaFY6TcvMBHdRysuNeiuQMEvlrEYDK4h5A0RG8G29B0SreDV2Jo
         40wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [2a01:4f8:c0c:1465::1])
        by gmr-mx.google.com with ESMTPS id b13si56911lfc.1.2020.06.21.06.36.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jun 2020 06:36:47 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) client-ip=2a01:4f8:c0c:1465::1;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id 58D6F467DA;
	Sun, 21 Jun 2020 13:36:41 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: Jonathan Corbet <corbet@lwn.net>,
	Randy Dunlap <rdunlap@infradead.org>,
	Tony Fischetti <tony.fischetti@gmail.com>,
	Chris Packham <chris.packham@alliedtelesis.co.nz>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Jason A. Donenfeld" <Jason@zx2c4.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Borislav Petkov <bp@suse.de>,
	Will Deacon <will@kernel.org>,
	"Chang S. Bae" <chang.seok.bae@intel.com>,
	Joe Perches <joe@perches.com>,
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
	Kees Cook <keescook@chromium.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Jacob Huisman <jacobhuisman@kernelthusiast.com>,
	Federico Vaga <federico.vaga@vaga.pv.it>,
	=?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Subject: [PATCH] Replace HTTP links with HTTPS ones: Documentation/process
Date: Sun, 21 Jun 2020 15:36:30 +0200
Message-Id: <20200621133630.46435-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Bar: /
X-Original-Sender: grandmaster@al2klimov.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of grandmaster@al2klimov.de
 designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Rationale:
Reduces attack surface on kernel devs opening the links for MITM
as HTTPS traffic is much harder to manipulate.

Deterministic algorithm:
For each file:
  If not .svg:
    For each line:
      If doesn't contain `\bxmlns\b`:
        For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
          If both the HTTP and HTTPS versions
          return 200 OK and serve the same content:
            Replace HTTP with HTTPS.

Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
---
 Documentation/process/2.Process.rst           | 12 ++++----
 Documentation/process/4.Coding.rst            |  4 +--
 Documentation/process/botching-up-ioctls.rst  |  2 +-
 Documentation/process/changes.rst             |  6 ++--
 Documentation/process/clang-format.rst        |  2 +-
 Documentation/process/coding-style.rst        |  2 +-
 Documentation/process/howto.rst               |  2 +-
 Documentation/process/kernel-docs.rst         | 28 +++++++++----------
 .../process/maintainer-pgp-guide.rst          |  2 +-
 Documentation/process/submitting-drivers.rst  | 22 +++++++--------
 Documentation/process/submitting-patches.rst  |  4 +--
 11 files changed, 43 insertions(+), 43 deletions(-)

diff --git a/Documentation/process/2.Process.rst b/Documentation/process/2.=
Process.rst
index b21b5b245d13..3588f48841eb 100644
--- a/Documentation/process/2.Process.rst
+++ b/Documentation/process/2.Process.rst
@@ -295,7 +295,7 @@ mainline get there via -mm.
 The current -mm patch is available in the "mmotm" (-mm of the moment)
 directory at:
=20
-	http://www.ozlabs.org/~akpm/mmotm/
+	https://www.ozlabs.org/~akpm/mmotm/
=20
 Use of the MMOTM tree is likely to be a frustrating experience, though;
 there is a definite chance that it will not even compile.
@@ -306,7 +306,7 @@ the mainline is expected to look like after the next me=
rge window closes.
 Linux-next trees are announced on the linux-kernel and linux-next mailing
 lists when they are assembled; they can be downloaded from:
=20
-	http://www.kernel.org/pub/linux/kernel/next/
+	https://www.kernel.org/pub/linux/kernel/next/
=20
 Linux-next has become an integral part of the kernel development process;
 all patches merged during a given merge window should really have found
@@ -365,21 +365,21 @@ to keep up with what other developers (and the mainli=
ne) are doing.
 Git is now packaged by almost all Linux distributions.  There is a home
 page at:
=20
-	http://git-scm.com/
+	https://git-scm.com/
=20
 That page has pointers to documentation and tutorials.
=20
 Among the kernel developers who do not use git, the most popular choice is
 almost certainly Mercurial:
=20
-	http://www.selenic.com/mercurial/
+	https://www.selenic.com/mercurial/
=20
 Mercurial shares many features with git, but it provides an interface whic=
h
 many find easier to use.
=20
 The other tool worth knowing about is Quilt:
=20
-	http://savannah.nongnu.org/projects/quilt/
+	https://savannah.nongnu.org/projects/quilt/
=20
 Quilt is a patch management system, rather than a source code management
 system.  It does not track history over time; it is, instead, oriented
@@ -494,7 +494,7 @@ Andrew Morton gives this advice for aspiring kernel dev=
elopers
 	with others on getting things fixed up (this can require
 	persistence!) but that's fine - it's a part of kernel development.
=20
-(http://lwn.net/Articles/283982/).
+(https://lwn.net/Articles/283982/).
=20
 In the absence of obvious problems to fix, developers are advised to look
 at the current lists of regressions and open bugs in general.  There is
diff --git a/Documentation/process/4.Coding.rst b/Documentation/process/4.C=
oding.rst
index 13dd893c9f88..c27e59d2f702 100644
--- a/Documentation/process/4.Coding.rst
+++ b/Documentation/process/4.Coding.rst
@@ -210,7 +210,7 @@ breaks?  The best answer to this question was expressed=
 by Linus in July,
 	progress at all. Is it two steps forwards, one step back, or one
 	step forward and two steps back?
=20
-(http://lwn.net/Articles/243460/).
+(https://lwn.net/Articles/243460/).
=20
 An especially unwelcome type of regression is any sort of change to the
 user-space ABI.  Once an interface has been exported to user space, it mus=
t
@@ -323,7 +323,7 @@ other architectures.  If you do not happen to have an S=
/390 system or a
 Blackfin development board handy, you can still perform the compilation
 step.  A large set of cross compilers for x86 systems can be found at
=20
-	http://www.kernel.org/pub/tools/crosstool/
+	https://www.kernel.org/pub/tools/crosstool/
=20
 Some time spent installing and using these compilers will help avoid
 embarrassment later.
diff --git a/Documentation/process/botching-up-ioctls.rst b/Documentation/p=
rocess/botching-up-ioctls.rst
index 2d4829b2fb09..ba4667ab396b 100644
--- a/Documentation/process/botching-up-ioctls.rst
+++ b/Documentation/process/botching-up-ioctls.rst
@@ -2,7 +2,7 @@
 (How to avoid) Botching up ioctls
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
-From: http://blog.ffwll.ch/2013/11/botching-up-ioctls.html
+From: https://blog.ffwll.ch/2013/11/botching-up-ioctls.html
=20
 By: Daniel Vetter, Copyright =C2=A9 2013 Intel Corporation
=20
diff --git a/Documentation/process/changes.rst b/Documentation/process/chan=
ges.rst
index 5cfb54c2aaa6..4f376db3b978 100644
--- a/Documentation/process/changes.rst
+++ b/Documentation/process/changes.rst
@@ -129,7 +129,7 @@ Architectural changes
 ---------------------
=20
 DevFS has been obsoleted in favour of udev
-(http://www.kernel.org/pub/linux/utils/kernel/hotplug/)
+(https://www.kernel.org/pub/linux/utils/kernel/hotplug/)
=20
 32-bit UID support is now in place.  Have fun!
=20
@@ -421,7 +421,7 @@ Intel P6 microcode
 udev
 ----
=20
-- <http://www.freedesktop.org/software/systemd/man/udev.html>
+- <https://www.freedesktop.org/software/systemd/man/udev.html>
=20
 FUSE
 ----
@@ -474,4 +474,4 @@ Kernel documentation
 Sphinx
 ------
=20
-- <http://www.sphinx-doc.org/>
+- <https://www.sphinx-doc.org/>
diff --git a/Documentation/process/clang-format.rst b/Documentation/process=
/clang-format.rst
index 6710c0707721..82676e5a7c6e 100644
--- a/Documentation/process/clang-format.rst
+++ b/Documentation/process/clang-format.rst
@@ -32,7 +32,7 @@ Linux distributions for a long time. Search for ``clang-f=
ormat`` in
 your repositories. Otherwise, you can either download pre-built
 LLVM/clang binaries or build the source code from:
=20
-    http://releases.llvm.org/download.html
+    https://releases.llvm.org/download.html
=20
 See more information about the tool at:
=20
diff --git a/Documentation/process/coding-style.rst b/Documentation/process=
/coding-style.rst
index 2657a55c6f12..14f06ec22727 100644
--- a/Documentation/process/coding-style.rst
+++ b/Documentation/process/coding-style.rst
@@ -1129,7 +1129,7 @@ Addison-Wesley, Inc., 1999.
 ISBN 0-201-61586-X.
=20
 GNU manuals - where in compliance with K&R and this text - for cpp, gcc,
-gcc internals and indent, all available from http://www.gnu.org/manual/
+gcc internals and indent, all available from https://www.gnu.org/manual/
=20
 WG14 is the international standardization working group for the programmin=
g
 language C, URL: http://www.open-std.org/JTC1/SC22/WG14/
diff --git a/Documentation/process/howto.rst b/Documentation/process/howto.=
rst
index 70791e153de1..20c9e07e09a4 100644
--- a/Documentation/process/howto.rst
+++ b/Documentation/process/howto.rst
@@ -597,7 +597,7 @@ For more details on what this should all look like, ple=
ase see the
 ChangeLog section of the document:
=20
   "The Perfect Patch"
-      http://www.ozlabs.org/~akpm/stuff/tpp.txt
+      https://www.ozlabs.org/~akpm/stuff/tpp.txt
=20
=20
 All of these things are sometimes very hard to do. It can take years to
diff --git a/Documentation/process/kernel-docs.rst b/Documentation/process/=
kernel-docs.rst
index 9d6d0ac4fca9..64786e50026c 100644
--- a/Documentation/process/kernel-docs.rst
+++ b/Documentation/process/kernel-docs.rst
@@ -98,7 +98,7 @@ On-line docs
     * Title: **Linux Device Drivers, Third Edition**
=20
       :Author: Jonathan Corbet, Alessandro Rubini, Greg Kroah-Hartman
-      :URL: http://lwn.net/Kernel/LDD3/
+      :URL: https://lwn.net/Kernel/LDD3/
       :Date: 2005
       :Description: A 600-page book covering the (2.6.10) driver
         programming API and kernel hacking in general.  Available under th=
e
@@ -129,7 +129,7 @@ On-line docs
     * Title: **Linux Kernel Module Programming Guide**
=20
       :Author: Ori Pomerantz.
-      :URL: http://tldp.org/LDP/lkmpg/2.6/html/index.html
+      :URL: https://tldp.org/LDP/lkmpg/2.6/html/index.html
       :Date: 2001
       :Keywords: modules, GPL book, /proc, ioctls, system calls,
         interrupt handlers .
@@ -244,7 +244,7 @@ On-line docs
     * Title: **I/O Event Handling Under Linux**
=20
       :Author: Richard Gooch.
-      :URL: http://web.mit.edu/~yandros/doc/io-events.html
+      :URL: https://web.mit.edu/~yandros/doc/io-events.html
       :Date: 1999
       :Keywords: IO, I/O, select(2), poll(2), FDs, aio_read(2), readiness
         event queues.
@@ -295,7 +295,7 @@ On-line docs
     * Title: **Design and Implementation of the Second Extended Filesystem=
**
=20
       :Author: R=C3=A9my Card, Theodore Ts'o, Stephen Tweedie.
-      :URL: http://web.mit.edu/tytso/www/linux/ext2intro.html
+      :URL: https://web.mit.edu/tytso/www/linux/ext2intro.html
       :Date: 1998
       :Keywords: ext2, linux fs history, inode, directory, link, devices,
         VFS, physical structure, performance, benchmarks, ext2fs library,
@@ -322,7 +322,7 @@ On-line docs
     * Title: **Linux Kernel Hackers' Guide**
=20
       :Author: Michael K. Johnson.
-      :URL: http://www.tldp.org/LDP/khg/HyperNews/get/khg.html
+      :URL: https://www.tldp.org/LDP/khg/HyperNews/get/khg.html
       :Date: 1997
       :Keywords: device drivers, files, VFS, kernel interface, character v=
s
         block devices, hardware interrupts, scsi, DMA, access to user memo=
ry,
@@ -375,7 +375,7 @@ On-line docs
     * Title: **Dissecting Interrupts and Browsing DMA**
=20
       :Author: Alessandro Rubini and Georg v. Zezschwitz.
-      :URL: http://www.linuxjournal.com/article.php?sid=3D1222
+      :URL: https://www.linuxjournal.com/article.php?sid=3D1222
       :Date: 1996
       :Keywords: interrupts, irqs, DMA, bottom halves, task queues.
       :Description: Linux Journal Kernel Korner article.
@@ -391,7 +391,7 @@ On-line docs
     * Title: **Device Drivers Concluded**
=20
       :Author: Georg v. Zezschwitz.
-      :URL: http://www.linuxjournal.com/article.php?sid=3D1287
+      :URL: https://www.linuxjournal.com/article.php?sid=3D1287
       :Date: 1996
       :Keywords: address spaces, pages, pagination, page management,
         demand loading, swapping, memory protection, memory mapping, mmap,
@@ -405,7 +405,7 @@ On-line docs
     * Title: **Network Buffers And Memory Management**
=20
       :Author: Alan Cox.
-      :URL: http://www.linuxjournal.com/article.php?sid=3D1312
+      :URL: https://www.linuxjournal.com/article.php?sid=3D1312
       :Date: 1996
       :Keywords: sk_buffs, network devices, protocol/link layer
         variables, network devices flags, transmit, receive,
@@ -418,7 +418,7 @@ On-line docs
     * Title: **Analysis of the Ext2fs structure**
=20
       :Author: Louis-Dominique Dubeau.
-      :URL: http://teaching.csse.uwa.edu.au/units/CITS2002/fs-ext2/
+      :URL: https://teaching.csse.uwa.edu.au/units/CITS2002/fs-ext2/
       :Date: 1994
       :Keywords: ext2, filesystem, ext2fs.
       :Description: Description of ext2's blocks, directories, inodes,
@@ -480,7 +480,7 @@ Published books
       :ISBN: 0-596-00590-3
       :Notes: Further information in
         http://www.oreilly.com/catalog/linuxdrive3/
-        PDF format, URL: http://lwn.net/Kernel/LDD3/
+        PDF format, URL: https://lwn.net/Kernel/LDD3/
=20
     * Title: **Linux Kernel Internals**
=20
@@ -561,7 +561,7 @@ Miscellaneous
=20
     * Name: **Linux Weekly News**
=20
-      :URL: http://lwn.net
+      :URL: https://lwn.net
       :Keywords: latest kernel news.
       :Description: The title says it all. There's a fixed kernel section
         summarizing developers' work, bug fixes, new features and versions
@@ -570,7 +570,7 @@ Miscellaneous
     * Name: **The home page of Linux-MM**
=20
       :Author: The Linux-MM team.
-      :URL: http://linux-mm.org/
+      :URL: https://linux-mm.org/
       :Keywords: memory management, Linux-MM, mm patches, TODO, docs,
         mailing list.
       :Description: Site devoted to Linux Memory Management development.
@@ -579,7 +579,7 @@ Miscellaneous
=20
     * Name: **Kernel Newbies IRC Channel and Website**
=20
-      :URL: http://www.kernelnewbies.org
+      :URL: https://www.kernelnewbies.org
       :Keywords: IRC, newbies, channel, asking doubts.
       :Description: #kernelnewbies on irc.oftc.net.
         #kernelnewbies is an IRC network dedicated to the 'newbie'
@@ -605,4 +605,4 @@ Miscellaneous
 Document last updated on Tue 2016-Sep-20
=20
 This document is based on:
- http://www.dit.upm.es/~jmseyas/linux/kernel/hackers-docs.html
+ https://www.dit.upm.es/~jmseyas/linux/kernel/hackers-docs.html
diff --git a/Documentation/process/maintainer-pgp-guide.rst b/Documentation=
/process/maintainer-pgp-guide.rst
index 17db11b7ed48..8f8f1fee92b8 100644
--- a/Documentation/process/maintainer-pgp-guide.rst
+++ b/Documentation/process/maintainer-pgp-guide.rst
@@ -462,7 +462,7 @@ geographical region, and open/proprietary hardware cons=
iderations.
 .. _`Nitrokey Start`: https://shop.nitrokey.com/shop/product/nitrokey-star=
t-6
 .. _`Nitrokey Pro 2`: https://shop.nitrokey.com/shop/product/nitrokey-pro-=
2-3
 .. _`Yubikey 5`: https://www.yubico.com/products/yubikey-5-overview/
-.. _Gnuk: http://www.fsij.org/doc-gnuk/
+.. _Gnuk: https://www.fsij.org/doc-gnuk/
 .. _`LWN has a good review`: https://lwn.net/Articles/736231/
 .. _`qualify for a free Nitrokey Start`: https://www.kernel.org/nitrokey-d=
igital-tokens-for-kernel-developers.html
=20
diff --git a/Documentation/process/submitting-drivers.rst b/Documentation/p=
rocess/submitting-drivers.rst
index 1acaa14903d6..74b35bfc6623 100644
--- a/Documentation/process/submitting-drivers.rst
+++ b/Documentation/process/submitting-drivers.rst
@@ -5,8 +5,8 @@ Submitting Drivers For The Linux Kernel
=20
 This document is intended to explain how to submit device drivers to the
 various kernel trees. Note that if you are interested in video card driver=
s
-you should probably talk to XFree86 (http://www.xfree86.org/) and/or X.Org
-(http://x.org/) instead.
+you should probably talk to XFree86 (https://www.xfree86.org/) and/or X.Or=
g
+(https://x.org/) instead.
=20
 .. note::
=20
@@ -25,7 +25,7 @@ Allocating Device Numbers
=20
 Major and minor numbers for block and character devices are allocated
 by the Linux assigned name and number authority (currently this is
-Torben Mathiasen). The site is http://www.lanana.org/. This
+Torben Mathiasen). The site is https://www.lanana.org/. This
 also deals with allocating numbers for devices that are not going to
 be submitted to the mainstream kernel.
 See :ref:`Documentation/admin-guide/devices.rst <admin_devices>`
@@ -155,30 +155,30 @@ Linux kernel master tree:
 	where *country_code* =3D=3D your country code, such as
 	**us**, **uk**, **fr**, etc.
=20
-	http://git.kernel.org/?p=3Dlinux/kernel/git/torvalds/linux.git
+	https://git.kernel.org/?p=3Dlinux/kernel/git/torvalds/linux.git
=20
 Linux kernel mailing list:
 	linux-kernel@vger.kernel.org
 	[mail majordomo@vger.kernel.org to subscribe]
=20
 Linux Device Drivers, Third Edition (covers 2.6.10):
-	http://lwn.net/Kernel/LDD3/  (free version)
+	https://lwn.net/Kernel/LDD3/  (free version)
=20
 LWN.net:
-	Weekly summary of kernel development activity - http://lwn.net/
+	Weekly summary of kernel development activity - https://lwn.net/
=20
 	2.6 API changes:
=20
-		http://lwn.net/Articles/2.6-kernel-api/
+		https://lwn.net/Articles/2.6-kernel-api/
=20
 	Porting drivers from prior kernels to 2.6:
=20
-		http://lwn.net/Articles/driver-porting/
+		https://lwn.net/Articles/driver-porting/
=20
 KernelNewbies:
 	Documentation and assistance for new kernel programmers
=20
-		http://kernelnewbies.org/
+		https://kernelnewbies.org/
=20
 Linux USB project:
 	http://www.linux-usb.org/
@@ -187,7 +187,7 @@ How to NOT write kernel driver by Arjan van de Ven:
 	http://www.fenrus.org/how-to-not-write-a-device-driver-paper.pdf
=20
 Kernel Janitor:
-	http://kernelnewbies.org/KernelJanitors
+	https://kernelnewbies.org/KernelJanitors
=20
 GIT, Fast Version Control System:
-	http://git-scm.com/
+	https://git-scm.com/
diff --git a/Documentation/process/submitting-patches.rst b/Documentation/p=
rocess/submitting-patches.rst
index 1699b7f8e63a..e58b2c541d25 100644
--- a/Documentation/process/submitting-patches.rst
+++ b/Documentation/process/submitting-patches.rst
@@ -94,7 +94,7 @@ individual patches which modify things in logical stages;=
 see
 very important if you want your patch accepted.
=20
 If you're using ``git``, ``git rebase -i`` can help you with this process.=
  If
-you're not using ``git``, ``quilt`` <http://savannah.nongnu.org/projects/q=
uilt>
+you're not using ``git``, ``quilt`` <https://savannah.nongnu.org/projects/=
quilt>
 is another popular alternative.
=20
 .. _describe_changes:
@@ -892,7 +892,7 @@ References
 ----------
=20
 Andrew Morton, "The perfect patch" (tpp).
-  <http://www.ozlabs.org/~akpm/stuff/tpp.txt>
+  <https://www.ozlabs.org/~akpm/stuff/tpp.txt>
=20
 Jeff Garzik, "Linux kernel patch submission format".
   <https://web.archive.org/web/20180829112450/http://linux.yyz.us/patch-fo=
rmat.html>
--=20
2.27.0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200621133630.46435-1-grandmaster%40al2klimov.de.
