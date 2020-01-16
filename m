Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBUWJQHYQKGQEM7WBO6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EF213DBAE
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:27:48 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id w6sf15884151ill.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 05:27:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579181267; cv=pass;
        d=google.com; s=arc-20160816;
        b=wT/OtLtnVG6A8vEM2z8gOFc3GnncQzN2uEclCaCbc+u2qZC9E2wVb1Fqa/XFqCG/Vp
         sPAcFJKYphZBRN4vJH29/4MUlBfoqZ3GQowUcpp+J814xS4lGwKPAy7MBFdJ71SB9fM0
         mEvf45ZAv274X008+865/F8iUYUFY69DbFfPVm7iXZUerFUyoNsjVh9+Afn95ujOeoL6
         f48D5nusvG7uQ8bykaae7feJjfvMVl32V02Cf6aYEod3uso8is20sRWGirra6RA5BZ8L
         oYfEUg5T0xFgDHjcSafGUHTqTqdffCQ80/zvUDA52d+9qcXZZjRuBXfLJo7Wv+8JP1pW
         r1GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=Guhc4Fv46X+pS+uViItD3lihixOWBJLeXXwG6hM2+gc=;
        b=Ewm+kcBOf4SEiv/Tl8K85ZncUMhbLkpiR0CQMcOqCfUcNib7M11gMIdTwfYBcsa7vK
         906DcnLks41MPZ4QkgvydoC6JCY2PlZiONsXI/zmAFoievFgPD5ks84+N3ucMHqoohty
         niZqky0kXJRuutgiZ3KHWvHnbggxcm7MUUuQVD6VKxmz80eD36zdtaKb6aCUk1Xd5CIe
         o/4kZ1LB9JKasgXe6PvY2n9a0FEwJMbzZqsyidPA23y5mDUc441EeFfv0RZW+GD7qi5c
         hOemzPLfDIUgwUskJM2vTiV1bRIsL2nPJAlYMnOqTMDMqIqH1GDJHlRwGfmXSt3iA55x
         si6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=SD8VNsZx;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Guhc4Fv46X+pS+uViItD3lihixOWBJLeXXwG6hM2+gc=;
        b=eG85xCyn+5U6OYK89qmzJVuyiIBXS8aTvb6iGj8VpXokzPRlVR4DZ5f84KREp08G8v
         BetZM8weoMna1A8kVzCdWG61Krse4gSho8uAbaHh/jPQS/OB4hEifcCX0nCUECsdrCzB
         N2YSVow03Hb3jOY/fAeScJC1VXxUEyxM1bQXUJC0RvrVAWh6R6jR8ifh0MtkN48J9koK
         tGccxSeZC/yvqCZJ7JNJ+mPfEJwyU9M7lfOkaP8Q+3a3XKYcFnzzvRG9ctSI07XXp+v3
         06GUeXGSudfBR1p4T07bgQFV6/ST7ZbXZpAh1YulsZDn4lB9PObqbAHCKlYMUhnC1RRn
         bDBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Guhc4Fv46X+pS+uViItD3lihixOWBJLeXXwG6hM2+gc=;
        b=uPQ7A1CTP45DHcGBpq+eqU5r8NxyeoJK/DG3DsMO4NmrYh5xdsKyJZqYJouFNzVAMs
         ISOtbTTVjMk53UJLCS12iPh0Zyt33G3u7aAQAzOiKr4agemL4e9QI9TOhJasrjyryU5h
         GPX7H+llAQy7Jrmv8LJ8kln3I+GV1tNctYbp9bqPbyzhWad50OD7P2jTa8ZaHrwlxDuF
         luBcsyWm1sFmZqZ1qe8tcLkVLrtibAHdfNlbMW9uq/X7Y80ITNgUt68n5FThNmET06O0
         M8cC9b7npbpW25rnmf378CvWubTGp5HJrQK00nXdA3nDXCt0XU72kIpFU6Z4UgjkgNJe
         QTKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVwWJkegKKNtnvVRDBrAkMm/PJsep7LmriuijuWny351wXEU5MZ
	NIZaouOqEinGTDALqPPYO/g=
X-Google-Smtp-Source: APXvYqzA3tJDi8YonJdmrkgB02MRZqX7lCz76BPFZBwVGKJ8Lhx3Ntg9ifvEHKxv56m/r0kuSc1X+Q==
X-Received: by 2002:a02:b602:: with SMTP id h2mr29266793jam.20.1579181267000;
        Thu, 16 Jan 2020 05:27:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:5f17:: with SMTP id t23ls3523533iob.10.gmail; Thu, 16
 Jan 2020 05:27:46 -0800 (PST)
