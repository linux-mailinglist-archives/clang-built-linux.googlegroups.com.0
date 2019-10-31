Return-Path: <clang-built-linux+bncBC2ORX645YPRBOHU5TWQKGQEHGHRFOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id B9054EB819
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 20:47:05 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id h11sf4612741plt.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 12:47:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572551224; cv=pass;
        d=google.com; s=arc-20160816;
        b=VkZ9WPT0ffF5luXajiQ9ECpCgq3LkLfOeF44w4sTj5JN0HVf98/GHA4hf48aTdlXJS
         aCaKv4KtTR+sM2EJkyA4djGA5bjA5UeLO8InqNBrK7L7Yw12+0Rh+DqkHH3U/0r7xnqp
         +hwIgLPMtv4AeIPnJ18d/eyph04lMezLG6EO+vTCAfM9rQZsgmYArhlzM+pyN9ZeK7OZ
         hukKvcYT9dRvF6ZiIA2Ga89bP34RPUW77YIOIGGMCrAKquLmWcrrbBWv96m8bMX+dN/9
         F5yPLZHgu+JY+lL9aeoWQnu3AOw+ePFrbdr+DpQYFdi9LnEnfoGydWpf/JA34GNTvy4Y
         FTWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=EmkcQOYObgNzQWqdAXjOWrt13QoTLd/6cDUv4cZ/3AM=;
        b=pqJqs3WAHOlXtEoduoxDPVJNH6pesoSGnF8pze8mtVDjLHNVy1qT26uR/8YZs6yo0F
         LZ4r/GPstI4v9TNjUqXaYKVUJ9T2fG7geyPU9Pu88sOLjsBRwEpwgX5w2F+MnW1Ba0Cb
         VMbVFa0/xBMOl64QuB82jR+f99mFs6xIK7nGoadpdaZ44243k3Szz4DwCwUK69o/ORMk
         RibhC4X7+xtCgKBhUh/aC8RRKZPz4tnAsY7p7ewx3VfCzjLC1bm8J9KjJKjx4GI2j7sI
         gf99VwqOyCDI5pmYCr1MRu6y2B9hvT+iovlhUZdNyOOu8vaKJZy5qYRAKGnwjHv65QI1
         7Vtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o+caVVGF;
       spf=pass (google.com: domain of 3njq7xqwkais7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3Njq7XQwKAIs7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=EmkcQOYObgNzQWqdAXjOWrt13QoTLd/6cDUv4cZ/3AM=;
        b=o73TsSvWXFZJ2/0WSXMJPO8IlZ/XZ9BIxtxhQRqx146cduu+dILJ8bJAr4pOiOw1Ex
         SCSvBI3UaHMJRJ3FOaZEEX4w/Seok8AHKVErX5xVCTHxAI8FrSYVLPKSKY7pL8avZuoR
         2q9tN3DuTmpJA5oLvwJnc1ciXYe4Wm3CXHuOdPpW2/wVmTYoCe/QDd+Mef+CfkFXgu5n
         iHiJBUOUvtGhP6xRQPCDI+xsmbi8plVX8RC7wjymu6+ozcd9aU9AdDcRUddnkTxihGrN
         Sw4oljYCr9LrM4cUDRYSXvolbf6MNKIiKnipLfQzPjBmdI3W/Mzf5rmTKx9MrGfl4cxn
         PMjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EmkcQOYObgNzQWqdAXjOWrt13QoTLd/6cDUv4cZ/3AM=;
        b=stcNKiJJ90uC03/nI+W6tVQHUtzb9pw2kOFUMrTTMMXCXieX04Inl2TTuwBsCAwf+a
         pFRvqb1zx9AoQXJjuuOw9fD7cUAcaxNCe4xk+4W/nozhhYtF1d7UjppjV49PHQp3Y/gb
         JBCH8/paKt6xylxqx9t15NLvxnyU9iBrYy/3iNfhzBF0b8h41EzYTvhaV2wghWMxa+TV
         m/Mh+SBRf9lEQz35zORQczIRA2fHXfBRPWrEb9FXiUJpdtP7L08EG4aRBaY/ByUjCHbP
         nEe9O6fJM8HsGhcnn7fU6NcUnjVdJv6Y9+RfE12D/jSUTZ2JyB+dAfrFOQP4A1oGUefc
         +ybA==
X-Gm-Message-State: APjAAAWvqqLwxyqzwmeTWx9pyfPquTznkxf0Z9O8Mb4KupR7Fds9rPQT
	Um+oF0n7pLCFNEDjl6LZZEs=
X-Google-Smtp-Source: APXvYqxFUwGtnA4pEcEgITF2DruQ6ZLNTgRl7O4PZAcKRgErzNU+Fd9ka6q3KeS6drfOKYluyM6TTg==
X-Received: by 2002:a63:6fce:: with SMTP id k197mr7628634pgc.202.1572551224281;
        Thu, 31 Oct 2019 12:47:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2a06:: with SMTP id q6ls1014897pfq.14.gmail; Thu, 31 Oct
 2019 12:47:03 -0700 (PDT)
X-Received: by 2002:a62:ae10:: with SMTP id q16mr8871233pff.7.1572551223809;
        Thu, 31 Oct 2019 12:47:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572551223; cv=none;
        d=google.com; s=arc-20160816;
        b=GkgFwu41ui2Gi/WdJd7ZICadnU+HyAmvchpHpbRVrjmDybew4x2Ed53F0J5Jxj0+1e
         19LiBSYhPuO+MH0cP1NlWRXrLIKE89j71YYL4Z4pShGO0o88C8TjTKo7+hDGxjIsXqU8
         f7oIHDS6nmD+3tPumqacaxYzWyybOQRgK9QLatKJ3NF1UMI2pb3R9nbXtytaYWkibIcx
         /v/uCOI0bdf9wLXuiJHQQdhORW9DXs8wMivZ9TkVJi/o3H+CV5qWBQhSE40h6pp4xEb/
         GIGXYmLovgSgCUD47Ol0yg+gP/qvEZpRSmbBATzd24yRTvF0WSXkxhThNTzx3aci/FS0
         l1BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=mRTJzqi2Ekt/Yu6tImUxgj9kbqR+IWI4OvQzXYofR00=;
        b=p+8rrokc9TvJSSv0GJ5PHxqsQDaB79lD5PEqG2xOLSgluc3nbmSWDN/hcFw8cMZ4HG
         vV9yYfcDOBPm8yHRWG2llMVBn1wv7+XB08SB2cfVa1AB+tPkXwa7t/3jHVwkx5tnD0ic
         Xh6x1eyw55JO9O8fLSf4Jrl7eJaO19i+yXRpYMAKnpXNOdLUT2kYLsboa8avQctQ/ipI
         QKK4k3hHhR/hNOFMQR2PS2bH9bmUGZCl3K7emNY2gTgtnf00iFW4P3OeDKGU9DcguksE
         TITVkSs2OU4UkoPrRZiqeMammtNShOpMUlofsHu6MnK0bI5flxnrzrAa8MFnJGDWMUjL
         SvqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o+caVVGF;
       spf=pass (google.com: domain of 3njq7xqwkais7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3Njq7XQwKAIs7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe49.google.com (mail-vs1-xe49.google.com. [2607:f8b0:4864:20::e49])
        by gmr-mx.google.com with ESMTPS id d9si288516pfr.3.2019.10.31.12.47.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 12:47:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3njq7xqwkais7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) client-ip=2607:f8b0:4864:20::e49;
Received: by mail-vs1-xe49.google.com with SMTP id q189so1297561vsb.20
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 12:47:03 -0700 (PDT)
X-Received: by 2002:a67:fe86:: with SMTP id b6mr3761803vsr.162.1572551222774;
 Thu, 31 Oct 2019 12:47:02 -0700 (PDT)
Date: Thu, 31 Oct 2019 12:46:52 -0700
Message-Id: <20191031194652.118427-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [RESEND PATCH] arm64: fix alternatives with LLVM's integrated assembler
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Marc Zyngier <maz@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Sami Tolvanen <samitolvanen@google.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o+caVVGF;       spf=pass
 (google.com: domain of 3njq7xqwkais7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3Njq7XQwKAIs7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
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
---
 arch/arm64/include/asm/alternative.h | 32 ++++++++++++++++++----------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
index b9f8d787eea9..324e7d5ab37e 100644
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031194652.118427-1-samitolvanen%40google.com.
