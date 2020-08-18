Return-Path: <clang-built-linux+bncBDYM7YMH7QKBBPXF6D4QKGQEXBDHHSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id B8626248F24
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 21:57:50 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id 89sf8595701wrr.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 12:57:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597780670; cv=pass;
        d=google.com; s=arc-20160816;
        b=qLuLkG+H+VZRrUd6kdz8Cx8RF7pTHNLH6Uu7w8JKrtAlxChdrZwk6QQ3uCQFsSIo28
         LsSm5wNE9krwSAR3jTwXnLm41Aa1lUZ7IdH4nVoJY/oBtXJEcFBtGN9FE+cifSXe4RGK
         CtzSgEbp2hDZk7mmyafEFWvIRmgXjlFI0qopCkIbX9j5XVCcXdrReQwvzrdC1Q5KqsXx
         82CxmA2huhsW9GSaHMLIt9YPMogZBk4mI60hQ5/Qi9HxBquYTl6wLKMkdPBSqBO6un41
         xr2kGTjGKRl72zGea9oOqrBxDkWFXxvUu5HYt/Zke68qb9U5W9PzirCkGRmBdRpXLoRm
         ENsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=DsTTaBDINvAK5d52stvQ0fvOG08Qv4RvR4bCVtNhv2g=;
        b=KSzPatejRYLfqsoEZdaaYLqTcUTk2cEp5djIxONS+UPz3cxKj0gQ//dwEZC/v8FYOq
         RWUraHcSIc2iKJHvWe+XBYCtabTPtFQdInr1S7tXmVLuNi0stAWwcnAC6K7JMutUL1Oo
         rP6ZmvGRJY9Ad60qqQ4L0NSie8si9V6JSqe6yvHgXM9+02wvSLyd08uu4vnSF56aArmN
         uA70bBiB3PKtk7gzXbkdsl0/mNrXFwRcG1gn337u1OFl7VgW1j2AYFcF3SfSLh0yX1Zf
         1LLG6D9/yVnbDZGzgiPtO82mU7OIhQNa3PDAnM7DqE2Mp7zu6SFpeCDDFI0naegVjfQ7
         ZU+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BX341iTD;
       spf=pass (google.com: domain of alex.dewar90@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=alex.dewar90@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DsTTaBDINvAK5d52stvQ0fvOG08Qv4RvR4bCVtNhv2g=;
        b=l09aHkO1ZyuHlVwiSfQyV6vSimFhjegdpIamOeve1kGy7ecJqUq/etYuNnjGLNK/ok
         ze7H/A+6rL5D7LBGoh+KwIWecj4kXvLakem2RntH0/1fHUb6FMbpPYWZY5mNqOBGoofl
         ksoNWg1cDNBd8rbbYY47PDd8nxW4S0aFxDBM7id9qGsQrYZvq+VjY/7qkgRp1zIZaOh1
         GPOXpJnVnuyUBU/gZwr8rRjqu9gBOsKWH6XLY2Oh60M9H134mBTSpGAlvx6mEykvqAJn
         SuVtJWT7BnG6+7gXM1cYFxZTC8N6aO5pxfPKo+zt0dO2KfB6nNViiEabDdnyMsjWwxKS
         udqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DsTTaBDINvAK5d52stvQ0fvOG08Qv4RvR4bCVtNhv2g=;
        b=af4vlDIORe33aDpAdMGcsTABg3lWWFsZsEKBJsQpGEEoWxgeKQU+2RlaZhOZXvP/Z0
         VDcGkA22QvtTW5q7zn3AIcmlpzzMS65KwnXplrXtpltjfNazdvH93FJe5gZlXrxs2i73
         +xVoaQ0Z7qGAYFtWuq5WG4mHAtSFAllLrAr1pptcLMgoMpoHTWIVvSPHnXlpOPsH0q2u
         9f1ELIuiLrfCXar03HlK3ihxRq5afdXqzQxGxG+K3bYFQIrQNmurbnOlKIM6A5CJ4nEj
         I5Hjmb6R+BU2S/UaID6RNK4NTJlE/CRiohGRo1B0hLtP0ZMRLQSJ25nwpJ/mQKcVsoPX
         WyBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DsTTaBDINvAK5d52stvQ0fvOG08Qv4RvR4bCVtNhv2g=;
        b=L5SB5NaHRCY25GDCseidapEsIBNj7r4dxgX6HHl6Wn3GhMRCEwKYuN1MbNsaMmkHlc
         iC/ZlKWzYtUfFjDr+Ek0ZicUNQT5AgKnVRrzwZB7Sf2b82jxQgvuSg4tKu4D+onSWIXK
         bSPPgnO5eBzsLS6FikyscQvwt+kOnulKF0krJTgpPSpaMGXRDZ9uxVboApwG/DpLLHsS
         tjOLTsb/9KMOcce9anMpT6oTs+LwqW7qZEDspsR05SfY815K5fSkaBAUOkvnSXsJdKkK
         3vDeot1b55PDx22qYZ7PM/fWyXeaOk9Y2fWsVsXgJuTAUbwvt+tr8nn1pjQg+vyN+Cpk
         bg/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533BBM9Gf6mDyccz+Zquzb39oYcO7p1l6ako+vAdX7D8iOuXwbUf
	9Ztlb0nYB7k4PKcmHdy1xAo=
X-Google-Smtp-Source: ABdhPJyl1buCQOCqQO6drYpKVzsMC/HsOb94qmVkA9BA3eblKJnL5KCBkyzsSN305+M3MyzL7AVkLA==
X-Received: by 2002:a5d:4701:: with SMTP id y1mr22456231wrq.416.1597780670498;
        Tue, 18 Aug 2020 12:57:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:b787:: with SMTP id h129ls580523wmf.3.canary-gmail; Tue,
 18 Aug 2020 12:57:49 -0700 (PDT)
X-Received: by 2002:a7b:cf0c:: with SMTP id l12mr1457392wmg.77.1597780669742;
        Tue, 18 Aug 2020 12:57:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597780669; cv=none;
        d=google.com; s=arc-20160816;
        b=WX4P8jWJyZUifn4Zn42/n/iWIKxa67MWs+0eNudBBko5CngDgx9MzJgmubupEg40MQ
         iLF8qXzH9v1Vl0foHrB8jQowb1xFvvS1cDK3Ugz1D+uAle1FzbL1RFhK/og18scmwgCd
         i577BcwvOp+kw9M8OlB2In22gMbIt9q6nwfXiwBcKHRZf5Vt2UshWxXhGaNs5jMgfy3v
         Ye/Y27P4Oct6A/l7EkZcjgkjIv59y7Vk0fQ4ZHgJWLyXf2zRyCIx/fei2a1idlQTS8xU
         DdwPu1vaO/KHHuLXbDL+QAbzCO7Qqskz39CVPCK83knZVBCdCvG0Zq3ZPOgEQJBJG4Jf
         bhuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:dkim-signature;
        bh=7Z4r92eghHfjUZjZIQSRYab2MsQQwQr8sHxL2zxeLTw=;
        b=OISGBeiKF/wlRsHOFCY8NI/bWmjL88Yr6nsArPaWQl9TgCZvyu5JSfXP+QhzHHuOxP
         2PPWOumXbs1hQ+aJtp/nYL49xszLdK7uVOZBCxtkfGFawyd/te9c5z/g14uWNc3QxZVQ
         9eZgtMiq7cxr9nYrDBtuu+gtp+o3pMbqAjuew0ldkQM0dcm18OsMRrN0ejd3yFQHKMLD
         jjJleIL/tOef3ZXm+bcVTJwhpuO2omZ3kJ3KIlwz+2T/BfWT2QvClGLj2TRHZA6fJ5B5
         pd43zr15zbSJiiRvoybpiBgQ2cRSNIywEzMbVwaGgcYoUcNxTqlCjLaN9UqiNiBUWR22
         T6TA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BX341iTD;
       spf=pass (google.com: domain of alex.dewar90@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=alex.dewar90@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id i11si870335wra.3.2020.08.18.12.57.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 12:57:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of alex.dewar90@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id g75so61780wme.4
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 12:57:49 -0700 (PDT)
X-Received: by 2002:a1c:720d:: with SMTP id n13mr1412706wmc.103.1597780669429;
        Tue, 18 Aug 2020 12:57:49 -0700 (PDT)
Received: from medion (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
        by smtp.gmail.com with ESMTPSA id z15sm37289369wrn.89.2020.08.18.12.57.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2020 12:57:48 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
Date: Tue, 18 Aug 2020 20:57:46 +0100
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Alex Dewar <alex.dewar90@gmail.com>, Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ben Segall <bsegall@google.com>, Mel Gorman <mgorman@suse.de>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] sched/cputime: Mark function as __maybe_unused
Message-ID: <20200818195746.scpjm3dlg7cfst53@medion>
References: <20200818170337.805624-1-alex.dewar90@gmail.com>
 <CAKwvOdk2fynn=-FGUniYLG+hCOkEFppRnAaTYe8DW=YRrT-siQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk2fynn=-FGUniYLG+hCOkEFppRnAaTYe8DW=YRrT-siQ@mail.gmail.com>
X-Original-Sender: alex.dewar90@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BX341iTD;       spf=pass
 (google.com: domain of alex.dewar90@gmail.com designates 2a00:1450:4864:20::344
 as permitted sender) smtp.mailfrom=alex.dewar90@gmail.com;       dmarc=pass
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

On Tue, Aug 18, 2020 at 11:13:10AM -0700, Nick Desaulniers wrote:
> On Tue, Aug 18, 2020 at 10:04 AM Alex Dewar <alex.dewar90@gmail.com> wrote:
> >
> > Depending on config options, account_other_time() may not be called
> > anywhere. Add __maybe_unused flag to fix clang warning.
> 
> Just curious, would moving this definition to be within an existing
> preprocessor guard for a particular config also fix the issue? If so,
> prefer that. If not, __maybe_unused is the way to go.

I don't think that'd work here: it's used within an "#ifdef
CONFIG_IRQ_TIME_ACCOUNTING" block and a separate "#ifdef
CONFIG_VIRT_CPU_ACCOUNTING_GEN" one. We could do:
	#if defined(CONFIG_IRQ_TIME_ACCOUNTING) ||
	    defined(CONFIG_VIRT_CPU_ACCOUNTING)
		...
... but that might be a bit ugly.

> 
> >
> > Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
> > ---
> >  kernel/sched/cputime.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/kernel/sched/cputime.c b/kernel/sched/cputime.c
> > index 5a55d2300452..43ede0d6661c 100644
> > --- a/kernel/sched/cputime.c
> > +++ b/kernel/sched/cputime.c
> > @@ -252,7 +252,7 @@ static __always_inline u64 steal_account_process_time(u64 maxtime)
> >  /*
> >   * Account how much elapsed time was spent in steal, irq, or softirq time.
> >   */
> > -static inline u64 account_other_time(u64 max)
> > +static inline u64 __maybe_unused account_other_time(u64 max)
> >  {
> >         u64 accounted;
> >
> > --
> > 2.28.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818170337.805624-1-alex.dewar90%40gmail.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818195746.scpjm3dlg7cfst53%40medion.
