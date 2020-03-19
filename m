Return-Path: <clang-built-linux+bncBAABBAVJZ3ZQKGQE3375RII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5E218BB85
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 16:49:24 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id z89sf1341123ilk.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 08:49:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584632963; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fbk+kATeP0qc7o8vM2jNTwuxVquwIUq88q+Mxq+Nod2qyS+CH88xx5tb0Fkmv1OIM5
         QPKfTENKqxKhcqEwDyqimAOZbEzoZgNSjGva4ZGdrVHWrH8zBTL7dPUSkYjCAk8I3Is6
         O66ToWWrgXXMy/OrXwCaxACjCMIlFykTDwsHUZSj+lCj6/HijKFUrvSohzFA+sSTQqlY
         2qoG7WIlSrtDQ84l86d+IkcZs4YCRSc8Xm8WX/6WHoN9jecjxt30lL9vCHVQbxya9b4W
         C6youiHQaW+cijatLuskGaoL/ilf0CCY5SXXwzWKmMJttTEKPaW10g7gLZK1yNd6pWSM
         aF0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=Ycg7GwC8v75tmNdIhN5E5f6yS/gL47fMXqgYJSQ7ntw=;
        b=F2zHPHdU/k3Bw6jYeXZQAmnp4Hd8WpwaoMumktAn8Kx7QCX54P+r75s0CTei/7ZX1F
         DBLVsTPhlxdLqJy9L82UHUV5FyE9rqzKmSNbigtrxdcUAaQBTjzZmisUDNfeK+nI5IWQ
         9EwXCcgt9HEDgUab/vYKJOCtlE/1xqDIydOIs0jMAs0Dww1l0nZjG1KauxM1QM92UV+x
         +9Bx+7t4hBDIU+/U3i30YA+eWQitKXd+l9J7QXQzH5M6kHVEjs7NBgfaS5XSpz+EMnRI
         BaLjL7AVtpmCUOcAoZlkgOqcOde2ebPaD5vb8US9zHIUocKjLQ1/rnULFBultUVghvb/
         SW5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=TWHYuVJq;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ycg7GwC8v75tmNdIhN5E5f6yS/gL47fMXqgYJSQ7ntw=;
        b=LwoJ27Kkw4Qlv/G5p2O1zyQkls9nzcw8IRtWdBaziYHpXWWsIcwfIxNd3/TAs+HQxT
         uA3QGmW0Vw9g2fS6PI+JlUBZaXJKaZr8oN8qj1+uSPrHnNH+WbFD743FMq0B49UUf9hV
         bhklHEvOfTHcLxp8NfCFnaNqYk5TtEefpfDr/2yuKuZSFdbZ3rz38PXStPz0xHgZg9Y5
         pjME7JhT/0aKOyyjM+QL2xsFJgoxqA7IoHFB4ZyyS2GX0lc5yi8KSXAbI6AmB4RUTmx2
         AVQKA8v53kBSvyeGZ+P1OI0/ybMczezvRoH/JYuVphpJQLEju+uZNQfHXX/8RiJkiaVP
         k6IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ycg7GwC8v75tmNdIhN5E5f6yS/gL47fMXqgYJSQ7ntw=;
        b=PiJFQksXUanUnSuUPGkaE3D2DYCmODVySMC/+8pQaRk//MYm867GeRt5Jht+AhqZkh
         bil7ZiFIjfzCpEsB8M+eSnasPEEJvA8ZjQD/AIeEL8hS4gAArZ+sfkMa0LcUXRAKpH04
         AsfwFeMJ7a7KuGA81WBzz9GQpRD9mA5rkCC8dhOrzO2sf022z4sqhZD/nQ1LV8JHSYil
         vf/auhGMN7Ra+7DuRutIJOj6zXosEQrCcCFgaHIv2vWu3l4xHGPYP9X70tdtaNyv5i/C
         Pgj3NpsrnySkwnuaSj4HGi2x+gYgawSkK0uknmx3kuit1gKB9QUQoqbcmHBDBB0vv1pR
         llnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0Tex4+sHQoWR4OBxYG0WWOjkw2crH34oNrhMfpd7G+qt8SY/Db
	qTjzPhBDt1coMN/4Bc1rWBc=
X-Google-Smtp-Source: ADFU+vujkfKnsWl2pdqZQkrwDCgK1J+BRsoq4raFQ3HmE1//srRbXOIz4CS7Ra/B9tRoOSoGE08gNQ==
X-Received: by 2002:a6b:5a0c:: with SMTP id o12mr3251574iob.137.1584632962678;
        Thu, 19 Mar 2020 08:49:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6216:: with SMTP id f22ls487394iog.6.gmail; Thu, 19 Mar
 2020 08:49:22 -0700 (PDT)
