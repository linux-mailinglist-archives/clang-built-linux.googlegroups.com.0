Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBUHPRKAAMGQEZ6WVGGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E202F8CBA
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 10:54:25 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id q18sf5386630wrc.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 01:54:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610790865; cv=pass;
        d=google.com; s=arc-20160816;
        b=IXqp4te6sbPY4ba56tgTXRDLT5NUc3KtJrjWKivFMy7QsT1pD+G4vJ0uZFQcW7htl1
         UpozGWVPgF594E06E0Sb3DOfAgc4k4GJUUY1xO/f21l4IeT4g228oolMbJB79KrV2s5b
         qzhzKkqWh9BZM8L3mi71PziIDOoux11Erj4Zozh6yiejPWBHyZSrcYoHqqV25mVtCjYC
         bYjZqii/jLHxsnbKM+TvbJA0GLSGTOmkniYeptd80RoZxp5wG5+PC/qXms/XikM5gKtW
         dRVldKloXpmh2+5lYJsICuBf4cTIWjLFsK8Oy2Z1IbXkNMU92Nx+USZziIvi+o1J1jr1
         RLXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:to:from:sender:dkim-signature:dkim-signature;
        bh=1JuQ2Cr9Q9l1SH7A9tCjvVdQP1IOoxojZ7JThyAAlAc=;
        b=VZ0agmO0wmGJZk+XTEwPqjEpRRlKWkQUzly2EG8uskzsEmGxQpswzjLROE6EHqYpp0
         ltps91P7DN7W3XrVj1ojuLLynNKSZPRoHW330dZvgOwGY3hlsHPYTp9WiHjJwVKZ4SaD
         qTrba7w3LSHT5sC66rTYuAVef8pcMRxb2E6zm+s4334e9Upk6JJ1lN5Tdh5wqQu7ntaL
         SahZpaaNu4DRALCcVFRtIeryg4Yb9yFaDrAA+WWUPCo1wEvZbjrBDOklfz6GDSpzNPry
         iRGH46DRjNaXChg45E/11095d/zAg557Nxzouuf+CNZpJN9/qB8klx+R9ahcn2tBqbpr
         CzCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qCzdEmtm;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1JuQ2Cr9Q9l1SH7A9tCjvVdQP1IOoxojZ7JThyAAlAc=;
        b=rst65k0gqqIkCV9cCxOpvmRARELp7N9NnGmW+E6rNyfAAVt7s7qLxOnttg1AaikG2t
         QIptGLfrmX4iQWkb1Q4aRnvdmQxkR3gHCoXmZ8IY8jsze0BP+zc48fXBTUx2EL7qdHTW
         /IiwYOjFU8IEJ2leBTjFyy230aP9BQsxG4rz0n0Tw6jT9cfo4n91/b8u3cDcljSjLsDB
         pbT4lpinEBXPsvyE+Pk/1Ihc02kYMhgKCsPA96KoTj4hBry/4SQQYumvackw1ssGt6k+
         aM973Ajpo+23wI62Tm4b6n0zfRAwA6vBjx0aEkufSLV+z5eN1UDu7Mml+waN23bLdYfV
         Nxcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1JuQ2Cr9Q9l1SH7A9tCjvVdQP1IOoxojZ7JThyAAlAc=;
        b=B0Uxa4qM0QQ/e76lQ8BV9d+3Xvcp+jmmlVuI1PKsm+1ijraX59vCgx+kJ9gXOx+OFf
         9Zq7xNjHVymuUSfoyWUnXV/L+KdiCQDH2ivlyeuDe9+BAATuWp2YaYpcHlzXJXtKQUb2
         g7h9/lBniCHU2DKtKHHxo5qG52nGUrZ0crZQjO/m1s27ABrzTyWILA1kv0tx03wSaCHA
         nbAfUYoEklaLIlQ2ii9+P5AV2t6kJCjWGblqTYne2dUs585QgYc99/3ohfWEgqLsmAQO
         yEBkEj/3rqDV8QJVb6xqr6HzCNhoKr6Q0bDultV+eOQX9JSu8s0FTb84BsGGZiWLn4zY
         AQNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1JuQ2Cr9Q9l1SH7A9tCjvVdQP1IOoxojZ7JThyAAlAc=;
        b=lKPDFCbIVNcqotSB3zZm/KoPylcMHo6voWuG4Elt9a7hkOMizuTrxRBSRrI9Adsuhl
         8323qDoSJ1Yk9YsCxQ2wGBSBJ6Y4EkyNZEVOJIUFEXcQlR/s9IUQNhUvIYxar5lsalSn
         Vm8AqdJqjuhok72sOnyrbMscsrZ+u1w6Wd42ZQUI8A/lbGasftzEAzfba0cj6VqfcAkr
         TuYgw+5tuspJclMroMCTZ8Eh9YYImu9wu4pX+p2F6twOODlISThUq0WvSYk8N+AAQcu+
         iD4/2lC1oK9GAUrUyJe2leRlKYgdYsKRfc5C1/ffIJno144VSB6BC+TfF0XJXB+FWv35
         eJnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WRDv4PPsS6QtP28EmQ4j+7F3ghwW8yl+xcRBDohKwm6Jp0nuA
	3g3ZlMki0kg4ABQ0hFkPdCM=
