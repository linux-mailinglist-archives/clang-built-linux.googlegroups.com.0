Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB2HTQ3YQKGQEUR6CAYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 48962140B36
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 14:43:05 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id w6sf4454282otk.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 05:43:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579268584; cv=pass;
        d=google.com; s=arc-20160816;
        b=JIoZaaYEmLCMeTRDeykv3FWbzArVX1P2msezA3QVvgLy4n0gdBRZljBvNcpxFXT8kJ
         KNSpMVF7CYXz/r/wKJ79As9sqW+SWNa6wUQTjw2wrqhiwlOmk1yKZfP17QvaPfCmUn7/
         DbEutQStciK7B6DxT2+p4kzUpHXb3eXmN/cghzr9n4hJrX3Vgenudo5Eoz1qguliTSNK
         jps0xDDyXAlQc3jwEQQRvl1n9Zds55f7o6pSAsiGR0kgvz0upmf24EDvapblh25+RUXY
         bxpGZldNY+Jrf4bA6ac/NOyF0S74T9+/7ff6JntQRrRAQmnBcTvUoS6BFmkAawLQVYPJ
         Grtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=0NHNZv7ShyLhpyV4/JLt7xLLQLwOFceZIrgCtwuYah8=;
        b=kVVSbhwRlfRqJXJQyqb+sAfV5wpfblwhwKr6KR5QpJfPkKQyJCO+V4eqaiGBriC3eR
         WD7qKfRZzsgeEoTGIwFBm6r0nse3j+nxgXFfi8OOdp9vCiKrYYdyehjOkQDPDh4Q19Kg
         BMbjYFtXBt9dFtX5Bu/xmQCE3EAltAnOH7C8bOy5mV104QZWrRhRTQEi7WWClmfQ60jq
         jRABunAyNxh07TTmN1TqGmID/z9LdbrsnFv0IElIWpw8Oi2AY9GHK61fR4flgOv8+tkS
         axS/GXC/n7E3pFRymh5GChxh80nritIOgRovaivYvihf9kvIhIWtNpKfZz/hns3ByEZU
         DzHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Opd14KnP;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0NHNZv7ShyLhpyV4/JLt7xLLQLwOFceZIrgCtwuYah8=;
        b=C6Smael7nnpmVh/2YCSkhh0dWGsGjsPBYRsBNA67NauGDMr5HCPWSF+1DrgSN7Cpfm
         oL4wILsuN13a+QCAkpgeCM8T8DiT6WtTPuIlKlzXT/m6tm7zUipa/UG8+CwxJuvO71Io
         d6ks0WVL62v9+MEy1tmrdsRhCh7bSuPTDC7TE4bUDX/mAwKNOcvUgW4k0LM3wUP8tY9n
         W8W+s+TCOSc5Z7JLwIKZdXUtun3scu/PonUZliAGPIXHywZEIYtLNVNiOUVLPt6HG/hT
         NyxjoAaQ+cBlBarpdrum++dELPl7t1VZJGvYc4YNlXXofxsp0VsFOru78XNnTmmHma5b
         LOQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0NHNZv7ShyLhpyV4/JLt7xLLQLwOFceZIrgCtwuYah8=;
        b=dPFdeW+3ySYfJeBjQQGC+6kF77t4z/KBQe7J3sYJPiN8k2tpPUEXXdV4GyvQPHoJv1
         e5O9Zdf5qmSbfuxUj7CtsYyICVwzr7Rr0tHgMsZgUWFn8oKNXDbwjSYK+rxlh9WJEYpK
         kf3mQUvOm2slKUjae1IZOIlifpdu5Coe3PCZOuIFVHjTJb9YaCPBU+6USIHvXtUNQfY4
         KjvukAVXy0JVqg6KU5EQwAPBH/nUXw1Tu4okPw9gA8d2u9AwG3gOk8RNqQRXI8mD/uA4
         xyL3M9+lUiUrfvBPpkKSneMTtzJLGRDIZjt//nOAB8Kb1l1jdWm3GZIlgYNZhnj3STaM
         ISjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUUV7LiGR3s83RXVkVeTDQlGc+D/eV1QxrVq0CwTqVHkUidcBQe
	EwKX64DWH8AqdywH8tGVcWI=
