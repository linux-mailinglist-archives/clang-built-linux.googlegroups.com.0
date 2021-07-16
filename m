Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBK5IY6DQMGQEWLANZHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B383CBC0E
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 20:47:09 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id y7-20020aa785470000b029032975990f92sf7582137pfn.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 11:47:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626461227; cv=pass;
        d=google.com; s=arc-20160816;
        b=k7zu9C9qWNq/5NK+40h2pBaHjJaZ0Es8u3LL749aaFgnt/BIxKfNvyLvw6188QEWRF
         ZpfLjgnle0R+RWyiP6Qdmu4QTXtexr0XDvJp3xX5tf0TpjlyS/s9o6Is5vk4gE/JZ68F
         3i+l/nkwEoii6cKa2cSABE+/kq0nGULQFKdjwuOWLqkJ5X3q8WUsmZdcWGzc4Xhpvd6Z
         oS9akptfIfksu5mI1rEIWg6GuPpBunGWG41JbT7CmjWsxlzjcqmqfqYTMzSw72LvrSif
         XUd6TDMYrvZ89TaLfqaC9fX2L7WvVFsGMur5Py225gITTPFvMtpDtxljFC1sioJq6YFw
         7hGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XW9/UkiIuRHmN++OCUvAp354GSTUaSTKV+GJpCSqAbM=;
        b=G2upSKrLjegw55dnFNTn9QNCeT/42d9TJjqwpzDYA+2e9vuJ1TEmq6dM231xm0rvlj
         zCWDEDGHVVyY4ZRllkHytzFxh7ls7Wk2mZI2xymL5Rxz+Yp4BNz3P8gb4m1JhJtS4aOJ
         zMhtJlWCugw6AkyWJ14DGm2w0aSwrmdFRgQodSqj5Eu/f6NLfoc20s80IJ8+kgt5q99S
         adbENRyFbxz1L4ihagoUypea2IIN8rIXp42S64xApUAmlNqUeXoXUezxValKL4I7nycm
         apGs57lKNPFNH2n6qxAtKemWdnI/2hrIe4GKY9VUXgvORSzc4UvY4SOcT/e1WDQWKStF
         AOUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Yfa/lKle";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XW9/UkiIuRHmN++OCUvAp354GSTUaSTKV+GJpCSqAbM=;
        b=k4Ar8HnV5jPHBNc80Foo/a0Jy8tEjJ295MbrD9t8ICu896XvDbWP02aylO59oHa438
         JnXLGh3CE+ebguccnUtCVg8W71bzG0sKJwK2z0VztESk4cqa9ZBrmA/h++xOSWk+AcC0
         52wuoTJTis0mLKYwazG56vSnKNFoudjRVu9kiEDlBamA/FSnOQvaPgx5iyk0cKuFmDuB
         rTdgztbmuAylQY5OrLio7EL+CIrhwZL7UzmQ71t2hGlj2pahoWlXiQOr6fjqcXYhIMS6
         5AYC1x4xTK9TxVXW9+4GQ2GD0mFlth/OM2riJVjmHe46LYBdOUJeLv9SWExKa8MCMwZA
         nIAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XW9/UkiIuRHmN++OCUvAp354GSTUaSTKV+GJpCSqAbM=;
        b=AKRXhWcGQ36fnJ6GvS4QtNiyWN7tQeFXL+CdbbmswpAZDJajUkL4N4jF7b71UDWCaL
         FnE2yxjAntiVnNVswRHxYONakHHUl0nZdg+L0UlHPX2XEzmtidshy7+PsfJRMFUkdI7d
         fDTVBo6Q4VovrPX7JO5rE4ggQ2JrVygWYmp9VoLmNV7XoK688QAVThIEaaAgm3iSoExK
         9an/k7Zfz+wnCOwdLpHPISBidYrFd1sGW1gutW3BPxN/WDXZEhqXL0LsiY245AG4BB3W
         d2RcfSNlRoCHk1Bwh8PF6Tmnkr3VR2FwEnIeXe3VG9EZSf3E6jVfJz++QRoRE0lK1c/E
         cXGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aaQeweke5fvQFgyEDCzKcGgELVsdvhK5FSSIt+St/Czip/mny
	/EJdy4gh+v0GnIcTJxICy9I=
X-Google-Smtp-Source: ABdhPJwSwzTYkvf3yBUl3MYh81yVsRzQUxYQnuuO3Ulque9tJGIFV0+6WKytSkkFxFQQbrtUxbEfTQ==
X-Received: by 2002:a65:614d:: with SMTP id o13mr11362066pgv.351.1626461227510;
        Fri, 16 Jul 2021 11:47:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:76c5:: with SMTP id j5ls1707271plt.7.gmail; Fri, 16
 Jul 2021 11:47:07 -0700 (PDT)
