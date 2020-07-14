Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5PZWP4AKGQEEA3FHYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id F30F721E488
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 02:31:50 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id 14sf9305155ioz.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 17:31:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594686709; cv=pass;
        d=google.com; s=arc-20160816;
        b=M/mbT0vKZ16p0nutFmGc8CuzKmSj4AZQcjVJnmlIGNRC8bz4bWd465UHeaslaSMby2
         Cu/roaNrqRqsbjiyvfi9GFCa3IotBt8iBqf+NFCtEzSou4i/iIvyduu73pYotkvCXQBk
         PcLeGux02Y4RiYjKbHD2JM1Jblu16xJ307FSI4mho9N+RsZORvnzhUuI3YchcIlPM9EF
         M7gkAVWQWwrX7p0eZB+R8WZqJZpG77BpdJF3Hs6VPoW9UtQ+jyO9aullQcTS39Q5lKce
         tmve6P/7R9jqJyAfh0ORyTTRm5lqGttBxY10pFwslvTLAOLUlinq8J+N9wRC4Jtwge1t
         TezA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QxQW+IRd0ydEWC2D9CvFC/UeSl/gv1k99j4UquQzId8=;
        b=xxLpS9sZJMgaLwZT7IhFajvm5zoyN3eNJPd3lNdWaW6APxSIfypknZogb/83/vzZlm
         9Nx1e9X91zvsp3nEesJg4ZpqCpMdTDvDYH6SZInFmeXw00A9jIi7g3OmbJ2OMY0ZkLpv
         0aj9BHFN7D1QaWV/8SP+1faOI0Yt7UOWT574YrhG3rOEDAaF5tjjk0yzYOian7AqiaKf
         2AjZaNYzwTJ79ga2qqYIbHO5YtLWhR7xUnYnb7bTBYV9khZCDrN7XQrTBvF5RgV7BIs+
         ozJ1FWCaKR7VU933aqH3i+SavbqgsdbIWIgdFYXgtN1HgNbIFdI9DDsEBeMCCKIBigE/
         xRqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YokhtjvW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QxQW+IRd0ydEWC2D9CvFC/UeSl/gv1k99j4UquQzId8=;
        b=Hz7thgDS224iOT15/ZQM2H6OQgaEq7yWML+rrb6VBOhsiJaBaSEA1Oj5slC9wol+ql
         DlkaQYUAEg1r7c3vXODoHdXD2kgcrFwh24HxTuJ5TJTq9kAj2bueHVSHhnfS0CCD2e/S
         SaRGxJQSkKUAyPtg55CbU7XYlaUTQrn9nCFVsW2PMQyEkyW+84Lm/FrshLSwQV3JG9yK
         yeVgEZiMp5+5+XB+npl9ymYYcgr5Bu48TBpD6johCK/o7b7g5CSy6HMENvgfIm4BEcby
         OlHr6pim/NE7rTBv/nD+Cxxeqs/hKHZtOWIGgERuobgfhrcAnkYhfmO0Usoqbn85zerH
         pi9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QxQW+IRd0ydEWC2D9CvFC/UeSl/gv1k99j4UquQzId8=;
        b=RoWLIXqlX7Mit7PhpasL8hmPs+o34wlwaRdHmKTaP8+c+ENuI0svul6ExxjUBT6+mE
         1tSavzDs7bwmbhGyLAaq9l/WgLQNNlbyyTJm0Nu1gGKfnr2JUmNLDHaPZodFyIvyNCqE
         m9aBoMeHhmeQv8AxRfmnYxAnWDRVKYVFVg/RdBgxqydBpxEb+l1ETFV6TEzM6maQ5pOG
         wi3dBZmBnlpg5woN1y8btSruJcaZd+fRBDWSHoQjy5vkP5uQaFkXNaPC9vF2U/3uYOFH
         RY8Uquqg7mnzOkXup3czVqRshgwe9XB7CanYxprHpAEbTjxgsGYZd924FqMf5igQSJeV
         l/ug==
X-Gm-Message-State: AOAM532A3LWvKyiEjagIcR6gq1dqoylhEHDnBOv22qcr8TCga0jGs2eF
	49Wd96sdzANKIeHNqXfIihs=
X-Google-Smtp-Source: ABdhPJx2PMwHp5W8924Szg1S2z6Ja+/HjRVPC80Q8aEhKSIhZXnUyZTY+RYnd23IgNT9RmPnbQtUzA==
X-Received: by 2002:a92:a197:: with SMTP id b23mr2314598ill.58.1594686709651;
        Mon, 13 Jul 2020 17:31:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:bb4d:: with SMTP id w74ls4712734ili.6.gmail; Mon, 13 Jul
 2020 17:31:49 -0700 (PDT)
