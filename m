Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7WF5HZQKGQEKSEEJSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B69F2191A3A
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 20:44:00 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id m11sf12293626qvf.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 12:44:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585079039; cv=pass;
        d=google.com; s=arc-20160816;
        b=BR9dvkmkKj0VCUodKsxv5d8BgDAVgT97iF4hvmxIiSGINPLdFIJQTJNpZoZPXbb5W1
         pgU/btpQzBXuIKoKd3zfWYUrtOQLwLk7lU6eAvsKmWCGpq/YAOkj21VXUDQZVyv3fgIN
         bwW12NqlrmLon9wGMh+4Lm+Dipv0b8OTdG1BlSGgpMQj/lWHcpWasuGCQA+poEsGqG1u
         /miqe/s5Z275MQoO3ZhAVDbV9ZvdSXEGFeUHFPGP5eVaGNkQudO/19cFpydAnV63pyCK
         ipupRAY0K9JDAQY4/QzsNKheGSiIxF/GI3nhs098J0LOGMVvPLLo3wzwLMixoFvQpbdR
         Vi6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CER6uwoyfNlVyjv3JMeHabNYbh36fr1Bac4PaAnnznE=;
        b=rW92rlyxoddvees21FZFxfs66NM9ys9M6QIvNqPwGqB8UrlY2SZinLb7XS1SqV46qT
         jK2cB1Dc6ahZk2GaXHgX+RNpjnzO3WylJOb4inqdKaAGY6ObovlknfDD+ok6MxKX701C
         mkf3lC3XB/gKJgSW3VZw1TEOB59ksdK4Hp7SioyoAeWc4l3KN2N8Z50tClEsKsBfBiEJ
         7HG1WFE4Lgq5/Uv8Nu1XdG0IVchU6dCu2ItF3Gg1cc3slzbnOGzClJAPkOprRXhhVer7
         1W+9UUvDY3DKGaefqjaxHCC+GA7iLZ3E+mV8RHNJXlroOtHZRIiLkeAfo4REZZHb8j5q
         0pig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=asti5zcy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CER6uwoyfNlVyjv3JMeHabNYbh36fr1Bac4PaAnnznE=;
        b=Y8CGaw58LWW4ZiluehuJ1zo3uC5CLwcQIzd18NMm8wz9DMJb4L5qGay52U91U11EDG
         XXhpqeMsFF6Lu7G2bTsiC3O0LM6sEpn46UwJFipIppn0IDELrlK6LTw0kcqgnPxedGtl
         QX+qkljn8d2/GMWnhdUDFKswh6p1vXUPqEfhl+78m/FjE54Op/iIriAYp4QSWT5u4wVg
         r2OKqHcvcBJSeOko6/BmKME/xFmPX7ixQALbXwoRHdM/5ZI3/gdv+hY5yHQgbGi007g7
         ueY3VrybAgUwHdsMXtYcWGyW30t93OLaUfgX2oMfF3B1A1W5VcOzuNxObYfNum0+kCQE
         NwKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CER6uwoyfNlVyjv3JMeHabNYbh36fr1Bac4PaAnnznE=;
        b=U4s5KLzqHqq+ySfR/JhLgwrkFDcB6GPqyVdLw4IvNHDfkIldRhAzQrseA/jF6jojCF
         v9MDmW9MIWRXPKOhiPiDZeD+YY/zZeVLgZuwXQthkTXqdtcy0v8C9Y0JqyLjZwVi5ABH
         7XB0wEJxNHL+p2rL3rz84//iEUfjrQakLq8QTZ4jVScU48UpdIOGKnnwxp0LWZonPTY+
         S+PN4tJBVjrOfGFyd57z8NIFGaa+OPFrV9KiK57DzRMoEOo1Ll4V9+HYktsXnIUOpK8U
         MfUXOrjcSm/kcc+MkxF87RIKShwEMTtpJjb79MaVH/cwRWqKPlaVWstIG8fPTQ+zXPCS
         +kYQ==
X-Gm-Message-State: ANhLgQ0gpLIiil5qo240gbUQUoP8naaYLml2S5ECVyA77xR6TAyuQp2Z
	SLB5RCan656w7EM9Q2yeezg=
X-Google-Smtp-Source: ADFU+vv/Qrm1rGXmNbH/X7XiYEQEZE0H/JpmIW2mMV1qFC23+WttdXwZnbh1Fu68d9TemJ4I7k0x4A==
X-Received: by 2002:ac8:33cd:: with SMTP id d13mr27834073qtb.265.1585079038288;
        Tue, 24 Mar 2020 12:43:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5084:: with SMTP id e126ls2308356qkb.7.gmail; Tue, 24
 Mar 2020 12:43:57 -0700 (PDT)
