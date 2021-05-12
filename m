Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBMFR6CCAMGQEZPJRK6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 5471B37D1C3
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 20:04:34 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id a142-20020a627f940000b02902ae03d812e7sf9625847pfd.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:04:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620842673; cv=pass;
        d=google.com; s=arc-20160816;
        b=y4pXuLoMNMZxLeuqkZ/JurKCb1He7d7pPwAjfr7FmSsnlrUSl9MSdNCzowVdYVJPSS
         TUdO3iq50wq9bLSO6fk8h/XS/HrkMAe7p3hyIkb82m4XpRVucuJ2hJSaPNunvkveNDqS
         JzOv2jO7hggWy6QCnDE0QpGlGk+Xg6LTVMEc7rjXUe/WwrRx5E+ZvEXWBu0dkwfkHs+V
         tRwNGo7VDU5FhNvAwuMtgZhRpWIYmz+GD1SyYBxgiU3HXdHOq4JRDxIVBRO+AuZz5sEl
         MHQckE4f6DkEUEgEP1jzt+banBsU84cSzfBQjqh80oM/gdk/RmPUD5mJTgoFs0RuN3/9
         bEOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qs6+P4R2J7bUZY8xhhZceh/PSZMkrSYEJDz9QuxxCZ8=;
        b=zTlGUEoIk0Ld4DqM+mT49LdUjxVPN/q9D3fIIG9qShPtUiAdQ9zmWebvGW5Mo1zXAg
         n8agsKTI9l4Tijb0HSYh2dtbx6KeHl+SwhxY7LdUc/u/JsILe8KhHL2UceOuNsAq21sN
         nOMy2udtZRjNIWuklg9TinPs8I/9lmayztjN2KhMILdmwnaZxoJqWx9A0BVKJQJgisqY
         n/XChlAd/eHO9hH5IJgaPOQSszJRHNHHjR2KYOWe1SzwIveLOqs68MVKJjqRL6fRMDc2
         NLkRcjkCkJGuxajHxkpbjcG82TOxkQznLdCoBQzAvAPkIhHOEjPE+/RCSiJGIXq8l8ew
         ICWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=toCorwAK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qs6+P4R2J7bUZY8xhhZceh/PSZMkrSYEJDz9QuxxCZ8=;
        b=DeCxerMz7u8p13ijnQI4+HBBJXRhSs6tKfPVfU21JHewLKGV0gz1bKtXlud6rKT4Lu
         bkMS55TDMBea13DWkiM23pg3g3S0y/DbNW2UkAoAQ3qElvuWGNpmEyvJhlys3Q+OwkRH
         48iWIeoW3/AcTA2y/omXrLHzXRGV/yKJdtCCZ5PehVUw56sRwFQxzGRn/fefTwg4ZDDl
         SjNh2cc6ZfWeRKaHlZ7lbnrYd6EeWDZ291LtSdDoTNfsLtjpBIodw6UexVfA/rin2jiC
         AY5oY47dff/Z6trw6A2WKgDUDfAfBuBzOGdHGKCgRyDYD0vdJ7P9hxBcbVMyRd2AEYlA
         gBiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qs6+P4R2J7bUZY8xhhZceh/PSZMkrSYEJDz9QuxxCZ8=;
        b=EJb/YFSm4Jrs5EtXIFCRxjww9pgVhEEiKka6B4KyzlIl214tpTzUYgp4R1CmR8LwBq
         GWKAHqRqjPgA8ttbGTMgRY8+cz1MhH0kFwSiT7U18812AIz8ypqiS+bUIg9CV2QVXNue
         nwK+dyYc7hIy5TZ2P80p7mMx1INSbMz1FlL7Rs+YCXnEjJVuj1WU1BNVzlzExmXG5kBl
         AMB+6fu4Q0Ng+lsZcW7OkKKs9cv/pU/Q/xnS5dcH37yZjBHOOBUNlesV8wSGU84lKEk0
         ilDdWjRPNf/6b0Yy0rrw3z9RUDDC8/UGkmh8oR9uAi4lsKKJhvEl78kERlaM05lPfNC0
         M8Fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Om7yhp1zyv85gQpUdB9BvKRJ2W3oROlSheClxG0w9/7RrCXF1
	5KTMdA3Pfqzd7ECx+AC3EHw=
