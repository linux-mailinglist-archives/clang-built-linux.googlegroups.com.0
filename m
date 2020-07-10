Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBPMTUP4AKGQE2UBI3WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 9896E21BE41
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 22:04:14 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id j187sf8496634ybj.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 13:04:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594411453; cv=pass;
        d=google.com; s=arc-20160816;
        b=jYxnvn3ruNJdeA4kloGa2W03TC3MVd4OZDdMrrY5u0TcMy1K7FH96iqAG+bWNaDYC0
         Bw4N8cvV7diDoAEKHNQg2Xkh/DWmC8OthJYMyDHi6hFmo0LRPUmdl4s6nEkWlm5O5qoO
         TDDWrnJmGg/KPrqqOi0PVplUHkjDaf+OZ1cqzLSfwPMgNFuaJOsLBPzzTPuVW7sDcOaq
         ZvU9yUxrZy3bzu3WabUKCmUImegl+QCUnfqqvS0y6Zt3e2iBuBK6KZ3oMTbEgHeTYflA
         JvyBJaCQ4pL9tR5Zi8WjzqBAarYes0DUByXc37dpoCsx448mFr4m1e8oUVJEp2qp6A5U
         ysCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=r4o5r2PldVrS9e4vRxuGv5fif24myllRLbafz6hdCmY=;
        b=ZBRjcaIq83bhF/PMaXMOtsNeuUf98X5nul0bL0p51HqfM+vwNNwyNH+MiIceu33yPM
         BMVhbuFgVT5yl4oIG9DU3iSQlHa2oahYV+JcXBPIExp4OcDX+BDnBEHNhg6ijF4MJ3BI
         5hptQEDp7ZLUOUqsOMPR/tUI8+O+fAzT357R/ePhOUTPP3UyT3RshFbvJVkqevOr51Qg
         QZNrBfP4UwdrXvEIH7OtYlpYYw64W+bPYFBhWyOhA9pJa/Evy4A6/P2EyLiv3mDnMAz8
         NHhubuGtcvntnq3PSt6rN+rszzA1N8WaUNJJGSJl/UJ/QYSBN19bWi1pZUdnC8gG0xVY
         jbhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ICKux2xo;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r4o5r2PldVrS9e4vRxuGv5fif24myllRLbafz6hdCmY=;
        b=L4ustTxkbq6XELyqG6I46DhUaakb11mkU/3swcZbuhgpLjrKggGCwQrvl5G5QHEy9s
         yXXlFZnhkT1L8e/3U2Rpm9sJIU4SJLwQG8/M+QZALIqhBVCXBqYtZisNKLtrrf/J5Ca/
         gzSZupfEEKqNVeVvGZtFceBzeJh6RUw0kmOitp02ax6c3czmoyM75VLdA1ILqdP31XvL
         37oGvy6qXE55kpKfMsMVVBw8LlnLSvfQsJCGSvHgVH+kZgFmojcsYSn4vzdkEO1DZbV+
         gBKD+BGNNeehTMywAFEoOTPrG5T6wPRVRBaK4iLUpuj1WCi7WGcUuQTah9mHnqidR215
         E35g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r4o5r2PldVrS9e4vRxuGv5fif24myllRLbafz6hdCmY=;
        b=JwOlPZUZhNOExjz9lfAn/hZOD/VbKUpiJ7+GghSnIQ0s2yQAAlNZjuy+sCPbGDE4Sn
         CCpX2YLwcZnVQwSH4m7fi/Z2yVAw5X3C6HYzLvEhwqfhGqutKfE0Vc5tw3JHxsBida+T
         xujGbwDPQpd2BjXg/mi8Na5ihUuOxVnUWy7DgszRmXt/fb5yKyBLFUckIRi8WI7fbqD/
         knu5tpXOKjjNirIWwyMG/eSqKMhLuCbPmgv9BOz4NQau+h14pE8J6T36FKXHW4U8dnDk
         UN4RQ1wodTMbc6SSHcaXBcpufNlUD4zL8vCj9gn77qmfhr+X37uiZ9s8oWV6hUkOZmDJ
         OZmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r4o5r2PldVrS9e4vRxuGv5fif24myllRLbafz6hdCmY=;
        b=mi6yJ2THFc4eMYPiSR7TsYzBmNWM/S6RhZP0oBZ74P3hj0KhtV6tlsvj4FSc6Bz73C
         0RLI7YkvOsjJVm4LtwNKN8YlvGHUMymMNjAQyHUZiIqV6lTGk4i5DvQzjv90bxGTIbFw
         OBOhTMa3AwEzrgJl1O4DV9cjuW5FsZRqjjvpH3ouZ0tKXQiTDLTzDD9QGMaBTkOG2bY7
         RnL+SVNPWQjCWUSMLrshj2xCSuR5eSG5FY8Lsf/sX9vvhcnfDUgj3VCFfPd30meeERhg
         sjWoz0scybRRBxe4nQBDp4VpWtZfnUaolLt/33ifwQ1Q8Kho/KmUFKKqUyiQGiNXOy9I
         xkvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+CB9X07lgLmlirT0Dc3v5aMWopX5rkqvpcu1f30p5kseceTEB
	Ej8Dg5uxLWYC69iAr2wnh08=
