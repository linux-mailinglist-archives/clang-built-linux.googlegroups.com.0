Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXVK4CAQMGQERBJA6IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCD2325890
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 22:23:43 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id p18sf3666051wrt.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 13:23:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614288223; cv=pass;
        d=google.com; s=arc-20160816;
        b=vtSZaDRMevsxW4LWWEXA0DM2ro250dF90kS06TmGmRfjNxfkC41ZsMBDAjaAVU9wxG
         2KUaiuwE9oxx0DRH/WvDd5n1Ew3LHwfx8GFJRFIigfZpLF7ScgNREnylQV0XXSFsLMPf
         AaC7XI9vw17/1zTfvKrCsve/BsN33fO4e2lsEMkK3zRSSD9BDrmX+iStZwEMPdcC82GK
         +QM55Z7ItZvJZrIPGLoltt5TQ6BubIIliMBf/J21kYgvd5u61ukOfpjPlk9DmzgfpC56
         WA2WS1WcxqoQOTP1wfMU6sPe5wlKbCoWjOxvQXvrc6mJ7JP+LoMmH+hDG468sh5oaJQo
         o+XA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2M9aCnK4Fqp5UdeK/PCWeARsalcohVxroPQOsWa0Olk=;
        b=tLF7mzB00dN76iDjXG17bz2NTZuK+n+ObU58GLuYIjz5zrTnGaReEueuv/XrPx/lUI
         NQ/2KwE36Tu0rt+82MCWTryDQNqKJUa9dkvtIzvIeunWTUwYl52KFofsye+Sd/3C/wg0
         2dKKYde3Lglrx+evytym9SWvQYN6BTY1BP39VBogUeyg5Ygz6nSnw76NjzzhrPTHP7lG
         /AnAyAsWmHQCiUb51JhwVx+J3TibAasTrcUEEu9y50nCTm5aGcSrmNVEq0JP24NMrCZQ
         Hj+oOgUShVlzmuDZ34QGf8ORtvQeuLKJ3cetfo9rZBYsMHFLBb9c0mFfC8ZQGM91DnHb
         F59Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ATLnwbUw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2M9aCnK4Fqp5UdeK/PCWeARsalcohVxroPQOsWa0Olk=;
        b=PMFa2FvP87PYBZfUtUY+wfRGZ6tGVzlAkfhlYHpVEhgcjK/3688FDsAMVf03EZy/t1
         veqc+FbdHwzxyeQki36STPdvGW4vX4/++BadHTcs+2avnmjvgF3cnXw4CHQ1pndZD/W3
         tTrjjxU0E3/TER+f/exSyNHC11AXDGvC2LY2ZC3LjFBb7xfisbNIgfeK9cAXFf+s9SD9
         UPGWgbpJdYJLj+JzRLYUmrmWpvEQEX1+iMrM+q8r+O4yPsxir26BSGXfwph7ekx2yKj3
         Vnotd5tupCDODH2x7Qn2Qkh6dY5DvEpDfipzFY17X7gPjTDZzTtvhEYclWhCpvkAKrhP
         zj2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2M9aCnK4Fqp5UdeK/PCWeARsalcohVxroPQOsWa0Olk=;
        b=MPdQuiU1FgSMApa8EQz1a3NmxApbJJJzQQReM/mBCEIPW8oyJ22Pk2Md3EwnR67e2K
         Qlh0rTYCRMZOposgX/tTaTbKYmpmGwTGSpv8beaoYiP77PYnoCBU6TpS5Dpbz81flvjJ
         0MRPd+9Y6MBc0HeUH0Zwbq8r7l4lSIL87ApGaB9kh3kHgcHtjp3s+diiFBFYIucKEY3g
         DoOJBHDRf9fK00ZoGXRdbQVmgg0Xl7yeW7yuKhQbSx0Ua2tYHh8aL2/pAsNXsAc47VNW
         MP2roc4NhADk6CJz1tEwGQsevbLJO9nMpA8EKhKwWnP0Oct45zeal9yJEzAet9RlExB8
         34SA==
X-Gm-Message-State: AOAM5309NwsNyfNcciU3WaC61llxpxyKILyOXvuYozrmU9KkgiCK4HWe
	P8jFnehIkmccbbbSANAAIvM=
