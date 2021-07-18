Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBTP42CDQMGQEAVXN3GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F9E3CC9A6
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 16:44:31 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id y7-20020aa785470000b029032975990f92sf11216090pfn.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 07:44:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626619470; cv=pass;
        d=google.com; s=arc-20160816;
        b=j2Ye4mUrecbRKc3+EDlc2pl9bjFYtcEpoLzJD5LTj9jXi6QAPq9yxDWb06pOWciG6D
         KED+Q85rm1tz2RB6yXywylaVojxt+6mHUL0WmEUksVyQvxnkczU6IUl1TMZrl62FTRt8
         /h4I5hQHM9o+0NceHR5JH5M9WipUW9trQZuB6MLfJTeDExnAwuekAY9qsqGSiuyYcI99
         Kc9rYflL6qu6Amm1s/8pTYeMy7AW/a7e2P/N07SxbUAfaT++lua8TB3GcxENC3O8d2Zk
         tUh8bv31v+MVdZR3qgILG8NoJQURMl/XLfC7chEQF2mrtxXKEZc87OPVCJYJdi+xmDIO
         2VSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=4daOCqTpBeV9w2uox1g2Hl55qN3yGxEezYvqUfq7ZEw=;
        b=WMjy1612FnIC4nvEKETfJtfBwAVdrBjgei2a4zjCn8H9MifZ0aS8Bo1pcFgxbGznLZ
         gx91tK6pVx30qBYYgObw9/x2CE/Cj3GEedGBkjVFxg6k0mcuMffcQDKlDdrtLUua5S9K
         8aaqmMruIRmZH7Js+djGLSTY1bDbGUSQImVADjDxHCyEWXk6ZuTgO9/WH7trRUHegQXR
         hER6efnyc9sKefIxu6C3SIDJcCa7KAZa1U8qeEv2d9/s2uj3PxKHbCjpDLb9YEKVH4K3
         ryE7QYVsWQ3cI4zVuwVkVgSMr2a42IvnsGcJzMP5fKQT6DoxNqsOmjMnCiRFv8otp8QU
         XgvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=tLbildqA;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4daOCqTpBeV9w2uox1g2Hl55qN3yGxEezYvqUfq7ZEw=;
        b=rcaVP7uIcVUoBptXi7Egvnj9EcCGT40NSMPZc3fq/mGlUJ36mqexap3xI9l/rvoals
         VW/N6HP40MtlTKPjiaX7E25ApSs2M18EvgqVCCJGNJo4fydieWFxdJrMuZ3gEVGdBocz
         Ivkll9021JAfhXf5PJ9Lfp8T8BqzC1HzLXjnbnLb4iT2D8rbKuy1vly+GPB5mI87L5EC
         KkMPM1C+Wi5n9qMZihcOedgzeafYWI5TDizOGbLOGMfUldY8jDiTDqDUPBdlKcukE63x
         vFVBsEaBi+1DBmAyZvBibQkNx4PYM0DaUflwEGh8Rg3UIJg0CA53B/iaPgt4ouh12Rfd
         rjtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4daOCqTpBeV9w2uox1g2Hl55qN3yGxEezYvqUfq7ZEw=;
        b=Ya5tonqJDEgtYsdz/Sb2IYVG81HRwBQ+QwpAte5UVDsvePhz0Ju/nWBX6xX2oOk3hL
         gD0XtQ5Sz3imJkndNa70x1NDk6jQdVy2r+NW+8U5D8CjDj8gP89sTTJZdExf0mIIjvju
         xDWGPmReS5thJX3a6q2mUohquHca1aWzNxhBywK+I+9giywTdCoVe7BYaHXwNGAoUpul
         1ZscJYKp+lTovaLCtBKnxtqDxS3y02yUUzSbcXJeJyMYlURT+76A7BJqC40dpZbTb2P1
         3V7ra02/ysaLWWem6xFSlNcvRjsGQW4R/IQNEV5b+UdlIDfKAgvbNuw3Fwk4tTE8yxHm
         Argw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338yTQXXIlqQKrtfq7r+Q2VUBWC4I9nHQF7V2iXSR+OjiIzcshN
	2vGXMGxMIOOgEdWe1wX/8IE=
