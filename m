Return-Path: <clang-built-linux+bncBC2ORX645YPRBU4EYLYQKGQECLESJEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3D014C037
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 19:49:56 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id y15sf9118986pgk.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 10:49:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580237395; cv=pass;
        d=google.com; s=arc-20160816;
        b=TYUZE7u5cKqgfd0j07aMSdLlLYBUcQ3RtDwn30r3JJCVjHv+K69ZyJngInZ5GFR38a
         tbmzz2ir/auB23wb0esNpdsXopXtwFa6Wk6Q1aNhhlLZR5Hk6knDPavRx3GabAoKKYK/
         LwDmjeUVO6ZwObbU02UxuCoH4IjBef8e4LBij0TZTLKUuPD/JsJ7RavE7/BJhARDlANa
         PaGGBVz2joGHPsBpXtxFisClUzd+d3ehQ4BYCsj1EdVMYYt/uDkznvZm1NAGXw837mzb
         8Ax3dB+34jawViXaiSAenGSPgW86kIzBw+oZZO+sG84hm4mEelC42K+/t2Gq0tvEy/rF
         pmzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Qe8zqiJLqdlGLu6irwrdeM8cmKT4qEenNYmt5GgVhJQ=;
        b=cvUFct6HNM6UFAij+AxIM+8nrYfHZQLsc6z9jC6FXURIB6dWePqdkhqfKdaz7So81R
         1drMRd469NVZT+ltIcIRum7FU9ZZjymTiuEvPpK46bmloJnxCGV92sfwPYMdGtZSFHH/
         BavIP1q5Z4IZErES02nG2JHE/ysE2VPotiFnrl2xXxPkvjRPr7kzai2m5bdIvDbI85pw
         5+7u6PTE9bJ3gPBHIl8a6RMshG6FTUvYmynmlBGoM4FbH0E7Sm1jhKOJvTQ5oPmKwMku
         KlkxdYVBEmddAypzQ7f6l+LgSpjCBDH47ePGCJBlRAHg3HAS3YDiSWT4hHEHyyF01brZ
         /T4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KS9unC98;
       spf=pass (google.com: domain of 3uyiwxgwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3UYIwXgwKABA8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qe8zqiJLqdlGLu6irwrdeM8cmKT4qEenNYmt5GgVhJQ=;
        b=L8ysf6Zn3xjBclpMABk/GyH7/dcry2H61PofYfjpzd0wIMiPmBboH5VMS6erpW/3MH
         SCSRzEanVVOH0vUB4rFRzPTzSpvCIpWQJbkFgvmMtg1RKwFBdLe3+A+uvrtGg+QGDGSU
         j75/84kXseQzYsvWlNKcxBaYLrcrSL4kgJG3XGF9hudLBmBCxKs60LwASQKCZCu7pbjR
         0xwPsBm3m1ZTFa0iBUe+R/hPETzmynkYCM3/nAt9x2awGMh+gYdikds5TEUMClDiV4Zc
         cwO+BF4kcFhjeqNC4flAbisEIsfkj1J8pZMaOE7PEbVWZHeuwQpJlbBIe23CjYtjRHli
         ZmEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qe8zqiJLqdlGLu6irwrdeM8cmKT4qEenNYmt5GgVhJQ=;
        b=is8hwMmonq+SNUd4aM1rGTSGTIUt1e2DP84zLw2zKSxPWySkonzNOxbUblj+jhj1aM
         QJ99NFCcCoJjHnK198fYgQrfF3MdLBxY+AGa+oZUaT4UQLadhIfIb8hfns60f5eysFYn
         ouySIug93OJSTioNFCrTTovwq5jwvEzAl6N/YCJ8XA5hsvTBlpSB6cfSC29G/lj4SDRw
         zhFCIcKHDG8AnTisI9Rcrr2YNUvk5IbICBsYu8pf9gpAUba01G+K2gMkTZFEm9kyuVRl
         TNK/+sJ/5f9A1IJ3TS8ci0gSIN7b9yqcWhV3ep5orblB3ihypCDXiGolRDd+N+6q9U7F
         0Rhg==
X-Gm-Message-State: APjAAAUSUYl8RS/lcOds3lZZ6a4cDvapCBwrG/C9YXhZ+bV8EscgHv15
	1UoZBd+CQw+9EgY3/qudPBc=
X-Google-Smtp-Source: APXvYqwXDPZWVIAURdarVqUSIqTfO6UlKX0HpnK0rJG/c+fZUprrc4MgKkQGC87YwSTbr6OSyzn2bQ==
X-Received: by 2002:a17:902:bd88:: with SMTP id q8mr15076381pls.13.1580237395354;
        Tue, 28 Jan 2020 10:49:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:94a6:: with SMTP id a6ls6077185pfl.7.gmail; Tue, 28 Jan
 2020 10:49:54 -0800 (PST)
X-Received: by 2002:a62:f251:: with SMTP id y17mr5473468pfl.204.1580237394823;
        Tue, 28 Jan 2020 10:49:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580237394; cv=none;
        d=google.com; s=arc-20160816;
        b=PV4Og05rdn4kvQIZwIBoLs/xxguuu+8VjyW0l0lAUTvydxJdXiyTLUQR744OAjf0lt
         vv8IKImj0xRkyzQEm5XkG7/2Wl6+bpNJLMq7n+5wkd4nXuFvRRNSHMjN3qusRYzvCnle
         wre+JS8wbT8+xZZwWWTzhd0+LDWatGBfM82Bl255HBk2nSCr7paNA0YR1kbQKJ/mwKG3
         6LKY8y+r/bsZ1ZIJXPyUnGN83MusVIqGZFNNmu8Xpc9grervlZcN5Z985Ppt7p2ilonU
         Q4RjoaoriJIcW9VZLKwhZr5qgGPOrjb7k190xMLQJ64OHo1iYYQ3N0sgD2y1yF07km5W
         pbUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=7qZDsX8PGWVYt4iEMt/hEQ+wAm1UsjKf1d+2vHZ6hPI=;
        b=MYCLR17uVotCSNLpDrPduXCmfniGj/f1lx2wxSJ/9JqkKlCTeOIXfi8+gwkLMjdL2H
         w0qzKLwPmDnM6DysEQrqCs9Q4aQnoIHOGdoiaSAxs9g8eII5OL5PZK0bpD3rYyCuH0+H
         /x0wmQeKZFApyF0p7C5SDmhvvJHAgkHoyQBTG9gKBxDG9KKkOhyM9s8g8iVjnqnXQ/Ve
         iELYEUr1SYJC3Qqggoz0vxdzWG/qpvF46xlERauAhPmOUQGLIW7Fp1CT8cnR0Ht3jjl5
         UIXtaM+GcPxFGgMZBnfwkZmNoDxk6RZoD/kyxUalgVo/C7+gQOZaJGPcIdQoJdOpTCeY
         II3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KS9unC98;
       spf=pass (google.com: domain of 3uyiwxgwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3UYIwXgwKABA8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id f3si113311pjw.0.2020.01.28.10.49.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2020 10:49:54 -0800 (PST)
Received-SPF: pass (google.com: domain of 3uyiwxgwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id e37so9109490qtk.7
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jan 2020 10:49:54 -0800 (PST)
X-Received: by 2002:a05:6214:965:: with SMTP id do5mr23635758qvb.202.1580237393882;
 Tue, 28 Jan 2020 10:49:53 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:29 -0800
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200128184934.77625-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 06/11] arm64: preserve x18 when CPU is suspended
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com
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
 header.i=@google.com header.s=20161025 header.b=KS9unC98;       spf=pass
 (google.com: domain of 3uyiwxgwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3UYIwXgwKABA8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
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
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128184934.77625-7-samitolvanen%40google.com.
