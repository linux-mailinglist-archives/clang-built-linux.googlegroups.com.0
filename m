Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJPHRL5QKGQEHJUERVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 1610926D03C
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 02:53:59 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id 12sf236805oij.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 17:53:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600304038; cv=pass;
        d=google.com; s=arc-20160816;
        b=ccciequ/VbL2w5sgtUNe/8bsugwxFb7ILaQfWlXyP34yN/GkYntUd87ejnvJccmhno
         YcbVOcJKY4G5bTY1vWEvdVhixwbMjvvzBlFQGLG/ol27KEryCSUrWA2PWLPQGteaBA8e
         a03dxEqBLw8PAtiGDEs5H/sSnxrpIle6b/DeCrtX6K0QV7sPYsHCHePMwhUZa/bUgQRn
         9l7WKzkECaXvRZYD96mAG4zNKjCegcsmmXZKJfQ4OcEVC6BUw4IkXJ8QBt2WkKZWqrXh
         NRRP5PspkrS6EltBUNB/FAaNZA36ATUGkPc/AWD6yF3DrDc2gGAREaSck89/ZCOdIVJd
         JW4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8GVRLwVPitGnA4Cl8jUk8ZyCOHZEPPADYhdVJ0eAJq4=;
        b=NQKu+CdAijN6EmQ0hRxGAlTnNXSj7zAkDA37uOcStYoj9Yq8QohXmG+lA5Nu8K/dcd
         lOnbQOmzFGw6V40UQC0PuqYLtkSr8ZRT4Y3akKXJCk4tS1g6ZwoJuDxVnAl5nm3rHlWB
         oJ6w8u32Fa66DtlcsVI0bKZL2IdeRcsUoU2rIo9IEpotgrLlp+Ms+ues61XYczss/bs+
         NMbSnO1Re104NWtEYZzaJQ9l95+yvyUbSTeeH1l3pPP1CrCHhTKQzGGPaEFR4EBITaIY
         XW2jMsBSDBqgHo/eSAnsB5RatCLke0pUQHK9oTj5yGSeagAjDw0WG6rRZuvgKycuVj5f
         oj4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g7ls+wXD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8GVRLwVPitGnA4Cl8jUk8ZyCOHZEPPADYhdVJ0eAJq4=;
        b=AjiIO3URgE4zb1Mm1/ZtiQxubxAgIvpTF08izTfTw+YiKxWabNo9DDiwIAcDpdl6PS
         jC7YJrkWb/OAx/XZp5m+rUSUSjTigyy4/6EkkCZNFfPukOO4h2q2nCIUzWiWPWQ6fcIb
         RhdtnHHZdaPiPsmKaCgE0T0G7Z/HqCOPqTSgQz21dR/7DAGvtpnI1/TpbOBbDwVd5+bL
         o95QXPexREDpXBNwPCbXTqY9eGO5WXOE6YR+2huQ3kTdSHZpZVfFhhU0pHwITjOYsPdo
         drubbca0dmQTptT4v/LavYpdt+INwSe9ZzC1llNBpiW6jdJCH2SYsVKyPB/UHFZWQl1U
         hr8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8GVRLwVPitGnA4Cl8jUk8ZyCOHZEPPADYhdVJ0eAJq4=;
        b=lwDPfva6lA81pJCqjwlrLAunERJfrlFAqCuuO8Fxv9/ErkwsrPFV/ix5kD0MtY7oQe
         /KJ0kqLZIFDMtCJ9HdcWP0Z//O6l3+bcqf35BaBKH7OXFHbXKkvEZ5z3sZJ1Fg0bIJrK
         g9sxMoCflSS1mG9BKlpehNSR4R834hSknxbh6erbUNrHtJZdDh+7gNg3crvmFrVYMbCo
         +hsRTFUCJYB1UcG8+pXlg8V/8qAC4lIga8i/McSCIUcFoRGrH0jD+z5TUrZSWOiJx2LN
         eEAkvHM23wCz2B7HoG9NhdvG1cdoRowxjmDOpcN5o1P15UNHV0XlikFEnSdJU+phPRw/
         E/Jw==
X-Gm-Message-State: AOAM5318zmH6shqVymleZSJzJmTpHelM2dszripxC3p8qigfu/DwemhV
	r8N4YfD3Owa1aHx7I+d8Dfk=
X-Google-Smtp-Source: ABdhPJx2FnFaMhwTJdcBDGe1sYkLXXeVf403vPhlToY2+O68p5WW+tTDtplPw+Pm0jWiSrMVlWuEzw==
X-Received: by 2002:a9d:7082:: with SMTP id l2mr18812164otj.65.1600304038020;
        Wed, 16 Sep 2020 17:53:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4d2:: with SMTP id s18ls75380otd.0.gmail; Wed, 16
 Sep 2020 17:53:57 -0700 (PDT)
