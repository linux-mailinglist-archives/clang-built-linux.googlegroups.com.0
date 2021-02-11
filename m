Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBEGPSOAQMGQESKBBHZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 988B4318622
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 09:15:14 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id f3sf3632805plg.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 00:15:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613031313; cv=pass;
        d=google.com; s=arc-20160816;
        b=UBQECqokYVtm8hB+NAvcZfpfDatZVKv89IIc9xNTYtZOI5ltqnrifae/w57NgfmfS6
         qhYYTMO+Hy7OvEBbr72YzCxofR/1J2dnAe07HoTbamQSoTzP6320JNqHzFhSG8YK5kCn
         GU6fvpL7fcIf0vLeGFCY68eKSIHwOcQHaGvcAL1lLYkCWvcbnkOFwIp1wBrefAV7vNt1
         XLbC7Oj85BYabqlpHOLkIAF1pvPpPKMHhyxvyZ0LYALlPlO0+bE9iio+n8a6WUg2cO3N
         YbrdEmf2CkzO+U2TxNXHBfVQH6G0UNq8msNVwA8R3WAFyIrC7+CojbodxFPWvSUUBGgo
         f2QA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=tGTPS7Jvr+jZ3j6K5eu5HidUqMYLW+zPa/hxuNgsHHI=;
        b=jD7kgwWhYPQUSRwmlOXjXT2EIqkndMPE5UE7ROgMk3lH+HU358WfZ3+RQNnuvFst6u
         DPm9gLGX+07/zvGEeJjzlBNw0POzvAiO7y6MLGodz0UG+DzOd07VgmRbEzbhigX/9j+Y
         sLNEwGvoi81oFKPJcFxUz8KQLI+YPXJKzEJcxS1Ahx+Jmkk/lNvQa1CwQWp8vAj6HDYd
         84n8ZIX45uBIVi6NRXGM1yczl0MtsqxuOl9NJku0Aar5giumbjt2Wj4CJS4FlOoMTYhl
         wJer+55EEYsOUApRKB925Ls22/nlwZdhU12FKWRAbulA1/hvEjOAWwxykN3c/KzGzpnZ
         gjEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NIa8kKfK;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tGTPS7Jvr+jZ3j6K5eu5HidUqMYLW+zPa/hxuNgsHHI=;
        b=m2mthkVaYf33OgQc3k2MIXsKUZRjmfL+/qZGI9CPEoPepr5dEJnY9hpglH9IeFsqbY
         /4K7wI4V+6xvWoS5D0g1w9MqkRTanQXNgWwTD0zeIKoDCYv7cWKiUTU4jAytVVDI3dGJ
         djV2xfyXOT6eV9ZpKFfWg35r0pdy74t3P50VolJwSsY489bLIw6zQ1MlwE6QnYgBjO8K
         YDaj4o0x2LJjuwqinl1QxzvozlDRD31F7dAG8K8NIldt52G5BlGj2O3fBCicKrV3LPeb
         StsNpfDtzB75D52NnQP0TgbqxbSCP4a34SRQqJ+BzJLOnROK9yxgkQNmXGp3yIL6zjmb
         qMTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tGTPS7Jvr+jZ3j6K5eu5HidUqMYLW+zPa/hxuNgsHHI=;
        b=FIxI6FlpJrgCdCXJM1cK7+Zys0bs0zcg+JvVu+8kvWX9o5NQSo0AIRcX1rOeKIRMM4
         llxpbhLYgdIPrUJlA1hw2p9+Yg66jHwZ3jMU7dKbLFlibny46CcKHE3Ar1IGF9xe8/1G
         wl2lrl7gCfsp+raF8IhHGv3wgDfARq5EQFR7CDjjhxlvmhfSRljK/NSn8eFJa7kElgT6
         Ksl4uSWP9FSqd00JQ2QlJSVuYCWho/hcrv91V7uhkoPYiE5vcgGMX99z6qmCuit/zRQ6
         sNGX+Vpk1eoEV6nXiX9a+VeX3BSmvSxeej203dBzO0f3PYIBqLIA1ycpcIuwvV6IZ8Gq
         vD6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333OlbDPrVFdEFf4VDqkBighoBIg6mOjxdd9dauOT9OwVC0JwGW
	ms5jh06pI5+AG0N41sTP3PI=
