Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAF6S3VQKGQEKK3W7LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0440A9F501
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 23:22:10 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id 125sf176239vsr.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 14:22:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566940928; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yfk/z3bvgs/1hyeInC6H1lqoE0iP0dV55bgjLso0psqxYNSjSNmF1/qkbqLncL2Ywg
         QHGERV1Bnd93Wq0IAfJyVjg/2yeI0vQqObPS7okX/9iP+9+shyRofgF1VQ9UDfJ+rGh6
         Bt5UJa77YoqLpgPpWR444eQfsG+SkS0k49hvghvlUrp0LY9qjdfpP8Sht0VhSOpmyXof
         DQYAQ6GCzLRWrJKi1H2kwJwjzvksWLMd+K+y2DPt/kL61uQ8EBxGKc2G6qzC/O3TSuXy
         g+kPx3UdQUVlB+QHune0F8UybWxfGtgg6KQUDpG08ka3Ft2zTtZY54/qh3N22l3bHSUF
         hx6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UZTKW5UUYqLmWBmFprhq6dwVhq7OE73741MI/vGysxg=;
        b=tbMPYjFvogAd8i9IT76IhmS20xx/qH1/VexdMPr8EQp19aVHSqqcLIwqVFqGUlHga8
         +Wjtq1Xrw28QpbxKpSmaPklnRd8aVu0VteIGX4NxXwJm2q/mNEw6R5ZXnFqWBiIgY7nh
         pn2GVKJTb6B8aFFPdqppE9/NEP3Ux/XGW2LuQzGDGArOmO54GqndptLwxl6/IDeqYvgM
         qKiSSPfUE6NY6MA6FuqSqwSFQSJVWgbDS3W+0t3mVB3nMW1B9A9URDqLH8TXR3KKQ11Z
         6/9QL6X8zhMqBb0nO/4qBljP5yI0lH/7Tbk1qhxlT1dEG957urRQsqDWLvjbLzBtHYTY
         i+0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="gAE8FH7/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UZTKW5UUYqLmWBmFprhq6dwVhq7OE73741MI/vGysxg=;
        b=G0uyJDzTjDwAmMaztrifNM/kh+RRlsFOm+5aGAoZeUU93ipmWtRRXB+HFO91ygBKy4
         gPCfGdicMio98OKKjNqw/u0htMP6pLmVyyQ8mcbG0EZoDHSAtiQDa8zObg+KwzJbgNGL
         /mFmaPrEcrYHOZKbPRrAB2/KArQXgFaqbzQ9X++P6x1mSf3aMmeJskWSXAkwIH5t7ABS
         LI2HdpIvFrK0bn4d3vc6a/WD0chj4/0bd/7zFPjcOKxExmNKrb7a+2OnQmg41BBWoWfD
         rJfa33C5oMIb5duy5LzYnwlH9qi9IStdQcpoRSmd1q0ES1tT4ccVw9k0KW8aPKFEZ5I3
         n5eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UZTKW5UUYqLmWBmFprhq6dwVhq7OE73741MI/vGysxg=;
        b=lvpYPavzJnJRLp9bXXgqjwKYCsB4Ux5UxdNbOBX+p6GIdUpz3xwaAZdiRP6Y0h2P+G
         7D4SCQSOCzjg3sdSdIRKQYeofVQ9grtXIcMq/IEvbvfPxTwRs2p3Wmwa603H9PecXt4J
         lHlwR7+yBRT6uB23fuiYrRTfMJR38B+WVXjE7romGwEJ/vBMpVgcHMdO/tYGBr0tPmVN
         phe0OCSJqUGJtmpW7L/MQ1rbgcdgb4SmV1sSKFzNBkY47SvqT4B9RyF10iXLjr+w/+fF
         LOwjgCwTxthvpAtqHOobJcxTRpv8NgsUOcoD73FmdIq9ACchqiN6JIfrdSjXkJNtcRtV
         1irg==
X-Gm-Message-State: APjAAAWllWwPqbC8XMgKoQ4KcfZQx7o+OOHK1ePJdFmL3MCHCnmGd2Os
	t9AWhuMgvpqvEyWdjF8fnQY=
X-Google-Smtp-Source: APXvYqzGjnHkzMgQxx1No1tzy/aG4TRsKPr6cNhWSFkbE0DRQoaYJS1gUeD7DGFT6e+djFLU4vp/QA==
X-Received: by 2002:ab0:6586:: with SMTP id v6mr202989uam.39.1566940928725;
        Tue, 27 Aug 2019 14:22:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5e54:: with SMTP id a20ls18244uah.9.gmail; Tue, 27 Aug
 2019 14:22:08 -0700 (PDT)