X-Google-Smtp-Source: ABdhPJyxUZWcUxGot9kE+LBP0t6AuVchEhfVgaNIiHJjBafWhOw/mRJyQlNd5rGTZWotsGFVIk/tXg==
X-Received: by 2002:a5d:55c2:: with SMTP id i2mr5537345wrw.340.1614288222902;
        Thu, 25 Feb 2021 13:23:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1981:: with SMTP id 123ls1939500wmz.3.gmail; Thu, 25 Feb
 2021 13:23:42 -0800 (PST)
X-Received: by 2002:a7b:c1c4:: with SMTP id a4mr297833wmj.122.1614288222062;
        Thu, 25 Feb 2021 13:23:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614288222; cv=none;
        d=google.com; s=arc-20160816;
        b=D8DhT/e3aUvGtmTfXH1r2nxwGtudYsKqiidKsjDNehPy1sp5eaTAXXx6bD6+Ub+6r6
         puEKC8kCICqL1hfo0j7jDut0v2ADEJA9aoj6T36Zm2RuIUdl+IUi/CuEAz7LdrYzGkr5
         L1pJ/EY89aaoL2fy9kaqQoYEFBN2Eh0RulhsHDg02A5jB+uoOyBI5VGI4OFDENsPJuCf
         7JH4cf9kpqPPH10T9g7b/uBf97toYqT83BxO4ISaKtebNhnjFP2tKdJ6VM4QpshIqIKV
         ktPqovfHS6p2loUAPsbFybmhSQDkgGlfic2dgqJah2HsmAuVKMg0crJ/bnRyae4VS2VR
         mjmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2W9mYsFcnJXVFNTaQWfslLMblusb1q2fKiT5ua94ENs=;
        b=cuRTudb/q/3VfdjTapn1fwlZmbSXS/UsoaKejWVs8I8+X1W7NP4QMR4pk4vN5HlH9p
         59EhNl9KbNgU+IdQikthYcWcbeH0zPZTfQPf0+3FTP8nrlQvOy+Rjs4gsA74dwYhee9r
         u8gcWPWXA8Zh0EgYnX93rJttMsCn1e8BL5iBy6oevBlJhsH4OOeH1pCcDqtNSZRA/7QF
         Z4Q5eqKRq+pmqzqhwMp1XYNKqKsU9FqkGaKgBkRQW4wStGioYgYzJUu7y60aJyvwLbDE
         z1pY6lPszDy+02zH8j414/5w+pXNj9X9v+IxNEV1k3ShJe2xpjMW4kT2ClQXVXABC/BS
         Xx3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ATLnwbUw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id z5si401453wrn.0.2021.02.25.13.23.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 13:23:42 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id 2so3635115ljr.5
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 13:23:42 -0800 (PST)
X-Received: by 2002:a2e:2a83:: with SMTP id q125mr2585287ljq.244.1614288221350;
 Thu, 25 Feb 2021 13:23:41 -0800 (PST)
MIME-Version: 1.0
References: <20210225094324.3542511-1-arnd@kernel.org> <20210225164522.GA3554437@xps15>
In-Reply-To: <20210225164522.GA3554437@xps15>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 25 Feb 2021 13:23:30 -0800
Message-ID: <CAKwvOdm_yh6gw_ecjeKgepRb12Q69Wk64x7xj=L2CDjBekiioA@mail.gmail.com>
Subject: Re: [PATCH] coresight: etm4x: work around clang-12+ build failure
To: Mathieu Poirier <mathieu.poirier@linaro.org>, Arnd Bergmann <arnd@kernel.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Nathan Chancellor <nathan@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Mike Leach <mike.leach@linaro.org>, Leo Yan <leo.yan@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>, coresight@lists.linaro.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ATLnwbUw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230
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

