Return-Path: <clang-built-linux+bncBDTI55WH24IRBLVKRHVAKGQEJDWMDYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4E87D371
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2019 04:57:52 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id k9sf38704926pls.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Jul 2019 19:57:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564628270; cv=pass;
        d=google.com; s=arc-20160816;
        b=mRC+8ahDHLpgP6v+z9OneInoc36J2IJTK+RWibNu0rX05fLbx5/VdevPC+u5NV5yE1
         s6TJGWpL8xJ/8r+mms2k1t8+qVaEGZfJ3QdRAb1fB3JXmskQ1a6WgaVlHXT0bHxRc0qa
         A7W5U/cukRi0/hDP82W9wcHPP9V3AyO0CuA/hSpZ4R5q2KXEw9GeMneWRDx2VSH8mjJP
         IN3XtfSl+LR1mfntfb+grVEJhZ32yGIVJyJvvvGH1wXQUx/9P92oItStyLoTpDDtNzPQ
         Zf3BFsRHPULdqvmqAJDdtyWmXcXT1Uz+EOJOHpvVC5M4ptzGs5Xr3mFxzZx9HenGvdIB
         IYGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=4Il8Cb8dopb8FmRsD/Vtb0YiW6WPrlANed4jB9XFYPg=;
        b=N36Q7bk1hTWeGj8fZrVQsPRorxPEvBxVzGmo1XT23bp1WpevVbUYF5KQM7oVAUxjqr
         FaSH9rH2XStOeqylpZ/tYim+MeYRroYqyLKf4kbXOqg4Wu8AqEAWdCmWdWMbEQW8SMiS
         BTLWdPqJdELdYUpMyvyx4MwQdk7Dlku3ITPuFMIwFrPF/pkDOh2eE5FzVJo/O9DqZ/Qk
         M4Mlc2OX5xGgvIh/gZpPzt8iirGtVmV+s0GA8lQr9OBy0GcgL3O8aSe/bt9s3dnsZmq2
         nXktkcCqev4JwF409AS/RFckZ6UmaGtglHhaokl5fTX43uBRJSBU4nnDa30U4UM/EX6d
         T3Rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=riNql9Zz;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4Il8Cb8dopb8FmRsD/Vtb0YiW6WPrlANed4jB9XFYPg=;
        b=B35QP/VzCRkmFTWHjRdpPAQPpnO2gb91OOyp++y0Ygjc2gmF4uWEWAOICMlyMhpfiL
         MZ+n4cVRVNfMWKxuw/2YPT0XSRi8w2wBz4o1VRsNBkYQgoEf3NynNFya1ewJad9Cx0a0
         Q5OzRENHuJCpHaGuhjWxg/ttfMLPKHbFxtV19y4md2ZhuvcchWU7RgpbzMHXu2966eI2
         9LYGfy2kvj92aJ4iHyJJwXFPWQYSi6BNFjNUCmFmU2vKfuH9AD0w+A03pRfFaLRT4UFI
         1/QMMPzbQsChEBAbXkGZ2WLgWalosMsEcBnalNGP5rfuNGh23w+1LfNiF4QI9pbqQSKm
         195A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Il8Cb8dopb8FmRsD/Vtb0YiW6WPrlANed4jB9XFYPg=;
        b=TOi2iVbH7pfhDKdj/dOuX5xun7GRKNBi7PRwwUCRkfmkkbI4sKnA2u38L+5nnZPUkT
         taUKp0Dl0ttGEIfoz35ZPPWiaaXnUTU/Gd92Tp23jCPiEy02kt651J4aRhtpCvzlkWxy
         N9NN/GFEUN/UPx2ZyJt6MHAaQy0arPA5U2P5wRNUSzN8dPDE+vZra0hKUcJK8fdGwyKT
         V3qKLceNXv65p4FcybCOyY9f5mFqfB7D/7d/KCtpVOe6CNwKz5KQ+JSa166ddl1idAXG
         z1sYHMjoPRiEpJd0e0x/VMid2/12iRAt1hPU58y6qN3QUHP5CCZ8cfoTS8D7YP7AsP3M
         0EZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUrMYpZGEnIIVm9op/fc9m2s64wD5ccmXPrkvZabG7xV+jRlObv
	esd8jlpA+iMWgy5iRSUTGhg=
