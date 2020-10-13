Return-Path: <clang-built-linux+bncBC2ORX645YPRBHPLSP6AKGQE7EIJ5QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3364228C5D4
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:30 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id 33sf7046389ota.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549149; cv=pass;
        d=google.com; s=arc-20160816;
        b=L8ANeqHkIiUmEWtMh3kIkLdOv+ktAMVFhgB1ggNssOPxLTPYNbBp7qYEMqGuzJgwJT
         SNoug+HbujWjaQC9lqTau2Pf1McVa+K9fcVX0GjP9ZSfW5EGb16w90+tAsTzWlPxwyck
         /PSavO/y+A2nUT82EzP9LM2TDsaP+RTLKBus5pWxabaJ0aaMEvZPtA64hbKGTGdjlkwM
         BxrqTY+eJjiG7WFFrizufvPQAF8Cqkzfh1vq+wbrY6uUYACBYgj/oDI9Q8c50AuHmpq/
         tZbVcLLEXg0FLG4QUQMkXiyNeIF3RpKsjlS4sQY8/F+pFFUeCIimCRo2vOAYVvWJwQyb
         YSSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=eY28pDffhi6BbrV1exkNVdqXKXShzRhS3Ozh8PXFXGQ=;
        b=lgQgIEYpXHTElDIg8jKQy1Aa1ddO87HVLU9p3KdPeSo5Q2pXQKKVed45STDC2aYo1z
         e97jfQ1gnpYLtIWjmEpjk9NU9fcROUdSe9eKKJPn51mqSR5S0IlhcSo53pBu4+ebgNm/
         M5RVMSKK97C/35kVIZLQqxsZfDPcLwRom6DI9fwiwQ5MekJQp/mMsqTS83gRNLj36x1Z
         lY4NDjmIFK4LdU+JMoxGIRwDvf1PZX0PalINGrSa6lZOYbgF9pZlg6bGEDG4PkfWlSSk
         qPGT7O6q5vlZbtahMDa2qkZUIPgmvQ7D78HJQ9Anv9D8kVDQ8h1yubWCn1oJdaQc2kU3
         eGKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i60Heb9M;
       spf=pass (google.com: domain of 3m_wexwwkajwo6iepkhr6jajckkcha.8ki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3m_WEXwwKAJwO6IEPKHR6JAJCKKCHA.8KI@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eY28pDffhi6BbrV1exkNVdqXKXShzRhS3Ozh8PXFXGQ=;
        b=Ss4cXEdlR8rhfH2r24C6fgLhsptfuTNlO+0pyDslU4ktm8kjJB8sjR4JkmQKfEom/J
         jPyWKUUWFqY/Q+8RTKRMyLoXfFjBUiYTX5yykVPB9A6Pu/+BtSavH1dtptVZoAEjk3Va
         Eg3e5WLOKa6qvOlyP9h7BvheIpkbaKC55hGxpsqo5kkwJ/ugN1TD3BC3fvAFxMghiAo5
         oDOuVzwZ1ZzpI4joZyaHEhCrtKGxb+X7kER9dmRJtOK/4YrCYUECXHwGJmOoICGgEWDQ
         29g3yvxFe41LwezXY59qDxI+ehLrkMHjoxNwlQ5/IC0sdUIySuoA+zq044G59jEBopAP
         ePdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eY28pDffhi6BbrV1exkNVdqXKXShzRhS3Ozh8PXFXGQ=;
        b=nqz+XjDD36Sc/TueyepGUM+ZsjEkTjx/jKmcMOABd3dge76U7lTe7Q7KiVsKbV/J/u
         5ysvmokm1nWwnnK3o+pJ+ZFDCv9d/zEURPrJwHCR00E+JbuicFdA/XrHPLNIgYQKVhq0
         K/EdAcWyLdWIDSkn6NvERN0aiuNY0JaMkKSkmJsEGFjUvv1wx88tLIh09ZZWTlaWszjT
         HRbuClJ8ewvjk02ahXuKNUI1tMbhHtYMsBBRVDalGISp5aLrr6pHtq45kwSSWz8wzvcv
         lGl+TA8+2pbc1JUt283v/i68ndqHPzHPbSjIuvYUXLFo1Km7nSg7O8cTx8lNN29EtNtp
         aE0A==
X-Gm-Message-State: AOAM533sgvejCqVmvA1WipI4BWcBpFm5OdyytxYlq5iGnduG7QSuW1xk
	nvb8K2ZwRRnbklKCuTlOcCQ=
X-Google-Smtp-Source: ABdhPJyyBgXmANvA9P9rkIzvQR3c0us18O1y/sOLfc85pyqELYRrpgppbhpyg2d4vtlB9CcOTrfR6g==
X-Received: by 2002:a4a:d654:: with SMTP id y20mr19880864oos.90.1602549149167;
        Mon, 12 Oct 2020 17:32:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:40e:: with SMTP id 14ls4358853otc.4.gmail; Mon, 12 Oct
 2020 17:32:28 -0700 (PDT)
X-Received: by 2002:a9d:d23:: with SMTP id 32mr13539388oti.34.1602549148741;
        Mon, 12 Oct 2020 17:32:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549148; cv=none;
        d=google.com; s=arc-20160816;
        b=H4XBVDm6ZuU0y94JWXAIqVpHJYI3ca811VZiOnVcYgPWjv67KCL3YkPWxDLv+5bu9i
         K9D5U7QXX/mgOIPDQeendtzPc+iwrdAmhafSkVYTSb3zFHHRnhqU3xqG5QZp4UIEcWMG
         G7wfo4zilhyrB4x1yGtWiin8mN1762rHX/uMtNY2TPtLdJd+hHZdYvwamsQfUuwEQpRK
         C2cApixd6iG5LLCSu4Al5CYA2bHFf316Alsoa1oLk52EoBpEky2MQDsKuuZTOfsHnWjE
         9rqMsiaKh5OUQwvp3fdzid6oR7KJJ4s5/XmB5WF4X6PrsIsGz9PIwvYX34pSTg+r60/N
         sy1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=FZ0g9JkTaft4qRr6+QvPEEunC7zVw9+UB5ZjiIlQbts=;
        b=rRqT6AGVniaatGEYxMR1haEezBmF1QFIXVZ7aJLbxxlVwpViVZOCjhm5Zp1i5Qka3W
         Q33BqJGmakfS1F0UUsRdWhjU4b9JRX8ETWhEop04I8KS5UyayAQToUkZDPRCvAMURj/u
         hqjoloxglthn+uvmDNBVmsFmwcu1Eb14fNyHUa9bHCs6o6O7B7yGGQ1U/d8eSvPYdJFO
         mDNOQmLjkjPo2rsP646S2s/vzkIMIFpHPewuOgf+FVrLEJ4VPu+MjGKUi1s0VNEAKuJq
         gXL0cT9dYtBpyqKuB5QUmKYr/6SHEqrSjAsIHizqzGlaQMRgUFlZiMbjfTK1pHw7UGDb
         OV6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i60Heb9M;
       spf=pass (google.com: domain of 3m_wexwwkajwo6iepkhr6jajckkcha.8ki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3m_WEXwwKAJwO6IEPKHR6JAJCKKCHA.8KI@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id b15si811399otj.3.2020.10.12.17.32.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3m_wexwwkajwo6iepkhr6jajckkcha.8ki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id u24so5744455pfh.4
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:28 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:902:ec02:b029:d1:fc2b:fe95 with
 SMTP id l2-20020a170902ec02b02900d1fc2bfe95mr26706351pld.79.1602549147998;
 Mon, 12 Oct 2020 17:32:27 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:49 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 11/25] kbuild: lto: postpone objtool
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=i60Heb9M;       spf=pass
 (google.com: domain of 3m_wexwwkajwo6iepkhr6jajckkcha.8ki@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3m_WEXwwKAJwO6IEPKHR6JAJCKKCHA.8KI@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

With LTO, LLVM bitcode won't be compiled into native code until
modpost_link, or modfinal for modules. This change postpones calls
to objtool until after these steps, and moves objtool_args to
Makefile.lib, so the arguments can be reused in Makefile.modfinal.

As we didn't have objects to process earlier, we use --duplicate
when processing vmlinux.o. This change also disables unreachable
instruction warnings with LTO to avoid warnings about the int3
padding between functions.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/Kconfig              |  2 +-
 scripts/Makefile.build    | 22 ++--------------------
 scripts/Makefile.lib      | 11 +++++++++++
 scripts/Makefile.modfinal | 19 ++++++++++++++++---
 scripts/link-vmlinux.sh   | 28 +++++++++++++++++++++++++---
 5 files changed, 55 insertions(+), 27 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index caeb6feb517e..74cbd6e3b116 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -612,7 +612,7 @@ config LTO_CLANG
 	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
 	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
 	depends on ARCH_SUPPORTS_LTO_CLANG
-	depends on !FTRACE_MCOUNT_RECORD
+	depends on !FTRACE_MCOUNT_USE_RECORDMCOUNT
 	depends on !KASAN
 	depends on !GCOV_KERNEL
 	select LTO
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index e08e66413dbe..ab0ddf4884fd 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -218,30 +218,11 @@ cmd_record_mcount = $(if $(findstring $(strip $(CC_FLAGS_FTRACE)),$(_c_flags)),
 endif # CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
 
 ifdef CONFIG_STACK_VALIDATION
+ifndef CONFIG_LTO_CLANG
 ifneq ($(SKIP_STACK_VALIDATION),1)
 
 __objtool_obj := $(objtree)/tools/objtool/objtool
 
-objtool_args = $(if $(CONFIG_UNWINDER_ORC),orc generate,check)
-
-objtool_args += $(if $(part-of-module), --module,)
-
-ifndef CONFIG_FRAME_POINTER
-objtool_args += --no-fp
-endif
-ifdef CONFIG_GCOV_KERNEL
-objtool_args += --no-unreachable
-endif
-ifdef CONFIG_RETPOLINE
-  objtool_args += --retpoline
-endif
-ifdef CONFIG_X86_SMAP
-  objtool_args += --uaccess
-endif
-ifdef CONFIG_FTRACE_MCOUNT_USE_OBJTOOL
-  objtool_args += --mcount
-endif
-
 # 'OBJECT_FILES_NON_STANDARD := y': skip objtool checking for a directory
 # 'OBJECT_FILES_NON_STANDARD_foo.o := 'y': skip objtool checking for a file
 # 'OBJECT_FILES_NON_STANDARD_foo.o := 'n': override directory skip for a file
@@ -253,6 +234,7 @@ objtool_obj = $(if $(patsubst y%,, \
 	$(__objtool_obj))
 
 endif # SKIP_STACK_VALIDATION
+endif # CONFIG_LTO_CLANG
 endif # CONFIG_STACK_VALIDATION
 
 # Rebuild all objects when objtool changes, or is enabled/disabled.
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 3d599716940c..ecb97c9f5feb 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -216,6 +216,17 @@ dtc_cpp_flags  = -Wp,-MMD,$(depfile).pre.tmp -nostdinc                    \
 		 $(addprefix -I,$(DTC_INCLUDE))                          \
 		 -undef -D__DTS__
 
+# Objtool arguments are also needed for modfinal with LTO, so we define
+# then here to avoid duplication.
+objtool_args =								\
+	$(if $(CONFIG_UNWINDER_ORC),orc generate,check)			\
+	$(if $(part-of-module), --module,)				\
+	$(if $(CONFIG_FRAME_POINTER),, --no-fp)				\
+	$(if $(CONFIG_GCOV_KERNEL), --no-unreachable,)			\
+	$(if $(CONFIG_RETPOLINE), --retpoline,)				\
+	$(if $(CONFIG_X86_SMAP), --uaccess,)				\
+	$(if $(CONFIG_FTRACE_MCOUNT_USE_OBJTOOL), --mcount,)
+
 # Useful for describing the dependency of composite objects
 # Usage:
 #   $(call multi_depend, multi_used_targets, suffix_to_remove, suffix_to_add)
diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
index 2cb9a1d88434..1bd2953b11c4 100644
--- a/scripts/Makefile.modfinal
+++ b/scripts/Makefile.modfinal
@@ -9,7 +9,7 @@ __modfinal:
 include $(objtree)/include/config/auto.conf
 include $(srctree)/scripts/Kbuild.include
 
-# for c_flags
+# for c_flags and objtool_args
 include $(srctree)/scripts/Makefile.lib
 
 # find all modules listed in modules.order
@@ -34,10 +34,23 @@ ifdef CONFIG_LTO_CLANG
 # With CONFIG_LTO_CLANG, reuse the object file we compiled for modpost to
 # avoid a second slow LTO link
 prelink-ext := .lto
-endif
+
+# ELF processing was skipped earlier because we didn't have native code,
+# so let's now process the prelinked binary before we link the module.
+
+ifdef CONFIG_STACK_VALIDATION
+ifneq ($(SKIP_STACK_VALIDATION),1)
+cmd_ld_ko_o +=								\
+	$(objtree)/tools/objtool/objtool $(objtool_args)		\
+		$(@:.ko=$(prelink-ext).o);
+
+endif # SKIP_STACK_VALIDATION
+endif # CONFIG_STACK_VALIDATION
+
+endif # CONFIG_LTO_CLANG
 
 quiet_cmd_ld_ko_o = LD [M]  $@
-      cmd_ld_ko_o =                                                     \
+      cmd_ld_ko_o +=							\
 	$(LD) -r $(KBUILD_LDFLAGS)					\
 		$(KBUILD_LDFLAGS_MODULE) $(LDFLAGS_MODULE)		\
 		-T scripts/module.lds -o $@ $(filter %.o, $^);		\
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 5ace1dc43993..7f4d19271180 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -89,14 +89,36 @@ modpost_link()
 
 objtool_link()
 {
+	local objtoolcmd;
 	local objtoolopt;
 
+	if [ "${CONFIG_LTO_CLANG} ${CONFIG_STACK_VALIDATION}" = "y y" ]; then
+		# Don't perform vmlinux validation unless explicitly requested,
+		# but run objtool on vmlinux.o now that we have an object file.
+		if [ -n "${CONFIG_UNWINDER_ORC}" ]; then
+			objtoolcmd="orc generate"
+		fi
+
+		objtoolopt="${objtoolopt} --duplicate"
+
+		if [ -n "${CONFIG_FTRACE_MCOUNT_USE_OBJTOOL}" ]; then
+			objtoolopt="${objtoolopt} --mcount"
+		fi
+	fi
+
 	if [ -n "${CONFIG_VMLINUX_VALIDATION}" ]; then
-		objtoolopt="check --vmlinux --noinstr"
+		objtoolopt="${objtoolopt} --noinstr"
+	fi
+
+	if [ -n "${objtoolopt}" ]; then
+		if [ -z "${objtoolcmd}" ]; then
+			objtoolcmd="check"
+		fi
+		objtoolopt="${objtoolopt} --vmlinux"
 		if [ -z "${CONFIG_FRAME_POINTER}" ]; then
 			objtoolopt="${objtoolopt} --no-fp"
 		fi
-		if [ -n "${CONFIG_GCOV_KERNEL}" ]; then
+		if [ -n "${CONFIG_GCOV_KERNEL}" ] || [ -n "${CONFIG_LTO_CLANG}" ]; then
 			objtoolopt="${objtoolopt} --no-unreachable"
 		fi
 		if [ -n "${CONFIG_RETPOLINE}" ]; then
@@ -106,7 +128,7 @@ objtool_link()
 			objtoolopt="${objtoolopt} --uaccess"
 		fi
 		info OBJTOOL ${1}
-		tools/objtool/objtool ${objtoolopt} ${1}
+		tools/objtool/objtool ${objtoolcmd} ${objtoolopt} ${1}
 	fi
 }
 
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-12-samitolvanen%40google.com.
