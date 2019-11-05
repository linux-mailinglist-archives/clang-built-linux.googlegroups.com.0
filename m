Return-Path: <clang-built-linux+bncBC2ORX645YPRBKUYRDXAKGQECGE2ZRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAB2F0A87
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 00:56:27 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id u23sf24225666qtb.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 15:56:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572998187; cv=pass;
        d=google.com; s=arc-20160816;
        b=mWyCkLr2K9fA1rzmDGkT8a83QO34yI5KomVc/t9JlQQMsa4wg1wYZziOOBGQFGXtih
         h/sD5BzKFofSPJSJnFX1xNq6ugQjHsPBonv7tGpSFjmQng76l2HxaagdYIfN71Gb2Uex
         O2zVQR2NYyh8mZSNM7p/PbD8Ban7XiMqExEZCQpM7AyXLER1nBpHTk0m/BIyAV+LFKRo
         kQGkJwb/fST/GlieKQJ+0DlTrPb05aCY5C+ed1HxBqxOsppjwrDPbL5FUYDJV+19vH4H
         H0YX+vb8tBpH50LQaEyYzpP1phetAL5RNjw6T233T2YB1GB5hckYqym2PDJTs+i/uTLX
         ZSUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=wpguWtMNSFQasVDTDkSb/4hHhOsldAG5LP5Ko+8HYDw=;
        b=owB6N8PPrZtxPy0XM27cvQBqasFircsYgAHSzcAEK9waItGrqD9XVRWGfSMdxus38a
         2X4ovAtBIYzpkuVS5CoMVFgTd+9SyKyFuy6s4NhuWu/w46EBMkyPlJ/4PSK6W2jtL+OA
         yvn8jAAzsFcR6W83etAn+vGE2WWZAYF3r60DtrENiGMKxA3X34HqA6sJX0eCBjlY6Luj
         lB7FOAR9Ma9VmrPggEfppxZpD6q7+7WTmfYUK53H+GL9w728CFiTXq9PIw/JA7Q+geHC
         huM26VBrrLKpMyLVRPiFnjXfsKD2vEwlqLFVedy5CPr9Jr01hRzS3xPPKp1pGLYuFGm8
         qIig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QDgKQccA;
       spf=pass (google.com: domain of 3kgzcxqwkad8tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3KgzCXQwKAD8tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wpguWtMNSFQasVDTDkSb/4hHhOsldAG5LP5Ko+8HYDw=;
        b=nSX1L4wLP9QcxKVtjQO1U/+29XZiBNPpT9C1G/dWSd+hkETpIxZJBDsLrf+yWgtu+T
         sJFFJcCG6Q1Hexilk5gl82Ruy6pnB2KfdSRTRNcK74PggXIjq2P8dwdLf6PHAyhVEUtd
         5aIA4FnfDEsItw4mfyqVJtYsId5RUsTLAX2v4eYaCUqg2dStDRlXFloUkzvhHCE1wonA
         V/MDN09ib+HeMdxtJVt1ArPO+IYuZkPOau17YY1ebYqGVLG2vV1z2afLU8DIRXS2pxF+
         sRR66VISntv/hST9qOrcdsJIl38CBJACtiXNtRnW161ENps3N4bYeVpiIZDPEqtfmW99
         A85w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wpguWtMNSFQasVDTDkSb/4hHhOsldAG5LP5Ko+8HYDw=;
        b=sjxDE8e60RwFGEFk7ZplqmTRq8sWwEoImpWrXf1bwbyk8B2xe7aPphGGckwmZb7Jlz
         Jgdy/ayTl5r5f+9TH5Q421YYOAUEr70BZxMy87ZxMUl5cOUaQ9wH6fTxeLzuvAW6k8Nk
         bLwxwOoVSLF4PTKfG8OAfs8t4MQaMhbjiRz/xIkg/WbRUYzra99bDJyD8quDrTL/3DE7
         MD4LddQAcg1Cm5n1aE7V1vwv4qeQqEM+KaIL1mAjTvEGXHtPKEmycPQaY6ELcuqRKqTw
         YekIq87q4PP9418zgJIn9SRl0oY6ezZdXo643Fw6Cj3zPAxhdqrOT3x+DQSjMgyGJ5SR
         Ue5w==
X-Gm-Message-State: APjAAAVD/1XiaTkFO0EbyqsT8OzWxkrxVqV6rLfY3VBQzYC/BUg3itu5
	h1xgvsNrPyWeiM5m7Kqqd9s=
X-Google-Smtp-Source: APXvYqyX2MnndLQ0VVKcpU/vih2se7z36TABjucYTMPd3g0H/fW22e5OFcVBIqEjl6Iw3qe2m649GA==
X-Received: by 2002:a37:3c8:: with SMTP id 191mr6789540qkd.77.1572998186896;
        Tue, 05 Nov 2019 15:56:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2f7a:: with SMTP id k55ls78778qta.8.gmail; Tue, 05 Nov
 2019 15:56:26 -0800 (PST)
X-Received: by 2002:ac8:6f57:: with SMTP id n23mr20268009qtv.46.1572998186583;
        Tue, 05 Nov 2019 15:56:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572998186; cv=none;
        d=google.com; s=arc-20160816;
        b=US3aJDJzqEUif6P8Ha00ozrHCnxP91upHmYYkG2jb8wEhhmLKVafWrAxpuu6Jk2NCu
         TouEbEkO2jiJpg+Z3ZjWmJYd6tJqgxwkYrbhT+Ew4MxTgaOsvbd7pyqzb5MLci73xdIM
         JugnNiCUtEhd8xBRKPziGuq6AJlG8ccRGigLrp6ncKya8AMGnX9LGpidYxBFbvcnm7Vs
         0rE5cAJ8I//Q1tt7po3MLwhnDmH14UUvXB1O5VgRlj7DOcCfxFzvTqbJeifiNYFzL2Ok
         dq2tloYRjGuOoacg8PbBQ48qWjSFy0FPUVqsVfFJpff23fomvlOB4vUosDX4nWMegyj3
         qcuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=E806Ihq7Qr5kwAxZ8O8jq/5GK0i44oON304BuEfvZ08=;
        b=mtE2Yehz4jYPJsoj+8vT9bkrwFNMtfbDVHtFQGiDoxNaM+DSNIc3Rb3U5gAJcJrx4p
         2cFr5ySx/O/7KaVMRqnjCZ63GLJZ35/Meg2fxxbRJIEs0a5k4D6YxOybYae5Y64bohJl
         nnL3FYsB0GI7GfdvVFIvioav6Xqc5L3NU5x7qURyT0Tqnzsb/T1KxhOfUeEMAsHi0Eoy
         CS2Ija2f25gVQtO02gpMuVTFLw4COI69mAPGXsjwOa5AaJV5aEcap9xkgJCFV3U7vWxk
         L/8hwzRdciXuq4oIP0E/34CW7N/nMUqJrE5gzgPk7A/yeANQ0DUP6Q6RG+VqulygQfBq
         LYxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QDgKQccA;
       spf=pass (google.com: domain of 3kgzcxqwkad8tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3KgzCXQwKAD8tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id w140si1332666qka.6.2019.11.05.15.56.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 15:56:26 -0800 (PST)
Received-SPF: pass (google.com: domain of 3kgzcxqwkad8tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id 64so23046388qkm.5
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 15:56:26 -0800 (PST)
X-Received: by 2002:aed:22c8:: with SMTP id q8mr21652726qtc.0.1572998186120;
 Tue, 05 Nov 2019 15:56:26 -0800 (PST)
Date: Tue,  5 Nov 2019 15:55:58 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 04/14] arm64: kernel: avoid x18 in __cpu_soft_restart
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
 header.i=@google.com header.s=20161025 header.b=QDgKQccA;       spf=pass
 (google.com: domain of 3kgzcxqwkad8tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3KgzCXQwKAD8tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
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

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

The code in __cpu_soft_restart() uses x18 as an arbitrary temp register,
which will shortly be disallowed. So use x8 instead.

Link: https://patchwork.kernel.org/patch/9836877/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
[Sami: updated commit message]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/cpu-reset.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
index 6ea337d464c4..32c7bf858dd9 100644
--- a/arch/arm64/kernel/cpu-reset.S
+++ b/arch/arm64/kernel/cpu-reset.S
@@ -42,11 +42,11 @@ ENTRY(__cpu_soft_restart)
 	mov	x0, #HVC_SOFT_RESTART
 	hvc	#0				// no return
 
-1:	mov	x18, x1				// entry
+1:	mov	x8, x1				// entry
 	mov	x0, x2				// arg0
 	mov	x1, x3				// arg1
 	mov	x2, x4				// arg2
-	br	x18
+	br	x8
 ENDPROC(__cpu_soft_restart)
 
 .popsection
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105235608.107702-5-samitolvanen%40google.com.
