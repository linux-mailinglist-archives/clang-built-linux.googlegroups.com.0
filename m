Return-Path: <clang-built-linux+bncBDY3NC743AGBB4FRRLZQKGQEZQFY43I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id F298217C585
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 19:39:45 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id s11sf4660460ywk.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 10:39:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583519984; cv=pass;
        d=google.com; s=arc-20160816;
        b=wVP6FVVdrfat0gJjmIJyK6CHA/fzAQv6RU9s2xT02dauumW9NCp+ESDwAkoD/Gtfe0
         g6jO66qnwsLEvznsK3HbDVfbB+Dab25DofLkrCQV083cc1+Nq2bJOtcGioZ/ae7Xa1Rj
         fZpPNhtLYdaPqTWffuNF++286EUP3quUXf76MHNCfJvHtQIAoYNVjTEjqBTcdqYrzy65
         Y0qQk1CAB/a+oMV7EcuvUmr1pvO27RO4qYYgoZdR4ktLgqdVaBHFi2rgy4XWqNGTVr3s
         iwkwY3RlwOPOshC4Vm2yNjHYlJMFLUYBrJEq1iihYKDU1SuB1NZthrEidxWzsJaAePSf
         9aEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=/VkM/9y8fDZ5nNaPUkZTNIbJyP2EBfOLMdfkNSZtTmA=;
        b=VmepHzBrxiGOjg4Mf4TiCWCGQJoD3xHrIRFHPofMuS9fERb8BBCLjvlla77BGcXef0
         dnuhFkPQltnfuiGZfVIA9Z3VesFbL+M7v5ZVV4QDqeDh6ajHFxt3MoVRI5+ehYdyrHp5
         Tb0v4wthmZ5MutbkcFqM6C9pS25MiY1I6oJQcI/YyiSCrp9RBZetuYxviRc/JK+SLVJU
         1Dr49JRMu8LhJNs6CWjWd+psz08BkncaJ6fVRAJj90ipTAeJzXCsPKRv9Z/YujorB8i7
         Lat5drNzBj6MdhePwRHGGzgAh6C8eJ8UFiVNoI/MnxHwzhMsGV1xix2261dlaKRlE9pQ
         BxTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.191 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/VkM/9y8fDZ5nNaPUkZTNIbJyP2EBfOLMdfkNSZtTmA=;
        b=P1tR1OCS9/uvpIO3vb3svI8qXBUoqB5zoLFQJUrSsK+xNrMJ9MeEBXeiCC6cjtL4d8
         08qC0irCi1QmtrR20TrnwCDXjBXH6UYOqul7wqhaiWf1nn2/PSKxCumLKBPnfGz5oSUN
         aTDG07RGzD/+zjfHTbbgAeTptBeP5Tf7J3ypJsIgHX3Bi6uK5szkY2tgJvcwO16QK6mj
         vs+onYvUyF2Mn7vT/Y7/mlCn+A4SN7yUxJNZNMgq5CxONY6obPUDMYGJMsK6igU3spCo
         u7h7YvXs9tajP+9V7dnQAHcffU0UjVvmW8FW3eTfc5XHmaE8++v0U303Lj3zY/UagRak
         druA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/VkM/9y8fDZ5nNaPUkZTNIbJyP2EBfOLMdfkNSZtTmA=;
        b=sT/SNpWzcKruKHwEbzzumQ47qnDlELoQX+rZxtERYQTUCF43hya/I3CHF4SL1TtNXL
         ba9uBM7tN/j8eRnxZJ1SqJf0NPB2/AM7FPmejzbgTb5cTRlYiJ1TuztHWfDRy8YZP0A1
         n2rErxBRq7MwHit0mRXGglwBeZik3x2ORHbE3CAPgLvgWUdYkKA1wFYZzjuPUwdr6+Mv
         4gV5OZ6VUyanNm5nb0GFehSkGLsOMpbPESMLFPtGWmiwRJMgDFhYqIzBpKW0O8PJBpVB
         A68bhFuyonTxcMtIAR3mZYtCcn+rzUFPAzBpDhsMoy6xHtTezFCwm38EyYQl5ci/YW3J
         JIXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2FGKnm7HdJxc8YXhZa9+0Qp8aGuiNVtk8Pxy0cmm6N4Sb1LmAb
	6RH0MPlQLxUBod9XLoy6dwY=
