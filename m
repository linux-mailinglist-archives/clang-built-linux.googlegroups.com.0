Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB2N2RCAAMGQEGE5Y6KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id E15B22F88F0
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 23:55:38 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id z24sf1839712uao.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 14:55:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610751338; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ma6EVuhD+I7nlOkUqV6OO+j5aIjoFg5/2vzUhFoB93h3Zj0NNp5l1RZJNrrG63k7H7
         LIFHAeBcG0ooDfB8b3KOnfxcKsJVa+q109WksxhXG+1DBmLbo0/6vmZh+FUy3GoUJPCW
         Zz36Xng3UUNPS96tvJSBCeMqB0TNow6FP+XUZ62W4YyH3HFhvTSS/sZIRHWkI1VCYkPx
         s056v39E26T5YAzTMixx8SgwsLEwGM0oCODrErKQApIQ4C3HBkmZTHxnFdFdpS0PFCus
         zd6GlNlgWxs/0RTJRILNchm537yBrAK39DNbB4THmdXVGBiMcQxTCNzLci38t+j9zhF5
         Z1gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=3Iq1NnjufXVFkKVfesrXDEelXNLaOuQ2gWQ03cXKlxU=;
        b=uHMKTBN+as6pU9rjmb/nd3aYd/tf7DCfZ//aNDaRZGhqIczyGQ5xYbNsQBQcwSFzmo
         Fc9bcrNajKa1d8OPgMaI+oKePCY38xd7N44WgQ2UMX/EH3e2t/IclzLZfuv0ACAyDMz5
         jYIWacCpQKPA1gE5UqEHYNNO79l6qD1y08nxW77XSKi8WZjY8iqxr3OdGgPWqyLtGY6D
         q17PBX3UVDmILAyJhknpZuavxyA5ehYVUXIJyydlpCIb3CDaOPcIVPiqjrzhSbcE+Xf8
         Kh8GGIgOaWhxNfESnRS0Wjk3Utp7grPv+W73xH5YhmJOQsTQhVT/RCVavymNBKmRp9LY
         eFrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JJNQUmn1;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Iq1NnjufXVFkKVfesrXDEelXNLaOuQ2gWQ03cXKlxU=;
        b=O4JZfxVbGZ/RlT6pm92SCZCMb2jk8FvPPyX2l/BSqnI4iEMo/UR/JeNoWHlzgj1ssL
         5DUab7alBy+0xNHFRcHmBHuVo9/vWRFfiOW1aSk/DO+1FezvlkMS6YBJ6gmsC9PIcPtx
         uPIgbZ9DDWL7ZDoesWHgHV1u0LxmvRWlF3/Pk5MHrbWYaN++8bxirT2EcCcgQ+Jxrzvq
         GE9XB1NsGJY6R6PPEku3n6wS5zQXhCWw78ETEzdePPnpD1xnoZd9HR2x7PcX8t8hOhfb
         s2sF+TzEN+Pjl+U7T/YhMeaIdeEHa8pJ2cNrSCIITWDRXUCgT6a211DNeFHRWvsFQPnU
         aSRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Iq1NnjufXVFkKVfesrXDEelXNLaOuQ2gWQ03cXKlxU=;
        b=OAWR5TxGfFutsGtjCK6TftdIHkSpsdWd9oXKMOhZAyX+ZhTX+Y5lRqtlEimUhFbfvc
         k7V0iQ8YYSoRKZcqz7I7EHXqcak2Otk6/hV21Ps9D9rFv3EFXVR6Dd+YCqJmJxa5XO33
         4Vy6o0Xs8rOwfJUD/M4BET5zq/0FYYuPEKre7aNWn+2iLl9gjKnvPk2U0qFwCI2TnIrn
         +wiXLW32OfkPrKogebzlNvh6tUwf/IBvN8JK5DJ5CeKDIvgtk26MyJLSINNWaR9mKRaO
         l6/EZtZp4xd1obkF15AZ7mRYZMl2AUnucEI+lyXOAYuOJb7AlOZnk8oUo2W83mmPEm8k
         dERw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CN9FeXc03BJ1UzF2OR8uYq4vtcD/MIEH+w378WEjzH0ASONRV
	mo25uC7pigPW681Gu70+bJ4=
X-Google-Smtp-Source: ABdhPJzXJ1/qB7JkeXr6p3le7S6vbKcj+jYvmAWXu00J1mpqtwmwCrum4kWCdqp41wS1RzC5X00MyA==
X-Received: by 2002:a05:6102:3111:: with SMTP id e17mr13319493vsh.3.1610751337968;
        Fri, 15 Jan 2021 14:55:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2b07:: with SMTP id r7ls1286930vsr.0.gmail; Fri, 15 Jan
 2021 14:55:37 -0800 (PST)
