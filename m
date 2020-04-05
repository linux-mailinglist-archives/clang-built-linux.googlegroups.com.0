Return-Path: <clang-built-linux+bncBAABBHOHU72AKGQENMHA7II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA4119EBCD
	for <lists+clang-built-linux@lfdr.de>; Sun,  5 Apr 2020 15:56:46 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id r25sf11806544oth.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Apr 2020 06:56:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586095005; cv=pass;
        d=google.com; s=arc-20160816;
        b=I9yIn1Ywhc3HRYKByxJIpBrMq0uXBnTJbTJc5eWWNt2JVhnHfgjE++KYO5bZcN8ZRh
         Wl50yPmMMf6/5688LIOczVLpQm7a5XQ8AMYtTpyhxDF4PnC2FDcqUKjRVYacaMJ/K5wM
         TVHM1xpVVRmQVGD0ZJZKcm09JCVijYUdxT7ug2LYH63LJ7x8Y+LJlzl9R/ZaMKTk3xM4
         1LjH02inU6io3Ph8q87tzGMfPfPyZSOy1xU1vpppFALC9wVp2PcV2x+FWjPOfxa68bAJ
         MpHLvdmXwpsS4c/VpxidPvXRZ20fE40ruMYQhXePkf7EZCI4kQQtydtRz1QZt9NNGoq3
         iigA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=oteXT0rtXzAUrtfPy7dxrv7+bmtl7WkKwSnI4EUpK9Y=;
        b=It4yLAo5IUV+xG6BBHVHEzwkhgYc1Q3ITim2JqSBJE+miCGiKViKDy475fewhUnq7O
         y+602kKghTNkRSYGxcedgtH0u9m4ukLxZTSJ/SMZd1e5CkEAUJfgrg31+Gk6uoctnRJa
         ra2XiOIyO/fgohNHdigqTTqygT+Y64upZd0dBu+B8ibq6TPG+H+V/y3zUcsu6J/UrY7n
         F7DDfpDiU/rs4NWNC9l2LpHiGzwqhobdaiSnUh0h3WLSCwKfQ21BJu80QH7wpnx+MxGl
         xsRqXrShncGHyDbcYyIEtJVwkyj1rFxpxY+UeJnRx/7iEgsWCBYgyMdvYlpPAYE5qYCF
         HgoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PVWfeqsO;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oteXT0rtXzAUrtfPy7dxrv7+bmtl7WkKwSnI4EUpK9Y=;
        b=nS0tZEkZLFukgJMFl0TEC+buhuCK9KHBA9mdwAlVtG3JSmuklPAzlSgcrZMbql/HEC
         4kNnD6gNDDA5mdNHJBfRRHPrrJVLeK1ZB8MKOijjU6En8408LHbUtoDQR7FHEcolQDSy
         y1saQDmbkK+8VcegwYqsoGCw/33KBlqgXzYJCM9unl8n4d5xIDfGqZIiu0CuPMBOT0lT
         wQ9K+6VvjFa6h7hv4SZuIFP97GIGTMVeiVodaMlnPxLlnU+sYEj7v9SGNtbjt2TnwJls
         DDNWi9gcWGpxdS7iMG1Lt0I5DipwkPf7PKGDG3a2Bmk4lMWnr4Q6l+Jlzd53TL8LFvay
         Imig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oteXT0rtXzAUrtfPy7dxrv7+bmtl7WkKwSnI4EUpK9Y=;
        b=kZ9T3py3W62PAKecwMJmJMFF7Q8ncLG8yq6dQTpyxZA1/ufzTYbNURfcLwtepXp4v8
         0BZ+akhD1zuUAn/ECDXGT+JsPMR3I1IdwfaSAIvd0FtcGgJxidrWVD41RO58w/vnOSHU
         oVZ2cxJOsvBYgvVyrk4sZ063GLq28XUwTtfkiX65k9HKif+6S8JHj2FZ8IFLlbJKwhQm
         /vK49ZUtfzXkei7KXSNZ6O38I/CNQ0qVkCDblexCZXtrXWID3VvzoqWi60XGdpxGlNbQ
         roVzpRMNu0sNdh2VTk1NILdrsVbZ+lqOcQWIM3di74dz+ayqU1JKADX+YAn5cfckwl1q
         zx1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pubr79rHZZh8D+5DHARexD/zhWOa9gDjPo6FAuQAFEge11m0KkHs
	FpZk/oBaCvpSr7oylI+V8ok=
