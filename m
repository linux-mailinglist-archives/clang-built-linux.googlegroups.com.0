Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3HUS6DQMGQE7TX7SVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A963BEFF9
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Jul 2021 21:03:10 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id w2-20020aa785820000b029032396e2bf68sf1310293pfn.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 12:03:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625684589; cv=pass;
        d=google.com; s=arc-20160816;
        b=v4CXy5olH/KvmOi2F3tdIZnAkGTWpjHbeh6reWh0uIso335D20YmEUNCWpn4Fc9U7l
         2Ypr+M4cG//IciVDJwwOdDH2VciFvF+fVGWuBecxLvaZXdVfsYt60casGe9VN09AIpjm
         CyuYTZ4p9mOF6zO1diVim3ZR22cGhiqU6IsiM7E3TDSfTVAV5f2ic8hqKMeZpUgXeqKn
         KaLIXzXWNAHLcCWD+By+Qc/2g7BtijT6fpKbGvZ7ukGLmfGOKhHRqfEoOBC3aXItdwb3
         99K8ogPfsVvRqTv++0a124zSZm27OxGsMHJdENzaUdWAkFzC6YDFSo6fwJ6cq0nXaAmO
         x2FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=MIzgqHr0g4OR+T2IS9aaaKk/VNaSh3CWDkHZw3bi/qo=;
        b=VcHNgEx5UMd+AeAQZAm1201VBcgo0DNZ57XwcZ9Ewz5hZoPWTuivdCiQypieVV5LAK
         kC5Xia5CjPpY9RfdcBdoGTxKEfktCAAcfBe+vBF9/6DSVG3WXbBTySZzfEbZP/5OypNv
         hYoJDfMdxjACQJZ61bfcZ7cN7ijn+Gx34UFhoz20kCdX8YxhxjjXoMf1vjZ93LYvzPr0
         /mHjD3hRs0AfxXkcQbhu+cg6i5yGM8tPHKDq9925Z6VB7WnnxAUhn/x02HOv2h3ZPzRH
         yL+NNzjAEi4Diy5gE5BD0qJj5eb3QqMT0Ni/TDCzzb38ifxkuMk8vSZV3IM4og8UlY5b
         wEMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=huyPnvOd;
       spf=pass (google.com: domain of 3a_rlyawkaaytjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3a_rlYAwKAAYtjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=MIzgqHr0g4OR+T2IS9aaaKk/VNaSh3CWDkHZw3bi/qo=;
        b=mj4dauSeFZbgej7eAeCierhVor6YwMz2aikjjWQqagmFHaQnKyUMcEskwmC3uE7W2b
         +ZJlWKg9LKdynnMypgKp8MOC/9OEccR/UuqtE4DXgi5iqt47Rk5UV4OcTb+WigwCaG8w
         yQTM/Wt+n9ZJBclFNOO68YI3LbLzk2UVkytqsUDhecE+TvNJXlwkuHP7YIJzD0wGADIn
         zr7jm7G53ypQc9vvmI1CN6b8yDVsEZo9JOy/JntsiFZRF5/t853AQogfKOsx9qG9/5aE
         Ld/SyMUvKvgxPU8uNGvmKPbskjx5InJdYWV1gOsMLtY2vixUqttMgTtaiis2/+ee7JJR
         rIAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MIzgqHr0g4OR+T2IS9aaaKk/VNaSh3CWDkHZw3bi/qo=;
        b=T2FrIMoq8NPpk9S8q17qmkLGs0V5yAF4eYaS5LA4/lgQE4o3lyyvTYRs+qtu/Aa0k+
         C04ATNFX4j87ghA0EHCpo19qem9dXyxRmGYLd2QnYD8SNnUxYS+KkxeeyjktY8QRxn0E
         3WALLpFYhMJ6UIXL2CZluqUGd/zpvo3Aa0QCr8y1QjZaAPf1azzRJbm8IDFPvU+Wvr4H
         00w5pC/Vry00ktcYvpNwT+dX6GyslmDXboLprTkiRJPJIcOikv4hex1nzmQOC3NEJxyA
         MnxzKvPKuqf2h+c94ebxzOikRE2oEMU3WCkcUvqArBHJLhgisyhz/Ti9bXr5TSkUuKGT
         gpWQ==
X-Gm-Message-State: AOAM533TAubPzLtUdWWr4b1MnF3r/GvZMfNGidQGF/C4JclOzBqOSbpT
	bHJhe2/1eTKVAFvdLTAwV0o=
X-Google-Smtp-Source: ABdhPJz/N2eYbFvCFjGacgJ+QRI0/qM1JpCDyzwJDlMo+LeXSuYyWUlbctgTO7EJxUjOKfagLQQ7LA==
X-Received: by 2002:a63:ef02:: with SMTP id u2mr17920469pgh.298.1625684589057;
        Wed, 07 Jul 2021 12:03:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:788b:: with SMTP id q11ls5279182pll.6.gmail; Wed, 07
 Jul 2021 12:03:08 -0700 (PDT)
X-Received: by 2002:a17:90a:3b84:: with SMTP id e4mr507640pjc.25.1625684588526;
        Wed, 07 Jul 2021 12:03:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625684588; cv=none;
        d=google.com; s=arc-20160816;
        b=vyXF9rvyj5PwclmqQqsxQSyKYkXNzy9mZFyAD6UsmKsby00waTkCZQqLQjjI64aOJ0
         M7ayEjdqJCmtFSM5so41aZeWQf5yleDimuSHg2apjQ0m/zkqGmIB+81cm+yo1vfi5kvd
         Kc339s/Q5jHY2gpUUI+Y0yQEyBDrc1tXJI0bZpo8y5/f5fGds+Jv0xWBINhqnc2PsL0D
         Thl1Rh8OZn3OYMn519Azlhl7q2XaXCknEFUDvKNbuXmEkIxmyc/17Th5YD5NNn+jTdZx
         zrs4DdXSu8KtQo3a/BtKxM04F/IcmUDF+03Fw7Po8X4NTxhiezo1P/EfSWM6GqoWNP2j
         1h8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=LllEXpVhK7cZtj4Sp7d9dG1scIGY1m3AOR8RMRS67bk=;
        b=bBrl44V8/UDPedk/CGzzTsSbtWyCE8McmwODWF9DwQ5bAer3lLkIAqLAdP0BIA7TSX
         ljKIObpnrqLRIIbOdFtNknTsog1IaPXAz0oCFLLv+p0CHeHSTywDPGRrOBtXj/Ak9aOk
         WoiAXrOVzQXZCj10MgEPwzpUJLhOPso7Zw7p/SGLGgIObhAFadsGQ397y8piOlL/4doP
         g+giq0mUQTQzD5e+6brLxKbClalZ8pJilGentHbFLKi3CFZPNRYM1h7m4g4Emdkg8qDa
         5xlR0jOWm5hz9qYq9NA+YHtAaXJ+hTCWA/afW20Knd821+VhYMeHeC+0mckebZNsuRkG
         821A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=huyPnvOd;
       spf=pass (google.com: domain of 3a_rlyawkaaytjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3a_rlYAwKAAYtjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id a6si1196711pls.4.2021.07.07.12.03.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 12:03:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3a_rlyawkaaytjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id k32-20020a25b2a00000b0290557cf3415f8so3842994ybj.1
        for <clang-built-linux@googlegroups.com>; Wed, 07 Jul 2021 12:03:08 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:d417:6e24:4a54:1792])
 (user=ndesaulniers job=sendgmr) by 2002:a25:83ca:: with SMTP id
 v10mr35125284ybm.84.1625684587725; Wed, 07 Jul 2021 12:03:07 -0700 (PDT)