X-Google-Smtp-Source: ABdhPJwAAZDWF05mnwJCn+17Pr+Km4DC3RQxch2FmxeeMvP0CjbDtMglooEpm1mn8It5ijA3VKLXiw==
X-Received: by 2002:a25:e78f:: with SMTP id e137mr22069178ybh.153.1594411453432;
        Fri, 10 Jul 2020 13:04:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6087:: with SMTP id u129ls3781072ybb.10.gmail; Fri, 10
 Jul 2020 13:04:13 -0700 (PDT)
X-Received: by 2002:a25:d843:: with SMTP id p64mr52839883ybg.68.1594411453045;
        Fri, 10 Jul 2020 13:04:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594411453; cv=none;
        d=google.com; s=arc-20160816;
        b=HWb8pfiaJJUEIyCynjJLeubDPjn7HXrWr6SlG4jTiO8vNjhWlQi3gL+1hr40iImTqz
         ZopWS/JtoAQqixO0NOSSUNqlN46WK+2gunlON1J6Hxt4ZdZyV0/6uQwfQxgct4QgLkA9
         3oItVjZhdo07QIol/N744pSHCA1jgZ8vJJ2QOI3Id7PTv1BlrUZ5kaO2zbcccLcS7JG7
         WtdlfHkT6NHJkhU2Wt3dDU4cU+D9tsazV66YOBh3IDI/k/Wzu3EtHHdJzfHIFwE7oL2f
         MjfuZ4NtOrFH7FStJ2lJVbnkLwDpdwC4KxoQb0Yn/YrnJj/kX15hlgys/gd42mqJZFLT
         NDhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=n2TNuYXMSfyCSemiqyJm56p5UsXi6pVKSUd7xNnrk/g=;
        b=GfP47lfTmWmUBLKNkIa/oceWIsHOTxgYHPwnxJs44ElRgYamQJcAR/aMB1vYz2a5go
         3Om96E6X3m2ImFz6Iamk0B6miwJ42xh71Ty351JxWATP2/6LdrEpkIsN6xE9K45C4c1P
         XzokF0iNw9AQUxm8MrGTCTHtbmiosYViL0hgfMFbW3Rajv7mqd0o+fD4OUfPYV2PYSvW
         CxYoRcNCZ8rj8Wial4Vbz08hEWO78xmp9UNhESqpA7o7/zJhpC6F/Ja3EAmAkzP1c1pY
         HQd73B56mEPTot6qXFHtyKg6GFGWH3iXL9cPhMbDtSZe07sDD6Cm7x7nWw/diNKRRtsB
         k+rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ICKux2xo;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id l126si486095ybf.4.2020.07.10.13.04.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 13:04:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id q8so7293324iow.7
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 13:04:13 -0700 (PDT)
X-Received: by 2002:a05:6638:1409:: with SMTP id k9mr81737078jad.125.1594411452521;
 Fri, 10 Jul 2020 13:04:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200709221102.323356-1-cesarb@cesarb.eti.br> <CAHk-=wjUEmO4GiC9mCyzZ8_WS=ZWgfg6CnpxPSLq=uoF1F3Xyw@mail.gmail.com>
 <CAKwvOdnbtbetfN5zF51QOXVhrutE8ak4uPe82iY6g9f6gwk=Vg@mail.gmail.com> <CAKwvOdm2QBSidX3X13CfM5KR+Mci7bgkPjoRM53f339vefRK9w@mail.gmail.com>