X-Google-Smtp-Source: APXvYqw6lD/UOfTaPqnAZA/fCIOF/voFsPNirmoavl2v3P0hfZxa+PvxNfSTP3Yyy0EgHowmJB0Olw==
X-Received: by 2002:aca:c30d:: with SMTP id t13mr3500008oif.166.1579268584095;
        Fri, 17 Jan 2020 05:43:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:611c:: with SMTP id i28ls4681306otj.3.gmail; Fri, 17 Jan
 2020 05:43:03 -0800 (PST)
X-Received: by 2002:a9d:6544:: with SMTP id q4mr6160940otl.194.1579268583738;
        Fri, 17 Jan 2020 05:43:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579268583; cv=none;
        d=google.com; s=arc-20160816;
        b=s2M/HLDiyBJSI0Xlzd9z0rmTAyw5i3THBcsxxZRG3nkYw85XaDAu4ft6tJbTUwPA6J
         YP82QaOA8V8AiywL12fvOok2bwvJx2DVZSWSQlPb/CXcR832DNLf3x4GWmgDaezaAL43
         nlNEK41tkJKQMvMp9lZY2dWEwRZMwXXYgr6zC41Jj5iCx5s5PCyafpP7gJqerRD/LbHN
         wh1SZwTfuQSP/CmsDvpRaeAdFutqU5EnoS32WFtLKKAuZJ3ikUrcdNn/3rIMttIUZDZ5
         xhtq0eUdyIDa4Ea1Q4IRC8v8BWFePu8nR5jPd05RSuUB7fpc5eN9kFYdDjn95etFXyld
         ViJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=esnSSVPc1R50aQyAnUp4EflxWi3PTGEozBQAlekuq+A=;
        b=rhc5bO0RSIrgmM0DyMJie794ASMzCVUfZjUz3cwbphpN8Vtvs8qaRbKgD3qwFniKt8
         4nqZNxw25jMi57dpZ4673G25k8fCRGkFgSgljyruW457/HMeNswZf7VWU/fdT1gPQ+3Z
         IRKtOt15lpaEQZTQ2Ennc2IJ6ys3QAS5y83in4wZjBQvBfjYQL56G48WuaS9B0twXZPE
         UrRRDDIm36vNv77CdeoJ2KoG9zNLc993Cug+Zr7AFfpRug3nTrjRcj0eJ2dpDxYB4mEe
         SU0ranrm/nbiIhwt+ueZc6rdhj3LhQ86rTHU7EcBJEa8927haCAsMVwckiDSXXvlxzlW
         R4/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Opd14KnP;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id h11si1304884otk.0.2020.01.17.05.43.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jan 2020 05:43:03 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-225-zbV4OUEnM56ln2Bd6J_tHQ-1; Fri, 17 Jan 2020 08:42:59 -0500
Received: by mail-lf1-f71.google.com with SMTP id i29so4361640lfc.18
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 05:42:59 -0800 (PST)
X-Received: by 2002:a05:651c:21c:: with SMTP id y28mr5577327ljn.164.1579268578510;
        Fri, 17 Jan 2020 05:42:58 -0800 (PST)
X-Received: by 2002:a05:651c:21c:: with SMTP id y28mr5577310ljn.164.1579268578268;
        Fri, 17 Jan 2020 05:42:58 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id s23sm12499671lji.70.2020.01.17.05.42.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2020 05:42:56 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id DD4BF1804D6; Fri, 17 Jan 2020 14:36:46 +0100 (CET)
