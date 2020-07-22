Return-Path: <clang-built-linux+bncBCU73AEHRQBBBUH44H4AKGQEAK5WOWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 54772229ED1
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 19:58:42 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id c2sf2277457pfj.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 10:58:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595440721; cv=pass;
        d=google.com; s=arc-20160816;
        b=KlwR2Fv35YIwX/2pr7rIOL7Pz1GOymJjmVUmPhXKFTdIR6qMxR0Etumb4LV0u39iAS
         OM8czs7l0FWU4xax0OobuIJYtXW+A6FTiLwHYsA5FSaeramT4XnKejNrhOv0D7TblKW+
         G9Xd3nYO0EmklRR8ZmBTYvpZqHvGH8yEafza8ZCrMqPB47KLsZ1gMcwpZa1Rq81KFUYQ
         I7xWdHHoMpC2PFf1JWeysvquVcNuBCV7PMHxRNWHPOOBTZELo26nMHNkqH9x2kJjw+oZ
         DJzCb5YeQNzu8R0C2LoCX+jYcW+GoPMyelm/8kGxRU2hqkK+AvEBInSub6wbWYSsXKUG
         GaOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=0aoe+qs6BZDH1qkniqdQOcgg0juvxju0wYUp8gQwrwQ=;
        b=IH5gjtRVudjgygcBS6xkKfJH0wiYhbaXz+YsTjuk0BjN96MKu122cZExdFvCxIm98h
         fZu+b3L5UHhfsKM2jd8fQZfLyg8JYb1RDTVNWakkuXiW1rFPsRQPwjMaSxJIy7HZ/0do
         KbtIZGc7ZkMabszPS2fMsba3uqpbvHEmIcv36O0QNSIIjeWJwda5fi32QOGfp/kbkD0h
         9FrtHtU+TMYzNNDIJZls5PVQg6d0tl4N/T44l2Ajp0HiQicETZsuLMrw2ztqKowZfW7B
         MU6vmI4+ND/pSTcYPGFRFBe07EpL22QsObghJQbeGLsFX6xv20wCNNan9rCpMPQPZj3f
         xmFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=kbms=bb=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kBmS=BB=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0aoe+qs6BZDH1qkniqdQOcgg0juvxju0wYUp8gQwrwQ=;
        b=diSTR+oyb/UeduBIGjMIY1H4SRiCZVdD6aFW+ZU2p6Io81MMVkmErkMWF31cEvMBNH
         cUzW3wrmwwi8Zy9gWCIb/ju8VfFcmWoay3Qvb80RV00Y1iAF3wEuzFhnE8zwfW8qIybi
         +Z80eI4AMJUnhY17ivCFyPV93PYdPsE6lUzL24WPlwHEDORS+icBvBer+5lbQeJWHb+a
         gaFbNJUMB6LGj1ag2J5JcFEu4cCvgVG3m1pOkJRVNwWMcRDOcHRxtl0yulrhug4w63Q3
         sNio7Sze0AwgL49++HGcz/RuESW/RFuBy3EsCs3l7IQC3KQM6sR2JH1j1RWeKMqfuLsJ
         XynA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0aoe+qs6BZDH1qkniqdQOcgg0juvxju0wYUp8gQwrwQ=;
        b=ZR5WWlOUBTOsvJfVWvd7D6XyZSXCw15bT/zVw2Ve5fkoLbxkmGMyklD19n47Z056hU
         syLqoq1ZVXnowhUlDzeiWveJU+DEMcIJG9HZhPbu4NeCYokW3Gmb1Ab0tz2XiY60MdIW
         M8Lgsgo7KtM27MNDwp16psMuTI1j8gVspmcaeIcU9jRPnSNOUJUqkP1x+g8FrK+3Xi1x
         4oiLLytgTRxQxRAaEZ+HC+wu8KjRWslK2mzz8go7sU19kWmm37mt4DQ3QyVRF9yxjE5U
         8AYRnv9ig0V3Ccs+lT/Vfm2T2BaqKA7ABDz3AmbkbL+KJx/4d9oAUCfuRii9QqvhoMzt
         Q7YQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Uvwy0h1DAi/V9P+c6tg29YdCwIPejRzPFpCYpIP1MghOHoi2x
	kw0iSJwEJWey9YggkxPJ4qs=
X-Google-Smtp-Source: ABdhPJxmOJd7HKylFSlOVpRYdYBMMFxZqvfdTKSe0ho0q1Q/RNSQ7Smn0jGJ0mf6cQn1bgJhUytTNA==
X-Received: by 2002:a17:90a:1342:: with SMTP id y2mr556907pjf.98.1595440720672;
        Wed, 22 Jul 2020 10:58:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3785:: with SMTP id mz5ls1280565pjb.1.gmail; Wed, 22
 Jul 2020 10:58:40 -0700 (PDT)