On Thu, Feb 25, 2021 at 8:45 AM Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> Good morning,
>
> On Thu, Feb 25, 2021 at 10:42:58AM +0100, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > clang-12 fails to build the etm4x driver with -fsanitize=array-bounds:
> >
> > <instantiation>:1:7: error: expected constant expression in '.inst' directive
> > .inst (0xd5200000|((((2) << 19) | ((1) << 16) | (((((((((((0x160 + (i * 4))))) >> 2))) >> 7) & 0x7)) << 12) | ((((((((((0x160 + (i * 4))))) >> 2))) & 0xf)) << 8) | (((((((((((0x160 + (i * 4))))) >> 2))) >> 4) & 0x7)) << 5)))|(.L__reg_num_x8))
> >       ^
> > drivers/hwtracing/coresight/coresight-etm4x-core.c:702:4: note: while in macro instantiation
> >                         etm4x_relaxed_read32(csa, TRCCNTVRn(i));
> >                         ^
> > drivers/hwtracing/coresight/coresight-etm4x.h:403:4: note: expanded from macro 'etm4x_relaxed_read32'
> >                  read_etm4x_sysreg_offset((offset), false)))
> >                  ^
> > drivers/hwtracing/coresight/coresight-etm4x.h:383:12: note: expanded from macro 'read_etm4x_sysreg_offset'
> >                         __val = read_etm4x_sysreg_const_offset((offset));       \
> >                                 ^
> > drivers/hwtracing/coresight/coresight-etm4x.h:149:2: note: expanded from macro 'read_etm4x_sysreg_const_offset'
> >         READ_ETM4x_REG(ETM4x_OFFSET_TO_REG(offset))
> >         ^
> > drivers/hwtracing/coresight/coresight-etm4x.h:144:2: note: expanded from macro 'READ_ETM4x_REG'
> >         read_sysreg_s(ETM4x_REG_NUM_TO_SYSREG((reg)))
> >         ^
> > arch/arm64/include/asm/sysreg.h:1108:15: note: expanded from macro 'read_sysreg_s'
> >         asm volatile(__mrs_s("%0", r) : "=r" (__val));                  \
> >                      ^
> > arch/arm64/include/asm/sysreg.h:1074:2: note: expanded from macro '__mrs_s'
> > "       mrs_s " v ", " __stringify(r) "\n"                      \
> >  ^
> >
> > It appears that the __builin_constant_p() check in
> > read_etm4x_sysreg_offset() falsely returns 'true' here because clang
> > decides finds that an out-of-bounds access to config->cntr_val[] cannot
> > happen, and then it unrolls the loop with constant register numbers. Then

Is a sanitizer enabled, that would trap on OOB?

> > when actually emitting the output, it fails to figure out the value again.
> >
> > While this is incorrect behavior in clang, it is easy to work around
> > by avoiding the out-of-bounds array access. Do this by limiting the
> > loop counter to the actual dimension of the array.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1310
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  drivers/hwtracing/coresight/coresight-etm4x-core.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x-core.c b/drivers/hwtracing/coresight/coresight-etm4x-core.c
> > index 15016f757828..4cccf874a602 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x-core.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x-core.c
> > @@ -691,13 +691,13 @@ static void etm4_disable_hw(void *info)
> >                       "timeout while waiting for PM stable Trace Status\n");
> >
> >       /* read the status of the single shot comparators */
> > -     for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> > +     for (i = 0; i < min_t(u32, drvdata->nr_ss_cmp, ETM_MAX_SS_CMP); i++) {
> >               config->ss_status[i] =
> >                       etm4x_relaxed_read32(csa, TRCSSCSRn(i));
> >       }
> >
> >       /* read back the current counter values */
> > -     for (i = 0; i < drvdata->nr_cntr; i++) {
> > +     for (i = 0; i < min_t(u32, drvdata->nr_cntr, ETMv4_MAX_CNTR); i++) {
>
> This patch will work and I'd be happy to apply it if this was the only instance,
> but there are dozens of places in the coresight drivers where such patterns are
> used.  Why are those not flagged as well?  And shouldn't the real fix be with
> clang?

It's important to understand the __builtin_constant_p is highly
sensitive to optimizations; code using it typically relies on
optimizations being performed before it's evaluated.  Which
optimizations, applied successfully or not, in what order, by which
compiler or versions of the same compiler can affect what
__builtin_constant_p evaluates to.  Code generally needs to be written
to assume that failure for __builtin_constant_p to evaluate to a
specific value or not is _not a bug_.

>
> Thanks,
> Mathieu
>
> >               config->cntr_val[i] =
> >                       etm4x_relaxed_read32(csa, TRCCNTVRn(i));
> >       }
> > --
> > 2.29.2
> >



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm_yh6gw_ecjeKgepRb12Q69Wk64x7xj%3DL2CDjBekiioA%40mail.gmail.com.
