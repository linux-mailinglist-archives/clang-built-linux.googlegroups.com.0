Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHNMR2DAMGQEUQQXB6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1524C3A472E
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:58:07 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id n17-20020ad444b10000b02902157677ec50sf22870491qvt.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:58:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623430686; cv=pass;
        d=google.com; s=arc-20160816;
        b=HxmAuDEyPfoR7B81GYM/ug5OPRGNJy+d+co46V1lhk5IxsC121oNYwv9eooSUWq55a
         Uo6yjZo0SoTti7dKHqd3Wqg8iq4k1DzWSO/75jcyE9INiqDDzHYT1Pde/CSi1IUk7kNU
         0ct/73rlunuhMoSQdjFkCorLK/aiv2C4ofNNaeHfN0n4aUSPXXZWHVbW00/wNhminzcg
         P7OVp3nRw7l928IILh3BkqqOpGcLe31BdCtF3pcIzekh7d9JZGigNuMbHPkFt7zHJqu7
         8gt1PODDKGkQptzN37WIRmhHqyT2PbOU4df4tjGU7qcv7++M0c4dXyZJSUTgPXVzusUE
         LrsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=BMuLdnlD8p6wXUSSA6u6SpbsjRCgQtmdSY6XqXaEhJA=;
        b=Q//qMRdCcWVtYr1CH9slgGP4BoKkXgY2Meu+tjbl61iSUBATRpPTJUHHMgy4S8o5OB
         3wsZjUhM8WsU/+mDLDD/6OUX5Ybxx9eqKuRLfG0qNhcQVSzXbuJhLypWNrM/s5v17Rst
         YorDl2ipSezwtNsvetb3imQtWYvQUIl6IVlcPXNmlGDSkfj2VXIrHygmutiXhG1jGTLT
         CQ7nH4r+BQjHLU2DLmfYbmkUyDvsqrg2iKZCmXWdSlM/PkIANflb/wcfFGtnYn1meCXB
         RXGmZ/0vSaBRw6kFqmEMq5l4zdVZG4dzoOuHFIXs8Fc9up+siyGQaLYq1itRdE+nYv1y
         VLNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LL56kf5W;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BMuLdnlD8p6wXUSSA6u6SpbsjRCgQtmdSY6XqXaEhJA=;
        b=awPciI4gWaL1LMtI85+7Ww6s1NtCfo5ZAtXtX7MadY7y54wcZL8fXULO/R8hRFmRiv
         fsdsfJrsfvmtmtjL6FmulJdMHO9cpS4HcKWdLc/pa5GCuM9fFkmn5osObSyGtiqwMCpk
         DuDQkbvRF+Rk8m7IG6r6u2PwZiVDDei4/qEfZx8OMxLOhmkStij6sIjWpHH/GWbj0dDH
         tISSjLK8hfa4DvT8I4rUhzjNpwaNvsVgXg40/xxsxU7S4o/ZkuAvN+IhfS8TLndtlOk2
         FElNxrbeWJkNzLb4NMzbZxbw1Y1vab35YAofSQ5LYDQWd0D80QCCZQIIcRWb1YtGHQfx
         c0nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=BMuLdnlD8p6wXUSSA6u6SpbsjRCgQtmdSY6XqXaEhJA=;
        b=EgLU8kSytbsR3iHGRJLGGCWyn72a7ggjOWF4y9OhCpSqBPtGyuC53zV7frapfy9ah6
         B0O9SfFB9KMw27UsXjuN+I9owxLm4CDJ6FUDA1pWAh00H4k9C4+P9Y7sDBeVfvcWXjbC
         ZA805vVgHkZmzfdDLcQ0/DzANNQqC3couZhMYiSxyXbJs2h1cHWADtwBxtw4KMuohJ+s
         msgu8nk656chbL7oE4XFITckgSW1c3GrBawx22UID28o3I7/1fzciBKydFPnbKOAPq40
         Mm0VRz3R2TxKo0Ah5PTF1LphGPK9bd3r8c6CFoJku4IT28AncpBOYcO9mN9dXKQTihav
         CEQg==
X-Gm-Message-State: AOAM5335+E3DrsuDLzwVRVp9SDCXMcydLDjwtK/5zJmNWSDYKTHyieQZ
	eyzXbmNC8SpY0ee/HYpLIlM=
X-Google-Smtp-Source: ABdhPJw1F22jwKa+IGPBZ2/RLyOMzWWqeYUNB/3T1ycHU1fK24hlOHOLJRKaEmUJDNI9ae/x1KR+5g==
X-Received: by 2002:a05:6214:1909:: with SMTP id er9mr5702593qvb.13.1623430685960;
        Fri, 11 Jun 2021 09:58:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1319:: with SMTP id o25ls5787233qkj.6.gmail; Fri,
 11 Jun 2021 09:58:05 -0700 (PDT)
X-Received: by 2002:a37:a8c1:: with SMTP id r184mr4757736qke.129.1623430685676;
        Fri, 11 Jun 2021 09:58:05 -0700 (PDT)
Received: by 2002:a37:b342:0:b029:3aa:2738:289e with SMTP id af79cd13be357-3ab436f4305ms85a;
        Thu, 10 Jun 2021 12:20:45 -0700 (PDT)
