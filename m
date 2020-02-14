Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBXMGTPZAKGQEDHYJEXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB1315DD0A
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:57:19 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id p7sf7865942ilq.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:57:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581695838; cv=pass;
        d=google.com; s=arc-20160816;
        b=sFktvI6dyeonffEG9hUMof50NChqRJ37zr6Row28N/SMEqH4YNleyOHHR2m3FM6U2s
         5kXjo+Li8Lc+DHjnlSBGUr9Dr0xTuKGRbnTvorp46rqQMo5SuBOGy1Jy17FwVkvTBIbD
         01RrNd3TIwWabgeuvTc77mHM4JgBp0I5DmWh0TV8kEOfGXiTSHKdWGkORZKky0m04dY7
         aVitsQ6ZoS08RMWqKG51cizBjLmIGMYmp4Uy/jWKSHElCqnVkZUK7HExaaQzPvi6eMct
         IQNz2LXfGSqCsQ7WSZS2LQihtqEs65gTnioXFXPy9KmfV0CMijdLFoqg3P0IIfsll65y
         cjcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=adTw3S9wg+D8gQFgV3hFmEW0phl/BG1TylCdP35x8tQ=;
        b=rsMHnc3NUrkXCh4jAwj3gLl3AghhL7FyMekKkaIOk8toIyxMDEwtMM6ZfGCEkCx02O
         DTsRaZslKsaVq0wsFr1mG7RgpwU7OvEmdIwKt++I3OXGoV53uRZzNDmgOQOY79I51dy6
         DJtHxJtxz65aetABQMcsBjPLqul8/1xCP0xCSWIGRLF9IIFdYpV+iQ1bTdY8cj5QTEkA
         7/jRPcj1i8symaH1S2iTA5LnGiF8r5UmSdl7UmPPYoNtZoQgTF2ixwznmAOov1pTogtj
         ZOZVOdGrDdNg5p3cqQxpkLYOx1IIXWIlem9WKHG8JOXLdTSznWb6n6oQOy4Nx2iia7jG
         O06Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=k2aMZnIx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=adTw3S9wg+D8gQFgV3hFmEW0phl/BG1TylCdP35x8tQ=;
        b=nYiB7NTvH3pEV1hCS0rQIpRSU8RC7Y1oWHIgMnV+LXsywGnOeQAlsxu2joUluP8o5K
         mJKdRm0/nya61UBNdm8MkHpkn3P3A/jDIchAVBCKzHBl1rd8+e3WflYxji5UkdkCw0tr
         1NWE1VKQBhWtHpaTUR6scbdOP/Dueio7Jja+agE7At+dVWYSazxT7DzYcX8iea9hrERo
         28rLriZg09njUt1NIkXiOd777AILR92luV+GC6si/YagN8mrVTanVbihdJcVCrcerZni
         7oxRWWH0zx+aXpWy+8QX/NG2IUyXh5qM/ZLa2jPlLXoBkUIFOEwjN/dwujm/qEGQeTWu
         7KqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=adTw3S9wg+D8gQFgV3hFmEW0phl/BG1TylCdP35x8tQ=;
        b=c83ew/i2KAH5cKwsrIXuuOCUi7p22V5UfzpGEUeaSRwq02an82Tf7TTdprUbMjmxRu
         8zU8vNp+UZ867UOkoD3uDb6VZLK11tl2VcO4blw12uL0scFhapgXVPRHLZL86l+R/3GG
         7OMAATCfqh9A9oFk0HF+zkwllkPvXhD9uMe3/OeM67OsbsiPW2po6YUEcYpyco5oc9sn
         cv8gczUz0Mzid6ocJqs7TXSFWurx44P4hKunso7rHZCnhO4rWGeJf24NgNOc5IaBtAHw
         D2V6Mx5DujcAWvKnMeKtfB//znA73K4LYQVfxIinJcd7Eo6mbYCyZmgU/4jpBwmCX9qu
         Au8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVGPQU/Xa0nWLcFZNdPoQ8Y5BCl2gSVLc8c9rJDQew0bl+rfqKB
	brYy75n9jhfklq/zUvueILU=
