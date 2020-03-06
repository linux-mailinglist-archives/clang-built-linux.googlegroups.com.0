Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP54RLZQKGQEEI36MEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEA917C5DA
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 20:02:25 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id bg1sf1923109plb.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 11:02:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583521344; cv=pass;
        d=google.com; s=arc-20160816;
        b=f5bBhSi8Ll6UO5hYYBXQxHPt51lksyQ+vX/JFtMThKhzebkWmxS+5M3ZsgjKXCnLvJ
         YEjZYCwZoiC4sCaSTayqdqA39hLC2rJZOG5TtWxErwluhH74NIMOhZ5Q9CZH8SziHQSZ
         2JaDve+mXUqbHRB8gtXjKtqN9I4DpcIEmfr5qgVi+FzWPTc2dLSXn/b2yTgLPN2xIWKN
         So0wPzyZ8a2ENE9+q16msbvpDZ+GaWjfeAYrXUKyvDTtlD3MECjB+hP3vWBIqWASJIMe
         9+aOKXzKiv+70Z1hBJxAGGRT/5SUv+Liu/yzMolvfWaeOJ+twoPqXzUnBODG40XaTcAP
         LANw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4kQQbhFSpz+YuOjTRN1lIUV+zu940yR2sWrqWbISI4c=;
        b=O+2Mc6v3bkWrUdvJ0RzFkeiXIsgVX2XMOCc4mh2ehu/Q+3bVriqGY60BOykTJEQcWx
         bDhfSVGxQurBqGluqFn2Ih7YQ0lCWOJ+BMqeuUOhJv0lFNJ/ufk0vvekzLKQNfTccfBq
         y6X1neREG8iJ4QGoSsMiWOfrhqvpi0j84h/GAQnB9lyF5/yaQmWs86kwi7cPhKNJZMLU
         21HXUCWnlhOfMaKj2lDMQBHoT6xhkoYW3l7hCz0mc2gO9LqU9ww6o2A8bw1enUsOz0lU
         Y11tMIuyPu3Dd7aWqYdKzp6bgmaapVryGFCOHcU7PnAP7fag+sy+RK6jbCKdgUgxHRrj
         4O3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=osjh9JH2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4kQQbhFSpz+YuOjTRN1lIUV+zu940yR2sWrqWbISI4c=;
        b=Jsxusq473F+SAzdadlp6npyiljYNVsMvehSu3L1o0v+Q4UPnt7nsqOq4TOrAdVSBfr
         yrA676KPb75Tmd2x6rDag8FrtTeiZqaX80lJvm3sK7Wbfcqck2AAAPfPQW49WgFYTl6n
         GoGpCa9zBEi9eYrb44LMCnjUj7g+AiZf345JiWPcPIH2rCsTKPW87GMxRxmD+8jqaRDk
         ZIxUFsF3Sos4YVOzXaX422x+ICst1+Ejv2c5prxzzq4zi7AlROEDdyXDMjz75OTzEDDn
         RQ3nzkZJfpdiRAFQY+mqyi+uE4bI304pSrcTXtxOiL9IpJEw5JLTGb1aI9efn7SkLReR
         kwBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4kQQbhFSpz+YuOjTRN1lIUV+zu940yR2sWrqWbISI4c=;
        b=kex+z1VFHaFeEh5oKu47B6gk+efAdLeXK63fijSMFBIO5DUDVvyZSadwytA2bHZ+1b
         yjOYSmwt3tIFKgsMEAcmub81/JksCyxmdx/DP06P4ViaUSC4+omXZPW1g50Ok8j3EU28
         8T9HLFtzLpmQW+bXtgduXrY+J2FL2yibWyM3mEI6SgJCzSL4vpErd+1JHl2S33mpU8kH
         pm93HiIHYQ4M7g++TISDZubdo06A2uKqlUCbeE/KJgAzqoTQffiZkFQtkRONB82yc7s2
         gr9fzKLZcBI3E00QWNAdoNg9idCBbZJDlTTf5sIVXIXY2sNnvkkQi2OYz3f6QRGxJXvZ
         v+fg==