X-Google-Smtp-Source: ABdhPJwgtLQp5tL5RtX0CYHETNE4s81mlWDKfi6cg+EdiCIHQRuRAAV/pQMfmj3HQF013v+2Fgr7yw==
X-Received: by 2002:a7b:c10e:: with SMTP id w14mr12451986wmi.161.1610790865032;
        Sat, 16 Jan 2021 01:54:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:b688:: with SMTP id g130ls5464534wmf.3.canary-gmail;
 Sat, 16 Jan 2021 01:54:24 -0800 (PST)
X-Received: by 2002:a05:600c:3551:: with SMTP id i17mr12377324wmq.140.1610790864104;
        Sat, 16 Jan 2021 01:54:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610790864; cv=none;
        d=google.com; s=arc-20160816;
        b=vpBdUNDyVbQ2yZlBFKdbTa0Omdo01vq3/1djthrQ932Kw5OAWwlcdn+OiRKxAqHQBP
         PDJwjLoAcKS/q+N6kVDAUSvlVhOSqlTL6c+JMUbA6H5k4wDt6EFs5vuh2QAzaJL7mpSB
         DnAen9lYpGpXYnvIBmXRahO03KZZi78dKvhOu/Us+RV+GMH35Aat5hRTDwtD83uPPThy
         mPaVs4GaC3jWS3cB82hICZSMXSvqhy8qv3mZY2VPmfhVPrK+f+fYKLrH2ka5HH13bMpB
         u8ziFZaSSO1ZdVdMjQT9JzXG8/Kx9HSXGCRd+hMBq0MQgegvgYmkgrMaS/RU+wufZ/3L
         2XtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=wDYHl3JlkFkvKVmXlLVQ/hJ53dcP76tKCr7EU07xaz4=;
        b=sibgh1C7TYqd5jiHvjhsR8O+xuHoHDKkK1pUmYVf43S5a5KmBJ9tc7vh0KpOAwOuZl
         WqG8bbtF151UBmIFePxQGfpPVLcYktwaJJpjtkjc8wjn8AQ7BXsgE+NvXT85bI861Lut
         zogEM/VF3a92Dvv1kLYoxWVYVSHNJds3dqnyne4EIsRbMpR3xHdbYiM0ZCVMlQhIYRGf
         Qksee0tBmleFCS/QHD9wdBdvFCtdgadymWoJRNbWKe1YVjN7nPbqc4hh5Gn2dT1nCrrW
         hdUAzP5UtaCbowPWYYb5MYJyB2m8P4pYLf4iY9+ov840yLDVfgZt2PzRql6V0tdlpz18
         u0aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qCzdEmtm;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com. [2a00:1450:4864:20::633])
        by gmr-mx.google.com with ESMTPS id m2si103589wmm.2.2021.01.16.01.54.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Jan 2021 01:54:24 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) client-ip=2a00:1450:4864:20::633;
Received: by mail-ej1-x633.google.com with SMTP id r12so5433120ejb.9
        for <clang-built-linux@googlegroups.com>; Sat, 16 Jan 2021 01:54:24 -0800 (PST)
X-Received: by 2002:a17:906:7842:: with SMTP id p2mr4576580ejm.412.1610790863713;
        Sat, 16 Jan 2021 01:54:23 -0800 (PST)
Received: from localhost.localdomain (ip-109-40-64-145.web.vodafone.de. [109.40.64.145])
        by smtp.gmail.com with ESMTPSA id n22sm6810226edr.11.2021.01.16.01.54.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Jan 2021 01:54:22 -0800 (PST)
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
	=?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
	Yulia Kartseva <hex@fb.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Andrey Ignatov <rdna@fb.com>,
	Thomas Hebb <tommyhebb@gmail.com>,
	Stephane Eranian <eranian@google.com>,
	"Frank Ch. Eigler" <fche@redhat.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Davide Caratti <dcaratti@redhat.com>,
	Briana Oursler <briana.oursler@gmail.com>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH RFC] tools: Factor Clang, LLC and LLVM utils definitions
Date: Sat, 16 Jan 2021 10:54:04 +0100
Message-Id: <20210116095413.72820-1-sedat.dilek@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qCzdEmtm;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::633
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
2. This patch is on top of Linux v5.11-rc3.

I hope to get some feedback from especially Linux-bpf folks.

Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
---
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210116095413.72820-1-sedat.dilek%40gmail.com.
