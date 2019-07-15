Return-Path: <clang-built-linux+bncBDTI55WH24IRBKHDWHUQKGQEAJJANKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 633B4688DF
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 14:29:29 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id l9sf14600999qtu.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 05:29:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563193768; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cu3+y7DDHtd4ghYR8AWo+MRWq5IcbKtKEf2UxnqXgS8bL4E9SBR3h5kNG1KZOT5YA5
         1nD0p0VywlPFnaNVFjuUEaLnuI/QIlJY24Xlo3voJcJ14f13vsE2fNG1iYsiXKffA8nb
         I5JmjFRph8Qk20tTwz9ASUb9053y8znpMdmIZZnrcSEgjVo3EusF99AGnW7UMXlMfYyR
         +3tp0ezHQwfqMblGcMuxoEw7ax4jvrnf2iQ1TbtK4AhJhI9b4hVEkykJBXe8bq3Jx8/7
         P3fpUuRDrQmfoFAdt4QCIcDgWOMNNSyCfe0Hm99sgNhKfgrivSS6+/LH9mgvaj4ohZ5r
         slLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=49SYmKF2AzLrNctoREyn2OkI/mazc6Pvccvtvs0GFNs=;
        b=lsQmgg+y/Hw96P3O0HdVwCS/XJ2F1JPujyjbLB/YkC7r4CNicMT5Mt2aN41V+0WgJz
         n3reQ6Q+pxoCL9WwmCB5OlofSYeGPtRQ/GddTPxXhkq0NDaoTGT69LxFsSUB2BTx+deo
         t67r5H+D1eRcE/x/Vov/7DwnVP8coaEUfCOTTyHEzSqMVRG0T1LWCLCypGxVo2GYQkeO
         OrLBsGvuE+27HBAH+4z++Qv7TQgCw2GhR6MuJk3H5e8vGGo/IgsYKa3FyTz7C7zTS6m7
         +ARuKMbOjO4/sSpBzrmnxRzVhkrz2XFkve8+b/aVRxrPcoAG5InaNsLo3AyGQYA1bg8h
         Nylg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=epIJpluQ;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=49SYmKF2AzLrNctoREyn2OkI/mazc6Pvccvtvs0GFNs=;
        b=Zz82VDYttJV/GbV1K2e8s+FV0YGcKbPRTtO9YqFjlJSIEA7+M+svpBQnL8gSnqdTwn
         ca5j/CAX1NLkXRY/4p7vkEdvkj8wafiDghXLBiGa89dOkBe3V+OdFBXziNzsaMzsn6hH
         Lg8Qfnj16ZgPQPQxaXATGtO1AVO3G78hOJwLHQbLmpDiqejSngAhaz8EGEbrSpm9n/Mf
         +KoMTOSB261L4rWpUilMOm/8Sc//Ij5X/MLmMhdRXMYCOMXEp6vs79eqSQDABWwVHGff
         V3ldHTx1Lydi4its0qcPaeX1Cf8/ed0HMzZngWIFCTw4SvDEsPpnqnCag/4lWqHs4yP4
         XPlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=49SYmKF2AzLrNctoREyn2OkI/mazc6Pvccvtvs0GFNs=;
        b=ifBWnCklqf2r3lDPnyM3g6JXkwPSj46+iBzo7T+2o9z5Sma2RvtNWBs622/upX3V2N
         KRZ2+v6/8sVfCeyE8RZMvA20VC09rIgtW5Ewo5n2jJ7XY+52/jOkDxDtzq6v6PY6oOAh
         Sem6OJGq3i/Qww5D/KkDBoO/OFBjk5V9T/VuIfs1gsZUT0fdR/WSPHqvhzZ9B1EczFW1
         2jLEWjOcXmwVAOV9Jbf2nerXWiXVsOfgFfWn5c1/tk/cbhD3AVVxYXdqBUfd+qKSSprx
         QxJHYryRa2+PcMH3bDmOzm+y66eB3/9lJjAQKlS/Y8bElj1529xGLWttTlUggOSJcBaC
         3OQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWCrwgW4T+VerCWThXB3km/QII74eAA6C2zwXr+F2urHDzscVM4
	puigtznupXARJ9lHYX9JlJI=
