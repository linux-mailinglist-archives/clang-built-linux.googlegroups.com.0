Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB5OOS3YQKGQEWWVYQBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 456C0142BDE
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 14:13:26 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id n6sf25189585ile.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 05:13:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579526005; cv=pass;
        d=google.com; s=arc-20160816;
        b=h2qssDDT0v0wdHyoo2n4MInkvfkJxhDTqZK4LiLNNxMYP0O5e9jkhAKxr2RAas3aGm
         8eM+z9gHRoOqS3bqm3jG2bLSzNaRTiFHepvanRdkivLAGZxjrJJrlS09ot3LmD4DQ6NK
         i552N4PTe7P9VCx0wrBu7lm8fCaE9eRrWNNoyYY12PjKkbJIC/nIpJ8wo6EdYGqtgShj
         Vrb5T7GMwio829t20CeBM23WMAaPqOdpyxPU7kPhFqnuBmo/hM0yYbBSZPqkQMKk9gPy
         lpspZI3IxJgXiJHnIhD5f0/pBkBTUOOGiiK4sh0dCa2NO4eWvcxuLoa3KL1Dh0c1dw3w
         zYOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=50AbI6pcrfm87ReWCPKV8qNKeJ4bo7GsBgAc78BYKQ8=;
        b=JIl0427n0xituZpFJjIh4zaVeR1m01QLJ+dFu5gF32HMg4jW1WoxW+BYUUqGHpeaDL
         PeN5TbOivHFJdZwmme/vFztggBpT4eqaF6oaqKYgHaBxrVaCKsg4A51K7TgQQj33Pdc1
         Zy4AMWI3JQPYTD9B9PrFoiOsMLVeJhpINxNVHV//fdV8Cekt1YvwczF+oHeht0nY93RO
         Q6EcIG+kF78KCCsbqJPi6wtcAP31slea/weZZ+xI0z5lFMvGJhl/eVEfkfaK1ZMidshG
         E27pcEcjujnjsMuqfxTmDnK8Zyuh+bR5YwMGvp6zKecPozNiZw7nUAWu1OdPfC7n8BVP
         /FYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Dc6uZ9rh;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=50AbI6pcrfm87ReWCPKV8qNKeJ4bo7GsBgAc78BYKQ8=;
        b=RVn96Uc/t5d/ffG+W/vbiBqvn9lvyVshW0EALORkee1qae1IQWfLlFaOV1ldjGQFbi
         r5Hnk7ckDnR+17FUjBrIY1SjAth7Ft3FZJbo5bpoXa6vxx1M6ZE4F2+KNQ2uJlML57Ow
         uGBd1yrlJ1//0kms990lpDHBbwgI34atLrDjFo9VxH2JYFZVc8CigJH99QEDyHp2Ytqz
         b9KwctrRyPiStrizR4DbzvWo7/T8gMSwNHDcW2qvfIrgY1ZUcFT8dJibgzVYZpunJlME
         IspTkyyo4RnYr06JIdtwlk80Q0MRvPV/71udGL+QcsbkpVcREA278mAbAgewDWhjUMMk
         EQOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=50AbI6pcrfm87ReWCPKV8qNKeJ4bo7GsBgAc78BYKQ8=;
        b=ARhPAoXfL1N/r2qs6HbhgEbeeLW4axyeCWRdSiSSMlCB16QyeDV11QidPansKaBP+1
         wtk9250D1EP3iQTSFHUK9X8wFTMCjtoUnO7QX3vwLpJy+zt0K2tCbo8uCgICx2/tnoc5
         52pH1sSvZE6xz7iXQDa0mUpPUaf18zW71aKsSPPgCjNZjF37/0vJVAbKOlqM7rn5Lq1A
         fr1Ig7EjT7TLApU9pimmyAdCB2nzgFjrSIy/ji8uQILeiEnUvdh9lnJnxeHv1NBFLIYc
         F/Y/FJghFpLroA7ulZm5jEjUFIZ5aPLcmtZGGq18VTF3WK6+6ut9M1LlkL//MzCbrvuw
         plJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWpMivFvEzhYwRbmER1oxd8NaYAJBrz3TI+Qda/gBk8ershNdFZ
	mDqJnN7uCo5oIon/xVu+Xho=
