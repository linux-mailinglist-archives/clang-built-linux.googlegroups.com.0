Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBMN2VCAAMGQEONE5K2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id D16C62FF97B
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 01:32:49 +0100 (CET)
Received: by mail-ej1-x639.google.com with SMTP id q11sf1505327ejd.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 16:32:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611275569; cv=pass;
        d=google.com; s=arc-20160816;
        b=f4S7SWUz1L0GcEUnMy06C348sdi+EjOMLqnrJtjs62gHE4IjDtJQTcahiPQo/ja6Ne
         e8/0Sc3hxpMpdn4e8FyOlfKj0dcxqnQkR0gu5eygFDF7bxyAdox+iO3vXLe7r2j2raIj
         Z1+tpnAst4LTmNptOYGaLFCQILvMWqIKJGYaf/hXqvnqTHCohlO8eVtp1jCCkOIUTBaq
         JKcRguKVqrNxcCIPwNJmE7kwhrwYriGcnjjYnRtgmoZssmot7QY5mkiU/HvlW0BZunm3
         fp/HXDdI3SdAcx1o1RTgA8jlwJbeQUuXNCZbryphU9cWjzIGXuxqpTq0Kje3RvejzbYR
         OuLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:to:from:sender:dkim-signature:dkim-signature;
        bh=CnJdJKgi7LV0SS1O0r+4HS8yagDcVjHx0k7gy4wViNo=;
        b=G3YAzumceSel2bCI8stXctEkaso0Pi9Fep/bODYQRQzYd26IIZ7MVFnVQ9c92XypGo
         HjEKF3/JzHR3vpeg48cqwNAPmS/z/T9SPNXfcuoiSdVw3xDRfY1uN5A6HIG2L9NTrJ9r
         6djXR16wFkeggoVftQLfaxYL0GmYLJkXyA4aEwYLJ1KDRgDLz/BP5xq+1fyej8GaR0Df
         m/7yZDGZUhkK2MarrGft5lbaspsC9n0ewfD7PTz58QY5DEowlzEKWv0yGu4hl54lIoEd
         uMn+Hc6MSGeFywnjeWFeXeMmdyhOJfg8uF33t+4HU0NmAW+fQ2jZyf8SWRrXcM1VvFDZ
         eQ5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Lf/QJ4FC";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CnJdJKgi7LV0SS1O0r+4HS8yagDcVjHx0k7gy4wViNo=;
        b=kAsDSFhrBu7DBZmcf/7pg+15vA90zOd4a0AqfsQ5FkBi8PVHU87VpeD26GncBFcRsL
         gzchTBxRI9dfXe7PGe5GnG8Ulj7Si7XjaagGplVSqrX0PRYzfE17HOoW4+MFadDV10Jd
         +OryIHZYzk6w52JkMYc+WbbFptsr2J0qi/1vPACvuo1t2+t0heiDNU85kPNZ3NfVDFdN
         alGQJTRAlu1LHKkzGkH5yWyC12LMRXdRpt5nb2Dh5eMsX7WUGKNC8zuDHcwbTKOGOZfS
         iFk4a6GqgGGLj6//v5egd/lERjX3uRWjuMsNuaejZAPWKz5Pk5t1EbGdQFX1vnGASPAw
         zfzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CnJdJKgi7LV0SS1O0r+4HS8yagDcVjHx0k7gy4wViNo=;
        b=c72s84blMCiQc/1YU72JXK6Kj1imqNTHGbWBfEvju5HH6Diw3wJm2Z8iJEof4mbTii
         LP9X7JmysXdqHwYjwgjPSrps7qRr88r4sQRNqYFWRHGDehBByKzEODAvOpTgMr3wa/kE
         4RmUZKg5InPEjJOyOaaY9+1ITQvVhZjOk0Z8U3h7EmVyT2GQgQ6oY/zP2sp8DZ8Ooha7
         7lRWy6FWt0UK9agOg+q09EkbphwAW13Yxk/STGrFuZgZvHjpxjn8UboDS57AZw6auOvC
         qCMWpqgVgIn4GH9r0I5FSq4MnrgyZAKqQMqunVtHz3+AnHLj0H6BsoppdQukM9ftsWig
         xP6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CnJdJKgi7LV0SS1O0r+4HS8yagDcVjHx0k7gy4wViNo=;
        b=pOhdcce+pWK29H5QNpobpzL5nHSMjzQ+Ege5OZ4TsTiYuXc9KCX6OjxmXzKcz/z2U3
         Vv9XD2ZzCq/5E7cqDwwS61o4KiEZkhhKCFShS0NNoGhCMXHTyNy/KqRR00CLb70LMOJF
         oC+XTZnkqswnXDYDCMEuNKJ0kRDSaIRaGjEcjnGsVCZ/DBbGK8VIybSQnMycIilWGGjS
         16AMFd6omoL2icS6aY1Wy2Q71UJCeVUbo71ANH6fYyc1g3lsxQOdaH4GN6GOFX5BvE+e
         PfTQq8uaz55p5atuxxMYxh1XsHLoNmacDexQPx6byVeVO24h6N0MGY8FCzGpu/74HkjC
         kV2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TGQVrPuB/fkxShRqPV99AfFleJ/ASib3SqtHzAUtfBwEIWN7b
	wt16xcyaPFsvkc6GJW7+Esg=
