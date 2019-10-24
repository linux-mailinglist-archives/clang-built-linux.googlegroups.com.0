Return-Path: <clang-built-linux+bncBC2ORX645YPRBK6WZDWQKGQEXCI4GWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id AA793E3FA4
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:52:28 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id i23sf32781vsp.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:52:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957547; cv=pass;
        d=google.com; s=arc-20160816;
        b=LuypP9B9NUKjV6vKsiyvYmnYU8ITz9q0JIVdBVfe5rmTEBrsNqdMpwgnsZijwnPQQN
         Ytcn9LrNo/3nLQpol546vEqszJY2+ElhrSE4IYoPSL8FKIObRfEznqUEON83wKHBtY28
         4hSIOPqhf4GoU7l9Yeh0ORW6ii6aCAfUpy63p4NvOK+5JbSJOcXRpVqwZZzj+q1MK9kG
         iVLscauzbZuYY6+uqKoh1TK5zMX6heUB/9HxqadNy26eJIFA81R23femUTlXFdxlHN70
         aApbkh2gWssJhICKHOw10+RfdNhx9AKKP6wBiXqXY5LJsKBsUMOFjSdxwAzZy19GJPB/
         FpVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=WYAu1Mb6xvgN6LaHIbKXV9NNu+HVwk91av1zBEnX4fE=;
        b=HVa6oohVlhdIV4M36qLOg2tNTh4Fhj6qx9iPp9p6leIAGBZIy41Da61wY879ajkC1y
         zwQRlg0f+TdozuOCGGdBbGHRutLIm+6JQd7uxrZTps44A0ymOucB9uf+Y5+qL6W32Ftr
         AjH4aj0BCTL7XZjCpl2sjnmGQMmqpkelN3tdoyOLCrnQPl6AxKuNzC0sj3LDp4JDuHUT
         WalbcrOwrZkLgfCDmFoLFdVVeeBcYvMJDBkslM2ggRI7Wu8xlRaTyq3mHsm9Z+Zaki3D
         8wRvvA96T4/McMkxFNoBplcuY0kxDIxrwKSczMlgQWg7TqRKqRXKHv3veeCjXIXNvPRU
         +uCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uLf+lw77;
       spf=pass (google.com: domain of 3kiuyxqwkad0rzlhsnkuzmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::94a as permitted sender) smtp.mailfrom=3KiuyXQwKAD0rZlhsnkuZmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WYAu1Mb6xvgN6LaHIbKXV9NNu+HVwk91av1zBEnX4fE=;
        b=nEWo58phJLmV0hqLYt1Skzieun/m/B1EG8glHTiDAx8QeraZfkWjN1d/TjwD1ug22z
         wbKEG3CktYW7irvjc3KR9TJm/NwWdDvOySTkGDCRorvV0/iveiX1wi7kD3B6MKXFsA0u
         N/cLhccc3les7vLbioW+kyzk57NT20PBsNIe5KbVp972t5zTFxvNpfN5uEieA3fqiRlB
         vQG4n/GBs2MWYV6qdAIm4Pca7bOcfd4f6/8XIakYfiMX1KmyMu+qdsUnYJaAWggAaS60
         F+j9iVLMetNS91EkLGvqW1Atvp5I6Q1tSzjFlNcG7omraDKTqvOpl2FmcnIs7zjlYend
         WSHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WYAu1Mb6xvgN6LaHIbKXV9NNu+HVwk91av1zBEnX4fE=;
        b=km1rPHjxC+fN4aDVCDJYxoBt9kTQYHVZscuLj3BmkaK5LaVolVkev5FrEwANQ3YwJs
         04FO6P1K9y+MyD0nzwFxu3ua/s18bpjX7KzLtSLOOZNRHyYLzMnNUmlPmOqDATkadGOe
         vFg3bX+EsIXBzMvTO0+4YvgXhfYadRp/txU+PG9F8QuSvP+9WF0J7Q+IZbcAi6MwO1eq
         AKWCA6osfVxK3x32rSMQeABymOuM+aO4TKouECnbrHDFXvKIPSlVBxdkfYmpd9T+52i2
         X2cBX54/hb5Aci38TD7QpUitqLRzJNNOaZpRRuHQVarBKB51Aky7yP7DWFLdtE1RmjM+
         XwLg==
