Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBBFQ6CCAMGQEERIFDCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F13A37D18B
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 20:01:41 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id l9-20020a5b0b890000b02904f7fb53ca12sf29127841ybq.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:01:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620842500; cv=pass;
        d=google.com; s=arc-20160816;
        b=k9hADhyENL3SdfUVZfCjNhIGsZ2EeH/q8ofIZobYFiPk6RwI0dqhObsoft+rlMSqbA
         DOFBlsUtPtFcBNQdu7KCjJKr511FKD4eHzK+XqeU900IozrtyE+CnP33raGz6qmTnX1k
         zTGAGZNxVvAMCRb1/TNZizWjvChHyEqAn34gbAYBpl51IUQ4ybBy1h06/wyGjCvYDR8Z
         CubCmncH2Tcxfu4VztHfzOQl1aBDLwECIgN+AFp1zhct+q0wE0oT8ltw89FcdI7OKmFL
         DqbOKFzum5zutLzkxTyBiVCXuDi/grOz8WjmndbRRkB32I1DNx+pjWA1FNtG5DqHrviu
         Krdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=awYr2fT7wxhiSaWBn14Oq0W6XVMK+Dw60fqMTE7nidA=;
        b=LVd9+NdXelauCShRgyeDuICrSP3G2vNgqmL/FQn9P7akYfRYq1pM1ZFGtt2K5l6u8H
         aGmnXSBDJ+Q5EiYw9jbQ+HU5Q8K9hMFmiKiU540DpdUZ0VIdt4xZKD4ZJqBHXM0HUQSC
         1zWAoz8tBnHCvOiROqfIs+LSvHlA6tm0buZ+TVfYPcnxJi+/GJ0lAIBXMtJdeC54Hw+U
         DfEc0W0BhZGYxlz85WoTu8iiOksQhLbuXx2TgNnD5JqVgp7E3BwL9vH0mF4WMTwznljE
         AL9VGQWvQeV8C91rdD3r8q0Cj57IQL19cuG6mV7JZbflyJstCp5bqLkbVnmmctAlIXfE
         4NZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MkTVOvon;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=awYr2fT7wxhiSaWBn14Oq0W6XVMK+Dw60fqMTE7nidA=;
        b=f8xLT1X7QwkCsELH27u2ouAWivalvu/dPcLzSxU+cDMfg41a4tJMNO2hT7S+Kwgs7y
         J1QpBQTHexmxM4gmArQ/Gv5nlNSGjT5Pa1cQq+SG4b7nORiHYvaHp4y9rcztYY4nsWMU
         GbIFGUY8ZsCTMUWW0WpVzy/ag0ojYWP35pZcqxyYbUcOTLkcW3qBSNq/YiNAPwyeJoTC
         rrHUAIONB7wp8tKWQZECsqHzb2FEmQNT7Cgrbo3VzH9kWOtA0hS9b9sk4hLNYZXC/Sau
         ND6f0960UTfhvQYAoHaRat6EHFDMKQyN2dAKlBv5NzmizJGUcxGcTNdLJu6eJykSS6m0
         eLxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=awYr2fT7wxhiSaWBn14Oq0W6XVMK+Dw60fqMTE7nidA=;
        b=MWdfmMa97v8x0JHe9ciVEKJXYYApVB0td4NPrcwkBw/G4mTDg26aovwO8a3Okvu6hv
         GMUNbQwC/4pMVJxdw99VZd20ZEPzy7lVrptuWYlmVky3EvoEKjrp8K/kHnUgH4l/qeV5
         xnMywFyFbeWF44X3Id28JGTtaYfG/FRLGQ06fuFEAHdQHS6A1RUf/WPCRgv1NAOIzdXm
         jqYK21pK/Bo97AEOUvBtsMYXKMla50gcnUltAB2czW2AvGY6U9Cn1x0MkRQRhrf1Q+L8
         3naup6qkqZHyvh16fFidtah6O7L5XJmd3TxjOwQJrkqA1LY60JQ+lORQfKC/Iiymj+JO
         jB5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XCNkzqC+JTQBR9ym2DKx+JGRaZkSCVDLcsdTzTjc+jkM2nsIo
	fMYQ+RYXio/4PfrFU+TujeU=
X-Google-Smtp-Source: ABdhPJz5Pwy1XSeGcwdO/uCwXNkGzc4avPNFPiaIK4VMIUHXUqC+AffWsEMBZUdn+QA0mU+lS5Cz0A==
X-Received: by 2002:a25:8884:: with SMTP id d4mr49667234ybl.410.1620842500168;
        Wed, 12 May 2021 11:01:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:c:: with SMTP id a12ls1437911ybp.7.gmail; Wed, 12 May
 2021 11:01:39 -0700 (PDT)
X-Received: by 2002:a25:fc04:: with SMTP id v4mr51714980ybd.196.1620842496969;
        Wed, 12 May 2021 11:01:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620842496; cv=none;
        d=google.com; s=arc-20160816;
        b=tozbN/aUgKI76sXWbabhTqBjgJek2mYiFDHpCUKY00rVFzz3yfgsOmGQwAuWc4rrLg
         fHeokwcoVBE0zpJYAFW4CtsxeWHytLK/BE9zfRU8mEHQhMhtt2D1jrsQJID8Cn7aw7v8
         SzRcyzhEsArzIpPoCdgffB2/A3WqAzkgacKMUTBP1aMnwbbtZM7FOn1Xmd8f1XRrhXRP
         LJEtURj5IHMhuXV4zc773xVc/tWAyPWpi2s/iMGSKO4Ng8C+QbJxPZB+orBCYFcONbdi
         EFSR6KKGTQT/9q502RVhWDYS7LdeJmTinLGBanf1aQJPxXat4RuSp62ShXa/XUQr1ynu
         bYrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CJjCqJhPewRkbCDl1/e5HonHSNr4JJ3mY+74nheRsJk=;
        b=u8OQYU9wkG25u/XRCBTTJHiIsveDzGi1p5UXCng7EZ2up1pcmCVtnQ+U27/eCDKMe3
         w11hDs3sbeHIKQveYAn50Ho0AJDoKOdD4zN/5HgVxgIRosccJ20bqHPfWSPHIx0dTofU
         UKI1gQ8DbGJsknuOzjhDQfnONm7h7HIkGvITO23keQp53enPx2S8+YK0y2wSET7N4MUL
         zbNZQq46uPApN9fMWdyyhYGmhYN6iHZuBVPmSz/3gH1wOzpbxELDNiTXw3cdzDwUku4n
         uVF4+0FdvfytPOBE1UrglJbOr6TigHdncTa57UWO8IEeXeQ1htkZjIB+iTPLv+8Sxexu
         HHzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MkTVOvon;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l14si41531ybp.4.2021.05.12.11.01.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 11:01:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C21DB610A0;
	Wed, 12 May 2021 18:01:34 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.12 21/37] riscv: Workaround mcount name prior to clang-13
Date: Wed, 12 May 2021 14:00:48 -0400
Message-Id: <20210512180104.664121-21-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210512180104.664121-1-sashal@kernel.org>
References: <20210512180104.664121-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=MkTVOvon;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210512180104.664121-21-sashal%40kernel.org.
