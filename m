Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBGWR42BAMGQEHQUACHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6033459D9
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 09:36:42 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id i5sf775687wrp.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 01:36:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616488602; cv=pass;
        d=google.com; s=arc-20160816;
        b=nsd47Pp7LH7if9UtdZ3z2yzCpBmOQoGWHIpuixBwj6u97x5+Hn2pf6DenK/hOEaR06
         5oM6YyCYHE0YPojEvfBMwzsgADCArAaIyalQvIJuvZvvQTLQc0cIn7gDxbLW+NVPZfrv
         C/xAZkl9+/9rS66RFbHj+aUxk9641mJbhoDp9o6AIuHUMHX/dVS4CogBPlMlcbsLEHgj
         UNhVEyhetoZq0QUr56LvIbnhZtIMKyGrHGba8qwOPo9kwH4qGENN9Nkh4NJFsA/y/LbC
         crW4uBYBy6wHkzW6XThrVZinhDM3fr6bgPmOSmOLvWAldwCSJcLHIiS3xrVDjRsJNSyN
         0A/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zx94k2SgmPFupKg2w4uR7v+cyGQatHYQJt5E4zUKng8=;
        b=J8LB9Ok+19KYWFfnM8X+/LNNzfQO1brozH0P4KHHsJh/a5U2HYtxMl0eHl1uwxOprU
         15K2lwv/VZV5vcRw9+gENmIcpqbkKaUI4TQk1jNkhQOT/Tldc60OhH6HvSEFwr07GPVt
         vEjHB5ElYFhhfWINtv/4bb9hThodw54JnV2kKKeTh3NmUwGx3ZQAe7fpqEVtuiPhGJbo
         N7WZxrLQoHdd2tNte9kceS66AJPhE2eQS55hFUL8QZY8OIO0tUoSzmtJmseR15oiwhfy
         vWT+Jr5TJ0DuMIOCH4HEIyGEkYYNrKxTuu/cd1JSolyC52W6gLm/jItO62c8pvghlv4U
         gbRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=YwmtcrEb;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zx94k2SgmPFupKg2w4uR7v+cyGQatHYQJt5E4zUKng8=;
        b=mv6XaCylQUYs4KZumYn6hcE5U6u3YA1ljuAdkRpL48JsMeloHRROct7oM3QOUwC94t
         Hetq9n+oxvL+ELsz+MEuib5923hdT8d8ThEEy4Clamqqxa4PTAXwNWnyE/t7/F+44og2
         LpP3PRgo8l6zZCw/hFag990xVve/ILaWmiLpo2VC0aH1NyMsw+ou8fKvyZGHmvXoaGRw
         cmbs6PF0GhW5yTRPhWOOrI9cBElSQv3V65shf1FJRID5ldLLBB6DRcQza4If1ZIjszzX
         ffxcZWVK4j3sdkSfmL2i9rDYrRFwpOyYGqizhTef/Hq6TLdm5DL0+muVQhcY77lkFJ6N
         adBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zx94k2SgmPFupKg2w4uR7v+cyGQatHYQJt5E4zUKng8=;
        b=A6i4v44tVwAkbagfjl6c2WsB8dYZKpZ1TQqnuBVbJEhAICgBkX1WT5Q+An5pwiR1Wk
         YYqW+T/sG6qG4p6tU8YbHA6EeH+tuQxz6B1GH+OPTr6xat+fGCWFX/359lBshYHT6sP2
         HUqzfPEBJhELnWflg6+VrbSHB9qCr9bm5NPybFKvWaK8mPpMtb1OtVa7t5oPFr8V53UP
         2pwXoj3hb+p37mDaWSV3jRtsyF65ZEUJ/icHjwYTfp0Cq5PZPNHRYlLh8AfrhxVQNlD6
         LKr8xoXhYC8Hv2c4vGfPsEEXh3aQMppcEACCjsvVIUXVuHSc/p29DDrcj8i4+/tisgs8
         khHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53249XM0d60e/5EaKJqUkKlqxH2stSkyAiojMTHCxUU5eXVvrCtw
	wlzECLJCKcGJX8eXpjJ5fDE=
X-Google-Smtp-Source: ABdhPJzIR5/6FXFrnSNCx2ElNtkwEECx8IfhFk5zXHsgApkwFO4G9EolXH3j+J2Imb7n7Oo1tEfMDg==
X-Received: by 2002:adf:f44b:: with SMTP id f11mr2744617wrp.345.1616488602459;
        Tue, 23 Mar 2021 01:36:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cc94:: with SMTP id p20ls847074wma.0.gmail; Tue, 23 Mar
 2021 01:36:41 -0700 (PDT)