X-Gm-Message-State: APjAAAUsPsGnZtmJ+7D9lsh26INAlgm+74h6vXxzacW5AIXB0Unj2EwC
	aUbpYT2ZaJbwOztS49olm3o=
X-Google-Smtp-Source: APXvYqwhUntjZcvo5Aufwc6BUU9LeZfELAXy37SlOf2M0iSHvIpmjdqfjxLVEUm3JHTfyhgks6e8tg==
X-Received: by 2002:a67:6897:: with SMTP id d145mr321423vsc.237.1571957547726;
        Thu, 24 Oct 2019 15:52:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:7d4:: with SMTP id y20ls764906vsg.7.gmail; Thu, 24
 Oct 2019 15:52:27 -0700 (PDT)
X-Received: by 2002:a05:6102:52b:: with SMTP id m11mr369714vsa.162.1571957547397;
        Thu, 24 Oct 2019 15:52:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957547; cv=none;
        d=google.com; s=arc-20160816;
        b=s5Q0HHEh3hYIgb81JG2Nf5U1ynoFw+JKk/zlkuS9OjLhLlvKN1hFzf5vlZRT4htcdJ
         RfNXgNQ/oQZS+81JN+Vx+bL19WkdBLhFv7K0huIota9jtZ36nalBEseulePo80yzoshw
         Sx1HeHPfyGjhtw1vvEHwYEo8sAosnX5WWDMD430V3AHhdUG0SEAtfdmnClmlIS1xKRDR
         XAxKMFLNO34lEuSwJSRA1nbzwdV232U/TU1gT0Zrrxc+SScM4YsfcPDivAgmKrBOghen
         2zpNMBpBXZ/+OOwLi723GzJIlwbz/eu5LpwQrOLxI90ITDg3tERkJp+8pA0AXAfoHFxg
         Oi8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=+uiLq+iUoKYbKnLFQDjwDIIzqGudQy8o1UFEOkmkrHU=;
        b=iutTZHpgJC/2nM0AAt5HAlsJXKR/ysthc+macYS1U0rkjq4HysBu/9Sz+cwBG+YtK8
         rNdv3C+HOqD1xUgqHzeDLWAEDTe137ky2xKGA2+YCwOUOMUVYp3qVdT15vwp5D4QuWSG
         tV6bvp2btpEMl8IlAtj3wqrsywWp4kWC48bJgoIhMWjorwialDQRLPPefraoRsVDZ/oe
         AfLu9Xfx6BmOzspI8vM47ZKhVFKNSNnK1pDYc/tFBoYZnGQnnKyLHn+A/IENFV39xDUQ
         4YJ6KYiUWemw5LVF2rfDJB/fLRwPGgPS+J/4FQbdaMRoIuP1v6RG/KbYNIhXf7z1u70T
         GC0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uLf+lw77;
       spf=pass (google.com: domain of 3kiuyxqwkad0rzlhsnkuzmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::94a as permitted sender) smtp.mailfrom=3KiuyXQwKAD0rZlhsnkuZmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x94a.google.com (mail-ua1-x94a.google.com. [2607:f8b0:4864:20::94a])
        by gmr-mx.google.com with ESMTPS id u206si21033vke.2.2019.10.24.15.52.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:52:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kiuyxqwkad0rzlhsnkuzmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::94a as permitted sender) client-ip=2607:f8b0:4864:20::94a;
Received: by mail-ua1-x94a.google.com with SMTP id h32so6988uah.15
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:52:27 -0700 (PDT)
X-Received: by 2002:a9f:2271:: with SMTP id 104mr36427uad.127.1571957546730;
 Thu, 24 Oct 2019 15:52:26 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:28 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 13/17] arm64: efi: restore x18 if it was corrupted
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
 header.i=@google.com header.s=20161025 header.b=uLf+lw77;       spf=pass
 (google.com: domain of 3kiuyxqwkad0rzlhsnkuzmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::94a as permitted sender) smtp.mailfrom=3KiuyXQwKAD0rZlhsnkuZmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com;
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

If we detect a corrupted x18 and SCS is enabled, restore the register
before jumping back to instrumented code. This is safe, because the
wrapper is called with preemption disabled and a separate shadow stack
is used for interrupt handling.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-14-samitolvanen%40google.com.
