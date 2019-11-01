Return-Path: <clang-built-linux+bncBC2ORX645YPRBTW36LWQKGQEEZIGWDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id E1320ECB02
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:31 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id z64sf10763056qkc.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646350; cv=pass;
        d=google.com; s=arc-20160816;
        b=f0N+yyJfEiKpsLZaE8noSIhWlBgG83P2Di8p22bfQ+S3XSh2PHNjfv0GL+ezTAxnJv
         mLrN8WhKUz91Mcc6OjYQ/zBlvyyXDxMAWKTIlzBk+CcoZLyEcpDXt/PpoWbFW+9LEEbj
         fYYaKo5JeZAaj+8nwn+Ddql4XbqCcHB0rsGg4m/Ob/ipwEF0CJdYcou5HD/UBUi79XeQ
         Fndq8J87jicyBILBC2vFdlHl5+HEkAa0If/rPJQg6I5/0utAgy83NI2gCA4KsRx3qt0M
         taSmTq5jtosEFA+VypYSvRxH0pMMeHC7oY3Fb9LiL7OLyddYPbS29hKfxpFFemq7kyhm
         7AgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=73zy7VbyGBXgOqJuQafmAXf/1SboAU7JUDSUFZrA3kQ=;
        b=G4bpKK+HzbPcFqKkBikGZ2O3Yi+5IzRZWtF6orG9aS0pzd+CmpBfETQBoy5vgYa5eT
         lwYomqH52HpVhNojoYOv9fIKd6hkJ39jY3tssWu58W9s42Z9TCRvzBtHlvCgRIfwKeFR
         XFNUEd0pdDYZIBbMyiroXViGl9o+Bsf4QPnL1aJtm578tmZugc7zGYpFBRYwPW/o8nQp
         Smc8m0K4obWqQfnQC2ZJ9dr8+EgQpcfInSMJXh736u82ls+APPMxH17hKx+wpK7QM879
         jnpnaSENrdjjLHwI4/W1QYeOjND0GjueDmlJ1OK1iK1cKy2T9pJKf74BWNvW2qPoflpX
         oSzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LtAl7Dty;
       spf=pass (google.com: domain of 3za28xqwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3za28XQwKABA8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=73zy7VbyGBXgOqJuQafmAXf/1SboAU7JUDSUFZrA3kQ=;
        b=ORlKO5ZKBbJ9Vfp2iM/vzpyfoRxf+icGthl47M5C8t9iNASaaNooEtKF/Lu5He4Vn0
         n6w4KIhaQExnPhjCG+qk2h1OwnhRMNhWXCkF+Iy/509WXm0NGvhwKghCsjiEoAvqU+5B
         S4SNvpIQo46dQhXdan67UI/ZhsNN+hgeLyxKmqxG47vSLdd6sDYkqYAOw8sm+Omx/Ltc
         Y4vfPJrg/5qlG4VmRszhsSRQ1hjQFfRNkZp46Tvir6biIbNc3iPHgicEnHzzIucNFBDS
         srkJjeQ74ISHLq0G44fal1JAmyOGD2Nm6bpdPvDgbCUkGX9mQ0wYrg6VZry5/jUDaIJg
         xZQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=73zy7VbyGBXgOqJuQafmAXf/1SboAU7JUDSUFZrA3kQ=;
        b=nyS+WZwu2r8y30WBY4B0Y5hkoctTv1f6L0v2+HREG+qrTjgscbdec1yvYpGvx9eEPU
         kMcMhzhuZa7MPnCaNRSWOOU+fILFtDbqIBdopFtBg0/+UnH0kfh9ZR+5WapQymGxGEDY
         WVNKs6tbo59eplBnKlSZXxs4gDOZWDOppoxvMZ6gaVowTUwOkaOeJQqfbCNlJKNJtaWV
         BWLSYkLXTcxlIA48S6fr/NigGfoRChvABvckcvw4QvwpMTgD+66bWB04YuOGMIcUC3Jv
         blz9Q92abLLDqmKn7Q9QswWBOlbcCfn/4nvlYmLh9xJ4/gmlMEKdNWQ7KrALwmvsc+fg
         fUXA==
X-Gm-Message-State: APjAAAWKk4wmvocUL+2TjdF0DFXA7SO+RXeQp4BiCFIBOyPgrTHRaHhK
	N4Z2uWRytYPW3eodyBUbCAI=
X-Google-Smtp-Source: APXvYqzCeyK6BKUp/0ppXW1VXv//hrArhNNrUqkSn99TmWD8D3imcEatABCuxB/pk7uD2m9bGu+TIg==
X-Received: by 2002:a05:620a:112c:: with SMTP id p12mr2154448qkk.179.1572646350348;
        Fri, 01 Nov 2019 15:12:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:95c:: with SMTP id z28ls2229839qth.13.gmail; Fri, 01 Nov
 2019 15:12:30 -0700 (PDT)
X-Received: by 2002:ac8:36c4:: with SMTP id b4mr1793071qtc.149.1572646350053;
        Fri, 01 Nov 2019 15:12:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646350; cv=none;
        d=google.com; s=arc-20160816;
        b=FLvyoMHt93hhnCIFrXzjDcZN4fSOY6iyyqt5Ly1aLyP63lCfN0rs1Yqfl/hBt6afP7
         sLoyUo7NXtcljvCghlyJF1NTO5N1TQsh5wlgC99gnYVaPARGQNX/NsSiqz1kCHYOyysz
         +Upao70OQM+w05C5hQJ1JN98jnYDU3iYLIuozR/eIHv7XBb4bzBIctAXnOW3pE1Odmp9
         uHpcQmbamFjBkUoVmbCmYcybXC+7gRLdOWD5rQNaEkXOUJ4TzbALZL6DTvcfgOwl5kcH
         QTD9J3G50wlAng1ftI/ryD8YXNbHYeQEVk4+CCPLjSPxXFNt/rD0UilnfflHAMzDBJCF
         vzSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=oPoEfiJ829HFiTJF4c1zGL5TdlrTqAGNgCQhkPxdZv8=;
        b=PaxjlJ22i6VyR4BLGVWr80mW6A2LV8Ha9UJ43tUq1LbP4stn8ryj1INrQ3zVdgDaAJ
         xfzWNUxn7A8Wdi5x8uFuhMU6wvsrrNDDGbgAXO6puTijJS3AqB/tf4+WVh9TuLbKQq+w
         I1QcuFFwS0ILFUjpDVJO3ePKbfB2BMppqxzj1vSt8XUWQwbdKdonsARuFoYjc8jGUtPr
         Hi/PEzzOO2t8hwpR606fJsIHFPVNvJNLpGREkvX5XJjZAH7c3rlVsXurcrbH+L/oH+xW
         B7INseLddXCqgo7KTcQ1Kme3SYSXURats0rURWib74lblLBRIVr9iVzc3rXua3W/tPTV
         vzGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LtAl7Dty;
       spf=pass (google.com: domain of 3za28xqwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3za28XQwKABA8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa4a.google.com (mail-vk1-xa4a.google.com. [2607:f8b0:4864:20::a4a])
        by gmr-mx.google.com with ESMTPS id z41si615419qtj.1.2019.11.01.15.12.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:12:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3za28xqwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) client-ip=2607:f8b0:4864:20::a4a;
Received: by mail-vk1-xa4a.google.com with SMTP id t128so4460171vkb.9
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:12:30 -0700 (PDT)
X-Received: by 2002:a67:f7d0:: with SMTP id a16mr2505843vsp.108.1572646349491;
 Fri, 01 Nov 2019 15:12:29 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:46 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 13/17] arm64: preserve x18 when CPU is suspended
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LtAl7Dty;       spf=pass
 (google.com: domain of 3za28xqwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3za28XQwKABA8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
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
---
 arch/arm64/include/asm/suspend.h |  2 +-
 arch/arm64/mm/proc.S             | 10 ++++++++++
 2 files changed, 11 insertions(+), 1 deletion(-)

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
index fdabf40a83c8..5616dc52a033 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -49,6 +49,8 @@
  * cpu_do_suspend - save CPU registers context
  *
  * x0: virtual address of context pointer
+ *
+ * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
  */
 ENTRY(cpu_do_suspend)
 	mrs	x2, tpidr_el0
@@ -73,6 +75,9 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+#ifdef CONFIG_SHADOW_CALL_STACK
+	str	x18, [x0, #96]
+#endif
 	ret
 ENDPROC(cpu_do_suspend)
 
@@ -89,6 +94,11 @@ ENTRY(cpu_do_resume)
 	ldp	x9, x10, [x0, #48]
 	ldp	x11, x12, [x0, #64]
 	ldp	x13, x14, [x0, #80]
+#ifdef CONFIG_SHADOW_CALL_STACK
+	ldr	x18, [x0, #96]
+	/* Clear the SCS pointer from the state buffer */
+	str	xzr, [x0, #96]
+#endif
 	msr	tpidr_el0, x2
 	msr	tpidrro_el0, x3
 	msr	contextidr_el1, x4
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-14-samitolvanen%40google.com.