X-Google-Smtp-Source: APXvYqwOXxp4ut0Mj6iu6dSGcLQj6+XGJYEu3nOpf0LvC5+wlqasSdwJxgyRLgX+qqWYpX3vTWHKVA==
X-Received: by 2002:a5d:8353:: with SMTP id q19mr41209479ior.163.1579526005076;
        Mon, 20 Jan 2020 05:13:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:14c2:: with SMTP id 185ls5075974iou.7.gmail; Mon, 20 Jan
 2020 05:13:24 -0800 (PST)
X-Received: by 2002:a6b:cb06:: with SMTP id b6mr32330607iog.181.1579526004684;
        Mon, 20 Jan 2020 05:13:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579526004; cv=none;
        d=google.com; s=arc-20160816;
        b=OFT/4DkzRFo0xzm+pPoSzU8gnXE0RFufHUFWptVvUcIu2g2Dr+yYP/nidp1HhFm76x
         ZDExSUnEEM9GVnQ6kLb3r5ZhVRCEcDdwQowysfvi0gFmW8aIXBwtQOnBtC8ZgCFxQXZW
         FJrY6S7cteCLel1IB16dKLNoMhu1p7Ehw6WHWTTyZUd9C6JWOgShVlzzPnOb+GYRTWIU
         c4z4Qvpa4Ij+NumIZV5b5JAjCp2Hc8jyVIdcx4FpQP5FQf9OBvPg0mNRrPhnDA+oy3bO
         J8cJk4yjfNATcaFvYarBYyLpWNuPy5hDn+ApyW4NA9R3kWY5Q3cKcilgmgXyVe0KFfPu
         KNJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=Knj85mp5AYTJ/wc8ShtZjRwzcGKswhnYrlf8m1FPmH8=;
        b=kOGCLsFQIAkJfqKM0AkaFBbY9AYSPUmU2G2R5x2gv1BMOpf9P7fPtyDqWDPv1W+QGF
         J9h65MbTcEnjh9W21i+S99HLFlVqfCHsn+1CFaf6MLTcp4oxAx3BDWeT70vsyWjt0zpQ
         Ad1B6PTQJh8gFlxdSizUVCzv11vrsx4CABh6JPIbM8wDWSI63fy/ol2R76XSVcZ9uvZj
         mwdvKIjY2/LWT0AyahAov/BzL/GzdSyK5vDk7EAY6bA7pBDfUKbKwoI4GKnI+PwnuX1V
         GAaoRONTUJCM6R57C96Ob98BOMKxe+CbYgbklxLgdjYS6GKi8aZldf4Xb0bEXEghNpcq
         t0fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Dc6uZ9rh;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id z20si1529195ill.5.2020.01.20.05.13.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jan 2020 05:13:24 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-62-V79V5tIRPx2IU-SJd0UadQ-1; Mon, 20 Jan 2020 08:13:21 -0500
Received: by mail-lf1-f70.google.com with SMTP id j18so1747031lfh.3
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 05:13:20 -0800 (PST)
X-Received: by 2002:ac2:58c1:: with SMTP id u1mr6526488lfo.57.1579525999327;
        Mon, 20 Jan 2020 05:13:19 -0800 (PST)
X-Received: by 2002:ac2:58c1:: with SMTP id u1mr6526468lfo.57.1579525998962;
        Mon, 20 Jan 2020 05:13:18 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id b14sm16762076lff.68.2020.01.20.05.13.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 05:13:16 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 8CE311804D8; Mon, 20 Jan 2020 14:06:52 +0100 (CET)