X-Google-Smtp-Source: APXvYqwDr5wXBys+tlwsxLpRm3gJAuQB9Wp0ibC6d/y9dWzjNeL2XFTGtYFtnj7pBlOyRhxosbe0BA==
X-Received: by 2002:a02:a694:: with SMTP id j20mr3169414jam.69.1581695837783;
        Fri, 14 Feb 2020 07:57:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:db04:: with SMTP id b4ls571333iln.5.gmail; Fri, 14 Feb
 2020 07:57:17 -0800 (PST)
X-Received: by 2002:a92:8141:: with SMTP id e62mr3469022ild.119.1581695837367;
        Fri, 14 Feb 2020 07:57:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581695837; cv=none;
        d=google.com; s=arc-20160816;
        b=EwzUUiENpLzZPeNKHHydFLMU7fnJGeVMHaa0FVb64xu2+wQWx2Ip6nDE4Oca1iMpPI
         HfogKNLZNyowkIVylSEChHCQP1/sDDxG7stElB//QIjn+Aoc+T8AN51vYXZQLa/ea2wo
         8C4AxrUR9NK1Hw2ykjd+NN5BIuEydIfhyJTFOJq26cwYQH4e+GK449uPpcR0zt2i+Y7X
         BP29dUHC05qnp3VGNBScZ3PzAA1B97Z7Ll3Z/LN3vI28shoDvvUspq+8Nq3up14JJkMr
         58e/+r+4AbBrYqcVQI4wvEyxjS5yDFuFFc1mrwSa0cc5pp4NbanuwNEuR2Ss5V9mzn8H
         +FdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=z1EFtZ/cIHcNokpEzEp4ziUpA7DQhT4PlDw64RV/hvg=;
        b=GZkmGPc9k0Gw3qKiOr9CsESsnDb/zWW5uaqMM6S/fuKM0bftLl27Gb8Ke06zKrFLVB
         guXSJAjNgbXfAmdIsKCeiQNPLg35TYWJukZOP/WZX9CPLLzLP+jN5aD9pBimbRuJEMHd
         Tc6/IiaYBOlu3rZRn74SwRZoKWfRoikUHG1Pk90f91N0AhOLUvCq+BmCMZH+ai317dio
         ZPtJqIMjCzXsa93roXVbC7Qn2hPmmgK3WTpVo4VEWi6qqONDvsT5IQIUyK4mjTZsMgsI
         p14kAhtQZmqy9D4sE4ulWfa6MshRSYsxKAAHsWsxkrUXx/ddAgCXHAtmLUY9ke8C2bF8
         ZWaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=k2aMZnIx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f85si367131ilg.2.2020.02.14.07.57.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 07:57:17 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B5FA024681;
	Fri, 14 Feb 2020 15:57:15 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	Will Deacon <will@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.5 388/542] arm64: fix alternatives with LLVM's integrated assembler
Date: Fri, 14 Feb 2020 10:46:20 -0500
Message-Id: <20200214154854.6746-388-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=k2aMZnIx;       spf=pass
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

From: Sami Tolvanen <samitolvanen@google.com>

[ Upstream commit c54f90c2627cc316d365e3073614731e17dbc631 ]

LLVM's integrated assembler fails with the following error when
building KVM:

  <inline asm>:12:6: error: expected absolute expression
   .if kvm_update_va_mask == 0
       ^
  <inline asm>:21:6: error: expected absolute expression
   .if kvm_update_va_mask == 0
       ^
  <inline asm>:24:2: error: unrecognized instruction mnemonic
          NOT_AN_INSTRUCTION
          ^
  LLVM ERROR: Error parsing inline asm

These errors come from ALTERNATIVE_CB and __ALTERNATIVE_CFG,
which test for the existence of the callback parameter in inline
assembly using the following expression:

  " .if " __stringify(cb) " == 0\n"

