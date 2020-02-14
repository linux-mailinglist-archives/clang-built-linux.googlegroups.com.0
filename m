Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBKUPTPZAKGQEGN4ERPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id BD69715E0BE
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:15:39 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id e11sf5387332otq.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:15:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696938; cv=pass;
        d=google.com; s=arc-20160816;
        b=yQXbBiypmed+VXzOiMBSxdaHjPHTe4huPLtLwk5ehmGv4vVWkUeTVeRGcRGSIxt2KX
         LR3ZZtVMgMk0vXNDOsKzziL8amSQPiF3+obVBkfThVXKPVQDw7bUAMDkzAWOfM9luQVN
         Q613AEHOH2aSRUwqsmor0lUeP4zfk3bNXVwBzyldB/G8MIY4YaobB3GKZlCC+Yom6pEi
         AB3fWPoziOEisZChBJ1aVh1E+krJzBRr3wW53fDTbH6OtYn2jcb2RD7EOQQxlbplyv+y
         /ueXG+I8uYHcMvHr8juyQsWH69CCOR0xbQb5ZRQEg0HX6+d5r/COO5CYJOe2j+wA6gWa
         QdDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8/U7N+5oa4x8jmYMeyl0EGYjPrabwjp+PsToaoOhpGY=;
        b=gMzxx6DodfrkbQC2wkVAaIT303ADd8W3+CfylzlJB8uZDTuHvUPai6lzf8KMvEQLAY
         xdOQ2dWWvoU5TYEoo/gHuOqxtgsL830gPdu2zxdZGoM8H2Vcymo3vN9BDTLRg9lnSe1Y
         8PMwTeIY8c3DZFNOxdIpjdqo7l9j9cvWhq+VfkRE4f4YfJVhKjeC4RAQhuYrOeYoNkId
         oiyDrHAD7m0sN5HYo1B5lAC5Ax2FI5kxt2zhwJA/XeRV6SNliPkooHeICnznrdgSPqCA
         +vPInVVy9wwOdM2jaRw8iatMjKl/gPeYKbg9gfV7n/ZV0HHgUORe/+xQSeJs6dDNuY7g
         9CoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="L7zXXfw/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8/U7N+5oa4x8jmYMeyl0EGYjPrabwjp+PsToaoOhpGY=;
        b=OS5sPLAE3fWADdzx19R6WYbJ+8MfTv4aZirRB/KjGzfJ2VLzUVcPYJZxL7JLyZLVvA
         BPkCfb7Toq3Nk/V6P/ZMFxnUL3jltBlnQyG2+3u9PdRaBYRGUPoO7zTY2aokZOJW7RMm
         T6pLa9QNs6Y44lPllEUUJoyO6b9o/NIh/NVqshe9QNdnVmEx9LJL+PV3X05de1/MDVmv
         ELlo9C8kGzJEtuVl2BaKgRsd7xafBYOiEHnJg04smaqhAXQxt+EGNvctJnKp6k8iNlln
         1ox7EQCXjMXaI1L1yNMw+WKFoNRQfVcAfCUFNfeRzyr6qbazWCkbDwgL9xhHRwaHcEgJ
         errw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8/U7N+5oa4x8jmYMeyl0EGYjPrabwjp+PsToaoOhpGY=;
        b=gjU9HhGENj57mMOlE3Vb7d9Y1K3nCpSsRtMSZepFDZp7olwfxOQLTNrQ0jnboLQNPg
         UrCXbAuGAsyneqjUTMPHjRmUYgRyoiAd+E1FDj0RTBiieola+sJD2uaxCNHR+nqUZaM5
         vSdCHqneT5QqpdY5IMY2IDZ21yd1n11Kh78Nvp6PvHZ+WBhhCw7BMqy+hEd3f3lj+GP1
         Y3lhBil1HnMU0w236SVCp3Lit/D/qTqzXcgyy7yPAWIZNB03j8i+nUJvsRv/qS/bI7zo
         yRygV3QV+Kd4sQrgcCPh9QtDdIuwiWyWOEoV7Svgp/mNMt/4k2NvJTZcv9dZN5hlZ8TJ
         1fXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUEWZTMokVtGR5R8XI5o72CSeZ+xLJAjrQDThaM4hTN1Grl9DsT
	WQ0Lv7NxO4musGNcpl/DMfc=
X-Google-Smtp-Source: APXvYqxFhHimrjfQ6mywIAgWmj40IUsyCQVhDmJV/a5ohyowtFZXD5fQvw4/4O0x5c0TbIyoyH0N9A==
X-Received: by 2002:aca:3114:: with SMTP id x20mr2421910oix.121.1581696938714;
        Fri, 14 Feb 2020 08:15:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:910:: with SMTP id w16ls659617oih.2.gmail; Fri, 14
 Feb 2020 08:15:38 -0800 (PST)
X-Received: by 2002:a05:6808:4c7:: with SMTP id a7mr2395543oie.83.1581696938344;
        Fri, 14 Feb 2020 08:15:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696938; cv=none;
        d=google.com; s=arc-20160816;
        b=esjTn7KaWEQKbjT777hP8F/LZ5fY7EZDkVbTpklXle6DJPQwR3Q8atLEcsP8jvCJAd
         zHKfzpuZd5lqRHBbAvFJZHA+dkMjvxYFl7GTyLWT1f5/gUjFssGbkClgIkpWeUZKay8F
         x0EhaPZDc/rJ1uLfZCy66k52OH2TwzVq96qAr09OW8zmBKN0az/aF9XxGZHWKsgoMdBk
         QJ5cVutwKWM/kTzM9hhaxdlmSiAz372tqIGJM0w1FnVZVw8IM+LE/L7e7k/QpYvq4QDG
         XmNpoFy1GYdmYJl2C/8AMIY9Ca4OKfWLOCy6R5JBAIRPu7k1cNerLDjq+m++CiJ0umSB
         CwtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ciaKSjdowNaJIozR8tty9+nX79ius3iUtQ5hyIiRHU4=;
        b=SoHeQMlOYRieS+coI2S5fpYpW2rumH2+Jdv54VMxYfIUWcZhRqjNvDg0Ft10odvWbW
         cVY9kAqLgvUISD0yo9snOOANAn2qfZnhOslYDrJz1a75sVmW6QwbtykNGvmH3ycgoTYK
         L1ge7+COCZByAThbzU3VZQrEhaQV2aSa4dD0HqT1fI/3e4wvszGqB+NXOCFyd6oAiAsH
         qrjwh9Qo11CSrSj4pGLYO1b/2YotVQ7jHn69KNNw90C3U3SI6LZkxK7jqrsRZvq2zCQA
         pOU97s8jmI6txF6albfyru27PyCKvvSicoTJZEuvTwFsE8u/ULO3OpfISVGrD8LtgPTu
         EJLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="L7zXXfw/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j15si367222oii.3.2020.02.14.08.15.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:15:38 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8E2EC246C3;
	Fri, 14 Feb 2020 16:15:36 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 181/252] arm64: fix alternatives with LLVM's integrated assembler
Date: Fri, 14 Feb 2020 11:10:36 -0500
Message-Id: <20200214161147.15842-181-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="L7zXXfw/";       spf=pass
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
index 4b650ec1d7dd1..887a8512bf10b 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161147.15842-181-sashal%40kernel.org.
