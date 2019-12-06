Return-Path: <clang-built-linux+bncBC2ORX645YPRBPVFVPXQKGQEBTZBJAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E77115905
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 23:14:23 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id h3sf4248376plt.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 14:14:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575670462; cv=pass;
        d=google.com; s=arc-20160816;
        b=t2PqqrWk6lfOp0f6h3C271SFHjK+KFETP0UWetzgodPEyBYul7cLhc/KYGLd1Thxtx
         +DsmZc9pQ5DK08wVZn9uMof1ppiYqzQqhcveb1w3X7gXnbBlN9UMWVp0clN2hDo1UPqF
         8eyT/EL9JtqjeMnKo3Slawt7WpE+OYJuLuIvrueljwxEj9dNZFh+q6Nk7qx7QeWMZmF5
         wFb59y8BkGMNHNPraSWz2VjCT3S/TrpmzUZCCEUQk17vUOzMwjZTuPBLI4+i2sUigRAl
         c8Z0l6y5yEbHQfHc6230uYHH+YbUyxcmsLmABKElJpG3nOFY6NPlFvw1XOonm07/ZoJb
         cFvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=IWqjPU/wJOd5xPGhCE6WHFGCJOnx4XpDe2uixl5axuo=;
        b=XVVSze8PXxDkes4kzr00F46biu0njXxd4UPDxQOYiZRlvMBq/3HAiswWJvW8Sv0lRi
         35+OULHDmYitA5DzQuqV5Lu3N2cmA4v1Th9WSaJRuSY0Ey9RcN117BZs/Kj30lqryKXM
         Ccyynmq9XOJ9wPxI6b5psHp/Pk1Wx20oNEE/89f3pR1ISCeywSnn5L9p+KSHy3lnFwFG
         OzavJ6tiCvT5m1Gc+Ex85rpptLNNJfGnucQze1FjXpP9mbD1RR6m237t65X685HqCiuG
         QVKduALfjngTQqBJw80XWtnW2lSYFEPoqg0Qz7M502MufE1XVZaG2IT2jdt5uJT3t2By
         tXrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XpQfC+Me;
       spf=pass (google.com: domain of 3vdlqxqwkaaqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3vdLqXQwKAAQweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IWqjPU/wJOd5xPGhCE6WHFGCJOnx4XpDe2uixl5axuo=;
        b=A1KeF93zIH6JAtylBhZBwQ1ZcHOMjSITI6QMSriWBfQ5ggb9yDtSL3GevCwXrAdLq8
         oSs1wyIKtgzpxv/B+9mEmqevwZADOqa8TIOnj3EtPln/bkz4H5eHdangdO+sRTJvZGHU
         k41hUOTXDzvPGILpPO2WBDlpFwVz4rvHqGIcOHpywZYqeHpPjjch9RiOAGefTwG37O7F
         2vcgMpIT8CYSy0XndeAeKorkADsItvA1vw0WieSqLhXEASxaxHAHQPZ/CQKJKQmmtnmd
         7kh+Xs3jsM95kn0rDyehZRrI/BJ0sc/ycG7ImjJNBymjFs5AdwJW/9lHRQUdSmPsJIwL
         ECYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IWqjPU/wJOd5xPGhCE6WHFGCJOnx4XpDe2uixl5axuo=;
        b=SvCPelvQMn3WXU4qzy/3ATXBD02f9Qq/cBCbgyWrnVMKa+q+USv1UJuQ4lQfW0x1GM
         UORsT2xSevzGO761QVudIur9joKx0KsxRQnzcKHD+EqkZIpN3IPdSaTI8jhJoAHhS4r9
         3b0VDnpe/54WB7e8uZ2mtpHcail7dsoXSmtKu68KaXj650dFAmCgAhbe4R2h1xqyDzyN
         lvbGIunv/2/o2FFsNRZUrpbN5RIYFp6qNAJm/I81wTH/rP6zwtF/67naoj7GtDyHlZus
         gDuwU4RuC5HUkd6qFu39drEbfauoQUkzVuqeuGi0iDpiaY4yVuyV8ZC/xDc/xBZN6Mdz
         mfSg==
X-Gm-Message-State: APjAAAWq+9kTlVp+Q8wrdV1wQWrEGO3ox+9mdpaZDLxqaGk1Uvqlqv3o
	UJMv/mhdBqDdisTx6eCA+Fc=
X-Google-Smtp-Source: APXvYqykQEjpTgpjR/t2Nzvj+y8Fz6Iof1lsNzCRzsoEuQ1gAdNUx9vzrL47x2WOUb18BzitkODoQA==
X-Received: by 2002:a62:6402:: with SMTP id y2mr17282511pfb.59.1575670462483;
        Fri, 06 Dec 2019 14:14:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f8d:: with SMTP id 13ls1987109pjz.0.gmail; Fri, 06
 Dec 2019 14:14:22 -0800 (PST)
X-Received: by 2002:a17:902:9b86:: with SMTP id y6mr17597687plp.36.1575670461991;
        Fri, 06 Dec 2019 14:14:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575670461; cv=none;
        d=google.com; s=arc-20160816;
        b=Qu2gP1w3RxHDY/1yjJXY3kvX5gN+kTYc3N+Gju+4ZL90goQXYB9+igXyCjSzSIwo66
         tZinBypGst7j44FJa3zLEby3287eOx9QJxKfyv1PUeMsh8+cs7oKQhzen5Tb8o9cIFf6
         PY5cbrWPtgDwzIjGfaeZxafeggw5SF0HUTbBU9cJdu4tsig+0Q404+D5hnL+CVkje1P4
         mvkg5uLKJfR4fgEAwc6330faAxK1LziAb8VkY7LfFsn0RYLK0fpQOCp6SWh+ZTTpbow0
         jRi1ltYe6/4pGGEdlJLDH9P4osgL8j94BlVwI8uhghLWZNITDvmH+fVkn9wyvrzDKuOw
         6cVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=q0VCePxuQrqw4BBZGnamleajd+Jt3fiHSwLdib7c23k=;
        b=LZXs6TUJrdIOOxOzFA2t0dSFacfwG9gsn92FkgKJvLT4tSY33NBBzlDQbfvtzi04Hk
         4k/N8lTroIil02SF9MqsHmuInbdxywZm34WKYCgBYFD8EL7IQ94WTl3ZGwDzeR02UbZ6
         LNEqwZjvJD8j7PksFujuSefObx0woAJvgX/Zps9hVhQWTtakL1K+m20oz0vWpAua/z6s
         NR6swMimFLMKxFugB2gvSdpG17mr32mjIGFmA0C0rfYdnvUelYzzgzWFVNR66P76BEOP
         0FQJVhcvLMGgXNGXkyKCuYKWBL8s+ohwY3QvxxcNDkBI0F+Oba08GBmcBUIcFgUyWvDc
         k+LA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XpQfC+Me;
       spf=pass (google.com: domain of 3vdlqxqwkaaqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3vdLqXQwKAAQweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id cu4si232722pjb.1.2019.12.06.14.14.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 14:14:21 -0800 (PST)
Received-SPF: pass (google.com: domain of 3vdlqxqwkaaqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id s6so4193560plq.3
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 14:14:21 -0800 (PST)
X-Received: by 2002:a63:d543:: with SMTP id v3mr5881958pgi.285.1575670461425;
 Fri, 06 Dec 2019 14:14:21 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:46 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 10/15] arm64: preserve x18 when CPU is suspended
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
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
 header.i=@google.com header.s=20161025 header.b=XpQfC+Me;       spf=pass
 (google.com: domain of 3vdlqxqwkaaqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3vdLqXQwKAAQweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
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
index fdabf40a83c8..5c8219c55948 100644
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
@@ -73,6 +75,11 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+	/*
+	 * Save x18 as it may be used as a platform register, e.g. by shadow
+	 * call stack.
+	 */
+	str	x18, [x0, #96]
 	ret
 ENDPROC(cpu_do_suspend)
 
@@ -89,6 +96,13 @@ ENTRY(cpu_do_resume)
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
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191206221351.38241-11-samitolvanen%40google.com.
