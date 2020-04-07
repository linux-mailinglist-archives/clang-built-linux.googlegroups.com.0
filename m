Return-Path: <clang-built-linux+bncBAABB3GIWL2AKGQEH72LLSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CEE1A10EE
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 18:03:58 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id b6sf3666119iln.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 09:03:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586275437; cv=pass;
        d=google.com; s=arc-20160816;
        b=wOjt4ebJeSHJzxtK77DjxHB0gosYwVVZcqLXdoCG06Jouj5icYNitLZRUjl56572Ci
         gl3dwXsb+OW+i/9SWKdcAWn7bwMlQiq2EcMtLq9VLpmmfAoLthUkLgDFuMFKfV+XZWpi
         kOh7WCDegsXB+w0RenCR9PhWVnUECbRplPKg/80lWNkpaYbvmX4WV2x3Nv6lRH1IzVsn
         kp+bv0MGy+KU6Uk8GsKOv4vZisD2W6U1vlUp2kFrdXGsXmzHYz8y0nstxv2S0AakDRo+
         z/RnSG9XoJ6/6iK8B2AaF1iObDTG0ZJ+f36kxszt2O3dFcC4JjpaHj75rO/fKEAcZpzZ
         dvqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=wyHpEa5J3RJQFFKAawL93leNYFHnuXh5zu4UwWJ8Ntg=;
        b=YmBBM9QkbOalrBvzWkajo8ebYSwDcNqzy/47s99Qto01fmGu5V1/rohveU+k5+ZdPb
         jen1HUDXCat+35U9fV3HKFRdYBmWXXJPf7UnXEyYmrdQSGhRqFcjarAya3gz8t/mLdkc
         MrZvt9sPlQgH8S2PqCTyGuhxGqergkm4vRWhh03F64Id6YMgZZtx7OtW6MN2TqzOtXkq
         +skqw7tE6TM2FbHcD8JFWEdIykB5F34Cs+0WpHld0Sw0aH0Sg9D0AHwn8fpO8+Y+UBIs
         mEbvR+3SYFgHbOTLRTGzhz6DISS893lpoKRTicgeriJs+aPO4LCF73CbSd+r4Bx8xfIZ
         661A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=GMIik+V4;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wyHpEa5J3RJQFFKAawL93leNYFHnuXh5zu4UwWJ8Ntg=;
        b=Hzh59Lmx83tK4r/y260fU4GVTdXZ+PtRFbKnRMNGGFsKUza1xBb9jQQ4tUdiARd8x9
         iFQrQCxrPgoNknT4JOWtPnlBeG4+mcbU+QBx2yrhJloQbPYpsIQsqwmRW0PbMVlh2Fui
         wwbUqhOPp1bzwiWA1diGCzsbyrYzzdVMeMhpfCX0lyjaw7crH5Dqy/tIezrO9avOw43J
         Cz6X10XI8gO3PmNKMVbEcQUvIyaGiukY6ZZcy2AaHiT5OSR9OnYu9SR/36sFpj9yIMD2
         LgV5iZp0sURQm4aLPNHu25b5SktsH0QmoSWGkXwkiXt+wKPnOzIP4BGQ9T3aS6/NHFlu
         OLEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wyHpEa5J3RJQFFKAawL93leNYFHnuXh5zu4UwWJ8Ntg=;
        b=KkbGscr0QJ7Hk7JmVC5xJgyTKI8gPhU8VlW1ZyJ3R2yEIYd9QitPmM2QSN5aBWpsyK
         PSs5Uk5y9SXX2NBLSOZFqK8pE9iVVJItCbELtLJfOUuyjH2aWK8o7VB0svR3ODnuOM4/
         CamlIzV+cKXr32G+d9BVKMHg2miIq+S0ek2AWjvaYzM8Du927N72cxI+IxWZBc9vePCV
         Ou3021wuVGa8oVdxwRFp4+X/66ua3+vGewDW224Cl05sdI3UtBUyjX9umSs0WJa/lTGW
         RucSCWx7O5K+EwKowV1MZwfKc+9Ynh/QEorJ+mAz4C9NODoeICh8cTyxYjecE4/2ivz1
         aqgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYHhXfG1D5jnJMYa86ublyHzCmOlro+MqDEkCdYokibMsEWd2Gj
	IA72w0rETdweiQ/pGIGfre0=
X-Google-Smtp-Source: APiQypI6ml9uYP0kSR0gna7KSL/K4/Lzk7b0bEQZXZfHkyJh7CVwFLyyocFIck2hP22XZ59F0Tz5YQ==
X-Received: by 2002:a05:6e02:10d0:: with SMTP id s16mr3222972ilj.30.1586275436364;
        Tue, 07 Apr 2020 09:03:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:878c:: with SMTP id f12ls204950ion.1.gmail; Tue, 07 Apr
 2020 09:03:55 -0700 (PDT)
