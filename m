Return-Path: <clang-built-linux+bncBCU73AEHRQBBBEPQ6D4QKGQECSSGMRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DEA248F91
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 22:20:35 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id x10sf23147466ybj.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 13:20:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597782034; cv=pass;
        d=google.com; s=arc-20160816;
        b=t3hRSrvF8sdqP/bGjmq0UzMb44OQDnTYVGHDkw08/TTtxo9xXcVifP9lT3QPdgVWc5
         /aln54JQ0YoMT6FLH694O0Ww+fRMb7Hx6dRlGKJYr96NclIDais+/ZXla0VqvV9LthDz
         qnNg71FuGxuTBDxCoeSd8DcZDdEMEot8z6IQZnsaNKDc43ecRz/Z6N/dRPyK4CenL0rv
         r1nXZYRjrk9MHkNvNpSqwy9qF5AA0/pbXVJU+gNkKdZMbdrBHDXrbSdJ4KA4stnd9bRN
         1lPzRk4TY2IM35DweCcirlk444nI1ZnQu7poOY8O5qIG5IkeKxMtvqqnYYlGozsVrV6W
         xsjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=f972YaUh3XRFSWGwY7Pihg/oYEPbNKMkA62cr6rqFtc=;
        b=k2xC7IapXmOfXYwK32cK2GDbuq5Jss4DDu9YOCCNjBzXi/yPifTSjwj7+6GpHGLfS8
         nLTxmiJrpdAnyOhyimKIxPT4GslMoupoDp65yoBwn9ocV9RTfNn3FMUueE94Z8lvU5Qo
         /jXVHAI6dOjo2qLsangc4dN1FOtHph7cJBA8RA4dX1Jm7P5+51/vDEAZhJU/eIil8uCk
         JxKRYLo9ML9fYk6vOwl6sjrbclGEg5D0TPEsb48fGLbJhUZ1ko+z/4BbmKDT7b4kerou
         gvDGUWoeJfqMB7D60M4I2eJIYot8zyq/9r8KoDS0vS9BJ7zTZwMvYCs5QJzU4R8tvcjr
         q+vA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=0tzg=b4=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=0TzG=B4=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f972YaUh3XRFSWGwY7Pihg/oYEPbNKMkA62cr6rqFtc=;
        b=M22FfYVyRKfczQcRtuMCk/z2BLvEjP+CwHldFpY97RmyVCkaJg+kT92XXaANjxkXmA
         dFh09av4JxC3+t1Oq8ybphNENpHtaw6po/c0vE3z0uJObFp3dojHBepgs0gsZC+Ot5pB
         OJ4pe0WAz0Dwm0sdITAHgf45xju4O+muWrX4ugbzlg9YKvAYG9jf4iRLh3R6RNF1I/cM
         nrFEo8c+SyLDFrNPaHxBRazAcSk0c3nIZS4nJI/vsl8EezsGAraYYcbGdM9VAhgc1LdI
         rd+X7Jyp4MpNwS7Id0HxwbdR7VcG7Og1ihaPNZMilfTlPZH+LBsiyB2Puqje10kSZ5pM
         a1DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f972YaUh3XRFSWGwY7Pihg/oYEPbNKMkA62cr6rqFtc=;
        b=citNVKd2ifKVMRpuZdzfUs8CfNnxLoWIHbLmFJ3PXNHEOS742k/BXNGkKO/fZCL4Ah
         qR2jPCmdosg8EulxCcU05IxLsklUm7zAx4TaNBgSIOavKE5E1DcHe/P4kY2HooMfr7JB
         UCaKJXdJSTSGn3xGh6wMB7FnwunqDf/ycBYeOsdBbk40jWX7fKLGLapsTxeO5z3NDqw+
         YlOhs74u4Ty2dtTAuUwtgH6wP3fuOPa4foHJHuRgAxR6zAADHa8gzKC8pY9Ho2cHdHsg
         B+CvXqPwvsKXALs73lFuKpdVBBU0/8s5XWzigt/okmWfII2hFKTuqv6B1ZKValA+3ldt
         khCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sIOdAs+xtywRVC6MJhjndhOhBX5gO7D2g37gLH+HsvdkTQWoO
	9SjYmasiBk0/3RBjdmB8Irc=
X-Google-Smtp-Source: ABdhPJzqg2T6s4QuS0ZVPPlN4ocB7viInKP1BXxiow8zjyJZEyArkeD0h2+u1p5n/4TY8p7qo3mD0Q==
X-Received: by 2002:a25:7007:: with SMTP id l7mr28969732ybc.85.1597782033743;
        Tue, 18 Aug 2020 13:20:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:70d:: with SMTP id k13ls3588929ybt.9.gmail; Tue, 18
 Aug 2020 13:20:33 -0700 (PDT)