X-Google-Smtp-Source: ABdhPJwieS/W8hilM09rZ7DkZG/4qWFP6gxIGrAfhJ8FA0m9ugcDwpaQONp1LFK9XzDoaPBUH0YrDg==
X-Received: by 2002:a05:6a00:1305:b029:347:676:d38f with SMTP id j5-20020a056a001305b02903470676d38fmr1313851pfu.39.1626619469910;
        Sun, 18 Jul 2021 07:44:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:76c5:: with SMTP id j5ls3987379plt.7.gmail; Sun, 18
 Jul 2021 07:44:29 -0700 (PDT)
X-Received: by 2002:a17:90a:104f:: with SMTP id y15mr19467550pjd.24.1626619469308;
        Sun, 18 Jul 2021 07:44:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626619469; cv=none;
        d=google.com; s=arc-20160816;
        b=ESphugpGjyxVs/3sNJ1iY2svX4wDF30Me2D6xQaSrTGZPbZ2gKS6ZlMCabZl4pGaKL
         gTZQ/yPgstixQgV/tp4BhtDKvWaz8hUDYHI9F3Z2ZF2UrPVe/LwmHkmKFZJwhTspWLJz
         Pj2FCDhQkHkh2El13VSP88HQJBUyh3qDjlZMNV1GA7XOBoLqMyo57uIh13TbIBtDr8dA
         n0jOl9OVqJBhLwg3HAmO7zpJ65hDpxoGt8s1Bm4vGeDJQK4tfdY0yaCAY8nmbq3Es2km
         veRVuKH4hRP8FWg+ab5hTA+mvlUSYS1au41ikiy8u5f5hsT5LQD72Sk8URpVDgthkeYx
         0NtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=Ca0tUUOo3zqHqqT5TxNA6woBdlp9NIaRb6HDjdsKCV0=;
        b=oNemPwrMIKzG0OTpNd16x3kEg3ra09OZsRzy7m0Y4VsLKeYhKK3d3E5URNnsYU4ehq
         rH0XLpva/nTisWqV+cvtDNrZi/Um113OJI3M8YeyP2BnKYnoMSzqj7/oxmx2hPUCYSeg
         klROsjspb0jX0P5xdXiijcCuSRarzA6tA9kg3H+vnXV/hu7pEbM7uy7pDYzd87AW9pqR
         nhP8e1mj0Bb4AlMLhD+ZWtMn63b8oTUXOECVsjHtKw7ViP1GpdweKgsj9vuSAHTgrpb1
         a0o8JfWq859cvh8GdjEP6RSHtxiIh1y2LCVl/VHoYgqE3w+4LeSmikL6d4AcngwTAWoQ
         Qnpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=tLbildqA;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id q7si2057953pgf.3.2021.07.18.07.44.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Jul 2021 07:44:29 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 16IEhwCD020080
	for <clang-built-linux@googlegroups.com>; Sun, 18 Jul 2021 23:43:58 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 16IEhwCD020080
X-Nifty-SrcIP: [209.85.216.44]
Received: by mail-pj1-f44.google.com with SMTP id h6-20020a17090a6486b029017613554465so443695pjj.4
        for <clang-built-linux@googlegroups.com>; Sun, 18 Jul 2021 07:43:58 -0700 (PDT)
X-Received: by 2002:a17:902:e8ce:b029:12b:3d80:a028 with SMTP id
 v14-20020a170902e8ceb029012b3d80a028mr15678239plg.47.1626619437827; Sun, 18
 Jul 2021 07:43:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210715073716.17477-1-lecopzer.chen@mediatek.com>
