Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFMLXL7AKGQEF2NPMDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A1B2D19D7
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 20:42:14 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id m9sf12705503ioa.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 11:42:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607370133; cv=pass;
        d=google.com; s=arc-20160816;
        b=P0UisWpNVr//EdN+lZqTZnTNNRzL1q2JGiuOnjfKBSeNvQlC4vyKq4o3/ncLxpSkzX
         rlqDCo1BFq1Cmythnc906ulu8nE8UZtElP96Euz2PCwc7WAdj5kWoqoPSL+yZ08orC+1
         7/Nth1pBp7HTCegpX//Rw3WOk3s4TezpZHetxMpxcSeg+IIpOeIH/qVe5yBFq1Fp3y7A
         KcImk02lcUaI0uDcWDiIEdGT1Zt9mNOjpiqGgBCaTHAalnrnSnogxfjf7qYq0hKRHFRU
         JjpK653VXyfU1gGkbYlmcHGgZOAbXhh056LEBaMS8ZTTnssIcFmffl9oh/V2GMDY0naQ
         1xBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=n24zojYK1p6ashx1JuY1sD+CZ9NInds/77wQ9w+RLnE=;
        b=YGdUWZw6cAFUc5AeUvkQxNMOHlZkaE6f4f8shhyuPo89Sib68NAn4s5Fq8mnhhMXfz
         kscD0HDKe7ek8KMZDnabf5lFloyQTrVTGIpu9EW+2H17SZPMHkIYtG2phIsqmzLHHhPJ
         +AM38hSXLVO2OMRmnhHvEZ3IDzWRLDXvZI8Hby8kqDj5kJTlAV+W5bgaQ+VMPojzd8MU
         QdTtfL4jSLTmfn/aoq7AtsgtwkahyxtugpJ3G4lFduylz2VRSDhpgqRgJAXpOvVkk3hw
         SSNchudKFm+Wr801YKcauYJhqqs1ouexLXOsfSZIqVkcu8TRXcc5rka1Crv8y0GXKwUB
         +s5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ks4jPIS8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n24zojYK1p6ashx1JuY1sD+CZ9NInds/77wQ9w+RLnE=;
        b=Dj/Z9R+sPl0ud62oX16Sgd8Dci76RoGeWPw5HrVhUk8mnBzrL3GbPO4kbxLeQZ+91r
         BtkKVufoRvjtCGNKOFVWiaXP2Uu1BHDKJ3MWTVL8xr6/13a+lcRQpVLmkjvVXFJgmH7E
         u2WGwhRPdvIrRH+qYUDZGwb4Jd/rN3J5F+5Si2zcCykrjwg5tD1k4jRr9Mt/SqKA4Up9
         iizgN1rRTAk1H+evirVW0J9OKv7MqvUvEfWyRwPFUjxa9KvOHk41Jxc0S531C02PmSzM
         ExAv3CAfSGPqajKNXfR2Eb3z2YvGF0DPpIOBkhEVcNWVf/X6tQtOWwhWVOEcpsMXxj4C
         c5fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n24zojYK1p6ashx1JuY1sD+CZ9NInds/77wQ9w+RLnE=;
        b=DxMcvkvDTIcZiu6Ud2Pk7dwllYQ7jTCfZlfMytsicS6MESanG1pdnkgH+RFWsGg4P6
         1Ke+opn/g6YT0Ev5wp5M6GioAy1Bkv9iZuzBCzN2RqMuumbBfiOTGhUpc8OSENhqflcI
         nk35usuLLn59eU3tTDP/v316PfvCgbHMRyI2mPZ38yyowikVm+6np0mbU863Yxh0YmGL
         VWeYK3wvRg2rvIbeb0CJbJ69vnX8VVBTD3AEEmiFxy8FYK7h8EZc8fA0DrNcWEDP9VAS
         q2Im+UEekGfmAvzhuFzStQk+wuz8JYIgwsBd+uWhzZuLU4p4tVEV2Vp2wgUkBL82mp/I
         bPJQ==
X-Gm-Message-State: AOAM533h4VRu1bXOx0MOB/FrCMREr0AccLN43Qtv4MFLd/kc2YNBH1mt
	BP/f0RbrcTFy33J704COVW4=
X-Google-Smtp-Source: ABdhPJzPW3qH3SwAMBwuTSwFPvKDVwJmOJlSUrUsLcSpU9qjntxL9hpQ6Q0+MTOHFXXU4orNlBsVdQ==
X-Received: by 2002:a6b:c892:: with SMTP id y140mr21020717iof.137.1607370133735;
        Mon, 07 Dec 2020 11:42:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f48:: with SMTP id y8ls3293366ilj.7.gmail; Mon, 07
 Dec 2020 11:42:13 -0800 (PST)
