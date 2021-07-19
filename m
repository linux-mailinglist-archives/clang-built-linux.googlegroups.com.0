Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3PW26DQMGQEJCNITNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id A91FC3CEF04
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 00:23:41 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id t8-20020a05600001c8b029013e2027cf9asf9369207wrx.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 15:23:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626733421; cv=pass;
        d=google.com; s=arc-20160816;
        b=gPE3x5xPlphfrtIEer/jK4zbunow1wFKY/0x6mI0BRT1XIy3FkmdtotZeVNiYngRsv
         5DjxR9vfMY+yxKpJnnBTxPfMZVGqABEN7F0Uajd3/0tQqHjhhBZtuJxRXCxuUzmaagPm
         wfshX5H85nxZEoYyJEsChqnREdwALxHHba8e4CVUTRiChMVtmUxQ7yJN69udeLrxUYmv
         WAl2Qatjq4bRhCI9RZmPO7yegmdaYT9iAanVQWwkusx7Oh9UXcxK852lBoRpyHWHWp6x
         sYWYjPcovvYFVCdUr2GfJwLYd4DLXB9zK0oiadEU0QXgLfcF8TBZeE7OGi19+F3X0cuJ
         y5ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uD4ElQkVMGDmPUSpw93b2U984nNagPRbZ9cj2XFW6vU=;
        b=hBB6AbMwcteepDuNs6O0+oXUlvP+t1OwcmG9wGjZCmAoWFfjOdt32t+Xp44i63Kz45
         TKQqfWgQ7CMIA1O/+1jMmGyGMVcdxlMfgdcjTkcsZrl17WN1U+iFNJ6XcaenYS4tct6t
         J77QpyQ4haJNaFmRJ4GmMtNG6fagFSLzzMX4CXD4ylirSJY3lq79vDaDlDFE0jcZasy9
         zsaLF7F41itPSXdjnNSxzNguQ2gZwHJSpWAk9f7bQ8NaGcHK8D4bsxS6K+DDeCnRIxp3
         4KskMDxVhkHrxzNKphc+tyRnxXhdc/AD5WugpXcKREgCbWPBjnM2Dh054OKdVKa8VujB
         gahw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=piBRPaIj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=uD4ElQkVMGDmPUSpw93b2U984nNagPRbZ9cj2XFW6vU=;
        b=e4ZXpZnyBg3iFTvYxspsv8RPz8accHrfPbMmqm3UrDumfo1AvOdmG+xHDY5X27AlOr
         VMw8ITGR0eFaACfOE/ffnq6hrJB8uF/hr6pLdZ/ogJUGDmisU+VFkWznIidJ90MDy6oW
         Au/FtH5Ot1Q/NXhF9cSGxPbaTHr1uAq1n7vL7igO6VCV9YrHkIRG1OZjiEiXki+E99M7
         MOYnMi56TAaaA1zkq3TM4hGCh7fzYFWIIjQeVMvqAVE3/EU82Xq9FAKsTOZSR/Mj58AA
         fGlcfjrVnhLzVLMFq1kxXCkDwRxi2iAd15uvrOs+WIaEmF+Dz1EleXbWyf+txqY/oVA4
         63kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uD4ElQkVMGDmPUSpw93b2U984nNagPRbZ9cj2XFW6vU=;
        b=VvS2TqNFlP5l6iaI/HOv88TRwDVKYNh0rd9T3QFxLkX+wiDps6nyLJrl/be4Z9yHc9
         VKphw/XPAGSr1P4p7PotvXDZAi0QqlXTMzdL6g2w1NADxdl4W59Zo2zqe4JHrocZarr0
         Ro211thSm01P4uanVTiL3WzXOVnMaW4LwK0JH0wCJ4eKueuYXyLN6jIXEH1PEB4q81yq
         W9n5kTNP6hq7qqE0Ln0RSGJ/Lvotc1eLrl4XFV2663JSAL80JExV5lzyEOk48qsWRgFx
         bitzDVX4/DT8R9DRVmVLsf5iFhAG1gENCVSpC8zHvjzwFUiehPhjG4Tl8QQXcVpUOiQC
         NGDA==
X-Gm-Message-State: AOAM531vECbhxvl/LQ6+ukGQnpHjPY3wQa6WrD+KQDBlLeBoSkmu3TvT
	LC/9oGNmW1qzd/ho2d64qT8=
X-Google-Smtp-Source: ABdhPJxdJZd5DDSSokf4YIGwTUdmu6/1vtPOhYRnPzXI4WSOgbcQGPfmBL2iSI3EFbJMI7kGRY/66w==
X-Received: by 2002:a5d:438c:: with SMTP id i12mr32409005wrq.99.1626733421448;
        Mon, 19 Jul 2021 15:23:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a141:: with SMTP id r1ls12589738wrr.3.gmail; Mon, 19 Jul
 2021 15:23:40 -0700 (PDT)
