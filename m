Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSVWSKAQMGQECTJP2OQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id D01DA3183B8
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 03:49:47 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id v1sf872382vkf.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 18:49:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613011786; cv=pass;
        d=google.com; s=arc-20160816;
        b=mtvRtbJrSf3nlbYysROG9sJlNZon714NqMm8mVjmBl0XZekKiA97m5gZYOoFzjANG/
         NSVjOPKbbzWrJ5tdhTZmHhjQTCkHFyjEIA+Q28Io6TQi88zGvRKNay5lzzScvJpnX1Sp
         IipS9WnqtC8sFiJnAWwITDOf8JvKZ0+sJSKJiQu2TgTEoh3PEw1frjA3SDfvHabvqolH
         nJAdtNNYF1R26qQqFtcMQpfHFe9mb9j+QC0V63RjeHWZ1ykQF7EQKbYjoFeOBC4/67rH
         If57Oc06NGtyzspkmESTuPwBoW1aS9SG+zi72ORYUN3gjlupXR3/O0hsFYf7AIr2CORd
         Ovsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=BrFc0yjSHwx+ANKbkF22IvI4gmJ7bj62WTP2W4wKaRs=;
        b=qphhC/+htVBYlg8VaZGKqO8ky9sUGWxyuP1LuVqOP6sIDBHI3QsZLr8uxDNxHOzKlq
         o3REc17KnbSVXYYnuwVcfcLuLJdueK9tpAgypp9dD2Jc1wxdTMKMKFmyu+MvmPAYQbTJ
         v9152CLtR7CNBPDL4Em4rAWiWtW1hDHUXo7kxe1lc72t5X4p58odlxrYC8MLmWeDj/lB
         1NRHJCl6cwTfEIpb4Apnh1IQGQMk/3c+uM87LDl6w9RniWlxNGKC4kDjl/0MXzS+IW/8
         txaLLSnnUS3In/GTU2OXczEJRz8lMtLc4XsGp5EZy0EPylsvKtEgtU1MzhDv9FyNluSJ
         Gtww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=itDwjMup;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BrFc0yjSHwx+ANKbkF22IvI4gmJ7bj62WTP2W4wKaRs=;
        b=dhsZQojZi/XCDBOhxVFDwzzUEPo9TTYQkqHuRKDUVfSJ5Rj/DTWUIhPHjxRMLmYJli
         SNXp5l78rh70WoXgNIKNufD8YyCFxGUSEl1I6T4mft7xLhqFeq827jyet9PzQeKAiJzQ
         hRsaBtmTbnkO1MflITYPVZIbh0+CQLxlxU4NjIWsEl42nzIQPq2bgDWMedVILRBejXWz
         TmNFI5moQOAXBEGGxagE0qRvN4/LmrUL0cuQc1vJdA29kXL98e1TO7DcUK9li75ldnsn
         QtXe1MCWVlXkPUJr2wjVd3PJhF04FJT+BdTe6wfo5GaW01yCzLvI9BGMs1wICg2O1tEl
         5Y/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BrFc0yjSHwx+ANKbkF22IvI4gmJ7bj62WTP2W4wKaRs=;
        b=N1pNSWBv6j9OfmSg6UzrMIWxjHoyg86d5ASuDQu54JsgBmlcidJt0piyGv4ahttycr
         FvKoiLFlYkO+YG6vfO1e0AgiDAxsy22ZhPaowMzme4bO7CUpRmLciWlvQ/EBUHhQoK1G
         XgN+kaR3op4RDll7v7D7nHRp07nc10XCPlZuydI8Vs1rwylHm3WY2NdF0/e6b0u7eOk0
         wLWvyiDnt6OA2j372hn0S3mD63/zgDbZFcARWQm3TUHnRd/oYDxC+49wHsSubxC3Nd8b
         X6wFsuIpVFvp2bX3s4m4U132nKLOF05pvitj8C0+4dBhfJCDm9HKZPGuMPvqN12kO1BP
         06Ig==
X-Gm-Message-State: AOAM533oE4IclO+4fsydrm//mlolBwjL57rDGDvjHRY5fSLgCbpSO1AU
	u51ZDKGPMrArMJ8T4kk1few=
X-Google-Smtp-Source: ABdhPJyQmoQd8wojuz5BZAwMaU8xhbkYFxQ/hcFf7zu5iE6RdaH+HZVN2R63soYALZqw7QeE0EGsSA==
X-Received: by 2002:a67:3104:: with SMTP id x4mr4117584vsx.0.1613011786672;
        Wed, 10 Feb 2021 18:49:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:30a3:: with SMTP id y3ls483051vsd.5.gmail; Wed, 10
 Feb 2021 18:49:46 -0800 (PST)