X-Google-Smtp-Source: APXvYqwIxfuEQ57+METvxBJVHQNt9FfvjN9c7b4JNX5bJq9gQ1wIwAU2WmEbuN1NFP8pEEQT9XDpbA==
X-Received: by 2002:a17:90a:9a83:: with SMTP id e3mr5936382pjp.105.1564628270489;
        Wed, 31 Jul 2019 19:57:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9406:: with SMTP id x6ls15427689pfo.16.gmail; Wed, 31
 Jul 2019 19:57:50 -0700 (PDT)
X-Received: by 2002:aa7:9513:: with SMTP id b19mr50865929pfp.30.1564628270202;
        Wed, 31 Jul 2019 19:57:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564628270; cv=none;
        d=google.com; s=arc-20160816;
        b=MU9XfsF5VY4bwNDqS3oVzvozL9i60jFCL1521tz3h9a2kmjMtFuxzhF9mOIl3lyy94
         e2Fh3LIOHRpz2t1XWYV4YckceXfu11aDtZDRFF5hGF8AlrZQ3YLrwaniBw0/3qjQuglo
         PD5cScbudQyaWQJPBwn4Yl5OQGqKJuBDugGBKb6ENu/CaIQRGwVpWpdMb4FU0aKOzWKa
         vor9gKoBqzWRDPUihCUO0OpCCbUBf+NMQQ/AeHa08dRwEsrMeQumxROJIWinlMFDZVds
         CJDBw0hpiBAdfCodLwQKRy0qwQAvf1SqotZ1PH7Wxm4UcMm2ST4tGUeLUCg9opOIDfrS
         Zx1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=XuEZx9KL8vPGiZUdkIWpRAE9VOsgYYJ1v/yggHWObxg=;
        b=j9Cgn65KTSSTNtG7dZxtcpKWF2cBlktsBEjFBq5cX1YD4s7Pd5dWShSVWiEJip3X5g
         GbMu/A4hGEFT+onb5ctGEPHnOVVbLEAmfBELXY2Ojy2m2YDpuzNgpNkW5nj8IpZZdy2N
         lQwf7Ct1ZQaX13grE8Rx8xQujTlJZtEkH4Tvc4pBXvMxucJCI4VE3U79mLFMJrUBN6dz
         H2umqtOP14VN710Jj1cNmfv92MvF3F4VGclSr2qFoJyzlWHBNtSI0i1SmMfOQxyT5P0t
         G83eZaXS7AAS6SFPrT6zdPCqi0YMBJ6yXfjFdD+B5YqOXIX6+H2s/mTwS0xmZDJupQ8z
         PHLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=riNql9Zz;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id i184si2444292pge.5.2019.07.31.19.57.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jul 2019 19:57:50 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id x712vLNU028942
	for <clang-built-linux@googlegroups.com>; Thu, 1 Aug 2019 11:57:21 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x712vLNU028942
X-Nifty-SrcIP: [209.85.217.44]
Received: by mail-vs1-f44.google.com with SMTP id h28so47800915vsl.12
        for <clang-built-linux@googlegroups.com>; Wed, 31 Jul 2019 19:57:21 -0700 (PDT)
X-Received: by 2002:a67:f495:: with SMTP id o21mr80697696vsn.54.1564628240326;
 Wed, 31 Jul 2019 19:57:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190730164803.45080-1-swboyd@chromium.org> <20190730164959.GA129059@archlinux-threadripper>
 <CAK7LNARvyxzJa9CG-4uSoE7asdHp=Cbeh71_13dmuP8zMJtqSA@mail.gmail.com>
