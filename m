Return-Path: <clang-built-linux+bncBDYNJBOFRECBB5U3WXWQKGQE3YWKCYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AA0DE466
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 08:19:35 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id s17sf1040210wrp.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Oct 2019 23:19:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571638775; cv=pass;
        d=google.com; s=arc-20160816;
        b=LOU9RZpwPA0mXZGp3WYQWzpL40YUjaX7L3V69cE/Xwl9X6/mUfvpaAcC5sHaljFBZD
         rVEV5jdBRTIMsGAZccyztDdwc75BpwcPkP8baFy7ih/ObbOqYentq4pG5FCjwjKyfrSU
         r6FWL8/PI+cTz7sP3PYRr1WuoWQtFC/qhFvxcOVQ1YtggEP+2azngbk2n1/47V1eBTPJ
         BwFUkjCRoUjVU/YAPXYXxXmbWalrz6eXQTEqAOlgQey+yyFXtK7ADTFOaYzLv726ftou
         nMKeg1j4muohDgiwM3w+MueMZHZWbVSyVg8QQc/mbi6gffPyyDaAHC60jG++bhk+iF8A
         +iig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Ao5+wquxBPP7cJiWmd3GaBJf41BWJPn1WtzJ0ZDqs4s=;
        b=DXVuAKYh4thYwOOyTzFoCljAO2+4/Mj6WfYsXyw0Gh5AZ7HynV3GX6IGLEhcvlh1OZ
         FlL6S+l//hZ+sk4GtemMBIP8mp67wNmIc5MiIPb6rfkfzNyk/u0thdJfLwQw9BVGYg8i
         0ms+E5yX0LECrq3xc/ctDGOhHvAasH6AyNOHk+oNhR92NWFRW4LaND0+mtZfM3dAsw6R
         dT2sKUdPIBQuNty88D704EiWyE6c2t61txfVVGBP30+s1WwrIC39qrNpnilfT2uzAej4
         3JBF/ojx4plJQKwGpYlAYz6y4t5WEG6TpW6WRc+FlQ8J4WgdpvU/Uo3Sgvt9zz7ey+WH
         gd1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WOzYqE+L;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ao5+wquxBPP7cJiWmd3GaBJf41BWJPn1WtzJ0ZDqs4s=;
        b=C2cJHZSTXINV/C97+TJlfdBSuRa2NH2FRMPDVny7o+eCG5wNL4wFibM6Xvxy+z6pYb
         K1kK1nKBIFbjJIC/YoRWxKE/EwX4ua96LU60WnrqU7+0WNMPHWWIf64LAp5sQ0ZKSwHW
         10RxG+GpWwvGKCppLwOgrJz+K8BkLEeCMW/uFqkl0U4D6ywUy7k9yRO9lw0f74kSYM60
         95V0+0w3eImREY2PB5Un56GMO4IqGMD9RWB/yIgjXyFK5exJ5gI25R8aU/dWBSpKyWdK
         e2TsI8JfZeVdrFiZ4qHpec6BzsyM6xxDgE23kcM3BfA1f4lZe8CvO60sTtrO6CHXLGvU
         URog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ao5+wquxBPP7cJiWmd3GaBJf41BWJPn1WtzJ0ZDqs4s=;
        b=ou9DDAHFkY56NpIyTr7/gIqhzmJHS94D6rwF63z6TSzugvIV/hw3Eq3Te2lRxFyVVg
         BiyDFESREwMlrEoNolHEAAynTVjc/b9GJfxkL8gvLlLCzlagR7wScFUb+SmiVsqJFlJG
         1Gug9Vwz3u0dxjoINqpq+hpQI/W9HCaF99TGWqxFZv0KvPLKwjxwKWDUXFVT/xjh3N7n
         Xht+X7hLnzlKR4jsTT8Zpo8G+pLpQr8Tg8TyEoiSd6x9LgPYrZV5uSsszhMzoWFCDo1m
         O3Cc2JMSnZ6pc8j2BYMsHfDa15vvlioat6D7ncP2P9GVIA9JEXJur30uXdDc/4+4YcR6
         lxiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVWDHwkWj6SmHgItTdVU6TDgs9SvQS1pPSez67edPAAyZJXjTfk
	ueFG2oYLeBIHa3NVkAnw/EE=
X-Google-Smtp-Source: APXvYqyoiYdRtCbkRLWB/F3UB8NVcPtHgvev1Q2aWAGedrhESMJwgIfds5x6k/JIADiij6/ALTOZOA==
X-Received: by 2002:a05:6000:11c5:: with SMTP id i5mr13449343wrx.303.1571638774892;
        Sun, 20 Oct 2019 23:19:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ce09:: with SMTP id p9ls6366133wrn.11.gmail; Sun, 20 Oct
 2019 23:19:34 -0700 (PDT)