X-Received: by 2002:a6b:c742:: with SMTP id x63mr26722783iof.162.1579181266644;
        Thu, 16 Jan 2020 05:27:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579181266; cv=none;
        d=google.com; s=arc-20160816;
        b=ZHhVAeMUV8dYV6uDo8+7cmvmODrGYWdrRvx8/+mBy+/5uD56vUcbFiUUe4cLxsPuPm
         Sr1zFr7kPEP1aAns3VkzYG2sCLPpSNElN7ri5MpnzP3SooK0ieb4A42sYdfQtvEVJZpm
         ZAeszGYFSX7upYew9JgIsLv/nHTjcMCcrwIirsZGLR+IVUh2BUD4ccLaYW1HY90gdUq3
         VWzdafClbVSEINe1QsHTBp2b6WOR51eSKKLRA3v+uxJ8L+t8bU6d3qPkaV7p4O9ArpqM
         t7F58QQxadT0Y/LXlCZcrb8pAooVfk8/6sPlTsDPqAF0hBTx/zPuMmWYN5VjxB/6mRXS
         zTxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=2UJKAuowzskPfJawWgj1ksYmwtkIV9IQc/B+U8VixLc=;
        b=wIpgNy2uYfahZEM5bvgq4VmAMXCn+RdrvMNc4xjOlvdcwLwSi0t4V6I9cERudEUEkD
         MuTq0WNd9Ek1VqJs7/WD/hjzzNtnygB6t0KBdK3rlqPqZZlWCyg+s1XwtCJ5tvkTj4vW
         4GM++UqqQs1gOiLC8uuGTY1M1h+fsgEkvWyNjN87GT60DE8j60FMy+D+2yBcIs2RVNnB
         SxyOWtuEwfjFMm494VO674ST37NkAQNYBqgUTVE26/TyectZW39R9h0vgXP1eueysuvi
         Yre1zVHfQi+mv2qGaN3i9l+R83nCaDwBS5aU5AWG1mGGaj/yjh+MJnzhfnU85zc5Rpc6
         gWUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=SD8VNsZx;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id h4si1197016ilf.3.2020.01.16.05.27.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 05:27:46 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-87-ECWYeKPnO3m1l4chKBiEbA-1; Thu, 16 Jan 2020 08:27:43 -0500
Received: by mail-lf1-f72.google.com with SMTP id x79so3814189lff.19
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 05:27:43 -0800 (PST)
X-Received: by 2002:a2e:7e05:: with SMTP id z5mr2143926ljc.99.1579181262220;
        Thu, 16 Jan 2020 05:27:42 -0800 (PST)
X-Received: by 2002:a2e:7e05:: with SMTP id z5mr2143893ljc.99.1579181261819;
        Thu, 16 Jan 2020 05:27:41 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id g27sm10722135lfj.49.2020.01.16.05.27.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 05:27:41 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id E326A1804D7; Thu, 16 Jan 2020 14:22:21 +0100 (CET)