In-Reply-To: <20210715073716.17477-1-lecopzer.chen@mediatek.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 18 Jul 2021 23:43:21 +0900
X-Gmail-Original-Message-ID: <CAK7LNAToKcvCLSrAbjb9RJn3mmwt_fzGTq+3ejNb034PVNeG2g@mail.gmail.com>
Message-ID: <CAK7LNAToKcvCLSrAbjb9RJn3mmwt_fzGTq+3ejNb034PVNeG2g@mail.gmail.com>
Subject: Re: [PATCH v4] Kbuild: lto: fix module versionings mismatch in GNU
 make 3.X
To: Lecopzer Chen <lecopzer.chen@mediatek.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
        Kees Cook <keescook@chromium.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>, yj.chiang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=tLbildqA;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Jul 15, 2021 at 4:37 PM Lecopzer Chen
<lecopzer.chen@mediatek.com> wrote:
>
> When building modules(CONFIG_...=m), I found some of module versions
> are incorrect and set to 0.
> This can be found in build log for first clean build which shows
>
> WARNING: EXPORT symbol "XXXX" [drivers/XXX/XXX.ko] version generation failed,
> symbol will not be versioned.
>
> But in second build(incremental build), the WARNING disappeared and the
> module version becomes valid CRC and make someone who want to change
> modules without updating kernel image can't insert their modules.
>
> The problematic code is
> +       $(foreach n, $(filter-out FORCE,$^),                            \
> +               $(if $(wildcard $(n).symversions),                      \
> +                       ; cat $(n).symversions >> $@.symversions))
>
> For example:
>   rm -f fs/notify/built-in.a.symversions    ; rm -f fs/notify/built-in.a; \
> llvm-ar cDPrST fs/notify/built-in.a fs/notify/fsnotify.o \
> fs/notify/notification.o fs/notify/group.o ...
>
> `foreach n` shows nothing to `cat` into $(n).symversions because
> `if $(wildcard $(n).symversions)` return nothing, but actually
> they do exist during this line was executed.
>
> -rw-r--r-- 1 root root 168580 Jun 13 19:10 fs/notify/fsnotify.o
> -rw-r--r-- 1 root root    111 Jun 13 19:10 fs/notify/fsnotify.o.symversions
>
> The reason is the $(n).symversions are generated at runtime, but
> Makefile wildcard function expends and checks the file exist or not
> during parsing the Makefile.
>
> Thus fix this by use `test` shell command to check the file
> existence in runtime.
>
> Rebase from both:
> 1. [https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/]
> 2. [https://lore.kernel.org/lkml/20210702032943.7865-1-lecopzer.chen@mediatek.com/]
>
> Fixes: 38e89184900385 ("kbuild: lto: fix module versioning")
> Sign-off-byed: Sami Tolvanen <samitolvanen@google.com>


This Signed-off-by is not correct usage, I think.

I replaced it with Co-developed-by.

I usually use 'for ... do ... done' instead of $(foreach ...),
and 'if ... then ... fi' instead of $(if ...).

But, this is the minimal change without causing
too long command line.

Applied to linux-kbuild. Thanks.





> Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
> ---
>  scripts/Makefile.build | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 10b2f2380d6f..02197cb8e3a7 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -386,7 +386,7 @@ ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
>        cmd_update_lto_symversions =                                     \
>         rm -f $@.symversions                                            \
>         $(foreach n, $(filter-out FORCE,$^),                            \
> -               $(if $(wildcard $(n).symversions),                      \
> +               $(if $(shell test -s $(n).symversions && echo y),       \
>                         ; cat $(n).symversions >> $@.symversions))
>  else
>        cmd_update_lto_symversions = echo >/dev/null
> --
> 2.18.0
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAToKcvCLSrAbjb9RJn3mmwt_fzGTq%2B3ejNb034PVNeG2g%40mail.gmail.com.
