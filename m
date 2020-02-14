Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOMRTPZAKGQEYEGOAVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 972E915E1AA
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:20:11 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id z39sf6016414qve.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:20:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697210; cv=pass;
        d=google.com; s=arc-20160816;
        b=a7BGkmXooWpQeTAZ2NA/hzDb+h950jixIouh4W366zrUBNil5YEdEHF8872kip7FHk
         3U6rZTWCZD1/wtzrCyIUvop2t4labn/wiaIfD9tkN86EUpWYQ4esfTf92MneRlPCQ0Db
         mViqo2adfdI1VbgqgQsntsK20fGW0U1itMJAMKUJyKY+BnY0ifGr1oaz9XYkfnjQBXU5
         N05nQqQdncroNiLHhd+NU4AGoli/USC3h3DvFPZEk/acFYunpLJLcB9i4kCvcpk0coqY
         JUveQfqQBHQtqRgiksZwHR9OcGJ5IjD+HzBCNl+Aab5J93Pizji1s/GEqR8uUZAaPSt9
         mB5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+X5XZgwnj1ZcSOuI6VUhsZGk9fcVd+dLGh0mzrvcTEM=;
        b=Yb2KfvQ3warsQYlQGWEn3+rYX1YoJpw8ioNChtTgmRZp+RTw8//0UulnEGEo5UO5sa
         MCp7dBApWKXjl9F/YClC+HCZ8eOZy5/KIGKXvK5aMID0Ti1pqQU6hArbxc8J7gnTjA4s
         w+kTg/ijoAcmz5PYreIYb4aajad26VFpmXYP7Oi+3BftOFaj3a2XCkXKqRDXJ6897h4C
         VuYmq80UWq8zdsXwTKoBjjdKwIycyl5ALJAGmHxSRrqNd5xKk7GjYBpZYgWX6MEHus/z
         7O/jRz+VNccov662mcMmOzs44WzVs7Y0Scg9cve8Aq0OH/L+jmefPXnWmKEBe/4B7zov
         5rXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oXGa5R4B;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+X5XZgwnj1ZcSOuI6VUhsZGk9fcVd+dLGh0mzrvcTEM=;
        b=Y5etsAa+JzK0tuiQG12C1SfsdZq8OnUBhz5MHNOGvYQ5XWJ42GNE752x2i6E3vGJrl
         M6+Ir3yMwkqkQAcI5vnO2PD6Sq8WLR4QgVaNnI94YX49MUXU7/8DdyrMPsxbmBWODTzp
         UGrp456pGi1XeUvYZ6YPyLva9Ap/0xbmxNui5L9k0IwTuH3PZHax6oA0Yp8dAiZpsfvi
         kKWctjO41C37mYQutNOeLdamtywWUInUIwp1MyHbOGs4ODeAFcNwNnKibdwb5nvPzfiN
         zh6DgH9PFQ6A6YkWQFXXfNeMXxQmHDBkF10Qex9Cs16J1AkQ5VlqzH6Z2Hn35cn0/8V+
         3sfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+X5XZgwnj1ZcSOuI6VUhsZGk9fcVd+dLGh0mzrvcTEM=;
        b=DhicUQa0kBCnR+bO7MDSuYDGN2mvrM43qdcebt2LiOJhTgJBlS3+KQkMQiVQs6pQaa
         GZKx5FqRWe7GJb0JqXVP90fa9yR9txRKO8E3iCNoxTD9kZcrQt77l/9es0muF0Do7fqg
         Cvq6R8GYJqll0BTlDquSxg/tD2R7CM4eCclaWCo7JQVwgQVXsB1L8ymIgWWxaeS3avgW
         Y2bM+yWZxNF8M3t5MtVUqKLYgm3f6sGQaLGWOn1QQHsso5Mx2LgraRmbqXnxWzbAxaQp
         bhGuv6frTpfqqhx9EsKnavWEJUiUk/Mz6J49E4A1YhT3stsTmLKSFs+QGcxNy+xBoc3f
         8MtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVdM75q79Yeh61NLkDLEQaRbR75CHgkvOS3jvvrvidVPUZSaABz
	lkh8idiyHxgJ3d1QqjJSHzI=