X-Received: by 2002:a9d:2ac5:: with SMTP id e63mr18603995otb.94.1600304037612;
        Wed, 16 Sep 2020 17:53:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600304037; cv=none;
        d=google.com; s=arc-20160816;
        b=og8LkRa0kM2B6bEQTI24LoRvkQL2wUe9R4QLMEZBgLrGzi/vHQX08U2TP/e+QuR5Ya
         VJaJRYYXcyqAYnxHW+2iZceYMf9iq5RYCxyCC1xmrt65VnAoz9jYJ3rX6TT6OEQapCLF
         Lo7rWVbBawc6wJU9O6Adm9O+3ew+qsvG6XOra8IXl3GyVV/2pisubzg2dG5ui9D3rBnS
         wT4nGg0lQVBFAe8U9K940+6DpK/ndsZfr5nkt91RUjK4UC+GrXjZR3ZOpEqrm/8x69sa
         QAPooVITsuUWypfpvz3YIOZ8db5j5J0/Bdl7BzS76mVG8GvcpyCf22lAF7vX96nu/pdD
         p0HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UHXe8iYDqbXJhcZhqaDlBEYhOfPuDW+vWctFtPj2bbY=;
        b=VCV2VcFjd7cWvLWKvKRlbxvpHQbwet3+DStl/Mtc2kVLwi45puq2n76VIaUXJq/g1Y
         CPg/POcnaVwRQ23kNUN/Hr+bW9xSl2J59b03gMrYFHst1IbCNjLIz01a8ITOHAui9Epx
         PfMUrlWLdIjTQQiPDkVXiVVDmCkWJjmK6ykKYSCxdxclaqPLrrRdpzuBAPUNCi1JDpzI
         IZ09dS8+5yThSKdF8e1XdAwvDmV3s0Pxz9cl3YQlk0t1NZ7MuF9fgvTtyjybd7VWQ+d/
         lgu32Aru/tcsJzodrvVnslz9/etZl50K8zyA+ZlU1sedo4QOJbla6mxkHHr/DL8AGot8
         axSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g7ls+wXD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id d1si1230129oom.0.2020.09.16.17.53.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 17:53:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id kk9so342757pjb.2
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 17:53:57 -0700 (PDT)
X-Received: by 2002:a17:90b:698:: with SMTP id m24mr6193138pjz.32.1600304036522;
 Wed, 16 Sep 2020 17:53:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200916061418.9197-1-ardb@kernel.org>
In-Reply-To: <20200916061418.9197-1-ardb@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Sep 2020 17:53:44 -0700
Message-ID: <CAKwvOdmqFoVxQz9Z_9sM_m3qykVbavnUnkCvy_G2S2aPEofTog@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] crypto: arm/sha-neon - avoid ADRL instructions
To: Ard Biesheuvel <ardb@kernel.org>
Cc: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=g7ls+wXD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Tue, Sep 15, 2020 at 11:14 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> Remove some occurrences of ADRL in the SHA NEON code adopted from the
> OpenSSL project.
>
> I will leave it to the Clang folks to decide whether this needs to be
> backported and how far, but a Cc stable seems reasonable here.
>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: Peter Smith <Peter.Smith@arm.com>

Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks Ard:
compile+boot tested each combination of:

[gcc, clang]x[defconfig, defconfig+CONFIG_THUMB2_KERNEL=y].

Now, if I additionally apply:
1. this series
2. the adr_l series:
https://lore.kernel.org/linux-arm-kernel/20200914095706.3985-1-ardb@kernel.org/
3. unrelated fix for -next #1:
https://lore.kernel.org/lkml/20200916200255.1382086-1-ndesaulniers@google.com/
4. unrelated fix for -next #2:
https://lore.kernel.org/linux-mm/20200917001934.2793370-1-ndesaulniers@google.com/
5. small fixup to 01/12 from #2:
https://lore.kernel.org/linux-arm-kernel/CAMj1kXFmF_24d-7W8AWTJR-PCcja7bUdHhYKptGQmsV4vNp=sA@mail.gmail.com/
6. vfp fixup for thumb+gcc:
https://lore.kernel.org/linux-arm-kernel/CAMj1kXHEpPc0MSoMrCxEkyb44AkLM2NJJGtOXLpr6kxBHS0vfA@mail.gmail.com/
7. disable CONFIG_IWMMXT https://github.com/ClangBuiltLinux/linux/issues/975

Then build with Clang's integrated assembler:
$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 LLVM_IAS=1 -j71

I see a bunch of warnings
(https://github.com/ClangBuiltLinux/linux/issues/858) which we will
fix, but I am able to build and boot.  (CONFIG_THUMB2_KERNEL=y has
many more issues, so I didn't pursue that further).

Either way, these two adrl patches go a long way towards getting Clang
to assemble an ARCH=arm kernel; thank you for all of the work that
went into them.

One thing I noticed was that if I grep for `adrl` with all of the
above applied within arch/arm, I do still see two more instances:

crypto/sha256-armv4.pl
609:    adrl    $Ktbl,K256

crypto/sha256-core.S_shipped
2679:   adrl    r3,K256

Maybe those can be fixed up in patch 01/02 of this series for a v2?  I
guess in this cover letter, you did specify *some occurrences of
ADRL*.  It looks like those are guarded by
605 # ifdef __thumb2__
...
608 # else
609   adrl  $Ktbl,K256

So are these always built as thumb2?

>
> Ard Biesheuvel (2):
>   crypto: arm/sha256-neon - avoid ADRL pseudo instruction
>   crypto: arm/sha512-neon - avoid ADRL pseudo instruction
>
>  arch/arm/crypto/sha256-armv4.pl       | 4 ++--
>  arch/arm/crypto/sha256-core.S_shipped | 4 ++--
>  arch/arm/crypto/sha512-armv4.pl       | 4 ++--
>  arch/arm/crypto/sha512-core.S_shipped | 4 ++--
>  4 files changed, 8 insertions(+), 8 deletions(-)
>
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmqFoVxQz9Z_9sM_m3qykVbavnUnkCvy_G2S2aPEofTog%40mail.gmail.com.
