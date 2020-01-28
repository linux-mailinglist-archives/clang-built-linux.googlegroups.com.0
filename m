Return-Path: <clang-built-linux+bncBC2ORX645YPRBVMEYLYQKGQEJWQOIXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B9C14C038
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 19:49:58 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id n196sf3749053oig.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 10:49:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580237397; cv=pass;
        d=google.com; s=arc-20160816;
        b=vi97IY2KpzoKHeUHz3Cvx00PowHTS6QdugMTZQaoiR4p9hwFZHRsFG3gR7guo0gQqy
         KENU4/WNWdFBZzrY9kKl2szsGbl3nXHv2MZfPZmC5u2Qy3dc/KjYp2E4JjtYxX8LvGGq
         IQvL7XrJmu4qd8Udqyk2P/DAk/9tERjy9D0IJYh8b5QfYzmMg8C6XxDrEVI8migd1gyN
         jmdbH7ExF6XZxhGer81+PLfBQ9o9F5Drjlkdu1w4oTNNTcQRp7hIbpv77ULA89IpfHj0
         q67ZWYfq163Xq7v3e1ypsGIge7EifSgTsuKDudp6UVgsvfo9IoWTTe+jE/V0oV9glwU7
         Y2uQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=tdUFiuZ9wJRrZQ2qL04NJNF6c0rcft5RFX59vzP5XM0=;
        b=Ah4xkZ6oSDPxio94/cpO4uL/lu+sRqVwGqDTH//HoV7YamBnBvduIvCwFnl890lRof
         g51QRP1Ec4GF9lCMO/5W9nnrMCXUwTd32MXRzmtTRtY9EBZCGB0l01vJnxYc53Ge8xcP
         B7w31BlLUtnLi9UIe26Lwg0rHWLIoRdgZRhiH9JrQkYReGONionMEthIv/DAWApLfrPk
         X10Z7V7yjYgeh3YlJ8emi9Fv2iOmLea5dw+w7JymyL4wFv4JOhTw25hBpavZGaQqNc3G
         xkzKSs8UXpyeEEo/7jKgLEqfycMuP96uRdLfEcabEdnL21JYpCfhgUk2+bw2V5iYibUl
         f29w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iDoWJGqw;
       spf=pass (google.com: domain of 3viiwxgwkabmbt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3VIIwXgwKABMBt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tdUFiuZ9wJRrZQ2qL04NJNF6c0rcft5RFX59vzP5XM0=;
        b=MSg3zCIrsACjzOQzFi45SfdsUvo/NsLlbvHYmNi2VyvB/axpKlFvMBmq3haqFQSOA8
         J14f0i6U168QIi+5YKypF9X3RmoW8j0j4Y/RTaAlRCXIik46C/IgvsJ/kThfJmWyO1+d
         co3+rkpWu3Fzi7s/yC2wKMkBQ8abUAoBXZxzdQCIUukDWAApkP7OTllEzrW9ERWFkCjA
         r/ATMXeIgSJ9xQKg7ugLYNwAtPzGqbi/kqJYd96STx7/LlWPe9DgGAJDje2uESZtXmKm
         ExwTbL0ZXqTgHUcg32fIeQhJ+Dy9pXcM65fC96UlhWpdEaRegpkIbBOcxLoxKwMPZJQ5
         1/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tdUFiuZ9wJRrZQ2qL04NJNF6c0rcft5RFX59vzP5XM0=;
        b=GuUfFbceJxYTv4txLnotq78yy8/EvFzQMXK7rylHRVid40iXtgrv2K3KjXLham4QB1
         w8+C8ZFy0KMYZ2R/8jNjHYczEW9Lj4Gp1qIPDhPQpujbOdbQn0zKvme8h/hEngM3Tu/u
         QdR5KP5dvwQNuW23tKFcam1NFyfxMBbm9DtzpZXpAJM/ruPFFIUNnvSLzsJhn+wh0XQy
         HJ+xKmUl5qkG8XE7ZPQMXOBM6H6Ya49kK0Pfvdp7kAm1TDm1TNPuiJ4HbzyR21CeYiaT
         SmwIUW0KgAhhJkcF8e6SBw2SC1lQJLL+X/EHwRCBLR1jHtfwoF2cCSYrxbvk8AP55iQU
         ZazA==
X-Gm-Message-State: APjAAAXxI489OoYIsYzzHoYJPcBaES7z1ttu/Uy8LFD2ha0VSN6oRUnm
	bftKhcsLqHjzT2Q7HdkLiXc=
X-Google-Smtp-Source: APXvYqy/1WQiMHHAOs8XSPzXUy7R7EHkQPArLjihJp5xugfDpm9WBSTrWg7FjLf8YgJNm8huxe8XRw==
X-Received: by 2002:a9d:1d02:: with SMTP id m2mr16640618otm.45.1580237397391;
        Tue, 28 Jan 2020 10:49:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4a4:: with SMTP id l4ls3390869otd.11.gmail; Tue, 28
 Jan 2020 10:49:57 -0800 (PST)
X-Received: by 2002:a9d:6181:: with SMTP id g1mr18156747otk.104.1580237396971;
        Tue, 28 Jan 2020 10:49:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580237396; cv=none;
        d=google.com; s=arc-20160816;
        b=AjxL496CmCuHwVV0qJxqq8J6kFj75bJIghBiCDa00yCEqKPEiS3WVhrOIS2X1CK0WD
         6nXekvGq+yvLKNF/MtiNvebZEPUWqU2cx7xE54weuxGcOeOFnkS6lX+qsjfPZSuY/Cyn
         2k38hvgOLqxppOqAiLFUszlEYCfNfHiEVWht78zcXhptOFOCEm1xDgTGAUTM4nYWoWRT
         6EKPS+5oPkCUI/RB+HbuLhrQo2OgKTfbmfJulko4UzTAdUzgHz7ddpVPB8g/cnScLuRc
         9saKWcm+ILYsnbWKWpEgt91RBy3FI273gM0HbZKmc2c591307kkS+INoGXBvRVkl3srn
         9Qlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=SyMS6kTKxjGvSfy1yskMuy1o1NPxNd1pRRReN/eh/Yw=;
        b=p1buxWcw4XRUA1uluRFKbkLr8wibx4tGZ0phAshDmzeRmgD6UPaXLlW76cQfg7yhh1
         9VoQ2ga99uvwi6Ln2aGvbaRAGPnaAACZ4+pxjp60P6GeRUIeFTILE6mZooYc59M2rjvD
         +G7gKEP1UWIP5JXIccynrUVup5b0XVsf/LVNWHBrwZoKbidZKgz/nRm4uJyyx8DqKnMc
         n0GBUG8K2RDaUdZ1iG2P58JGwNzl3rz8CJJZgNLQw5v2v1dEofuiXXA6vQWbGA3m6MNV
         qpeubwXNtLEFQnFbq3EgCk+RwXNPetmEDSzkz7Ziade2ttxGxzvquCE5Y7ZF7NVlndEG
         /wHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iDoWJGqw;
       spf=pass (google.com: domain of 3viiwxgwkabmbt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3VIIwXgwKABMBt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id t18si588249otq.5.2020.01.28.10.49.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2020 10:49:56 -0800 (PST)
Received-SPF: pass (google.com: domain of 3viiwxgwkabmbt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id o18so9103327qtt.19
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jan 2020 10:49:56 -0800 (PST)
X-Received: by 2002:a0c:eacb:: with SMTP id y11mr24452398qvp.68.1580237396348;
 Tue, 28 Jan 2020 10:49:56 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:30 -0800
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200128184934.77625-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 07/11] arm64: efi: restore x18 if it was corrupted
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
 header.i=@google.com header.s=20161025 header.b=iDoWJGqw;       spf=pass
 (google.com: domain of 3viiwxgwkabmbt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3VIIwXgwKABMBt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
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

If we detect a corrupted x18, restore the register before jumping back
to potentially SCS instrumented code. This is safe, because the wrapper
is called with preemption disabled and a separate shadow stack is used
for interrupt handling.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/efi-rt-wrapper.S | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
index 3fc71106cb2b..6ca6c0dc11a1 100644
--- a/arch/arm64/kernel/efi-rt-wrapper.S
+++ b/arch/arm64/kernel/efi-rt-wrapper.S
@@ -34,5 +34,14 @@ ENTRY(__efi_rt_asm_wrapper)
 	ldp	x29, x30, [sp], #32
 	b.ne	0f
 	ret
-0:	b	efi_handle_corrupted_x18	// tail call
+0:
+	/*
+	 * With CONFIG_SHADOW_CALL_STACK, the kernel uses x18 to store a
+	 * shadow stack pointer, which we need to restore before returning to
+	 * potentially instrumented code. This is safe because the wrapper is
+	 * called with preemption disabled and a separate shadow stack is used
+	 * for interrupts.
+	 */
+	mov	x18, x2
+	b	efi_handle_corrupted_x18	// tail call
 ENDPROC(__efi_rt_asm_wrapper)
-- 
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128184934.77625-8-samitolvanen%40google.com.