X-Google-Smtp-Source: ADFU+vsDOsRXd6jInB1Dc672peKq35Qn/hiEtRsKSrC/an9OCK+/pFuEKmHbRMY/+8g5mxAyO1+g+Q==
X-Received: by 2002:a25:ec0d:: with SMTP id j13mr5605979ybh.518.1583519984729;
        Fri, 06 Mar 2020 10:39:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c102:: with SMTP id r2ls765763ybf.5.gmail; Fri, 06 Mar
 2020 10:39:44 -0800 (PST)
X-Received: by 2002:a25:cc8a:: with SMTP id l132mr5237364ybf.178.1583519984339;
        Fri, 06 Mar 2020 10:39:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583519984; cv=none;
        d=google.com; s=arc-20160816;
        b=MLbB09weTTW2vodelyK1zPuZcRFAq+3wvft1mUMXcM0q1SkY0ODJvNYzXp83D8aXRb
         VPhP3UvDDfm6BqZ0lsf9WOVsnYScdh50+EXGl/ow0y7ev5AFHqKzk48j1fuqIL4Cdy1h
         4ZgboprggkQIhLK71czOuK8jtolbMqF9YdcsFrJhtM9rJ0Au8h2a60S4V9vCrKF4BuuS
         kHxTRYLUqoj3k6BohJ8GIlZRFaGsKp7fp6Lsc4PFr1Igmq99BB65p8Bwpbvis+VlOXm9
         gONmL22Tafls7FMfrfIomKitQR/kuf4/cpz+23q6YJ8SGDTEb99HLzfIoXTSDLpXqeFb
         KfZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=J3xSzlHDX1B3xOfCJ4MzRwiGCYS6r0Vd8jj67/wJquY=;
        b=qalmhQr3VnJHhuCQX/hC0leQVXSksTy7Wi+u6Q5aEd47V9YnyFA7oqoW8tHx2PHNN6
         4PwyRpij/kdD8Rx/rlDq/x8HjJ6jhbwn1dp36Pd0OP2STb7o1orM895czXcULVCs0n3G
         JdzW4tTQ9U5YQWJnARDLQFBZ7s+jOCObIjdHT92k3FZZ6udecF1W6BcM5lCPYq4EgqRu
         Y73lnMw5LbC3ou5/5r9LJ1vVcbQiB1lch4LGQe5Am9A7X9L0TXGyOq0D+TAVAedvdP8w
         sZumMm/Xyak880X07DpFl1/KbVB7iyYQ7Wh2SmdGDNElLM9HQCyCA62g5ApvHqJxsdn8
         eGkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.191 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0191.hostedemail.com. [216.40.44.191])
        by gmr-mx.google.com with ESMTPS id b130si213967ywe.2.2020.03.06.10.39.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2020 10:39:44 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.191 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.191;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id B38C5837F24A;
	Fri,  6 Mar 2020 18:39:43 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1543:1593:1594:1605:1711:1730:1747:1777:1792:2393:2553:2559:2562:2693:2828:3138:3139:3140:3141:3142:3622:3653:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:5007:6691:7808:7903:8660:10004:10400:10848:11026:11232:11473:11658:11914:12043:12297:12438:12663:12740:12760:12895:13148:13230:13439:14181:14659:14721:21080:21324:21433:21450:21451:21627:21660:21939:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: iron74_8edbf580f4f45
X-Filterd-Recvd-Size: 4410
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf12.hostedemail.com (Postfix) with ESMTPA;
	Fri,  6 Mar 2020 18:39:41 +0000 (UTC)
Message-ID: <442b7ace85a414c6a01040368f05d6d219f86536.camel@perches.com>
Subject: Re: [PATCH] sched/cputime: silence a -Wunused-function warning
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Qian Cai <cai@lca.pw>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	juri.lelli@redhat.com, Vincent Guittot <vincent.guittot@linaro.org>, 
	dietmar.eggemann@arm.com, Steven Rostedt <rostedt@goodmis.org>, 
	bsegall@google.com, mgorman@suse.de, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Date: Fri, 06 Mar 2020 10:38:06 -0800
