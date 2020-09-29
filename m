Return-Path: <clang-built-linux+bncBC2ORX645YPRBT6WZ35QKGQE2TLQ2TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D9A27DA7B
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:01 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id f8sf3970419iow.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416015; cv=pass;
        d=google.com; s=arc-20160816;
        b=wl9ahAcrDjdIIxeh8NbfyZhuw1Ni5hotwPxKsL4+LUNMFpt7WkG3TaJM8W3QgDhDLd
         +jugE6l+QyUw1sVgmwH6Ul66GgILuikV7PKfba34/g0Sx/0x+yzWa8WMD1Zm32CJS3au
         IHb5DRnuhmCIbG3rzQQvigVcEpfd2VWqfCsQfNxrv07oWiBHHeCOFL+Xxh49EuKWAlwN
         RzHteVRjt5sPkNxNVGK07vxiwF27+8IyjrNSqjOuGFvK0GvtmiJ3fvHMcwdzZDc5MQh1
         j8k3s/ZmIag+ENlNTs6ftVbCCW2jT73W4oTt4TsZfBhzn+Yp62+9gCvEah9gWEva1hZM
         xFXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=dRKTYPT1eMnAUQ3GcbsxIV3VSKLT/QpHWRmU7j6BQi8=;
        b=Kas5MFka8NXdxPhOWoyB2+X0fVIUC0FnQx4iUf3e6LNnmFlWhHEcVYgdSpTSFg5JT0
         iCdIZinQSldMHZYDRqsing0bLxtxUxSXh7Ucl/CRLAy5iHpvs3BNsrDNS2/4k+76tF54
         3+Xn3msF/FaZRHBY+eRaCN7MMgaIZpZdbzgNMlEIwx4CBw+9sawUmp+RCwaMZdEi0gsr
         7hd/u33m5knC0KnJxvSSOg0S94qfOSHlvI8RIKUNLw8bfIZ93UeH2ZE3ZAUpms8tQ6bx
         k9BkZg0tMKLxkzAepE0pXuezwwB8BNSNfEjtjMkQmfxdoPycEtnVWmgweVpKEz6+utZx
         pLtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jb5rUAmu;
       spf=pass (google.com: domain of 3tqtzxwwkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3TqtzXwwKAHUlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dRKTYPT1eMnAUQ3GcbsxIV3VSKLT/QpHWRmU7j6BQi8=;
        b=ivsm3ec0L38egvLNLZ6+I2fqo/osh0oh/SN/iHYMNc0lrOiMlW69NvHxQnW5Zc0jNV
         oC1T16OXSZqnXaRTgXnCOz48z/jB/ZML7HG8FNrFgdtEi01vdsfFPnvWLKg6wxseem2J
         1fym55WrXp8P13r9t4hT35rey3w1NGxXWMA9chdYtltkUH3cgUg3zp4ZETM+nmSQM+5e
         ztUQk9phzZcEUup8ILMbqKROzE76mq1f3u5CAABz8FdUlkLbGpeFuXMqpvQyXqQs6TBV
         srukd2fCD+0JqcdRkeWYhYVV/jg0GO5XyUc8OiAr0misrzhGOPR5RK8SKKjB4qlhj6DT
         o/wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dRKTYPT1eMnAUQ3GcbsxIV3VSKLT/QpHWRmU7j6BQi8=;
        b=bp4nHApLfvCdSztCrmTlRU/uL1Z5eSik6zljUYGERIFG1GTIW8hvuZGzqxjEN3n9L9
         XyDARz3HsFIiJj+3XP3EqBt5GEq0+wyRO+lSW62eKt2O7V6sIFQ2OpVXAqIh+0HIsmhq
         d+p/KWuSTwpuJEg/pvfpEfH0b8IDgoiNMAifZR4gG93PAJARfdu7EOVr63sg5RDCxYsG
         1wyRXiDvGJkDa3V8QcaLNIvPwDAhpywGopUiNcVfnFHtOmFhhHvu3MU5ywjLZ7QqHuAQ
         y8THsVNbp1eMELfdZEWBfsyo1Mi3qTowMOPZvS3iOOyRQeXU/YWlhxBkPzMn3g28pW9Y
         88sg==
X-Gm-Message-State: AOAM531Pnx/Xzk08bVwIg7Mi3+0VeCcIJmH2OFrK8FRIOyR0c4T7tNAM
	OcHwVW/NjK/DETy/2VNncEA=
X-Google-Smtp-Source: ABdhPJxaA6Mc4it2gAG/umNtx162NmISnlkHRppcZtPfQ39AKi+6Xag0jHyqwYZtkYp1it4CEXyv/g==
X-Received: by 2002:a05:6602:2f87:: with SMTP id u7mr4222614iow.30.1601416015207;
        Tue, 29 Sep 2020 14:46:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5b47:: with SMTP id p68ls55083ilb.5.gmail; Tue, 29 Sep
 2020 14:46:54 -0700 (PDT)
X-Received: by 2002:a92:452:: with SMTP id 79mr5121811ile.233.1601416014837;
        Tue, 29 Sep 2020 14:46:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416014; cv=none;
        d=google.com; s=arc-20160816;
        b=De0fUi7JKllOJW7s013utW0nP4T4rresHbGtqGhz+m1yXmPtLp7YHmweBCYkVDoeeQ
         R00i0GsppERIvc/i/gQgzzZDOfDxb7imMgrw8ljDUuGW7Hqh18OK5GLplxVAM12zbGVj
         N7JKtB69s8ypdvGaRV9A1yCjBAHyWC/7RkzxsXPxMegq66q+yb7eGlk3/CVhQ2J9l3kx
         l2tJOjwizZviBrAZ9TSn1whu8bmk7c8fDr1B/9RrEu7HVwjdTJ1IshJol54wfYU84l1Z
         tDZhWJXlUARdr1WOG1nl2p0nj5jZVB88UJblrCyp1Iq+S1TlJSRVminr7skNx0vg9tt/
         MO3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=EVFyDdMBT7UIjCTs1R+jFYtxZ12heAHoZCz5KJatfNk=;
        b=Oo0VTN0MhdQofxAUbN0/3btzAmAMNi/qRjF2guXaIZMr3+EOgqkNFyByFavWM5e2WG
         0JNOPlGWR3hEjGzdvLeaVC7AjPFWoe5ncdguA3owcBYx5VtVvAJkXoRxhBLzjPK8DZVc
         rBCQaTQkbrwtZ4FsDfZZMT8rYKvWy6ljzrrmKG8f/PXsTewemY9NB7ychw+YyPTbfGj+
         XN43PAQaPo/h5mV3dZKE+7bVgOCAtI5XBUc8exCUNNFX860jNpBmiw/a3locLV+/05no
         HiRbFU5k/ux60yM75WLB39Oin+BR3zMDQcG3XxHHUM3zRuc5CZVlSwwj9k9ZLRyczM2q
         ZtUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jb5rUAmu;
       spf=pass (google.com: domain of 3tqtzxwwkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3TqtzXwwKAHUlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id c10si404209iow.3.2020.09.29.14.46.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:46:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3tqtzxwwkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id o28so3652289qkm.23
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:46:54 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:b202:: with SMTP id
 x2mr6465789qvd.49.1601416014258; Tue, 29 Sep 2020 14:46:54 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:12 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 10/29] treewide: remove DISABLE_LTO
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
 header.i=@google.com header.s=20161025 header.b=jb5rUAmu;       spf=pass
 (google.com: domain of 3tqtzxwwkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3TqtzXwwKAHUlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
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
index 9a20016d4900..347254f07dab 100644
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
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-11-samitolvanen%40google.com.