X-Google-Smtp-Source: ABdhPJx8oOpbmC30BVTAnGreSMfl0jQLv71FgR2PpMPwKnTl5HNq8Yyw2S/WvwwmLGoxxSubjckshQ==
X-Received: by 2002:aa7:8501:0:b029:2cf:c0b8:4b88 with SMTP id v1-20020aa785010000b02902cfc0b84b88mr2232821pfn.61.1620842673028;
        Wed, 12 May 2021 11:04:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a893:: with SMTP id h19ls619022pjq.0.gmail; Wed, 12
 May 2021 11:04:32 -0700 (PDT)
X-Received: by 2002:a17:902:8bcb:b029:ef:96ea:f53 with SMTP id r11-20020a1709028bcbb02900ef96ea0f53mr63172plo.54.1620842672310;
        Wed, 12 May 2021 11:04:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620842672; cv=none;
        d=google.com; s=arc-20160816;
        b=QoD2o7/JsVT31pUt/zf8+qW3ovQeIvmdiexUyRbf2xuBDhozaXyOoz0KanaHkc12hl
         0qMx8cdl/1pTEWhyxhWRjrSfGGs0Rwma5NYcNv9/X9MIe75J6aq5mauYGChHU/2AfUeK
         7hN3V5jKbgxoECJmwucUhcS+qguQN74jwpVo9yEbh1b5AngccM9Ug1l7qh2tS/8XLXlZ
         TdyrNec5sPm5mjHxOaeRNHATkAFfLKuTJLE2YbG6lz5Xtd/SAHl2suL3lxbT+Nbg2d5M
         82t8eASuHOXbvE2iO+k8/J8yzkqwcQPDBJtLxWHYwKLVqq6VT/CQsO5Skd/hn9itXD3r
         4tzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=c3Rz12KFrPD7fATdVI1uem7SlWpad+uHlidYJCvoTME=;
        b=eQFt0DGrYv8Kl0EUGIF4z/ebNUONJSTcUXTHiSxJs9enHf+jMG8IoXnK/FEZ+40it7
         usFO7BSfhCOGC3H86n0Qw9zeS8xDE/uaTmeNZiLVDYNh3juDpBdQGY0D/dZGFQAJolkC
         sptFY6jDhkyRNquL90fr7xL5QH/e7O4LSqQy/2LIFHbPmmjCKvi6AoTUkvSwIG+2f0Ni
         kGohjh1THg9Y4hSCrZliUbEjpMLkJOu45QSfAETRjE8btin7VuymL9WAa90w+gPwG4wX
         o48TtcJDLDFKX9u+IRFVwtyZ4ydMSaNeNOyrMqBbDJHQO+ceuuQBX4JIBsiCw96W95D1
         Vcpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=toCorwAK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id hk5si491197pjb.1.2021.05.12.11.04.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 11:04:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D38C461465;
	Wed, 12 May 2021 18:04:30 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 13/23] riscv: Workaround mcount name prior to clang-13
Date: Wed, 12 May 2021 14:03:57 -0400
Message-Id: <20210512180408.665338-13-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210512180408.665338-1-sashal@kernel.org>
References: <20210512180408.665338-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=toCorwAK;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Chancellor <nathan@kernel.org>

[ Upstream commit 7ce04771503074a7de7f539cc43f5e1b385cb99b ]

Prior to clang 13.0.0, the RISC-V name for the mcount symbol was
"mcount", which differs from the GCC version of "_mcount", which results
in the following errors:

riscv64-linux-gnu-ld: init/main.o: in function `__traceiter_initcall_level':
main.c:(.text+0xe): undefined reference to `mcount'
riscv64-linux-gnu-ld: init/main.o: in function `__traceiter_initcall_start':
main.c:(.text+0x4e): undefined reference to `mcount'
riscv64-linux-gnu-ld: init/main.o: in function `__traceiter_initcall_finish':
main.c:(.text+0x92): undefined reference to `mcount'
riscv64-linux-gnu-ld: init/main.o: in function `.LBB32_28':
main.c:(.text+0x30c): undefined reference to `mcount'
riscv64-linux-gnu-ld: init/main.o: in function `free_initmem':
main.c:(.text+0x54c): undefined reference to `mcount'

