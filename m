Return-Path: <clang-built-linux+bncBDTI55WH24IRB6VLY3VAKGQEHQTNSEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D0C8A37D
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 18:38:19 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id o75sf42496572vke.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 09:38:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565627898; cv=pass;
        d=google.com; s=arc-20160816;
        b=qF0d13wevq2cYGFWnODxuBGJzf3HiMbU4mOrPSVAwHaWCrvjKmFHG4WZuNva/hB4FT
         2WZzXuNYQeLPPkkRyh9I4OzTJsvZ4vNKAESDizLunk+JHVOZBNnjTY5XjfeOsuaJ60cb
         wuXQom1oDkVc7HvIyH7GYtR6LE1SCAbP3QFk5Tye+jHzViHCIpu+8t4jvquiKrJ3M3Zs
         ETPMOiLhSPGk3aXUsPmtUh8+I7f2xFb/YTVFCUdhpNT1w5ZFTUDK4Gd4QBQGW04dlqtw
         6FGGxJfUYiJj4fPCu3JnNSgqJ1H1l53eHju92NB1hEBA0PnwuqcMzHlvDwljsKTJJ6f+
         9v2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=ZNnhz1NooqaMuSY1MMrLPjB18TNHlXMjNYZIZrN97PU=;
        b=Sl2HDvgVD1sXWFy/IldErm5BaTnL1mIJ2JyuMgIxg9bx4v7UtoufmQshj2UblQJVD6
         BcOVTuvozKngZsovE3Kn0RfzT6EKwxBxp+k39LcTOpjhmOX7F65RMB7RqHtyRoYlpOFB
         TZwrIXKXePN5TjSEkPjexuVzUmAUe9C31t8Jg0rdBHe/T0Jg6Aqiyf+BWB54YO+cKwiZ
         toXLXJGfNgIrgv6k2aTFQIDihw8tdZN5Ob+cKFW7KHWbqECSeoJ6yP4cyXcrJdPr5hcX
         PXNDrNJHcYaqAej1xb58YT728r+G8vPlKmQUzYKsoPqDJK/nyNskRS5XPdJfGWNsNwkJ
         T2Rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="e0/uuP+m";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZNnhz1NooqaMuSY1MMrLPjB18TNHlXMjNYZIZrN97PU=;
        b=kAv08EBRv0eA5crViWSDxeK3lkYxLGV5gQR4MiwZpELmAvU28WK7cgr6K2MvtECJlh
         PYN8EGf1aqZFRJultULJRqX61GrI2goPszBkkLEVpp1g/0MrV6zT37IgEr8C4JrX2x1g
         CLI6K2WimfXlbj6nESjp+wuEOUBOechBGlA9tidaOobYAb57eQ7DJdfc6r8ySDEF3XdU
         mcoSkN2t3PJtlfHYX2UBXAD57Ubo4PywjWQd2S7/yvYIqvAj0bqDSKnF9SfMQM8TfGPF
         ySmoabYaU2TVuRNCK12my3qsJAxvYyQjn5wgzmlt8m6adKOh18QXsi+7v8/Uo2Kz6bOf
         gP9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZNnhz1NooqaMuSY1MMrLPjB18TNHlXMjNYZIZrN97PU=;
        b=hCM6YhniOqjmhLLsnS/DPZVyzVYOjm1JEbCb4Mwz2viF1eHwAT4qAEXbgcBS8qbpqC
         qzQ8wWa8qIANJT9iz5Z3WCjM4DCgyhV6Evu6onsPhh0ognwj855Ldnvyygtpg7pg51pf
         bFm6Qx5+xKRmaLKVfNyzL3Sd0vXFQViBFuM0fJ3SiD7a763tKzkixyJ08XCrhhJZ9Odx
         3JL+I9ruDnGXFlaKUe2kMeiqbwB0684woR7VCKBzrHPprvvrLZMsS+7j3VaXCiUXQRAo
         RxerdvY5q6qg7Q33iT2R44kNSa7S76pNm2fzRFzkdmT6uBFJwvznpbhxGNz0HIaUCIbT
         D2MQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX3iM1oGV+j94gmOzbuh841wF+soApQMsxsSGsLME5lMi32vi8Y
	vO6Bqqu3EH77Aa/lYTH7jeA=
X-Google-Smtp-Source: APXvYqzpof3wvAAK35ghgxNtdhzkzR0C0ABpumtd5wMA2bndUy0v59V1gVCyRHnKmUWc2gpNh0OhlA==
X-Received: by 2002:a1f:d3c3:: with SMTP id k186mr8047938vkg.24.1565627898454;
        Mon, 12 Aug 2019 09:38:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2303:: with SMTP id j3ls4245470vkj.13.gmail; Mon, 12 Aug
 2019 09:38:18 -0700 (PDT)
