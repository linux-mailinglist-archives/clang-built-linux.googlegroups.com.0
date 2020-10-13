Return-Path: <clang-built-linux+bncBC2ORX645YPRBE7LSP6AKGQEU56JO2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B3628C5C9
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:21 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id s14sf19099794ybl.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549140; cv=pass;
        d=google.com; s=arc-20160816;
        b=vbjcrS1PR5AiJAllCdJ4sRGaaEsNLmuA1iGffNEX5ckn/4PfZ+3/Mya19X02PgDQiN
         GGRh9t4uv0vDQKOl21bekW7yJwgtE4T70L38QEeyRyFKEgDLWM9/tlY52kY/xTh5iDU/
         NSigWx0/4QF/uHjYPnwrueGPjp2rIQF9lsJ64/bHAr/nhdiOa/KJHfTrnxODXp4KZzUL
         EDyW8FR8LmqJh9qkEC0uAzm8CL8W6eHYeWBI6jmQ41/zmpY5Euo1X4vu2Rz6bRVkIsdo
         IYyRmpqSBT4YOeEQ2R0FTtNitxQnDXFfA024bu7hmgkq+xobOWWPalHfnlrgD7Z3m62c
         NLQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=SxLYNqZmYXkax+FujeNFxBGeB7S1+u36ncudD3rzrZk=;
        b=U0IC6hAArqWoo51WEWcU1yFL4p7H82AFljsR60zBSgrcyUfYs4MQmLmhSwDSOyhwpo
         lx9VqtvGNPV9r9CMnYUrt1cpHRIhsveF+Vc+H4bZyaJ9RahFb0JAIBYtzBS5pDyJYYCg
         OoVegnTU5ly/iiVQPPRcRo6qOFDyN2Y8kT0T9JqJUxTqJZnWWNI10TuB58yk9noZfFVH
         i6ykP7Ked5P1lYOIb/v/uXqxJiTEuoaXV3+O7C1jKdQB41ejm5w/+rYRAl/byqbKEv2Q
         wtsvBmdFi28Rdh9xL4/M6wYEfDGEQ1UoUHHVvybaHCmc5iHI2m50AqYO0R/fU4dKhpxc
         zG3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tToV5WHA;
       spf=pass (google.com: domain of 3k_wexwwkajqgya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3k_WEXwwKAJQGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SxLYNqZmYXkax+FujeNFxBGeB7S1+u36ncudD3rzrZk=;
        b=XWbqaa7D63l3eRlJeOxW5Jh0LwGIcmchmeDvzY4kVe+X18c1ItOGqT31SGIV3goAt2
         j5OLPPWfxAy+ymd9J8+qllHO7k1A91+TIJSsqhVYbDULdeNELwMzEidCC3gi6ZR8oSOL
         EysVXyv3ZfDr6+o9jyP8r8QPJlOpYfQA2b6dYVHDXAT8xZh0Da9sZ/5nySxw4dUINmtg
         bM5E+M84RRT2KQOpcxuEWUjg5Fv9XsGh5fspKK00k3qYQLlcSqrPkt9OEUSE66CavyLF
         2e7JAqV3fRE7z6UWHzNwuNSjiTlMWC0e/T0B/MtSJQgZDXY5bLUmqTmVUsPB1/FmW9ZW
         8mxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SxLYNqZmYXkax+FujeNFxBGeB7S1+u36ncudD3rzrZk=;
        b=dMof5hrfJTXTDfCpTIsn8cZXqH6iw/tfOlktYJhdGjCnNhmwvbsYRzMumA+dUF/y0F
         wNV1e+18dnCKDdpoZawW3h2/+/yytsQ7YyNVglzgZpdqI/r9emY+sXuTx+pJ1FVWFwdt
         6ErzFWJPPU92rXznSWya92/fw9LUfFHZzG7LonJph9PnUWkdhrx6xOKUcp5raj2BY+Un
         swhDrK73a+7VRPucS5YJYpb5CFMrt8GxSPjqaC5n3agis0Z7Svq6Sevh+vxB+0NJ8MIu
         UUfS3pxxTUAco1Y43KM18OYC/ZChycsM/0wb6i3vYIFZVbIYvlnx2EBTvQ7woVNekFhT
         igQg==
X-Gm-Message-State: AOAM5318geZvzlVQnp4qhpnsPUcad/Sozt0NyT6Uzq0M/wAYikutsk/g
	4F4eKVXhmyFJGqC8Gm6rtd0=
X-Google-Smtp-Source: ABdhPJwxy7btYR2kWuXf25VQRRB0QmlMGJnLJQ+BuBn8gWHJuW+IANKVgFxlB+hZs0omZrg6hFc2FQ==
X-Received: by 2002:a25:244c:: with SMTP id k73mr10775325ybk.96.1602549140141;
        Mon, 12 Oct 2020 17:32:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:511:: with SMTP id x17ls2394777ybs.11.gmail; Mon,
 12 Oct 2020 17:32:19 -0700 (PDT)
X-Received: by 2002:a25:b703:: with SMTP id t3mr7914488ybj.146.1602549139529;
        Mon, 12 Oct 2020 17:32:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549139; cv=none;
        d=google.com; s=arc-20160816;
        b=SuDOM4u/9w1+xUuIcN25n8sLeOOqEWTXsb0GhjlDmDzIqCSviSGiawEBO70E3J+cYb
         4xzVyLCPM5CfRbjCZmf4zm/YYMpGeUAND6ERx69+eMJSjAGHBQKpieagl4pNT7jYaE8b
         ELrqjACe0pYg6PWgwg6PnFmc++4GyUciVJZug/DmIpl0FFrl9RzHYaNQCXDWYb5Fk4Dd
         7TNudEsJGYFtSbDfAPTMCI01feiQobIPTCuSB90P+EIlKmoUXcOgkAon/0cLeQSWMaXo
         GVHg/ZUPsoxo2UMSkSAg+pV8a1R7//nRynq4sjSZvvpMyej6QErmxo6JQi24s0n7VeqE
         BgZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=DpKDWbKTWTks9tV0s5R4bAv6I99K4U3GWyHtOORPWq0=;
        b=c5qWUE3su7WM8h6Ipm8xeAOhQcOYiaxOZ7islRqcgiebMGPISd0IMeWY/+MjE9pxmU
         LZmUbvtndiaTUSRqb2a903hgM277HUQyc6l/24CxVVez7xeu+Z/94pFbc80+K0TVviYf
         K863yFBn/3pA4DVycvtWFZWu9nrQKBS6vzrZ450O2lk7Zsiz52MtndxcMw1m+Lo9xKCH
         F+/Cqkm7CadeYveLp2DKJ13Zr6kypVkRC8+w3+5u8w7oYqVrAv7mluwQznebX6IEwdg9
         bq3gb1X0KRfNYWzRqZj+dlqyqOevZVG6b9aw1+0acarp1WU4RFNfCY9GxbfIP6EFeG2c
         iTrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tToV5WHA;
       spf=pass (google.com: domain of 3k_wexwwkajqgya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3k_WEXwwKAJQGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id r67si328340ybc.0.2020.10.12.17.32.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3k_wexwwkajqgya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id v190so11406565qki.21
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:19 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:e1d1:: with SMTP id
 v17mr25826493qvl.15.1602549139059; Mon, 12 Oct 2020 17:32:19 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:45 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 07/25] treewide: remove DISABLE_LTO
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
 header.i=@google.com header.s=20161025 header.b=tToV5WHA;       spf=pass
 (google.com: domain of 3k_wexwwkajqgya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3k_WEXwwKAJQGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
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
index cd4294435fef..6db5b1f55b14 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-8-samitolvanen%40google.com.
