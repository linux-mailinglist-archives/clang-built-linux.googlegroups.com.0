Return-Path: <clang-built-linux+bncBC2ORX645YPRBP4YRDXAKGQEIZGBEOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 26617F0A99
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 00:56:48 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id l8sf11303081qtq.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 15:56:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572998207; cv=pass;
        d=google.com; s=arc-20160816;
        b=fKxKqASAF0T1LkvQ9S49HoK5qveSFqPlvbqTKtsGQTSg+Dubnqs6Q/CwidnoJiYXLk
         c8KX/1Vr/QoxyDMabz8Po/yKrTGcAVQkXSP9vzAwpYIBOSHtRBSipriifnaam5lbQKq5
         1bcU4WdHLX2dK/SJJtPkIMHDkLok2RHQ6qorSyGNoYA3Lp5j7J0K+IkjLFSM+WqJ+nvV
         SAk+sHlJ77qwUJOVRefomi26LNZ28NIIN+8zbP5xcc4LiZ1phizByyezZac7yAtXp5wx
         gSndAD1Cre/RydpJ3hFogricgkWnMe8Xok6P3Yb2x+kwgBkceodeBlb/3yq2MuCH7fqz
         HMmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=90pcCDtfBi3sobZSdoXZHOGihcqWEE05S9+a2oG0O4s=;
        b=vM3J2US/WlbwgH7GCJAvZwG+teJLoZT51pby2IM7Kmar3Mxg3utBrfrdzCPspPsUGd
         mD5oU+ye1inYJYY9w1E2xpP6P+k3Z5ADd2d5Tq8CcGXP3xg9TKv0GGmsgfYO1L8ut4JR
         g/Ee7NUPzzGZ7sSz32KZwyFfU2SreIB6oCDhQ9m6Lcok4OpAu38Jqbh/oCzAH2Ekt/z3
         es96YBvyaoTKvaQm8+UsnyE9OvfbGGy/HgERvQEunwhUyhIcFAUJOEzA7RGMjCtvOHKo
         SFrGFj60MY1YegVTFxSazSFQ4dtLRynzE3fgZr3bwP5sr3ShfvWeUXNhRcDjFQhjXugA
         2KlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JN9cRXW3;
       spf=pass (google.com: domain of 3pqzcxqwkaficu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3PQzCXQwKAFICu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=90pcCDtfBi3sobZSdoXZHOGihcqWEE05S9+a2oG0O4s=;
        b=A2jqwqDaJVh04ZH1RIhp+HIuP0w4WZRdVFM/VPBLKDjRe0LxNHWpMs+y0AerTdP32R
         Wkn7ADWFGMPZisVcsByk3p5dpFlHc7cwQ5Si5CyUb0kAPvqi8enQ0oe06N1xoVAtr5Kt
         UnZQWqUSIorcwH1GXInVjn6i35YCbzoCpgO8kxcuvTsefxIIVbAMmVI+wfbEFjUd+v6m
         1AT1SDTnU50G7F2wM2Ut1U9/xcVmElXTFsihmZPWR4sfmoNhYcXf/fA2XepWlqWb8vcA
         O27UxAnohsjby1K3OL3IIBNrWk7ovpsRx0VlIH2fIOegfn9Qs1+JELh+mEmYBcs1NPpE
         5eMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=90pcCDtfBi3sobZSdoXZHOGihcqWEE05S9+a2oG0O4s=;
        b=hzrTMoN4duUWFGvIVrbDDlgbO0/q1Sw7lA1sYB9yKpSphA99V2DCY+TBmsfpwLh0xJ
         RLOOnmygYdXSLk8b/ItjXrYFIHBxib7WIQibDJoMqQH72ZASnfvVvksbJFzfTykXNchf
         5pnV7gZbPbArYjuQCwslddoDPIoD7kcwkndfAFDWEAwUnil0Oj3y4+lQB76t1CU8m6aM
         5yJcOPX18u0F7RJiOW3vN8tYR/HKwLZ/wgosxH4zmrROgejLrkRuFT/4PuAqRtIYA5PL
         bJ/A35ktpk0ZVGXaVVeIAcZIrttqP1pMK5q5S2UEIRfg80sllmouJdgwYdRvBD1r2PQl
         sMQQ==
X-Gm-Message-State: APjAAAVu3Wd1ELSeVbw7vvXDxWxcWN7VDXsschuixrnDtjEmCdZ7eLJY
	Z+B26wLb4BxgUOPPpyWXU00=
X-Google-Smtp-Source: APXvYqxbBww/60YYySmEC5FN3C3F2NvJ7YB8AIcc2I+2GTSpDU7SvlCRK2NqtXq6Gcf25v9FeO8knQ==
X-Received: by 2002:a37:a406:: with SMTP id n6mr12525295qke.308.1572998207147;
        Tue, 05 Nov 2019 15:56:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:95c:: with SMTP id z28ls74823qth.13.gmail; Tue, 05 Nov
 2019 15:56:46 -0800 (PST)
X-Received: by 2002:ac8:424d:: with SMTP id r13mr20758429qtm.111.1572998206816;
        Tue, 05 Nov 2019 15:56:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572998206; cv=none;
        d=google.com; s=arc-20160816;
        b=b4ojgCaZJcL3fJ5Md7j5rH060F2CFGlH8MmjPcY3cZVTaH/pAt7sNELa1zlb2gegUM
         z7sVcv6Y3msGrpzVWGXpFMfp63t6jAyPKlfqQyeGSIfWKcEQBrGSZ1h6uJ+L9LNmaJp6
         03HPSIMzIAsJ/8vGU1IlYRYBJqSQcf8Ldb0e1F6GigOJ2mHs1gL3tY+TvIu5cETbGeLq
         yHSppVGvOH37kP/bVydmFR++ZjGHyMjjaUbEebgldKPVjykiBE0AyaUqmtuXpXSWv2KR
         qwMjKqjVyCa6o0fW91fJBDqAjnStk79QBV2+4y250SNORh+E5st0u8uf/FPcVBwFACVi
         uS/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=uZ/kQt4EYM2LvpfCusnWoxftHyD2DxgcHTICv7X7dqw=;
        b=q/Z8vLUJYLDhOaOh5lMKwBmyKywBtFYUxx0e7BMSSAYM7Z3Ad108YZT0a3/V19GWZC
         QG1wcQCvKtIvAHgwAjkTQyT/gvG60QejS/WsaCtPkLrfsM/HtUXK3LCGqsjU8pyn8wYu
         r2aUOR+V+tKo6XspAzcukrcqQnnGoXtjUGBlNio4npE2o949Qq5wV3JEI3cWpnadg2+8
         CIFSmGU4MJt6/xdZCfQaUjQWQfLIk6wxWsnGHtQz5i8xUJz2LA7kgCeRPGnM2g5+PUfb
         NPYMhdCFHan1sR2ENdYv9gZZvNr+3uCmgdXY9CFHcPB26ybpeKSYaTmjUIXpMzxwrs+1
         i0gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JN9cRXW3;
       spf=pass (google.com: domain of 3pqzcxqwkaficu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3PQzCXQwKAFICu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id o24si1525066qtb.2.2019.11.05.15.56.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 15:56:46 -0800 (PST)
Received-SPF: pass (google.com: domain of 3pqzcxqwkaficu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id f21so17498427pfa.3
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 15:56:46 -0800 (PST)
X-Received: by 2002:a65:5a8c:: with SMTP id c12mr39559106pgt.140.1572998205590;
 Tue, 05 Nov 2019 15:56:45 -0800 (PST)
Date: Tue,  5 Nov 2019 15:56:05 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 11/14] arm64: efi: restore x18 if it was corrupted
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
 header.i=@google.com header.s=20161025 header.b=JN9cRXW3;       spf=pass
 (google.com: domain of 3pqzcxqwkaficu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3PQzCXQwKAFICu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
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
 arch/arm64/kernel/efi-rt-wrapper.S | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
index 3fc71106cb2b..945744f16086 100644
--- a/arch/arm64/kernel/efi-rt-wrapper.S
+++ b/arch/arm64/kernel/efi-rt-wrapper.S
@@ -34,5 +34,10 @@ ENTRY(__efi_rt_asm_wrapper)
 	ldp	x29, x30, [sp], #32
 	b.ne	0f
 	ret
-0:	b	efi_handle_corrupted_x18	// tail call
+0:
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* Restore x18 before returning to instrumented code. */
+	mov	x18, x2
+#endif
+	b	efi_handle_corrupted_x18	// tail call
 ENDPROC(__efi_rt_asm_wrapper)
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105235608.107702-12-samitolvanen%40google.com.