In-Reply-To: <CAK7LNARvyxzJa9CG-4uSoE7asdHp=Cbeh71_13dmuP8zMJtqSA@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 1 Aug 2019 11:56:44 +0900
X-Gmail-Original-Message-ID: <CAK7LNASNxKzhO3cKXBTxcLWNoEX2pMdO6MFScyu3wprdtH2rzw@mail.gmail.com>
Message-ID: <CAK7LNASNxKzhO3cKXBTxcLWNoEX2pMdO6MFScyu3wprdtH2rzw@mail.gmail.com>
Subject: Re: [PATCH v3] kbuild: Check for unknown options with cc-option usage
 in Kconfig and clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Stephen Boyd <swboyd@chromium.org>, Michal Marek <michal.lkml@markovi.net>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Peter Smith <peter.smith@linaro.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Douglas Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=riNql9Zz;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.90 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Wed, Jul 31, 2019 at 1:51 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> On Wed, Jul 31, 2019 at 1:50 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Tue, Jul 30, 2019 at 09:48:03AM -0700, Stephen Boyd wrote:
> > > If the particular version of clang a user has doesn't enable
> > > -Werror=unknown-warning-option by default, even though it is the
> > > default[1], then make sure to pass the option to the Kconfig cc-option
> > > command so that testing options from Kconfig files works properly.
> > > Otherwise, depending on the default values setup in the clang toolchain
> > > we will silently assume options such as -Wmaybe-uninitialized are
> > > supported by clang, when they really aren't.
> > >
> > > A compilation issue only started happening for me once commit
> > > 589834b3a009 ("kbuild: Add -Werror=unknown-warning-option to
> > > CLANG_FLAGS") was applied on top of commit b303c6df80c9 ("kbuild:
> > > compute false-positive -Wmaybe-uninitialized cases in Kconfig"). This
> > > leads kbuild to try and test for the existence of the
> > > -Wmaybe-uninitialized flag with the cc-option command in
> > > scripts/Kconfig.include, and it doesn't see an error returned from the
> > > option test so it sets the config value to Y. Then the Makefile tries to
> > > pass the unknown option on the command line and
> > > -Werror=unknown-warning-option catches the invalid option and breaks the
> > > build. Before commit 589834b3a009 ("kbuild: Add
> > > -Werror=unknown-warning-option to CLANG_FLAGS") the build works fine,
> > > but any cc-option test of a warning option in Kconfig files silently
> > > evaluates to true, even if the warning option flag isn't supported on
> > > clang.
> > >
> > > Note: This doesn't change cc-option usages in Makefiles because those
> > > use a different rule that includes KBUILD_CFLAGS by default (see the
> > > __cc-option command in scripts/Kbuild.incluide). The KBUILD_CFLAGS
> > > variable already has the -Werror=unknown-warning-option flag set. Thanks
> > > to Doug for pointing out the different rule.
> > >
> > > [1] https://clang.llvm.org/docs/DiagnosticsReference.html#wunknown-warning-option
> > > Cc: Peter Smith <peter.smith@linaro.org>
> > > Cc: Nathan Chancellor <natechancellor@gmail.com>
> > > Cc: Nick Desaulniers <ndesaulniers@google.com>
> > > Cc: Douglas Anderson <dianders@chromium.org>
> > > Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> >
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> >
> > > ---
> > >  Makefile                | 1 +
> > >  scripts/Kconfig.include | 2 +-
> > >  2 files changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/Makefile b/Makefile
> > > index 9be5834073f8..517d0a3f6539 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -536,6 +536,7 @@ KBUILD_AFLAGS     += $(CLANG_FLAGS)
> > >  export CLANG_FLAGS
> > >  endif
> > >
> > > +
> >
> > Not sure it's worth sending a v4 for but I don't think this should be
> > there.
>
>
> I will remove it when I apply this.
>

Applied to linux-kbuild/fixes. Thanks.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASNxKzhO3cKXBTxcLWNoEX2pMdO6MFScyu3wprdtH2rzw%40mail.gmail.com.
