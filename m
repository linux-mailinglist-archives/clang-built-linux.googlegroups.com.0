Return-Path: <clang-built-linux+bncBCU4TIPXUUFRB3VGV2JQMGQEVUGBKMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0D7514349
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Apr 2022 09:27:43 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id g9-20020a1c4e09000000b0038f20d94f01sf5502474wmh.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Apr 2022 00:27:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651217263; cv=pass;
        d=google.com; s=arc-20160816;
        b=xxk0b13MSd5UnUXTqUhDVld4tzB4NGQnPDnbzwxxANbTC6FU+YSLMRkAUGhSuF/Dqx
         EOis4+M24x+6L2BMbjjfnr2+nLkWiuLXnptU2G+WFGt7bbM8BuP/Ah6XraMqX80P1Br3
         BGdD/YwOOY1VMYZsOrwt8d6ixnMHavE7R9govINdfB4VroVSOjuEf0BrI1DeNqlntmw7
         9Jibxt0RqC7nPB1wCAV+z59JuuqyyLDnfNxarHp5wVQbHuy+s7zUJHH8stMZNARfpQGO
         cuoxTkYjzvv6U+7UbDxApP0JWkNNZesWvPMn1R0ANYUy8ZE57qkpjRIhCfB8O+brhvWf
         PNbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=sILmS+8m1208dY1kvmi79BtcEoznFBD0dfLWa2Boaoc=;
        b=C2Se7KNvmwoCKb1QfVhrW+EiyaTBhFXdYmUNNW9fVNf0u14zMnZ8hAKXe0k2jBR44w
         IN070dg64UetDP+jfsuHJ5o5zTsxw3+Mmbk1nxDwlAygm1z3S/sEQ+sxaSpeVOeRqoIo
         XeI6ZnWeok2hWHu9IrHSV0oCjByXvrvibV8UrJ32ChtqxbjOJKm7JhTb+XBuAgd+pOqd
         hLjGSPu11KRwgRjQNTqF0XnjW0UAeVS1xLQQBirivPkuxc7TdTFz8XY9DTUdjtfBGEjF
         4/XjPHIxFYpAZnmXNHN/ArmHPP8DGUXqQXtUBcO69t9QQvbUG20IFthX/kvrMEjLEuoF
         zXZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SQ9NApad;
       spf=pass (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sILmS+8m1208dY1kvmi79BtcEoznFBD0dfLWa2Boaoc=;
        b=icT1i2iL9dowmJ+lTGeI/Nkqi7NetBU+A15ELTCC3N0QXk9VHexl+iXXAnK0gTQyQN
         NHKGmUlx2aA1WRX8MqKvfoLDdW1eAvRlTUIQ774o5r/tyP2A/Wn7O3JmoGNB1CP7kSPL
         JJbPq8k5WniK2P2jePCMafj1E2y5nSi2SdD1hdxRn5qeHM1KhgUduzeN0YzeNyGKnOc1
         qCNdZyW4H0yDFk0QegXa6Lv+uq/dTO0PopHCrqjHcgGXa4Tw8ZAY4P48btW3usx7q804
         fXV4817/qA+042GgMJ/DsmBxSDZfqgTh/KfAletObxOf53CBWnGevwU+JVMnIZ5KVQOk
         QN4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sILmS+8m1208dY1kvmi79BtcEoznFBD0dfLWa2Boaoc=;
        b=oNYs+8x/Vzu9GNuZooIIDSMTaQecGxiE1HDIlDWvi9rT2IE/9OvyoTmCorP9b23jG7
         54a9T/bZ0Wm7jQfKkp0Q/SeLP1nq9s5AseqhNbQwiVeS9/LXTKA2B6tx8beSg1V51iYL
         6PsK8swZ2ejWO3WrdP9X41IL0jhW4TEg7jIN7IhM7TIEyXXe6t8y/AWT9AKwOU3C8bUr
         Z0xus0nkLaqx0GmnsNxOIt2p/XcTvIKxeYqBxdkmbuelt4UPfE9gKbfXssvzxsnUUpA+
         VUL+sOx98PufQrHqo/Vhczl3M0maS+NRPRPUR0Uo7fyaYwB/HQSTqiTYc5aaDNMuwvhl
         udpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tgxc09HWFIlXVwCKV5TyGPW9A2oi8Y7ia/tO5E1vmnsmsq5Iz
	sYhpLiNk5poB2E8i+j1KsWs=
X-Google-Smtp-Source: ABdhPJx7MLLboiYSetJ0k4qKEagSLHkE98bqqbJUB2O6hYGQhaLhXoh37zH4fB1MSflPufVCb71l1g==
X-Received: by 2002:a05:600c:5114:b0:393:e80e:70be with SMTP id o20-20020a05600c511400b00393e80e70bemr1920646wms.204.1651217262933;
        Fri, 29 Apr 2022 00:27:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1ace:b0:20c:3dff:8284 with SMTP id
 i14-20020a0560001ace00b0020c3dff8284ls2982596wry.1.gmail; Fri, 29 Apr 2022
 00:27:41 -0700 (PDT)
X-Received: by 2002:adf:ecc7:0:b0:20a:dba3:a516 with SMTP id s7-20020adfecc7000000b0020adba3a516mr18776064wro.143.1651217261669;
        Fri, 29 Apr 2022 00:27:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651217261; cv=none;
        d=google.com; s=arc-20160816;
        b=zUof6hHmzMGuIonaMdhaL4K7HNmYecCJ7Tm1l2hzEcy8RWgRk3CNvmSzWbVYd8mbYp
         UBEUeey0zo6VD98SthrqxNJ7ySVCBa/9WvA29Yl+PDi8Bn/75/JKHJ8On6bZ4KKHZwyr
         zUdu9Kgcw07mmD8WgRzuYuYY/5wyDkapxEF98kYHflZWNSNHNHYh4I27JkYUzv9ka3l4
         dufXgITIl99dJDpgX2EBU0HC8XhlZQgRWRXhHL0NCuwwx+lj+n59fMGsAoAj/x4lVgQu
         SpS/iDl0MlcjthJ/kT3EOtG3XMMwb73UTg7Lk4cel0aeElzmJJxfkfrbGzc17VyHm+Uj
         dDlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MwDDAqDSSycZZIvg1X5oEVWaiDFdcHCepoDtz+hIIoM=;
        b=0ZhshtFsbhKTlI8Mxc7zg2OogzM4m9gC5d4/A+V4r93VzYRZJLrMlK3K6D9Mg/1N9a
         TH5CvyF+IGeZ1zNc8dsVLjijQv+wyJgggwrIL6cUo5cEiv+Dd4tj9U4mVCqRwc92WC25
         1O9VS8gRdGMNL/+5v/vXi/2Yqg2pm6XsABuWOKxAVyy2W2naaH1g9NoYyFqrZgQjDCoS
         EsqX1Hbmv+yLIFAGQsI0c9fAPP8e0saLU2pOZhiEkQKbaZTa87kqEpzoEOz7VnRO6qIb
         eV/E9TULwF4fYxIkFCyVGcBQi6kp/qFe1SrJZPneVsUeRXgm/1+5FCidz0TZ38MWDluh
         uwHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SQ9NApad;
       spf=pass (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id o9-20020a05600002c900b0020aa8063034si381903wry.5.2022.04.29.00.27.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Apr 2022 00:27:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 549F9B8327D
	for <clang-built-linux@googlegroups.com>; Fri, 29 Apr 2022 07:27:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23FC8C385AE
	for <clang-built-linux@googlegroups.com>; Fri, 29 Apr 2022 07:27:40 +0000 (UTC)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-e93ff05b23so7390676fac.9
        for <clang-built-linux@googlegroups.com>; Fri, 29 Apr 2022 00:27:40 -0700 (PDT)
X-Received: by 2002:a05:6870:eaa5:b0:da:b3f:2b45 with SMTP id
 s37-20020a056870eaa500b000da0b3f2b45mr804864oap.228.1651217259261; Fri, 29
 Apr 2022 00:27:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220427171241.2426592-1-ardb@kernel.org> <20220427171241.2426592-3-ardb@kernel.org>
 <20220428024030.gwxb746c5gwvcnw6@google.com> <CAMj1kXEW-KPVWqS33OX0Qw-EAeX+XfocHGisVw8gsb2k_KffJA@mail.gmail.com>
 <20220428065742.rl3w5rz2ni2fhngl@google.com> <CAKwvOdm_zysTbsMp8GmmrwB3MU9MyZU-jtenH7JpPTX7+ZODKQ@mail.gmail.com>
 <CAMj1kXFY5AKvpjetuRGKA5Dt0hOPKY5S=oSFqgANTde=fe9rBA@mail.gmail.com> <20220429070318.iwj3j5lpfkw4t7g2@google.com>
In-Reply-To: <20220429070318.iwj3j5lpfkw4t7g2@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 29 Apr 2022 09:27:27 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHJb0EJPtQP1c=2X0eWg_6s0FyLqpqjauKbt5ktjhS9CA@mail.gmail.com>
Message-ID: <CAMj1kXHJb0EJPtQP1c=2X0eWg_6s0FyLqpqjauKbt5ktjhS9CA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/2] arm64: kernel: switch to PIE code generation for
 relocatable kernels
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Kees Cook <keescook@chromium.org>, 
	Mark Rutland <mark.rutland@arm.com>, Nathan Chancellor <nathan@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=SQ9NApad;       spf=pass
 (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted
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

On Fri, 29 Apr 2022 at 09:03, Fangrui Song <maskray@google.com> wrote:
>
> On 2022-04-28, Ard Biesheuvel wrote:
> >On Thu, 28 Apr 2022 at 20:53, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >>
> >> On Wed, Apr 27, 2022 at 11:57 PM Fangrui Song <maskray@google.com> wrote:
> >> >
> >> > On 2022-04-28, Ard Biesheuvel wrote:
> >> > >On Thu, 28 Apr 2022 at 04:40, Fangrui Song <maskray@google.com> wrote:
> >> > >>
> >> > >> On 2022-04-27, Ard Biesheuvel wrote:
> >> > >> >Fortunately, we can convince the compiler to handle this in a way that
> >> > >> >is a bit more suitable for freestanding binaries such as the kernel, by
> >> > >> >setting the 'hidden' visibility #pragma, which informs the compiler that
> >> > >> >symbol preemption or CoW footprint are of no concern to us, and so
> >> > >> >PC-relative references that are resolved at link time are perfectly
> >> > >> >fine.
> >> > >>
> >> > >> Agree
> >> > >>
> >> > >
> >> > >The only unfortunate thing is that -fvisibility=hidden does not give
> >> > >us the behavior we want, and we are forced to use the #pragma instead.
> >> >
> >> > Right. For a very long time there had been no option controlling the
> >> > access mode for undefined symbols (-fvisibility= is for defined
> >> > symbols).
> >> >
> >> > I added -fdirect-access-external-data to Clang which supports
> >> > many architectures (x86, aarch64, arm, riscv, ...).
> >> > GCC's x86 port added -mdirect-extern-access in 2022-02 (not available on aarch64).
> >> >
> >> > The use of `#pragma GCC visibility push(hidden)` looks good as a
> >> > portable solution.
> >>
> >> Portable, sure, which is fine for now.
> >>
> >> But there's just something about injecting a header into ever TU via
> >> -include in order to set a pragma and that there's such pragmas
> >> effecting codegen that makes my skin crawl.
> >>
> >> Perhaps we can come up with a formal feature request for toolchain
> >> vendors for an actual command line flag?
> >>
> >> Does the pragma have the same effect as
> >> `-fdirect-access-external-data`/`-mdirect-extern-access`, or wvisould
> >> this feature request look like yet another distinct flag?
>
> `#pragma GCC visibility push(hidden)` is very similar to
> -fvisibility=hidden -fdirect-access-external-data with Clang.
> In Clang there are only two differences:
>
>    // TLS initial-exec model with -fdirect-access-external-data;
>    // TLS local-exec model with `#pragma GCC visibility push(hidden)`
>    extern __thread int var;
>    int foo() { return var; }
>
>    // hidden visibility suppresses -fno-plt.
>    // -fdirect-access-external-data / GCC -mdirect-extern-access doesn't suppress -fno-plt.
>    extern int bar();
>    int foo() { return bar() + 2; }
>
>
> The kernel uses neither TLS nor -fno-plt, so -fvisibility=hidden
> -fdirect-access-external-data can replace `#pragma GCC visibility
> push(hidden)`.
>

OK. But you mentioned that GCC does not implement
-mdirect-extern-access for AArch64, right? So for now, the pragma is
the only portable option we have.

> >I agree that this is rather nasty. What I don't understand is why
> >-fvisibility=hidden gives different behavior to begin with, or why
> >-ffreestanding -fpie builds don't default to hidden visibility for
> >symbol declarations as well as definitions.
>
> -ffreestanding doesn't mean there is no DSO. A libc implementation (e.g.
> musl) may use -ffreestanding to avoid libc dependencies from the host
> environment. It may ship several shared objects and export multiple symbols.
> Implied -fvisibility=hidden will get in the way.
>
> There is a merit to make options orthogonal.

Fair enough.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHJb0EJPtQP1c%3D2X0eWg_6s0FyLqpqjauKbt5ktjhS9CA%40mail.gmail.com.