X-Google-Smtp-Source: ABdhPJxOnOLtXv0iact1vRX7UdFWTpqtpcvmI6V9BTKpa4EGAHv9xGAPZIpTmtlSxDOJ5ZlKqauM0w==
X-Received: by 2002:a05:6402:35ca:: with SMTP id z10mr1339906edc.186.1611275569607;
        Thu, 21 Jan 2021 16:32:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:220e:: with SMTP id cq14ls5208486edb.2.gmail; Thu,
 21 Jan 2021 16:32:48 -0800 (PST)
X-Received: by 2002:a50:d646:: with SMTP id c6mr1262746edj.177.1611275568694;
        Thu, 21 Jan 2021 16:32:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611275568; cv=none;
        d=google.com; s=arc-20160816;
        b=OLDsnWlP5loaxEtWzkk5lM7kQixnaAfYgQjj0ce2Jw0ZZOvQCKK+yXzKbkUPZelj1e
         yNdA+5c2gTPuhF9gUvSX/G7OaY0ULHXwFBL3qsQLFz2p80du0UeOPW2Dw7xtSIPK4TcI
         U4hR9PwlC84F26/JyFbcbNtO+DGFIgm/uTslvJgicEVakzjadvQVAoTI9QclaBenKu6H
         zJOCvj+Nan3HojJk0mkWZoyAmkm+E1EeuFl8Lp5ONb5Oq0BTu8WleM6TcaGTbEfT7htf
         v9zi7U+vcFiD2me/SxRe/fXXNlD82qIqngIdoY/AjMnlKPFcuitbfhgRmsAGme6tmZbW
         q7fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=nIwDL815WbM3BXQJbXvq/f398/RbftQTQcC+LW4e8Cw=;
        b=eCdphtir6UxTO95Rv3icz/0VsjocrO396B9kmmhkckVY6pg63NqKXT8Y/UfZ6IBcUZ
         MlbaWNADQVscWbytWKpf1/RB/qgwASJ4XlDZO3nKfFmtTBZTea2M3FD6pkHTDz6trvFj
         TReATAq4LMBujUssNDdIbRInW+BkOmIHTKnAkTcnnH9Yf3fF3lsGXMNzQAVuG1OgZFTk
         sqvXZVS7vS9yK9Z16oEELDDDBdqa2nN9q2o/MlZturHDUuP4/jNJy7Ko2U+H1ubjtSoy
         vNWojXDNUd/+zrjtDh7QNtEUxLSCUxFmCc8LQ8cA4ynUAji6NMwyDXiRE259LELnzCU8
         kR+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Lf/QJ4FC";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com. [2a00:1450:4864:20::532])
        by gmr-mx.google.com with ESMTPS id d2si414755edo.5.2021.01.21.16.32.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 16:32:48 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) client-ip=2a00:1450:4864:20::532;
Received: by mail-ed1-x532.google.com with SMTP id c6so4696316ede.0
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 16:32:48 -0800 (PST)
X-Received: by 2002:a05:6402:104e:: with SMTP id e14mr1334004edu.316.1611275568372;
        Thu, 21 Jan 2021 16:32:48 -0800 (PST)