This has been corrected in https://reviews.llvm.org/D98881 but the
minimum supported clang version is 10.0.1. To avoid build errors and to
gain a working function tracer, adjust the name of the mcount symbol for
older versions of clang in mount.S and recordmcount.pl.

Link: https://github.com/ClangBuiltLinux/linux/issues/1331
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/include/asm/ftrace.h | 14 ++++++++++++--
 arch/riscv/kernel/mcount.S      | 10 +++++-----
 scripts/recordmcount.pl         |  2 +-
 3 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/include/asm/ftrace.h b/arch/riscv/include/asm/ftrace.h
index 02fbc175142e..693c3839a7df 100644
--- a/arch/riscv/include/asm/ftrace.h
+++ b/arch/riscv/include/asm/ftrace.h
@@ -10,9 +10,19 @@
 #endif
 #define HAVE_FUNCTION_GRAPH_RET_ADDR_PTR
 
+/*
+ * Clang prior to 13 had "mcount" instead of "_mcount":
+ * https://reviews.llvm.org/D98881
+ */
+#if defined(CONFIG_CC_IS_GCC) || CONFIG_CLANG_VERSION >= 130000
+#define MCOUNT_NAME _mcount
+#else
+#define MCOUNT_NAME mcount
+#endif
+
 #define ARCH_SUPPORTS_FTRACE_OPS 1
 #ifndef __ASSEMBLY__
-void _mcount(void);
+void MCOUNT_NAME(void);
 static inline unsigned long ftrace_call_adjust(unsigned long addr)
 {
 	return addr;
@@ -33,7 +43,7 @@ struct dyn_arch_ftrace {
  * both auipc and jalr at the same time.
  */
 
-#define MCOUNT_ADDR		((unsigned long)_mcount)
+#define MCOUNT_ADDR		((unsigned long)MCOUNT_NAME)
 #define JALR_SIGN_MASK		(0x00000800)
 #define JALR_OFFSET_MASK	(0x00000fff)
 #define AUIPC_OFFSET_MASK	(0xfffff000)
diff --git a/arch/riscv/kernel/mcount.S b/arch/riscv/kernel/mcount.S
index 8a5593ff9ff3..6d462681c9c0 100644
--- a/arch/riscv/kernel/mcount.S
+++ b/arch/riscv/kernel/mcount.S
@@ -47,8 +47,8 @@
 
 ENTRY(ftrace_stub)
 #ifdef CONFIG_DYNAMIC_FTRACE
-       .global _mcount
-       .set    _mcount, ftrace_stub
+       .global MCOUNT_NAME
+       .set    MCOUNT_NAME, ftrace_stub
 #endif
 	ret
 ENDPROC(ftrace_stub)
@@ -78,7 +78,7 @@ ENDPROC(return_to_handler)
 #endif
 
 #ifndef CONFIG_DYNAMIC_FTRACE
-ENTRY(_mcount)
+ENTRY(MCOUNT_NAME)
 	la	t4, ftrace_stub
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 	la	t0, ftrace_graph_return
@@ -124,6 +124,6 @@ do_trace:
 	jalr	t5
 	RESTORE_ABI_STATE
 	ret
-ENDPROC(_mcount)
+ENDPROC(MCOUNT_NAME)
 #endif
-EXPORT_SYMBOL(_mcount)
+EXPORT_SYMBOL(MCOUNT_NAME)
diff --git a/scripts/recordmcount.pl b/scripts/recordmcount.pl
index 857d5b70b1a9..4f84657f55c2 100755
--- a/scripts/recordmcount.pl
+++ b/scripts/recordmcount.pl
@@ -395,7 +395,7 @@ if ($arch eq "x86_64") {
     $mcount_regex = "^\\s*([0-9a-fA-F]+):.*\\s_mcount\$";
 } elsif ($arch eq "riscv") {
     $function_regex = "^([0-9a-fA-F]+)\\s+<([^.0-9][0-9a-zA-Z_\\.]+)>:";
-    $mcount_regex = "^\\s*([0-9a-fA-F]+):\\sR_RISCV_CALL(_PLT)?\\s_mcount\$";
+    $mcount_regex = "^\\s*([0-9a-fA-F]+):\\sR_RISCV_CALL(_PLT)?\\s_?mcount\$";
     $type = ".quad";
     $alignment = 2;
 } elsif ($arch eq "nds32") {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210512180408.665338-13-sashal%40kernel.org.