This works with GNU as, but isn't supported by LLVM. This change
splits __ALTERNATIVE_CFG and ALTINSTR_ENTRY into separate macros
to fix the LLVM build.

Link: https://github.com/ClangBuiltLinux/linux/issues/472
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/include/asm/alternative.h | 32 ++++++++++++++++++----------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
index b9f8d787eea9f..324e7d5ab37ed 100644
--- a/arch/arm64/include/asm/alternative.h
+++ b/arch/arm64/include/asm/alternative.h
@@ -35,13 +35,16 @@ void apply_alternatives_module(void *start, size_t length);
 static inline void apply_alternatives_module(void *start, size_t length) { }
 #endif
 
-#define ALTINSTR_ENTRY(feature,cb)					      \
+#define ALTINSTR_ENTRY(feature)					              \
 	" .word 661b - .\n"				/* label           */ \
-	" .if " __stringify(cb) " == 0\n"				      \
 	" .word 663f - .\n"				/* new instruction */ \
-	" .else\n"							      \
+	" .hword " __stringify(feature) "\n"		/* feature bit     */ \
+	" .byte 662b-661b\n"				/* source len      */ \
+	" .byte 664f-663f\n"				/* replacement len */
+
+#define ALTINSTR_ENTRY_CB(feature, cb)					      \
+	" .word 661b - .\n"				/* label           */ \
 	" .word " __stringify(cb) "- .\n"		/* callback */	      \
-	" .endif\n"							      \
 	" .hword " __stringify(feature) "\n"		/* feature bit     */ \
 	" .byte 662b-661b\n"				/* source len      */ \
 	" .byte 664f-663f\n"				/* replacement len */
@@ -62,15 +65,14 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
  *
  * Alternatives with callbacks do not generate replacement instructions.
  */
-#define __ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg_enabled, cb)	\
+#define __ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg_enabled)	\
 	".if "__stringify(cfg_enabled)" == 1\n"				\
 	"661:\n\t"							\
 	oldinstr "\n"							\
 	"662:\n"							\
 	".pushsection .altinstructions,\"a\"\n"				\
-	ALTINSTR_ENTRY(feature,cb)					\
+	ALTINSTR_ENTRY(feature)						\
 	".popsection\n"							\
-	" .if " __stringify(cb) " == 0\n"				\
 	".pushsection .altinstr_replacement, \"a\"\n"			\
 	"663:\n\t"							\
 	newinstr "\n"							\
@@ -78,17 +80,25 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
 	".popsection\n\t"						\
 	".org	. - (664b-663b) + (662b-661b)\n\t"			\
 	".org	. - (662b-661b) + (664b-663b)\n"			\
-	".else\n\t"							\
+	".endif\n"
+
+#define __ALTERNATIVE_CFG_CB(oldinstr, feature, cfg_enabled, cb)	\
+	".if "__stringify(cfg_enabled)" == 1\n"				\
+	"661:\n\t"							\
+	oldinstr "\n"							\
+	"662:\n"							\
+	".pushsection .altinstructions,\"a\"\n"				\
+	ALTINSTR_ENTRY_CB(feature, cb)					\
+	".popsection\n"							\
 	"663:\n\t"							\
 	"664:\n\t"							\
-	".endif\n"							\
 	".endif\n"
 
 #define _ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg, ...)	\
-	__ALTERNATIVE_CFG(oldinstr, newinstr, feature, IS_ENABLED(cfg), 0)
+	__ALTERNATIVE_CFG(oldinstr, newinstr, feature, IS_ENABLED(cfg))
 
 #define ALTERNATIVE_CB(oldinstr, cb) \
-	__ALTERNATIVE_CFG(oldinstr, "NOT_AN_INSTRUCTION", ARM64_CB_PATCH, 1, cb)
+	__ALTERNATIVE_CFG_CB(oldinstr, ARM64_CB_PATCH, 1, cb)
 #else
 
 #include <asm/assembler.h>
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214154854.6746-388-sashal%40kernel.org.
