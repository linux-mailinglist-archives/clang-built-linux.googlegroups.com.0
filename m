Return-Path: <clang-built-linux+bncBC2ORX645YPRBTEYQL6AKGQED4I77JI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE7C288DF3
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:05 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id g24sf7128976pfo.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260044; cv=pass;
        d=google.com; s=arc-20160816;
        b=egMXI+296AmHuyuP82feRn27U4b399Ct8l92sFDir495c/Of3SZovffmyzld/ihTXv
         qUjI1I+Le9FXjseorEGJWf3D2gEXs9Xow0Ud1fcGS7t0TJpqMkv65OuMhajT90CwMs9w
         a91WI5ooj1vTea1LAmHtQOA+HiKwkxP9kmQHRcLL26N/cBkMgcJF2I0S+vXAwgBHfyBQ
         m6QWYRKeuDdElvofvDTD6EdM3fi9er85NY/mCrhQQW7OuNGYyV7lBcEXRGUSrUJQn0wg
         zcbbh6LXm1rkCDPLYznUYxrOQY4YXa+ccQd4KKdoJM91i/qbCCfhLotaCKRikjUtnO9j
         gB4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=boQfyHH+NHq9uN0APWc9ZfckPbEcXiR5hLpRVmCs02I=;
        b=jEjhJqR/b2dFkZi2q0dGcKyONcoZylnS8XfSl4fiIApz1+LNP3p58EE62svVM5BNWk
         MYBCep3jsCpNBNFMQ9m2G7gVY0FJ6tmDGCerKX/ciqiPG2ss8FCmMlm69l+JOEnjDXkI
         +TwZVnggBgMYtTAAhP8txOU8TamAYXtfpxisRCWZmum5GAOV0bpJ3kjsq8dHXNF8oYlg
         bfm4nENzQ53vM5Qa0Z8aE/u9qobWmmdyAs5fi+o3Cr3QRMleEBhAs/HW2KiQE2toH0y3
         W1NTCjBn2VEO6hiHV3O11Xxm2r1YqNziPNq4ARN7ivlapQmazS5SAQ+FeP6ZI7Au0CWY
         HklA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MSqEBLKM;
       spf=pass (google.com: domain of 3s4yaxwwkaggygsozurbgtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3S4yAXwwKAGgYGSOZURbGTKTMUUMRK.IUS@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=boQfyHH+NHq9uN0APWc9ZfckPbEcXiR5hLpRVmCs02I=;
        b=bK4GWnPMsxU4K74DrmGmKxG5PjjvVw5CYpbpMisT6qUB2qICyAfLoWNeaeLHmYlePC
         XnoOzBFpW75PLj5QtUck+VJEFsCat+vK7Qk6pP0l6mYZsXUQugAMH4bDHBF5k4JQbTdp
         pt8CIb2Q4ehgrPkVfQrrg+ducuWYdEChVWY7E7lX0gbCE8kDoMjH+7zEDEEqjrcIEtz3
         qofuXNz3Th2UJ/zfn7eIAcLVvDJY1Dtd1KyK3iVfog/++Ia+fu00ZwB/ub4BLeXRWHIa
         d23RNexx6JprFU5CQZY/UtrQvNQZ5BndhVv1IwQ1A1GWaVoQXoxPY98lDXihf48WbUXf
         FmQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=boQfyHH+NHq9uN0APWc9ZfckPbEcXiR5hLpRVmCs02I=;
        b=uEpULc/dH5R9Zhy5re17sBJvHQeLrgdQvor+B42mztSZRDpmJWowAm+bxbAkoMpPnC
         IGN7I1MWGw6uCHOJg9f2voMyb0n/ZRFgDsBnMcWWopQyCN5UOrTtSr5l30qLy4nUOCxW
         TSgtb6ORsumvRH8F3yYAaEnbf+jcbMSOcMTKAVcshybEP1M1mOVhrWwmaVno5HUlycup
         j7InY+29bXdEFhXXynUbkbXGwf3w6LUkI9zPBgiM8jNIHXeicNEacNcEQK0lqYMnYD5N
         6/OkN3VcbB9CiqXgTz4RYP8ESOWsdl5upPRgqfEwHA5jA99MpvLpnOyzDL+yi54xmFtX
         J60w==
X-Gm-Message-State: AOAM532K6PvIRceVNeQf6nK/vDRNF6gqzPFwKGJUYVKswy9Be4850gac
	78BCxiPUbENInhC98OTSId4=
X-Google-Smtp-Source: ABdhPJzSNbgf1Uqb8NTo66cVzMWLKI4yqHaUE3eSqB3cstJ/45KhAgDIgF1LLoQpm5dnC0nIELKZKw==
X-Received: by 2002:aa7:8e54:0:b029:142:2501:34d2 with SMTP id d20-20020aa78e540000b0290142250134d2mr12566004pfr.43.1602260044378;
        Fri, 09 Oct 2020 09:14:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6485:: with SMTP id y127ls3405817pfb.9.gmail; Fri, 09
 Oct 2020 09:14:03 -0700 (PDT)
X-Received: by 2002:aa7:9501:0:b029:155:3b11:d5c4 with SMTP id b1-20020aa795010000b02901553b11d5c4mr9511377pfp.76.1602260043695;
        Fri, 09 Oct 2020 09:14:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260043; cv=none;
        d=google.com; s=arc-20160816;
        b=ytXPV9wLszM114Ucy12VEITi1y81Dw7qdCFEm2EnZ02cn+1968v98kRRdU8iJQjys3
         HPtuCGALXSvdElvuXrWBXy2CZuvSz3mfSaM3xa7wcs8P5pLKwtVrnNUjChgu08GzHhhy
         WPohY3EaYtHMLpbGbb0XSSGxmvUfYD7DtxwoNWSPhkJ9lowJumOHHO5eeHrOikt4+8KR
         qa3+MHNkSttkYwt52T+yTHDLHc0sfVqfWFO8e3eUm5kddruCbgtyuzGsM6v8mXC0YuvG
         i7YyF/2YEbq5+9G3Vq+qsiDtNaR5Ps7p6vdUmpQaT1MC1i+/D+36JIEHOJLIplvIq4VH
         Uxhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=xnUso1aX/PbHivFqRBQYlx5NFQiCnga6+/KbuoETb6w=;
        b=zPnY7pdbJnqM747oe4oxcSHO9yfbTyMTe8ZtO4wdYZLJOa163Y41te/dudk4TASKdU
         h7vRYnkCTQhQvCv0EYu9IEIS1PrXJ/yoL4WgFh7js5l62HkdUrK16aJgSRPNGicFqnCp
         f8TPUWGU2KGU4O4oamF64HkaS9NQyzzDc485rSkTiIbmrOGwbGMRQ6FTkVy2xeRchWZg
         AAD/aRvY6xVe3NzkZC+nTY6Wmrvq6fPaqElrGRjXEfEcotFj1Ou3XiUjsrSoJQL2cD97
         b5YezRVjxGk2zATSqRpwc4GK7JXwzJV7+tM66CZ/YXtwqNPM5HXV7i8wyu+VlMKui6+/
         H3RQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MSqEBLKM;
       spf=pass (google.com: domain of 3s4yaxwwkaggygsozurbgtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3S4yAXwwKAGgYGSOZURbGTKTMUUMRK.IUS@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id mj1si658015pjb.3.2020.10.09.09.14.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3s4yaxwwkaggygsozurbgtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id x3so4809540pgo.4
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:03 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a63:8f5d:: with SMTP id
 r29mr3885294pgn.18.1602260043266; Fri, 09 Oct 2020 09:14:03 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:20 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 11/29] kbuild: lto: postpone objtool
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MSqEBLKM;       spf=pass
 (google.com: domain of 3s4yaxwwkaggygsozurbgtktmuumrk.ius@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3S4yAXwwKAGgYGSOZURbGTKTMUUMRK.IUS@flex--samitolvanen.bounces.google.com;
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
 scripts/Makefile.build    | 19 ++-----------------
 scripts/Makefile.lib      | 11 +++++++++++
 scripts/Makefile.modfinal | 19 ++++++++++++++++---
 scripts/link-vmlinux.sh   | 28 +++++++++++++++++++++++++---
 5 files changed, 55 insertions(+), 24 deletions(-)

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
index eae2f5386a03..ab0ddf4884fd 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -218,27 +218,11 @@ cmd_record_mcount = $(if $(findstring $(strip $(CC_FLAGS_FTRACE)),$(_c_flags)),
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
-
 # 'OBJECT_FILES_NON_STANDARD := y': skip objtool checking for a directory
 # 'OBJECT_FILES_NON_STANDARD_foo.o := 'y': skip objtool checking for a file
 # 'OBJECT_FILES_NON_STANDARD_foo.o := 'n': override directory skip for a file
@@ -250,6 +234,7 @@ objtool_obj = $(if $(patsubst y%,, \
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-12-samitolvanen%40google.com.
