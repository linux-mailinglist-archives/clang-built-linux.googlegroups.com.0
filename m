Return-Path: <clang-built-linux+bncBDEPT3NHSUCBBCWR775AKGQESFRMEYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B93C269882
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 00:02:52 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id t11sf1078366ilj.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 15:02:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600120971; cv=pass;
        d=google.com; s=arc-20160816;
        b=NedGlYnWudHbV8Qo2ZKj8YN+fSTUBf9Oh8zP1y38lZoyCARUO0ttAcl6hMYlnaDn34
         TVvp54pRGWYRjvOm8evs1fyZV911I05l04dadzI9GJFu8D4v+cp/RAcl4by/AqZgXRMN
         4/dAS9630v2aJpt9OKmQz8pbleBnqJJLjr8gMxrA8uIMC7zycD6tl6bEdI3shq352JXb
         yvscw8siNqVzrtGoxIbENrW7H/COaoYfACmQ+spv9wzcwZ3ZVeB+c+NV076emJUNDaIE
         2ZsT2gPw96ybTz3eE4u/IG3k7KMouMCCRxBmeUIpIhCu3931f2RDSvjnavjfW3TRjZ2t
         FTdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Rx6zdYqyrm4DldWGziI5UiNU2PEwIbMI0nBjh8/1ypc=;
        b=zPvW4ahd1hxEcrNkdi5SpPZUAn0yIByte8ptEcwh7mCiDvdhZny9A/S74sD+WpXl32
         scdZhK/4b2B9+Z7pJzaIeq/vB9ZAhHHRq9aLB8M+QxVFTbItpwe9f7x2vNEr5aqZb5tp
         cBBnDPzuESEuDBb9Fxfsg0NMfl0jzWnaVPUpUEoLvNLr5oR708qEitsKr5Zo7//dlHwu
         59zsj0ks7/YckkQwvLBTwpZxmat45X7lUDB/9wVKmHzgK+D0ZrQdMUKhEobdDy8VCDvg
         /dyw149ymApCcaogADWXfXX0ErXX/bVJmWhF4TyC04qal2WN7ZYQIzFAz5ws/PC+HhIp
         CzTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=F3PGCqgl;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rx6zdYqyrm4DldWGziI5UiNU2PEwIbMI0nBjh8/1ypc=;
        b=VGcVXos9LZai2mfsMnwX+URmu15bTWD5YostzsPblrTklcumxA8YhxYUVY54AOc0I3
         WLh1wP9SjOlFx2/iUHiPx/s95xtCCJqtGVwH6kpdM8GtGJ/DzJkArXidCAzTe7Ulvhab
         nZSzmZP9wEj4Ot+HcS+nbWh9BKpwO+WRqje5x+hqUPjDvPp/MR+BxubscW+LGVFbeviQ
         /mJ6Hj6RW2sXiklIdb/qpXHzOqYNJds8DwZedB6aYkEvnuPZwUONvsqn5YJxU2/zRUn/
         k/r0T/FNOwVn5IWTxuRe93CsBfIFmbfculWW3HiSS1gDwtKpDscC5FHtusLsud3OazAo
         CwOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rx6zdYqyrm4DldWGziI5UiNU2PEwIbMI0nBjh8/1ypc=;
        b=RK8Etx07tcPuN2Knr+1aBmWSXw8Tv6SGhmdoXX8zwNV1U4duzNXPveXdGUk+kvKiek
         85s/ZGLVfFBkQeOp83VYAWHswihPPhcFwOefvT7sxIYI3KffbAY1GH2j6iZ3xyTDw0ow
         MRJEMyAUIpf9AdGulacwEbwqzELCDlipska6hA0Ys6TP++2qCY2QeeHc/7+XRfd8JPAI
         fccy5rhqi/izuflGp6Wcz4bXXsLmN8Kfx9W9C7RPY7QJh+Vf7pEHGi5ljou7IqLbeH3x
         trNCnIUiSDSFf2K0pRewGHhG9rvchbeHqNQfhyGRYFInQqBq/U+kh6T48NyWJC9UlysG
         L3JQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533k9sJqL2ArT47JYGmY7N205XTrCelw1yNCLvt8yc3U6I4RxJRl
	vGTIPTgZ3Bk/fVZr6wLuz8U=