Subject: [PATCH bpf-next v3 09/11] selftests: Remove tools/lib/bpf from
 include path
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Alexei Starovoitov <ast@kernel.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <brouer@redhat.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, bpf@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Thu, 16 Jan 2020 14:22:21 +0100
Message-ID: <157918094179.1357254.14428494370073273452.stgit@toke.dk>
In-Reply-To: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: ECWYeKPnO3m1l4chKBiEbA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=SD8VNsZx;
       spf=pass (google.com: domain of toke@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>

To make sure no new files are introduced that doesn't include the bpf/
prefix in its #include, remove tools/lib/bpf from the include path
entirely.

Instead, we introduce a new header files directory under the scratch tools/
dir, and add a rule to run the 'install_headers' rule from libbpf to have a
full set of consistent libbpf headers in $(OUTPUT)/tools/include/bpf, and
then use $(OUTPUT)/tools/include as the include path for selftests.

For consistency we also make sure we put all the scratch build files from
other bpftool and libbpf into tools/build/, so everything stays within
selftests/.

Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/testing/selftests/bpf/.gitignore |    1 +
 tools/testing/selftests/bpf/Makefile   |   50 +++++++++++++++++++---------=
----
 2 files changed, 31 insertions(+), 20 deletions(-)

diff --git a/tools/testing/selftests/bpf/.gitignore b/tools/testing/selftes=
ts/bpf/.gitignore
index 1d14e3ab70be..849be9990ad2 100644
--- a/tools/testing/selftests/bpf/.gitignore
+++ b/tools/testing/selftests/bpf/.gitignore
@@ -40,3 +40,4 @@ test_cpp
 /bpf_gcc
 /tools
 bpf_helper_defs.h
+/include/bpf
diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftests=
/bpf/Makefile
index 1fd7da49bd56..c3fa695bb028 100644
--- a/tools/testing/selftests/bpf/Makefile
+++ b/tools/testing/selftests/bpf/Makefile
@@ -20,8 +20,8 @@ CLANG		?=3D clang
 LLC		?=3D llc
 LLVM_OBJCOPY	?=3D llvm-objcopy
 BPF_GCC		?=3D $(shell command -v bpf-gcc;)
-CFLAGS +=3D -g -Wall -O2 $(GENFLAGS) -I$(CURDIR) -I$(APIDIR) -I$(LIBDIR)  =
\
-	  -I$(BPFDIR) -I$(GENDIR) -I$(TOOLSINCDIR)			\
+CFLAGS +=3D -g -Wall -O2 $(GENFLAGS) -I$(CURDIR) -I$(APIDIR)		 \
+	  -I$(INCLUDE_DIR) -I$(GENDIR) -I$(LIBDIR) -I$(TOOLSINCDIR)	\
 	  -Dbpf_prog_load=3Dbpf_prog_test_load				\
 	  -Dbpf_load_program=3Dbpf_test_load_program
 LDLIBS +=3D -lcap -lelf -lz -lrt -lpthread
@@ -97,11 +97,15 @@ OVERRIDE_TARGETS :=3D 1
 override define CLEAN
 	$(call msg,CLEAN)
 	$(RM) -r $(TEST_GEN_PROGS) $(TEST_GEN_PROGS_EXTENDED) $(TEST_GEN_FILES) $=
(EXTRA_CLEAN)
-	$(MAKE) -C $(BPFDIR) OUTPUT=3D$(OUTPUT)/ clean
 endef
=20
 include ../lib.mk
=20
+SCRATCH_DIR :=3D $(OUTPUT)/tools
+BUILD_DIR :=3D $(SCRATCH_DIR)/build
+INCLUDE_DIR :=3D $(SCRATCH_DIR)/include
+INCLUDE_BPF :=3D $(INCLUDE_DIR)/bpf/bpf.h
+
 # Define simple and short `make test_progs`, `make test_sysctl`, etc targe=
ts
 # to build individual tests.
 # NOTE: Semicolon at the end is critical to override lib.mk's default stat=
ic
@@ -120,7 +124,7 @@ $(OUTPUT)/urandom_read: urandom_read.c
 	$(call msg,BINARY,,$@)
 	$(CC) -o $@ $< -Wl,--build-id
=20
-$(OUTPUT)/test_stub.o: test_stub.c
+$(OUTPUT)/test_stub.o: test_stub.c $(INCLUDE_BPF)
 	$(call msg,CC,,$@)
 	$(CC) -c $(CFLAGS) -o $@ $<
=20
@@ -129,7 +133,7 @@ $(OUTPUT)/runqslower: force
 	$(Q)$(MAKE) $(submake_extras) -C $(TOOLSDIR)/bpf/runqslower	      \
 		    OUTPUT=3D$(CURDIR)/tools/ VMLINUX_BTF=3D$(abspath ../../../../vmlinu=
x)
=20
-BPFOBJ :=3D $(OUTPUT)/libbpf.a
+BPFOBJ :=3D $(BUILD_DIR)/libbpf/libbpf.a
=20
 $(TEST_GEN_PROGS) $(TEST_GEN_PROGS_EXTENDED): $(OUTPUT)/test_stub.o $(BPFO=
BJ)
=20
@@ -155,17 +159,23 @@ force:
 DEFAULT_BPFTOOL :=3D $(OUTPUT)/tools/sbin/bpftool
 BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
=20
-$(DEFAULT_BPFTOOL): force
-	$(Q)$(MAKE) $(submake_extras)  -C $(BPFTOOLDIR)			      \
+$(BUILD_DIR)/libbpf $(BUILD_DIR)/bpftool $(INCLUDE_DIR):
+	$(call msg,MKDIR,,$@)
+	mkdir -p $@
+
+$(DEFAULT_BPFTOOL): force $(BUILD_DIR)/bpftool
+	$(Q)$(MAKE) $(submake_extras)  -C $(BPFTOOLDIR)		\
+		    OUTPUT=3D$(BUILD_DIR)/bpftool/			\
 		    prefix=3D DESTDIR=3D$(OUTPUT)/tools/ install
=20
-$(BPFOBJ): force
-	$(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) OUTPUT=3D$(OUTPUT)/
+$(BPFOBJ): force $(BUILD_DIR)/libbpf
+	$(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) \
+		OUTPUT=3D$(BUILD_DIR)/libbpf/
=20
-BPF_HELPERS :=3D $(OUTPUT)/bpf_helper_defs.h $(wildcard $(BPFDIR)/bpf_*.h)
-$(OUTPUT)/bpf_helper_defs.h: $(BPFOBJ)
-	$(Q)$(MAKE) $(submake_extras) -C $(BPFDIR)			      \
-		    OUTPUT=3D$(OUTPUT)/ $(OUTPUT)/bpf_helper_defs.h
+BPF_HELPERS :=3D $(wildcard $(BPFDIR)/bpf_*.h) $(INCLUDE_BPF)
+$(INCLUDE_BPF): force $(BPFOBJ)
+	$(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) install_headers \
+		OUTPUT=3D$(BUILD_DIR)/libbpf/ DESTDIR=3D$(SCRATCH_DIR) prefix=3D
=20
 # Get Clang's default includes on this system, as opposed to those seen by
 # '-target bpf'. This fixes "missing" files on some architectures/distros,
@@ -185,8 +195,8 @@ MENDIAN=3D$(if $(IS_LITTLE_ENDIAN),-mlittle-endian,-mbi=
g-endian)
=20
 CLANG_SYS_INCLUDES =3D $(call get_sys_includes,$(CLANG))
 BPF_CFLAGS =3D -g -D__TARGET_ARCH_$(SRCARCH) $(MENDIAN) 			\
-	     -I$(OUTPUT) -I$(CURDIR) -I$(CURDIR)/include/uapi		\
-	     -I$(APIDIR) -I$(LIBDIR) -I$(BPFDIR) -I$(abspath $(OUTPUT)/../usr/inc=
lude)
+	     -I$(INCLUDE_DIR) -I$(CURDIR) -I$(CURDIR)/include/uapi	\
+	     -I$(APIDIR) -I$(abspath $(OUTPUT)/../usr/include)
=20
 CLANG_CFLAGS =3D $(CLANG_SYS_INCLUDES) \
 	       -Wno-compare-distinct-pointer-types
@@ -306,7 +316,7 @@ $(TRUNNER_TEST_OBJS): $(TRUNNER_OUTPUT)/%.test.o:			\
 		      $(TRUNNER_EXTRA_HDRS)				\
 		      $(TRUNNER_BPF_OBJS)				\
 		      $(TRUNNER_BPF_SKELS)				\
-		      $$(BPFOBJ) | $(TRUNNER_OUTPUT)
+		      $$(BPFOBJ) $$(INCLUDE_BPF) | $(TRUNNER_OUTPUT)
 	$$(call msg,TEST-OBJ,$(TRUNNER_BINARY),$$@)
 	cd $$(@D) && $$(CC) $$(CFLAGS) -c $(CURDIR)/$$< $$(LDLIBS) -o $$(@F)
=20
@@ -314,7 +324,7 @@ $(TRUNNER_EXTRA_OBJS): $(TRUNNER_OUTPUT)/%.o:				\
 		       %.c						\
 		       $(TRUNNER_EXTRA_HDRS)				\
 		       $(TRUNNER_TESTS_HDR)				\
-		       $$(BPFOBJ) | $(TRUNNER_OUTPUT)
+		       $$(BPFOBJ) $$(INCLUDE_BPF) | $(TRUNNER_OUTPUT)
 	$$(call msg,EXT-OBJ,$(TRUNNER_BINARY),$$@)
 	$$(CC) $$(CFLAGS) -c $$< $$(LDLIBS) -o $$@
=20
@@ -326,7 +336,7 @@ ifneq ($2,)
 endif
=20
 $(OUTPUT)/$(TRUNNER_BINARY): $(TRUNNER_TEST_OBJS)			\
-			     $(TRUNNER_EXTRA_OBJS) $$(BPFOBJ)		\
+			     $(TRUNNER_EXTRA_OBJS) $$(BPFOBJ) $$(INCLUDE_BPF)		\
 			     | $(TRUNNER_BINARY)-extras
 	$$(call msg,BINARY,,$$@)
 	$$(CC) $$(CFLAGS) $$(filter %.a %.o,$$^) $$(LDLIBS) -o $$@
@@ -388,7 +398,7 @@ $(OUTPUT)/test_cpp: test_cpp.cpp $(OUTPUT)/test_core_ex=
tern.skel.h $(BPFOBJ)
 	$(call msg,CXX,,$@)
 	$(CXX) $(CFLAGS) $^ $(LDLIBS) -o $@
=20
-EXTRA_CLEAN :=3D $(TEST_CUSTOM_PROGS)					\
+EXTRA_CLEAN :=3D $(TEST_CUSTOM_PROGS) $(SCRATCH_DIR)			\
 	prog_tests/tests.h map_tests/tests.h verifier/tests.h		\
 	feature								\
-	$(addprefix $(OUTPUT)/,*.o *.skel.h no_alu32 bpf_gcc tools)
+	$(addprefix $(OUTPUT)/,*.o *.skel.h no_alu32 bpf_gcc)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157918094179.1357254.14428494370073273452.stgit%40toke.dk=
.
