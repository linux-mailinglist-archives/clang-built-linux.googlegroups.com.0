Return-Path: <clang-built-linux+bncBC2ORX645YPRBQFFVPXQKGQEAHTVLRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id D724F115908
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 23:14:25 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id f73sf3652720vka.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 14:14:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575670465; cv=pass;
        d=google.com; s=arc-20160816;
        b=fJwkqMzUc7YNXwbxPDJG2hORoghAzasNvV84hJWH6oETjjVXLtmw7U90+CKzKbf7wi
         P5hoSzB7aI0celBoVeFZnN06YE39NCcgZRg5aMiGNU9Bw9vSXZ6odYmjbjSMd3FDw3Br
         QID2rZlW1yoaZ4RTpNeBXjVnxEJ1OzkMCz+cFVixdz/nGBOpKptFX/NSJDzmhd9yZbyO
         6BiyETopQD6mAlScdmFsvjKHCD2zCzAzTBbuCoR/9KMgglCJhnl3Ddm+mtXR8IeQZH9V
         PiTVez3rTxLgQ/Qlaa3OmHQJFgsZd0Y3DERDCcTd39VELN+I7Uwb+qi77y1Ga7w7EPfv
         H/gQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=GFdZjQUVqTWIcnt+vq6Zbs+0355Mo8vsVy+0xTZYHos=;
        b=ZXEt8OUGBCLYBkGn62NsRsR/XLhvbn53cZJKheaLpvmHZpXMMmx72T1hgfl+yGQ1Cz
         JrfUmfgUmDY1I2VFzajcO4f5k1KA04szzmrElVj2FpOuF9VtC05v9ok2UX0Tak/Msi2S
         V2kPhG398+5XFTtbVqsXW2xc6HV3h+U9B9nASJ6vKEcbAR66jm2FO0dXDDbBxqKGXiO7
         uQ+6E7UYgfZQG7w4mvNjn7DUHCoL71nfDU3//LvOKiVKem0pUVr0FbM0+F0MntjvMONR
         fFHp++2ERy1X42G78pB0uneC1aKzLuGzZu/VWdEdGCEh2K9COo8XQog2qyHKl4yT/7b5
         wrng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c1Wx0pmg;
       spf=pass (google.com: domain of 3wnlqxqwkaaczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3wNLqXQwKAAczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GFdZjQUVqTWIcnt+vq6Zbs+0355Mo8vsVy+0xTZYHos=;
        b=Ge/gyBxLHYhkHt9dp2ftpbzKFCSQoSyou7a1csjwOM66skR0fzNiqdLQ840Xv8WUlY
         568GZ5wt2Z2bXs7wvjfr1VTzqvXhA8RaaryLn62efHmQDqfbljFeXYu/T3Vv4VWVTunO
         Ax6wSKnIbtkdPWocdd5IMhjEsZdruw8HKgvzEsxmOHuknZtb2uoNL3UYyBlns0UJwwHT
         p+kBGz4ekrWxM5El1cTc6RIaGsWyRDacRediehvlm1hXSMHUB94dLkzUlIJrsgOSLStb
         9mzuwt2lHCtHGKAFY3EuapApFJagY+yVYe53F4Lm7rRFO2gcbEwKpLgS3iK80aLpYm4O
         0HYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GFdZjQUVqTWIcnt+vq6Zbs+0355Mo8vsVy+0xTZYHos=;
        b=joyAEB8XGEaZlkiFCWB+8EV9CaFaecu+Dv1CWP6ccrzM2S1V4BQpsxKMwTVsZfBvXi
         GszOA7VrlWUgSLAloP96ADC3+sl2kTVXcqcPm47PQw9mrGOP2KtcEHU+LLm3uaaIWg6L
         JflrLqgY0C20QcCzxSCb0w9E2PnpZZCeMF7o9TX53wR7Um4BdxiDF1NDdtKTvCOMlocw
         EoYP3wv2v3ZJnTQLtUjqEWXmJEZw0D1mmWLHfqKHdlfcSMor1A9tNV42YjPr0+Jl1qA8
         RJVw4QJN0SS+BT+xYMhCSr96zVbU0EXa7V1lBeQjwcmOZ34vMtwC92Zot8JM1bLwUbNY
         yGHw==
X-Gm-Message-State: APjAAAUEUdSreJqAveljyKDtF7JdTW3hZ6Tf5B28xCnlV0GqYAGAO4ER
	HphnXQVpbrubFzl/1Noiib8=
X-Google-Smtp-Source: APXvYqx2lfycvt9OdKbYDDWMy++r9ovL+Jy6Aj2GpCWQW/yKoidLwHCHabV0ui1xvirIM+C9PFz3iw==
X-Received: by 2002:ab0:3415:: with SMTP id z21mr15154764uap.9.1575670464895;
        Fri, 06 Dec 2019 14:14:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:42c1:: with SMTP id p184ls18560vsa.10.gmail; Fri, 06 Dec
 2019 14:14:24 -0800 (PST)
X-Received: by 2002:a67:f8cf:: with SMTP id c15mr11847747vsp.27.1575670464441;
        Fri, 06 Dec 2019 14:14:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575670464; cv=none;
        d=google.com; s=arc-20160816;
        b=dM6b5dJu1jFjYVq2vWkKVgwI15vzwagnh80SbWYb4KpISaom22Wtt7viHeuFHCUPCZ
         SOrnrTi+XxzF/0GwJzfBW6CWAvCMM+2dxFZaJoTwfYdBXpKuaUF9kE2PDDpGQgJeLpZG
         H5lEyIJ3fS9VE/DX5MwIVemhqvu2PylXto3RBV8qi8a7w5QaQ0tKXd2Eg8cDT2htn+ev
         4WDF7g0qilhUXAa+MzDHYUrhVr7PRWnnlf5zAS/KZBLNQQpA3gTF/FxIgPnFSspYJQI9
         LFGzL4iFl4IN2zRFtXI7NfXwEP9bAtk2s30bMqJG1oe6BtYODYO3+NIVqBtOo340E2Mf
         orRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=FhYYEjTDkPuKHbZnKePlOaf9pf8CUWO3nD3sOS+po+M=;
        b=zUL4Xo+jERMgUIvJVOFpTvYZGI7iSu9IGr2ckuBIt60TcKwPs4LN90+Orgi6YmuLpD
         5J0CpbzT5A3V2oa70PfapXJXN5XZ/bCiFwK3uVMtS7Uvsmb+qoGl3nYgoEhSTSQmznsG
         LuhY+GAEWaXACxrTx1lzt5blBVlu+V6HFoDs74Ebyv0l+13f3Bze+WV2pUL4yfII6ivn
         gSocDemQvDPg88cy/p9HMTY37Qw1nZm++EmHi1XOcDhvgvl536DpE7ZwjwXm4p33MJYJ
         VELZATJg4angmRwrNchZ/zQ5k3aEQlkQhqBz9HfjllTdvLPhJx/ThSdcpse4IBbBKT5P
         fv9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c1Wx0pmg;
       spf=pass (google.com: domain of 3wnlqxqwkaaczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3wNLqXQwKAAczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id n13si540813vsm.0.2019.12.06.14.14.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 14:14:24 -0800 (PST)
Received-SPF: pass (google.com: domain of 3wnlqxqwkaaczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id b9so5409157qkl.13
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 14:14:24 -0800 (PST)
X-Received: by 2002:ac8:2201:: with SMTP id o1mr15071384qto.247.1575670464028;
 Fri, 06 Dec 2019 14:14:24 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:47 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 11/15] arm64: efi: restore x18 if it was corrupted
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
 header.i=@google.com header.s=20161025 header.b=c1Wx0pmg;       spf=pass
 (google.com: domain of 3wnlqxqwkaaczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3wNLqXQwKAAczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
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

If we detect a corrupted x18 and SCS is enabled, restore the register
before jumping back to instrumented code. This is safe, because the
wrapper is called with preemption disabled and a separate shadow stack
is used for interrupt handling.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/efi-rt-wrapper.S | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
index 3fc71106cb2b..62f0260f5c17 100644
--- a/arch/arm64/kernel/efi-rt-wrapper.S
+++ b/arch/arm64/kernel/efi-rt-wrapper.S
@@ -34,5 +34,14 @@ ENTRY(__efi_rt_asm_wrapper)
 	ldp	x29, x30, [sp], #32
 	b.ne	0f
 	ret
-0:	b	efi_handle_corrupted_x18	// tail call
+0:
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/*
+	 * Restore x18 before returning to instrumented code. This is
+	 * safe because the wrapper is called with preemption disabled and
+	 * a separate shadow stack is used for interrupts.
+	 */
+	mov	x18, x2
+#endif
+	b	efi_handle_corrupted_x18	// tail call
 ENDPROC(__efi_rt_asm_wrapper)
-- 
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191206221351.38241-12-samitolvanen%40google.com.
