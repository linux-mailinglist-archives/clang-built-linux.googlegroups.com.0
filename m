Return-Path: <clang-built-linux+bncBDD5ZFHSSQARBYXIST4AKGQEVRR5YKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 83561217D3A
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jul 2020 04:50:10 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id o138sf1593334wme.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jul 2020 19:50:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594176610; cv=pass;
        d=google.com; s=arc-20160816;
        b=SyDUGyn/fIqK6ljCIaBzbmnUgPbeH5ADKDyMp2xvd9XYgVES9O7VcmmubJmVFrdO5X
         4BIP4JegUcF00LlhkI+ZPnYXG0vt9l+IV65gZ27iLtgPLYtxaOafMEdIlHhb7kZ3kVxI
         Wqy3Y5t7HWpo50NRw1MKOiUnnZKcGmn8LxPDYLl1vAxG4BcnMNeeLOz7AbCHO3k2pW2A
         SNrK3ye/1HKAiQzmu8daLNLD5RLh0yDNkdUusP8Hu+zHXT0RWjX2wQ9DzYYgQDvdT/tm
         u51TiyEv8h4hN3tIYHD9YwVu4LW3kHw7RrhGjerkT5i8i1zVJQfZxxpzPG4vbyNMUp5l
         0SWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=DOEA3zXXSCD90AESmmsHufhkrihDsbseEZ05kfaF8LA=;
        b=vvnZYoo8xcIr29wfMF41p3cvdAdiJUIqEeNxjTSmY5TvVD4X0wRyN/Doe8Qs1JN1IG
         SCCPgtZAfDt1FOJT0qMeEpmyVEq30UgPomQXiKKNGWR+1HFhhDoIgdK7VSG2/Bzri74X
         gvZ8jRmqL5v5pEfsru071ZjVLfBRCJ8Iqk1X7xW6K7vylOV3KFWJslWzcUf/jdCIK4kz
         KL6m92gUtGhFrJd4qgcl4rxxU/Y0UUsLxJkjdBqJw8nlJoTLil5sYiGuqKH/WkllAN8i
         phW/Mi6gcmLMKEfkYe6QYuLGkxB9yKld0X+cIa0xQYRLqDPTu+AN02+t3zdAdB4OkPU4
         fjTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DOEA3zXXSCD90AESmmsHufhkrihDsbseEZ05kfaF8LA=;
        b=EOiT7XGc1GcACq+qnc5wcjqykSViuXflbI2RCxE/GDYRVCk44zr+B5kUK73zGCGSly
         ErOyMUxcvAE/hlFD8QAnNFyPb5m4qitkWLDituEq5C6K+JghA0g3ctf4eRcrP2SQCTjS
         PCvaIUy/Fh9a8wA07LAb4pjpiHjeqJy/1zU7N/ZhhoDPeX583gyR/owIGLEwEgpwGKnc
         czr2UgRoezPCaUxwKd4Y21JXcsd9Jn9qKUtEkdzkMWrQTHqIi5wmcF2zxoFOArqt9FL/
         crCnjYeOe4dmVrStoc4V57V113Z+EKA0o9SBtHGgrgGYfuA9PEZLdkbEMP07+VUzsP93
         Bccg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DOEA3zXXSCD90AESmmsHufhkrihDsbseEZ05kfaF8LA=;
        b=E4MYkMK3MmfDFNpNumKtSO/4NlQf+BcgLr8qJisjEG36ll1c/MmaQQUMw0/dPn/fPc
         kPnA6+jiVTSLwtdTA8wv1iqOdW2K3iNGXYQby2wM64ld0Gdi2nw3X1rcbewZAaLmb/Ug
         TCuOb8YtW7d/yIslBSgksQAWxXwvBiauWLgr0nnJUnBA12IwmtSLqSpGBcYStIXDm6pu
         vvUhLWOXUU6rPYCLyHoWdzwk9AssgNxFps90S5inOx0mEU2gc3eA2JWKyOEYzJ7W4UdA
         FcXUPFI4dxkckToVUAS3jiNNsQlnpeCrf8g12JVAPpo6U/F6que+lB4HU8eKhp9tEfhE
         kMjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308OCYoCM0mGcudl5/2gcFOd5/kIKRxFH98mlSYtFZPHaCvXo40
	c/fthwIlT0I7f3iBCVjQQE0=
