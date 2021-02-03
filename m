Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBXOC5GAAMGQEHZIDIZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2ED30D56B
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 09:39:58 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id a18sf4313578pjs.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 00:39:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612341597; cv=pass;
        d=google.com; s=arc-20160816;
        b=xyjDFoRLJwa7V/6uRVVPy8Ayu25W8NOwTs+WEwFBMGYiyEp0z1fR5H2HvXyT+PmapM
         MpJoTuoTn46EVALyuLBWfBNPMyAnjuvzqwxYwwHf5MlAx/+Xl20pDg9KzvF5qXrER+sc
         qBOywQFEtm4xMDhfUPcBbhrCUnyapqNFdPSsgshMO8rSNd8+7kOXgzFh3DZH4Ps1c8+6
         AMi4PufKFsCMiY5I13eeCimKRbFURxnnavq8q7DkKTA0WZTWuF+yqm0sj0ylaZ8Z4aM2
         vuhu4Y8ORY4vy2bLH9A459F6CpzlJRJFWazSveMfO8v9+42L4pcC6RWMO4gFzSk2V4GC
         zk4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=PyR22gOsGHgXdIqo7XJa8/zygIC6CWJsdkr3lcLIQ9E=;
        b=qAyuixjId5AvdzNCCxhYayQs84Zt/QoKR9Urqk+vPYVRT5lh0H6koB5q9CN0V4JDD3
         B4bLmNs8minJETsWalBbL8LfkApa3MDgKgWr/QVe1y2B1KnmKvNjtkiqZzU2RJxEKajP
         v0gjkhuRpKs7kIPOJPetrsArrN0uzaQL/FzinxamujYXo7RTlwor+UNYdkq1mpyK7rhm
         B2z8XVmjP8j6Q4MCCw33IUPhVCB97gN4I7BpPlaTdmhTy3Ug+MaGrtkd3J2E6gBzKXTo
         EY9ye00sxqSQ+Su5BoFtPyOoihofrx6ZfnbNmQZ9Qz+5v9rNBYeEScka49iRsiO2R80Q
         nYyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="XNpkib/m";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PyR22gOsGHgXdIqo7XJa8/zygIC6CWJsdkr3lcLIQ9E=;
        b=o7H/Bxbs4vpf1PcWHtuGix2vPwPfs8wglTwq4qAVw9m1rH6WkvUxxEwH1VuV4o/COT
         5Bn/QgFHIOsj6M70ur52Ix6duq4tfDVmoErQIqNZAKp2jKxYcQ+kcPWN24h7YqiOBma6
         rD8ErpIKbCZW81UuSMbY14UIC0SH7rz8GTWbit1MAExLh74bLpENKnh1pTfK1E1l6HIk
         dIzBV5yA84zpyh6kjTNHgl5/fBU9Qrudi8Bw37uZoLAslvemO/ft8WRumCImEtJz4Xih
         Dr/lHTtTJuj/ZEWW7nYZkL6bADqXKN6PfZXn/Sv6hEraGBqAH8bJXCvoD9tZDV66yVtF
         xmaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PyR22gOsGHgXdIqo7XJa8/zygIC6CWJsdkr3lcLIQ9E=;
        b=EoxlHeI69IA7Aph/3If46K5w7wpNxL+bfrVQQV7altTDlKqifwGZ93Wmax53k/H0YB
         esrP90w23zLDX5E5qgc2ZvA+dfQWj7UlZMamJ9sfW1xE0GD68b+jXN4L15HQFAObGxcc
         ow2T+XWVQycKNM0CN5UY+DjYEv1En0NY18bcVOea76wzVXA0kA6+WgNnhO5GQDmXieyA
         Dlg33rrafN7TgOX9tPW1Icbr06NhqFtZvi3bM2/ez6Iy0a4DdZOYv1Hs5A79gauINdvP
         AtLZQXcpPTb0dyuFwHpKB05MmyAFxPJShgzVEE1KUk6UPkfeTcQPfDzQ7+WNHyQptjwa
         ewHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xA2KPCrfiPBWBdhN03wC005kfPNaUMirOz3zHU0n9JGK3C31X
	4e1BbTiKcNZxMsP8Is+GS80=
