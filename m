Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCU3XSAAMGQE5JMXMQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id E978F302A27
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 19:27:23 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id 94sf4743637oti.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 10:27:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611599242; cv=pass;
        d=google.com; s=arc-20160816;
        b=wdsZthyLkBLRVQbycU8IxYRWTlxTPFixuXPdPaFjxUpQU27oJNE3qoRs0xPwdNxktt
         jZC6D4laLQ5OBZFKnXke6M/Ndz2f2r8gjnQ/+mtDlFE+geRNgJXQZou0vT5fX0QIM47e
         6Bt4Y/vuDvkuXFvjfqVIwbfJotZuRx2A8QQgPd3sQhfYLaz/lcaX4ayAlxijsnIhdJ/1
         zQH46GFGSgJTJFej7QXm15Dl3HrkW6WCmLRe/KXix6o+FrFJWtHSzQoDbQ4KF3MVfKAq
         DmcPGMDFrYpZJbDc99gOpoBrafhRI7jyiC993JfFEUucm2xh5EZ/EiTXVbdwWfkjLqoy
         W59Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5h/YYMu9OvlXBO1erPgnZ+jVtOH7ob+I6ogRcfAFiUM=;
        b=L2G0r4D8X1JqzfheY6lxZfhZS1IuON6p9pEdKvWLsigrYMGbY3dDQBF+jXCKPj0Jen
         rJ9SxMwtFtU8xdCzfYaSmZEJqL8fqmqp+RgI9OwQZw16RsLvGj0OzM1KLtFYezf5og/3
         vRjWjraYRnmdLx1i1xXUOl402C4yT1FTeR66GKvFcVVjntWBgVjXsLw3Z6uUQA2t3e8A
         2UlsDLqi3FMtpAO5J2t7XdqGYljT/aNkaD1FEGFkwJULGLtscxFT07izdg3BvCXJcNh4
         /gi6RD8RHXvkq2FtKMBL/t+W5CiEwITISFCsRq3G1hZSCZ2jGPqHTsfBhER0d8cF9j54
         7v/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KqBWErOV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5h/YYMu9OvlXBO1erPgnZ+jVtOH7ob+I6ogRcfAFiUM=;
        b=mpCNjtF3GrQ6Ez8VNLp9Oivsac4cj+D29A1Ey3CdBhh9aXdQ2iGVxsN40JmyDr2AJh
         S6tgLyteMXxW5CNomyX3giDeBAFkfXnd1s+8uM4blMighd8PQ379fk4GFjwNWdYwsKsP
         omGW6IJCCm5m5OLEA34ospw2yq5PmzuDEtz41rJz0ozEhzrKYsWXMnzmsWpKI9QXqIES
         PPyfmb9wbSTkDJGrLplvF6aAEZ/unhdSYZUoLp3VhpgbZK3s934QPdGrCIs4hdU293TD
         HhLC35FSTk2kRygamcH0v+dthqqsQmnJ0kmRnFmbnZAvpOkucqM6kJ1zgbMJYHrZa5OH
         tV5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5h/YYMu9OvlXBO1erPgnZ+jVtOH7ob+I6ogRcfAFiUM=;
        b=gcK2rdYCB9a8I2iEBYDPJYCAtE8ZCR+6eLeKKcYvaYro3t8w5mKORePRWIsExcpZq7
         FdbF97U0Ul1iRaMVcVX9o6byH/bRFwznLdvXZ9bup00wnTBXxpum/4S8rkCiHxsrLvOq
         V75vZ0ol0wkMYc2FTikjw5v6nSNyFCkwEojdHMm3ma/ZFs/66TE4J03lHwp1DOzqaYki
         3SJG8x3SxWwfh+bSDv6mt3Ehwu22Ji2W1KLj1Zq7Tquf42EqYSZQOeAx294DkMxo5Ytr
         rIhJmCxVsMoHBt0ZgGsifdregGcFq2pvUaRL3drZfIMYhSD9SNIHDmHeuv/Ce9b1STBs
         6Itg==
X-Gm-Message-State: AOAM532OK3cgrLDzIMDRkzEt3nkkCppU7IP7JOsK/TZMhkxuUwNmZS5e
	wAUZyo6Jqk7zzcS7as1YiJQ=
