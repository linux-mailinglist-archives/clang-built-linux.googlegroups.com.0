Return-Path: <clang-built-linux+bncBAABB7US5TZQKGQE56O2ILY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA4F1921C7
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 08:34:23 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id t7sf1662841ybj.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 00:34:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585121662; cv=pass;
        d=google.com; s=arc-20160816;
        b=RyvKCL/rINS+qL0Gtov6COD9HgRKG4GOyiWBpzQ9lMAgLyf9Co6a3TbMCfik+hzNzR
         0yYgOvQlGkRhmjwEcMIq71SW7hW2p/8P4qA47p77yKXUgF1aUu9Q1zPMQTg5GQPLkTrk
         EAx81B3L3eRxmwLLSjiVAakVanXGO9zwC3ei25CWBVfD91TKflc7lFoCaVCd2xeg8Scr
         YTxCRHGX2ZlasxjHeOQrJficzqbNifI/jRSGeH9jclVQvZXNlHyKfue79zOv4/q+zwt3
         /mCOFWYi2uThHejfVvgjYQD7d4t8+zUSW0BuOugzT5JiDK0ymdd2u64CtHN7NmUOkkbP
         4Tkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=QT959JMUBZausp4DmD/GUagt4FFLZevq2Q4oO+K1L+E=;
        b=IDTOI7hIRHD57U10Kt5fX6ikSJTv7Z8QGniilFJXdKFs622yg0GA9RUKScMeZa7DxV
         dIkw+Ao46+z8FPYHZ5Zqq6zsME4v9kh6uI+90XPRgVazeKChdQJrIj5RKjlQ94cP5mHr
         wpI/b+MILeV5mPrkOfhSzBI6Zvp/7xmknW2Y0+a81G3w4ctXT4lBQaUlovzZi01BK5Ol
         jNpJ6Qdhjv2bEO0VaTS1BgtQpvA43q7xHck8g5/5BJKwROmsprQoXWLEc+TNappKD/iM
         z/IENpuUIA7D3amBDgVz48gGdfNIxmP+xWV4oRmRC+il0z8G+d3TqTJ2bT1D/3Sw8Bhb
         xA4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="2K6Z/0Om";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QT959JMUBZausp4DmD/GUagt4FFLZevq2Q4oO+K1L+E=;
        b=axqViZECvhNSWLbd+yHJVMYv5LPOOrFbyFp0XkEGCdLS1Hk+81IM3NQAAbcX5f7sFh
         5phCNc6Q5lHze56p4E8OX51FAFzIuRTAA+vyu1+EbO3EdrhzgOfCl/yr/Fz+8nkrK4qj
         wPVwSJK3gpVUydR6zU3inZSb5q9T3b5ov4tUyybE7xxsgrA3JI/oVfFHXDy9YIXQ8bLW
         lY0+450nEBlL2jEWiCi6H9mjkipIOFq6Z1/wBWVX987lZl8frufn7ZojDPrGJqdM9UrY
         aCE/Ii4HBzRgXN1XLaKhLXeeUtKcbm39+twY0PY1QG/gcA6l1JWv7Mf7oc8+iV2gTf/j
         hCtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QT959JMUBZausp4DmD/GUagt4FFLZevq2Q4oO+K1L+E=;
        b=abDmk+Hj7mKNTu2GSCw1ssuAhr/xRX19KclZQULJk1BSaf03GUyTJ1CmZsUSc62Pg3
         K62nAUwsCikDdLD/qPGy4Fiq5nnmePJWZbbIazZcN25saReQUulZe5+pNWlD2+stEw4n
         eeTORU7fctfOtPedRTvFsJWFQvzh2H/7FxOQxvgpOuIxFVleL6ikoZf+KxgVE05pO8p7
         f/QeUb3tjdKMlinN9mQHKcOkH0gq67H/PFfyp7CzZMpIti4gCAGm6J6JFMVV/hF8PShw
         NrI4zIC0SUyGmApSwLFqqoGJYL3qPYSSQF+R4Ccj1GKYwjEYQN/xfi0Zgj1cm1IZocp6
         Frqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3kPBK9RIAqm72CG5Tf9Z6QQHVUt6OTyqn0xcQWpvVj+KwZIO8m
	VTVaGQGgPsnPRGSMftxKIHA=
X-Google-Smtp-Source: ADFU+vsKxLX3oEDZU/jjpUyZ23tc6z7cOeffZNS67x88xPIvWrVRrWxhCz1fAWFpCEnZiTaBVpxDsg==
X-Received: by 2002:a5b:447:: with SMTP id s7mr3386240ybp.160.1585121662208;
        Wed, 25 Mar 2020 00:34:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aab3:: with SMTP id t48ls498277ybi.2.gmail; Wed, 25 Mar
 2020 00:34:21 -0700 (PDT)