X-Google-Smtp-Source: ABdhPJyAItUR7B9Cfr2hITZjXD6s+C6EMKQdd6eLdwEMsL0FGc9TncHufyXd6Q5GirTW+uoK2UCXbw==
X-Received: by 2002:a7b:c4d6:: with SMTP id g22mr7290153wmk.170.1594176610189;
        Tue, 07 Jul 2020 19:50:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a94e:: with SMTP id s75ls282978wme.3.canary-gmail; Tue,
 07 Jul 2020 19:50:09 -0700 (PDT)
X-Received: by 2002:a1c:2bc1:: with SMTP id r184mr7345596wmr.133.1594176609633;
        Tue, 07 Jul 2020 19:50:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594176609; cv=none;
        d=google.com; s=arc-20160816;
        b=BrnDqpV/b1+Q1ljM8sUAD0AQpkNjLeBSCfQ6neE6m/aMo7kVKNwwZ4FyEVL5f76qQr
         cALPE3ivH9jjAHE4bwynTRMD/8bEQcR+yUnA0kbMirXt464w/4CXkUQRn8QuN/lmQVAL
         rf6qc3vwg6B+SboD+raVhhK93PRL/2MRB4dS93792w+FKkh+5eq/OGm4g4ZebLEUXEwy
         lnKbt8qUaTKiqSTGvTICgBBMQAMZcvivMsfrLTVFMuFryZ3hpRFPGOiF2rfSHJVUsHER
         Io6u/FClvOewlbrP9AwPX3qFHxc/fmhFdTout9GHUJsmcVTpduIEeIG5nME2G1OYV+b3
         TzpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=7H0RxlJhxVp/X3i69wpuYAn08jdPGlHG0tBc40naSuU=;
        b=D7fFmz59J1fvLeFO0DFRQ6is+7vXDrEIpvTiH4nm+8ViGNdHxhkB8gDISBrju65xOG
         bZTs2W169VlFcRBJW7sc5WC4ga1c2yEb84+NR7L8XFERaaIwt62AlSr7ZfhHjbk36oRA
         QAOE8G8SDt0pSyvJQsmhW3NJuWPYbk/qa+tvHVMhasanc8IKBBND5cVoiRD8Sfc1lptZ
         eZ3Q+wtdSbYR9KO3mS7Gxmg1xHwC0ZPhwT0ey3cu5khfhSxRr4XBhWpTX5TfxaG/W2hE
         CwKvcSXj7+yLmhklNnc3Xfequ0+QhwAtYIM0nrHpFLPGZ8H4Y1fYP9QYA88EqpmWLcdx
         bh5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [78.46.175.9])
        by gmr-mx.google.com with ESMTPS id l4si997215wrm.3.2020.07.07.19.50.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2020 19:50:09 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) client-ip=78.46.175.9;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id 06F7ABC117;
	Wed,  8 Jul 2020 02:50:02 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: peterz@infradead.org,
	mingo@redhat.com,
	acme@kernel.org,
	mark.rutland@arm.com,
	alexander.shishkin@linux.intel.com,
	jolsa@redhat.com,
	namhyung@kernel.org,
	tglx@linutronix.de,
	bp@alien8.de,
	x86@kernel.org,
	hpa@zytor.com,
	dvhart@infradead.org,
	adrian.hunter@intel.com,
	yao.jin@linux.intel.com,
	ravi.bangoria@linux.ibm.com,
	gustavoars@kernel.org,
	ak@linux.intel.com,
	devurandom@gmx.net,
	mail@maciej.szmigiero.name,
	songliubraving@fb.com,
	srikar@linux.vnet.ibm.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Subject: [PATCH] Replace HTTP links with HTTPS ones: performance events
Date: Wed,  8 Jul 2020 04:49:56 +0200
Message-Id: <20200708024956.57732-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Bar: /
X-Original-Sender: grandmaster@al2klimov.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of grandmaster@al2klimov.de
 designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
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
 Continuing my work started at 93431e0607e5.
 See also: git log --oneline '--author=3DAlexander A. Klimov <grandmaster@a=
l2klimov.de>' v5.7..master

 If there are any URLs to be removed completely or at least not HTTPSified:
 Just clearly say so and I'll *undo my change*.
 See also: https://lkml.org/lkml/2020/6/27/64

 If there are any valid, but yet not changed URLs:
 See: https://lkml.org/lkml/2020/6/26/837

 If you apply the patch, please let me know.
 Rationale:
 I'd like not to submit patches much faster than you maintainers apply them=