X-Google-Smtp-Source: ABdhPJwpGCfgEIsY3az0ISLlfrLUHOID5uj+l9h9aqqZkOrGRAuW3FM7TWYcQVahaEKfPBeMu0NphQ==
X-Received: by 2002:a63:5c61:: with SMTP id n33mr2536814pgm.153.1612341597469;
        Wed, 03 Feb 2021 00:39:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3583:: with SMTP id c125ls658777pfa.2.gmail; Wed, 03 Feb
 2021 00:39:56 -0800 (PST)
X-Received: by 2002:aa7:8815:0:b029:1bc:93cc:d6fa with SMTP id c21-20020aa788150000b02901bc93ccd6famr2087117pfo.26.1612341596747;
        Wed, 03 Feb 2021 00:39:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612341596; cv=none;
        d=google.com; s=arc-20160816;
        b=iwBdZJWTbsXisO54SE2t+6RNlZFp/o6OPv9RlOCg765RLftgtrhKTZlGV7fsivwn3+
         6UOiPe6XK3OwOBl8QW8BX2FGaM20Qe/N8f9FiE11Y108Lc+o7c4qZ1FzwjIbalDL6hI3
         9gWSwngQHXwFlI36PyqPtcDpoGuP6SUl6SCaKXMFdWve8IdGy3/JsX6kQjhGXf+hVrcO
         8xdkQPXwlOtIg2MJUrg0tkkz10aH3LGuD+sFX7RuphxyVVj7Jr6Vo21dhbujtjaUoukZ
         UljoI8/AGl+IrIItqTrzqM2Zc/QbqZuCYZrHeyrjgbGQgcPSlmlLTv1Sez73HiryuwQ3
         S4Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=YRwehqSfi0jhVS4bwjVtB0egmrWeZIpOGjgdJ1KIwoc=;
        b=0cG8uZqzJnhyG0UYSLTn1bCOQfp4PPvk995LBYYlEAnhn7BFiMz4YmanrrWsWQX6rI
         Q3Bn8oznVTCo1usiSGELepVlgQA75lyrieOIwrbkjxHaDxCM60lK4bfekFkWk9ViHr0d
         3xGiEYUgNfPtvLB9b5RBzyrSUt9BVQhaNhrnUcYSyKOEZvkA2h5DZRkOI8iWGWQ7iVVO
         7tcoYJ76WaGad6RLnI+C7VMGoFWBHjWWj66fy7Y7/ZqOHC2uUmuQyGcjm3VrIR1TaVJf
         fO0h2p1//JcdKBh8nTV9H0shYNCAFxUEEXuhvwoda511OKrmTihISzMbB0v2uKgsMXoY
         sUKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="XNpkib/m";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id d2si55456pfr.4.2021.02.03.00.39.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 00:39:56 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 1138dPAN025231
	for <clang-built-linux@googlegroups.com>; Wed, 3 Feb 2021 17:39:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 1138dPAN025231
X-Nifty-SrcIP: [209.85.214.181]
Received: by mail-pl1-f181.google.com with SMTP id j11so11434769plt.11
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 00:39:26 -0800 (PST)
X-Received: by 2002:a17:90a:184:: with SMTP id 4mr2174355pjc.87.1612341565525;
 Wed, 03 Feb 2021 00:39:25 -0800 (PST)