X-Google-Smtp-Source: ABdhPJx7+/E75rnrXP0UwyF+msm1U8V37hfrynANsZyhphHT6TIA90TPXcCcxhTFJ3gmyYt1XfgrMw==
X-Received: by 2002:a05:6830:1d73:: with SMTP id l19mr1308669oti.245.1611599242771;
        Mon, 25 Jan 2021 10:27:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1309:: with SMTP id e9ls3428187oii.4.gmail; Mon, 25 Jan
 2021 10:27:22 -0800 (PST)
X-Received: by 2002:a54:4e81:: with SMTP id c1mr911955oiy.52.1611599242372;
        Mon, 25 Jan 2021 10:27:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611599242; cv=none;
        d=google.com; s=arc-20160816;
        b=wmKaWNblBLPQEvEFUp4IiWs2J3mjR/joSbIuRRnwCUxgZh0RoerwUkyHI4o0uIPDCx
         8Fsrm4Ok7lR8eUAXot704YWEnubp9flSMfjuINbz4nMDkGHkAu7XSUH7qZNpgKbs9DTi
         AaZx5VQzDB75IXzd4wt0no631fDaXboNEY5nP/01XwjaTFhHRu2FVLEWqe2WiGmEuP0l
         pRosh1/pcDgrZpag3lh31dHYv583RGWlPxLQj5UyQKaKuxCxXOri120FXBEKYcoT2AFt
         0PdRX5Hb3dn/AT0R+6Evzr7YEBkgfiyACTuHfSQ9n2yR/FGyEE7ueFs+QX4U5+NIvOUo
         KD/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rH51Ivc55ptvFbtJscFbdlO/ZDzsRHEdg+dEPlaRK4c=;
        b=LgiD2BN3k9OAIvo47xGkAB2REiXCszXMjFH1dySCXd4T9jLakVtKgX/zVIS7f9itzB
         Kn1gqHGsEL6qvGZiWrE+xDrrJwqn/PZp7wAP9wyDWD39unObH+ptLrGPsw7O4ULr4A84
         Ar/Q7uigwHpQ9Rlsp6KwSCU/S47aeMZOJ9GK7hd82FLoy9V/tIjXMuGrPPVbQP4qSU7r
         vRvumfgtxmLZnsZLOg0WDd+hW09JjyfWgWEHuj8cMfR88LFCY6PcLjEEoV6i8nfEx/cR
         GD3x+6DkT++iZAB6rOD3o4rbUEC/XBf05zoZwBfcF1u9wIoBf0tnpdChZrXAMqaVC126
         0RyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KqBWErOV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id r27si1210354oth.2.2021.01.25.10.27.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jan 2021 10:27:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id g15so133391pjd.2
        for <clang-built-linux@googlegroups.com>; Mon, 25 Jan 2021 10:27:22 -0800 (PST)
X-Received: by 2002:a17:90b:228f:: with SMTP id kx15mr1617388pjb.32.1611599241506;
 Mon, 25 Jan 2021 10:27:21 -0800 (PST)
MIME-Version: 1.0
References: <20201231212852.3175381-1-dennis@kernel.org> <20210104234651.GA3548546@ubuntu-m3-large-x86>
 <X/O46grb51Z4faI1@google.com> <CAK8P3a2ZWfNeXKSm8K_SUhhwkor17jFo3xApLXjzfPqX0eUDUA@mail.gmail.com>
In-Reply-To: <CAK8P3a2ZWfNeXKSm8K_SUhhwkor17jFo3xApLXjzfPqX0eUDUA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 25 Jan 2021 10:27:11 -0800
Message-ID: <CAKwvOdnxnooqtyeSem63V_P5980jc0Z2PDG=0iM8ixeYTSaTCg@mail.gmail.com>
Subject: Re: [PATCH] percpu: fix clang modpost warning in pcpu_build_alloc_info()
To: Arnd Bergmann <arnd@kernel.org>
Cc: Dennis Zhou <dennis@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, Linux-MM <linux-mm@kvack.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KqBWErOV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036
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

