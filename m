Return-Path: <clang-built-linux+bncBC2ORX645YPRBB6WZDWQKGQEAWNEOPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E3EE3F92
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:51:53 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id w22sf199381pgj.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:51:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957512; cv=pass;
        d=google.com; s=arc-20160816;
        b=UNQ3PPOl9UCD9lliThNs+M3G/kxou7wx9cScXThYoYL6RkEaxkzWNVjR6y36i9FV6Q
         Psfw6EeIeNwZ4mkphrq+9BuNR9Tz7jX3vtqaglKuoeBmjM4suad4C6RBxgOlbqlYXftK
         ckf/890Hh3ytRn2OQHXEZtzzxqWAr2BEjPMrcUPZNMrRXOE8ReGohjDfOpeKsVHJLKUp
         6vv+NI7RfAiIzeXI2nXu7hkHR3kYnNYpTwsZdIFcKgJ1nVVtd0atXmRcc4sZf0n6YUWm
         MVdMIxLg4PSh6BpGqY2C8g3eRsHHVZNGoLJ0+4VPCSQRSKEf/CRSb/ZhMRi7O9kkTLGu
         E1BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=el4aRsk7guuLwKjicRj/IAqs9I21SXXO6fZPcSAmsSI=;
        b=jtzQralAp5wgkdhmb+bah4uNSSZXXmizrffvf9XIj4DqJa+shQn1HQZZzO5VcO5Q4R
         DLFqCLKTVo2EZLx7zCc6cgvNziWvS5jiz0OCXV9gB3REAUvdN052MHA2Gh637q6+IPLJ
         iNIhIhkFaq8wIJxiYI5rzb5MArpto3XsNhigX0DKV01v26q12efoWlq8xV2+DRo5CwMv
         SncPQSE28wflpPGESvASJ1FGH+aZQ0ACfLeEMhXkmi/q955bNi3Z1/N89CLPCYVlzv3Z
         SX/YSwhxOXm3R/X9dUhbfQqn95Atu0Ag5bfWOU+VIBMRFodkX64gNNc4ECLkYIWi99ZF
         D9uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W8RCJ99r;
       spf=pass (google.com: domain of 3biuyxqwkabkhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3BiuyXQwKABkHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=el4aRsk7guuLwKjicRj/IAqs9I21SXXO6fZPcSAmsSI=;
        b=WVkEaKWMDt6vrw9xs+rzHNn4M7vp8pWAECxjDPbyvAQATktEHRiJnWMlf5flLp37Ig
         9ZNsgZq7pyQQIJtkpTML5aochF8PbApI0YKd4BnX49jE3C7V04COBFHIPp0Bq9voS4s6
         bzuiB7R6l2WyxaBknyN6/AbTSmh3O+dnRQo0maBZxggJY5X6cncl+azqoKzbdUMg2yH7
         s2iU16OusSSMCXb0kjyvT7icF3kYOraxdcl0qxT3AHp41yMYUi+NCr0olQOtCr8zIJb/
         PyD7F9/7hCK25hWbDgOSLYnRH6YocSXITZkp0u0q6iniChI5112y4tfE/zQW4XE2kQQE
         5JRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=el4aRsk7guuLwKjicRj/IAqs9I21SXXO6fZPcSAmsSI=;
        b=ow54gfEQOo+8ckZq24e+wnonNZS2LoY8QsBfuLIP4LBEu9d+g48cZsN9VrnBXuakOf
         kGHblb0Sn1wAkc7Y9kkbis+d4eYOf9YwUVUr+/ckaSSu/ugLQCSS+aeR/gLU97jnHuVM
         EUPMyHTuXxgC62Txy6B1lpamRYWR4yHUTGFLoDTo9rOh6dS9RY1vZq4Uw6uRUi4dllB0
         KSXaXMJyvnGBawLCIngxGwP+wAjlfMdeMR4w5lhWxM8GsqqM9kk5wdc+JL3diFNCv5nX
         iRqt29G3I0z+wdFLWMoB81iDNH5d6Ze0Nz6vhsDKDgcs1PxHojosKNZryIdRqEBKmBZ2
         XGrQ==
X-Gm-Message-State: APjAAAVb72xCWJ/7gbSYfUE00nAI4kJ9jC1xzJwZ7jpWZjmgdMpK2cwq
	UTcDIzXGOZAcsQhWTvmvakk=
X-Google-Smtp-Source: APXvYqyKotNKBoYMZ2TJMTFfay2A3QqPWIGla9ozc5XaIigo7tC8D193nhe9k57lWS1Ly0/qTiMd8g==
X-Received: by 2002:a62:347:: with SMTP id 68mr464445pfd.254.1571957511914;
        Thu, 24 Oct 2019 15:51:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9786:: with SMTP id o6ls2267606pfp.1.gmail; Thu, 24 Oct
 2019 15:51:51 -0700 (PDT)
X-Received: by 2002:a63:c80a:: with SMTP id z10mr514454pgg.290.1571957511454;
        Thu, 24 Oct 2019 15:51:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957511; cv=none;
        d=google.com; s=arc-20160816;
        b=Ccb0EMx3gIHGinLDciFblFLaPGrx8LDZycpjmcHHBIob46rVgSFF4rYWbliDPmAPMV
         hi8LR3n2seYDHi/2Jg8DDsnpIJS3iYMtAJDAGKZy+H32V77IuUWXhcQ30JipWt3i0w/O
         cRA2HCJaW3Fpj3BAdnv29EUOu4aKtlMOkqfAOBrnucSQVtvntzirFIGmnvyd6KQI0azZ
         w3ryN5r3y42KY/mwCpqDv5+1/VNtxIi4QDnEKT+YkVf6Da5izo/tRAe/wX88+Dt39dA9
         7WaAVhxbTSI3FhAq83jxAQkdDJAMcedwWGtzpdj/qVDQ1pbfZNIgFJxEOIcB0HaZMOXT
         AZTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=8uBb3Aen2dVYsBIXAkNtXm49lkX7BN4KRJO1G4p19Vk=;
        b=mTl0CyBaALIUHoXOmxe2eyMPR1HAPvVOsL/V4P2T0uiqN6OSPiOQcOsNPI1QMo4P7l
         8L5C2OXJsJwG/aDUo9j7cqoBa4C53lv5a5936Mf5qV2D9aljnv8ci762pQJJxhTps3UN
         573WMeZ81eEB0cJpnUCilafSVriAcEoVnPg/LgIXaj3dAs8F4MvVY7xVFfCjh+731XiP
         V8I2G4HFhxIkZ+gWzTkdNHlmaglnkqKoJfd7lKu/wMmaWhzrPTe8AnP2uz0R7jiKzJ/P
         uPqPTk7z2CorgUgqfGB7208JHzWldJVGCYGLG/67yquuloU1AWfJslNZaBFKCtyDWqVd
         0/8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W8RCJ99r;
       spf=pass (google.com: domain of 3biuyxqwkabkhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3BiuyXQwKABkHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id h13si10653pjb.0.2019.10.24.15.51.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:51:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3biuyxqwkabkhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id m19so130928qtm.13
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:51:51 -0700 (PDT)
X-Received: by 2002:ae9:dec2:: with SMTP id s185mr127821qkf.283.1571957510607;
 Thu, 24 Oct 2019 15:51:50 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:19 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 04/17] arm64: kernel: avoid x18 as an arbitrary temp register
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=W8RCJ99r;       spf=pass
 (google.com: domain of 3biuyxqwkabkhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3BiuyXQwKABkHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-5-samitolvanen%40google.com.