In-Reply-To: <a7503afc9d561ae9c7116b97c7a960d7ad5cbff9.camel@perches.com>
References: <1583509304-28508-1-git-send-email-cai@lca.pw>
	 <CAKwvOd=V44ksbiffN5UYw-oVfTK_wdeP59ipWANkOUS_zavxew@mail.gmail.com>
	 <a7503afc9d561ae9c7116b97c7a960d7ad5cbff9.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.191 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Fri, 2020-03-06 at 09:25 -0800, Joe Perches wrote:
> On Fri, 2020-03-06 at 09:13 -0800, Nick Desaulniers wrote:
> > On Fri, Mar 6, 2020 at 7:42 AM Qian Cai <cai@lca.pw> wrote:
> > > account_other_time() is only used when CONFIG_IRQ_TIME_ACCOUNTING=y (in
> > > irqtime_account_process_tick()) or CONFIG_VIRT_CPU_ACCOUNTING_GEN=y (in
> > > get_vtime_delta()). When both are off, it will generate a compilation
> > > warning from Clang,
> > > 
> > > kernel/sched/cputime.c:255:19: warning: unused function
> > > 'account_other_time' [-Wunused-function]
> > > static inline u64 account_other_time(u64 max)
> > > 
> > > Rather than wrapping around this function with a macro expression,
> > > 
> > >  if defined(CONFIG_IRQ_TIME_ACCOUNTING) || \
> > >     defined(CONFIG_VIRT_CPU_ACCOUNTING_GEN)
> > > 
> > > just use __maybe_unused for this small function which seems like a good
> > > trade-off.
> > 
> > Generally, I'm not a fan of __maybe_unused.  It is a tool in the
> > toolbox for solving this issue, but it's my least favorite.  Should
> > the call sites be eliminated, this may mask an unused and entirely
> > dead function from being removed.  Preprocessor guards based on config
> > give more context into *why* a particular function may be unused.
> > 
> > So let's take a look at the call sites of account_other_time().  Looks
> > like irqtime_account_process_tick() (guarded by
> > CONFIG_IRQ_TIME_ACCOUNTING) and get_vtime_delta() (guarded by
> > CONFIG_VIRT_CPU_ACCOUNTING_GEN).  If it were one config guard, then I
> > would prefer to move the definition to be within the same guard, just
> > before the function definition that calls it, but we have a more
> > complicated case here.
> > 
> > The next thing I'd check to see is if there's a dependency between
> > configs.  In this case, both CONFIG_IRQ_TIME_ACCOUNTING and
> > CONFIG_VIRT_CPU_ACCOUNTING_GEN are defined in init/Kconfig.  In this
> > case there's also no dependency between configs, so specifying one
> > doesn't imply the other; so guarding on one of the two configs is also
> > not an option.
> > 
> > So, as much as I'm not a fan of __maybe_unused, it is indeed the
> > simplest option.  Though, I'd still prefer the ifdef you describe
> > instead, maybe the maintainers can provide guidance/preference?
> 
> Another option might be to move static inline functions
> where possible to an #include file (like sched.h) but the
> same possible dead function issue would still exist.

Turns out there are hundreds of unused static inline
functions in kernel .h files.

A trivial script to find some of them (with likely
false positives as some might actually be used via ##
token pasting mechanisms).

(and there's almost certainly a better way to do this
 too as it takes a _very_ long time to run)

$ grep-2.5.4 -rP --include=*.h '^[ \t]*static\s+inline\s+(?:\w+\s+){1,3}\w+[ \t]*\(' * | \
  grep -P -oh '\w+\s*\(' | \
  sort | uniq -c | sort -n | grep -P '^\s+1\b' | \
  sed -r -e 's/^\s+1\s+//' -e 's/\(//' | \
  while read line ; do \
    echo -n "$line: " ; git grep -w $line | wc -l ; \
  done | \
  grep ": 1$"


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/442b7ace85a414c6a01040368f05d6d219f86536.camel%40perches.com.