X-Received: by 2002:a6b:7206:: with SMTP id n6mr3378734ioc.142.1584632962337;
        Thu, 19 Mar 2020 08:49:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584632962; cv=none;
        d=google.com; s=arc-20160816;
        b=et4Xl85NRwwa6NXMwtZlSV6uzVcT0EF31ETZKmXfaVFYmfnsYN6F8cg2lWvP+Kf3sA
         00A0VYEJNWMVSXEiR0JF51ECFW3rmxEeDfd9v2QEw2aEl5scQaMo5kPLBJilPp8iSSe0
         fQvNUR091TZh2N1dOqGy66U+KMZRS8QI7xNuZYdSf+tkDn1rqv6IZCuEnFA5/GcY1HB1
         gCdvXH1SPI15m6KHd2oVgvugQlY49trfa6HxAt1SL+8d07+ltzr2VdlHQEg+Jwwcd9MV
         jF7bTmWpQ8rjPvm7SqCgxSUOMzEZQyBnGB2lsMKfFeeaXLG2Nn03g+GkG9gpG9pJuhgu
         OQHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=8ePxFKbmCNPyEVXbZg9bxrLPtjJ0hIQvHoR+u5cuXlk=;
        b=SlkBP9b+a5k2Cx/EMv9YOkt6cY744iaGWuuszF71mK3Id2Q+h7gUyPlEHsrWyVtl3f
         wZuDJt5zQ7Dh24RhIr8IRXqJn9zgrujkZis7APmK1CiaPr8tPeB7g7Mc+z/zZO8iuIRn
         clBg8kyH532S8lMWhQzJjr2/YZtkCFnd/F9RxWfGZ1ZM5d4BR8x9P7/EhhCtyfR3Mkf/
         Bpt9GtqV53UMrhH/Ve25W4NgucSiUL81p/6uWQQjolQ4QV+l2dGzXjtx2shhAYs1p04k
         YGNjLdnbI6gCcIjtZsmEW9uk1anPCKf3thK2w7Q1xlK7wgEkXBxFzvCcxk7ibw2devfK
         AC8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=TWHYuVJq;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id a3si180788iog.2.2020.03.19.08.49.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 08:49:22 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 02JFmuY7007506
	for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 00:48:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 02JFmuY7007506
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id m25so1927186vsa.7
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 08:48:57 -0700 (PDT)
X-Received: by 2002:a67:33cb:: with SMTP id z194mr2807732vsz.155.1584632936269;
 Thu, 19 Mar 2020 08:48:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200311223725.27662-2-masahiroy@kernel.org> <202003121230.lys3M8E8%lkp@intel.com>
 <CAK7LNARwR5X2C_VzK_3RZo+30Cu3uPuiw-rFUut1j8azLhbxAA@mail.gmail.com> <20200312083943.GA7278@alpha.franken.de>
In-Reply-To: <20200312083943.GA7278@alpha.franken.de>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 20 Mar 2020 00:48:20 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT8AVh8PawDsUoStjYMsOq-DLJbW30SpX7hDDJHZNCd9g@mail.gmail.com>
Message-ID: <CAK7LNAT8AVh8PawDsUoStjYMsOq-DLJbW30SpX7hDDJHZNCd9g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] kbuild: link lib-y objects to vmlinux forcibly
 when CONFIG_MODULES=y
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: linux-mips@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
        kbuild-all@lists.01.org,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "sparclinux@vger.kernel.org, David S . Miller" <davem@davemloft.net>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Ilie Halip <ilie.halip@gmail.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=TWHYuVJq;       spf=softfail
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

Hi Thomas,

On Thu, Mar 12, 2020 at 5:40 PM Thomas Bogendoerfer
<tsbogend@alpha.franken.de> wrote:
>
> On Thu, Mar 12, 2020 at 03:12:28PM +0900, Masahiro Yamada wrote:
> > I got the following report from 0-day bot.
> > Please advise me how to fix it.
> >
> >
> > I am not sure how multi-platform works in MIPS.
> >
> > The cavium-octeon platform has its own implementation
> > of various functions.
> >
> > So, vmlinux links different library routines
> > depending on whether CONFIG_CAVIUM_OCTEON_SOC, correct?
>
> for cavium memcpy is directly linked in via octeon-memcpy.o, while for
> every other platform it's coming from lib/lib.a(memcpy.o).
>
> What have you changed, that this doesn't work anymore ?
>
> Thomas.


I want to change all objects from lib-y
to be linked to vmlinux (exactly like obj-y )
if CONFIG_MODULES is enabled.

https://patchwork.kernel.org/patch/11432969/


EXPORT_SYMBOL in libraries
must be linked to vmlinux all the time,
even if there is no call-site in vmlinux.
I believe this is a good simplification because
EXPORT_SYMBOL is interface to loadable modules.

As it turned out, lib-y is (ab)used to avoid
multiple definition errors.

The 0-day detected a bug of 32-bit sparc:
https://patchwork.kernel.org/patch/11432969/

And, another is this one.

MIPS relies on that
arch/mips/lib/lib.a is weaker than octeon ones.

So, annotating __weak is a good solution
(thanks Nick!).

If I send a patch, is it acceptable?


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT8AVh8PawDsUoStjYMsOq-DLJbW30SpX7hDDJHZNCd9g%40mail.gmail.com.