X-Google-Smtp-Source: APiQypJWiwRoGIsFeWlP1DNawQ6ebLRc9QBnmLR3p14UrI1wHcFQgKwqeqJ9arC0wHKyu1MsmGhwQw==
X-Received: by 2002:a4a:3854:: with SMTP id o20mr13984010oof.69.1586095005547;
        Sun, 05 Apr 2020 06:56:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6750:: with SMTP id w16ls5470938otm.4.gmail; Sun, 05 Apr
 2020 06:56:45 -0700 (PDT)
X-Received: by 2002:a9d:171a:: with SMTP id i26mr14313623ota.170.1586095005157;
        Sun, 05 Apr 2020 06:56:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586095005; cv=none;
        d=google.com; s=arc-20160816;
        b=gYbHo7H9iGsDRfLOET7VDsdCrgT3umwOdC649iD+1XSCjUKTP7XgncI4sDWQmisZ1/
         wNkcIHtast5Lvpjk6KzqxiLYLhHg1yRnESp68BeFOTS921Jc2Vyjssw0HiEt7FztMqry
         wdlXEwkBDo3bLxwujiRugTEgITdUKMvlxHGNiJmtzJexqE3gfezWi7zDbYj1Kh6QZE1s
         Qf//h/4ehM72MjLeRJSPSTviG/OA95she9zZqaAP4ElQUN+4P2O3x9gOh594Q7E3H5bh
         EUyUbupQDP0pDVyvpKIrsn/jqTYpC9PU4SkxJv6RQ4WdEvyCmeeo7F0xprXwyi8RpcBd
         wZ0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=HIBW+9wU6pa/k1BuO2NwsZV9UocoT5Jj56/5NqbTF7c=;
        b=l55OXArvskE/8lO/VAAhISw0jdDauDUfnhP2ptYaFGpudzNsCw6XwJVC2dvzG3UID/
         9tieSVY3kNjBVFA/lQn23yeVdNVrpeCcPDct+PadZSbra173czyY+R9V9/uPSV9mvSKC
         TYOBK3xtcbIO68/Vrohp7IeUV6EbA43AdRb9F4TIGP09QsDHKkL9TdKx/PWenvdyk2v2
         qCNPgqpe2boliJi1+ky/y6Uu4SNazl/nBJlcfERkFxBsuJCrMnSGWHWZk6YEf5tGrKSg
         8d+qAotcM6Ni0SegY1GodONxMifFzgpZc62cbrH5OXxsgRoTCxLHi/aAA47/wq+I0/Di
         G97A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PVWfeqsO;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id o10si809351oic.1.2020.04.05.06.56.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Apr 2020 06:56:45 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 035DuCMa028931
	for <clang-built-linux@googlegroups.com>; Sun, 5 Apr 2020 22:56:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 035DuCMa028931
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id w14so8031420vsf.7
        for <clang-built-linux@googlegroups.com>; Sun, 05 Apr 2020 06:56:12 -0700 (PDT)
X-Received: by 2002:a67:33cb:: with SMTP id z194mr12826483vsz.155.1586094971431;
 Sun, 05 Apr 2020 06:56:11 -0700 (PDT)
MIME-Version: 1.0
References: <202004020117.6E434C035@keescook> <CA+icZUW0R9LDGJ1YjJAB2oWkcEQxCO79xYmdVEoh=P8Fy_AL1A@mail.gmail.com>
 <CA+icZUVowLVpAxiWw=FJHfQ38KtU7AXXkVnw46D2XLM41-NCEA@mail.gmail.com>
In-Reply-To: <CA+icZUVowLVpAxiWw=FJHfQ38KtU7AXXkVnw46D2XLM41-NCEA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 5 Apr 2020 22:55:35 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ6ji3=2+7R1DL7eFveH7L7No6e3XkqfqgiH5QFyQj==A@mail.gmail.com>
Message-ID: <CAK7LNAQ6ji3=2+7R1DL7eFveH7L7No6e3XkqfqgiH5QFyQj==A@mail.gmail.com>
Subject: Re: [PATCH] kbuild: mkcompile_h: Include $LD version in /proc/version
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Michal Marek <michal.lkml@markovi.net>,
        Thomas Gleixner <tglx@linutronix.de>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=PVWfeqsO;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sun, Apr 5, 2020 at 8:23 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Apr 2, 2020 at 4:24 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Thu, Apr 2, 2020 at 10:18 AM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > When doing Clang builds of the kernel, it is possible to link with
> > > either ld.bfd (binutils) or ld.lld (LLVM), but it is not possible to
> > > discover this from a running kernel. Add the "$LD -v" output to
> > > /proc/version.
> > >
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> >
>
> Please feel free and add:
>
> Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>


Thanks.

I collected all Reviewed-by and Tested-by.






-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ6ji3%3D2%2B7R1DL7eFveH7L7No6e3XkqfqgiH5QFyQj%3D%3DA%40mail.gmail.com.