X-Received: by 2002:a05:600c:3b13:: with SMTP id m19mr379432wms.53.1623352844997;
        Thu, 10 Jun 2021 12:20:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623352844; cv=none;
        d=google.com; s=arc-20160816;
        b=Dm9JmLZa8D0r7AiBLH1TNrJSlfjxoNVdyOgyfb8fT2TrSSE8dtZhlVUpJpYdSCyIaW
         +mWOKqlV3ghHqUnDHzxwSeE4S4vqWi7dUycxwLJf+Z13HqUmq2V/OUdfuTm3GjZ0lKhs
         fwzySSUe63qMIvsJf8w/NLMKYcoA0O7h7XNPx5Nn7X4E/0uv16uJ7+6iLxQIR+BuzeZc
         fTSSZnN1JuKj4vaYXxNT2hGbAabI+0OjEvna+hu0KwMuyllhRq9Iw+mDRqc/IHOPcZ61
         UzTajxnXRREbTqHVIJvNyYKLfiou7rKc5u6nfb3L/v1h3LPup8imgDNHKrKTUiF5srow
         BWtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TCR4wjdITK+kupOKjLE86TVEkMZcR5bv/LNyb8r3Nyc=;
        b=yM0AtVnbyRr1R4gOEmNrDpojcPHQzHRqWhf8bkwgZP43a6rVIbKDpNHywGmf8aliE7
         KqCoFd5u5tiIIw3henPD6KaLp2N93rbPrrKeqgEumE9nQAHkhk/2sdqTWhq3GFWJVPkJ
         C2S+MhhwkkaHiXpoxmUk21Xqv9D84G3g+x7mF+fdyANZmhiM8w+7HCrXdfgj3HWr3KYO
         X6iHsgYMOMG0u/1GgoIufL6UEA25lQ4yTBMWITSPUmiocHvaulsfQBtpd5evC0hVxifG
         BMHJavrjWs0KcHVJ3dR8rlge1MWecopqtT24eT7+Ulbph7w1305XPTKo1hiu7Vv4auF2
         nYmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LL56kf5W;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id g17si353693wmq.4.2021.06.10.12.20.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 12:20:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id e2so6422615ljk.4
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 12:20:44 -0700 (PDT)
X-Received: by 2002:a2e:b5b5:: with SMTP id f21mr79310ljn.479.1623352844553;
 Thu, 10 Jun 2021 12:20:44 -0700 (PDT)
MIME-Version: 1.0
References: <214134496.67043.1623317284090@office.mailbox.org>
In-Reply-To: <214134496.67043.1623317284090@office.mailbox.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Jun 2021 12:20:33 -0700
Message-ID: <CAKwvOdmU9TUiZ6AatJja=ksneRKP5saNCkx0qodLMOi_BshSSg@mail.gmail.com>
Subject: Re: [PATCH] x86/Makefile: make -stack-alignment conditional on LLD < 13.0.0
To: Tor Vic <torvic9@mailbox.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "nathan@kernel.org" <nathan@kernel.org>, 
	"tglx@linutronix.de" <tglx@linutronix.de>, "mingo@redhat.com" <mingo@redhat.com>, 
	"stable@vger.kernel.org" <stable@vger.kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, "x86@kernel.org" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LL56kf5W;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Thu, Jun 10, 2021 at 2:28 AM <torvic9@mailbox.org> wrote:
>
> Since LLVM commit 3787ee4, the '-stack-alignment' flag has been dropped [1],
> leading to the following error message when building a LTO kernel with
> Clang-13 and LLD-13:
>
>     ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
>     '-stack-alignment=8'.  Try 'ld.lld --help'
>     ld.lld: Did you mean '--stackrealign=8'?
>
> It also appears that the '-code-model' flag is not necessary anymore starting
> with LLVM-9 [2].
>
> Drop '-code-model' and make '-stack-alignment' conditional on LLD < 13.0.0.

Please include this additional context in v2:
```
These flags were necessary because these flags were not encoded in the
IR properly, so the link would restart optimizations without them. Now
there are properly encoded in the IR, and these flags exposing
implementation details are no longer necessary.
```
That way it doesn't sound like we're not using an 8B stack alignment
on x86; we very much are so; AMDGPU GPFs without it!

Cut the below paragraph out on v2.  Thanks for the patch and keep up
the good work!

>
> This is for linux-stable 5.12.
> Another patch will be submitted for 5.13 shortly (unless there are objections).
>
> Discussion: https://github.com/ClangBuiltLinux/linux/issues/1377
> [1]: https://reviews.llvm.org/D103048
> [2]: https://reviews.llvm.org/D52322
>
> Signed-off-by: Tor Vic <torvic9@mailbox.org>
> ---
>  arch/x86/Makefile | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 1f2e5bf..2855a1a 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -192,8 +192,9 @@ endif
>  KBUILD_LDFLAGS += -m elf_$(UTS_MACHINE)
>
>  ifdef CONFIG_LTO_CLANG
> -KBUILD_LDFLAGS += -plugin-opt=-code-model=kernel \
> -                  -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
> +ifeq ($(shell test $(CONFIG_LLD_VERSION) -lt 130000; echo $$?),0)
> +KBUILD_LDFLAGS += -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
> +endif
>  endif
>
>  ifdef CONFIG_X86_NEED_RELOCS
> --
> 2.32.0



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmU9TUiZ6AatJja%3DksneRKP5saNCkx0qodLMOi_BshSSg%40mail.gmail.com.