Subject: [PATCH bpf-next v4 09/10] selftests: Remove tools/lib/bpf from
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
Date: Fri, 17 Jan 2020 14:36:46 +0100
Message-ID: <157926820677.1555735.5437255599683298212.stgit@toke.dk>
In-Reply-To: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: zbV4OUEnM56ln2Bd6J_tHQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Opd14KnP;
       spf=pass (google.com: domain of toke@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
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
 tools/testing/selftests/bpf/.gitignore |    2 +
 tools/testing/selftests/bpf/Makefile   |   49 +++++++++++++++++++++-------=
----
 2 files changed, 33 insertions(+), 18 deletions(-)

diff --git a/tools/testing/selftests/bpf/.gitignore b/tools/testing/selftes=
ts/bpf/.gitignore
index 1d14e3ab70be..8c9eac626996 100644
--- a/tools/testing/selftests/bpf/.gitignore
+++ b/tools/testing/selftests/bpf/.gitignore
@@ -39,4 +39,4 @@ test_cpp
 /no_alu32
 /bpf_gcc
 /tools
-bpf_helper_defs.h
+
diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftests=
/bpf/Makefile
index 858d4e3369ad..ac0292a82fdc 100644
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
+INCLUDE_BPF :=3D $(INCLUDE_DIR)/bpf
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
@@ -133,7 +137,7 @@ $(OUTPUT)/runqslower: force
 	$(Q)$(MAKE) $(submake_extras) -C $(TOOLSDIR)/bpf/runqslower	\
 		    OUTPUT=3D$(OUTPUT)/tools/ VMLINUX_BTF=3D$(VMLINUX_BTF)
=20
-BPFOBJ :=3D $(OUTPUT)/libbpf.a
+BPFOBJ :=3D $(BUILD_DIR)/libbpf/libbpf.a
=20
 $(TEST_GEN_PROGS) $(TEST_GEN_PROGS_EXTENDED): $(OUTPUT)/test_stub.o $(BPFO=
BJ)
=20
@@ -159,17 +163,28 @@ force:
 DEFAULT_BPFTOOL :=3D $(OUTPUT)/tools/sbin/bpftool
 BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
=20
-$(DEFAULT_BPFTOOL): force
-	$(Q)$(MAKE) $(submake_extras)  -C $(BPFTOOLDIR)			      \
+$(BUILD_DIR)/libbpf $(BUILD_DIR)/bpftool $(INCLUDE_DIR):
+	$(call msg,MKDIR,,$@)
+	mkdir -p $@
+
+$(DEFAULT_BPFTOOL): force | $(BUILD_DIR)/bpftool
+	$(Q)$(MAKE) $(submake_extras)  -C $(BPFTOOLDIR)		\
+		    OUTPUT=3D$(BUILD_DIR)/bpftool/			\
 		    prefix=3D DESTDIR=3D$(OUTPUT)/tools/ install
=20
-$(BPFOBJ): force
-	$(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) OUTPUT=3D$(OUTPUT)/
+$(BPFOBJ): force | $(BUILD_DIR)/libbpf
+	$(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) \
+		OUTPUT=3D$(BUILD_DIR)/libbpf/
+
+$(INCLUDE_BPF): $(BPFOBJ) | $(INCLUDE_DIR)
+	$(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) install_headers \
+		OUTPUT=3D$(BUILD_DIR)/libbpf/ DESTDIR=3D$(SCRATCH_DIR) prefix=3D
+
+BPF_HELPERS :=3D $(or $(wildcard $(INCLUDE_BPF)/bpf_*.h),$(INCLUDE_BPF))
+ifneq ($(BPF_HELPERS),$(INCLUDE_BPF))
+$(BPF_HELPERS): $(INCLUDE_BPF)
+endif
=20
-BPF_HELPERS :=3D $(OUTPUT)/bpf_helper_defs.h $(wildcard $(BPFDIR)/bpf_*.h)
-$(OUTPUT)/bpf_helper_defs.h: $(BPFOBJ)
-	$(Q)$(MAKE) $(submake_extras) -C $(BPFDIR)			      \
-		    OUTPUT=3D$(OUTPUT)/ $(OUTPUT)/bpf_helper_defs.h
=20
 # Get Clang's default includes on this system, as opposed to those seen by
 # '-target bpf'. This fixes "missing" files on some architectures/distros,
@@ -189,8 +204,8 @@ MENDIAN=3D$(if $(IS_LITTLE_ENDIAN),-mlittle-endian,-mbi=
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
@@ -392,7 +407,7 @@ $(OUTPUT)/test_cpp: test_cpp.cpp $(OUTPUT)/test_core_ex=
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
clang-built-linux/157926820677.1555735.5437255599683298212.stgit%40toke.dk.
