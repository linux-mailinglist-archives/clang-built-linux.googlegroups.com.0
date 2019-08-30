Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB27FUHVQKGQELOYYDCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A90A2BB8
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 02:50:51 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id g5sf3997815wmh.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 17:50:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567126251; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Vvqqm+MyjD2xLFuSzmSsRdR8CcO4vBzglLQoVR7HDORTwMzKMnHTuuHQ0NK1QQgit
         5UYkhCPC/VAAMchmsGbQtpfXnFHJ0zDN0ExMJsHHq4tEHcDFllmXbvQlv6DDZYcTcgsS
         0ndAPH0YbB6yaPyocoLIlwRCayf2v+JrHTTdU/MRvEsfvdYithhENAFIZFP081/XgXHA
         GE/QmZX1kWNV1s2Nc5w9IxcXkgmTpXLI5QCHpGLuS8o7of/a0hIAofd7332FQIfKSrrT
         IcHUXsM7+3OzTTKcgs7ClcTcmoQvLNdEBJd5JNMKXOOjgRcp89+HXwjKsUfxrwMIc1z/
         b99w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=kjp5vUFkzNajDaQWmdiC2BE9djh1QsvHG9Scj65NH4E=;
        b=0Pvq0m6brn7Tsr7sR4L2hTMzkf6IGRAQ8vdvIqOUdtQwnItVjsW38w0ZWKM4oyA7a2
         mFaZ9om45dbxajvIWLD1PaV9W4M60IdVXq8Tj3XtE9qCj5Su06/mXgKPmxyqH3t0t4IW
         p9LJ6CXNgNUDD7SWMLT2mVEMlWv2nuTxhfdL/JAdsXvw3ytHeUDcNNeFUtN6eGEz0fS5
         5x7mbyYCnDOuT6SKuZg04r9NqBG9IlZZ7EBXVD22KcsS+WhW28fIWU4/FfUYMaqliobL
         wAyeS/KCDtymJ4f5lNQGPIFsJLHKMu/eqTRmSBmaeEcNbZI8Oa8y1401RAHt6fNB8uq+
         Ecqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=nauxkLeh;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kjp5vUFkzNajDaQWmdiC2BE9djh1QsvHG9Scj65NH4E=;
        b=KNe9XzLIqY0colDIQ4JoK33EbNl6l0A3gfUESiCuVf/TkM/zdC/Le62va/YOH2nT5c
         lgVFPDZp3Yb0RKnZwWkLyo446aedV7tNdu3CUthxmvqnxI7sZaeb1Xi3ZRQPGrNCRS24
         o4hgUCeFBZ9fHNMFVarIQcStA6OP14+8pE/WIwIYGQSGup/K1ITF0fvwEKo+UQw6/xdA
         dKur3b3qhb6mSMyPYPD2LViuDZNkJlFwY3GIDGUivf1I60vohEb4sb3UiuEJEqJPCojP
         fh8GR65Ch8+eDwaLbJHKwOPxjFrnxITxOrwIXrQYV+OjS4Cni8o4WG3+uNGhO6wCviWM
         gIzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kjp5vUFkzNajDaQWmdiC2BE9djh1QsvHG9Scj65NH4E=;
        b=PrBkJyzaXH7iMDK9+8A5B4n8Lw3sDmrlYYRl1JEBWghAnVxV1DwucJtXntcE4MeDpe
         3cMUeR29iDx9KEtJY3rljwEyQVarFqd5O0fQX7f0fom/11Ua4fbdvb10i62k4AlETe4r
         BjmDkZpglapIP87y0tZJNDGEcShXX9Pzo/Fsd6eTGJQcnwvBoxJKhDX9+YQjuZ1GrlsO
         g8PLcwYLGJc7PXTJD0Mlh0u44l8JeYH6LGjUagDtKkMo9CesYNBiDAcIwGLCOjSHJdHR
         xHSb7GNgRpJ7pKNQ6i9mWEKWG2M+ZuJOZZ1WTCLBHs0SAqy0z8AYIiNIMU6kgcTskPXh
         hftg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWQwS5OhPvKwzyEALFUepOJBs+hNpmW95WM5qqw5U6LFhgTd4Yr
	1L1kQIwkNnGRB4HH/eY0s7g=