X-Gm-Message-State: ANhLgQ3n8/jI/yVDQQDr3862FadzkgE6PJ57wG383/LJlliX3yy5haO6
	yhTAFtPfp+m0XMPcI9dR/9A=
X-Google-Smtp-Source: ADFU+vsxMnrTHrTR1zUE/z8G1MCPyeFq+x8m5ankpre9nSzuOWuwScpEcVisk3pRQviggwgGxYHLhg==
X-Received: by 2002:a63:4d6:: with SMTP id 205mr4586999pge.10.1583521343948;
        Fri, 06 Mar 2020 11:02:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8343:: with SMTP id z3ls1353700pln.11.gmail; Fri, 06
 Mar 2020 11:02:23 -0800 (PST)
X-Received: by 2002:a17:902:82c1:: with SMTP id u1mr4242749plz.113.1583521343428;
        Fri, 06 Mar 2020 11:02:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583521343; cv=none;
        d=google.com; s=arc-20160816;
        b=Nso3cfov0lLueBc1VB3SUo6QOwQVh4c6ylrqt3xvx+y0lhJzYD3CcfnDcACV+91pj0
         eblO/6upGDTBfW3QJw4PVEmKePOHcVPcXRK4iIyK4llXXWq3Jfltn258s2aN/vZ/V1ya
         0yZdkre3bWIjOfZYiu6RLreBX03FP3BCDkKl168fgSd1H+AGrQxlEhc/16nyQjR3Fx53
         qfv10lhLnfxLMNlAxfTLF0KbCVaDRBxpPjUjiUDz6ulID7csUyDSn9Ao0ZHYqYbnoeg1
         aO71VqfkoGIUmsLoSp2LiV3vgaFCdX3LaLKW6VNCOVJ8q+1bkfc1Lopi/SGzxIl/TojD
         gkRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PG9kODOHccMTE4D+yCjI/R04MIPmgOaBfAQnemBNwSk=;
        b=DOuGJxgUthzGB/bSnxKiGIEmkzzNP8k1p7QLTIm2ktymZ7yG9yINvy56F7Bxo3ma+q
         60wdgkbpLZhHiC+zLRa9T2scjEEN2zw9W3nrs7Lb7VtkqsW+38a+aHJ1Avym2Auq1l9Y
         V9K+WxPgTyNaKG7p39rjXYrfdV9GtciUUfE30qGztRE+QptuSrp0eYyX3La8iAYgi/9e
         nx/VPqd9kj85Mc/tTRkHAsFyTp9JUmMWlpMCibhd8CgeQ349QVwhmFRHzG0+6OS12fTJ
         kfY1Nv9IbqH1s5F/4g9sIL/kie2h69POHsGkenXc4ZOev2NX29j6n7VO01/M1H+6aFJA
         LWiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=osjh9JH2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id q197si210058pfc.5.2020.03.06.11.02.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2020 11:02:23 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id y1so1235743plp.7
        for <clang-built-linux@googlegroups.com>; Fri, 06 Mar 2020 11:02:23 -0800 (PST)
X-Received: by 2002:a17:90a:1f8d:: with SMTP id x13mr5132336pja.27.1583521342662;
 Fri, 06 Mar 2020 11:02:22 -0800 (PST)
MIME-Version: 1.0
References: <1583509304-28508-1-git-send-email-cai@lca.pw> <CAKwvOd=V44ksbiffN5UYw-oVfTK_wdeP59ipWANkOUS_zavxew@mail.gmail.com>
 <a7503afc9d561ae9c7116b97c7a960d7ad5cbff9.camel@perches.com> <442b7ace85a414c6a01040368f05d6d219f86536.camel@perches.com>
In-Reply-To: <442b7ace85a414c6a01040368f05d6d219f86536.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Mar 2020 11:02:11 -0800
Message-ID: <CAKwvOdmdaDL4bhJc+7Xms=f4YXDw-Rr+WQAknd0Jv6UWOBUcEA@mail.gmail.com>
Subject: Re: [PATCH] sched/cputime: silence a -Wunused-function warning
To: Joe Perches <joe@perches.com>
Cc: Qian Cai <cai@lca.pw>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	juri.lelli@redhat.com, Vincent Guittot <vincent.guittot@linaro.org>, 
	dietmar.eggemann@arm.com, Steven Rostedt <rostedt@goodmis.org>, 
	Benjamin Segall <bsegall@google.com>, mgorman@suse.de, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=osjh9JH2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Fri, Mar 6, 2020 at 10:39 AM Joe Perches <joe@perches.com> wrote:
>
> On Fri, 2020-03-06 at 09:25 -0800, Joe Perches wrote:
> > On Fri, 2020-03-06 at 09:13 -0800, Nick Desaulniers wrote:
> > > On Fri, Mar 6, 2020 at 7:42 AM Qian Cai <cai@lca.pw> wrote:
> > > > account_other_time() is only used when CONFIG_IRQ_TIME_ACCOUNTING=y (in
> > > > irqtime_account_process_tick()) or CONFIG_VIRT_CPU_ACCOUNTING_GEN=y (in
> > > > get_vtime_delta()). When both are off, it will generate a compilation
> > > > warning from Clang,
> > > >
> > > > kernel/sched/cputime.c:255:19: warning: unused function
> > > > 'account_other_time' [-Wunused-function]
> > > > static inline u64 account_other_time(u64 max)
> > > >
> > > > Rather than wrapping around this function with a macro expression,
> > > >
> > > >  if defined(CONFIG_IRQ_TIME_ACCOUNTING) || \
> > > >     defined(CONFIG_VIRT_CPU_ACCOUNTING_GEN)
> > > >
> > > > just use __maybe_unused for this small function which seems like a good
> > > > trade-off.
> > >
> > > Generally, I'm not a fan of __maybe_unused.  It is a tool in the
> > > toolbox for solving this issue, but it's my least favorite.  Should
> > > the call sites be eliminated, this may mask an unused and entirely
> > > dead function from being removed.  Preprocessor guards based on config
> > > give more context into *why* a particular function may be unused.
> > >
> > > So let's take a look at the call sites of account_other_time().  Looks
> > > like irqtime_account_process_tick() (guarded by
> > > CONFIG_IRQ_TIME_ACCOUNTING) and get_vtime_delta() (guarded by
> > > CONFIG_VIRT_CPU_ACCOUNTING_GEN).  If it were one config guard, then I
> > > would prefer to move the definition to be within the same guard, just
> > > before the function definition that calls it, but we have a more
> > > complicated case here.
> > >
> > > The next thing I'd check to see is if there's a dependency between
> > > configs.  In this case, both CONFIG_IRQ_TIME_ACCOUNTING and
> > > CONFIG_VIRT_CPU_ACCOUNTING_GEN are defined in init/Kconfig.  In this
> > > case there's also no dependency between configs, so specifying one
> > > doesn't imply the other; so guarding on one of the two configs is also
> > > not an option.
> > >
> > > So, as much as I'm not a fan of __maybe_unused, it is indeed the
> > > simplest option.  Though, I'd still prefer the ifdef you describe
> > > instead, maybe the maintainers can provide guidance/preference?
> >
> > Another option might be to move static inline functions
> > where possible to an #include file (like sched.h) but the
> > same possible dead function issue would still exist.
>
> Turns out there are hundreds of unused static inline
> functions in kernel .h files.
>
> A trivial script to find some of them (with likely
> false positives as some might actually be used via ##
> token pasting mechanisms).
>
> (and there's almost certainly a better way to do this
>  too as it takes a _very_ long time to run)
>
> $ grep-2.5.4 -rP --include=*.h '^[ \t]*static\s+inline\s+(?:\w+\s+){1,3}\w+[ \t]*\(' * | \
>   grep -P -oh '\w+\s*\(' | \
>   sort | uniq -c | sort -n | grep -P '^\s+1\b' | \
>   sed -r -e 's/^\s+1\s+//' -e 's/\(//' | \
>   while read line ; do \
>     echo -n "$line: " ; git grep -w $line | wc -l ; \
>   done | \
>   grep ": 1$"

Please start sending patches to remove them and I'll review.  If this
is a good amount of work, I have newbies that are looking to
contribute and can help.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmdaDL4bhJc%2B7Xms%3Df4YXDw-Rr%2BWQAknd0Jv6UWOBUcEA%40mail.gmail.com.