X-Received: by 2002:a25:c683:: with SMTP id k125mr2112294ybf.191.1585121661886;
        Wed, 25 Mar 2020 00:34:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585121661; cv=none;
        d=google.com; s=arc-20160816;
        b=tF0lyRsLYuFq9JpBsMqJxOUQ/oo7qlPAQ08Ywf+3Emj7V55kh3bfhrQqrpiQIv6qC4
         PEfQ6PRKbHe8l/SWKVwv/gAmpc1XocqCBrEGvZh30mjtDUo2G2XBJ1vaj91uswi1Fkhj
         nFEMayY0+OD58rbztZGjwsNMlxWtTZO8waH1veEmbs3yzpaJ3LlSy310EH13n75IR+T5
         UqOY9R0ozuLI20vtHrkZf5C52sHCSRGtP9r7KXq90X/Y3mJ9gwkSZK3G0I5bDOTpbsbu
         6UJd8p1THmDJev4+XWuJy+rT5mzQ4hYVO1Lru59GHTwhKkwk3BCnN+2zPgxEKisE/4Lv
         jaWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=kh7EjCwaL2YO03hE6EYB+/Y7QkJFCBvPs4JMoSyx6h8=;
        b=mytoU5vm+67XDts7TFusgU7lBmfhoVS/CKw2BRqRD8eUS+BFFFB0uIi4Rsi+v5Egib
         jjdXEe6M+CyBsyZwSjZI44BVWACMZJ8qXj7FcKochUezKdRNIGwNgZys/q/4N1ExNqv2
         uSH3MEhTojC4FofgNIhlEAQgkwzaejkkcU2fvkrP6G/twiOYu9V8p0Kn3qQmx/IK7czp
         MgB4hVn+SEBy5B29m3iOK5gHYptCZPlgdPquc9bbbSuqvwS5oFszZG5Hdij4LB74VZZu
         OFldBHNWOImdpezxTDMqSMbYXS6w39g5GQOz3WZxBMZHM2qEecEzaEpeOfr1zaELpIa9
         pDgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="2K6Z/0Om";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id x13si1645273ybs.4.2020.03.25.00.34.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 00:34:21 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 02P7XoaL020871
	for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 16:33:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 02P7XoaL020871
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id x82so880456vsc.12
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 00:33:51 -0700 (PDT)
X-Received: by 2002:a67:3201:: with SMTP id y1mr1636838vsy.54.1585121629966;
 Wed, 25 Mar 2020 00:33:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200324164005.8259-1-masahiroy@kernel.org> <alpine.LFD.2.21.2003250240110.2689954@eddie.linux-mips.org>
In-Reply-To: <alpine.LFD.2.21.2003250240110.2689954@eddie.linux-mips.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 25 Mar 2020 16:33:14 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQA1Z3=9QFvvVx8Zqiq3zKTM8W=JurBuua4iEZf=WL9ZA@mail.gmail.com>
Message-ID: <CAK7LNAQA1Z3=9QFvvVx8Zqiq3zKTM8W=JurBuua4iEZf=WL9ZA@mail.gmail.com>
Subject: Re: [PATCH] MIPS: mark some functions as weak to avoid conflict with
 Octeon ones
To: "Maciej W. Rozycki" <macro@linux-mips.org>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-mips@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Alexander Lobakin <alobakin@dlink.ru>,
        Paul Burton <paulburton@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="2K6Z/0Om";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Hi Maciej,

On Wed, Mar 25, 2020 at 11:46 AM Maciej W. Rozycki <macro@linux-mips.org> wrote:
>
> On Wed, 25 Mar 2020, Masahiro Yamada wrote:
>
> > MIPS provides multiple definitions for the following functions:
> >
> >   fw_init_cmdline
> >   __delay
> >   __udelay
> >   __ndelay
> >   memmove
> >   __rmemcpy
> >   memcpy
> >   __copy_user
> >
> > The generic ones are defined in lib-y objects, which are overridden by
> > the Octeon ones when CONFIG_CAVIUM_OCTEON_SOC is enabled.
> >
> > The use of EXPORT_SYMBOL in static libraries potentially causes a
> > problem for the llvm linker [1]. So, I want to forcibly link lib-y
> > objects to vmlinux when CONFIG_MODULES=y.
> >
> > As a groundwork, we must fix multiple definitions that have been
> > hidden by lib-y.
>
>  IIUC that causes known dead code to be included in the kernel image.
> Wouldn't it be possible to actually omit replaced functions from output by
> keying the build of the sources providing generic code with appropriate
> CONFIG_* settings (such as CONFIG_GENERIC_DELAY, CONFIG_GENERIC_MEMCPY,
> etc. or suchlike)?
>
>   Maciej


You are right.
__weak cannot trim the dead code.


I can work on the CONFIG_ approach,
but I'd rather to use inverted
CONFIG_HAVE_PLAT_* because it is easier
to make CAVIUM_OCTEON_SOC select them.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQA1Z3%3D9QFvvVx8Zqiq3zKTM8W%3DJurBuua4iEZf%3DWL9ZA%40mail.gmail.com.