X-Google-Smtp-Source: ABdhPJzVWHFhazdUeCDFkSJx75eL2p2uU9Mhd6GYzM5o0w0Alx+zi9TFEMiJ5T11aSQh3vtw0NM8OA==
X-Received: by 2002:a92:d104:: with SMTP id a4mr14148157ilb.173.1600120971111;
        Mon, 14 Sep 2020 15:02:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:6f56:: with SMTP id b22ls1512436jae.9.gmail; Mon, 14 Sep
 2020 15:02:50 -0700 (PDT)
X-Received: by 2002:a05:6638:2109:: with SMTP id n9mr14878768jaj.134.1600120970672;
        Mon, 14 Sep 2020 15:02:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600120970; cv=none;
        d=google.com; s=arc-20160816;
        b=e0vAXYvgSHaPyh821J3uO8rfmnR2iKn6T2aXFRls/23FQK7bPgc1QRR23z1TWpOdls
         cXE5ox5kQjXIdZLhDmXIfxvY22L5kBYoxaQT0In52Zhcz3YQJQPKvDTv68jOcbIh0Muo
         aZ8wfEJQTSb2CFLgUvy0g+hZ/J1RBrGFN1Q9LYwdkaDaY1K17YGL2QK5hBFIOz/1Wo+G
         qmATbLob3+o4DHzl0msFNrAzkIxW18wVE1bKI4TaHJSPGuin5WoUWaW9bkEAY3xnnz3V
         XShVdQP3XwbBD4GrRqkYYSscbfaFniWQpeNIH2P8xlbdYYo+Qj/UYW7tsGwXk3q/UJlP
         lr2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=D30D4BMPa8TFwZOvgugu/aJhg79jT2XO5Iq9yucSfiA=;
        b=jPs7bIpDbV+Do3u/j/v9qJXDOr7LTGU+3z5qnivYvWNKIHAdazMSnpvcxi9G10nLiB
         Y0Ubxfhz3V9KHHPBuTMMA6p6WjX/quJl0F2AbJk3KUVUfz5OTXJRrDmZLSMRLd+Sv1+D
         xDf+EAOxoVSIFRZILPotvMNFtoP3By14H0tYs1AbDR1lA6XKeqjM4NESMWuxfDKBep58
         l+gaKzy73PVnyivbJQPeYtguVuh9V7LrvfQRjurh4TiM4y82nd15sf+T3qynHFyEeWNJ
         boQGf9jiNKjNtXJTWrzMkt8vxJgFvrg9X9exWL9TUDL/wUPcl7+QGnh/4HBXB1GIMZaB
         2FKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=F3PGCqgl;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a13si794063ios.2.2020.09.14.15.02.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 15:02:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A3B862193E
	for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 22:02:49 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id y15so1519464wmi.0
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 15:02:49 -0700 (PDT)
X-Received: by 2002:a05:600c:4104:: with SMTP id j4mr1361681wmi.36.1600120968132;
 Mon, 14 Sep 2020 15:02:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200903011054.2282115-1-morbo@google.com> <20200903073435.GU1362448@hirez.programming.kicks-ass.net>
 <CAGG=3QX4wKcoPWw+5=tOqz3Y7g8ELGZuav3kdWjXRQae=ue9Mg@mail.gmail.com>
 <CALCETrW7B3HkF5iY=qgt0KeN1fXZLVaPZcELYGRm9bOgbirbww@mail.gmail.com> <CAKwvOdkKqkP1qT0002xQnDrByXr_ygvqCmnzZ50vJLDsg6XWXg@mail.gmail.com>
