Return-Path: <clang-built-linux+bncBC2ORX645YPRBFNFYX5AKGQEGPX2TMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 0357525CA51
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:19 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id a5sf4011791ybh.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165078; cv=pass;
        d=google.com; s=arc-20160816;
        b=zIE4fGIXzoWeEiBnpQ5ru/zrqLsgQHVtsrLM0snVP8gOOvQaAouH1qnT5WrEjbusNy
         xOr2mwzlX8XAjzymGYOpazPNn6G8g5YYmf4c1IvXHqQqd+M4WVJ9nHSK0SozbB9R7rD0
         nzyYelOY6Gsy5Jrev/93cAt1a5j6dbvua6/tbYuvwuranyPl45DcUnTvOXvE7R6vO/XV
         YY6ZIyyXU8ff/QcQ/Q0S7f+wDDLS6mTNgAzoIx0wu0ilSC/Vjw7aS/fsmHib3eKscXSw
         iYUS6vOrNcq0KKdToADNW3TRubTWolCW0noYsB4XGw2UcdgQlnpculQRFNkKt5U6cDEW
         Kj4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=m+9xGNz8smBXkpP2NjjcF3As7Dmzx/N4TvFFEQhUkwM=;
        b=bzz/UTBdAH3zUTtvPI5pg5tjPhJSu/6GdoChbY1wtF3DMvLqJzhzTpf62giAr74U04
         6yCf04kwHpqlWq/68Fq9IeE2PZtdX7+MzScZQ+5JL1D9kqnYGFEivRaM5oisuW2+bDWh
         3x4u3b3flfVSfY7zgtaxaskeuAVghKtzdPjPl0G9YvmIQqs/fsXfD/NoIZS2lazS/ftf
         SthapNZUzLLkrZdrQ3avsHNg/K36PWIKzwrbSHlK5by7bl+K1AzW7Kix26dGThs2z7nJ
         OS3tq97SpvSmh4chmizX0aTPHZO9FeSVH+ysrUJdZqUMmgKulzk3UqNnHrDIVoEJXThq
         uNbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eZp0Qn5M;
       spf=pass (google.com: domain of 3lvjrxwwkaiaweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3lVJRXwwKAIAweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m+9xGNz8smBXkpP2NjjcF3As7Dmzx/N4TvFFEQhUkwM=;
        b=nUxEZTyrTIm5ZXG8Oz8yXSfRa8Mh4oQkQjKAG3fT60SrFMrqbTp6PeCqby00Kuiu+S
         Gd/ce2FtxBxyAc0FGtI/b2VlR2IgFsYxpGeGYKNVaJEMYurf3uThjCLvv9Qtjfrtgjmp
         3XBkWaLbUjDXI1Wt8ffzngJPKWvmoOJahH9dLelGpjLy1s8O2FX8+5wLtluxWp6CfIoT
         fvBSQMSsGyAelqfSJUU4PMmvy/aDWtY7ElokjH3ELVfaMkdqZbDl0RVDbavPSgmfbXWv
         hH6wB/cDzwWOEIwXm/AOie1qMAY6p8grdRV7oP0eU1AF+uFVvieBIyLeSTZgJSKhNGCL
         7t3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m+9xGNz8smBXkpP2NjjcF3As7Dmzx/N4TvFFEQhUkwM=;
        b=D0Nqh74az5ZlzskvKZxvZEsz8IwrBBQcbzUxB2xcsYsX6kjII4IqLKNysi3MHaqsvf
         4iwKQsxWqZ3QRm8ws2t0JWiHCqMSwwpKn/ottacpzRsiI2lzKvlk6p1fVQBcmjAlEbSt
         7qypK26CsdIKtYJuDDh6AGZMKQdTIPAkohP1tHM0xucSo7Ba6fc1Gj6VWcs7IYNpupIO
         IQyD+C2q3QiviDipaTKJrSkCy66Wy0Z8rwHOhbW46cz7P1wkKay5p0V3YHWQoxOqnv3E
         5ogNzojjHK0aCxgYbGwSHlK4eRthBo0u4nucI/VfSegLYuYvcfOCMgYz6DkTanLbrj+K
         li6A==
X-Gm-Message-State: AOAM531gqCra38xktkFgt+TCZzXfKVOihbWRYedoDS/mn0CjI7CDT8Pw
	N+VjHJGyf/IeDhuUp6Wk3Lo=
X-Google-Smtp-Source: ABdhPJw/hTE+YBjJqbJNNL+PWExXrJDrHCYkYayJgQX+RWNvuAsxF/bDdg6ocP/M0VPBEzgg2SKfyw==
X-Received: by 2002:a25:5755:: with SMTP id l82mr5622336ybb.175.1599165077976;
        Thu, 03 Sep 2020 13:31:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5755:: with SMTP id l82ls3324627ybb.5.gmail; Thu, 03 Sep
 2020 13:31:17 -0700 (PDT)
X-Received: by 2002:a25:5105:: with SMTP id f5mr5927602ybb.262.1599165077518;
        Thu, 03 Sep 2020 13:31:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165077; cv=none;
        d=google.com; s=arc-20160816;
        b=iwf3H3ZrnW+/DaFJ/7Fq4rd+uK7bbsXQYPVneeMIbfm6K5iAuDM8ck5o00dylhJrsH
         3gPU0MxB3s0pLgjTAeAlUgHqCBel7LqBC92y+uLIoFZb/9ViJbNPuln4YKOtCWl/lpOu
         EW0Fq5wew/3HVq4oDhrArDyVtGmjn7mkeiJha0njehPoMKh5ZcHANORd3fm++QEYb0V7
         2ze3ZbezRWAX1sjEBHKgPpHBu8a9ZGUW4s6N7+H7xuOLMAc3ZH6oAYlqCD2DkzH6Mk/V
         eSiC4o2PozIM0uv1LSaKLN3HJVV/yXMF+egua23aYI09pgdHug1jM0/O80YuSPq4bhts
         ZiPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=68EGgksazPQQWa43NBSs0j4GgDFQhp/Me0oPJzuOsN8=;
        b=cqmq5XkEgDQ/FsWO5phDDiqiHIh1zBCK+bLCmLY+hdcf3S0iSJB5PIw3da4py28ES9
         pGxDu/489y6sPsqcBIC2l8EtLMsoa8/9vhwE/gNfhftI4qGwHGs/+Z8xZQh1m/+dei87
         beQzyFnukOqKd3VLMF5R2KbKH5iVO/vypNwVfZakRMo3n+khCMVVjAAiMPEHsE6Um1yV
         wXVdXYIesJjkVitkzWw4bIIxgF1ze+F8MXxzjqoxZUI7wfxc/m5xWXmOuPDjmOe5sHxK
         znVBEvlKnjFIQ6uzMihpOadGb2IqiWLORMs/Ut5XWY3kdYBQuiwB/GdMRhQa69zBqzfL
         LSQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eZp0Qn5M;
       spf=pass (google.com: domain of 3lvjrxwwkaiaweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3lVJRXwwKAIAweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id r7si326531ybk.5.2020.09.03.13.31.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lvjrxwwkaiaweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id j5so2307786qka.7
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:17 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:e543:: with SMTP id
 n3mr3539594qvm.11.1599165077148; Thu, 03 Sep 2020 13:31:17 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:36 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 11/28] kbuild: lto: postpone objtool
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
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
 header.i=@google.com header.s=20161025 header.b=eZp0Qn5M;       spf=pass
 (google.com: domain of 3lvjrxwwkaiaweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3lVJRXwwKAIAweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
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
to objtool until after these steps.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/Kconfig              |  2 +-
 scripts/Makefile.build    |  2 ++
 scripts/Makefile.modfinal | 24 ++++++++++++++++++++++--
 scripts/link-vmlinux.sh   | 23 ++++++++++++++++++++++-
 4 files changed, 47 insertions(+), 4 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 71392e4a8900..7a418907e686 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -599,7 +599,7 @@ config LTO_CLANG
 	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
 	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
 	depends on ARCH_SUPPORTS_LTO_CLANG
-	depends on !FTRACE_MCOUNT_RECORD
+	depends on HAVE_OBJTOOL_MCOUNT || !(X86_64 && DYNAMIC_FTRACE)
 	depends on !KASAN
 	depends on !GCOV_KERNEL
 	select LTO
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index c348e6d6b436..b8f1f0d65a73 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -218,6 +218,7 @@ cmd_record_mcount = $(if $(findstring $(strip $(CC_FLAGS_FTRACE)),$(_c_flags)),
 endif # USE_RECORDMCOUNT
 
 ifdef CONFIG_STACK_VALIDATION
+ifndef CONFIG_LTO_CLANG
 ifneq ($(SKIP_STACK_VALIDATION),1)
 
 __objtool_obj := $(objtree)/tools/objtool/objtool
@@ -253,6 +254,7 @@ objtool_obj = $(if $(patsubst y%,, \
 	$(__objtool_obj))
 
 endif # SKIP_STACK_VALIDATION
+endif # CONFIG_LTO_CLANG
 endif # CONFIG_STACK_VALIDATION
 
 # Rebuild all objects when objtool changes, or is enabled/disabled.
diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
index 1005b147abd0..909bd509edb4 100644
--- a/scripts/Makefile.modfinal
+++ b/scripts/Makefile.modfinal
@@ -34,10 +34,30 @@ ifdef CONFIG_LTO_CLANG
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
+	$(objtree)/tools/objtool/objtool				\
+		$(if $(CONFIG_UNWINDER_ORC),orc generate,check)		\
+		--module						\
+		$(if $(CONFIG_FRAME_POINTER),,--no-fp)			\
+		$(if $(CONFIG_GCOV_KERNEL),--no-unreachable,)		\
+		$(if $(CONFIG_RETPOLINE),--retpoline,)			\
+		$(if $(CONFIG_X86_SMAP),--uaccess,)			\
+		$(if $(USE_OBJTOOL_MCOUNT),--mcount,)			\
+		$(@:.ko=$(prelink-ext).o);
+
+endif # SKIP_STACK_VALIDATION
+endif # CONFIG_STACK_VALIDATION
+
+endif # CONFIG_LTO_CLANG
 
 quiet_cmd_ld_ko_o = LD [M]  $@
-      cmd_ld_ko_o =                                                     \
+      cmd_ld_ko_o +=                                                     \
 	$(LD) -r $(KBUILD_LDFLAGS)					\
 		$(KBUILD_LDFLAGS_MODULE) $(LDFLAGS_MODULE)		\
 		$(addprefix -T , $(KBUILD_LDS_MODULE))			\
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 3e99a19b9195..a352a5ad9ef7 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -93,8 +93,29 @@ objtool_link()
 {
 	local objtoolopt;
 
+	if [ "${CONFIG_LTO_CLANG} ${CONFIG_STACK_VALIDATION}" = "y y" ]; then
+		# Don't perform vmlinux validation unless explicitly requested,
+		# but run objtool on vmlinux.o now that we have an object file.
+		if [ -n "${CONFIG_UNWINDER_ORC}" ]; then
+			objtoolopt="orc generate"
+		else
+			objtoolopt="check"
+		fi
+
+		if [ -n ${USE_OBJTOOL_MCOUNT} ]; then
+			objtoolopt="${objtoolopt} --mcount"
+		fi
+	fi
+
 	if [ -n "${CONFIG_VMLINUX_VALIDATION}" ]; then
-		objtoolopt="check --vmlinux"
+		if [ -z "${objtoolopt}" ]; then
+			objtoolopt="check --vmlinux"
+		else
+			objtoolopt="${objtoolopt} --vmlinux"
+		fi
+	fi
+
+	if [ -n "${objtoolopt}" ]; then
 		if [ -z "${CONFIG_FRAME_POINTER}" ]; then
 			objtoolopt="${objtoolopt} --no-fp"
 		fi
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-12-samitolvanen%40google.com.
