Return-Path: <clang-built-linux+bncBC2ORX645YPRB5FX2XZAKGQENBZXAZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E57816ECB2
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 18:40:06 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id o2sf9389288pgj.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 09:40:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582652405; cv=pass;
        d=google.com; s=arc-20160816;
        b=bhgp0o37Fbc+3GBe3BPp2iHzn1FuYQGTmneyZZkNjaYAA4rMoK57Mp5v0rzrh/UneZ
         AzL7K3aXLSxQFTxfIxLI866pnkLnXrSUw55ELUmrwF433/xJZ9RjEFfsKbaU2YGBl/Qp
         VFtKHUTrPnZSlrw/vdyBuqHHEnEozmvR+sesKnUloZnPhOLHe1cDvYichs0D8iNVmihh
         RdBjIRkeiybxe4tVn23k0SEcvlc30TZfOjW3Gk8FaZk6kPipHK17t4PQ8LRAbzlwqtOn
         worqqiHJFG+8sWMULuWRbD7mjvm2XHmCTjeUkXK4guSS4oKrRIG/V0s0LceJnAsyK3fb
         Zp3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=rar/ZNxRBBU7pWAqYvQT4Bj984U7bSEbpcx8BMf36YQ=;
        b=kdH8MqQHSV2hGDFcyO31Xv1nctfzjKxfMxhK3EcMq1KolgoF7QC7kC9Y6LOiAwTRFn
         TSPWtsyWjTv4DYOzoO0aRy4OHQ0EY1jTP6zTrZHtSZrPXYlCoHhCaDRH8OAPScmsK+xG
         7lxl/yhcRQj5KoxhOihwKiYvLebaBdEXiCbvVQ9JwPmg0hLi7jD4iHkY0iNAcXpis3/2
         C6EOEELo1NgQ9eSiMNfRj5eTtQ6vJHo3uJ45VsaQ0VViDoCnGdemFsUajs5oa7nqYyRS
         4mTrYaASI7baWMqR15HtspGCGSt0rFWz6mjQ9A4I2Fzb92L0wAYqO3OpXZKrG10IUVuh
         0Ogw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t2cjymvo;
       spf=pass (google.com: domain of 381tvxgwkapgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=381tVXgwKAPgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rar/ZNxRBBU7pWAqYvQT4Bj984U7bSEbpcx8BMf36YQ=;
        b=YZU56yqzaG+JO0sosJls+XryhujRcWqtttuSQC4/hOhLz+Tq1g9EW77d932euvyFgP
         JerVpla4r0x7XdwMkzpkKgup7rDUtUr5+dJoefySM46v3BaQfx/8sWNuzfoxVcvasYxe
         sohP+JIe/mVmJeJxMi6K50jToVglpsvplj0Oa7QXuixIn0TkOvBoBequz6DyMr3H3RKp
         L2mF1EgDxP6hDIe9eASVhArW77M5rOcWJWLjU74/1eenTnOc69cOypKpGNn77rB4j/V4
         dwnhoeBLPFYRpVs7Lj6hLqZ2QSVGssOqanUB33yKBTvk9EjvV31GrabhM9TwfD2S5rso
         0G6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rar/ZNxRBBU7pWAqYvQT4Bj984U7bSEbpcx8BMf36YQ=;
        b=mldu/1Dj6I345H9qd4Owx5myYmp9d4uozK4/2c5gBRbjjjT6jrXi7brvbiSXJWJRJv
         DK1I6IrWfAnL+hh9PBohck5xSpIQ487hxSbhK7E6wczKLsVrvhn/cQeqtazg7a8UBJ0Q
         KYpneWf1TPGRbt3NsBi/o/6kNgfi/gKICRTPMdWDspV/2MbvIEUI1nru9u1cD4c9h7i9
         o6F33IH9coDH3HU9OOiRQEdWvtTxdZPKYdyPdAiCPZwlt274p+aakA2PlHSBTIvImPA1
         pLHFYK5KMs9aYqr+qUaM/Dx8GyJzgocbe8/VDIB+VCJCblrEeeF40nGqnNJmpSbPmQ+Y
         qNmA==
X-Gm-Message-State: APjAAAUQBXcne1gS8SySQz3WolH51D7OT6VLg5RTzSwAiuZT3UJySATL
	ouNvKHWaR9lRF9gJ3TpYqio=
X-Google-Smtp-Source: APXvYqzRKmBVeP0RObBeHwXBwWCayqriEizicNhtNAPItSylPFkxMyDCbmN0vAZmaiDBFTndEiuWcA==
X-Received: by 2002:a62:17c3:: with SMTP id 186mr59102847pfx.158.1582652404786;
        Tue, 25 Feb 2020 09:40:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1bc6:: with SMTP id r6ls1468791pjr.1.canary-gmail;
 Tue, 25 Feb 2020 09:40:04 -0800 (PST)
X-Received: by 2002:a17:902:6a84:: with SMTP id n4mr55619603plk.294.1582652404217;
        Tue, 25 Feb 2020 09:40:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582652404; cv=none;
        d=google.com; s=arc-20160816;
        b=AwjLiKQXCXUG8e/XTYMFSLuP+jheFhjcxVc9yIlYNXOppnaHbkV8Bikmu0iav34cmt
         j3JfSrebgVJJPQbpGbtWDH/7oAXe3FLNjRtEcwVtXswh7BP7QLMMc1821yFBYidSKExa
         r2XunkUWYj74i/OoSHkRUkigZpUAEXD5iHUj8VvZ/G7TMVOkFGt0Z4p+g+fpXam9UckD
         XrqpjvOx+87YH3tQ9cJ1hAxTsYLv8IzIGLaAMLEEANI49758T3IB6A+UCiE57mw/X2pH
         jYtcSQpkmEb1+bo4wyyMvqlzrQBKS1UZKP7SbAacUewBugSwHwP6+xb53zZKcfyYg3dZ
         CshA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=tR8HWR8eyR6LK2Q8Pau54PB7Q0F7v08515rGGzIGLyo=;
        b=AcsLBa0NmW0f4pmdY8zD10vQHUyjTgy6jHhPJ13ERecTO6X3QMpLx5yg+p8XquP1hE
         RzKCWOcbWzD1rsQyZ09bLrUkZWZ/YHc2LbKi5I+0X44WcxclVqQRZdxnrYsvFUWLHPAU
         HpSNbTrvCHLb+KbfAotL3qwiGwNWVpRpDZiCHBWIObO+E3f9qmbS3YTwwPxXa/Dzsxdz
         t/ONRm4cqbgTh1SeBKxZ5qKsufxnKSB8aVxQejMv5h8/jQ6X6aRsDkqMrRNfxetuelFm
         OTz7lTWDwDoQCyfWP2HWFVbRLtV4J/6XClpP0t119VrdOHy23+OJIeRbBTg63U6M720L
         0LIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t2cjymvo;
       spf=pass (google.com: domain of 381tvxgwkapgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=381tVXgwKAPgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id f31si7962pje.2.2020.02.25.09.40.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 09:40:04 -0800 (PST)
Received-SPF: pass (google.com: domain of 381tvxgwkapgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id p19so7891741plr.8
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 09:40:04 -0800 (PST)
X-Received: by 2002:a63:691:: with SMTP id 139mr62220302pgg.325.1582652403730;
 Tue, 25 Feb 2020 09:40:03 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:27 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 06/12] arm64: preserve x18 when CPU is suspended
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=t2cjymvo;       spf=pass
 (google.com: domain of 381tvxgwkapgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=381tVXgwKAPgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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

Don't lose the current task's shadow stack when the CPU is suspended.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/suspend.h |  2 +-
 arch/arm64/mm/proc.S             | 14 ++++++++++++++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/suspend.h b/arch/arm64/include/asm/suspend.h
index 8939c87c4dce..0cde2f473971 100644
--- a/arch/arm64/include/asm/suspend.h
+++ b/arch/arm64/include/asm/suspend.h
@@ -2,7 +2,7 @@
 #ifndef __ASM_SUSPEND_H
 #define __ASM_SUSPEND_H
 
-#define NR_CTX_REGS 12
+#define NR_CTX_REGS 13
 #define NR_CALLEE_SAVED_REGS 12
 
 /*
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index aafed6902411..7d37e3c70ff5 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -56,6 +56,8 @@
  * cpu_do_suspend - save CPU registers context
  *
  * x0: virtual address of context pointer
+ *
+ * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
  */
 SYM_FUNC_START(cpu_do_suspend)
 	mrs	x2, tpidr_el0
@@ -80,6 +82,11 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+	/*
+	 * Save x18 as it may be used as a platform register, e.g. by shadow
+	 * call stack.
+	 */
+	str	x18, [x0, #96]
 	ret
 SYM_FUNC_END(cpu_do_suspend)
 
@@ -96,6 +103,13 @@ SYM_FUNC_START(cpu_do_resume)
 	ldp	x9, x10, [x0, #48]
 	ldp	x11, x12, [x0, #64]
 	ldp	x13, x14, [x0, #80]
+	/*
+	 * Restore x18, as it may be used as a platform register, and clear
+	 * the buffer to minimize the risk of exposure when used for shadow
+	 * call stack.
+	 */
+	ldr	x18, [x0, #96]
+	str	xzr, [x0, #96]
 	msr	tpidr_el0, x2
 	msr	tpidrro_el0, x3
 	msr	contextidr_el1, x4
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225173933.74818-7-samitolvanen%40google.com.