X-Received: by 2002:a5d:528d:: with SMTP id c13mr32618415wrv.343.1626733420594;
        Mon, 19 Jul 2021 15:23:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626733420; cv=none;
        d=google.com; s=arc-20160816;
        b=VQJlNnlKh8OfiUCW4x6NwlyqmG1USSbWyhMrrrcFQ+JN6qZ+yrW2q25E/J6uz+oWo1
         ut2OSKUvTI8dc5tf1I1NQkD3OG2o2oeuneM4BVzzmwwG6zQH9fx2LMGmwYuLXIxRH5y1
         q7mLTBb7IGhZNmmbEsymg0CausbivuGwFMfKB4dIvA2j58kBM2qBv+8AkhZJHnGisBtF
         vev1TxZgbKU2XX6r+aRhPskZjLosh5KyeScxRAc5m2m7w1wiD9gqt6TMZsuyUHFVpnpT
         gRCNtomi4rsQpXMTeZ0wuCrhBvUW2euEpI9Fq4blIyUnrWg/4s2mrEFMKmXIjT7795mw
         3tPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=S1fnpljt9kBpbLF8nkBT1JIQruUeeltptwWcX+/X+9g=;
        b=q7Dl13kvM5v6hM7896F/NsBl9Bf6/Hw/Q2UnSaZ9b8dKUP99emTYcnM4fskau6kwj0
         hdLXoxcTLl0mlNyHpaLkfndd2mxYtUEJpj6IFBYQ6pXrYIbdGFltDa48kWnf0SNfhywi
         AAw6noqBI9Jt5k7NHJALaeeXex1OKV0O0K5kE3TPFtjWCJ5OjaK8Zs1hAXHnfURj+C25
         mW4tZIDfsuQpbYQ0iA5ki2Spug+akMup28M7sPJrGqFxb/BDZnntH90DHgb8Pvb314ce
         dJf0/NndV6G5560jfJrc0ooMQl560rzZQugpc2ry+M+rF6/YYnVcAn9nLGq44slCjOrF
         5DsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=piBRPaIj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id k14si688613wrx.1.2021.07.19.15.23.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 15:23:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id b26so32811204lfo.4
        for <clang-built-linux@googlegroups.com>; Mon, 19 Jul 2021 15:23:40 -0700 (PDT)
X-Received: by 2002:ac2:59db:: with SMTP id x27mr19683047lfn.547.1626733419997;
 Mon, 19 Jul 2021 15:23:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210718130748.230758-1-paul@crapouillou.net> <CAKwvOdkVEa-CxbVschn5Tnh7-Ynvzcz+zChhP3LL3Q745wE7_A@mail.gmail.com>
 <7YIIWQ.1TU3IBLL4KNC2@crapouillou.net>
In-Reply-To: <7YIIWQ.1TU3IBLL4KNC2@crapouillou.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 19 Jul 2021 15:23:29 -0700
Message-ID: <CAKwvOdkZWib3YUSdOZ2LQFE=fNF+FhfgfO2hqdsgMgzwaUqGnQ@mail.gmail.com>
Subject: Re: [PATCH] MIPS: Avoid macro redefinitions
To: Paul Cercueil <paul@crapouillou.net>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-mips@vger.kernel.org, 
	linux-kernel@vger.kernel.org, list@opendingux.net, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=piBRPaIj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

On Mon, Jul 19, 2021 at 3:11 PM Paul Cercueil <paul@crapouillou.net> wrote:
>
> Hi Nick,
>
> Le lun., juil. 19 2021 at 14:43:46 -0700, Nick Desaulniers
> <ndesaulniers@google.com> a =C3=A9crit :
> > Same question for GAS version support for virt?
> > Documentation/process/changes.rst
> > says GNU binutils 2.23+ is required for building the kernel.
> > If we still need to support, have you tested this change on such an
> > older version of GNU binutils?
>
> I have no idea about virt support - I hope Thomas can answer this.

Perhaps you can do some archeology on the commit messages of binutils-gdb?

binutils-gdb commit 9785fc2a4d22 ("MIPS: Fix XPA base and
Virtualization ASE instruction handling")
looks interesting.
commit b015e599c772e does too. Looks like git tags aren't used, but
checking out those sources might have a version hardcoded in a
Makefile.

>
> I did build with binutils 2.35; 2.23 sounds very old.
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkZWib3YUSdOZ2LQFE%3DfNF%2BFhfgfO2hqdsgMgzwaUqGnQ%4=
0mail.gmail.com.
