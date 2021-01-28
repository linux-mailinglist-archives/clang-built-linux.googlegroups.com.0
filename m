Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJNRZCAAMGQELCD3LKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id AB50F306AB4
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 02:51:33 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id u1sf1775513wml.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 17:51:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611798693; cv=pass;
        d=google.com; s=arc-20160816;
        b=KEzOb3aM68KrQ3NBkACfGADaTz5jlCgwklLlhevdV+ju3I6dwmOhsbveoHH7ExIHhb
         8c9w4D1xgVatozWLbS4+D+IC3g+vwWJ7Q5go+Mu0iIi8I4udyIq5vBRZfM24RThhlpyH
         +ERpWvleLk+1j23QkSqP+i9vuLWnHqCGuTkmEYcrA7nFlB1dWhRQQXNZ0UX1P00+6wPd
         zQBcPK3Y1nDdks0QWdzhcmkAulKszhQlucHCPLZEFFZzurk80QpGgKJQZ1sbBFU08oVG
         28qEcweZy41QUqZkGBTPy9auVqQbasFLDluUhJ3LikmBZCCyiBHShwNHCHcfXuwoH74f
         YfSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:to:from:sender:dkim-signature:dkim-signature;
        bh=OAAD+3gLZI1EKuPOmKYHdxx3NFjHqjAUJH4I1C4Z4fg=;
        b=R1Kt2jWFn2RBCqnaO85/0A0HT48o6v4R/j4z22pC2iJUqrUx9kzeT22gCyCsbzoorU
         Rs085ek3BKsWRhhT7rdTrNMcIh0r1Ybfya51aMQTN9PkYsA9AOP63imI+ByZQg2YB4aM
         +NDPEp6i2FLBjXtbibjcOlXDAdKgKLBCbI9AO/SU2vl9mmummVF95+K5/sOcuBn+lB6m
         XbEUP89pPr/kDcZTJQ6ABikuoJRaXYZilzuP/hxaMlCPGhCIkeLjCY1UN+md2ED5fU5g
         5jvHC+yPGNC4A46hZ0FvqNeg5XOXzaDZveq3d+WW86mrgOYq2jNx8Uzap4leUpqttQz/
         E4iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BhtLdpqE;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OAAD+3gLZI1EKuPOmKYHdxx3NFjHqjAUJH4I1C4Z4fg=;
        b=fx61LCvLmkfCb6KKD8LEZFyA4NXmKJgEw6xOUv7CUopgO2LRcpfchL5NsN3k0PBSu3
         AVE/GBt1/Iur4yT2Oamxw55a3U/92F5k/HIvp8XWC2b13v9pBI+hTE4oyRwx6Wt9CB2I
         FYm9duCdjnm0Sg7H2TYHSezAQTXornO/NK8EW0PGZNRFu6a+QMDRtUPqNz6DdMmOYniz
         ATDRkpvj2c/XW7cgL389ChD5Ue0oatn2dvkhr39c+Oxg+5Ej1XHY40JQhMXb6TCFjk4o
         Bkp+Pvm0yRwm9XeAeWHTKUAfdIp84F3V6N608vUh17hjh2a+hRyEdSS9MaSFRytDJPnn
         y1vQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OAAD+3gLZI1EKuPOmKYHdxx3NFjHqjAUJH4I1C4Z4fg=;
        b=SxlOpgCvOM0+bF6ByvkfXM19bFct4RTlfeva6UlbmzYi6jUIWkeMrgtUzaUs3Ncy42
         bbBiVUmeCMNo1RHHhRfxKc1XMxyucSEncrjDqMX+/hS58t9PEeV1nL5/FIZaggRjjG9+
         4gwVB0s6d9ABhFF6hwFstM6i58NDwQVtTuz4CGFxp3xZoXOyMWDgmfKMBfMYT2Z3a1qc
         wUlxyK9O+yjcl/89ZkD0gwy/YAmaase4xAr9jfXXBHIUHDcar5b/qyeMyzG02WvpRhkB
         dHJPNRdTzI6uXLGz16m4xxktxCuUeZmFlbn0qtgyfwdNFy/Z6oFVNzXIRYvicV6+EDKp
         HX+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OAAD+3gLZI1EKuPOmKYHdxx3NFjHqjAUJH4I1C4Z4fg=;
        b=YoJehmE91LCECi4YCeRIokVMn0bY33RHQPCu3s54fS4dDOyBhf9N9krdw+7OcEuBDm
         /C+wKJzI7tJ4mLZF9gTFkYHyEeGgtAR2wB3PjnonasuUDP1/Fw2FrbGd3+ZnU2oUHmIH
         jgGOL03DG+LSsND6VF1TJ3KRU4ORHHFbb/r0dBJ+T8nxHGMR31jfeEpXkHZZ6Gk0EiFW
         0F1pM331hgqIEhn38cEz5PQzP0/QJknZY2DtTdNw0K4ca9cmTQ/2QdPQT1hPZ7CGuMIw
         XYoxp8kiTQe6hvdt8XALRW8jNUm+HCFW3mhICSoU5et7P63eXn97GESZjuzL0RtWwmX0
         gY4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SsklvnfPdCS200Yxe7vdU5XL6JFCs+AqTRVMq27fbaGrR29k1
	fPpaI4AmvXZyI+EYOyfPKG8=