X-Received: by 2002:a25:d0cb:: with SMTP id h194mr18603976ybg.187.1597782033360;
        Tue, 18 Aug 2020 13:20:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597782033; cv=none;
        d=google.com; s=arc-20160816;
        b=uY5Q3OPuC8LIu5cdsaxnXSdVMqEurVTdUtVqbmMc1Qzr+lJmfthYpgZ7ulZArCyXe9
         Do2HCQ6sBvvmlM3Xac92YnbLybacV0Dtd7g6em48En0ORdQ9rmmrzVRN1uF3wtG6wUSX
         DLiYMO9ISSqsCLRVwpCe8g9FLa0TwpAuijtvPQk0792h0a9wbHaZt4vuC9Cn+AY8Lc0W
         F+c0zKYfXkACq0VFfuvsbdz0ibDvhibUEYwbPqZKlcIDShJOwW1u/jGnubQ3Yu5CYtCN
         B5TT4WvAGm9tzfVZBsY+eb1sGXNcLemRKTKaKfb2PTzMHtN5bZqL7rc2uAth6K5RS6p/
         13cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=NSefHjcXX+xAM2zdHdMGcWlh6MN4FiTr44VXNHhIJKc=;
        b=keR35V5wOSljQSYbqig2SH1q29ntn9fb8ebe4jwU53ksjrJUEsOGOltHHpm8LzsmxP
         xlLxqSGBaxMLBmbQmY38Rr+T7ET25sFez1NsL/3iXxTQVeJTUECQg624OSvo5St6Aa27
         JQ7xabL5oD5ozhhezpy0L8vVRMDRSZPg2AOSMMvwo7zMCMqURgAea+b1ZmI1QcTwf390
         GYfhC1+Li/SvLKQRXLbNV7+pTzpbYoM7ZE80c0WLS5F5otPKZWiGcziaWnmMqx5zapMd
         1YXuWPoKEkQI6kXmJJq/Dlu9JWl4AqhDsjque7/ZuJRZPdZm5YwGNkk7KJCAc9TJEy0f
         UX/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=0tzg=b4=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=0TzG=B4=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 7si1364920ybc.0.2020.08.18.13.20.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 13:20:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=0tzg=b4=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 614D1206B5;
	Tue, 18 Aug 2020 20:20:31 +0000 (UTC)
Date: Tue, 18 Aug 2020 16:20:29 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Alex Dewar <alex.dewar90@gmail.com>, Ingo Molnar <mingo@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>, Dietmar Eggemann
 <dietmar.eggemann@arm.com>, Ben Segall <bsegall@google.com>, Mel Gorman
 <mgorman@suse.de>, LKML <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] sched/cputime: Mark function as __maybe_unused
Message-ID: <20200818162029.1692fc82@oasis.local.home>
In-Reply-To: <CAKwvOdn=32A4QumC_-Y8fJ29fqUPzPK0H_7-dn6rcsAT+O1xOw@mail.gmail.com>
References: <20200818170337.805624-1-alex.dewar90@gmail.com>
	<CAKwvOdk2fynn=-FGUniYLG+hCOkEFppRnAaTYe8DW=YRrT-siQ@mail.gmail.com>
	<20200818195746.scpjm3dlg7cfst53@medion>
	<CAKwvOdn=32A4QumC_-Y8fJ29fqUPzPK0H_7-dn6rcsAT+O1xOw@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=0tzg=b4=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=0TzG=B4=goodmis.org=rostedt@kernel.org"
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

On Tue, 18 Aug 2020 13:02:26 -0700
Nick Desaulniers <ndesaulniers@google.com> wrote:

> On Tue, Aug 18, 2020 at 12:57 PM Alex Dewar <alex.dewar90@gmail.com> wrote:
> >
> > On Tue, Aug 18, 2020 at 11:13:10AM -0700, Nick Desaulniers wrote:  
> > > On Tue, Aug 18, 2020 at 10:04 AM Alex Dewar <alex.dewar90@gmail.com> wrote:  
> > > >
> > > > Depending on config options, account_other_time() may not be called
> > > > anywhere. Add __maybe_unused flag to fix clang warning.  
> > >
> > > Just curious, would moving this definition to be within an existing
> > > preprocessor guard for a particular config also fix the issue? If so,
> > > prefer that. If not, __maybe_unused is the way to go.  
> >
> > I don't think that'd work here: it's used within an "#ifdef
> > CONFIG_IRQ_TIME_ACCOUNTING" block and a separate "#ifdef
> > CONFIG_VIRT_CPU_ACCOUNTING_GEN" one. We could do:
> >         #if defined(CONFIG_IRQ_TIME_ACCOUNTING) ||
> >             defined(CONFIG_VIRT_CPU_ACCOUNTING)
> >                 ...
> > ... but that might be a bit ugly.  
> 
> Yeah, ok, in that case it's fine.  One issue with __maybe_unused is
> that this function will stick around forever if all call sites get
> removed.  But when the preprocessor checks start getting hairy,
> __maybe_unused is maybe simpler.

For the reasons you state above, I'm almost thinking ugly may be better. :-/

But there's other places that have the "maybe_unused" in the scheduler
code for basically the same reasons, thus I guess it's OK.

Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

-- Steve


> Acked-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> >  
> > >  
> > > >
> > > > Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
> > > > ---
> > > >  kernel/sched/cputime.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/kernel/sched/cputime.c b/kernel/sched/cputime.c
> > > > index 5a55d2300452..43ede0d6661c 100644
> > > > --- a/kernel/sched/cputime.c
> > > > +++ b/kernel/sched/cputime.c
> > > > @@ -252,7 +252,7 @@ static __always_inline u64 steal_account_process_time(u64 maxtime)
> > > >  /*
> > > >   * Account how much elapsed time was spent in steal, irq, or softirq time.
> > > >   */
> > > > -static inline u64 account_other_time(u64 max)
> > > > +static inline u64 __maybe_unused account_other_time(u64 max)
> > > >  {
> > > >         u64 accounted;
> > > >
> > > > --
> > > > 2.28.0
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818170337.805624-1-alex.dewar90%40gmail.com.  
> > >
> > >
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers  
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818162029.1692fc82%40oasis.local.home.
