Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBB4TTPZAKGQEYMSXXZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA1815E264
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:23:36 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id s205sf3483289vka.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:23:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697415; cv=pass;
        d=google.com; s=arc-20160816;
        b=MsPLctXkkK4aPq3RBgPgB8f6NPQ1Jo5CW8gUA3upmCcyCQM6gEB3ieqvOm41sEv5im
         KJI3YMhSBaQHwHhahcasC3K5TjIS/Ld87UJ/BObFNJBVSgxZfiLpVnde3KjiQHdBpSSl
         kL9jW3nBEbmJRVsvSSZzJ6qoP5aZaM0Gt0Y9KmqoqPf1WuADOeIzMfcRor1fpicAYGIu
         W/HlQ52xBXDjQn4b/x6l69kn5Fd5CXE1AutmRvsZ1BZAHiaXUHtgkOZ2+sZlBAPglq6b
         qHx3TSzr8tBEndRAZQqJlM2q8/ocXp9gEbRN7/VdsnJgcZsWerk4ncRl03onMNwB9oFM
         X7jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=F1G3RgCx8vaH4GA2nTuB17EtvG8i/b/tfp/gGNBNgCk=;
        b=m4TctgJn4lza1qj9nFlUW2XWklV9nT7ChvhjU2SG/E8bV/HnWa33XjZCFj5c49Q2E5
         +E5i8EZnipoF7ms8qXQkMtv6mKZF86pDPAUfSslN7sXknGVNXivzqPKwAFpxStlRaRer
         +UEhO3uHZuVaVWZjtvD2ltiuYVYyndwA8AbK/0PdxswwOAfPaJXQUgyQHv5D5aDD9+XU
         9zZyJIy4Kr0e9JDbEKuqjoZVENg3YjxFstQyMll096+Gs5eTrj8b8QmfISHXE+ZdvScG
         0HdPz9PnUpqjtd1x6QsbuE27CfuTGg/ES8/Lt8aAOyhgeoLAu4XKs2KcBz9jUkLv3Tty
         FlIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wwbJU1AK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F1G3RgCx8vaH4GA2nTuB17EtvG8i/b/tfp/gGNBNgCk=;
        b=fQAZJ8JfmCAl2BHmKQf1sJVF8Kn39Qla7FX1NIu1akaRHEWf2wk1B5XNY3egBrZILh
         L6TvUKwf45jSx82u44MjBfei+pLFOjszAa8EVPk5/2iO24UuSfEOvsQNp5uRdO/fNvMf
         vYpe4f+uFZWF2Bphj9OTm4oQkzFeMNKquJBYiDYkFnl+QwE/6p8/PW8vZwrARGJWeeHE
         FhjiT3BVhoToLeqSZcHuIf5B/VgSEYP1KvEltcqV3/9YhlSblScD/T5HpCwifWxk/ohM
         8CRGQGgG1gJzXj2ZpYnASXBXC9A8g4RCXCiqYKuC81bmqRQZJP8TUjEuDTQ8+STOzpor
         40uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F1G3RgCx8vaH4GA2nTuB17EtvG8i/b/tfp/gGNBNgCk=;
        b=KgV1QddOU24y90FZS7w7ItgOeUUDLPYPh26PXM59+zkQPwTBRUV4pKqkSUiL3IZluC
         sRuF/P9FWxzRHMt82g138ETTcRWcB1Jkl7pYYzfLTzU8bmx6Ud4ubXS2Ft3JmUYNwUdI
         tNzhamIvj3Cjmy8Ch5qwq2cU1i9aDrWclYMWSFtXAyv+ndcaJZYjPq6oJIyKNmqP+9Vz
         fNZhQRNC1pChTDDjL0OwIRFz71G7ljfnTc130fmT9HoFz3R7/gKLPCv4sy1R7XVNC2A4
         PbLVTYyOk67TMZs620gK4TKkHFkQQKVTefI8R252Jw12li5PyiNFiptJ01h1Dn1yYXFP
         /YTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUWV1jqKi8k+iGXqGo8rmL/vYHCxxerML+gkbfydTY1PKQf2UgF
	CYr5VoCWKu0v+MvFELCGDlc=