X-Received: by 2002:a1f:29d5:: with SMTP id p204mr952029vkp.31.1565627898043;
        Mon, 12 Aug 2019 09:38:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565627898; cv=none;
        d=google.com; s=arc-20160816;
        b=q8KBTAjoD3uwQ4xBt1WkM4KDsy27XV2sVRRV9Q+uqOE0P6QbYv2fDfmEC0sRgyo4kW
         1xq3lPv8+bROuk0OLumMitpRo2OdjkL/yE+G+eyYTbBOA+oh2nn0KSVDLNfrVFvqAr8C
         2NN2iZ6dvPcNY0ONotmYxcqDa3yIDSUJOycDyhS9lgr5CgRK9NbPkHwldbo0Vb75FgN7
         HBRwAE8yYakJOp61u3ziJw9TNoL1dg/msaSo554/dEQsARclLX01/6V1CJJ8aycIb3ct
         iETjnhWuUntw9RJMIUI+pJDp2KVKonwfeOMLN6xBmac7HSuQy8+YKjdOATrncpHJV2K6
         BOAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=fvuSQiMynEpBQ90fBHSj66RxevxrJhKC/yPpDYDYd38=;
        b=KIi4E7Gr4qXoamlw3ziB9Iz439FAvHQR/rfTOphpG2/DseGpz69dnftfVKL7SVvNKO
         l/RllR9KVcykkEVDsdnuKH9Q+lvTM7WhPTaF+01YYB1TdVlMqgmt3DreYvfCaK8PV2S6
         8hNTuxdoP+vNSK2G0ZZfgJoNcAIAGSoLtuPv7RKrrDBceCXYt3n+3mRmiVnPytINHZe9
         Sr7j7Pd8KgQE7ouq3zTCKMTkPQiwQc58azufrrMnFnDVPYEOJCtVvPTOPhesckK3rCFf
         64jD2oQhe7Er+j3n7vwk5y5ymP1hnXuXuvicNS0AzmE81hTV1GfhaUKdjY8F/mKX7smR
         nbng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="e0/uuP+m";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id c10si417262uao.0.2019.08.12.09.38.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 09:38:17 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id x7CGbp0p029720
	for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 01:37:52 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x7CGbp0p029720
X-Nifty-SrcIP: [209.85.217.52]
Received: by mail-vs1-f52.google.com with SMTP id q16so4505469vsm.2
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 09:37:52 -0700 (PDT)
X-Received: by 2002:a67:f495:: with SMTP id o21mr1335161vsn.54.1565627870861;
 Mon, 12 Aug 2019 09:37:50 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1565297255.git.guillaume.tucker@collabora.com>
 <3885ccdcbdbe83eb367e8344584df944adc76e34.1565297255.git.guillaume.tucker@collabora.com>
 <CAKwvOdmOdJspcO8jqUhqR63-MOWkV3ZrVcCO6u=HG6peov8Htw@mail.gmail.com> <20190809051552.GA44466@archlinux-threadripper>
In-Reply-To: <20190809051552.GA44466@archlinux-threadripper>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 13 Aug 2019 01:37:14 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT6Yp3oemUxSst+htnmM-St8WmSv+UZ2x2XF23cw-kU-Q@mail.gmail.com>
Message-ID: <CAK7LNAT6Yp3oemUxSst+htnmM-St8WmSv+UZ2x2XF23cw-kU-Q@mail.gmail.com>
Subject: Re: [PATCH RFC 1/1] kbuild: enable overriding the compiler using the environment
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Guillaume Tucker <guillaume.tucker@collabora.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Mark Brown <broonie@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="e0/uuP+m";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com
 does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Fri, Aug 9, 2019 at 2:15 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Aug 08, 2019 at 03:42:32PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > On Thu, Aug 8, 2019 at 2:07 PM Guillaume Tucker
> > <guillaume.tucker@collabora.com> wrote:
> > >
> > > Only use gcc/g++ for HOSTCC, HOSTCXX and CC by default if they are not
> > > already defined in the environment.  This fixes cases such as building
> > > host tools with clang without having gcc installed.
> > >
> > > The issue was initially hit when running merge_config.sh with clang
> > > only as it failed to build "HOSTCC scripts/basic/fixdep".
> >
> > Thanks for the patch.  I don't quite follow the exact error.
> >
> > When building with Clang, I usually do:
> >
> > $ make CC=clang HOSTCC=clang ...
> >
> > are you trying to fix the case where you do:
> >
> > $ make CC=clang ...
> > <no HOSTCC set>
> > when GCC is not installed?  Because if so, I think it would be easier
> > to just specify HOSTCC=clang, but maybe I'm misunderstanding the
> > issue?
>
> As I understand it,
>
> $ make CC=clang HOSTCC=clang
>
> works fine. What doesn't currently work is:
>
> $ export CC=clang
> $ export HOSTCC=clang
> $ make
>
> This is problematic because there is no way for CC, HOSTCC, and HOSTCXX
> to be passed to make within scripts/kconfig/merge_config.sh.

Is it so problematic?

If you start from make, CC=clang and HOSTCC=clang are propagated to sub-make
even via shell scripts such as merge_config.sh

Only the problem I see is the situation where
a user directly runs scripts/kconfig/merge_config.sh
without using make as a start-point.

A user can wrap merge_config.sh with a simple Makefile
if they want to override CC, HOSTCC, etc.


"You can easily pass environment variables" means
"the build system may accidentally pick up them
when it is not desirable."




> A quick test before and after the patch:
>
> $ ( export HOSTCC=clang; make -j$(nproc) O=out defconfig V=1 )
> ...
>   gcc -Wp,-MD,scripts/kconfig/.conf.o.d -Wall -Wmissing-prototypes...
>   gcc -Wp,-MD,scripts/kconfig/.confdata.o.d -Wall -Wmissing-prototypes...
> ...
> $ ( export HOSTCC=clang; make -j$(nproc) O=out defconfig V=1 )
> ...
>   clang -Wp,-MD,scripts/kconfig/.conf.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes...
>   clang -Wp,-MD,scripts/kconfig/.confdata.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes...
> ...
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
>
> I wonder if all variable should be converted to that scheme or just the
> ones that are needed in this instance. I also wonder if this will cause
> any issues with people who define these variables in their environment
> already; if so, maybe merge_config.sh should be updated to support
> passing CC, HOSTCC, and HOSTCXX to make.

This is not a problem for upstream code, at least.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT6Yp3oemUxSst%2BhtnmM-St8WmSv%2BUZ2x2XF23cw-kU-Q%40mail.gmail.com.