X-Received: by 2002:a67:7f41:: with SMTP id a62mr12377474vsd.55.1610751337506;
        Fri, 15 Jan 2021 14:55:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610751337; cv=none;
        d=google.com; s=arc-20160816;
        b=sOLDwotngjJw0YSlH10i6xA5SDdYq8EbwAg37NvACGcaFxtTK0r7exRqQRrWKTbhWU
         Xu1CV2NewCASssmFNv4ne8cD4/y5IdFBeEpGMjRZKZVVgC1rvusoE7LQIOzHbPw6nIyx
         Kk8tW/P0E39qsIuzbVcc2DM2Ya43OFwqWxEjCk4ReNIMBszvwmeAwdasvNzS0GECzuHO
         JCvJLsBwyam/Y1bBNJqaZ+p65yokGJd5+dLO/f91omBsDcBl92xT0U+sW4GjJHvYKvB4
         o5/iUGhss6iwcJpE022FkqBHt1Iay/rRkThwOJGoYa4VJKYqudJZzFzmSegJatm8kPj5
         eh6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=tU3QpgIR7dAMQjFdpq4xZQKOTVpUO9pF8byetNqIuts=;
        b=Ti7iMAOKUcXOTzuGbkvOz+yoQF8UlC+bL4JwhuUq69WuaxStcbXXwzUtIzIq2b5YN6
         twiKnRvShf7La2JoJeiS+hmWkPHmhYIr3cyeB6tf+bfZoz1gdZAq1wg6ccBV22civ7n6
         ME6oxElrwTdVjHjqLqMUZPrYaLqMB3VrE/ErAZvXkYhsEbJyF4JT4cGg92Hv1YeSDV7Z
         qGSOEQKWcOKkJA5gs+CoYn+YyERFqvfZOsMfjsj/Uk8YuzdfUJP1mL0LcNyti6HfDMIG
         vsj4gdxfJYfCf5mijubnJ2Ypsrk8moBMYn5UFmdnKxOmWLHC3XpWn5fNpwwL2i1dARBv
         1fsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JJNQUmn1;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id e11si617668vkp.4.2021.01.15.14.55.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 14:55:37 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 10FMt6S8013721
	for <clang-built-linux@googlegroups.com>; Sat, 16 Jan 2021 07:55:06 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 10FMt6S8013721
X-Nifty-SrcIP: [209.85.215.174]
Received: by mail-pg1-f174.google.com with SMTP id i7so6947532pgc.8
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 14:55:06 -0800 (PST)
X-Received: by 2002:a63:1f1d:: with SMTP id f29mr14851067pgf.47.1610751305777;
 Fri, 15 Jan 2021 14:55:05 -0800 (PST)
MIME-Version: 1.0
References: <20210114042420.229524-1-masahiroy@kernel.org> <CANiq72krA1VrVC2ecUCQFAgJC07od8POjpVUoGFYJOHjZ23ckQ@mail.gmail.com>
In-Reply-To: <CANiq72krA1VrVC2ecUCQFAgJC07od8POjpVUoGFYJOHjZ23ckQ@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 16 Jan 2021 07:54:28 +0900
X-Gmail-Original-Message-ID: <CAK7LNASc-3ADgKnM=GiHbXwAo1cYFVL3o6SuWcunsLcrTU8t7Q@mail.gmail.com>
Message-ID: <CAK7LNASc-3ADgKnM=GiHbXwAo1cYFVL3o6SuWcunsLcrTU8t7Q@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: check the minimum compiler version in Kconfig
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Paul Gortmaker <paul.gortmaker@windriver.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Will Deacon <will@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=JJNQUmn1;       spf=softfail
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

On Fri, Jan 15, 2021 at 3:15 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Thu, Jan 14, 2021 at 5:25 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > The cc-version.sh also shows the error if the compiler is old:
> >
> >   $ make defconfig CC=clang-9
> >   *** Default configuration is based on 'x86_64_defconfig'
> >   ***
> >   *** Compiler is too old.
> >   ***   Your Clang version:    9.0.1
> >   ***   Minimum Clang version: 10.0.1
> >   ***
> >   scripts/Kconfig.include:46: Sorry, this compiler is unsupported.
>
> That looks nice. Hopefully we can do the same approach for other tools too!


Yes, I plan to merge scripts/ld-version.sh and scripts/lld-version.sh
in a similar way, and move the version check as well
once the following cleanups land in the upstream:

https://patchwork.kernel.org/project/linux-kbuild/patch/20201212165431.150750-1-masahiroy@kernel.org/
https://patchwork.kernel.org/project/linux-kbuild/patch/20201212165431.150750-2-masahiroy@kernel.org/


> > I put the stub for ICC because I see <linux/compiler-intel.h> although
> > I am not sure if building the kernel with ICC is well-supported.
>
> I doubt it, and there seems to be no maintainer listed either. I think
> it could be considered for removal in an RFC.


Yes, but that would require higher level acks,
and consult x86 and intel folks.

Please let this patch land first,
then we will discuss whether ICC is still used or not.




> Cheers,
> Miguel



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASc-3ADgKnM%3DGiHbXwAo1cYFVL3o6SuWcunsLcrTU8t7Q%40mail.gmail.com.