MIME-Version: 1.0
References: <20210203075239.5505-1-masahiroy@kernel.org> <CA+icZUW-uObu=7xpqUqKTASmBfEgLKMrKgmR_uhmHBN-EwpBVA@mail.gmail.com>
In-Reply-To: <CA+icZUW-uObu=7xpqUqKTASmBfEgLKMrKgmR_uhmHBN-EwpBVA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 3 Feb 2021 17:38:47 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ_x+JWkUwBrJs2LD3rqabqP+tWewrfnMX6F_MdH9L2ZQ@mail.gmail.com>
Message-ID: <CAK7LNAQ_x+JWkUwBrJs2LD3rqabqP+tWewrfnMX6F_MdH9L2ZQ@mail.gmail.com>
Subject: Re: [PATCH] kbuild: fix duplicated flags in DEBUG_CFLAGS
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Andi Kleen <andi@firstfloor.org>, Ian Rogers <irogers@google.com>,
        Mark Wielaard <mark@klomp.org>, Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="XNpkib/m";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Feb 3, 2021 at 5:32 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Feb 3, 2021 at 8:53 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Sedat Dilek noticed duplicated debug flags passed when building C
> > files with CONFIG_DEBUG_INFO.
> >
> > I do not know much about his build environment, but yes, Kbuild
> > recurses to the top Makefile with some build targets. For example,
> > 'make CC=clang bindeb-pkg' reproduces the issue.
> >
> > With commit 121c5d08d53c ("kbuild: Only add -fno-var-tracking-assignments
> > for old GCC versions") applied, DEBUG_CFLAGS is now reset only when
> > CONFIG_CC_IS_GCC=y.
> >
> > Fix it to reset DEBUG_CFLAGS also when using Clang.
> >
> > Fixes: 121c5d08d53c ("kbuild: Only add -fno-var-tracking-assignments for old GCC versions")
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>
> That fixes the issue for me:
>
> Without patch:
>
> ... -Wno-unused-const-variable -g -gdwarf-5 -gz=zlib -g -gdwarf-5
> -gz=zlib -pg -mfentry ...
>
> With this patch:
> ... -Wno-unused-const-variable -g -gdwarf-5 -gz=zlib -pg -mfentry ...
>
> The relevant Kconfigs:
>
> $ grep DEBUG_INFO .config | grep ^CONFIG
> CONFIG_DEBUG_INFO=y
> CONFIG_DEBUG_INFO_COMPRESSED=y
> CONFIG_DEBUG_INFO_DWARF5=y
>
> Latest make-line:
>
> $ /usr/bin/perf_5.10 stat make V=1 -j4 LLVM=1 LLVM_IAS=1
> PAHOLE=/opt/pahole/bin/pahole LOCALVERSION=-4-amd64-clang12-
> cfi-pgo KBUILD_VERBOSE=1 KBUILD_BUILD_HOST=iniza
> KBUILD_BUILD_USER=sedat.dilek@gmail.com
> KBUILD_BUILD_TIMESTAMP=2021-02-03 bindeb-pkg


Ah, OK.
You use bindeb-pkg for building the kernel.

That's why this happens only for you,
but Nick did not observe this issue.






> KDEB_PKGVERSION=5.11.0~rc6-4~bull
> seye+dileks1
>
> Feel free to add my...
>
>    Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
>
> Thanks again Masahiro.
>
> - Sedat -
>
> > ---
> >
> >  Makefile | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 3d3f67b98ca2..769a38ee81b9 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -811,10 +811,12 @@ KBUILD_CFLAGS     += -ftrivial-auto-var-init=zero
> >  KBUILD_CFLAGS  += -enable-trivial-auto-var-init-zero-knowing-it-will-be-removed-from-clang
> >  endif
> >
> > +DEBUG_CFLAGS   :=
> > +
> >  # Workaround for GCC versions < 5.0
> >  # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=61801
> >  ifdef CONFIG_CC_IS_GCC
> > -DEBUG_CFLAGS   := $(call cc-ifversion, -lt, 0500, $(call cc-option, -fno-var-tracking-assignments))
> > +DEBUG_CFLAGS   += $(call cc-ifversion, -lt, 0500, $(call cc-option, -fno-var-tracking-assignments))
> >  endif
> >
> >  ifdef CONFIG_DEBUG_INFO
> > --
> > 2.27.0
> >



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ_x%2BJWkUwBrJs2LD3rqabqP%2BtWewrfnMX6F_MdH9L2ZQ%40mail.gmail.com.