X-Google-Smtp-Source: APXvYqyMStp3xq400pPl95cxUr85lDLCz3OqYM6HAMsWORiOK+m5TKYAxhyZUc9khy2z0aujicFYLw==
X-Received: by 2002:aed:2a43:: with SMTP id k3mr17992602qtf.301.1563193768187;
        Mon, 15 Jul 2019 05:29:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:32a4:: with SMTP id z33ls4307070qtd.13.gmail; Mon, 15
 Jul 2019 05:29:27 -0700 (PDT)
X-Received: by 2002:aed:2063:: with SMTP id 90mr17492984qta.307.1563193767960;
        Mon, 15 Jul 2019 05:29:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563193767; cv=none;
        d=google.com; s=arc-20160816;
        b=b8np9OCM/yzGHQI5C4E3nbBZ8D+yqu6myM8DzvXh53uscllniU27JwW7sndKXd1ReB
         1Hq6uJ+1iXpaQWYrpiZyr83pXs+qP+2PpSSJxFKpWMvdLmfSLp8IjOArlULTeWFvXIUY
         fsELRPNoBtICPEmTrycZ+vYoaSyFDSchyiKBg2kSZU9SVvpSY/BgNmz49LxXbbQ9BK+i
         gGeZ+GWLtkb55RvXUdrHdaX5qWgjXEsv0dJA5R/F4B7PB6tdwzlGWPCo03wUmSAHXaEP
         nkdQthiIaj9rlWaBdEQEDf6w621eHf0MK1tO5ola+YkXohGNBdCiBizVlyRUBReLV0XB
         /4wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=yAufAdrjbVZeLo2XKE8YwT7x8b4qwlGxGHKZaKC8OiE=;
        b=wl945xMVs+b0ZWJe0moFjulpBDs5cdqUShC55eiYauv85xoGpXQ3boyb03/imffsEp
         dGO80P01mVyp6kOzneWWaMuiTzNSK9nTHvkjE0UYrA4a6ivjd+z+LKKDvR3sZOtI4jaz
         EInO5X6h7AKRK9hBhVXU0K77eH5sejZMJeAfG0WGjeYyem3l39Dsy6dsxfyblTWtOJKQ
         h2eNV5hIVKBhnbXzOA2p3QnPoviRDw/9hFRlu9lnqxxXYn11T471rREeRPiHQJbJJtzT
         Xr1SKTdxHnveItVtkNji8kPKwHVTN6ekMIiYTTgMctZFIYt5XtBCuRwCBQjpuy9dFnV/
         wHAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=epIJpluQ;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id 34si819175qtz.2.2019.07.15.05.29.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 05:29:27 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id x6FCT6ac030511
	for <clang-built-linux@googlegroups.com>; Mon, 15 Jul 2019 21:29:07 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x6FCT6ac030511
X-Nifty-SrcIP: [209.85.222.53]
Received: by mail-ua1-f53.google.com with SMTP id z13so6653837uaa.4
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jul 2019 05:29:07 -0700 (PDT)
X-Received: by 2002:ab0:70d9:: with SMTP id r25mr400188ual.109.1563193746045;
 Mon, 15 Jul 2019 05:29:06 -0700 (PDT)
MIME-Version: 1.0
References: <1562664759-16009-1-git-send-email-info@metux.net> <1562664759-16009-4-git-send-email-info@metux.net>
In-Reply-To: <1562664759-16009-4-git-send-email-info@metux.net>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 15 Jul 2019 21:28:30 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR1N-bwVWm0LXky2-d2GfvRuRrEWeo5CGm3Z2Lp_s0WEw@mail.gmail.com>
Message-ID: <CAK7LNAR1N-bwVWm0LXky2-d2GfvRuRrEWeo5CGm3Z2Lp_s0WEw@mail.gmail.com>
Subject: Re: [PATCH 4/4] debian: add generic rule file
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>, Robo Bot <apw@canonical.com>,
        Joe Perches <joe@perches.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-riscv@lists.infradead.org,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=epIJpluQ;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Tue, Jul 9, 2019 at 6:33 PM Enrico Weigelt, metux IT consult