X-Google-Smtp-Source: APXvYqzxqdZGee+w84uyi4uuIHYc/mr7ib6+lBaTLvAhmjKu1LsHJrOv0qQr7tSEnnwG7Xwu/JUu6A==
X-Received: by 2002:a05:620a:1415:: with SMTP id d21mr3148855qkj.17.1581697210047;
        Fri, 14 Feb 2020 08:20:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4682:: with SMTP id g2ls952570qto.6.gmail; Fri, 14 Feb
 2020 08:20:09 -0800 (PST)
X-Received: by 2002:ac8:51d7:: with SMTP id d23mr3164151qtn.139.1581697209603;
        Fri, 14 Feb 2020 08:20:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697209; cv=none;
        d=google.com; s=arc-20160816;
        b=x2Vb4ZdOQx8IUbbL4igT4MuXMY5wCYcrfk0N5vcQegAecxlt9Vx7xTvPer7SBLYyAn
         6c+kQRLuZgIgi+cwX2QUS8RgwgwKVOWrSheWaeJ+HjCUv/Zr348E8hRGn15YQ7A+3bXk
         67VoqwIQOJKWiTkvdyDEE7d/CH7YqH73ivw9eDlpb8hJss8KVMWv+diXo6O0wVFciPM3
         RE6GSe94TRbz3riuAg10aKKrCw63gIjzeURDLJqIZBhsUTwT1rgOfs0CEsKGBQEzrhWy
         FAJ/XmUNCOISGdt452Dx4BF1wRe4FK3H/UXN7J+yrgXr/vDsCDNsBuMWjv6aujqJAFuw
         WIpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=yHZK7QXJGXBQw7FJWiAHVg529L/e46wYCcklSHtbupE=;
        b=JZoJ73tdQQO1RMdHyDHq7C3OzpxBdH5ow18RZXa3I1AdNtpwx4Ezi+vx71Vvhji8p2
         2qAQiPYVeS591ENhiqxRhoA52gFPfbBlVqhaRzEU9tiBwQRR6JOLxZ01azDfgwVg9hQK
         S552V0sJt/3l1OykqgyoNRuZHBAVjSnDIT1cisQSX+R0qUhA2hFvj6MclrrxbKZoh6Q1
         ooj0eJvQSDcVsRXKguYNrcGqd2r4jfg9qsHiiMZscysMKkp9IpfyQ+WG5mSQ9srOJYyZ
         AtbL/bm6LEHGZcTNok2bVLcUkj5Km4qm5kiE0VTDz34GrTEBoLoQt16RTbLJFzvnwNoA
         eDTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oXGa5R4B;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p23si249379qkm.7.2020.02.14.08.20.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:20:09 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 94DD02472E;
	Fri, 14 Feb 2020 16:20:07 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 134/186] arm64: fix alternatives with LLVM's integrated assembler
Date: Fri, 14 Feb 2020 11:16:23 -0500
Message-Id: <20200214161715.18113-134-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161715.18113-1-sashal@kernel.org>
References: <20200214161715.18113-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=oXGa5R4B;       spf=pass
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
index a91933b1e2e62..4cd4a793dc328 100644
--- a/arch/arm64/include/asm/alternative.h
+++ b/arch/arm64/include/asm/alternative.h
@@ -30,13 +30,16 @@ typedef void (*alternative_cb_t)(struct alt_instr *alt,
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
@@ -57,15 +60,14 @@ void apply_alternatives(void *start, size_t length);
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
@@ -73,17 +75,25 @@ void apply_alternatives(void *start, size_t length);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161715.18113-134-sashal%40kernel.org.
