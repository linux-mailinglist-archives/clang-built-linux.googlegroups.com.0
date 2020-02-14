Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBHMMTPZAKGQEZSOVU4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9869815DF69
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:09:02 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id f25sf5347788otq.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:09:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696541; cv=pass;
        d=google.com; s=arc-20160816;
        b=sKjxP3izbaTdH5doUAVPqw6zfDNDq0lkAto9eTdNQsItWS9ulsmp3GIxFTaxeC5LZc
         Fi3iiyETqH/UmW1DPb6bkV/Gx0QptCmnAvthtcO5qbJ3vRMgnZ/IOqcwH6DdHorrIk+D
         CAdZeKXSJ8rfrF5r+GkKA9978kJghQASgy49PHpUvbT0zjEGeJxbjceT5ZPG/5ZjQ/X4
         zZjzjonbvoixAclvACLh8FgzOtHInMhsTkcRI+YbhwJ46g7t82QCCjuHmq30KNB0ArPs
         dE7Br7OI+eVohnWuTdwBP1qH0xg74aOUNTGHXCxzfIo9XNXCqKLz1OsZ5qZkT0qUDFED
         RCvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2Y74VcpBk6NoNF745tM6vmjM8WOu1Al0GooR/y/+V+Q=;
        b=Lm6F3vhL7RCLrLhUnG9YcRufnef0nyM+RxviOVz4vbGumTRTzvuAJvOWVBL41oHqlX
         lFfNx8fVlAOn2VB1DfZgEFEzYFLBABWLKvvDDTTdEIJE/1JTirXgfjLhwQXWb24Yx7sj
         uZfyrYDaX+zfdgGmcDdpHW7t/X41Flv/wZ+CzWCOg1ziDjbjHN5r7QYT0frUlF35/h31
         UTUWSHXbtsyT/CcTeDWD2KOIWkTyX6axX8WIAb0FzmgUc0vjfT9kgXLWlHXIpcqo7IQ2
         WXRY/mVIgT6L900GyyN80jccpwfJMm1cwMkvsLXATlIyUjMlCD1eS4L82luStJYtsloh
         d7rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=u40XGGBi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Y74VcpBk6NoNF745tM6vmjM8WOu1Al0GooR/y/+V+Q=;
        b=eVGGFFM9cNtBXRwnJMuUgd0lQEBi0rg34oB2QVLbKsJVDFinfgbNblUCs7DVH7RVZy
         6rJmlWCdbB8xsr6vIpbaaey2h3PjFvI04ckn4IW/e2Fyt9+1n68YIeOGLnPS5qY+npUF
         vi3hij7kEZ9V4E5hWs7BMCWfjmNKKR1MPEW5CwjEGwBdw3nM//82ZuY1LoSVdKRwgbx4
         2Z/tcyjXG4QSrfEDFrutjRmzmjkAYjZK6Kh3ikJjCUi8DJudc9pjFYbR6M3Urm84nx5J
         iBUSun6wx3B8JFvhWxczY6UjUsTc1ezvyIz64gUAVv9Se4CrqVh19wn0/7dtGP92Qtvj
         vEFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Y74VcpBk6NoNF745tM6vmjM8WOu1Al0GooR/y/+V+Q=;
        b=UGO5hJsRqzEgUJJK7VqrTATNIcwSp7+nWGx8y0xQYxJlMFXTf/gopeP+09tX8JTF/2
         kdw/nI5XEuKDw5VeOSA4FOzHv5ca2r3Q1S5dx2V39F9127kTfpHmf4wdOgjktiXhPzmn
         dG2yLPZX8hUHbdX8Rr3kI8lW49JqTxSZb61ofW9tK7sngdUCXB15OL1Qfm0Z7wxFfIoQ
         4QSlMNGTqHc/AHmTus5SOci80Hgb6F6UtUd/kaEytpQqt0o6PxDPdG7uL/qKnJLLlb+t
         NJmDGQXf9YtBoesRetsidmc1RaKXslL8i8V8UvECRkbdubWfrYr1US6A9t6MfBU07cvw
         SNQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVSSq1yggBR4CvT2ZtQFtBfkk6GL6/uo1oBh7vyT2UHVKstZ0u/
	CQLgR5sRGizYVmSZTff7WOc=
X-Google-Smtp-Source: APXvYqwFAm1s++BUrQrZb+xI4ZC27S4LQEgWsAaIeSZi16JRSnQEdEaMhooczODVwKWjUc07ZtY0Xg==
X-Received: by 2002:a05:6830:607:: with SMTP id w7mr3021354oti.155.1581696541259;
        Fri, 14 Feb 2020 08:09:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7999:: with SMTP id h25ls755461otm.2.gmail; Fri, 14 Feb
 2020 08:09:01 -0800 (PST)
X-Received: by 2002:a05:6830:22cd:: with SMTP id q13mr2907826otc.224.1581696540932;
        Fri, 14 Feb 2020 08:09:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696540; cv=none;
        d=google.com; s=arc-20160816;
        b=lo8F36oL9Fh34/le34arsDG6fmLWlmvuWSAm8FOptj3mYs30ZqYjvQwwsqIFFU8UvU
         pmu0b5mRoSKxwKljjCrxdDyXeKAxktBQ5l3oD+3mX9gHXCnQCFn4iCs+n3rnagHXA22z
         HHLE06SCkvlhLicodcqrZV+drvp7644O8ZdGFPyGzewdB4sCOx7v/TEQZEb0v/dQWc/u
         BLX3Z1sCcs6C6454amY1lwX4T23pGH8JjlN1PqyQjrp0P9EQKpBzLJiomZVc+s4p63wK
         NW+fHr+q0Gn9cSWwjuVypUaAvcaBc6zckrJ13K6ICXkul4foT5vA/lH1tQMH6pdLX/As
         sb5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=z1EFtZ/cIHcNokpEzEp4ziUpA7DQhT4PlDw64RV/hvg=;
        b=0j1nQR4Ro/WG5Qm4dY0hXWQf1285dt3rBTmeA3HiM1FF8LaZfvPV4PIyIxOBTIhiTC
         d51KfOuWQzPfHgtih3fLA8bP5fgmCLwIsPC7j/JlndDxhwa20UDaYFEO3OEKTZjpHONf
         tnWsidHkY23G0K/tgp4PcH1W+w23ZeE0rpBmoEX1P27maEuPSVdQnoIu66/W2DVPZQrc
         znpowVHwrbUGvQegC1leXyKsowj0yZ3vaYhHPEPMcIe5EpECvQhA7vwKECNJ4H3iYjFX
         0QOEnkuft3JnPGo8rDZofff1/VzR348QyG+fxcBW9wuQgDrrgUlrQ3hcMSuZllCUHhha
         9wXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=u40XGGBi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d16si335330oij.1.2020.02.14.08.09.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:09:00 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1B99524685;
	Fri, 14 Feb 2020 16:08:59 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 335/459] arm64: fix alternatives with LLVM's integrated assembler
Date: Fri, 14 Feb 2020 10:59:45 -0500
Message-Id: <20200214160149.11681-335-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=u40XGGBi;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214160149.11681-335-sashal%40kernel.org.
