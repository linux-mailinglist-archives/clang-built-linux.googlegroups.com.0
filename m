Return-Path: <clang-built-linux+bncBDG5L5UT2UARBJOV5PZQKGQEVUMRR7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F16192067
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 06:22:47 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id h191sf1188876pfe.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 22:22:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585113765; cv=pass;
        d=google.com; s=arc-20160816;
        b=YtrvjkdVxrxFuejnkTryus2nGN74kh32JV0AWwewgPWoQ8Od8NLgDQdeeNeS6Skr1K
         xxK8dfJIlzMZV0Ms5vQ5LkCzD36ThG0hXLTlBloSuYph4+JFl1zItidLPsaYYwJ9H8So
         UDUEXF+FN4Cm+nCQo3BBuLAP7uVNypV9GEOrclAB2By0+ss7Ak99yz/8eDWE8eFAASaG
         3YXnPU1XnaXjBE0A1ozO9L6KvTxOfJRDLTRo5VQg5HP6NfdZuKnHKKDCxc87b+t4OeyB
         RmzsGs0Jvo+tBnFci8g7XlIqMimP5Xo5766X34qSO0EtykN7b4Rx8nSyzmXOfUIfa+z3
         xaEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=kw3+doreI7lz+vOaA6xNXBURGjMenTNv5Tr7QiCczeI=;
        b=bTU/uqBb3xwwztulTtKQtag8l7RHquTiOV0h6E5YIR2BQDm6l7fx3adxO6HyyVMrmH
         niE98WuNyi1JqkPxXGlnq0908Vm6U7S5H+5JIfV0xfsKVG+lN/LZSyk3rV8KciKs3xTP
         +/Yde5YXmeBvqvnRFj9sEFY/dRBCgFWRwaiIEIC9iMHl0J+P++wh00rMaEtrLcyF/xL9
         aL3x9FcH2CKjxpYpFtHTMrPCjAtmrkmP5+W/kQMfo9/gxZvYsC0qtcGwaXfB2QrVDlD8
         eak+f3nt47n+kbon0VBKiwz6za/yGxip/21qstOuVgUMmbeaitfPuHPrqiN3s3xJfdCo
         5wWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@jms.id.au header.s=google header.b=gNq40aGl;
       spf=pass (google.com: domain of joel.stan@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=joel.stan@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kw3+doreI7lz+vOaA6xNXBURGjMenTNv5Tr7QiCczeI=;
        b=bsxGLq/tJFh38MTq8LUVlZcspbCi8YmWm+MqqMiaFTZF8PDFwbulqOuvsZ6X1vynal
         VzjY83LmYgSi7JLKNGPTpRsHp+gH52fy/C8FseaBRyIa+rFYqT/Vyt84sCwSAjFZDWnu
         ekJpkZA1KgSBskY6AzPMXB3urKUXjBIQYrW8Duu7NQW/qbnC2zBg1VsbU9omdbGmoQgo
         DEO8QLf+D7//Sh6tzWMXY4OKTWiU4Q3qH5xfsCS2bKkMH//loHk8PNP5X+ocurKobvJs
         Z0tuq9ZnWk9E37FrGkG2oxOGR6dEuuPBKBfLsnD2pD09e0J78GAXj4s+sjGeALUlp7gh
         LEMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kw3+doreI7lz+vOaA6xNXBURGjMenTNv5Tr7QiCczeI=;
        b=hsKQMHvEAsHAjk9qVjnL32j7JTiXA32ILMD1/yTkn9I2timdTbMHKh36iVJ0Wqjnn6
         4h95P0zzyBGPZJmXw9w1lIIKA5Eyz1be82NsH/rl0T15mez6epLazk0zUCcBgo98VjC1
         CHFPzn1NjxMtbmC3lYo+vsblIDM2KA8PZ/GkCttPTRqcNSHaI/UyTacYPvEDzdiSKN+r
         LtjXi9r/38e8KDOTKBX5zgSWr9lkpaout49wroHEBXHTEJCgSYZROsRb+7RPxgidBeO+
         0RsFblLcszAR99vLRWtbnS8K1mYhJedt5er8Kext5FsebuLhiVjt0VzkirEomRqU2jW1
         /yyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2h9egfj5vMr+CqhWLA2kDbnjCh5xepTIXfAAgo5XHZ0PkN4OIM
	I/hjlstqUtNmxHKCVStHhXw=
X-Google-Smtp-Source: ADFU+vuo1mt77bhta5cvBdEXGub9J4Hpe9+BGsbx68dLBCirprT+D3M3vp72eem9Se1qlO4VOwaUPg==
X-Received: by 2002:a63:a74e:: with SMTP id w14mr541835pgo.231.1585113765530;
        Tue, 24 Mar 2020 22:22:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9708:: with SMTP id a8ls687012pfg.9.gmail; Tue, 24 Mar
 2020 22:22:45 -0700 (PDT)
X-Received: by 2002:a63:fa0c:: with SMTP id y12mr1375125pgh.19.1585113764930;
        Tue, 24 Mar 2020 22:22:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585113764; cv=none;
        d=google.com; s=arc-20160816;
        b=bN2+NEHSw2rbAo8JjlwQdoLL3ErJSi0DvFzfhvjmr0nLYb6oStZqro37oa4qEWOPv5
         FiQ8VfFgQX9/fPzT/jDLim4QWe6kDyxnM35ZnYRAxZK7+DeapTIky1Z1w1vR5i8FvsJz
         se8O5MgcycoLKxSNw4p5XaxD/s9LhNcELBOitm+mIqW+8ldwkC8w/NTjn29oOKLGbkVy
         AyE0TU2jg9uDZoNyzSeShX54owmjlbFXxgNw+kXw0NgeX5MU0aWmIaY4mVLPjJOGSyDH
         whBmrXW6NBRcTyccbnvsDGp3TF/Lzq49twWyAo3nUZ+N7DNDE4eSULJ/SmDkTX0WJnEG
         St/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4vuy5iMbkWzUJjs5KXWHmrZOeilRi4q9EUgRXcNEaaU=;
        b=Ji4iQ4oAe8g44uZxjsDQai8SPM6inWPcRrTpYH7x080bzjw1vaZ2uKCJYc/hm2MtnB
         LvFPRD0E3pLUxPzO09GV+pIBgf04M+fRubiZAxSju8hVgx57gM9FbMFlFw88Ha5yrPhZ
         kQX/uHno/J6V41uVp+ecC7DwcvBvclrbTY0k8SKWAWi6Syg/jc4q1+AYdzet/EAWNPej
         5d5zDNQMIe3u+BSplsagNRBHvWCgqmNnDVz2ow7HmG2TItsiXIDelUg/fJ3JAq4ljTbw
         KQEAEPWYgpJyBWt6IXTSkjqEuSiK3QsBZwv5Ioh/j9tJ67jiaChkeYshvCt/W7cL4nqF
         xOdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@jms.id.au header.s=google header.b=gNq40aGl;
       spf=pass (google.com: domain of joel.stan@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=joel.stan@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id c16si166238pgw.4.2020.03.24.22.22.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 22:22:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of joel.stan@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id t17so1206016qtn.12
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 22:22:44 -0700 (PDT)
X-Received: by 2002:ac8:18a4:: with SMTP id s33mr1369964qtj.220.1585113763638;
 Tue, 24 Mar 2020 22:22:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200325051820.163253-1-maskray@google.com>
In-Reply-To: <20200325051820.163253-1-maskray@google.com>
From: Joel Stanley <joel@jms.id.au>
Date: Wed, 25 Mar 2020 05:22:31 +0000
Message-ID: <CACPK8Xf70Yq2szW110G_2f2Q3J6inVqQY4Y-y0tggkVmT7tmfw@mail.gmail.com>
Subject: Re: [PATCH] powerpc/boot: Delete unneeded .globl _zimage_start
To: Fangrui Song <maskray@google.com>, Alan Modra <amodra@gmail.com>
Cc: linuxppc-dev@lists.ozlabs.org, Michael Ellerman <mpe@ellerman.id.au>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: joel@jms.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@jms.id.au header.s=google header.b=gNq40aGl;       spf=pass
 (google.com: domain of joel.stan@gmail.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=joel.stan@gmail.com
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

On Wed, 25 Mar 2020 at 05:19, Fangrui Song <maskray@google.com> wrote:
>
> .globl sets the symbol binding to STB_GLOBAL while .weak sets the
> binding to STB_WEAK. They should not be used together. It is accidetal
> rather then intentional that GNU as let .weak override .globl while
> clang integrated assembler let the last win.
>
> Fixes: cd197ffcf10b "[POWERPC] zImage: Cleanup and improve zImage entry point"
> Fixes: ee9d21b3b358 "powerpc/boot: Ensure _zimage_start is a weak symbol"
> Link: https://github.com/ClangBuiltLinux/linux/issues/937
> Signed-off-by: Fangrui Song <maskray@google.com>
> Cc: Joel Stanley <joel@jms.id.au>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: clang-built-linux@googlegroups.com
> ---
>  arch/powerpc/boot/crt0.S | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/arch/powerpc/boot/crt0.S b/arch/powerpc/boot/crt0.S
> index 92608f34d312..1d83966f5ef6 100644
> --- a/arch/powerpc/boot/crt0.S
> +++ b/arch/powerpc/boot/crt0.S
> @@ -44,9 +44,6 @@ p_end:                .long   _end
>  p_pstack:      .long   _platform_stack_top
>  #endif
>
> -       .globl  _zimage_start
> -       /* Clang appears to require the .weak directive to be after the symbol
> -        * is defined. See https://bugs.llvm.org/show_bug.cgi?id=38921  */
>         .weak   _zimage_start
>  _zimage_start:

Your explanation makes sense to me. I've added Alan to cc for his review.

Reviewed-by: Joel Stanley <joel@jms.id.au>

Thanks for the patch.

Cheers,

Joel

>         .globl  _zimage_start_lib
> --
> 2.25.1.696.g5e7596f4ac-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACPK8Xf70Yq2szW110G_2f2Q3J6inVqQY4Y-y0tggkVmT7tmfw%40mail.gmail.com.