Date: Wed,  7 Jul 2021 12:03:05 -0700
Message-Id: <20210707190305.387278-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [RFC] Makefile: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: clang-built-linux@googlegroups.com
Cc: Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=huyPnvOd;       spf=pass
 (google.com: domain of 3a_rlyawkaaytjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3a_rlYAwKAAYtjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

We get constant feedback that the command line invocation of make is too
long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
target triple, or is an absolute path outside of $PATH, but it's mostly
redundant for a given ARCH.

If CROSS_COMPILE is not set, simply set --target=aarch64-linux for
CLANG_FLAGS, KBUILD_CFLAGS, and KBUILD_AFLAGS.

Previously, we'd cross compile via:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linxu-gnu make LLVM=1 LLVM_IAS=1
Now:
$ ARCH=arm64 make LLVM=1 LLVM_IAS=1

We can drop gnu from the triple, but dropping linux from the triple
produces different .config files for the above invocations for the
defconfig target.

Link: https://github.com/ClangBuiltLinux/linux/issues/1399
Suggested-by: Arnd Bergmann <arnd@kernel.org>
Suggested-by: Fangrui Song <maskray@google.com>
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Note: not a serious patch, just need something to link to from lore.
Sorry for the noise.


 MAINTAINERS                       |  1 +
 Makefile                          | 24 +++------------------
 scripts/Makefile.LLVMTargetTriple | 35 +++++++++++++++++++++++++++++++
 3 files changed, 39 insertions(+), 21 deletions(-)
 create mode 100644 scripts/Makefile.LLVMTargetTriple

diff --git a/MAINTAINERS b/MAINTAINERS
index 548783bf6505..0da239be76d8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4500,6 +4500,7 @@ B:	https://github.com/ClangBuiltLinux/linux/issues
 C:	irc://chat.freenode.net/clangbuiltlinux
 F:	Documentation/kbuild/llvm.rst
 F:	include/linux/compiler-clang.h
+F:	scripts/Makefile.LLVMTargetTriple
 F:	scripts/clang-tools/
 K:	\b(?i:clang|llvm)\b
 
diff --git a/Makefile b/Makefile
index 6fbb35661354..fffe75a9d76b 100644
--- a/Makefile
+++ b/Makefile
@@ -627,27 +627,9 @@ endif
 # and from include/config/auto.conf.cmd to detect the compiler upgrade.
 CC_VERSION_TEXT = $(subst $(pound),,$(shell $(CC) --version 2>/dev/null | head -n 1))
 
-TENTATIVE_CLANG_FLAGS := -Werror=unknown-warning-option
-
-ifneq ($(CROSS_COMPILE),)
-TENTATIVE_CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
-endif
-ifeq ($(LLVM_IAS),1)
-TENTATIVE_CLANG_FLAGS	+= -integrated-as
-else
-TENTATIVE_CLANG_FLAGS	+= -no-integrated-as
-GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
-TENTATIVE_CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
-endif
-
-export TENTATIVE_CLANG_FLAGS
-
-ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
-CLANG_FLAGS	+= $(TENTATIVE_CLANG_FLAGS)
-KBUILD_CFLAGS	+= $(CLANG_FLAGS)
-KBUILD_AFLAGS	+= $(CLANG_FLAGS)
-export CLANG_FLAGS
-endif
+# Figure out the target triple needed for cross compiling with LLVM. Defines
+# TENTATIVE_CLANG_FLAGS and . Depends on CC_VERSION_TEXT.
+include $(srctree)/scripts/Makefile.LLVMTargetTriple
 
 # Include this also for config targets because some architectures need
 # cc-cross-prefix to determine CROSS_COMPILE.
diff --git a/scripts/Makefile.LLVMTargetTriple b/scripts/Makefile.LLVMTargetTriple
new file mode 100644
index 000000000000..e21df3482c67
--- /dev/null
+++ b/scripts/Makefile.LLVMTargetTriple
@@ -0,0 +1,35 @@
+TENTATIVE_CLANG_FLAGS := -Werror=unknown-warning-option
+
+ifeq ($(CROSS_COMPILE),)
+ifneq ($(LLVM),)
+ifneq ($(LLVM_IAS),)
+ifeq ($(ARCH),arm64)
+TENTATIVE_CLANG_FLAGS	+= --target=aarch64-linux
+# TODO: add `else ifeq` for other architectures.
+# TODO: arm64 compat vdso (CROSS_COMPILE_COMPAT)
+else
+$(error Specify CROSS_COMPILE or add '--target=' option to Makefile)
+endif # ARCH
+endif # LLVM_IAS
+endif # LLVM
+else
+# Even when not using clang as CC, we still need to build up "tentative" flags
+# for bindgen when using Rust.
+TENTATIVE_CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
+endif # CROSS_COMPILE
+
+ifeq ($(LLVM_IAS),1)
+TENTATIVE_CLANG_FLAGS	+= -integrated-as
+else
+TENTATIVE_CLANG_FLAGS	+= -no-integrated-as
+GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
+TENTATIVE_CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
+endif
+
+ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
+CLANG_FLAGS	+= $(TENTATIVE_CLANG_FLAGS)
+KBUILD_CFLAGS	+= $(CLANG_FLAGS)
+KBUILD_AFLAGS	+= $(CLANG_FLAGS)
+endif
+
+export TENTATIVE_CLANG_FLAGS CLANG_FLAGS
-- 
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210707190305.387278-1-ndesaulniers%40google.com.