X-Received: by 2002:ab0:6883:: with SMTP id t3mr232350uar.104.1566940928412;
        Tue, 27 Aug 2019 14:22:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566940928; cv=none;
        d=google.com; s=arc-20160816;
        b=xUe083EleqwzKlAJY7h29pnblLl/ZvbliYjDOg1uJxC3oc0kDoN9Y3uU2wr9JX4bf4
         uGjjE5tedCOXEQntczXLXrfNO7SN3Cujz24gtHLYrAqVxJXA3qc1VmiOOF92+JHTzG8d
         fNOBKSNETHynOvib/Q70j1jmsJGbxCdt2VpEE5jZqQldamZExiyDMowvNqcweXJh9U/8
         mXYbvtC3+igAe0NEi5TINN+Zwg0X8DR5gaVFww3z0du0CHJj/h/i1uvpyap5uGeV0OV4
         gY13FN2FiDwHLYuELLI14YMSiW8iegtaDQcQIvd953S7BWHK/7xV0ieCS+60QcgwFswb
         RXWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O1z6VpcSd91TgNv63C1N9bD4011GqrrTxI2d3i0YxOQ=;
        b=g6GcSemHR8RsSyu9k5Cz5+KDy1O7e658AsQ3Odh2YC4MBAkt17ddhd+JDjkr8OogW5
         3uYQfbcp7kQ9F0ebdg+F67V77nYWLX8nofnbQtYRULWF7SOzStSWwPb4p4BOrQZE213l
         4PLA3FX1Mib05t+3C5B3Vh5bsWNkGEuM9ZQkfwwL7q/ahGR65fZG1iG0OyFvF/ksjUFL
         Hi0m+yGJYdPL5uO+QAkzrVe7HZLV4SGwpYpklbXKLb/a0BsLUAHGc/h2h7c2EeXXwwRT
         uZBrFgmMpMUFcZzd9PVgkkD6nqxGiqhXW85uTubr+VK20XfjcurinOYXpf5mzDp2kUHS
         E4aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="gAE8FH7/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id u189si37486vkb.2.2019.08.27.14.22.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 14:22:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id d85so227889pfd.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 14:22:08 -0700 (PDT)
X-Received: by 2002:a17:90a:c20f:: with SMTP id e15mr759269pjt.123.1566940927003;
 Tue, 27 Aug 2019 14:22:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
 <20190827145102.p7lmkpytf3mngxbj@treble> <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble> <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
In-Reply-To: <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Aug 2019 14:21:55 -0700
Message-ID: <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Arnd Bergmann <arnd@arndb.de>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="gAE8FH7/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Tue, Aug 27, 2019 at 12:47 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Tue, Aug 27, 2019 at 9:23 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > On Tue, Aug 27, 2019 at 09:00:52PM +0200, Arnd Bergmann wrote:
> > > On Tue, Aug 27, 2019 at 5:00 PM Ilie Halip <ilie.halip@gmail.com> wrote:
> > > >
> > > > > > $ clang-9 -c  crc32.i  -O2   ; objtool check  crc32.o
> > > > > > crc32.o: warning: objtool: fn1 uses BP as a scratch register
> > > >
> > > > Yes, I see it too. https://godbolt.org/z/N56HW1
> > > >
> > > > > Do you still see this warning with -fno-omit-frame-pointer (assuming
> > > > > clang has that option)?
> > > >
> > > > Using this makes the warning go away. Running objtool with --no-fp
> > > > also gets rid of it.
> > >
> > > I still see the warning after adding back the -fno-omit-frame-pointer
> > > in my reduced test case:
> > >
> > > $ clang-9 -c  crc32.i -Werror -Wno-address-of-packed-member -Wall
> > > -Wno-pointer-sign -Wno-unused-value -Wno-constant-logical-operand -O2
> > > -Wno-unused -fno-omit-frame-pointer
> > > $ objtool check  crc32.o
> > > crc32.o: warning: objtool: fn1 uses BP as a scratch register
> >
> > This warning most likely means that clang is clobbering RBP in leaf
> > functions.  With -fno-omit-frame-pointer, leaf functions don't need to
> > set up the frame pointer, but they at least need to leave RBP untouched,
> > so that an interrupts/exceptions can unwind through the function.
>
> Yes, that clearly matches what I see in the output where it does
>
>    0: 55                    push   %rbp
> ...
>   73: 0f b6 ef              movzbl %bh,%ebp
>   76: 8b 1c 99              mov    (%rcx,%rbx,4),%ebx
>   79: 33 1c aa              xor    (%rdx,%rbp,4),%ebx
> ...
>   95: 5d                    pop    %rbp
>   96: c3                    retq
>
> I just did another simple test: an x86-64 defconfig build with
> UNWINDER_FRAME_POINTER shows the exact symptom as
> my randconfig, so it sounds like any configuration with frame
> pointers would, and there is nothing else to it (this also makes
> sense given that it happens with a relatively simple test case
> outside of the kernel).
>
>        Arnd

Thanks for the description of the issue and the reduced test case.  It
almost reminds me of
https://github.com/ClangBuiltLinux/linux/issues/612.

I've filed https://bugs.llvm.org/show_bug.cgi?id=43128, anything I
should add to the bug report?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg%40mail.gmail.com.
