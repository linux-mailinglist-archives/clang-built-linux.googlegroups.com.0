Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBP5Q6CCAMGQEGQOQTVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB4C37D195
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 20:02:41 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id k12-20020a17090aaa0cb029015cf15dc26dsf189838pjq.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:02:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620842560; cv=pass;
        d=google.com; s=arc-20160816;
        b=BIyuy/kI4pP0JzfLQyXwv5zQmZG1NYzEbNTxi1KHO4zQr7gWTc50hvve+WkvUHA/sH
         4OBt157Xvfd005MrtTCgEOt4IIqHhD+JCokwzDrqKZTq4wGkTgvzxJbLvjPY5wuPgXiU
         cx3Jx+PXJDA+cioch2XP/rU2B/xPAiWc36K/8emQZB8+vDx1HQp/XRPPzqG1dPU4z9Jn
         Mg04qQ7yfF+Z+Qg9uTuawCF/P/CUkJSJa690rYOulUMi2JQ4SOv8YnVgzel+7oSvX8mG
         xNnq8ztabsXp5QumpXKN5XbAL+E2DcZNcVEydIZj6IoyPJ2OGhX2f06voas9ohrde8NO
         QBXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ykvkr7k4kspL6Cck1TrKhnvcBViHDUjUb61G9vwEJEo=;
        b=NyGAzFwPYKQ6UwsEzUIRHWw2HPfH4W2RI3CzgWeBVBeJ6VtDUgWeVJqRLD51dqYPSK
         jm6iXprtwE9yDhsCbpEn9SoilExLyTAIQ7D0FEnre98Sto2C8D0Xn2ebUXtIx/2En0Ox
         bg15IUsXFIccp13ET18BeN6hlawfm/9NiNrfYMzUqo7llxf8QUe3uhkogwVQbCHybHxP
         dRF3JWFtVkp/VKB+mA9H4t94rrHF2A+2obpmKIuLBscYaYt+oe6aAQL4VtabATODdkjZ
         4+fXZbmxg2oXRIwQgOeiWN40OKHWIsVlrLtyp+IKCE0uGA6Pk+0sxUGYj8IXiuJsbORQ
         7v2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Rm9hXtjB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ykvkr7k4kspL6Cck1TrKhnvcBViHDUjUb61G9vwEJEo=;
        b=lMaEigDdSdnNCvDcVDzufiTOvn00/wxViWaS0pk5oGx5BhHR8wYx//Abuwd2qJwPU3
         16zgAgylzaiKLaKurFa884098ppxnW887p1v/gSN3OQU0ElChrj5bzoisW9ckTsmusw0
         b1Nn7ChzcGSlnBK3WWC97QdIkOPxcdO3F8hw8qw7nhiuaacaqhygijSlZamoy4e7cplc
         JOxt67N+pQr6yD2a9vnxiXHxcFVnD56lKRGr3maDeiyIvBeMLcg1r/okn4RMa1MmWf/D
         Mk2PH6mRpAEoCRn93M1lDXC2yg2beAspKMl5Ts+g5eN1A5cZVAHwtvs3eZIibxUzyBcR
         HymA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ykvkr7k4kspL6Cck1TrKhnvcBViHDUjUb61G9vwEJEo=;
        b=g7VdwSmU8iUsTdMevL7mPfngT80uTEtaMuT1tclJo6z89t6fRY6WFpCGfJCEW65QGU
         Mfm3TOIY2oz3HcoZoc3fA2djg2n6j/0+EFsSxDAPS+5rHPIt4Hh8GoI1HSRJtCPtr5aE
         Anlp3FCfX78649Q2WHlTBDT8XaiBZ9QQsXf/PqC6xDbFl1htMnFzrQJVhMAI1/lMvJ3z
         l9cEguv/0MMtflbaVfki0H2gcG54e4bSfEA76g7EYsB3y7BUbx0Gxrb05RVZsINmcIaO
         bN8MTtIIWbXQz3WthcWCAYaM8ck6ZWhuOlDPNAKxfE6YFjOtLa61045wXzkUnvne8aoM
         pMzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531blFyDmJFLlpHH1ELiYWtCxq41a7IPDyLjKlLzVsuQk/g40Tfy
	uDDwClgxCJd40wzowbdXTb0=