X-Received: by 2002:a92:351c:: with SMTP id c28mr22553266ila.61.1607370133347;
        Mon, 07 Dec 2020 11:42:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607370133; cv=none;
        d=google.com; s=arc-20160816;
        b=Xf6gp0pJegLlkZOJ5MZPp1rrgZ09aO1SZjBscC/bksEQmCRu9Q1kkBa6eaxl6+E/C4
         lcXtLU43kAJUhnPkRTUC7Kz8gxzCUJELgmygHnnYDLg2S6SbvUkR8oP2il/RYMyzPM3D
         zGAP4bo6z6QcMR3qq5HLDNN2tDiFB5WtZLKDP4hBZkQdOE/BZbMK5kr4yxKAxWKJgb7W
         qLn20IUX7vhUWh6XTjjAFSrg48AtoTqQjBgiQebqVfIaIEeTIOAzxDOW7urxKppbBbXv
         7kB4OCZ1ygqt8D2oYzOj1ZZCyJc5fEBllyR4pMsW+T53snEEl+vWi3/wQinLgv7E7zgo
         YiSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9j/axWz7Ofr/2rFgYrlnwlSjtj36mje93fkct43GONM=;
        b=C5dPP7++wZfkaQ7REmbAtaNPJNDGg6996MoZvm/og40XbrricAGLmUkaFAcEFFiq/J
         72DT1BJaoA5IBaAKm1vtVBLRJwRAuSjc1FMvQaoJBEKaisgdMJUVK08Gj6cJjG+lK8ZM
         5ZBQ6txvPC3+7oqp1rgjiFGN0KH/7T4RC/fEuvsXHTLTqTSW4yL27vqyfvC9phZNJonJ
         6eP8Ps5/IBbcuecjja7WzR+PUAXIzEa0hShWtBUQmBhayFRLNDGNG1idgTnl+3fYWeDt
         3ezY5la+LW74+ij+RAclxsYLXuxLjW/AwK6N3JjlHMkxLRen1ORwzgVRoKlETgqslZrH
         9crA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ks4jPIS8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id p8si836993iln.0.2020.12.07.11.42.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Dec 2020 11:42:13 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Received: by mail-pg1-x52b.google.com with SMTP id e23so9799993pgk.12
        for <clang-built-linux@googlegroups.com>; Mon, 07 Dec 2020 11:42:13 -0800 (PST)
X-Received: by 2002:a17:902:8541:b029:da:fcd1:7bf with SMTP id
 d1-20020a1709028541b02900dafcd107bfmr5073837plo.56.1607370132820; Mon, 07 Dec
 2020 11:42:12 -0800 (PST)
MIME-Version: 1.0
References: <5fc5476c.1c69fb81.43fd4.49d0@mx.google.com> <CAKwvOdnuaP6-tpsWiVzGLvNXHOsZxAgnYr+UjUArsU6RGWuLEQ@mail.gmail.com>
 <9ebc5cc1-e871-6c03-e420-549ce2c31c70@collabora.com> <78e41d71-20d4-b8c4-35da-588a02bf3a8c@collabora.com>
In-Reply-To: <78e41d71-20d4-b8c4-35da-588a02bf3a8c@collabora.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Dec 2020 11:42:01 -0800
Message-ID: <CAKwvOdnZ-FngrssboyhPn+7kpqiJvkEBvj2VjALkiQ44ChMFKA@mail.gmail.com>
Subject: Re: next/master build: 229 builds: 13 failed, 216 passed, 63 errors,
 131 warnings (next-20201130)
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Kees Cook <keescook@chromium.org>, 
	"kernelci-results@groups.io" <kernelci-results@groups.io>, kernelci@groups.io
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ks4jPIS8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b
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

On Mon, Dec 7, 2020 at 1:38 AM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
>
> +kernelci-results@groups.io and kernelci@groups.io
>
> On 07/12/2020 09:36, Guillaume Tucker wrote:
> > On 30/11/2020 19:41, Nick Desaulniers wrote:
> >> Nice, we got our email reports back!  Looks like we have some cleanup
> >> to do with arm32+lld, though I think those all might be addressed by:
> >> https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=9025/1
> >>
> >> Nathan's patches for orphan section warnings from lld 10 must have
> >> been merged up by Kees.  Now to fix up the rest of these warnings.
> >
> > Great, thanks for confirming it's working again for you now.
> >
> > To avoid such issues in the future, it seems we should have a way
> > to truncate very long emails.  That would mean striking the right
> > balance between missing out some useful data in the emails and
> > not having emails delivered at all due to their size.
> >
> > We should dig out the big emails that didn't get delivered and
> > compare their size with this one to get an idea of the margin we
> > have.  Since the number of builds is a known quantity, we could
> > then define a maximum number of errors and warnings to show per
> > build, with something like "[...] 1234 more warnings" and a link
> > to the full results.  Do you think that could break your
> > workflow?

That's a good idea and makes a lot of sense to me.  If we have a flood
of warnings, it's usually the same warning over and over again.
Whether it's printed 1k times vs 10k times doesn't make a difference.

> >
> > We should also be able to stop mentioning builds that passed
> > with "PASS, 0 errors, 0 warnings, 0 section mismatches" now as
> > they'll appear on the web dashboard anyway.  That's what we've
> > been doing with test results for several months and it's working
> > well.

Yep, those are mostly noise; it's good to see confirmation that they
ran, or see that clang builds had warnings when gcc builds had none
(or vice versa), but I wouldn't consider it a major loss in fidelity
to cut that information from the email reports.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnZ-FngrssboyhPn%2B7kpqiJvkEBvj2VjALkiQ44ChMFKA%40mail.gmail.com.