X-Received: by 2002:a67:8c85:: with SMTP id o127mr3361387vsd.10.1613011786304;
        Wed, 10 Feb 2021 18:49:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613011786; cv=none;
        d=google.com; s=arc-20160816;
        b=EOEe0AiTcKwu3PoWmHGrDJIT1BcOFzOn/8MEv5pzzDWZpAbq1EaQiJbjjvewvxteLL
         fJUTSNidqc8urvxBTztpKVg1VC6HgC+52Yu7ziOa+AGQ0FpPxR7r0MjK/iYRXvSnxYCt
         YY+ng6/8+SgUAKkY/yK5oUR7wFbOYQGdT1dwXOlfP8USN2xwaPKYJO/s5xnlYIuYCFfQ
         cuL5IzG182/XaxgHS1sS/Yn/hcIl5wLJuIaxMpv/TKrSlCgVB8RnvuoD8xTpOtoPV+fg
         +gN5RemWPuAMerGh2El7VaDoiBrG1mCtl8y7yMw+4sS3R1t7f2DIuJCwCjmXWjtbY2E1
         HbeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VaoJE7/GJ4K+bp8gb5Dh6eWAWGOWTafhGsM2qyOdh8E=;
        b=Kt1PEqaDMzRmm+T18xFyImcNSmNayQCt6ChJvYy3OqA2OTT/f+FIRAFuKvSXgpfLMr
         pMW3UxdNRw3hymXvyBYgb9O/OdDoakJS5tVgV8AQQIxZI44JMnTKVzFCUSofln2bOQLK
         iKoDvCWRoSNoHP3mjKgC9G0obJiJDFXVpQ9Dqp2JaqnXas6XpcVwgfElsfxJdr5xiR69
         YvRB4gX9NwOkjJoR0VGy8NDbRy0WKk0nAFKHZsPI7J7yDJiEKZtxFQxTSjwPbMhoomkP
         7RrEFlg0koDe9DCCaAmegbgZlvsBSsqMvmzX1I5keGiRmgXkY08mWZREgoCfM325xh8/
         gLrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=itDwjMup;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com. [2607:f8b0:4864:20::232])
        by gmr-mx.google.com with ESMTPS id c4si273607vkh.1.2021.02.10.18.49.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 18:49:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::232 as permitted sender) client-ip=2607:f8b0:4864:20::232;
Received: by mail-oi1-x232.google.com with SMTP id l19so4540207oih.6
        for <clang-built-linux@googlegroups.com>; Wed, 10 Feb 2021 18:49:46 -0800 (PST)
X-Received: by 2002:aca:af91:: with SMTP id y139mr1468705oie.88.1613011785924;
 Wed, 10 Feb 2021 18:49:45 -0800 (PST)
MIME-Version: 1.0
References: <20210211023857.3534210-1-ndesaulniers@google.com> <20210211023857.3534210-2-ndesaulniers@google.com>
In-Reply-To: <20210211023857.3534210-2-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 10 Feb 2021 18:49:32 -0800
Message-ID: <CAKwvOdm69LEA27WLkh1mv6L+K0o+MsT3Jkr5rPmjB8QH1Dr9Aw@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] ARM: kprobes: fix UNPREDICTABLE warnings
To: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	"kernelci . org bot" <bot@kernelci.org>, Peter Smith <peter.smith@arm.com>, 
	Renato Golin <rengolin@systemcall.eu>, David Spickett <david.spickett@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=itDwjMup;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::232
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

sorry, resending to all relevant mailing lists...EOM

On Wed, Feb 10, 2021 at 6:39 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> GNU as warns twice for this file:
> Warning: using r15 results in unpredictable behaviour
>
> via the Arm ARM:
> K1.1.1 Overview of the constraints on Armv7 UNPREDICTABLE behaviors
>
>   The term UNPREDICTABLE describes a number of cases where the
>   architecture has a feature that software must not use.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1271
> Link: https://reviews.llvm.org/D95586
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Suggested-by: Peter Smith <peter.smith@arm.com>
> Suggested-by: Renato Golin <rengolin@systemcall.eu>
> Suggested-by: David Spickett <david.spickett@linaro.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/arm/probes/kprobes/test-arm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/probes/kprobes/test-arm.c b/arch/arm/probes/kprobes/test-arm.c
> index 977369f1aa48..2543106a203e 100644
> --- a/arch/arm/probes/kprobes/test-arm.c
> +++ b/arch/arm/probes/kprobes/test-arm.c
> @@ -166,10 +166,10 @@ void kprobe_arm_test_cases(void)
>
>         /* Data-processing with PC as a target and status registers updated */
>         TEST_UNSUPPORTED("movs  pc, r1")
> -       TEST_UNSUPPORTED("movs  pc, r1, lsl r2")
> +       TEST_UNSUPPORTED(__inst_arm(0xe1b0f211) "       @movs   pc, r1, lsl r2")
>         TEST_UNSUPPORTED("movs  pc, #0x10000")
>         TEST_UNSUPPORTED("adds  pc, lr, r1")
> -       TEST_UNSUPPORTED("adds  pc, lr, r1, lsl r2")
> +       TEST_UNSUPPORTED(__inst_arm(0xe09ef211) "       @adds   pc, lr, r1, lsl r2")
>         TEST_UNSUPPORTED("adds  pc, lr, #4")
>
>         /* Data-processing with SP as target */
> --
> 2.30.0.478.g8a0d178c01-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm69LEA27WLkh1mv6L%2BK0o%2BMsT3Jkr5rPmjB8QH1Dr9Aw%40mail.gmail.com.