.

 arch/x86/events/intel/pt.c                         | 2 +-
 arch/x86/events/intel/pt.h                         | 2 +-
 tools/perf/Documentation/perf-data.txt             | 2 +-
 tools/perf/Documentation/perf-list.txt             | 4 ++--
 tools/perf/arch/powerpc/include/dwarf-regs-table.h | 2 +-
 tools/perf/arch/powerpc/util/dwarf-regs.c          | 2 +-
 tools/perf/arch/s390/include/dwarf-regs-table.h    | 2 +-
 tools/perf/bench/futex.h                           | 2 +-
 tools/perf/bench/sched-pipe.c                      | 2 +-
 tools/perf/builtin-c2c.c                           | 2 +-
 tools/perf/builtin-trace.c                         | 2 +-
 tools/perf/scripts/python/futex-contention.py      | 2 +-
 tools/perf/util/annotate.h                         | 2 +-
 tools/perf/util/c++/clang.cpp                      | 2 +-
 tools/perf/util/dso.h                              | 2 +-
 tools/perf/util/stat.c                             | 4 ++--
 tools/perf/util/target.h                           | 2 +-
 17 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/x86/events/intel/pt.c b/arch/x86/events/intel/pt.c
index e94af4a54d0d..e2e582f64a1c 100644
--- a/arch/x86/events/intel/pt.c
+++ b/arch/x86/events/intel/pt.c
@@ -5,7 +5,7 @@
  *
  * Intel PT is specified in the Intel Architecture Instruction Set Extensi=
ons
  * Programming Reference:
- * http://software.intel.com/en-us/intel-isa-extensions
+ * https://software.intel.com/en-us/intel-isa-extensions
  */
=20
 #undef DEBUG
diff --git a/arch/x86/events/intel/pt.h b/arch/x86/events/intel/pt.h
index 96906a62aacd..cf39f7c235a7 100644
--- a/arch/x86/events/intel/pt.h
+++ b/arch/x86/events/intel/pt.h
@@ -5,7 +5,7 @@
  *
  * Intel PT is specified in the Intel Architecture Instruction Set Extensi=
ons
  * Programming Reference:
- * http://software.intel.com/en-us/intel-isa-extensions
+ * https://software.intel.com/en-us/intel-isa-extensions
  */
=20
 #ifndef __INTEL_PT_H__
diff --git a/tools/perf/Documentation/perf-data.txt b/tools/perf/Documentat=
ion/perf-data.txt
index c87180764829..deef20b92651 100644
--- a/tools/perf/Documentation/perf-data.txt
+++ b/tools/perf/Documentation/perf-data.txt
@@ -45,4 +45,4 @@ OPTIONS for 'convert'
 SEE ALSO
 --------
 linkperf:perf[1]
-[1] Common Trace Format - http://www.efficios.com/ctf
+[1] Common Trace Format - https://www.efficios.com/ctf
diff --git a/tools/perf/Documentation/perf-list.txt b/tools/perf/Documentat=
ion/perf-list.txt
index 376a50b3452d..5f3c31ce4c8c 100644
--- a/tools/perf/Documentation/perf-list.txt
+++ b/tools/perf/Documentation/perf-list.txt
@@ -309,5 +309,5 @@ SEE ALSO
 --------
 linkperf:perf-stat[1], linkperf:perf-top[1],
 linkperf:perf-record[1],
-http://www.intel.com/sdm/[Intel=C2=AE 64 and IA-32 Architectures Software =
Developer's Manual Volume 3B: System Programming Guide],
-http://support.amd.com/us/Processor_TechDocs/24593_APM_v2.pdf[AMD64 Archit=
ecture Programmer=E2=80=99s Manual Volume 2: System Programming]
+https://www.intel.com/sdm/[Intel=C2=AE 64 and IA-32 Architectures Software=
 Developer's Manual Volume 3B: System Programming Guide],
+https://support.amd.com/us/Processor_TechDocs/24593_APM_v2.pdf[AMD64 Archi=
tecture Programmer=E2=80=99s Manual Volume 2: System Programming]
diff --git a/tools/perf/arch/powerpc/include/dwarf-regs-table.h b/tools/per=
f/arch/powerpc/include/dwarf-regs-table.h
index 66dc015a733d..96777c334103 100644
--- a/tools/perf/arch/powerpc/include/dwarf-regs-table.h
+++ b/tools/perf/arch/powerpc/include/dwarf-regs-table.h
@@ -4,7 +4,7 @@
=20
 /*
  * Reference:
- * http://refspecs.linuxfoundation.org/ELF/ppc64/PPC-elf64abi-1.9.html
+ * https://refspecs.linuxfoundation.org/ELF/ppc64/PPC-elf64abi-1.9.html
  * http://refspecs.linux-foundation.org/elf/elfspec_ppc.pdf
  */
 #define REG_DWARFNUM_NAME(reg, idx)	[idx] =3D "%" #reg