X-Google-Smtp-Source: ABdhPJwUaYdhQzv9f7tVFc7/n3Kkh0TbmgMmobAtFxsOlIv/3WmQXI8jFzHdCH1sbYtyuwNLEiCbsA==
X-Received: by 2002:a17:902:fe85:b029:e3:a2f:e7a4 with SMTP id x5-20020a170902fe85b02900e30a2fe7a4mr4334255plm.1.1613031313039;
        Thu, 11 Feb 2021 00:15:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2311:: with SMTP id d17ls2148434plh.6.gmail; Thu, 11
 Feb 2021 00:15:12 -0800 (PST)
X-Received: by 2002:a17:90a:ce83:: with SMTP id g3mr2851240pju.133.1613031312337;
        Thu, 11 Feb 2021 00:15:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613031312; cv=none;
        d=google.com; s=arc-20160816;
        b=n9oXyZKbTmkoqtUqhyvKssxln2Q+DAQIV6WCeiq605GiLNDws95I5oxuBqDykf2jfl
         qykMCFn7bFvdz0W/tGqiwbpQbF/fQyhulTXKc4ceO411tOTjqpiOLk/YqzCA2R2CjKmC
         hKygv5G0RTAKNhQylpZqHNOoDzVvXRMBYavzwmkr4b9XbHm9QT4Dz67xDrrXNtssUkS6
         XjfnjpTFy+oilgWfojTahGyg0FJbKBVxIuxjK2Bn5RR6Lp5cMHUPvVwan5d91fo0v3Ov
         llWBcPTGitSQPAPwLykB5UAUn6zCqluMwFDtel11OIMLSbHutWSeZ+BJfcobM7JZptR7
         mJIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=05JsT8G3dDNpvGDtdnxJN4ly066HKxrSQevN3wrQbqA=;
        b=nzkMMDufZ+sWZe+aU+heHG3v/kMkY2GlpouJBuY2vAP3drxCUXgI9mOD2cqVR8j7RE
         5WsD4eSnQoXUCWTyXe+aW+Y8C3l+pEqc54u2Q+S00b2w6iHQU1hw+ddKpgARLEGhzvwZ
         7vb0vZjtYF/+WNW3w1TjW1Lcp9QzMI2zF5Y9FHflJ8QsIKzBeEFdltJzOr17yQzY5nwX
         LDDmPhCy3EQsbLT/plqn1uH9ofy8jfEeVHodDFafGsELiL6RfsF9eD++uxZhZd09qIHR
         Hdv1uhTJeJNUDpcjMTDBonk0AAfw+QmCyWCqoZOHuy1out4dZgOeFCMWbyrdFMPkYr4T
         rqPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NIa8kKfK;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n13si236096pfd.1.2021.02.11.00.15.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2021 00:15:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EEE2264DD1
	for <clang-built-linux@googlegroups.com>; Thu, 11 Feb 2021 08:15:11 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id l23so4405188otn.10
        for <clang-built-linux@googlegroups.com>; Thu, 11 Feb 2021 00:15:11 -0800 (PST)
X-Received: by 2002:a05:6830:11:: with SMTP id c17mr4884725otp.77.1613031311336;
 Thu, 11 Feb 2021 00:15:11 -0800 (PST)
MIME-Version: 1.0
References: <20210211025149.3544593-1-ndesaulniers@google.com> <20210211025149.3544593-2-ndesaulniers@google.com>
In-Reply-To: <20210211025149.3544593-2-ndesaulniers@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 11 Feb 2021 09:15:00 +0100
X-Gmail-Original-Message-ID: <CAMj1kXH9-1=o+UYU0sdKUF1YGDJYyLDvNKExzqkcrWzLB0NWwg@mail.gmail.com>
Message-ID: <CAMj1kXH9-1=o+UYU0sdKUF1YGDJYyLDvNKExzqkcrWzLB0NWwg@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] ARM: kprobes: fix UNPREDICTABLE warnings
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Peter Smith <peter.smith@arm.com>, Renato Golin <rengolin@systemcall.eu>, 
	David Spickett <david.spickett@linaro.org>, "kernelci . org bot" <bot@kernelci.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=NIa8kKfK;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 11 Feb 2021 at 03:52, Nick Desaulniers <ndesaulniers@google.com> wrote:
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

Acked-by: Ard Biesheuvel <ardb@kernel.org>

But can we add a bit more context to the commit log, please? It is not
obvious to the casual reader why it is OK to emit UNPREDICTABLE
opcodes, i.e., that these are selftests that aim to ensure that kprobe
never attempts to replace the opcodes in question with a probe, but
that they are not actually executed, or expected to occur in real
code.

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
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXH9-1%3Do%2BUYU0sdKUF1YGDJYyLDvNKExzqkcrWzLB0NWwg%40mail.gmail.com.
