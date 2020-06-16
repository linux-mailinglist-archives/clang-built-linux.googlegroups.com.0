Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXPIUP3QKGQEDBCRYHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id D821B1FBBCE
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 18:33:34 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id g72sf17198316qke.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 09:33:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592325213; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ZZPyzS3ANK+Libv5P+zyCtrbxspN0/VWRE/lzOeV73q1Ae5ozCKaAgVoprYTxlmv9
         JYXZCX2JajJAYujVYVtcNTwRNqrk5yNTF5YU1/4s+pRZrPMxnTlB/3yl8xWNyP+FWdCN
         zvZcfBjTCaoqzrEjD+gFK4+F/Xh7zw7Xtf4BAAx43kYIzrcet9x1pj2VazHaU56VFO0S
         Hn+6dXKA0OGT7QL7aRfx4yVeDaV9XdBpZk7g9kzGAIqVYJv4XVLVNp7FoYkttsWFhjw+
         WNOHit349KaPehdRi4QQsqmZCmD466qqkIP92jKkHA/Mz3P731m9CWTzgwtk8n7vuM7j
         K7sA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uIyDYFfLBIusqcVPXo3/Np/uGpHiU7alkG7NPHzvxjQ=;
        b=qjO+jguMn6bYkOD2CUiXzQixNK8QN/ZUWbIMeY0osXJeqZT+aaUuO6PCLfLGhWvttj
         ehrMRlDTFSlPlAGgGnguFB7OuIGNfJx58MyaIfS+rk5g4yyL52d7hgrsqerKTfNvMX7g
         gHrzjZGbkIS1bbLa+cVL4mMG1EJb/GcjRsIvcm5zkxAm6s2u0ncP8AeM+yMA2r8+NY1E
         u/G4O+uhS5T1d+NgryLgt8XSj+fQxCf4CgZ8IDCp1cm63hqXeGvD2Ix1KXApmPIXOYIt
         8PbgRKq4GsyBlCbAVe99xXTWmNds6dR0eE3pG+iToWWi61lPRmijgnqN64czk+HGP/aM
         xmGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Wf/qCJxo";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uIyDYFfLBIusqcVPXo3/Np/uGpHiU7alkG7NPHzvxjQ=;
        b=MgrAWkYkIpoosnYfiKbhV5SEcGy2DQRvc80eo4vQ1D9+nJNV3d6hk/YBA5IkLbgtNj
         irIF96B4ZT+zpJkoq2uQmriWvBynBVbGt4jXnoDoIuxK4rG1siUfJyxCpC41ZBOn8I4O
         GZ1k3gwMnxW1Cs0tD7WJuRV/Na46OFX+tWotpxfdWusKId9JAXDB7gu/X0MdsA1sFwUX
         rrsL6z8IK1rjxnbgraDEVgJYh2H6llvquSGxlniH/pbuSOP82LUlccT6pFMHaWNTIadp
         /yNWY+r1N2JqJepy+n3bwNO3zneNs3NWE7lxFp0goOC1U0zXgFNzqF3yQghSgsd3l43r
         yj/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uIyDYFfLBIusqcVPXo3/Np/uGpHiU7alkG7NPHzvxjQ=;
        b=M4Hj1SXCx7HlcSl0TALm0e3mjrXsX1tsS68h61LkaEwfuwtRnOhZqIlnKHmRA/JT9k
         x3IjKG7W+cuTwwWP52dAd0eaWlSCdvb00LFPhOEqE8pVRsob26+b7XDXgDy1GkEogXYX
         Pw2eYV3BMFpcN1dS7kGgyvtuuoqEh/bw6uhpvS58p8fS/xCarnvXle8J7zNDfuj9i2/R
         Om//B24sEi66OB6xou5Xu9IoPQIGFM7l9VPmSKBbBb9mEx9eOkal6lAK5ENb7WToEy3K
         j3c9esdUmkw/PKafXzh3h0db76kEIRlyNMZxbC4HaBB7hunyx7TceWnUT2xh41e5yJG2
         LoyA==
X-Gm-Message-State: AOAM530TPNETZbaL+Bc30oayNgtkbaua7qjT+lb6ViorAs/W6fJmNfQd
	skwJ415f6OH2cgQUaYfw9EU=
X-Google-Smtp-Source: ABdhPJycl/lnNmOYXc4wzvvIJ8CdHSVwzSJtTjB3ZhY5ODAJPPfhvKcavdt53LZwJmuN+8d+DG8XLg==
X-Received: by 2002:a0c:f887:: with SMTP id u7mr3193061qvn.217.1592325213719;
        Tue, 16 Jun 2020 09:33:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3f02:: with SMTP id p2ls6977706qtf.8.gmail; Tue, 16 Jun
 2020 09:33:33 -0700 (PDT)
