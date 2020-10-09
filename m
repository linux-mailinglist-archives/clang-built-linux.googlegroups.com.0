Return-Path: <clang-built-linux+bncBC2ORX645YPRBREYQL6AKGQET24T6JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C128288DED
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:13:58 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id y10sf6633287plp.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:13:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260037; cv=pass;
        d=google.com; s=arc-20160816;
        b=1LAeGGL660ypgmqG+yTBwTwJPdKAa+OKnpsa8xPTCVIsglMP2eW8jO1zPB72/Jmx9X
         29aKUj2ioivmC2BFUaHmDQOMVbl979H8nceIfSA2iR15c1RAer9nUGFv48wbrOW9QQrY
         7tjUb8IM0LYv1/esVigSypdd+N+4JAPksMwlG7yQgYtn9lNvZ3t+7xU/NQxLy9QhPsR/
         8PRCz/U2NLBGe+lAjQ5mYaw06v2JkEEvTomyafSc2oM3UFo+et65piLzQRbhZFstzGzc
         hVAUI+9e3IfZqAf1MQQrDJiwh8c5leJYU1XPDL7jWpbh+Y6thfdZltVwDZWERSwEA5Hr
         mniQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=8o5Brh7951kdyzY6S96RmkwQEq0jHhHoNzxlkpEbtks=;
        b=iEbLWFVube/FO2FVUcurLjYo1sNK+007UJbNcSgvfWs+2UdngbGu+1cWAwpUN7ceIx
         rK1fxSvWmIlNhLpe2pzbFMCX+kuuj+Ye/+FuhgziT82iiLj8psFVd6x3xhanv6QF4AVV
         Bs6JA3jm+zqjQXNjT1ByU5AxmVjEmV0qaZmE/kSkynZkFNVcylGOdMt7ezDP2NzXxD1Y
         OXxHB6R6ftNSakoXh4DtQaDdZb3gTy9QxPt7150ssl9CCR/lWrEi6k/dbz0CI8I6rVKy
         rddt4CpLwbUM7ySngHa3dSWCeaS0vJaODGaeNMRmuUMTyBQ8mI7yeZHmu5EUloHOhPsh
         MHZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e07k19OI;
       spf=pass (google.com: domain of 3q4yaxwwkagaq8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3Q4yAXwwKAGAQ8KGRMJT8LCLEMMEJC.AMK@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8o5Brh7951kdyzY6S96RmkwQEq0jHhHoNzxlkpEbtks=;
        b=Dtlse6YFx0XNsotC19rbXTciDJh/6NIq1wL2kVdvZrBXiUl27gl2PS3rrvj0Zd8uBF
         kslGX2sYtvIHGJGHmEtoFzf4PL6caRNNbzafx0h5qRvwqrpiJjzwezpCnLGut1+johhy
         DFH6FWF46bpPY3a6g6GcbuY4HMrDaIs2W5ixosx8fFZ8aRIGoI+cdB7V9iYBhdHHVr/6
         5m91FtHLmWENNCE0tNoUNhX19eNdnQ3t1nLOB2SWPr/a7NqqTzSZNRAYdK9BpHvxB2mA
         CMHMX62qSrdwHdppF8ouoVvxhNgXP9QrQBJvUMLy7z7EBUWE2FklQwQlntura9dKZ3fe
         NL4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8o5Brh7951kdyzY6S96RmkwQEq0jHhHoNzxlkpEbtks=;
        b=f77gR9wefN2n3J3GOg/cD1CbAVeIv0My6I3z36bPxlA+52P2/WpSkhqxo5oGhdqT5w
         mprezrq/1gqGQ2Xi53WTDI2PKmcG++KBIbpkDmuwXu6aqRrRAKP/4iuGGducuiQ9hoCE
         1gijjBHVyB8oqT8GErVzXzZytcG/VoPC3y4h9p4EyvtJuN3nlkG0AkOS58c3IyMhIHNW
         cWSKmM3CvscQbgt20Oxl206lmSKIK6Y3No9WYjDOfyvp093dXy4FAOk5Uf9e5c+U3i6C
         vmNhxS2X7ttjd8IlIEYaem/FgXK7bWnALI80W2XOwdCRnkbK2EYPuZnXL99MMSVYx5Qb
         8omQ==
X-Gm-Message-State: AOAM533YGlIFpwvmxjkKXdhDh4RYLdvk2A3/hcU8ceApSpH35gpJOP9S
	drUWK7eTkQxbaf0EbowmkGY=
X-Google-Smtp-Source: ABdhPJxCe7kq6Rl/LZoWOo4Exai5Cbhe6otOlzXuI6QPwXxOm38SiOyPkQEQQ88aW1imm35u34Xy5A==
X-Received: by 2002:a63:3193:: with SMTP id x141mr3991561pgx.254.1602260036990;
        Fri, 09 Oct 2020 09:13:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6883:: with SMTP id d125ls3406091pfc.8.gmail; Fri, 09
 Oct 2020 09:13:56 -0700 (PDT)
X-Received: by 2002:a63:1d26:: with SMTP id d38mr4131191pgd.0.1602260036188;
        Fri, 09 Oct 2020 09:13:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260036; cv=none;
        d=google.com; s=arc-20160816;
        b=lxtY9B7252+tfE3rcsuK12QW3FLw1fdzybc24yoT105O9F3+/SOqod9vW8d65gluE5
         pA+4MslA6ZlyUPHLmxNBrJYJLODHcKoFANNNaD3qJM6Jc47XUrUtb3Eu5EmnJiyxEEFO
         ODr32ZxYPvk2TKVi/EYs5ASdFKCsAT7FZuqZrn81melMsuSLkTdHMMc5wg2+kuNtfA+t
         hHjqHG7b/qZzLNj3dt6ZAdslCfAKo55xDV0Z87HwGT33PjXhRZ5O4qmUlGbKUxi1/3sW
         vaqaYqtpxHCzIDXY+wP1CEoyqJQPtu3KweyaRi1xWy7uUx9cBw61DQoaiQcue0aKBEsR
         sKqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=12T1A1azkBzH1KIsslD3g0EQSyhK52WZ2+GRw7jYbTw=;
        b=DGhJTpPsmTJ96jTdtvSc5okpRAU/pWlX0wDBfYSHE9E2OBb6SdDjNmJjVw5943Qp8V
         ULShwMlufxaUm/VVh8voYwv4k7zk2sSMMoFJ0DLNtMksWY9WXPl+AUYD2ZFZnyy9GM/K
         iXX+4ryEb1OldUId+DbhEKp64T6/rbCOwFZHIgMh44IfRYIi/s9hckwJLpJqCWfDRbC6
         MHzeNT7LDMieCabZakgeKDZdNq0BEvIVESfqGWjbiEdAqN54LVmoiYZ0ODc0IU3+TjkR
         qNuYhI4GjYo6MM5vewDNJ9AwMXMJ8jfoNYDSDdnmRIRiY7motjJcR/dlnpvB0M9I3ua3
         FhlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e07k19OI;
       spf=pass (google.com: domain of 3q4yaxwwkagaq8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3Q4yAXwwKAGAQ8KGRMJT8LCLEMMEJC.AMK@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id hi16si522911pjb.1.2020.10.09.09.13.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:13:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3q4yaxwwkagaq8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id h31so6869630qtd.14
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:13:56 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:5843:: with SMTP id
 de3mr14074420qvb.12.1602260035381; Fri, 09 Oct 2020 09:13:55 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:16 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 07/29] treewide: remove DISABLE_LTO
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
 header.i=@google.com header.s=20161025 header.b=e07k19OI;       spf=pass
 (google.com: domain of 3q4yaxwwkagaq8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3Q4yAXwwKAGAQ8KGRMJT8LCLEMMEJC.AMK@flex--samitolvanen.bounces.google.com;
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

This change removes all instances of DISABLE_LTO from
Makefiles, as they are currently unused, and the preferred
method of disabling LTO is to filter out the flags instead.

Suggested-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/vdso/Makefile | 1 -
 arch/sparc/vdso/Makefile        | 2 --
 arch/x86/entry/vdso/Makefile    | 2 --
 kernel/Makefile                 | 3 ---
 scripts/Makefile.build          | 2 +-
 5 files changed, 1 insertion(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index 45d5cfe46429..e836e300440f 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -31,7 +31,6 @@ ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
 ccflags-y += -DDISABLE_BRANCH_PROFILING
 
 CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS) $(GCC_PLUGINS_CFLAGS)
-KBUILD_CFLAGS			+= $(DISABLE_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
 OBJECT_FILES_NON_STANDARD	:= y
diff --git a/arch/sparc/vdso/Makefile b/arch/sparc/vdso/Makefile
index f44355e46f31..476c4b315505 100644
--- a/arch/sparc/vdso/Makefile
+++ b/arch/sparc/vdso/Makefile
@@ -3,8 +3,6 @@
 # Building vDSO images for sparc.
 #
 
-KBUILD_CFLAGS += $(DISABLE_LTO)
-
 VDSO64-$(CONFIG_SPARC64)	:= y
 VDSOCOMPAT-$(CONFIG_COMPAT)	:= y
 
diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
index 215376d975a2..ecc27018ae13 100644
--- a/arch/x86/entry/vdso/Makefile
+++ b/arch/x86/entry/vdso/Makefile
@@ -9,8 +9,6 @@ ARCH_REL_TYPE_ABS := R_X86_64_JUMP_SLOT|R_X86_64_GLOB_DAT|R_X86_64_RELATIVE|
 ARCH_REL_TYPE_ABS += R_386_GLOB_DAT|R_386_JMP_SLOT|R_386_RELATIVE
 include $(srctree)/lib/vdso/Makefile
 
-KBUILD_CFLAGS += $(DISABLE_LTO)
-
 # Sanitizer runtimes are unavailable and cannot be linked here.
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
diff --git a/kernel/Makefile b/kernel/Makefile
index 16ec9262ce9d..2561abc91961 100644
--- a/kernel/Makefile
+++ b/kernel/Makefile
@@ -38,9 +38,6 @@ KASAN_SANITIZE_kcov.o := n
 KCSAN_SANITIZE_kcov.o := n
 CFLAGS_kcov.o := $(call cc-option, -fno-conserve-stack) -fno-stack-protector
 
-# cond_syscall is currently not LTO compatible
-CFLAGS_sys_ni.o = $(DISABLE_LTO)
-
 obj-y += sched/
 obj-y += locking/
 obj-y += power/
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index a4634aae1506..2175ddb1ee0c 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -111,7 +111,7 @@ endif
 # ---------------------------------------------------------------------------
 
 quiet_cmd_cc_s_c = CC $(quiet_modtag)  $@
-      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS), $(c_flags)) $(DISABLE_LTO) -fverbose-asm -S -o $@ $<
+      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS), $(c_flags)) -fverbose-asm -S -o $@ $<
 
 $(obj)/%.s: $(src)/%.c FORCE
 	$(call if_changed_dep,cc_s_c)
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-8-samitolvanen%40google.com.
