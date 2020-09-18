Return-Path: <clang-built-linux+bncBC2ORX645YPRBR5KST5QKGQEFYAEWRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 24579270631
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:05 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id s4sf4115196pgk.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460104; cv=pass;
        d=google.com; s=arc-20160816;
        b=IEwckZKTNMuVgXEfhLlrxkYPJWUoQjM6+PORnrsQAnxfrhZ8zaiTdveGVxtok7mztK
         No20ydxDkihqp+FD1vwL8qgFSsyFCT0YxV4LGCmGzlY6yW7QCrRkDh2dlPG1K66b10zp
         JLiz2vqp4531BgO55rCBAbRfDS6p9lT2nfi6PAHewUk4oJPIvlGkzbB3IKKx1nphaGH/
         Dr9vPL85YNkPEC9ucsZcOa5POcgh895FHXO0i4Ce8PU0rAeWqECkC+BgkbUIamDkzjZN
         DZuW+QJ3MZm5c2MtH3paX/wqg6jDyGMS58XR31CTvGq0RWa946mzTHAEvReF5XC3VOhB
         qoLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=6Zz043BIKNYwVluSVFxhIAm+Rm+oWtSeoDW6sEq8aww=;
        b=YEG0KTqCaEJa5ON7QmRTOzwspHPvXgc40waxSjDGIeosRyeBMs5wwAFv/73gaDHEjY
         ZwtY+u6I1HalltTsk5jwR1hJ9ZwuUgRBQzvhtpevvGwXViF00AViLJ0pwI9SOCEbw+sy
         P4icp5P8C1+tUEIranM2yG9sFV8dtptTq+F927Vjm9BEZqfh7NArxnfm+tCw1pnZ7HKX
         ucioJC+cwzKZShOIX7oADNTYOfptZeAOt7EbBBo3HxRM6RPfh7h+eS+2OtqN0Hyh+bOs
         G8bW8INh2DtUbCk8KIjQRVl12XZQvU62tPgdRkd8tg3nGvbgPM4IKXDLnY/NkLPTYNWB
         DH0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QatnRemB;
       spf=pass (google.com: domain of 3rhvlxwwkaaczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3RhVlXwwKAAczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6Zz043BIKNYwVluSVFxhIAm+Rm+oWtSeoDW6sEq8aww=;
        b=UdYevKz4wQ6mS29PQ9HGMD9bUwfvuIqp0KFUBx8s3dlp8GaoILJQ2GaOeXK9FrzTqh
         v4Kdg7AJ0u1ETck9088M/zF4QzvFTNH32XpwWrClFo2q5j/cQkpmKPlsDpXxtDxFcgj2
         QK9flJhx72iGxNhSCpyo+u1AYe+dkIMjvvIO2xHyrm6kiGui8xaPEVd9woiLy154WpQX
         a3Ugp2Mh7vM500M7aq2dQ3Kx9rLohaXnUPwT+cl17RYx7RHx7WcVQ3F0foObOFGeUuCY
         G4E+Q8DMOGUWcvwZbPB6HKpKiI+MX1SGAY2VgcVReCKCMikA1WZUn4sTxzxDagfoEswR
         RKRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Zz043BIKNYwVluSVFxhIAm+Rm+oWtSeoDW6sEq8aww=;
        b=B/vm32Qd7Qyau9HPYb6HaDUhN8A6agV6p+ZfWnzxw3Q3CYrv5nUHcLLPJRUENnHWby
         fNC7Fm8FQPvwuY/brzhwMGP2NgtR4FgXuI4jRCqR3SkWgj93XL82m5/gERI8hFH2amJS
         o7AVA+ZacgI9c/VbzG9TBie2pCK0Fsj/mJyGkkZSLVR+UfshcKVWD/AIGBTQiif+HI2+
         mw+EQ+Y2HLEoxaEhp1pHfYPs5C38VhabtlOmclcbOEXWW5N8b0V5y08OVr9DTAekoTll
         RQ7T0V/WLpA9nJHQ76zS0JY6YC3On8m9XQU+4+GM1AGejuXg5kOaKicBsM/THEr8N6PR
         C5pg==
X-Gm-Message-State: AOAM533TMHJOx+/TtrFwyVyrCnsIkuFpJuvyuwr9E2FiSDCBrCNTGfUJ
	ZX3RfSBz+KH1LIdSihoTFqg=
X-Google-Smtp-Source: ABdhPJyHf03wZyK2b57Wh9PkQwwFCyt8eQeA0jAxGYbQIgQv5sLq0ug2qV35tQ0h8Qe8nwYk9m4UNA==
X-Received: by 2002:a63:4746:: with SMTP id w6mr28685285pgk.412.1600460103885;
        Fri, 18 Sep 2020 13:15:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e303:: with SMTP id x3ls2969734pjy.2.gmail; Fri, 18
 Sep 2020 13:15:03 -0700 (PDT)
X-Received: by 2002:a17:90a:6701:: with SMTP id n1mr15100734pjj.87.1600460103240;
        Fri, 18 Sep 2020 13:15:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460103; cv=none;
        d=google.com; s=arc-20160816;
        b=tqO4QjoyHKTNyxq/IejQWvZ3qFd6etIwxcSnUfilCWJMl4ENywXjJDnmCRfuQbI111
         POu6eOszDckEtfS16kQOJg0uk0igbYdc4z1bU6nQskkB5LnGZZuhXgq5eWtAP8rf5t0x
         91JfdeZLiKpQGs55GhgbIknYZ4f2tJyAmz2GD4F6nUi4DpMGjMDwo1TaxEUtWQz+afgO
         qZ0abpapF0O5UWQQIfBUQqY55ClEQNynY+aDqOBE4/BmiOIOHiHuS8cUZbw6tWb2hEpQ
         Xzy9rPRAhKerX+sH2Ftdsw1MQCvxPJdI0QNlizmkTHWy7mLBIrNdsR6O5+mLLA0vmrKt
         qvpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=8Z9k7hZvEPmq++QcMDZiZsWcl46Vj1BocbQ0cOU/FNM=;
        b=ekLjUn+70bnJTSo89L4cwbQROZ0d/a+d93GClhDd1kXV0dUBroauPhE6W0bT0sJMOP
         /OOKJ83Yscr4Iqgc5dgiG4Yjpj7QYIVjEydWrmeFnUoGyo0vgLr29bRkORDlV+/I4Guh
         uC69xK/0NNBsZhj2vRnS38FvPUAxcD3XdStUex6h/k6Ogs1cxBCwkW5ALP2p6zmzHqlY
         4Zxdby0nwW2JZoRfvUWZ9fcWVyyX5PAyQ4pGGIm4/IXMClCWyfJwWxFKp3LrlyL52Lbb
         K8e4hWOvY9cB5tcF6hb1sPH71mh9DHzTn63/FXF0ZwiTJWDP0bJocdjYowONn25dShT+
         fqwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QatnRemB;
       spf=pass (google.com: domain of 3rhvlxwwkaaczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3RhVlXwwKAAczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id 129si274232pgf.2.2020.09.18.13.15.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rhvlxwwkaaczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id v14so4599276qvq.10
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:03 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:e152:: with SMTP id
 c18mr18505590qvl.41.1600460102349; Fri, 18 Sep 2020 13:15:02 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:16 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 10/30] treewide: remove DISABLE_LTO
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
 header.i=@google.com header.s=20161025 header.b=QatnRemB;       spf=pass
 (google.com: domain of 3rhvlxwwkaaczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3RhVlXwwKAAczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
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
index 6ecf30c70ced..ed2b8ce9d4c2 100644
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
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-11-samitolvanen%40google.com.