X-Received: by 2002:a17:902:2:: with SMTP id 2mr550759pla.288.1595440720187;
        Wed, 22 Jul 2020 10:58:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595440720; cv=none;
        d=google.com; s=arc-20160816;
        b=mp/2kApuJVO9GMK/mWZMt0dX6BZImgCosyftGkekPrGut0f6Lby4zNhAOw2ZA9LHwG
         vd/YSQQrdT0HE/0+SlsPFAFaldhQTOsmbYvHDQyckYDFfcgbNtQWW5c0koO5E5yRCukW
         bTg7ffwydr/xUwqPaxwn+3PdXGjkQfmYQj4ST27pdSkcysxCeaMRksuMkEQN8ZgxhhE9
         CD4iFIEDRBQKpoZDdNrch2EXpvkXxARLDDPDjAnUCy+5cOKx1vnVTYVbzo4jFIKbmRcC
         iBsS7cJ7W62wjGuh8yKvfkwfmunILQnFlQrd2UTxkCrFjFW1I3EW8CuhGci/8dzBUdHv
         7zVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=W2OAjV3xPwVZMyes/HQ95gYX51/dKuWvHqkEa2QTLxo=;
        b=y9IlbqGoi3Y75Anol8P+OzDX1QKclQe6VeiHgfuY+3WD33Jt737WBSNdwcdes9oD1N
         hdJrm753/Fc/GBOlugjjwsF+NdeFOBASjcK+GJ2U/icZ0jn559T+wDPNv0GsraayeW4q
         RXU+KeqgYXsNB/ULvfLTegEnOjVGU6rk2Uk3elrGZA3z68QaJZb+sF5M097F40DXbmYQ
         ftA1AjdJZafXLKEI+AbrB8VdomuIjhMhChk1ZLiIvdVY+vW0NDqaeX01rC0oo/BUSC0p
         m6xCxFQLmSwh62HT2FH/oySMBVaT4JD3cmHaF9t4wzRtDjlD6kTvfSGL5F1z+fJREhV/
         qz8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=kbms=bb=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kBmS=BB=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y197si5931pfc.4.2020.07.22.10.58.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Jul 2020 10:58:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=kbms=bb=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 59D79208E4;
	Wed, 22 Jul 2020 17:58:38 +0000 (UTC)
Date: Wed, 22 Jul 2020 13:58:36 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Masahiro Yamada
 <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, Kees
 Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Kernel Hardening
 <kernel-hardening@lists.openwall.com>, linux-arch
 <linux-arch@vger.kernel.org>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, linux-kbuild
 <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>, Josh Poimboeuf
 <jpoimboe@redhat.com>
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
Message-ID: <20200722135829.7ca6fbc5@oasis.local.home>
In-Reply-To: <CABCJKucDrS9wNZLjtmN5qMbZBTHLvB1Z7WqTwT3b11-K4kNcyg@mail.gmail.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
	<20200624203200.78870-5-samitolvanen@google.com>
	<20200624212737.GV4817@hirez.programming.kicks-ass.net>
	<20200624214530.GA120457@google.com>
	<20200625074530.GW4817@hirez.programming.kicks-ass.net>
	<20200625161503.GB173089@google.com>
	<20200625200235.GQ4781@hirez.programming.kicks-ass.net>
	<20200625224042.GA169781@google.com>
	<20200626112931.GF4817@hirez.programming.kicks-ass.net>
	<CABCJKucSM7gqWmUtiBPbr208wB0pc25afJXc6yBQzJDZf4LSWA@mail.gmail.com>
	<20200717133645.7816c0b6@oasis.local.home>
	<CABCJKuda0AFCZ-1J2NTLc-M0xax007a9u-fzOoxmU2z60jvzbA@mail.gmail.com>
	<20200717140545.6f008208@oasis.local.home>
	<CABCJKucDrS9wNZLjtmN5qMbZBTHLvB1Z7WqTwT3b11-K4kNcyg@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=kbms=bb=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kBmS=BB=goodmis.org=rostedt@kernel.org"
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

On Mon, 20 Jul 2020 09:52:37 -0700
Sami Tolvanen <samitolvanen@google.com> wrote:

> > Does x86 have a way to differentiate between the two that record mcount
> > can check?  
> 
> I'm not sure if looking at the relocation alone is sufficient on x86,
> we might also have to decode the instruction, which is what objtool
> does. Did you have any thoughts on Peter's patch, or my initial
> suggestion, which adds a __nomcount attribute to affected functions?

There's a lot of code in this thread. Can you give me the message-id of
Peter's patch in question.

Thanks,

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200722135829.7ca6fbc5%40oasis.local.home.
