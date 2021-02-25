Return-Path: <clang-built-linux+bncBAABBRWD4CAQMGQERZHAJTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5533B32595C
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 23:16:39 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id q10sf5549620ion.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 14:16:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614291398; cv=pass;
        d=google.com; s=arc-20160816;
        b=QbqZwrloqoMRYYYcNttZ1eN/uNRFtzmbbAFxD3zu+jqxUnAjtupwDccxxJaTZqUK0N
         uY/Pgwfv8EYesKAx3SEQ9zv4yL1TSP0OxPiUEHVkLZIk3D9npskeTEdX85utfyT4O9l1
         TmXooHhx9eCLUnRVnT/6El6iydIuV28ECVZoralyGHqI6TLNT/pwolNsaH3pt+UAeKfX
         B3TNx7ZC9vBrcvIdQFrcFaKlDfcy7xf6Wa7xlTn6zEqfkANDKyeWjvBwRvFhnt0P+bH1
         8QVWgQDo/21mWGZ3c+9UfmgvDSMZHpiL+jdiig0ikQzpqOlMoNz1XpuE8gMuz5hmkkit
         83LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=lJqUidFrxU4wPeu1ChEk0Ego1zVbosgrhKc+gYekyAU=;
        b=wlPTfov6uibLwwVdo22ujlLR/6+BG5foT0LxOyRl0ybHUswEVwaOL58GW0PakB3nKN
         DB3xwKrfpHSHBPE6pTpwOr+IM0CLj7afe6TutnbIzVzbfHb9aSxsAfZ8KQP644STi5Ma
         iPh9PuWtn5KdFKostyGaE0Xq2IRmxCCalfCn/ZYWG0KE0YJ/F9KN3CBGSJXhvGnvwvD5
         IPYZ1Hyr1iWcnpS3Ks4i4GfsbU2lH+u0qfw3CdyAOFobg2d6TobQGQe0hlL11Xm10kjA
         MFV3qMiLqItB6F4HaSzNUPYhCc/msxhFMPk0rn8FrxKkAuXrs9VhqdeT3JDnNsVviU3Y
         +ygA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Foyvf7WV;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lJqUidFrxU4wPeu1ChEk0Ego1zVbosgrhKc+gYekyAU=;
        b=Ps/pEYNTCJ8VefHnlg6QdFFDf6i90lKHh/+mjjqfk5vO/TrMmgAtVSKi4hcjn04B3X
         vvtN7gUhT6IrFxi5ir+9yJbBMqlKlE8jMaCQe5gvKkWgv5Cx2CrdYbkfWDdongfphcgm
         Ivq9TlqUAPMo/ELWu/yXhhxs0qmBgeCZQ1sNjYZJEZvn0lFeo1+y8luzE6bRub3o7i4H
         sYTm808ShBa+smYDS38NtiB+jiR0BkdEM5vIRIYK4VwnjySO7C5JmkAga+pxfUnuGUH1
         lnIhPwSNqlA0cj+tCi/Ycl0aUPQZPbB6CW6mi32B1om5BhvHJgwC++724SzAb1uBQEBG
         C9ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lJqUidFrxU4wPeu1ChEk0Ego1zVbosgrhKc+gYekyAU=;
        b=n8dABKD+64UnLkWH4f2WcRFlLpF+2cWIr4fFJUlfJGiPBmE00ePSp6M4T3itAa+ILN
         I+hv3Km3pJA0S7KyCO3ngRYFYkBJ93WI17Nx0QwX16g2N4ni2pvB0KL1d+LvbqoZGyuR
         NO/d/JOXE2jHQNaozNwUKEp53WQzRy7y+09qMwythw5xUbu/5HXjpG/J9NmSQUivC4XT
         tvwocKS9MroIRzNOsActbq6bJBb7NL7VKD0a+lbllnP4wZINPlx2oEXXgQrk3e2/cyYN
         buGZCu5j4YP9uRM+eud8nx240a7+53grnsLw1AGtT2Esh1G1v/pGMj1/VGOOUqWURPz4
         cN2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ITQ6g/ko6nrX3dZ/87aMibFJxn6zeGuVuX6Q3W0+ybZTcgiac
	pWRY3w4ErnJ2DxMqPuWcHn8=
X-Google-Smtp-Source: ABdhPJzNBDrlrLcHT4WMDlfUkrds0jiBbWBBIKx9V9wjbCOhgKw4flo9mp54lckHR/3Sg7xar3YXow==
X-Received: by 2002:a05:6e02:214f:: with SMTP id d15mr4465478ilv.180.1614291398164;
        Thu, 25 Feb 2021 14:16:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c6a2:: with SMTP id o2ls441160jan.6.gmail; Thu, 25 Feb
 2021 14:16:37 -0800 (PST)