X-Received: by 2002:a37:4dc8:: with SMTP id a191mr8244003qkb.450.1585079037930;
        Tue, 24 Mar 2020 12:43:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585079037; cv=none;
        d=google.com; s=arc-20160816;
        b=mvap5hJXeAZqzqODfDEcG5pCboOpfPN/KCXXQrz3D53eLGs5EZoVwXtZm6dT8l5ZNc
         LwoFPgGL80VaGEl1W1SMIeXPhFbCTp0fO7YuLihQ8mdfQ2Hwf2I7CfPhnKMv93rS+ssK
         Bt6LwYmfIJxtW/2DH2LTDVkMpuJd9Y6PBgGFO7e24Qg3DuERSO8dkZB4ZYfmQS8z7avE
         invlmxI2vXAY+nx/PbRNVSl2lulMxfrtlqIZbqu4SGsIJHhD9tv5Z5u9Tl/VQU5tHDPm
         7wnscu+J/szSKRP4aqMaLSrtR76KzbbsIc1llnttODL2IakTKRQ0uWyqwlHj5eqizDMG
         wFug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UMwuWt/x8/Lg/gYGKLGY8KESJf2qihGpVN/AvMGP9WM=;
        b=X8NdGQrp/RIntwfUlxCo4cSJLa6MOpZy5YXOb/fZFy4e8E6UEhzDFwaDmr+tk11B/K
         XEQIa4OycBfVtoT2T82jSTfMUiy6aZ2JB+FNpv5lZRZ5VCtpZ+LKw4jJtA470lSCsjVV
         hJ8vNvRF3fa/20cSnjEaRmwm/UrvvP/v6IXuhOsHtgFQyQyshLjLuSfawFRlA+Nx/M3R
         cCJStzvcWsUCCbEtGYAHhkhuyccnhvhebdNBtsUnI3HI2dtqJKVjXoLe3zFV0lFi2uOj
         H12iMgJIFwUO6Ie22TcDpBe76acc6VDfZkUqPPI+xNkR+Q4TVAStCzfOdNJDRDaPXeVs
         9Hrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=asti5zcy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id d193si862389qke.1.2020.03.24.12.43.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 12:43:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id nu11so1944959pjb.1
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 12:43:57 -0700 (PDT)
X-Received: by 2002:a17:90b:8e:: with SMTP id bb14mr6067812pjb.27.1585079036745;
 Tue, 24 Mar 2020 12:43:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200324161507.7414-1-masahiroy@kernel.org>
In-Reply-To: <20200324161507.7414-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Mar 2020 12:43:46 -0700
Message-ID: <CAKwvOdkLW=Q5-vaFZDY_UOy66ZZoR7yaSd2zKv8N2Gv8PvJgYw@mail.gmail.com>
Subject: Re: [PATCH] kbuild: remove AS variable
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Network Development <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=asti5zcy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

Just noting that this got rolled up into a 3 patch series:
https://lore.kernel.org/lkml/CAKwvOdkjiyyt8Ju2j2O4cm1sB34rb_FTgjCRzEiXM6KL4muO_w@mail.gmail.com/T/#u

On Tue, Mar 24, 2020 at 9:15 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> As commit 5ef872636ca7 ("kbuild: get rid of misleading $(AS) from
> documents") noted, we rarely use $(AS) in the kernel build.
>
> Now that the only/last user of $(AS) in drivers/net/wan/Makefile was
> converted to $(CC), $(AS) is no longer used in the build process.
>
> You can still pass in AS=clang, which is just a switch to turn on
> the LLVM integrated assembler.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  Makefile | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 16d8271192d1..339e8c51a10b 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -405,7 +405,6 @@ KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
>  KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
>
>  # Make variables (CC, etc...)
> -AS             = $(CROSS_COMPILE)as
>  LD             = $(CROSS_COMPILE)ld
>  CC             = $(CROSS_COMPILE)gcc
>  CPP            = $(CC) -E
> @@ -472,7 +471,7 @@ KBUILD_LDFLAGS :=
>  GCC_PLUGINS_CFLAGS :=
>  CLANG_FLAGS :=
>
> -export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
> +export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
>  export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX YACC AWK INSTALLKERNEL
>  export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
>  export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324161507.7414-1-masahiroy%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkLW%3DQ5-vaFZDY_UOy66ZZoR7yaSd2zKv8N2Gv8PvJgYw%40mail.gmail.com.