<info@metux.net> wrote:
>
> Adding a generic debian rule file, so we can build the directly
> via usual Debian package build tools (eg. git-buildpackage,
> dck-buildpackage, etc). It expects the .config file already
> placed in the source tree.
>
> The rule file contains a rule for creating debian/control and
> other metadata - this is done similar to the 'deb-pkg' make rule,
> scripts/packaging/mkdebian.

I saw a similar patch submission before, and negative feedback about it.

Debian maintains its own debian/rules, and it is fine.
I do not like to check-in the one in the kernel tree.



> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  .gitignore   |  1 +
>  MAINTAINERS  |  6 ++++++
>  debian/rules | 27 +++++++++++++++++++++++++++
>  3 files changed, 34 insertions(+)
>  create mode 100755 debian/rules
>
> diff --git a/.gitignore b/.gitignore
> index 7587ef56..01d742c 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -69,6 +69,7 @@ modules.builtin
>  # Debian directory (make deb-pkg)
>  #
>  /debian/
> +!/debian/rules
>
>  #
>  # Snap directory (make snap-pkg)
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 558acf2..56e034c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4516,6 +4516,12 @@ F:       include/uapi/linux/dccp.h
>  F:     include/linux/tfrc.h
>  F:     net/dccp/
>
> +DEBIAN PACKAGING FILES
> +M:     Enrico Weigelt <info@metux.net>
> +L:     linux-kbuild@vger.kernel.org
> +S:     Maintained
> +F:     debian/
> +
>  DECnet NETWORK LAYER
>  W:     http://linux-decnet.sourceforge.net
>  L:     linux-decnet-user@lists.sourceforge.net
> diff --git a/debian/rules b/debian/rules
> new file mode 100755
> index 0000000..c2f0319
> --- /dev/null
> +++ b/debian/rules
> @@ -0,0 +1,27 @@
> +#!/usr/bin/make -f
> +# SPDX-License-Identifier: GPL-2.0
> +
> +export MAKE
> +export KERNELARCH           = $(shell $(MAKE) kernelarch)
> +export KERNELRELEASE        = $(shell $(MAKE) kernelrelease)
> +export KBUILD_DEBARCH       = $(shell dpkg-architecture -qDEB_HOST_ARCH)
> +export KBUILD_BUILD_VERSION = $(shell $(MAKE) kernellocalversion)
> +export KDEB_RULES           = debian/rules.auto
> +export KDEB_SOURCENAME      = linux-source
> +export ARCH                 = $(KERNELARCH)
> +
> +debian/control debian/changelong debian/arch debian/copyright:
> +debian/control:
> +       ./scripts/package/mkdebian
> +
> +build: debian/control
> +       $(MAKE) KERNELRELEASE=$(KERNELRELEASE) ARCH=$(KERNELARCH) KBUILD_BUILD_VERSION=$(KBUILD_BUILD_VERSION) KBUILD_SRC=
> +
> +binary-arch:   debian/control
> +       $(MAKE) KERNELRELEASE=$(KERNELRELEASE) ARCH=$(KERNELARCH) KBUILD_BUILD_VERSION=$(KBUILD_BUILD_VERSION) KBUILD_SRC= intdeb-pkg
> +
> +clean:
> +       rm -rf debian/*tmp debian/files debian/changelog debian/control debian/copyright debian/rules.auto debian/arch
> +       $(MAKE) clean
> +
> +binary: binary-arch
> --
> 1.9.1
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR1N-bwVWm0LXky2-d2GfvRuRrEWeo5CGm3Z2Lp_s0WEw%40mail.gmail.com.
