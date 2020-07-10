Return-Path: <clang-built-linux+bncBCS7XUWOUULBBWHDUP4AKGQEY4POEZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DCF21C02E
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 00:55:22 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id t18sf4377670plo.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 15:55:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594421721; cv=pass;
        d=google.com; s=arc-20160816;
        b=xugHpwVSQofRz3db+ZLRf5YiZ/UMOFGVPch5hLBDTH9gegxdNwWaNJ0n4HCISYSDL7
         3DzPIsNC/Anl4PVBAS4O/6Q7Xeok4xsoLrvj3Yfc1H1S7GMcQHSTdYqsqkqkZqlzqDEg
         +lP2jgyzgL1tZBeTa5RV9Rrrd/9Pm41BopmCUA8KhN6mEJ7gbEPpp7zNCJ2DFWrkXvi8
         14B6e5JrMXJ67e/scNfTtuX58l5H1Yk0BUObCHJhim7YKYKwwwUnAmuWel3m1iNU9QuL
         fY7HWsuEnUJqedVASESb+sOZwNlz2DkExLhBVX8Da36AMNJos3RC58opJYL3O29lvADW
         wkUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ISAxmF169p9VbZiF784CViUASY++F7j/bSxqdGdUQHg=;
        b=pJGggnBF8O/xrae047o7G/JDh8bPSoDMHQBTtkLIjOcPvFgiInz/3FWloP/s8wj3qd
         kcUyLno+OkDA2D7HXsCSOWHlRKZhREo9bsrQXmzMpL9EHv5bcwa1ZkTj4nj6cH4BmZzN
         S713dRE3R0sKmqhR8Qz8Hc6BFjFiKBaafnzkUIOB2445D3fOHBYHo+aCkhqB2+er442F
         +ASWb4bbqkI4x/et0DwleId8cMIEjIFL5GBKxKX7LZrdvgWaie8Kq+VDfNi3p3lBKAgo
         Vyu8cmDdgFZbTV83mlNuDLXNSHqGRahwAlDJJMn6qZXGwUFcMbs0WaZck4jK7aKzgyCP
         yeBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sy4hD54S;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ISAxmF169p9VbZiF784CViUASY++F7j/bSxqdGdUQHg=;
        b=I4cT2QM3RtlS2uKnjS/P498bXolilicaelv5IiJi3VmhfMZnla78faqfdlMZnzYgvZ
         Y6PdsQuH9dPYmj75kCCJmvo/XpFU24j3HzwnNirqY7Hqo1VlWxAaYVLkHTfgG8m5OjwY
         x3ANRvNeAJIqgnraBT6+3yv0JvNjW6G2kejJO6UhwyGcNNIHa+/4paPcA0ViV2rMNj+t
         TVNvw2ly7B+atvZa1rTwgCmK4vyMOIGg25A5MaP7tOj3xo5FCT4GIcsc9NmJm6TFdLmM
         B5v0qHtxTQQTw13/VejHkiyoPEpnLtz+tzLio8pfAt2n1kHElpusfjrakjFPrx+jKvzN
         Fslw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ISAxmF169p9VbZiF784CViUASY++F7j/bSxqdGdUQHg=;
        b=EkKMjZrFZ+XdSoJl6ifSl5I374FL9Z1KdefvrrWUggSPb/yxI1B5VZYvSVoTAy4Wbm
         tvRwaw3elaHtlE8ZTII5nzjFTTUuwczNaUB3NNdAOuBp3HpnTmm0uMAvtsPH30Cp5196
         N6bTGDNyJOlLJg0/KCzgXuj0UwXwHi/4vAvg8J2EvnoDIvRTBs7KIUQf04h9z4VbRpwq
         YGy9ffMt+iOv8HqLRL4nR4wSnluZVyGPMv13cqutTOO7qnI6XIMpag4jjOwuMhAFhWhe
         JtaQ6pVDiwxtsTTOQ4nzRRvIDUG58iIJA4w31PjPaFCkDrWYrRTbACJm923bwteOvJO1
         1Eng==
X-Gm-Message-State: AOAM530OwTD4RJGaASFyX0OOTiD94BTZLA16Ub9Yo4XD103lBJSciYPk
	bSnhhcVRmK3irB95d6GdoBs=
X-Google-Smtp-Source: ABdhPJyO8FrBLxnh1fa6xhFPZZ/hrAm2NmEquGQk3v93p5imOroy7kkZeBwv1jyXS7AwBXpL8JaN1Q==
X-Received: by 2002:a63:6dc7:: with SMTP id i190mr59885052pgc.304.1594421720632;
        Fri, 10 Jul 2020 15:55:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:be03:: with SMTP id r3ls4244542pls.11.gmail; Fri, 10
 Jul 2020 15:55:20 -0700 (PDT)