Received: from localhost.localdomain (ip-109-40-66-206.web.vodafone.de. [109.40.66.206])
        by smtp.gmail.com with ESMTPSA id f17sm3741870edu.25.2021.01.21.16.32.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jan 2021 16:32:47 -0800 (PST)
From: Sedat Dilek <sedat.dilek@gmail.com>
To: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Shuah Khan <shuah@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Quentin Monnet <quentin@isovalent.com>,
	Jean-Philippe Brucker <jean-philippe@linaro.org>,
	Tobias Klauser <tklauser@distanz.ch>,
	Ilya Leoshkevich <iii@linux.ibm.com>,
	Andrey Ignatov <rdna@fb.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Stephane Eranian <eranian@google.com>,
	"Frank Ch. Eigler" <fche@redhat.com>,
	Thomas Hebb <tommyhebb@gmail.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Briana Oursler <briana.oursler@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Davide Caratti <dcaratti@redhat.com>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH RFC v2] tools: Factor Clang, LLC and LLVM utils definitions
Date: Fri, 22 Jan 2021 01:32:25 +0100
Message-Id: <20210122003235.77246-1-sedat.dilek@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Lf/QJ4FC";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::532
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

When dealing with BPF/BTF/pahole and DWARF v5 I wanted to build bpftool.

While looking into the source code I found duplicate assignments
in misc tools for the LLVM eco system, e.g. clang and llvm-objcopy.

Move the Clang, LLC and/or LLVM utils definitions to
tools/scripts/Makefile.include file and add missing
includes where needed.
Honestly, I was inspired by commit c8a950d0d3b9
("tools: Factor HOSTCC, HOSTLD, HOSTAR definitions").

I tested with bpftool and perf on Debian/testing AMD64 and
LLVM/Clang v11.1.0-rc1.

Build instructions:

[ make and make-options ]
MAKE="make V=1"
MAKE_OPTS="HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang LD=ld.lld LLVM=1 LLVM_IAS=1"
MAKE_OPTS="$MAKE_OPTS PAHOLE=/opt/pahole/bin/pahole"

[ clean-up ]
$MAKE $MAKE_OPTS -C tools/ clean

[ bpftool ]
$MAKE $MAKE_OPTS -C tools/bpf/bpftool/

[ perf ]
PYTHON=python3 $MAKE $MAKE_OPTS -C tools/perf/

I was careful with respecting the user's wish to override custom compiler,
linker, GNU/binutils and/or LLVM utils settings.

Some personal notes:
1. I have NOT tested with cross-toolchain for other archs (cross compiler/linker etc.).
2. This patch is on top of Linux v5.11-rc4.

I hope to get some feedback from especially Linux-bpf folks.

Acked-by: Jiri Olsa <jolsa@redhat.com> # tools/build and tools/perf
Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
---
Changelog RFC v1->v2:
- Add Jiri's ACK
- Adapt to fit Linux v5.11-rc4

 tools/bpf/bpftool/Makefile                  | 2 --
 tools/bpf/runqslower/Makefile               | 3 ---
 tools/build/feature/Makefile                | 4 ++--
 tools/perf/Makefile.perf                    | 1 -
 tools/scripts/Makefile.include              | 7 +++++++
 tools/testing/selftests/bpf/Makefile        | 3 +--
 tools/testing/selftests/tc-testing/Makefile | 3 +--
 7 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/tools/bpf/bpftool/Makefile b/tools/bpf/bpftool/Makefile
index f897cb5fb12d..71c14efa6e91 100644
--- a/tools/bpf/bpftool/Makefile
+++ b/tools/bpf/bpftool/Makefile
@@ -75,8 +75,6 @@ endif
 
 INSTALL ?= install
 RM ?= rm -f
-CLANG ?= clang
-LLVM_STRIP ?= llvm-strip
 
 FEATURE_USER = .bpftool
 FEATURE_TESTS = libbfd disassembler-four-args reallocarray zlib libcap \
diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefile
index 4d5ca54fcd4c..9d9fb6209be1 100644
--- a/tools/bpf/runqslower/Makefile
+++ b/tools/bpf/runqslower/Makefile
@@ -3,9 +3,6 @@ include ../../scripts/Makefile.include
 
 OUTPUT ?= $(abspath .output)/
 
