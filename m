Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXXH6D4QKGQEV3CIKCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id E0592248F4D
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 22:02:39 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id lx6sf23514pjb.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 13:02:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597780958; cv=pass;
        d=google.com; s=arc-20160816;
        b=ihWFq4fAVxLpIhsAXaJchKn8rvOyOLgHFmbewVmyp0t5yA3Q8Wev7gPAUy0pUenTFT
         IFXKbUg3u9o7Fw6SN8vlmH8Cg65lJCVpYzVm50jJmThVMmM3b+UnkQaaW9ga0qqVYnor
         +Ytq+3Gk7FBOFjWb2nzi9bXSWHFkEi7qn3d5H2eHPeUtQ+oq1kL3YT80B4kD2ncGYxs7
         XjyHfs22UFgQ02iXnog+Eew4DNOv7bsDTMEiQr3TblDlNdsqgSclTgkKVGIupD0HYYoA
         mj/ZH4MVHm8WVa0v8UG6Mjqk/d2BBNqbFasSS7xzfC/BK1OtpFnbwoVU5BKGa8PDTz7F
         DEIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=W18kplnFRykyKROZ9qnSrxZgw/8pNzH5dDjYE1b297g=;
        b=zhXPPwykaL7ZmQGWpx3O06GnNtYwHzaXCiO8M33koqQ5mbd8ppLcU242f+T9IbOZ4B
         XVd/PYXy47cPQ9XNZyxlpKdszdeuCx+qiohDbuSt9kZacsvpxBsdKxSUFQe9BD2xseSZ
         9YW/C4VHgOF6rHnVQ0rjWgM+YaY8bPQNlqLt6xkrCyzXX8gY3c7fcYWYaGoMcoocwuPK
         z9mcvXsMMwycZhsPNGvDlopqFFpmGfwFtafhs/VbV0ZQhiNJtCekcWyYmpeTTIB5O9QC
         IT5L547IndNy7N/XxlFfI1RpTWB1W0xS+MXyo0J6Cz9AesX676M+z+uEYCFpy4l3vUEE
         B1+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gsHA1THP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W18kplnFRykyKROZ9qnSrxZgw/8pNzH5dDjYE1b297g=;
        b=RSqvraaHXHiBYxE3aubjFsSckmDCd4jaXfOZOWdtiglSYrmdxE/zqC+Xl9xDy0Deia
         SpYF58HZGbO9wm66Df4tjxKjxhPO6kyVHRXfSMzuFb5cYlQ8O6i4aJOHdl2rMduDwIYq
         Gz9e90Sg+YQ0rTPfT7LFthwCwDnft8qTJayOayvfAthJnRkhdZJxcHpOpMqQNdCymPsq
         7rCW0Y+/+7D4Grs1WeZkhZ58NHXjmhaYbDgOLyAZoPheSmQIw5rCdwTP0NVFTDrRJlfW
         ZEsUhlOmXaPXoyKcJejxdOvn+BiWZ6u9XmIyOIJpWT1/T4SHKnSAm7dbRfUoRtYmyb5z
         A5fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W18kplnFRykyKROZ9qnSrxZgw/8pNzH5dDjYE1b297g=;
        b=WwjnaoExIBb8HJeOABVqnMOxhcNIWsaeHGgzMULYSV78gTichWZ08YzNZKIxlDEUNA
         gjc0YLa4+wi0VbwhJlsgl2xo2FQHIBlY3ds7cqZGKcXfqpxbE3EQiBs5h0FKxxLEDd7H
         8wIzEdJIykYlEtrMIQSwNkOoWhZeTHNkfiDI4fabsqABFJgtTu3QhMc7X5Iugp2eBAOs
         m+b1/2IXDs6mpadIu/FN6XzP2GB/Y1vgIPSh9yr3J3toFSGWNJ7JC8D9YXhNrgV/kdul
         rI8qA0ULPiV4Blp30NryAcay5oILWpH5ANvsA8LQuOzywEYky60pN47Gi1fn+CuvT2UH
         5VdA==
X-Gm-Message-State: AOAM531Z6roWq3AT1et5XcBX5o8Hqwcy9f/xwm25uKgmXgKvCnnge+Ey
	nyqb26/CLR6plPl328T15iQ=
X-Google-Smtp-Source: ABdhPJxX7QKL44qeGEaUFFi3PfDpaWqQRSCaipGEEQkPx1ci0kRz3O+lifqEcO5o50RTWuGmHbpZXA==
X-Received: by 2002:aa7:9f10:: with SMTP id g16mr16321699pfr.148.1597780958306;
        Tue, 18 Aug 2020 13:02:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:4ec4:: with SMTP id c187ls7475287pfb.7.gmail; Tue, 18
 Aug 2020 13:02:38 -0700 (PDT)