X-Google-Smtp-Source: APXvYqydMZ7Uv9whoiOd0MIVI66gYJx6TN/gLbE8nTrqQ1yCMEtx4JwOeJoYDot/lfU2gsVLOflGDA==
X-Received: by 2002:a7b:ce02:: with SMTP id m2mr7585975wmc.7.1567126251649;
        Thu, 29 Aug 2019 17:50:51 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cc01:: with SMTP id f1ls1659758wmh.4.canary-gmail; Thu,
 29 Aug 2019 17:50:51 -0700 (PDT)
X-Received: by 2002:a7b:c441:: with SMTP id l1mr14311216wmi.170.1567126251206;
        Thu, 29 Aug 2019 17:50:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567126251; cv=none;
        d=google.com; s=arc-20160816;
        b=GMjxEXY1suZH+xD684L3ikjYGR6jxIBKwlHxrEyBOZ3LHjSnN4IyX55SkarDkiyhOG
         KHA1cuvo52+VR/MvwL9nyB8RbQbb/mzSkjIRFd27bKXi6magylwsIMpSHGdeTsKucjHY
         YTjB6b9DWtwvOjPmuYzxJz7RMQ56RTpYDNAM0Msfi4sCiVU4l8K70qKkvVScen3oCRzf
         Ji17+ewMh6nN350fZB4x6D4J69WI0HzwvdDTaPN/Q/hQvNvId1QAmJPB9df1TEKrsBh9
         s/OsVniQnSmzCEzUxJ+JU8P5yT56zo72TlufTjWvITU1en9paaiw+7bCvRUfB+bfEoL3
         EMAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Ia9Iohgefzn/RbnoIHs2aN928PonhCPU+GJ0mIg1xw0=;
        b=ChpJw6aJyb85T/yeU7gtxiR4iTYTYP0CANw5QKA18DEihhr3Hur9ADGXygLg3fdomd
         85S8/0lm8Hs1Tu4vYkUlOUKGH7aE8nX9i5b2+w8/d70+v8tKd6DBHryDB9yKouspTXJf
         iEpSD8ljUobcEfUuAynYZYwtN8aoVX9HOP685f4x4XWYNPW2Jtx9eaMuxsimx4/uoUCV
         cOYYrN5W5Q/4wYzXcBwaesbkZGNAh0uOaiA+7OftUGXz1w8frBzWpZm2v//yNwcU2+9F
         kKrU/Ry2H5q7Wk+vQ9Ku1aVDS8xYp9cgFtvlhKz/HKtBXTsPLmcrPfGmii7DiPoMmD1N
         aTgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=nauxkLeh;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id f13si553100wmc.3.2019.08.29.17.50.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 17:50:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id j4so3959638lfh.8
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 17:50:51 -0700 (PDT)
X-Received: by 2002:ac2:5608:: with SMTP id v8mr7690120lfd.95.1567126250684;
        Thu, 29 Aug 2019 17:50:50 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 17:50:50 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk,
	ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH RFC bpf-next 07/10] samples: bpf: add makefile.prog for separate CC build
Date: Fri, 30 Aug 2019 03:50:34 +0300
Message-Id: <20190830005037.24004-8-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=nauxkLeh;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

The HOSTCC is supposed to build binaries and tools running on the host
afterwards, in order to simplify build or so, like "fixdep" or else.
In case of cross compiling "fixdep" is executed on host when the rest
samples should run on target arch. In order to build binaries for
target arch with CC and tools running on host with HOSTCC, lets add
Makefile.prog for simplicity, having definition and routines similar
to ones, used in script/Makefile.host. That allows later add
cross-compilation to samples/bpf with minimum changes.

Makefile.prog contains only stuff needed for samples/bpf, potentially
can be reused and sophisticated for other prog sets later and now
needed only for unblocking tricky samples/bpf cross compilation.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile.prog | 77 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 samples/bpf/Makefile.prog

