Return-Path: <clang-built-linux+bncBDQ27FVWWUFRB7H33GEAMGQEEHINW4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9530A3EB694
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 16:13:17 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id u16-20020a05622a14d0b029028ca201eab9sf6452256qtx.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 07:13:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628863996; cv=pass;
        d=google.com; s=arc-20160816;
        b=JLYoSBuYj+lEzcozLhx1LJoPXYITCa1VOd4zOcPNF5xGSrztE/foi8JvgXppB0QtZE
         uX6aemyG04R6jUWR+OgCqYHkBTrJxQbQyiml2CXU2kq7Yq6N88YD78qDBX/r//TSdZGi
         /qxa9zaAP1Uu4BOQqjEBy0/y/5bzayCKJ/M86/qRbXfO6IOyRwGGOhpcqrvEYGDUXFIM
         YOemP9CwDiExyKGLSO6uGYblalVIqye+yD4BgHudoush/F66vSJ96GC0MxWQobWGycgy
         XIp3Rc+zjDlgVgJhE2MP7neqQYSwX29LWeHf3+ZWS0oRsZR+K9gSp3N+GsADF4xtIi0K
         6CmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=z8TFXgDWM15ufyI97P3JzSlR4V/RzSx3jPKkoIdoAkg=;
        b=y+pThz5X5y5/94bOLDkTAV9tSM+llZNGpMfryOywHz+nL6POc1FTVKjSxXWL1f8SS3
         ckxyhO45qjzJPxfilIFX1V/GjQzsdknQQ7wxHOC3cvpNRDv9WuPVNCfrkc6r3m6bAa1v
         J0jXmFo8hJTnxjNw5BAE5wETHopW+3yww7RC/a9L1b4Zlo3L8f5IBXgfzWcbD0LoqCNb
         gj72sqw6kCFwkMwkKmIploDwC6ZuinaKnRAf1q9nfMGy+aDMXK9b376G+ibFWFFrSdM6
         Dzb+nd1FJnplWW2YSI8HCgI2kK1jLY7OLVpqyMTtVCaVglCBBMmkHHsSG0nw8kcc5rTR
         GXFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@axtens.net header.s=google header.b=dKp0vQV7;
       spf=pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=dja@axtens.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z8TFXgDWM15ufyI97P3JzSlR4V/RzSx3jPKkoIdoAkg=;
        b=aosqUABMMxCCjxr6CmZtx38e5pL6q23MHYxJvVBAvwP8EmvPCuTNWLl/So4c2L/cHn
         zRtCIm/koN+EOu7Ty96dGrZ6DJoVWu8KLf4msaqmEX2xqXN9W9SBhIKsb+cVmXsIvXVg
         IRAsNEy6fwTlHNQcbq+RB7aATP3tPt54KqDKgNs/MQoKI3DvY5qZxi7R0oQJ7v+NQjTV
         PcrfMyMC8kQGHTtrBgiNTkDpATEvkT0Sk6eOGvRBuFxISz74+ltDR1f1RyKozVxOPVA1
         g6UJ7/PGy7pGX/qqmtLcUTi0di+y0GY5vJ5VurlNDJ8e0TWqQ62ChsjdHuQEESzGR2Vc
         xhNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z8TFXgDWM15ufyI97P3JzSlR4V/RzSx3jPKkoIdoAkg=;
        b=K4JT3WUcBEPy96YMq/Aidp4j16y6BD5DT76yhwH8IyFp6wZoP5M1Bk9RQNREOKX+4w
         E7/VJjyZPiPlGoEzGRwwut7KnDXOf+4bRTPRmHoA8lyfDpjRsLyumQlwba19x9DbZYod
         QW05lgq1T2NNE98BGEvKdB+ecv0qqgxLLmmqUwy6Ej1N1GJvWpiJEvv/R1lbZkyQicMg
         GIjxEHQy69qHRtX2CFcS4kunj/76Utf4DS87P6fA8HAxp/vos1hWGvjEwPkiLHsARN98
         lbSM6WvyiI45UvgVVprgOtUxKjFneLnutYV/kvHTJh90kPi6+LjlbZnbDPAaAOfmZs6w
         tuTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531R5/p4T/hSiIzkdGdK+q1lMxx3aVHNFo3kb1TwmEfJA+xU9dAO
	S5lfETI63B9QzZVgx/2pIbY=
X-Google-Smtp-Source: ABdhPJzF9QPKSZE8IDGy/qaTf94OYgUsVW8Qrh1lSrXCcyJ8g2hEI9M+jpckTDk/t5ABoIS4wXxm0w==
X-Received: by 2002:ae9:e641:: with SMTP id x1mr2458166qkl.243.1628863996697;
        Fri, 13 Aug 2021 07:13:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2699:: with SMTP id c25ls996139qkp.0.gmail; Fri, 13
 Aug 2021 07:13:16 -0700 (PDT)