In-Reply-To: <CAKwvOdm2QBSidX3X13CfM5KR+Mci7bgkPjoRM53f339vefRK9w@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 10 Jul 2020 22:04:01 +0200
Message-ID: <CA+icZUXchP6O9auk5N2eE9MzCGHu32KJbGYpf8OYDB10ShDb8w@mail.gmail.com>
Subject: Re: [PATCH] Restore gcc check in mips asm/unroll.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ICKux2xo;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jul 10, 2020 at 8:43 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> forgot to add cc, sorry
>
> ---------- Forwarded message ---------
> From: Nick Desaulniers <ndesaulniers@google.com>
> Date: Fri, Jul 10, 2020 at 11:43 AM
> Subject: Re: [PATCH] Restore gcc check in mips asm/unroll.h
> To: Linus Torvalds <torvalds@linux-foundation.org>
> Cc: Cesar Eduardo Barros <cesarb@cesarb.eti.br>, Linux Kernel Mailing
> List <linux-kernel@vger.kernel.org>, Steven Rostedt
> <rostedt@goodmis.org>, Masahiro Yamada <masahiroy@kernel.org>
>
>
> On Thu, Jul 9, 2020 at 5:53 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > On Thu, Jul 9, 2020 at 3:11 PM Cesar Eduardo Barros
> > <cesarb@cesarb.eti.br> wrote:
> > >
> > > While raising the gcc version requirement to 4.9, the compile-time check
> > > in the unroll macro was accidentally changed from being used on gcc and
> > > clang to being used on clang only.
> > >
> > > Restore the gcc check, changing it from "gcc >= 4.7" to "all gcc".
> >
> > This is clearly a thinko on my side: the old
> >
> >     CONFIG_GCC_VERSION >= 40700
> >
> > became pointless, so I removed, it, but it was mixed with an "||" so
> > we actually wanted to make it unconditional on gcc, and instead now it
> > checks for CLANG version even when it shouldn't.
> >
> > My bad, and your patch is obviously correct.
> >
> > At the same time, I do wonder if  we could just remove the check for
> > CLANG_VERSION >= 80000 too, and just remove all the compiler check
> > hackery entirely?
>
> What I'd really like to see as a policy in the kernel going forward in
> that ANY new commit that adds some hack or workaround for a specific
> compiler version add a comment about which toolchain version was
> problematic, that way when we drop support for that version years
> later, we can drop whatever hacks and technical debt we've accumulated
> to support that older version.  I'd prefer a comment that can be
> `grep`ed rather than a commit message that may need to be searched.
> That way when bump the compiler version we can grep for comparisons
> against that version and start cleaning up code.
>
> The case that comes to mind:
> commit 87e0d4f0f37f ("kbuild: disable clang's default use of
> -fmerge-all-constants")
> cites https://bugs.llvm.org/show_bug.cgi?id=18538
> The fix for which shipped shortly after reported in clang-6.
> https://github.com/ClangBuiltLinux/linux/issues/9
> Looking at the dates between kernel patch and toolchain patch, I guess
> that the kernel patch authors didn't know what release that workaround
> would be fixed in, but basically they need it for CLANG_VERSION <=
> 600001.
> We can remove that entirely if we commit to a minimally supported
> version of clang.
>
> Also, I'm a little salty still about our conversation with
> asm_volatile_goto:
> https://lore.kernel.org/lkml/20180907222109.163802-1-ndesaulniers@google.com/
> I think lore is missing your response, that triggered a v2:
> https://lore.kernel.org/lkml/20181031182909.169342-1-ndesaulniers@google.com/
> (Strange, I literally cannot find evidence that you ever responded to
> that...am I going crazy? Looks like my work email has been being
> auto-deleted because...lawyers) (lkml.org is missing it:
> https://lkml.org/lkml/2018/9/7/1628, and I didn't have our mailing
> list set up then).
> You also know how I feel about empty asm statements (`asm("");`). ;)
>
> Anyways, the point is "please tag these workarounds with a toolchain
> version somehow such that someday we may pay off our debts."
>
> >
> > Older versions of clang weren't very good at compiling the Linux
> > kernel in the first place. Do people actually use old clang versions?
> > That sounds like a really bad idea.
> >
> > People who used to build the kernel with clang tended to actually get
> > their clang version from the clang git sources afaik (I still do, but
> > that's because I test experimental new features that aren't released
> > yet), exactly because back in the bad old days there were so many
>
> Thanks for the endorsement. :P
>
> What's the latest on that `clac` in exception handlers discussion?
>
> > problems.
> >
> > These days you can use release versions, but they'd presumably not be
> > older than clang-8.
> >
> > Adding Nick - is it really reasonable to build any kernel with any
> > clang version before 8.0.0?
>
> TL;DR: probably not.
>
> For Pixel 2, we shipped a Clang built kernel using clang-4.  Since
> then I've moved it to be using near ToT Clang (clang-11).  That device
> was aarch64 with no hard dependency on `asm goto` (only x86 added
> that, and only in 4.20, so not really an issue for stable kernel
> branches older than that).  `asm goto` support shipped in clang-9.
>
> >
> > It turns out that the arm side also has a check for clang < 8 because
> > of -mcmodel=tiny, so raising the minimum required clang version to
> > that would solve that issue too.
> >
> > Right now we don't mention minimum clang/llvm versions in our docs at
> > all, because we only mention gcc. Mayeb this would be good to clarify.
>
> Yeah, I think so, too.
>
> Are you planning on attending plumbers? I'm planning a session on
> talking about this more, which I think would be helpful.  What I
> really want is the CI people in the room, because I don't want to
> claim version X+ is supported if we don't have the CI coverage of it.
> Also, there's a few footnotes as to our compatibility table at the
> moment; completely missing backends, broken backends, targets we only
> got working recently, etc. etc. etc..  I also think we need to be
> delicate in the wording for what tools are required for building a
> kernel vs optional or substitutes.
>
> Will older versions of clang work? It's highly likely and we don't
> have a list of what if anything is actually broken with them.  But if
> we can get CI coverage for the latest release or two, I'm happy to
> commit to supporting just those.
>

"Kconfig: Build-time warning and minimum version requirement for Clang"

- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/issues/941

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXchP6O9auk5N2eE9MzCGHu32KJbGYpf8OYDB10ShDb8w%40mail.gmail.com.