X-Received: by 2002:a02:4406:: with SMTP id o6mr5139726jaa.97.1614291397891;
        Thu, 25 Feb 2021 14:16:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614291397; cv=none;
        d=google.com; s=arc-20160816;
        b=iD78kxx3f7xtitwFTwU5hh6/sfuDvO355APym9hSOQcPkuZOj2/7K3PtXpdnHgRZvM
         K2TLMwtaA8EJKuI/tIAHappu2auDUYMz5u3ozMCkoZynre3CT50K8bK64eoBLUf7Z2p9
         RN1WnpydJLzMFueBgkdqZ5CiBzaZkP9dDRqBtaE4nbRM/VJSf1WUXeol1PIgqofvQ9/v
         v7QZwl326TS806FgfzR7zcULPZmjxlh0oNbWonhV0bC0z/FYQcLx8FaT4HuLxvrJB0KW
         Q7fPHHMK71cfwBDXmIM/0/FnM/KZjTWHvxuN/OENk05Fz57bnPW9eDiHnpzPJMZAiZFb
         4ASw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Fvddjg00fYcsWFt99PdwolFDlpZB0CLpEulGrI1XxSc=;
        b=ru9HpYXbB5FkiSDPOBpF04uB8kWVl6Ny9bBJJxXGhOszbKtsvRyLd58Gjodj2dc6Wg
         U1LajRiplP1hKCdRbuaJUptQPLg2RIj8N+KIG2Dmn+iXfuuY5rqBqQ6YxsM/pmhLSGl3
         Fn9XzqU5Qi2UEcm3bbWOoTI6SEvtNziBrKMITBfG4MhBYNrEjGSqQw+eg5zbUsE4WEsI
         FT7kQIsjM65a94lnUVm4w4SmPLTg64LwsZm+vuoYH6IYUWkJanAkdkhzpO+Ino4/tdXG
         uhXzsxiQomH6TAbASBZI6YH7GKFfdpxIgxx/3t/GMfFun9RFi+Jc3q5Nl8yMAmBWkgMR
         jGAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Foyvf7WV;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d2si359136ila.5.2021.02.25.14.16.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 14:16:37 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EF5BD64EC3
	for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 22:16:36 +0000 (UTC)
Received: by mail-oo1-f54.google.com with SMTP id l5so1756808ooj.7
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 14:16:36 -0800 (PST)
X-Received: by 2002:a4a:304a:: with SMTP id z10mr101534ooz.26.1614291396149;
 Thu, 25 Feb 2021 14:16:36 -0800 (PST)
MIME-Version: 1.0
References: <20210225112247.2240389-1-arnd@kernel.org> <20210225114533.GA380@zn.tnic>
 <CAK8P3a0BN3p0F3UAxs9TKsHs--AiAPE0uf6126GVJNhmVTGCsw@mail.gmail.com>
 <20210225124218.GC380@zn.tnic> <CAK8P3a1ZiUHRxKr=SFgEFETLcSQeViPnR+XB2gBvbVk24vGvqQ@mail.gmail.com>
 <CAKwvOd=B=cHpp_XfPTtyVpQyrwQrFZX9SXKw=SJC1VC-VbEwFA@mail.gmail.com>
 <20210225213300.GF380@zn.tnic> <CAKwvOdkKjOb8fS7NgFxvAwEQTp3fPjenhvehnjh5xRw=HevQ=Q@mail.gmail.com>
In-Reply-To: <CAKwvOdkKjOb8fS7NgFxvAwEQTp3fPjenhvehnjh5xRw=HevQ=Q@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 25 Feb 2021 23:16:20 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3EiHxE7KVNnduJAYYwJWrMq2h+CpsoxTC1mEqOGnV2rg@mail.gmail.com>
Message-ID: <CAK8P3a3EiHxE7KVNnduJAYYwJWrMq2h+CpsoxTC1mEqOGnV2rg@mail.gmail.com>
Subject: Re: [PATCH] x86: mark some mpspec inline functions as __init
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Foyvf7WV;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Feb 25, 2021 at 10:59 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> On Thu, Feb 25, 2021 at 1:33 PM Borislav Petkov <bp@alien8.de> wrote:
> >
> > But apparently the cost model has decided that this is not inlineable.
> > Maybe because that function ptr is assigned at boot time and that
> > somehow gets the cost model to give it a very high (or low) value. Or
> > maybe because the wrappers are calling through a variable - the x86_init
> > thing - which is in a different section and that confuses the inliner.
> > Or whatever - totally speculating here.
>
> The config that reproduces it wasn't shared here; I wouldn't be
> surprised if this was found via randconfig that enabled some config
> that led to excessive code bloat somewhere somehow.

It was the case in some similar bugfixes I sent, but in this one, the
out-of-line function was fairly trivial -- there is one call to a sanitizer
but that's it:

        .section        .init.text,"ax",@progbits
        .type   early_get_smp_config,@function  # -- Begin function
early_get_smp_config
early_get_smp_config:                   # @early_get_smp_config
# %bb.0:
        callq   __sanitizer_cov_trace_pc@PLT
        movl    $1, %edi
        jmpq    *x86_init+40(%rip)              # TAILCALL
.Lfunc_end4:
        .size   early_get_smp_config, .Lfunc_end4-early_get_smp_config

I've uploaded the .config to https://pastebin.com/CvvEScnQ

This is with today's linux-next-20210225 plus a number of patches
to address other build failures.

          Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3EiHxE7KVNnduJAYYwJWrMq2h%2BCpsoxTC1mEqOGnV2rg%40mail.gmail.com.