X-Received: by 2002:a1c:e4d4:: with SMTP id b203mr2086570wmh.105.1616488601611;
        Tue, 23 Mar 2021 01:36:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616488601; cv=none;
        d=google.com; s=arc-20160816;
        b=QBsbiEeyXDn+Uz/UFN2ffyvYpR2TG/JXhEK9KYbPT1MXVOVyUqwrImvBJNQuVEqZkE
         /Q2lvHhdPAO/XYpjvW0RdbjfHzI4dDCuO+SX0J8TTl8X7Z/8P0GrZt+rE/XBV4GWtlvf
         HVOv6CZEdN04ybMgDa220QE6Jt6DVld5AjzfYVhRMDamzPP3gHdXIbvG5V1jJSyCxL7y
         /NPPxXTFWgTW0z3I5dWRTEIYdPYhf9Sj+v1DqnOh5PyGzEJEcxqqcaqDEQOY0S7rkr3r
         SMHDqPCbaPS3natfiR4YLZteKW8lc1ViByV+zyoxHyRg94rojzxPCFtudnx7ugZb29RS
         Gx5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qlhQPBaQEBeGYpPwGIv0CzgbxC4aZMUy7lh8txA84Ss=;
        b=QN5iTKSNHgly/NuuCoptaO8L9n4OD39szgyoWVCKKSDd0aSfUq34b69awUfu0tslPT
         k25YJVIAOn+JzsPwxSCY6ewBoupxCRNzUZva2ip+ItVlC/2xkQDFgZboREFqi5d7ip39
         lp9jHB2QOWXAjXTUUdZZhykVAxfSSwVknxiZQKf++ndsMbrzgrXvLU9/o7wiV8gPPgWN
         8K4p19Hr8IheckfK06aFv7N7NW2CZHF2CjdsQ/6E7gdsmQZFGGguO8xLPQTcYAn5noDs
         E2g6HcBN98kttkWVYk2zhY/4knI2hHV94ntH5FV3mc/Y/BwsNwMi95WqTKDAVIR7VX63
         0qYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=YwmtcrEb;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id c9si120952wml.2.2021.03.23.01.36.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 01:36:41 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lOcVN-009mlr-U8; Tue, 23 Mar 2021 08:35:21 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 257583059C6;
	Tue, 23 Mar 2021 09:35:11 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id E5BA92BCFBCCF; Tue, 23 Mar 2021 09:35:10 +0100 (CET)
Date: Tue, 23 Mar 2021 09:35:10 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	"Jose E. Marchesi" <jemarch@gnu.org>,
	Kees Cook <keescook@chromium.org>,
	Florian Weimer <fweimer@redhat.com>,
	Christian Brauner <christian.brauner@canonical.com>,
	nick.alcock@oracle.com,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>, Will Deacon <will@kernel.org>,
	andrew.cooper3@citrix.com
Subject: Re: Plumbers CF MCs
Message-ID: <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=YwmtcrEb;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Mar 22, 2021 at 01:23:03PM -0700, Nick Desaulniers wrote:
> Hi all,
> I saw plumbers opened call for microconferences:
> https://www.linuxplumbersconf.org/blog/2021/index.php/2021/03/18/cfp-open-microconferences/
> 
> I was going to put together a submission; do we want to do a combined
> toolchain MC, or have distinct ones this year?
> 
> I know in 2020 the GNU cauldron was co-located with Plumbers, as well
> as a GNU Tools Track MC and LLVM MC.

A combined MC focussed on kernel issues seems very interesting. We still
have the control dependency (volatile-if?) thing pending. We had a bit
of a discussion on that after last year, but I don't think anything
really came of that, can we pick that up? Ideally a compiler person does
an actual proposal for this year.

If we can sort that, there's the rest of the dependencies Will outlined
:-)

Then there seemed to be people that thought __always_inline was a
suggestion... I think we need to explore how that was ever possible.

There's the endless UB debate... can we define more to reduce the UB? I
mean, we're already bound by architecture ABI on the one hand, and
actual use on the other. It would be so very nice to be able to get more
-fwrapv and -fno-strict-aliasing knobs that define UBs away.

There also is talk about straight line speculation mitigations. for x86
we should probably emit an INT3 after every JMP and RET. Although this
might not be controversial and be sorted by the time Plumbers happens.

There was some talk about how compilers could help objtool make sense of
jump tables.

GCC's status on asm-goto with outputs?

Clang's getting asm-constraints wrong ("rm" and it always picks "m").


And I'm sure there was more..

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFmoPpb5w4q1dWXz%40hirez.programming.kicks-ass.net.