X-Received: by 2002:a92:d206:: with SMTP id y6mr2433205ily.162.1594686709184;
        Mon, 13 Jul 2020 17:31:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594686709; cv=none;
        d=google.com; s=arc-20160816;
        b=QyMJGwNdzwr9rrWlU4lGTJbO0U862BVNJ8QaahtmOO0kXmaZRitikXr1L3K2QNA1b/
         fYQqU/HQ9kKToS0emA/J5KoKsFmMc8ZBQbtiIUVzZFrXfhOFQg5GMifgmCcpB8iANDD8
         hx3weTxOih6lUxJ5XYVOvNCWUYwqsrcTQ0KG2Sx9VfL7vWh1fz/HfKexdJJRL8WjtsoR
         ycSbal7cN1v9vYREEOQWo3oojPFF7C8scy+BKxA53DGjKRSGnBLDox47Xe4yya/iezFU
         AfFsHnBzWkkpBLBGFqXTpPUhQEeBEixs+HIYTVIR35MTwIQhRgnOYZyqcUoNDQ8r0zzZ
         CKzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gXbjibloex9Ej+zvMmkc1BuBo3R6ne3Ak5/Lh9pJjV8=;
        b=JJ7nd0WUrbCC7KsXGi+D/c1OMDDsz8OY5dyQZAf14f1XDj/Tj2GtmIqeP7E5klx6RK
         dEgVUCtkNkqfScQVVMYtX5l70CXKFDTp9nmurabCV+NZq7MKMS8hmuDVBonO3PoBwpdX
         SunmX25hHVCFd9B99zt24DFNX46auYsX1s24NA1k4tFEmG5GndBqUEU6i82X8pcTvjrc
         tT7wm+0TYv28Ga6sgLFj1LQySQ9bUH1QbfI7pXR0UbnMst24h/WHlL1qw01wHYEejH0h
         UUiqkcVkZOCxFkoZ3z8+7YODaGbmt1uv8JkyE3Fstgul5qHGpU488uCrZMErxaWOYjLR
         n9zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YokhtjvW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id o15si875316ilg.3.2020.07.13.17.31.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 17:31:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id m9so6806293pfh.0
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 17:31:49 -0700 (PDT)
X-Received: by 2002:aa7:9303:: with SMTP id 3mr2091857pfj.108.1594686708106;
 Mon, 13 Jul 2020 17:31:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200530221127.459704-1-brgerst@gmail.com> <CAKwvOdn7Ugu_687b9CnOnL8RA9hbi+ONCb10gS=3VqtkTsmduw@mail.gmail.com>
 <CAKwvOdm4gMe_-DcB_H4mDGm8Yy++_7G20sg9xuZoom-rF2j1Sw@mail.gmail.com>
 <CAKwvOdmGtZtqF5f-5x0n4GNCWLOnrk2r6e3X2XHGmoOL7f7u0g@mail.gmail.com>
 <CAHk-=winDAeDTAe33QVoRvTJELMDjQpYPqSPcNwSk+SwPrav=g@mail.gmail.com> <CAKwvOdmsap8iB+H5JXiHYwSJFrtQ_krjNH7eQCGe7p-LjK7ftA@mail.gmail.com>
In-Reply-To: <CAKwvOdmsap8iB+H5JXiHYwSJFrtQ_krjNH7eQCGe7p-LjK7ftA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Jul 2020 17:31:35 -0700
Message-ID: <CAKwvOdm4Pc6J8_SurAwgHhG2bY7rALaUXo=fSeCLom+nSPw+4w@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] x86: Clean up percpu operations
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, Borislav Petkov <bp@alien8.de>, 
	LKML <linux-kernel@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H . Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Brian Gerst <brgerst@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>, 
	Steven Rostedt <rostedt@goodmis.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YokhtjvW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Mon, Jul 13, 2020 at 3:58 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Jul 13, 2020 at 3:40 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > On Mon, Jul 13, 2020 at 3:24 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > Otherwise, is there any additional feedback on this series or is it good to go?
> >
> > I've lost sight of the series. I'm sure it is fine, but maybe you can
> > resend it to me (in private, if it's already been going out on the
> > mailing lists and everybody else is completely fed up with it).
>
> Is there a fast way that maintainters amend ACKs to each commit in a series?

For future travelers (more so myself, since I don't sync my shell
history between machines, and I'm a big fan of aggressively sharing
knowledge. See also the section "Information as Power" and the
anecdote about tank manuals:
https://www.meforum.org/441/why-arabs-lose-wars). `b4` has a pretty
cool feature.  When I was fetching this series, it was warning:
```
NOTE: Some trailers were sent to the cover letter:
      Tested-by: Nick Desaulniers <ndesaulniers@google.com>
      Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
      Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
NOTE: Rerun with -t to apply them to all patches
```
So I did:
```
$ b4 am -t https://lore.kernel.org/lkml/CAKwvOdmsap8iB+H5JXiHYwSJFrtQ_krjNH7eQCGe7p-LjK7ftA@mail.gmail.com/T/\#t
-o - | git am
$ git filter-branch -f --msg-filter 'cat - && echo "Signed-off-by:
Nick Desaulniers <ndesaulniers@google.com>"" $@";' HEAD~10..HEAD

>
> >
> > And no, pointing to the "plus this hunk" with a web link isn't what I
> > was looking for ;)
>
> So you're not accepting pull requests yet on github? I jest.

Actually, looks like a lot of merged PRs come from github!  Grizzly
Adams *did* have a beard! https://www.youtube.com/watch?v=pdwJC9HvKLU

Sent as a series of emails via:
$ git format-patch -o linus_i386 HEAD~11
$ git send-email --to="Linus Torvalds <torvalds@linux-foundation.org>"
--suppress-cc=all linus_i386

Though, I'm sure a pull request would have been more formal.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm4Pc6J8_SurAwgHhG2bY7rALaUXo%3DfSeCLom%2BnSPw%2B4w%40mail.gmail.com.