X-Google-Smtp-Source: ABdhPJwttC7tggXXNiWooYRWjad17iiawb96dK/3ERt60K2J512Gpw1q5hHZ1uLQvrXhTa0DyYbFEg==
X-Received: by 2002:a5d:61d0:: with SMTP id q16mr14050297wrv.387.1611798693403;
        Wed, 27 Jan 2021 17:51:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4485:: with SMTP id j5ls3488217wrq.1.gmail; Wed, 27 Jan
 2021 17:51:32 -0800 (PST)
X-Received: by 2002:a5d:554e:: with SMTP id g14mr13925171wrw.305.1611798692553;
        Wed, 27 Jan 2021 17:51:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611798692; cv=none;
        d=google.com; s=arc-20160816;
        b=hsEp0K/f6I7JlRkF1NJVtB2eTOe8x7ANF+hc87SDmwkhdiF9cm9FK/WUQ8G05W1Kzj
         Ss4wCMdzhiE/blclTcfXMKGTR3O3efjBxIVDQ7DINTP97ACC6jPm0NmM1laTAE/TOd8Z
         JmMwMGJK6fQyweSWxi1Hx1CcCX2tYewkDtZU3uBJDi+wZIMEMrjFt85M1RkuV1ALR3sW
         D79mvKhfrN8DPq1nKMAB/VGwzLMUcz40xSnlTql/0tlOHOF13TN81ZcvCGobkuCqflFE
         dl+PgIwbJYmkwVrSN3lpta6AZGXVbdx+fwYflTrUWC9InTKnXFmnN0lrbsJyesaewt8G
         jPaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=APM/j64XJ64toEHsmY/3rHQUz6ZGR8j9tLguMFaF1jg=;
        b=vNwLqs8kbMMGDDWiBwqo6T6V8c4TTOORJhTii9hNpGwnlVoqznguQ3zys9BRcqzamw
         vlHiwTP2twdk8QURpyzvv3jaWrqjiaww1rYOCVXx6pfliujUJEPJd3bagk+N7w4i9vek
         XcRatVTjSQsFwDmngQL86CsXOhQPlqbF+OdANkrA9SlwdaWz2DdRMMqDj5kC06mY1QVl
         aur/+nfrxu0izTKD55MgXw+AAnhY/zZxPGCWELZKS5jkedOt5nlIEDcFW81+PiIzK+in
         Fj/3C8qQWMYP1tBtX6FnslIihEfSy+xfVvqDYcQPWQu84dck8hUbUF6CiQjWvw/I+23d
         zE+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BhtLdpqE;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com. [2a00:1450:4864:20::632])
        by gmr-mx.google.com with ESMTPS id o203si206006wma.0.2021.01.27.17.51.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 17:51:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) client-ip=2a00:1450:4864:20::632;
Received: by mail-ej1-x632.google.com with SMTP id a10so5429901ejg.10
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 17:51:32 -0800 (PST)
X-Received: by 2002:a17:907:104e:: with SMTP id oy14mr8583617ejb.276.1611798692278;
        Wed, 27 Jan 2021 17:51:32 -0800 (PST)
Received: from localhost.localdomain (ip-109-40-66-249.web.vodafone.de. [109.40.66.249])
        by smtp.gmail.com with ESMTPSA id p10sm1610141ejb.82.2021.01.27.17.51.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jan 2021 17:51:31 -0800 (PST)
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
	Yulia Kartseva <hex@fb.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Stephane Eranian <eranian@google.com>,
	"Frank Ch. Eigler" <fche@redhat.com>,
	Thomas Hebb <tommyhebb@gmail.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Davide Caratti <dcaratti@redhat.com>,
	Briana Oursler <briana.oursler@gmail.com>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH bpf-next] tools: Factor Clang, LLC and LLVM utils definitions
Date: Thu, 28 Jan 2021 02:50:58 +0100
Message-Id: <20210128015117.20515-1-sedat.dilek@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BhtLdpqE;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::632
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
2. This patch is on top of bpf-next.

CC: bpf@vger.kernel.org
Acked-by: Andrii Nakryiko <andrii@kernel.org>
Acked-by: Jiri Olsa <jolsa@redhat.com> # tools/build and tools/perf
Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
---
 tools/bpf/bpftool/Makefile                  | 2 --
 tools/bpf/runqslower/Makefile               | 3 ---
 tools/build/feature/Makefile                | 4 ++--
 tools/perf/Makefile.perf                    | 1 -
 tools/scripts/Makefile.include              | 7 +++++++
 tools/testing/selftests/bpf/Makefile        | 2 --
 tools/testing/selftests/tc-testing/Makefile | 3 +--
 7 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/tools/bpf/bpftool/Makefile b/tools/bpf/bpftool/Makefile
index 45ac2f9e0aa9..8ced1655fea6 100644
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
index 63d6288e419c..f0674d406f40 100644
--- a/tools/testing/selftests/bpf/Makefile
+++ b/tools/testing/selftests/bpf/Makefile
@@ -19,8 +19,6 @@ ifneq ($(wildcard $(GENHDR)),)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210128015117.20515-1-sedat.dilek%40gmail.com.