On Mon, Jan 25, 2021 at 3:07 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Tue, Jan 5, 2021 at 1:55 AM Dennis Zhou <dennis@kernel.org> wrote:
> >
> > On Mon, Jan 04, 2021 at 04:46:51PM -0700, Nathan Chancellor wrote:
> > > On Thu, Dec 31, 2020 at 09:28:52PM +0000, Dennis Zhou wrote:
> > > >
> >
> > Hi Nathan,
> >
> > >
> > > Hi Dennis,
> > >
> > > I did a bisect of the problematic config against defconfig and it points
> > > out that CONFIG_GCOV_PROFILE_ALL is in the bad config but not the good
> > > config, which makes some sense as that will mess with clang's inlining
> > > heuristics. It does not appear to be the single config that makes a
> > > difference but it gives some clarity.
> > >
> >
> > Ah, thanks. To me it's kind of a corner case that I don't have a lot of
> > insight into. __init code is pretty limited and this warning is really
> > at the compilers whim. However, in this case only clang throws this
> > warning.
> >
> > > I do not personally have any strong opinions around the patch but is it
> > > really that much wasted memory to just annotate mask with __refdata?
> >
> > It's really not much memory, 1 bit per max # of cpus. The reported
> > config is on the extreme side compiling with 8k NR_CPUS, so 1kb. I'm
> > just not in love with the idea of adding a patch to improve readability
> > and it cost idle memory to resolve a compile time warning.
> >
> > If no one else chimes in in the next few days, I'll probably just apply
> > it and go from there. If another issue comes up I'll drop this and tag
> > it as __refdata.
>
> I've come across this one again in linux-next today, and found that
> I had an old patch for it already, that I had never submitted:
>
> From 7d6f40414490092b86f1a64d8c42426ee350da1a Mon Sep 17 00:00:00 2001
> From: Arnd Bergmann <arnd@arndb.de>
> Date: Mon, 7 Dec 2020 23:24:20 +0100
> Subject: [PATCH] mm: percpu: fix section mismatch warning
>
> Building with arm64 clang sometimes (fairly rarely) shows a
> warning about the pcpu_build_alloc_info() function:
>
> WARNING: modpost: vmlinux.o(.text+0x21697c): Section mismatch in
> reference from the function cpumask_clear_cpu() to the variable
> .init.data:pcpu_build_alloc_info.mask
> The function cpumask_clear_cpu() references
> the variable __initdata pcpu_build_alloc_info.mask.
> This is often because cpumask_clear_cpu lacks a __initdata
> annotation or the annotation of pcpu_build_alloc_info.mask is wrong.
>
> What appears to be going on here is that the compiler decides to not
> inline the cpumask_clear_cpu() function that is marked 'inline' but not
> 'always_inline', and it then produces a specialized version of it that
> references the static mask unconditionally as an optimization.
>
> Marking cpumask_clear_cpu() as __always_inline would fix it, as would
> removing the __initdata annotation on the variable.  I went for marking
> the function as __attribute__((flatten)) instead because all functions

I had to look this one up; it's new to me!
https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#Common-Function-Attributes
https://awesomekling.github.io/Smarter-C++-inlining-with-attribute-flatten/

Seems pretty cool/flexible to control inlining on the caller side!

At the least though, we should avoid open coding the function attributes.  See
include/linux/compiler_attributes.h

Testing quickly in godbolt, __flatten__ has been supported since at
least clang 3.5 and gcc 4.4, FWIW (so it doesn't need a
__has_attribute guard).

> called from it are really meant to be inlined here, and it prevents
> the same problem happening here again. This is unlikely to be a problem
> elsewhere because there are very few function-local static __initdata
> variables in the kernel.
>
> Fixes: 6c207504ae79 ("percpu: reduce the number of cpu distance comparisons")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> diff --git a/mm/percpu.c b/mm/percpu.c
> index 5ede8dd407d5..527181c46b08 100644
> --- a/mm/percpu.c
> +++ b/mm/percpu.c
> @@ -2662,10 +2662,9 @@ early_param("percpu_alloc", percpu_alloc_setup);
>   * On success, pointer to the new allocation_info is returned.  On
>   * failure, ERR_PTR value is returned.
>   */
> -static struct pcpu_alloc_info * __init pcpu_build_alloc_info(
> -                               size_t reserved_size, size_t dyn_size,
> -                               size_t atom_size,
> -                               pcpu_fc_cpu_distance_fn_t cpu_distance_fn)
> +static struct pcpu_alloc_info * __init __attribute__((flatten))
> +pcpu_build_alloc_info(size_t reserved_size, size_t dyn_size, size_t atom_size,
> +                     pcpu_fc_cpu_distance_fn_t cpu_distance_fn)
>  {
>         static int group_map[NR_CPUS] __initdata;
>         static int group_cnt[NR_CPUS] __initdata;
>
>
> Not sure if this would be any better than your patch.
>
>        Arnd
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2ZWfNeXKSm8K_SUhhwkor17jFo3xApLXjzfPqX0eUDUA%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnxnooqtyeSem63V_P5980jc0Z2PDG%3D0iM8ixeYTSaTCg%40mail.gmail.com.