X-Received: by 2002:a05:620a:4416:: with SMTP id v22mr2457761qkp.200.1628863996154;
        Fri, 13 Aug 2021 07:13:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628863996; cv=none;
        d=google.com; s=arc-20160816;
        b=eP0K+prPTwNQgkA9XZesS3LoLIphdc8tsowfVUo4x8S4hnD/W5ArdMgGa1ucrWqgv7
         0Eq3X1qutX4qr3G75T31p1K6oy61G52Mq1n9QM9UbepiRLkxmQ6LUxhl/hM33nKoNs5p
         YPqLG/vmxBKiIpVivsEQ/jX7Qs53Zc7pGOZOd6fS6RF91rCOKoNmH/yrnKV2Bv93nFnw
         +MWsKaIPjQR6+swPQFZLmzRdr783//6MX9GkK+6e83igoPUq+0sfoDauM9UZDIQ6mYrj
         HUcGjgFrO1kp+Vgbed6A29IuFVCgMdPMKCV1mTgvRv1bh0jJ1Oz8ErRK75bNAUkDtAGZ
         Ydiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=qX/JChnLXlyObYVqGeKWhDoJp7v9J6Kqnss11iHK/7U=;
        b=hoVMYzAg0gUEkROl9crWb/4W8mnpgZnyqtHv+52Ds3GuUgbK1aPYYO8YsO3nkF3FHK
         NA2M4IeSbtfVCAdJV1sU8I3hzfqhcRs+NQDHlH3Jjv7iUS5/J+0h3W5Y3GBHbfnu+vt0
         iDSfTMCaanIOOBi4cq2rER/EI7kJEFKM3BQ4qWHizggU4CzxhLHcryqr/WkSH++GpbEH
         UVVwiBMq7JwVQt577ZQwnwQqL3R7iZDTLeI1FQD939nZ1RBBmS7y6GqERKYKcOQc0qf3
         YfJZbk9Ebl/ZLdUW5qnxmUGHE2L/kfyyz7yStrAuZw7SOsQJDBs8MfxvnBnDiI1oTUnr
         XihA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@axtens.net header.s=google header.b=dKp0vQV7;
       spf=pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=dja@axtens.net
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id 12si92113qtp.2.2021.08.13.07.13.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Aug 2021 07:13:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id l11so12159203plk.6
        for <clang-built-linux@googlegroups.com>; Fri, 13 Aug 2021 07:13:16 -0700 (PDT)
X-Received: by 2002:a63:4d18:: with SMTP id a24mr2462947pgb.324.1628863995693;
        Fri, 13 Aug 2021 07:13:15 -0700 (PDT)
Received: from localhost ([2001:4479:e200:df00:e80c:91ad:1614:aeef])
        by smtp.gmail.com with ESMTPSA id k3sm2611155pfc.16.2021.08.13.07.13.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 07:13:15 -0700 (PDT)
From: Daniel Axtens <dja@axtens.net>
To: Bill Wendling <morbo@google.com>, Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Cc: Bill Wendling <morbo@google.com>
Subject: Re: [PATCH] ppc: add "-z notext" flag to disable diagnostic
In-Reply-To: <20210812204951.1551782-1-morbo@google.com>
References: <20210812204951.1551782-1-morbo@google.com>
Date: Sat, 14 Aug 2021 00:13:11 +1000
Message-ID: <87sfzde8lk.fsf@linkitivity.dja.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dja@axtens.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@axtens.net header.s=google header.b=dKp0vQV7;       spf=pass
 (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::62b as
 permitted sender) smtp.mailfrom=dja@axtens.net
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

Bill Wendling <morbo@google.com> writes:

> The "-z notext" flag disables reporting an error if DT_TEXTREL is set on
> PPC with CONFIG=kdump:
>
>   ld.lld: error: can't create dynamic relocation R_PPC64_ADDR64 against
>     local symbol in readonly segment; recompile object files with -fPIC
>     or pass '-Wl,-z,notext' to allow text relocations in the output
>   >>> defined in built-in.a(arch/powerpc/kernel/misc.o)
>   >>> referenced by arch/powerpc/kernel/misc.o:(.text+0x20) in archive
>       built-in.a
>
> The BFD linker disables this by default (though it's configurable in
> current versions). LLD enables this by default. So we add the flag to
> keep LLD from emitting the error.

You didn't provide a huge amount of context but I was able to reproduce
a similar set of errors with pseries_le_defconfig and

make ARCH=powerpc CROSS_COMPILE=powerpc64-linux-gnu- CC="ccache clang-11" LD=ld.lld-11 AR=llvm-ar-11 -j4 vmlinux

I also checked the manpage, and indeed the system ld does not issue this
warning/error by default.

> ---
>  arch/powerpc/Makefile | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
> index 6505d66f1193..17a9fbf9b789 100644
> --- a/arch/powerpc/Makefile
> +++ b/arch/powerpc/Makefile
> @@ -122,6 +122,7 @@ endif
>  
>  LDFLAGS_vmlinux-y := -Bstatic
>  LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) := -pie
> +LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) += -z notext

Is there any reason this should be gated on CONFIG_RELOCATABLE? (I tried
without it and got different but possibly related linker errors...)

Also, is this behaviour new?

Kind regards,
Daniel

>  LDFLAGS_vmlinux	:= $(LDFLAGS_vmlinux-y)
>  
>  ifdef CONFIG_PPC64
> -- 
> 2.33.0.rc1.237.g0d66db33f3-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87sfzde8lk.fsf%40linkitivity.dja.id.au.