X-Received: by 2002:a5d:4a45:: with SMTP id v5mr9963878wrs.358.1571638774398;
        Sun, 20 Oct 2019 23:19:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571638774; cv=none;
        d=google.com; s=arc-20160816;
        b=DyKx1GxRsUUF3GytHPYsdlVYKYy3MwZX6MGyxcB5VAmvZxWYw/VedeeF1nKGc4PxtO
         6ObV1LJMMFKdUdiFRmPKMEn8k59AKJJxCp43IJH8fbEsmWshWWwqMhwUEZueTp4LQMfB
         a64WlhQelJ569K1bQaZdnz6M2haULoYAeTivNtp1nbO4GDT4ixjnbYaBz2mIrDZSOnS9
         T1zxhIIwe2YmEBvI6HTbmsii1bew3ea0AuWvI4XJGHuBn+xqcxIq/jHXLCn7xzbP7Kg/
         4s3hKuL+v0gc/Ondc9eecNTeKV7qkxk7L1JlKnHY++49xdLBfGFkS068xqoNrowLYQfj
         OSbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iMdLEV+CTaW2gmBLhEBpHxDKc063E21l+ayq5nzIrFw=;
        b=AMhWsyd2X5JNEoBdcv1jS1mkxkLNx+NtJSxeIJNmVikGPHsyGijyVCX3L5ybr0fT9U
         asTPAvqL+PNn3wTc4ZG0SEWwrloJ7LbJ5pRVMBMF6x1VLZip0H81B5D2MdJJn/TN2b0B
         PImNP9eK2WR5DL643QNPPmGOTEErLpGW+9uuaUMGm8ABLZlEAptzPIxMpDSJYDxtfkT8
         K5a4IA7o6LZZrHTkFqds4b5DwRVLLy1nUtmVU5wHRQ2QJtbRtTDoWu8uE4lyO2FDi2+z
         hPRgkuRQjFc91XlFDvxUT+rs7mg/AnM/uvJXHLjTI7IyDDzED8rvBGhFxzeOSZFpuWWa
         ssag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WOzYqE+L;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id o10si794333wrm.5.2019.10.20.23.19.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Oct 2019 23:19:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id q70so4591528wme.1
        for <clang-built-linux@googlegroups.com>; Sun, 20 Oct 2019 23:19:34 -0700 (PDT)
X-Received: by 2002:a1c:64d6:: with SMTP id y205mr1400556wmb.136.1571638773936;
 Sun, 20 Oct 2019 23:19:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191018161033.261971-4-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-4-samitolvanen@google.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 21 Oct 2019 08:19:23 +0200
Message-ID: <CAKv+Gu9u-yO1SRTaT4TfdtckmPT0+JnHR6R=RPYRGfm9AACvCw@mail.gmail.com>
Subject: Re: [PATCH 03/18] arm64: kvm: stop treating register x18 as caller save
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=WOzYqE+L;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Fri, 18 Oct 2019 at 18:10, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>
> In preparation of using x18 as a task struct pointer register when
> running in the kernel, stop treating it as caller save in the KVM
> guest entry/exit code. Currently, the code assumes there is no need
> to preserve it for the host, given that it would have been assumed
> clobbered anyway by the function call to __guest_enter(). Instead,
> preserve its value and restore it upon return.
>
> Link: https://patchwork.kernel.org/patch/9836891/
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

You might want to update the commit log to drop the reference to the
task struct pointer.

> ---
>  arch/arm64/kvm/hyp/entry.S | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
> index e5cc8d66bf53..20bd9a20ea27 100644
> --- a/arch/arm64/kvm/hyp/entry.S
> +++ b/arch/arm64/kvm/hyp/entry.S
> @@ -23,6 +23,7 @@
>         .pushsection    .hyp.text, "ax"
>
>  .macro save_callee_saved_regs ctxt
> +       str     x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
>         stp     x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
>         stp     x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
>         stp     x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
> @@ -38,6 +39,7 @@
>         ldp     x25, x26, [\ctxt, #CPU_XREG_OFFSET(25)]
>         ldp     x27, x28, [\ctxt, #CPU_XREG_OFFSET(27)]
>         ldp     x29, lr,  [\ctxt, #CPU_XREG_OFFSET(29)]
> +       ldr     x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
>  .endm
>
>  /*
> @@ -87,12 +89,9 @@ alternative_else_nop_endif
>         ldp     x14, x15, [x18, #CPU_XREG_OFFSET(14)]
>         ldp     x16, x17, [x18, #CPU_XREG_OFFSET(16)]
>
> -       // Restore guest regs x19-x29, lr
> +       // Restore guest regs x18-x29, lr
>         restore_callee_saved_regs x18
>
> -       // Restore guest reg x18
> -       ldr     x18,      [x18, #CPU_XREG_OFFSET(18)]
> -
>         // Do not touch any register after this!
>         eret
>         sb
> @@ -114,7 +113,7 @@ ENTRY(__guest_exit)
>         // Retrieve the guest regs x0-x1 from the stack
>         ldp     x2, x3, [sp], #16       // x0, x1
>
> -       // Store the guest regs x0-x1 and x4-x18
> +       // Store the guest regs x0-x1 and x4-x17
>         stp     x2, x3,   [x1, #CPU_XREG_OFFSET(0)]
>         stp     x4, x5,   [x1, #CPU_XREG_OFFSET(4)]
>         stp     x6, x7,   [x1, #CPU_XREG_OFFSET(6)]
> @@ -123,9 +122,8 @@ ENTRY(__guest_exit)
>         stp     x12, x13, [x1, #CPU_XREG_OFFSET(12)]
>         stp     x14, x15, [x1, #CPU_XREG_OFFSET(14)]
>         stp     x16, x17, [x1, #CPU_XREG_OFFSET(16)]
> -       str     x18,      [x1, #CPU_XREG_OFFSET(18)]
>
> -       // Store the guest regs x19-x29, lr
> +       // Store the guest regs x18-x29, lr
>         save_callee_saved_regs x1
>
>         get_host_ctxt   x2, x3
> --
> 2.23.0.866.gb869b98d4c-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu9u-yO1SRTaT4TfdtckmPT0%2BJnHR6R%3DRPYRGfm9AACvCw%40mail.gmail.com.