X-Received: by 2002:a17:902:c40c:: with SMTP id k12mr59348135plk.11.1594421720221;
        Fri, 10 Jul 2020 15:55:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594421720; cv=none;
        d=google.com; s=arc-20160816;
        b=oOLGFv5OKzWbLg25LeFnAPbpkIb0wCBIsfDAsgSajk27RMrGDyb505JWPrT47nPb0J
         DNvPKmw15IPvfwlLKXfPu3BRSGKiNAkH+hy6FaB8zd5werR1nevdWpQ16FQ+sv64Tx7A
         B/lj0EZA+dI3e7gbJ8+OZHRhRUCcvjCcBE/xI3GJalLdqUSXpgPFWkXrwBQj4FmBi56W
         5Ku/TL+AwwxTdpGJ0naFwQbRo7NiLAKORvpHjwCWTaS3RCl06LJm1EVrYrWx3DOrJpMD
         jgzmjGPZWtuG31zpTegu2vMHCrDZGtIfMetrF1DK8lOE0J7iVDsr9bMqiPQevHA9g1cb
         aKdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4hGIhomb0LBlqZeWlHfi6+uoq7TnGBnqLNWsx4a+7J4=;
        b=bDtmNVoQ2AWlQVon5So0ZmcSqk2rdRDrRe0dV8cvlfizJwFnRYsJ5HdnzlHI6FHpQA
         Gtil8dr4lidfDTbR1sLW2q4fSRfsZc94O8Z4hFwpsOG5RWAHw4KtEEQjr+2T2+R8+S0A
         EOpbjvXmITNQ0bi9XMw1sDQS7vDzVvLOFkWd19pF6kfYDehK+nPFTwtfuOg9XaNAl0jr
         f1UHD4dLvdH9hdv+QEdwXYY3PDFHlFhRiC7FL8Yo5frnDzZ2WT7NqG0gEagkOpVdzBH2
         m/bA8JxShCT8Pj3JCr+JEyO7LZzf4Sj1l5PkjcFjkD169/EBwmPWSrqQ/NLFyPgrSVL9
         I7rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sy4hD54S;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id 10si336443pfp.0.2020.07.10.15.55.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 15:55:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id f16so3227125pjt.0
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 15:55:20 -0700 (PDT)
X-Received: by 2002:a17:90a:148:: with SMTP id z8mr8452357pje.197.1594421719716;
        Fri, 10 Jul 2020 15:55:19 -0700 (PDT)
Received: from google.com ([100.117.212.88])
        by smtp.gmail.com with ESMTPSA id nl11sm16403347pjb.0.2020.07.10.15.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 15:55:18 -0700 (PDT)
Date: Fri, 10 Jul 2020 15:55:15 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Segher Boessenkool <segher@kernel.crashing.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Ramana Radhakrishnan <ramana.gcc@googlemail.com>,
	Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: Plumbers session on GNU+LLVM collab?
Message-ID: <20200710225515.o2d7aic2qgn5ac6i@google.com>
References: <CAKwvOdnT5ZMjvz2_UJ4MtvDEs9+90bsDp-Rd2SnXZZ+AqebYHw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdnT5ZMjvz2_UJ4MtvDEs9+90bsDp-Rd2SnXZZ+AqebYHw@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Sy4hD54S;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1029
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-07-09, 'Nick Desaulniers' via Clang Built Linux wrote:
>Hi Segher, Rasmus, and Ramana,
>I am working on finalizing a proposal for an LLVM microconference at
>plumbers, which is focusing on a lot of issues we currently face on
>the LLVM side.
>
>I'd really like to host a session with more GNU toolchain developers
>to discuss collaboration more.
>
>I was curious; are either of you planning on attending plumbers this year?
>
>If so, would such a session be interesting enough for you to attend?

Looks like a good idea. I am interested.

Perhaps Tom Stellard, Jeremy Bennett, Nathan Sidwell and Iain Sandoe have some ideas.
They have a talk about GCC/LLVM collaboration
https://gcc.gnu.org/wiki/cauldron2019#cauldron2019talks.GCC_LLVM_Collaboration_BoF

>I was curious too, who else we should explicitly invite?  I ran a
>quick set analysis on who's contributed to both kernel and
><toolchain>, and the list was much much bigger than I was expecting.
>https://gist.github.com/nickdesaulniers/5330eea6f46dea93e7766bb03311d474
>89 contributors to both linux and llvm
>283 linux+gcc
>159 linux+binutils
>(No one to all four yet...also, not super scientific, since I'm using
>name+email for the set, and emails change. Point being I don't want to
>explicitly invite hundreds of people)

Might be worth sending an email to gcc@gcc.gnu.org as well.

This month's archive: https://sourceware.org/pipermail/gcc/2020-July/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200710225515.o2d7aic2qgn5ac6i%40google.com.