diff --git a/samples/bpf/Makefile.prog b/samples/bpf/Makefile.prog
new file mode 100644
index 000000000000..d5d02fbb5e6e
--- /dev/null
+++ b/samples/bpf/Makefile.prog
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: GPL-2.0
+# ==========================================================================
+# Building binaries on the host system
+# Binaries are not used during the compilation of the kernel, and intendent to
+# be build for target board, target board can be host ofc. Added to build
+# binaries to run not on host system.
+#
+# Both C and C++ are supported, but preferred language is C for such utilities.
+#
+# Sample syntax (see Documentation/kbuild/makefiles.rst for reference)
+# progs-y := xdpsock_example
+# Will compile xdpsock_example.c and create an executable named xdpsock_example
+#
+# progs-y    := xdpsock
+# xdpsock-objs := xdpsock_user.o xdpsock_user2.o
+# Will compile xdpsock.c and xdpsock.c, and then link the executable
+# xdpsock, based on xdpsock_user.o and xdpsock_user2.o
+#
+# Inherited from scripts/Makefile.host
+#
+__progs := $(sort $(progs-y))
+
+# C code
+# Executables compiled from a single .c file
+prog-csingle	:= $(foreach m,$(__progs), \
+			$(if $($(m)-objs)$($(m)-cxxobjs),,$(m)))
+
+# C executables linked based on several .o files
+prog-cmulti	:= $(foreach m,$(__progs),\
+		   $(if $($(m)-cxxobjs),,$(if $($(m)-objs),$(m))))
+
+# Object (.o) files compiled from .c files
+prog-cobjs	:= $(sort $(foreach m,$(__progs),$($(m)-objs)))
+
+prog-csingle	:= $(addprefix $(obj)/,$(prog-csingle))
+prog-cmulti	:= $(addprefix $(obj)/,$(prog-cmulti))
+prog-cobjs	:= $(addprefix $(obj)/,$(prog-cobjs))
+
+#####
+# Handle options to gcc. Support building with separate output directory
+
+_progc_flags   = $(PROGS_CFLAGS) \
+                 $(PROGCFLAGS_$(basetarget).o)
+
+# $(objtree)/$(obj) for including generated headers from checkin source files
+ifeq ($(KBUILD_EXTMOD),)
+ifdef building_out_of_srctree
+_progc_flags   += -I $(objtree)/$(obj)
+endif
+endif
+
+progc_flags    = -Wp,-MD,$(depfile) $(_progc_flags)
+
+# Create executable from a single .c file
+# prog-csingle -> Executable
+quiet_cmd_prog-csingle 	= CC  $@
+      cmd_prog-csingle	= $(CC) $(progc_flags) $(PROGS_LDFLAGS) -o $@ $< \
+		$(PROGS_LDLIBS) $(PROGLDLIBS_$(@F))
+$(prog-csingle): $(obj)/%: $(src)/%.c FORCE
+	$(call if_changed_dep,prog-csingle)
+
+# Link an executable based on list of .o files, all plain c
+# prog-cmulti -> executable
+quiet_cmd_prog-cmulti	= LD  $@
+      cmd_prog-cmulti	= $(CC) $(progc_flags) $(PROGS_LDFLAGS) -o $@ \
+			  $(addprefix $(obj)/,$($(@F)-objs)) \
+			  $(PROGS_LDLIBS) $(PROGLDLIBS_$(@F))
+$(prog-cmulti): $(prog-cobjs) FORCE
+	$(call if_changed,prog-cmulti)
+$(call multi_depend, $(prog-cmulti), , -objs)
+
+# Create .o file from a single .c file
+# prog-cobjs -> .o
+quiet_cmd_prog-cobjs	= CC  $@
+      cmd_prog-cobjs	= $(CC) $(progc_flags) -c -o $@ $<
+$(prog-cobjs): $(obj)/%.o: $(src)/%.c FORCE
+	$(call if_changed_dep,prog-cobjs)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830005037.24004-8-ivan.khoronzhuk%40linaro.org.