Subject: [PATCH bpf-next v5 11/11] selftests: Refactor build to remove
 tools/lib/bpf from include path
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
Date: Mon, 20 Jan 2020 14:06:52 +0100
Message-ID: <157952561246.1683545.2762245552022369203.stgit@toke.dk>
In-Reply-To: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
References: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: V79V5tIRPx2IU-SJd0UadQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Dc6uZ9rh;
       spf=pass (google.com: domain of toke@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
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
 tools/testing/selftests/bpf/.gitignore |    4 +-
 tools/testing/selftests/bpf/Makefile   |   59 ++++++++++++++++------------=
----
 2 files changed, 30 insertions(+), 33 deletions(-)

diff --git a/tools/testing/selftests/bpf/.gitignore b/tools/testing/selftes=
ts/bpf/.gitignore
index 1d14e3ab70be..ec464859c6b6 100644
--- a/tools/testing/selftests/bpf/.gitignore
+++ b/tools/testing/selftests/bpf/.gitignore
@@ -29,8 +29,6 @@ test_tcpnotify_user
 test_libbpf
 test_tcp_check_syncookie_user
 test_sysctl
-libbpf.pc
-libbpf.so.*
 test_hashmap
 test_btf_dump
 xdping
@@ -39,4 +37,4 @@ test_cpp
 /no_alu32
 /bpf_gcc
 /tools
-bpf_helper_defs.h
+
diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftests=
/bpf/Makefile
index 2cd91e0524cf..be8fe404a086 100644
--- a/tools/testing/selftests/bpf/Makefile
+++ b/tools/testing/selftests/bpf/Makefile
@@ -20,8 +20,8 @@ CLANG		?=3D clang
 LLC		?=3D llc
 LLVM_OBJCOPY	?=3D llvm-objcopy
 BPF_GCC		?=3D $(shell command -v bpf-gcc;)
-CFLAGS +=3D -g -Wall -O2 $(GENFLAGS) -I$(CURDIR) -I$(APIDIR) -I$(LIBDIR)  =
\
-	  -I$(BPFDIR) -I$(GENDIR) -I$(TOOLSINCDIR)			\
+CFLAGS +=3D -g -Wall -O2 $(GENFLAGS) -I$(CURDIR) -I$(APIDIR)		\
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
+BPFOBJ :=3D $(BUILD_DIR)/libbpf/libbpf.a
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
+$(OUTPUT)/test_stub.o: test_stub.c $(BPFOBJ)
 	$(call msg,CC,,$@)
 	$(CC) -c $(CFLAGS) -o $@ $<
=20
@@ -128,12 +132,10 @@ VMLINUX_BTF_PATHS :=3D $(abspath ../../../../vmlinux)=
			\
 			       /sys/kernel/btf/vmlinux			\
 			       /boot/vmlinux-$(shell uname -r)
 VMLINUX_BTF:=3D $(firstword $(wildcard $(VMLINUX_BTF_PATHS)))
-.PHONY: $(OUTPUT)/runqslower
-$(OUTPUT)/runqslower: force
+$(OUTPUT)/runqslower: $(BPFOBJ)
 	$(Q)$(MAKE) $(submake_extras) -C $(TOOLSDIR)/bpf/runqslower	\
-		    OUTPUT=3D$(OUTPUT)/tools/ VMLINUX_BTF=3D$(VMLINUX_BTF)
-
-BPFOBJ :=3D $(OUTPUT)/libbpf.a
+		    OUTPUT=3D$(SCRATCH_DIR)/ VMLINUX_BTF=3D$(VMLINUX_BTF)   \
+		    BPFOBJ=3D$(BPFOBJ) BPF_INCLUDE=3D$(INCLUDE_DIR)
=20
 $(TEST_GEN_PROGS) $(TEST_GEN_PROGS_EXTENDED): $(OUTPUT)/test_stub.o $(BPFO=
BJ)
=20
@@ -151,25 +153,22 @@ $(OUTPUT)/test_netcnt: cgroup_helpers.c
 $(OUTPUT)/test_sock_fields: cgroup_helpers.c
 $(OUTPUT)/test_sysctl: cgroup_helpers.c
=20
-.PHONY: force
-
-# force a rebuild of BPFOBJ when its dependencies are updated
-force:
-
-DEFAULT_BPFTOOL :=3D $(OUTPUT)/tools/sbin/bpftool
+DEFAULT_BPFTOOL :=3D $(SCRATCH_DIR)/sbin/bpftool
 BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
+$(DEFAULT_BPFTOOL): $(BPFOBJ) | $(BUILD_DIR)/bpftool
+	$(Q)$(MAKE) $(submake_extras)  -C $(BPFTOOLDIR)			\
+		    OUTPUT=3D$(BUILD_DIR)/bpftool/			\
+		    prefix=3D DESTDIR=3D$(SCRATCH_DIR)/ install
=20
-$(DEFAULT_BPFTOOL): force
-	$(Q)$(MAKE) $(submake_extras)  -C $(BPFTOOLDIR)			      \
-		    prefix=3D DESTDIR=3D$(OUTPUT)/tools/ install
-
-$(BPFOBJ): force
-	$(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) OUTPUT=3D$(OUTPUT)/
+$(BPFOBJ): $(wildcard $(BPFDIR)/*.c $(BPFDIR)/*.h $(BPFDIR)/Makefile)     =
     \
+	   ../../../include/uapi/linux/bpf.h                                   \
+	   | $(INCLUDE_DIR) $(BUILD_DIR)/libbpf
+	$(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) OUTPUT=3D$(BUILD_DIR)/libbpf/ =
\
+		DESTDIR=3D$(SCRATCH_DIR) prefix=3D all install_headers
=20
-BPF_HELPERS :=3D $(OUTPUT)/bpf_helper_defs.h $(wildcard $(BPFDIR)/bpf_*.h)
-$(OUTPUT)/bpf_helper_defs.h: $(BPFOBJ)
-	$(Q)$(MAKE) $(submake_extras) -C $(BPFDIR)			      \
-		    OUTPUT=3D$(OUTPUT)/ $(OUTPUT)/bpf_helper_defs.h
+$(BUILD_DIR)/libbpf $(BUILD_DIR)/bpftool $(INCLUDE_DIR):
+	$(call msg,MKDIR,,$@)
+	mkdir -p $@
=20
 # Get Clang's default includes on this system, as opposed to those seen by
 # '-target bpf'. This fixes "missing" files on some architectures/distros,
@@ -189,8 +188,8 @@ MENDIAN=3D$(if $(IS_LITTLE_ENDIAN),-mlittle-endian,-mbi=
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
@@ -279,7 +278,7 @@ $(TRUNNER_BPF_PROGS_DIR)$(if $2,-)$2-bpfobjs :=3D y
 $(TRUNNER_BPF_OBJS): $(TRUNNER_OUTPUT)/%.o:				\
 		     $(TRUNNER_BPF_PROGS_DIR)/%.c			\
 		     $(TRUNNER_BPF_PROGS_DIR)/*.h			\
-		     $$(BPF_HELPERS) | $(TRUNNER_OUTPUT)
+		     $$(BPFOBJ) | $(TRUNNER_OUTPUT)
 	$$(call $(TRUNNER_BPF_BUILD_RULE),$$<,$$@,			\
 					  $(TRUNNER_BPF_CFLAGS),	\
 					  $(TRUNNER_BPF_LDFLAGS))
@@ -392,7 +391,7 @@ $(OUTPUT)/test_cpp: test_cpp.cpp $(OUTPUT)/test_core_ex=
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
clang-built-linux/157952561246.1683545.2762245552022369203.stgit%40toke.dk.