X-Received: by 2002:ac8:7182:: with SMTP id w2mr22324870qto.115.1592325213310;
        Tue, 16 Jun 2020 09:33:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592325213; cv=none;
        d=google.com; s=arc-20160816;
        b=yuP8kkmoUO1YTEz4dFsnzxAJXLunGnYCs5s9wSuF9B7yvGkvV0v2C7G4Clj9uTbGZ7
         sOKcPFt34UkxBJoGUngbFoufvwnxiKiqMdVppp3PcDVLWKkJGklROgqj/FnCOjIq8Jic
         ErW+eclKid/IYYNQhoF602PnBlB1fvSGQfx828KNgAMW4Qz8Lf4un3HUmPnScp/j+KGl
         jpW66Tnf/sfSxbA9j24PXjtz43gwphOC09AypJt6LktNtwENHIubPx9mm9UelTpZbwb7
         TXH0Cav5Lr1IhcWH0yZtLQKeaz3fOHf9q9qTSmzeaa6uhp2fZcDqGKJ878h33+bZBu13
         zqjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4RbD/EmKX2/juxAGhro8IRMsx1DrPYzX7CYgvJtw7aQ=;
        b=yLrq1RSbN2bXFkpfEybqOWCAcO7BJUXJnqsYHZaqlNv9K4JrBtrbLL/16k6ITaPRc+
         RGv0gqXGpgiUD3f05DCpx4XAGUPMlsuNGWAhTHOVUXVEhzOdajySYknAAlyEtCqCxYV/
         B5TMzT8spg10BCOloX5v+UIXDDFbmMJ49hQq114w+z68HhWPsD15AWXPp8meUmRGQdMk
         ChYO5mEzRI/QPZPqhKOVfgyxQeGs53vQDlOtUfKEQq+HpTEQxnZgp/YEXPe0a7PtuHJe
         4KsSFxxH8vTqXK5oJ/l650bSo7lzy13DGjtqlAamNIG7mUSxAFoABnrSYmDIYCkEPe2z
         XjHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Wf/qCJxo";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id z202si779917qka.6.2020.06.16.09.33.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 09:33:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id a127so9739903pfa.12
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jun 2020 09:33:33 -0700 (PDT)
X-Received: by 2002:a63:5644:: with SMTP id g4mr2605983pgm.381.1592325212118;
 Tue, 16 Jun 2020 09:33:32 -0700 (PDT)
MIME-Version: 1.0
References: <7ho8q77i1t.fsf@baylibre.com> <18306.1590738124792037023@groups.io>
In-Reply-To: <18306.1590738124792037023@groups.io>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 16 Jun 2020 09:33:20 -0700
Message-ID: <CAKwvOdnaoaZPLqcn6yiFEpEVx=HmpRe1ExhLZfzLhHs7e7Atww@mail.gmail.com>
Subject: Re: kci_build proposal
To: mathieu.acher@irisa.fr
Cc: Kevin Hilman <khilman@baylibre.com>, kernelci@groups.io, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Wf/qCJxo";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c
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

+ clang-built-linux

On Fri, May 29, 2020 at 12:42 AM Mathieu Acher <mathieu.acher@irisa.fr> wrote:
>
> Dear all,
>
> I'm glad to hear the ongoing effort about containerization (Docker + Python 3) of KernelCI.
> I didn't know the existence of tuxbuild and I'm as curious as Kevin for having more details.
>
> As an academic, we have some use cases that can further motivate the use of a "cloud-based solution".
> In 2017, we have developed TuxML (https://github.com/TuxML/ProjetIrma) which a solution with Docker and Python 3 for massively compiling kernel configurations.
> The "ml" part stands for statistical learning. So far, we have collected 200K+ configurations with a distributed computing infrastructure (a kind of cloud).
> Our focus is to explore the configuration space of the Linux kernel in the large; we fed several config files (mainly with randconfig and some pre-set options) and then perform some "tests" (in a broad sense).
>
> We have two major use cases:
>  * bug-finding related to configurations: we are able to locate faulty (combinations of) options and even prevent/fix some failures at the Kconfig level (more details here: https://hal.inria.fr/hal-02147012)
>  * size prediction of a configuration (without compiling it) and identificaton of options that influence size (more details here: https://hal.inria.fr/hal-02314830)

Hi Mathieu,
I'm focused on building the Linux kernel with Clang.  One of the
issues we're running into is long tail bug reports from configs beyond
defconfigs or the defconfigs from major Linux distros.  In particular,
randconfig builds tend to dig up all kinds of issues for us.  It can
also take time to differentiate whether this issue is
toolchain-agnostic or specific to Clang.

From your presentation
https://static.sched.com/hosted_files/osseu19/ca/TuxML-OSS2019-v3.pdf
the slides on classification trees have me curious.  I suppose if you
had data from builds with GCC+Clang, you could help us spot what
configs are still problematic just for Clang and not for GCC?  That
kind of pattern analysis would be invaluable in trying to automate bug
finding.  Already the configuration space is unfathomable, and adding
yet another label (toolchain) doesn't help, but it is something that
could have a quantifiable impact and really help.

If it's something that you have capacity for, let's chat more?

>
> In both cases, we need an infrastructure capable of compiling *any* configuration of the kernel.
> For measuring the size, we need to control all factors, like gcc version and so forth. Docker was helpful here to have a canonical environment.
> One issue we found is to build the right Docker image: some configurations of the kernel require specific tools and anticipating all can be tricky, leading to some false-positive failures.
> Have you encountered this situation?
>
> In general, my colleagues at University of Rennes 1/Inria and I are really interested to be part of this new effort through discussions or technical contributions.
> We plan to modernize TuxML with KernelCI toolchain, especially if it's possible to deploy it on several distributed machines.
>
> Can I somehow participate in the next call? Mainly to learn and as a first step to contribute in this very nice project.
>
> Best,
>
> Mathieu Acher
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Groups.io Links: You receive all messages sent to this group.
>
> View/Reply Online (#767): https://groups.io/g/kernelci/message/767
> Mute This Topic: https://groups.io/mt/73153442/1813933
> Group Owner: kernelci+owner@groups.io
> Unsubscribe: https://groups.io/g/kernelci/unsub  [ndesaulniers@google.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnaoaZPLqcn6yiFEpEVx%3DHmpRe1ExhLZfzLhHs7e7Atww%40mail.gmail.com.