diff --git a/tools/perf/arch/powerpc/util/dwarf-regs.c b/tools/perf/arch/po=
werpc/util/dwarf-regs.c
index 0c4f4caf53ac..333d6b520a0a 100644
--- a/tools/perf/arch/powerpc/util/dwarf-regs.c
+++ b/tools/perf/arch/powerpc/util/dwarf-regs.c
@@ -29,7 +29,7 @@ struct pt_regs_dwarfnum {
=20
 /*
  * Reference:
- * http://refspecs.linuxfoundation.org/ELF/ppc64/PPC-elf64abi-1.9.html
+ * https://refspecs.linuxfoundation.org/ELF/ppc64/PPC-elf64abi-1.9.html
  */
 static const struct pt_regs_dwarfnum regdwarfnum_table[] =3D {
 	GPR_DWARFNUM_NAME(0),
diff --git a/tools/perf/arch/s390/include/dwarf-regs-table.h b/tools/perf/a=
rch/s390/include/dwarf-regs-table.h
index 671553525f41..aee33de15f92 100644
--- a/tools/perf/arch/s390/include/dwarf-regs-table.h
+++ b/tools/perf/arch/s390/include/dwarf-regs-table.h
@@ -6,7 +6,7 @@
=20
 /*
  * For reference, see DWARF register mapping:
- * http://refspecs.linuxfoundation.org/ELF/zSeries/lzsabi0_s390/x1542.html
+ * https://refspecs.linuxfoundation.org/ELF/zSeries/lzsabi0_s390/x1542.htm=
l
  */
 static const char * const s390_dwarf_regs[] =3D {
 	"%r0", "%r1",  "%r2",  "%r3",  "%r4",  "%r5",  "%r6",  "%r7",
diff --git a/tools/perf/bench/futex.h b/tools/perf/bench/futex.h
index 31b53cc7d5bc..382f6933fa37 100644
--- a/tools/perf/bench/futex.h
+++ b/tools/perf/bench/futex.h
@@ -2,7 +2,7 @@
 /*
  * Glibc independent futex library for testing kernel functionality.
  * Shamelessly stolen from Darren Hart <dvhltc@us.ibm.com>
- *    http://git.kernel.org/cgit/linux/kernel/git/dvhart/futextest.git/
+ *    https://git.kernel.org/cgit/linux/kernel/git/dvhart/futextest.git/
  */
=20
 #ifndef _FUTEX_H
diff --git a/tools/perf/bench/sched-pipe.c b/tools/perf/bench/sched-pipe.c
index 3c88d1f201f1..29805fc93dd6 100644
--- a/tools/perf/bench/sched-pipe.c
+++ b/tools/perf/bench/sched-pipe.c
@@ -6,7 +6,7 @@
  * pipe: Benchmark for pipe()
  *
  * Based on pipe-test-1m.c by Ingo Molnar <mingo@redhat.com>
- *  http://people.redhat.com/mingo/cfs-scheduler/tools/pipe-test-1m.c
+ *  https://people.redhat.com/mingo/cfs-scheduler/tools/pipe-test-1m.c
  * Ported to perf by Hitoshi Mitake <mitake@dcl.info.waseda.ac.jp>
  */
 #include <subcmd/parse-options.h>
diff --git a/tools/perf/builtin-c2c.c b/tools/perf/builtin-c2c.c
index d617d5682c68..5c6b12081ca1 100644
--- a/tools/perf/builtin-c2c.c
+++ b/tools/perf/builtin-c2c.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
  * This is rewrite of original c2c tool introduced in here:
- *   http://lwn.net/Articles/588866/
+ *   https://lwn.net/Articles/588866/
  *
  * The original tool was changed to fit in current perf state.
  *
diff --git a/tools/perf/builtin-trace.c b/tools/perf/builtin-trace.c
index 4cbb64edc998..b8f83ef8cfe4 100644
--- a/tools/perf/builtin-trace.c
+++ b/tools/perf/builtin-trace.c
@@ -11,7 +11,7 @@
  *
  * Initially based on the 'trace' prototype by Thomas Gleixner:
  *
- * http://lwn.net/Articles/415728/ ("Announcing a new utility: 'trace'")
+ * https://lwn.net/Articles/415728/ ("Announcing a new utility: 'trace'")
  */
=20
 #include "util/record.h"
diff --git a/tools/perf/scripts/python/futex-contention.py b/tools/perf/scr=
ipts/python/futex-contention.py
index 0c4841acf75d..f93a91824b59 100644
--- a/tools/perf/scripts/python/futex-contention.py
+++ b/tools/perf/scripts/python/futex-contention.py
@@ -4,7 +4,7 @@
 #
 # Translation of:
 #
-# http://sourceware.org/systemtap/wiki/WSFutexContention
+# https://sourceware.org/systemtap/wiki/WSFutexContention
 #
 # to perf python scripting.
 #
diff --git a/tools/perf/util/annotate.h b/tools/perf/util/annotate.h
index 0a0cd4f32175..12b92bec8b2f 100644
--- a/tools/perf/util/annotate.h
+++ b/tools/perf/util/annotate.h
@@ -365,7 +365,7 @@ enum symbol_disassemble_errno {
 	 * errno since SUS requires the errno has distinct positive values.
 	 * See 'Issue 6' in the link below.
 	 *
-	 * http://pubs.opengroup.org/onlinepubs/9699919799/basedefs/errno.h.html
+	 * https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/errno.h.html
 	 */
 	__SYMBOL_ANNOTATE_ERRNO__START		=3D -10000,
=20
diff --git a/tools/perf/util/c++/clang.cpp b/tools/perf/util/c++/clang.cpp
index c8885dfa3667..2cccfed3e8d6 100644
--- a/tools/perf/util/c++/clang.cpp
+++ b/tools/perf/util/c++/clang.cpp
@@ -3,7 +3,7 @@
  * llvm C frontend for perf. Support dynamically compile C file
  *
  * Inspired by clang example code:
- * http://llvm.org/svn/llvm-project/cfe/trunk/examples/clang-interpreter/m=
ain.cpp
+ * https://llvm.org/svn/llvm-project/cfe/trunk/examples/clang-interpreter/=
main.cpp
  *
  * Copyright (C) 2016 Wang Nan <wangnan0@huawei.com>
  * Copyright (C) 2016 Huawei Inc.
diff --git a/tools/perf/util/dso.h b/tools/perf/util/dso.h
index d3d03274b0d1..d1221aa31583 100644
--- a/tools/perf/util/dso.h
+++ b/tools/perf/util/dso.h
@@ -82,7 +82,7 @@ enum dso_load_errno {
 	 * errno since SUS requires the errno has distinct positive values.
 	 * See 'Issue 6' in the link below.
 	 *
-	 * http://pubs.opengroup.org/onlinepubs/9699919799/basedefs/errno.h.html
+	 * https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/errno.h.html
 	 */
 	__DSO_LOAD_ERRNO__START		=3D -10000,
=20
diff --git a/tools/perf/util/stat.c b/tools/perf/util/stat.c
index cdb154381a87..5a7d290eb780 100644
--- a/tools/perf/util/stat.c
+++ b/tools/perf/util/stat.c
@@ -37,13 +37,13 @@ double avg_stats(struct stats *stats)
 }
=20
 /*
- * http://en.wikipedia.org/wiki/Algorithms_for_calculating_variance
+ * https://en.wikipedia.org/wiki/Algorithms_for_calculating_variance
  *
  *       (\Sum n_i^2) - ((\Sum n_i)^2)/n
  * s^2 =3D -------------------------------
  *                  n - 1
  *
- * http://en.wikipedia.org/wiki/Stddev
+ * https://en.wikipedia.org/wiki/Stddev
  *
  * The std dev of the mean is related to the std dev by:
  *
diff --git a/tools/perf/util/target.h b/tools/perf/util/target.h
index 6ef01a83b24e..5b066290679b 100644
--- a/tools/perf/util/target.h
+++ b/tools/perf/util/target.h
@@ -25,7 +25,7 @@ enum target_errno {
 	 * errno since SUS requires the errno has distinct positive values.
 	 * See 'Issue 6' in the link below.
 	 *
-	 * http://pubs.opengroup.org/onlinepubs/9699919799/basedefs/errno.h.html
+	 * https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/errno.h.html
 	 */
 	__TARGET_ERRNO__START		=3D -10000,
=20
--=20
2.27.0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200708024956.57732-1-grandmaster%40al2klimov.de.