X-Google-Smtp-Source: ABdhPJwWjN9z4lDPnIK1gfZpiZ0RMqKW8umiSwPNJt5W7GMDgoM1+/zuwX8p3eGGeZ6jJ8m3mDccWQ==
X-Received: by 2002:a63:221d:: with SMTP id i29mr21135346pgi.165.1620842559881;
        Wed, 12 May 2021 11:02:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ba08:: with SMTP id s8ls1858953pjr.1.gmail; Wed, 12
 May 2021 11:02:39 -0700 (PDT)
X-Received: by 2002:a17:90a:19d2:: with SMTP id 18mr41106720pjj.205.1620842559324;
        Wed, 12 May 2021 11:02:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620842559; cv=none;
        d=google.com; s=arc-20160816;
        b=N1zVfsJQr6Xbouye3kZHKGz9N0+ii6bWS/Xr/nrApGBK8lV7EZsVm8aN+hKRJQ0w4d
         1cJ7W6jKTB0jE15rnbHYGLDG1jRy79ZTyRC4QwsnmT0iHBKzhZ946ooCOy0jvwUZ6aXP
         Ddb62D9Ao8AhrdK9+LHWU7wTllZLhhk0J5vDS2DIlOJEW1TcyrGfq3RpBl/70M+Z3ytW
         IYX7244NgvKJB97nrvD2u7d9h7iHVC2PmVUSqny7W3gH/ANnDRoHCojjrlfsEaXH7sVf
         MiApldWR2B6Jd0vE52g2EhjaHB37rl+0NX9zqPGh0ccJaxc3ig51nwnCkxGr6KvOs8s0
         mbiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CJjCqJhPewRkbCDl1/e5HonHSNr4JJ3mY+74nheRsJk=;
        b=mb3cJpyM2z+O9ZkTVHzJRdgdMwwiDJ5+vI+lyWBr+YxTN0g6oiihshi0T80Args87B
         /ap182gGtDfW4O9OVaKJ7HTXrowuklf3zF256vrN00g2065QzPgX8lJMn26u4ic+tJ5W
         ctBqSxURUu3Nv2jq/X0lqrwQ5BbUO2vGmHF3O90WqLnbLCeMCRqsbiQMBKJIgkw1gsJA
         6ZhUJ7+J4hivLYcZQXl9NkASjRmi8C5fFOKBDJ8APKHrbVw7pA3XtU/3IhEDDOAnxkyM
         N0FmtgmZWZ790aa3Dlzk39b3Ld6UmSTc037P0xHRkqc/8qqavxE2apu2MDYSqy24F8JU
         P0kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Rm9hXtjB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 131si72509pfa.2.2021.05.12.11.02.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 11:02:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D9F136142D;
	Wed, 12 May 2021 18:02:37 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.11 19/35] riscv: Workaround mcount name prior to clang-13
Date: Wed, 12 May 2021 14:01:49 -0400
Message-Id: <20210512180206.664536-19-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210512180206.664536-1-sashal@kernel.org>
References: <20210512180206.664536-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Rm9hXtjB;       spf=pass
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
index 845002cc2e57..04dad3380041 100644
--- a/arch/riscv/include/asm/ftrace.h
+++ b/arch/riscv/include/asm/ftrace.h
@@ -13,9 +13,19 @@
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
@@ -36,7 +46,7 @@ struct dyn_arch_ftrace {
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
index a36df04cfa09..7b83a1aaec98 100755
--- a/scripts/recordmcount.pl
+++ b/scripts/recordmcount.pl
@@ -392,7 +392,7 @@ if ($arch eq "x86_64") {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210512180206.664536-19-sashal%40kernel.org.