X-Received: by 2002:a6b:8bd2:: with SMTP id n201mr1494502iod.195.1586275435761;
        Tue, 07 Apr 2020 09:03:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586275435; cv=none;
        d=google.com; s=arc-20160816;
        b=lJpZogJR4vZ0HZP/pwij2aUheccPNTjgG4JZcXAWKwq69U/FLAa+2zIN6mR4qRuIty
         gMHYs8BN2etlDL4Dojd/+Vlm2URKBDOKBz5ys4l8t8pVuOIdC+l/PJ108IDjpUgkAICy
         osImdmpBWCeu22uwS3b9RXfcFpkLDqTVPrcmvEDEi5Wv/Ka0RJ7RbU1E9JluCLz6Tb3Q
         Pdy3jXYiKZyK6uObvuC/F2wvkfD3kbjNhGKdNNRlFNr8jUl3GIw2xpH1l7cwjtGHGzyi
         deVpAO05zfnlEPuv3rRYjfP1yZTm5LxRTs3v1pwx6pUdl3D4zAVkpaDAbwmIToaA3pBu
         z2ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=H1J7FezWT1dgglGN/erJ3S7DC6IYDiQ5DhPkx5GnfYo=;
        b=zg7WM6dlYcYb2fJcbg5QaWQRw+MKEYwy8IgAjGCBJuotGCsiO2TwlBaoC/4XGPqEpj
         XcIS7RNLZv9vXE5zpDX9JXXcH5I0MamtDTj/kN5Al0WZEy7WBQ7FZNQsk0KPI2iZ3CCk
         LSLHaXuD5OG7K6QzFns+2DIYXvdGmzF6IXlXBY5zfXRL3xRpVkrneimpupxQZMHdibwj
         QxZoGIlJASvy2YGIryA+CxWWINXhUTZdviRwrrgOYmgEx4HoLzeSnXkoTtv9KZVyjxt/
         1vCx24EsHppVH1Sr1Psl7uHXPgH1EMKV6MtJfy5gz4rYw1S1ROzh3e7G9H8w8Dyhc7Dt
         XcJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=GMIik+V4;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id o12si290989iov.3.2020.04.07.09.03.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 09:03:55 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 037G3UTl010886
	for <clang-built-linux@googlegroups.com>; Wed, 8 Apr 2020 01:03:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 037G3UTl010886
X-Nifty-SrcIP: [209.85.217.54]
Received: by mail-vs1-f54.google.com with SMTP id s25so571593vsp.11
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 09:03:30 -0700 (PDT)
X-Received: by 2002:a67:6542:: with SMTP id z63mr2511247vsb.179.1586275409554;
 Tue, 07 Apr 2020 09:03:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200405163052.18942-1-masahiroy@kernel.org> <20200406110333.GA6266@alpha.franken.de>
In-Reply-To: <20200406110333.GA6266@alpha.franken.de>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 8 Apr 2020 01:02:53 +0900
X-Gmail-Original-Message-ID: <CAK7LNARGO5ciqaseZ7z1k+e-dVh9rU+HY3-1H0XYMwq6+5PqaQ@mail.gmail.com>
Message-ID: <CAK7LNARGO5ciqaseZ7z1k+e-dVh9rU+HY3-1H0XYMwq6+5PqaQ@mail.gmail.com>
Subject: Re: [PATCH] MIPS: fw: arc: add __weak to prom_meminit and prom_free_prom_memory
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux-MIPS <linux-mips@linux-mips.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=GMIik+V4;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Mon, Apr 6, 2020 at 8:36 PM Thomas Bogendoerfer
<tsbogend@alpha.franken.de> wrote:
>
> On Mon, Apr 06, 2020 at 01:30:52AM +0900, Masahiro Yamada wrote:
> > As far as I understood, prom_meminit() in arch/mips/fw/arc/memory.c
> > is overridden by the one in arch/mips/sgi-ip32/ip32-memory.c if
> > CONFIG_SGI_IP32 is enabled.
> >
> > The use of EXPORT_SYMBOL in static libraries potentially causes a
> > problem for the llvm linker [1]. So, I want to forcibly link lib-y
> > objects to vmlinux when CONFIG_MODULES=y.
> >
> > As a groundwork, we must fix multiple definitions that have previously
> > been hidden by lib-y.
> >
> > The prom_cleanup() in this file is already marked as __weak (because
> > it is overridden by the one in arch/mips/sgi-ip22/ip22-mc.c).
> > I think it should be OK to do the same for these two.
> >
> > [1]: https://github.com/ClangBuiltLinux/linux/issues/515
> >
> > Reported-by: kbuild test robot <lkp@intel.com>
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> > If MIPS maintainers ack this patch,
> > I want to inser it before the following patch:
>
>
> Acked-By: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
>
> Thomas.


Applied to linux-kbuild with Thomas' Ack.

Thanks.


>
> --
> Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
> good idea.                                                [ RFC1925, 2.3 ]
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406110333.GA6266%40alpha.franken.de.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARGO5ciqaseZ7z1k%2Be-dVh9rU%2BHY3-1H0XYMwq6%2B5PqaQ%40mail.gmail.com.
