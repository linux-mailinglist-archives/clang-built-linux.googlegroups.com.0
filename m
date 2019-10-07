Return-Path: <clang-built-linux+bncBC2ORX645YPRBL6V53WAKGQELDW5AJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id D40DBCEE3A
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Oct 2019 23:14:24 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id 4sf2616537uay.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 14:14:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570482863; cv=pass;
        d=google.com; s=arc-20160816;
        b=K/Tr30WaGLdhSMayUN+zpb/nbSU4o7nu9gqN+VfOUMciX1jJKGkwe98MqVxoBsrasW
         wGnQOGpqwvNu5hVu2fppkPU7oLZwFQP4Y95GC7MaPc4lqqJNcv01NZeCB/wKYkwjfASB
         G4FS9gb7JMObFGUjUMCDpFyH59POHGYainJ+pUPqawkyf5RG6wCwTfgx7sxYUfGKmfX6
         6QL8MipOu3yoFSLB9vjVWO2slqPGspO9ZKnw52fGTmOKEl786tjl+VOUDj/ItfBtWsaQ
         u45XZYn/06gqg7TS0oU7hXuLkqbZcpV71grZnveHu7WXTaWkSGU8bxefKwEIgXDxd1H8
         ZKTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=sgo4eneicaNZmj1h4giSA9+qC1uOX5uRJGT50hVzDuA=;
        b=zlUwEZsZbL08xa8x4LAojArNNxSkflXhgllfLGMs45JB5pPZAMjgTNZkZWFagjKAQr
         BNS0m/BVQc0TCHjVOjSlKDbHT46ZuxYowAUefOLuMCq4BTPloPdnOxJiF/wXFt3z87Rb
         TidetTjFMpPy0MY/kR5a4FsPkRPeD0gByPE3AUQavwTtdxG2KlwKXYuSf9EFOJJM1C3k
         5Dob5TM9+gDcwFqviPlfUrhVcy6+/kNruDxJBvQRbHXp8jBpuQqC+ZsiUsqKEz/2+FYU
         fOjdLzKrytQUyV43ijgbPVi6bBkC/F+JQbKqmatDSJPPVJ4Q99WAbbQXWdwBA0FbzMBh
         VWQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LCERyyEk;
       spf=pass (google.com: domain of 3rqqbxqwkaguvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3rqqbXQwKAGUVDPLWROYDQHQJRRJOH.FRP@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sgo4eneicaNZmj1h4giSA9+qC1uOX5uRJGT50hVzDuA=;
        b=cxB2Vcdpuhg5j1Go7lUmZktKvThBwiv4vv8sBzQcA7bL0DlCszrwIVIStnX+iH2Bpm
         u3AxeAGjU4VTnprG6Jmwx3kQtBGHYTPE5M0oTNM8fei1LeYCb8xCz2S1x7m7VNnZZG95
         SjeT2h3HIGtM5O5E/rfF3togzzj1aAJDAHwerdTjaaHi5bUZvJlpKFXjxKNmuAZ51Aop
         hj+fPZPcw2OZi1BhblgQvZeUOIZzXGtSvOCdg97+cQryDumfyFtFRH7sEypK3FIoWGDl
         Y8a7NHOXuucxbzKoiiJ6W+kzLE7bRkOAADe0l2PjsH6UNJ/NQ4bxNntkvsXgy3i1EBXP
         jeww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sgo4eneicaNZmj1h4giSA9+qC1uOX5uRJGT50hVzDuA=;
        b=UUpDty9hNxo8UZHBTph9TQRzTyg5I9L5u9TxRASb1zXsmkUcHeV33i6nnHJdYypUbG
         sAJOGtdhV7Mw10+AbSC6W5qT6GTvcYUdTaTrA7oWXtzE9wLjYuOBSq/CU35wtHv6OCK6
         KTCnFMfv9oSV3H331jSzLlPACSIApTP0QnOT8ShNHU8b3N2GoZ+7nGvAu+WX9S/T3T26
         vY+oJT0fxY3LvFT0alIEQ5fvONdqZdsjFK0qbvkrUBf88fudWJD8vE2WI787641UBpOw
         KMtOV0Nxbz+ERYhRRq7UJSr5M75wWNPFPlslkF5nOEWDCgRwFGsFyKte4ELjBRBkEX22
         vxRg==
X-Gm-Message-State: APjAAAUpovz15OtUzXRr+voxwEGatP5L4qdoQUgWw8T9KE/aLIqQDY/M
	UgS2DEfjB/QmeZdSPOCltVk=
X-Google-Smtp-Source: APXvYqz/MEahZRx0TTVx0YVyrVaiBzzV/kvPSmP3QJ7yZTPg2aK027lumplE1Lh8aiSzMvEETWPvyQ==
X-Received: by 2002:a9f:2746:: with SMTP id a64mr3052605uaa.66.1570482863571;
        Mon, 07 Oct 2019 14:14:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:1684:: with SMTP id 126ls119232vsw.4.gmail; Mon, 07 Oct
 2019 14:14:23 -0700 (PDT)
X-Received: by 2002:a05:6102:445:: with SMTP id e5mr16391093vsq.69.1570482863229;
        Mon, 07 Oct 2019 14:14:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570482863; cv=none;
        d=google.com; s=arc-20160816;
        b=dYdDqVKCKNKt2CadOtfpStYIaT6Z93RO49diPbeyJEjxbxCAeSwj4QIucpg1B4o3FH
         vWwmgV5SunNHe+rtKtsLP0LFHjXGH8WO545BhXNvrRWnGCb1OX0SOpnfA9UbgtOVJBlh
         g/0KIxOOcg1Siq/65n03zURtKbjze08zuMpxLEHCWmGXJaWUONUszMRa7eAAAxSmdKVU
         hzNFRPYBhoJNV/xKlK/WBM7+ovMxPvYTos8x3Lfs09BPhI0GfaAbypuI0E9VS/Nf9oy/
         BKu0Emc5I9QA/A3hkkDPHsPoKd2xkMDpGvt+u8qhEq6g9AdMUnT7/0L/Z2PBDXickLL1
         7Srw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=fBfJjWCRhUxG21Ng89HEbOaecnd7jMgx3odQFdBCxJ0=;
        b=Ms7mlob3+hvznE2WLxKUSglJRqVm2qTY1gHp/0mGrGDnSHEVHrtbmO2GM7PEECN4qu
         J2X2sIXh4/SNmjVMYyuSEnCmzqHcym6VSNBYSskTv0BilPhErxmjh5bdisbNdZfmbDtJ
         3cVTQHWEqLo6jfnItkiNVSrC2y74+L5diat36EJIljLfHLukI1ktZPKT8qTlYcdx+1Kh
         AR86e2MyQppmqLXvq3NznecSjDK0UzdHmEMCVGrsCKFOzHN26LW2oOg71eIg8rAJSRyv
         yxzACmnCf765mBetji8FVKgpTiEv4ARwE/bYvGtf1WjpktGN+vCi8ljHItGYXX5yMyyB
         Bxcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LCERyyEk;
       spf=pass (google.com: domain of 3rqqbxqwkaguvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3rqqbXQwKAGUVDPLWROYDQHQJRRJOH.FRP@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa49.google.com (mail-vk1-xa49.google.com. [2607:f8b0:4864:20::a49])
        by gmr-mx.google.com with ESMTPS id k13si17684vkd.1.2019.10.07.14.14.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 14:14:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rqqbxqwkaguvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) client-ip=2607:f8b0:4864:20::a49;
Received: by mail-vk1-xa49.google.com with SMTP id 70so7322584vkc.7
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 14:14:23 -0700 (PDT)
X-Received: by 2002:a67:2e01:: with SMTP id u1mr17012140vsu.44.1570482862813;
 Mon, 07 Oct 2019 14:14:22 -0700 (PDT)
Date: Mon,  7 Oct 2019 14:14:18 -0700
Message-Id: <20191007211418.30321-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH] arm64: fix alternatives with LLVM's integrated assembler
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Marc Zyngier <maz@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LCERyyEk;       spf=pass
 (google.com: domain of 3rqqbxqwkaguvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3rqqbXQwKAGUVDPLWROYDQHQJRRJOH.FRP@flex--samitolvanen.bounces.google.com;
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
2.23.0.581.g78d2f28ef7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191007211418.30321-1-samitolvanen%40google.com.