X-Received: by 2002:a62:5b07:: with SMTP id p7mr16677289pfb.326.1597780957915;
        Tue, 18 Aug 2020 13:02:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597780957; cv=none;
        d=google.com; s=arc-20160816;
        b=ucAMhE3SxDnajSCgYqWmLu3IJ3hO6qS9xt9vmXglIdwxt/KIudTqqmhGP+8VXN4usS
         XFkmUTPsAtGiWlzINjnwko7CiSspyK+DX49P2sWRpNUmj66oBJUcB3Un9qjQfz+4cAbU
         OmiJcKU0KUWz2ZRABB2AyZRw8XzJWbgUH092FaflqsuxAJ0EP12ld7wCHPgYLOwvjMtu
         Pku8W3xaXflaEFOnxqfOaSyws7XyFxe2QQoVOFJtUonJxuYBNL9BELEkRe2FEUPZ3wKo
         KgU184QoDgP+zVQe6TTUkNH1CE38GPLC+05DDFy0OFEX7irfdILHkG97IlUpLzAgWMu4
         hksw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bYlwdkpiQ5r4IlzlVf3XVoN723S4ZkSGimNU1q1QEv0=;
        b=EBBu25Edhko+KbnJ6areJVnNYUkpDoeaOh5GpFf2EcXbIgTxRgRxXI8CScYDJlBfBX
         p+10rpkUtdr0TH8LwbByhEhf5AkpuYYjkKVCYryItJeedlM2wRPRpDMWmrpLn94W8PAh
         Zcy3WAs57rzNYT8fuQ7XleiNC+USA8A9xo20Su0ykzoTkMEyaZlMgkyy+MV5/FEOsim2
         YnvTdmHdQaR77qiw8+iZBbBNNK0c2p3ucnmLxyagsfDJam1iqKToawKDeCSbrLaREAQN
         8nIDt9gzy/nScgadxk0JVj7RXmln4jSxiHzRfFfGW1dKJXt7UyKlfjar/PflGUp3WqBl
         praw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gsHA1THP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id j4si57188pjd.0.2020.08.18.13.02.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 13:02:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id m8so10507305pfh.3
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 13:02:37 -0700 (PDT)
X-Received: by 2002:aa7:96e5:: with SMTP id i5mr13565872pfq.108.1597780957364;
 Tue, 18 Aug 2020 13:02:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200818170337.805624-1-alex.dewar90@gmail.com>
 <CAKwvOdk2fynn=-FGUniYLG+hCOkEFppRnAaTYe8DW=YRrT-siQ@mail.gmail.com> <20200818195746.scpjm3dlg7cfst53@medion>
In-Reply-To: <20200818195746.scpjm3dlg7cfst53@medion>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 18 Aug 2020 13:02:26 -0700
Message-ID: <CAKwvOdn=32A4QumC_-Y8fJ29fqUPzPK0H_7-dn6rcsAT+O1xOw@mail.gmail.com>
Subject: Re: [PATCH] sched/cputime: Mark function as __maybe_unused
To: Alex Dewar <alex.dewar90@gmail.com>
Cc: Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>, 
	Dietmar Eggemann <dietmar.eggemann@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ben Segall <bsegall@google.com>, Mel Gorman <mgorman@suse.de>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gsHA1THP;       spf=pass
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

On Tue, Aug 18, 2020 at 12:57 PM Alex Dewar <alex.dewar90@gmail.com> wrote:
>
> On Tue, Aug 18, 2020 at 11:13:10AM -0700, Nick Desaulniers wrote:
> > On Tue, Aug 18, 2020 at 10:04 AM Alex Dewar <alex.dewar90@gmail.com> wrote:
> > >
> > > Depending on config options, account_other_time() may not be called
> > > anywhere. Add __maybe_unused flag to fix clang warning.
> >
> > Just curious, would moving this definition to be within an existing
> > preprocessor guard for a particular config also fix the issue? If so,
> > prefer that. If not, __maybe_unused is the way to go.
>
> I don't think that'd work here: it's used within an "#ifdef
> CONFIG_IRQ_TIME_ACCOUNTING" block and a separate "#ifdef
> CONFIG_VIRT_CPU_ACCOUNTING_GEN" one. We could do:
>         #if defined(CONFIG_IRQ_TIME_ACCOUNTING) ||
>             defined(CONFIG_VIRT_CPU_ACCOUNTING)
>                 ...
> ... but that might be a bit ugly.

Yeah, ok, in that case it's fine.  One issue with __maybe_unused is
that this function will stick around forever if all call sites get
removed.  But when the preprocessor checks start getting hairy,
__maybe_unused is maybe simpler.
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

>
> >
> > >
> > > Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
> > > ---
> > >  kernel/sched/cputime.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/kernel/sched/cputime.c b/kernel/sched/cputime.c
> > > index 5a55d2300452..43ede0d6661c 100644
> > > --- a/kernel/sched/cputime.c
> > > +++ b/kernel/sched/cputime.c
> > > @@ -252,7 +252,7 @@ static __always_inline u64 steal_account_process_time(u64 maxtime)
> > >  /*
> > >   * Account how much elapsed time was spent in steal, irq, or softirq time.
> > >   */
> > > -static inline u64 account_other_time(u64 max)
> > > +static inline u64 __maybe_unused account_other_time(u64 max)
> > >  {
> > >         u64 accounted;
> > >
> > > --
> > > 2.28.0
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818170337.805624-1-alex.dewar90%40gmail.com.
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn%3D32A4QumC_-Y8fJ29fqUPzPK0H_7-dn6rcsAT%2BO1xOw%40mail.gmail.com.