X-Received: by 2002:a17:90a:b792:: with SMTP id m18mr11420423pjr.140.1626461226937;
        Fri, 16 Jul 2021 11:47:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626461226; cv=none;
        d=google.com; s=arc-20160816;
        b=mX/jBS6eeEDSdz19n+nnnpCOrkDKl+HhkqjrwXd2F1wvoeYdO9P5EjI0+r35OmEYqF
         Hirt4DH7pxCJbWP7ui/gtcE6DxmGsDk4mZB0LEkh2Js2SCpQjY1E12fxVyNah2JUgf1k
         qRe2unFe//zTP0xxtFYv9KRLeLqHBYeKxK5yK0Q11qxGmC44fUjV7GMWlvRm+OWcBX2f
         diF0QrujnP1Z4Q/QHf2nx/DkHdJKVonDRqCPo446T6JTULuxUYSyP8LrMyZFl6xPlkPM
         q23QxyD+5gO7KKo+otpYejMurQDR0C/m0csn76k8Ux4TxCLsCND8Saujqw3htKSa1oua
         xyzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=aFkkjxbi5KxUJdROZA5t/HOY04SSYv4eTdWZ996fNcQ=;
        b=ie5xkrmkOfpn2PDfYQDYUsEywqShkFp53m1hVHM9X6eCdEKU2yzoeFq2Woch7a/fxQ
         nL2hyTm5jNLO6A54OLetcE8gm3aTyz5V/GlWEbO0AoqCqgUralck/B4D4rE0cuY21oyQ
         kPdPJ5o0EY9ntFEo13ObURBkR48RaBmSJLifOfFdptnnvRbRqLbu/IJ7rfwdHsQaiA3B
         CZ3L5jWkNbPDGq7OYhWcduSK8SbSVXodjCWJp0FuuEc/AdCVDQAYDiTzhsWcGIiLlAmX
         KFxrxzvtYrzj7YtPIZWxro8OwyfXymRzMS7+jh8uk2mAphIPVj2ScaDvFKrCFI3g/7fX
         osYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Yfa/lKle";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u25si1060027pgk.5.2021.07.16.11.47.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Jul 2021 11:47:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6D1CD613FD;
	Fri, 16 Jul 2021 18:47:05 +0000 (UTC)
Date: Fri, 16 Jul 2021 11:47:02 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [GIT PULL] fallthrough fixes for Clang for 5.14-rc2
Message-ID: <YPHUJsiaOuqzW0Od@archlinux-ax161>
References: <20210714200523.GA10606@embeddedor>
 <CAHk-=wjQeeUiv+P_4cZfCy-hY13yGqCGS-scKGhuJ-SAzz2doA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wjQeeUiv+P_4cZfCy-hY13yGqCGS-scKGhuJ-SAzz2doA@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="Yfa/lKle";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Jul 15, 2021 at 06:04:15PM -0700, Linus Torvalds wrote:
> On Wed, Jul 14, 2021 at 1:03 PM Gustavo A. R. Silva
> <gustavoars@kernel.org> wrote:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git tags/Wimplicit-fallthrough-clang-5.14-rc2
> 
> Grr.
> 
> I merged this, but when I actually tested it on my clang build, it
> turns out that the clang "-Wimplicit-fallthrough" flag is unbelievable
> garbage.
> 
> I get
> 
>    warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]
> 
> and the stupid warning doesn't even say WHERE THE PROBLEM HAPPENS.
> 
> No file name, no line numbers. Just this pointless garbage warning.
> 
> Honestly, how does a compiler even do something that broken? Am I
> supposed to use my sixth sense to guide me in finding the warning?
> 
> I like the concept of the fallthrough warning, but it looks like the
> clang implementation of it is so unbelievably broken that it's getting
> disabled again.
> 
> Yeah, I can
> 
>  (a) build the kernel without any parallelism
> 
>  (b) use ">&" to get both output and errors into the same file
> 
>  (c) see that it says
> 
>     CC      kernel/sched/core.o
>   warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]
>   1 warning generated.
> 
> and now I see at least which _file_ it is that causes that warning.
> 
> I can then use my incredible powers of deduction (it's almost like a
> sixth sense, but helped by the fact that there's only one single
> "fallthrough" statement in that file) to figure out that it's
> triggered by this code:
> 
>                 case cpuset:
>                         if (IS_ENABLED(CONFIG_CPUSETS)) {
>                                 cpuset_cpus_allowed_fallback(p);
>                                 state = possible;
>                                 break;
>                         }
>                         fallthrough;
>                 case possible:
> 
> and it all makes it clear that the clang warning is just incredibly
> broken garbage not only in that lack of filename and line number, but
> just in general.

I commented this on the LLVM bug tracker but I will copy and paste it
here for posterity:

"It is actually the fact that

case 1:
    if (something || !IS_ENABLED(CONFIG_SOMETHING))
        return blah;
    fallthrough;
case 2:

looks like

case 1:
    return blah;
    fallthrough;
case 2:

For example: https://godbolt.org/z/GdPeMbdo8

int foo(int a) {
    switch (a) {
    case 0:
        if (0)
            return 0;
        __attribute__((__fallthrough__)); // no warning
    case 1:
        if (1)
            return 1;
        __attribute__((__fallthrough__)); // warning
    case 2:
        return 3;
    default:
        return 4;
    }
}

I am not really sure how to resolve that within checkFallThroughIntoBlock() or
fillReachableBlocks() but given that this is something specific to the kernel,
we could introduce -Wimplicit-fallthrough-unreachable then disable it within
the kernel.

The file location not showing up was fixed by commit 1b4800c26259
("[clang][parser] Set source ranges for GNU-style attributes"). The
differential revision mentions this issue specifically."

Hopefully that would be an adequate solution, otherwise someone with more clang
internal will have to take a look.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YPHUJsiaOuqzW0Od%40archlinux-ax161.