-CLANG ?= clang
-LLC ?= llc
-LLVM_STRIP ?= llvm-strip
 BPFTOOL_OUTPUT := $(OUTPUT)bpftool/
 DEFAULT_BPFTOOL := $(BPFTOOL_OUTPUT)bpftool
 BPFTOOL ?= $(DEFAULT_BPFTOOL)
diff --git a/tools/build/feature/Makefile b/tools/build/feature/Makefile
index 89ba522e377d..3e55edb3ea54 100644
--- a/tools/build/feature/Makefile
+++ b/tools/build/feature/Makefile
@@ -1,4 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
+include ../../scripts/Makefile.include
+
 FILES=                                          \
          test-all.bin                           \
          test-backtrace.bin                     \
@@ -76,8 +78,6 @@ FILES=                                          \
 FILES := $(addprefix $(OUTPUT),$(FILES))
 
 PKG_CONFIG ?= $(CROSS_COMPILE)pkg-config
-LLVM_CONFIG ?= llvm-config
-CLANG ?= clang
 
 all: $(FILES)
 
diff --git a/tools/perf/Makefile.perf b/tools/perf/Makefile.perf
index 62f3deb1d3a8..f4df7534026d 100644
--- a/tools/perf/Makefile.perf
+++ b/tools/perf/Makefile.perf
@@ -176,7 +176,6 @@ endef
 LD += $(EXTRA_LDFLAGS)
 
 PKG_CONFIG = $(CROSS_COMPILE)pkg-config
-LLVM_CONFIG ?= llvm-config
 
 RM      = rm -f
 LN      = ln -f
diff --git a/tools/scripts/Makefile.include b/tools/scripts/Makefile.include
index 1358e89cdf7d..4255e71f72b7 100644
--- a/tools/scripts/Makefile.include
+++ b/tools/scripts/Makefile.include
@@ -69,6 +69,13 @@ HOSTCC  ?= gcc
 HOSTLD  ?= ld
 endif
 
+# Some tools require Clang, LLC and/or LLVM utils
+CLANG		?= clang
+LLC		?= llc
+LLVM_CONFIG	?= llvm-config
+LLVM_OBJCOPY	?= llvm-objcopy
+LLVM_STRIP	?= llvm-strip
+
 ifeq ($(CC_NO_CLANG), 1)
 EXTRA_WARNINGS += -Wstrict-aliasing=3
 endif
diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftests/bpf/Makefile
index c51df6b91bef..952e2bc5f3bc 100644
--- a/tools/testing/selftests/bpf/Makefile
+++ b/tools/testing/selftests/bpf/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 include ../../../../scripts/Kbuild.include
 include ../../../scripts/Makefile.arch
+include ../../../scripts/Makefile.include
 
 CXX ?= $(CROSS_COMPILE)g++
 
@@ -18,8 +19,6 @@ ifneq ($(wildcard $(GENHDR)),)
   GENFLAGS := -DHAVE_GENHDR
 endif
 
-CLANG		?= clang
-LLVM_OBJCOPY	?= llvm-objcopy
 BPF_GCC		?= $(shell command -v bpf-gcc;)
 SAN_CFLAGS	?=
 CFLAGS += -g -rdynamic -Wall -O2 $(GENFLAGS) $(SAN_CFLAGS)		\
diff --git a/tools/testing/selftests/tc-testing/Makefile b/tools/testing/selftests/tc-testing/Makefile
index 91fee5c43274..4d639279f41e 100644
--- a/tools/testing/selftests/tc-testing/Makefile
+++ b/tools/testing/selftests/tc-testing/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
+include ../../../scripts/Makefile.include
 
 top_srcdir = $(abspath ../../../..)
 APIDIR := $(top_scrdir)/include/uapi
@@ -7,8 +8,6 @@ TEST_GEN_FILES = action.o
 KSFT_KHDR_INSTALL := 1
 include ../lib.mk
 
-CLANG ?= clang
-LLC   ?= llc
 PROBE := $(shell $(LLC) -march=bpf -mcpu=probe -filetype=null /dev/null 2>&1)
 
 ifeq ($(PROBE),)
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210122003235.77246-1-sedat.dilek%40gmail.com.