X-Google-Smtp-Source: APXvYqyFY29vnDubNHuGIXiq5Jy55KkD7NEKxLN1m5LUGtasXlIDsL1Bj2roCsgss9MZZMhkY6SKQw==
X-Received: by 2002:a1f:dc42:: with SMTP id t63mr2167415vkg.5.1581697415279;
        Fri, 14 Feb 2020 08:23:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:644e:: with SMTP id j14ls170260uap.8.gmail; Fri, 14 Feb
 2020 08:23:34 -0800 (PST)
X-Received: by 2002:ab0:4aca:: with SMTP id t10mr2079676uae.89.1581697414737;
        Fri, 14 Feb 2020 08:23:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697414; cv=none;
        d=google.com; s=arc-20160816;
        b=KHI0l5w/R25QGEtKc2o11MCivg32K9Qvr8koC+/3axy4NM2VevWePU86RLvNUNG8kS
         IxB2mVjR/wYGdC66bEzNBBqv0Ouq6tFAEwb4PfIEJW/2RD+fzidAiPXBD3BK5SFwpNoo
         uGNBHo8wOcGU+P7bRXK2YSV82KSqfvfoDkMpc+6wdWKGTWmfekzMzcEK6avfrkgGaVn7
         gWamZeoH8z4swjM1ln3PP6eyaKzRdrdkUveh6LaVKpEYFjuaPhE0wIQ9NzZMyo9/xxFZ
         iymvh/puXp6nFTOloJkfA71Hn4lTNTd4J4fsJm0TDYeb0TGW9GudIYuBlkh4TexIJwQS
         F8yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=26e4Gl6HyuXH10D/TrxqxJTDnFM/q2djaEQI5bxneZY=;
        b=EMq6vJ0ilUaceSF3llFTUedKfabeOsDR2a42H9tGs+CJMo642oYUXIwG9/gH3DRhfb
         tQTIsJ4ahBOVXjqUH0MM9iegfJncgY+T+8sr41ZrOdEHVaU7cUdgg8xX1pZoiVnldMD6
         TLbv5wUvKXcjW09q9xMls25dpATLusOBmwdDnyUWu4ghKo1BM9jDQFOkwcDJmuJTUeIw
         wLcA2HKb6OrlytSV1hCHWXllvyS3fjfVp7ZxRSSrd2hXzt8rhuOdH7GS0y89dZR8OezG
         wgBGoMQC/aeMZc7tXUtcG3vsFxaXOEl3bfR6UUb+u5SlBe6efuefS4imt6T1lw2pr5bD
         zH7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wwbJU1AK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i27si241162uat.1.2020.02.14.08.23.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:23:34 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B408524780;
	Fri, 14 Feb 2020 16:23:32 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 104/141] arm64: fix alternatives with LLVM's integrated assembler
Date: Fri, 14 Feb 2020 11:20:44 -0500
Message-Id: <20200214162122.19794-104-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214162122.19794-1-sashal@kernel.org>
References: <20200214162122.19794-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wwbJU1AK;       spf=pass
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
index 7e842dcae4509..3626655175a2e 100644
--- a/arch/arm64/include/asm/alternative.h
+++ b/arch/arm64/include/asm/alternative.h
@@ -29,13 +29,16 @@ typedef void (*alternative_cb_t)(struct alt_instr *alt,
 void __init apply_alternatives_all(void);
 void apply_alternatives(void *start, size_t length);
 
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
@@ -56,15 +59,14 @@ void apply_alternatives(void *start, size_t length);
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
@@ -72,17 +74,25 @@ void apply_alternatives(void *start, size_t length);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214162122.19794-104-sashal%40kernel.org.