In-Reply-To: <CAKwvOdkKqkP1qT0002xQnDrByXr_ygvqCmnzZ50vJLDsg6XWXg@mail.gmail.com>
From: Andy Lutomirski <luto@kernel.org>
Date: Mon, 14 Sep 2020 15:02:36 -0700
X-Gmail-Original-Message-ID: <CALCETrXUaeNUbkQSeMPpPKWDBCEpqX1gLgkv2G9zLeeYMjK8VQ@mail.gmail.com>
Message-ID: <CALCETrXUaeNUbkQSeMPpPKWDBCEpqX1gLgkv2G9zLeeYMjK8VQ@mail.gmail.com>
Subject: Re: [PATCH] x86: use clang builtins to read and write eflags
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andy Lutomirski <luto@kernel.org>, Bill Wendling <morbo@google.com>, 
	Peter Zijlstra <peterz@infradead.org>, Thomas Gleixner <tglx@linutronix.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Greg Thelen <gthelen@google.com>, 
	John Sperbeck <jsperbeck@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: luto@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=F3PGCqgl;       spf=pass
 (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=luto@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Sep 14, 2020 at 2:05 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> (Bill, please use `./scripts/get_maintainer.pl <patchfile>` to get the
> appropriate list of folks and mailing lists to CC)
>
> On Thu, Sep 3, 2020 at 8:06 AM Andy Lutomirski <luto@kernel.org> wrote:
> >
> > So with my selftests hat on, the inline asm utterly sucks.  Trying to
> > use pushfq / popfq violates the redzone and requires a gross hack to
> > work around.  It also messes up the DWARF annotations.  The kernel
> > gets a free pass on both of these because we don't use a redzone and
> > we don't use DWARF.
>
> Sorry, I don't fully understand:
> 1. What's the redzone?

Userspace ABI.  x86_64 userspace is allowed to use 128 bytes below RSP.

> 2. How does pushfq/popfq violate it?

It clobbers a stack slot owned by the compiler.

> 3. What is the "gross hack"/"workaround?" (So that we might consider
> removing it if these builtins help).

Look in tools/testing/selftests/x86/helpers.h.  I have a patch to
switch to the builtins.

> 4. The kernel does use DWARF, based on configs, right?

Indeed, but user code in the kernel tree (e.g. selftests) does.

> #ifdef CONFIG_X86_64
> #define __read_eflags __builtin_ia32_readeflags_u64
> #define __write_eflags __builtin_i32_writeeflags_u64
> #else
> #define __read_eflags __builtin_ia32_readeflags_u32
> #define __write_eflags __builtin_i32_writeeflags_u32
> #endif

Looks reasonable to me.

>
> Which would be concise.  For smap_save() we can use clac() and stac()
> which might be nicer than `asm goto` (kudos for using `asm goto`, but
> plz no more).  :^P Also, we can probably cleanup the note about GCC <
> 4.9 now. :)

I find it a bit implausible that popfq is faster than a branch, so the
smap_restore() code seems suboptimal.  For smap_save(), I'm not sure
what's ideal, but the current code seems fine other than the bogus
constraint.

> > > Clang chooses the most general constraint when multiple constraints
> > > are specified. So it will use the stack when retrieving the flags.
> >
> > I haven't looked at clang's generated code to see if it's sensible
> > from an optimization perspective, but surely the kernel code right now
> > is genuinely wrong.  GCC is free to omit the frame pointer and
> > generate a stack-relative access for the pop, in which case it will
> > malfunction.
>
> Sorry, this is another case I don't precisely follow, would you mind
> explaining it further to me please?

The compiler is permitted (and expected!) to instantiate an m
constraint as something like offset(%rsp).  For example, this:

unsigned long bogus_read_flags(void)
{
        unsigned long ret;
        asm volatile ("pushfq\n\tpopq %0" : "=m" (ret));
        return ret;
}

compiles to:

        pushfq
        popq -8(%rsp)
        movq    -8(%rsp), %rax
        ret

which is straight-up wrong.  Changing it to "=rm" gives:

        pushfq
        popq %rax
        ret

which is correct, but this only works because gcc politely chose the r
option instead of the m option.  clang chooses poorly and gives:

read_flags:
        pushfq
        popq    -8(%rsp)
        movq    -8(%rsp), %rax
        retq

which is wrong.  I filed a clang bug:

https://bugs.llvm.org/show_bug.cgi?id=47530

but the kernel is buggy here -- clang is within its rights to generate
the bogus sequence above.  Bill's email was IMO rather obfuscated, and
I assume this is what he meant.

Of course, clang unhelpfully generates poor code for the builtin, too:

nice_read_eflags:
        pushq   %rbp
        movq    %rsp, %rbp
        pushfq
        popq    %rax
        popq    %rbp
        retq

I filed a bug for that, too:

https://bugs.llvm.org/show_bug.cgi?id=47531

So we at least need to fix the bogus "=rm", and we should seriously
consider using the builtin.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALCETrXUaeNUbkQSeMPpPKWDBCEpqX1gLgkv2G9zLeeYMjK8VQ%40mail.gmail.com.
