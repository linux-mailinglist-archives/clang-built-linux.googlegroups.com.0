Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPGKQ7YQKGQEHWCI2WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 10568140F44
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 17:47:58 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id 8sf15428548pfb.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 08:47:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579279676; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ttwit99prG6FjC324uTNc1p8f+GmLZlAjQavqKBGeghSaLpJx10MGkYpJG95lFC2An
         YMtI+2cyzk8uim8Dm7vV6nNIlPhfviJPmN4OWNVSO+PD2qPegOnAa8+N3P3ZvadELJr0
         Wuj/wKqE3dpA6/+pwDQUag5zObRz4zj8lUjJVLiY6TQdWnieLIh8rtMz0IP+Co8T95Bt
         rc2K6Hp1t48UNpnRBNHaeHuoD+oL10O81P/Di81OJgVYo5nkv67Ei4mFUDoTsFy5eYoX
         8wYnSrzUC48iZs9K/+ESvUt+4+Q8JbAU+VCJY1HFymuy6i+3N4wtrI3mo8A/ECM1HXxj
         r8ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LvfeKNVoDypJodXcyxdWjuGAZqhDrbL1oiklcU8AyLk=;
        b=DfzRafgOg25Aty+pJFFzia5fKmyNs+zmdj1VnP95u2TON0fBHoj1EofIUHtzqBvdZZ
         0EYrK2mjmBgqubtEmRq+q5VKknLqje5K0jp6KmeJOFVdf7a30uQuHDYoUP21IYao/zxD
         A6ur2QFVsHp/+cPQTtOpn/mudtrkR8Gp3hc+j/F95Rh9l/aGaF8AqA9YllrNpuHcRVn4
         u8w6kCm3HKthU0lHkIE8B8szJYDxTuDIZJ78pFdYPo5VoYNtghsgueLFCTAOGqoEYw87
         OUxOcZ18h7qvHB4hnseiFkXuvBC9/fb/vbo1s+t6C2IfE/iyMMKOISc1QfEALVFQ4PeD
         YdkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CMYDVK3o;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LvfeKNVoDypJodXcyxdWjuGAZqhDrbL1oiklcU8AyLk=;
        b=Mhl3d3yekaEN7xNkRByGHEU7Lq5xn2mw+ZnZekzy2PG7bYm0wQaylrfB6kz9eWrGGh
         iqsBkeLVDu5FhLnOF/7Zqs7IK7meopxOB49HQtdCTgqVhYA+6z7L444SHdd7Ol+PSIbE
         pSPBu+HsAONofWN9XGBUcaPiaswUlFDPBk4Zt1ASD8rmOw/lfNhOIUWv4fzbRJVnj4T2
         /20Ss4F+LfhzSHq9o0Y3CzZSX25K8JcPKheubkTgU4TlwZChvCHu37p+S8z5AwSVcFkG
         c2C8nfHmuoABVnrrEw8eQSQXH+N/jCcn0tJ3pNJ+z+yMD3gPepJ4jcEIi+M65WJ7T9Ic
         5e0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LvfeKNVoDypJodXcyxdWjuGAZqhDrbL1oiklcU8AyLk=;
        b=plxmz3KnwuAVSNOqKiWExqE8UEV4XBojKWMpOYSFKiq0rSN1CFqBpqj94YcmHVyT4S
         YJxYdeJVpfy4gjYVyjPtSVd53JYdJY8MIYdF2A0p9PdROaJKgfpA9q0ndhIL+BmCG+7h
         RUxZ0S1AeWLwlSbu65LtiShk0SS+Y9Pvjm1Wwwm52Wcie3WhR1wd1C8b1i/rByQa7KwM
         wBs7QaMuzxgE2GHcsAhqWX6o0KxzprGZ9vcMzYQivZB3fH8TnnKvD2TPh6Yn7lM09//M
         N7Z3F+gm7pe26dgbDfxrP6WN5EAJuQ7t32HgOjnxK/Wdp2iHrWn0uJyHHGXub55YrD9m
         Qknw==
X-Gm-Message-State: APjAAAWGiTVv6PIsrqg7K/q1WOlmFtTyPOXNBjS6XVWOVmEKrPJlzX78
	1D2Kzg/yfOJLfZhSmNa49nI=
X-Google-Smtp-Source: APXvYqwnHvCCl7RH5LM0/fN2KGrnuWZPgK55wu12VNienk+yww9M7ilxuEqB0sqyTK74umSXmxmeBg==
X-Received: by 2002:a17:90a:8c05:: with SMTP id a5mr6928782pjo.86.1579279676417;
        Fri, 17 Jan 2020 08:47:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7d49:: with SMTP id m9ls7282918pgn.3.gmail; Fri, 17 Jan
 2020 08:47:56 -0800 (PST)
X-Received: by 2002:a63:2808:: with SMTP id o8mr45607395pgo.39.1579279676010;
        Fri, 17 Jan 2020 08:47:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579279676; cv=none;
        d=google.com; s=arc-20160816;
        b=Z39NmhIFRy0oOucp8emLYLKBZnmiO2oTCg2KEjPRC+oOBm/Dg7UUzNorBGiBwJDfjg
         MdDiYATgEMjpz8HWjMr42DULysYRrM2FleJfn7sj2Z2p65BVdp+6f6RaYNag5gqKgEXQ
         aWHzqsfU/L7SyEUXor/XZlcCZz9cRoXMVxJ8U+UyMc0MtaY02UM95izNFuo+PtFbrL+r
         cnqS+ksBQGsDEvJOI/EI3qslGJyc1ngJIigvpd5nIMiKU/PeDXUrHHGvo343L/JrSpHH
         Z7t7a2xw4t+jrHXn/TFvli1LgQJdLSqF5TxOlwHzitPIWBtdzKb35SHDIAqBW/jb+CxN
         G7rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a0X6p9xbHrIlzrHh63asXC+Mr9ezNFig8K8mnlw/VU0=;
        b=K0BFdlqEnhhtJ49jsg2C32w/ZTRD44uRykotWeE3hkmo5md9RoKex/umDbVZ/sOb5D
         Y86gZodkemTL8nX4D88M6lcR/fLgoQ/3WbxeDMg0eK9CWyTZIiLPKIlZoeDWfBzDuAzk
         k1DP0ZoZcOzlFRRCC49EoYD8fu5uUvlTezsbHlaqnWwgPMyw+JjFzP+dsBpqsJdSUMUG
         FZE3qcthSt361smoJsXXTYg00HjLFbIhBuhRoL8rbcnbo4uRonkXZvBTK99/axCwpv6A
         Jl+VcoFx/ISblAXsnms6J6xVMUekJxgVcwsM2Rst5bcDySfm1+ki3SMO7Vz4v66KLrSk
         q9WA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CMYDVK3o;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id i131si1099052pfe.3.2020.01.17.08.47.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jan 2020 08:47:56 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id x7so11924597pgl.11
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 08:47:55 -0800 (PST)
X-Received: by 2002:a63:f24b:: with SMTP id d11mr45395104pgk.381.1579279675422;
 Fri, 17 Jan 2020 08:47:55 -0800 (PST)
MIME-Version: 1.0
References: <20191022132522.GA12072@embeddedor> <20200113231413.GA23583@ubuntu-x2-xlarge-x86>
 <a729415d-1304-9722-2433-129bd2255188@xs4all.nl>
In-Reply-To: <a729415d-1304-9722-2433-129bd2255188@xs4all.nl>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 17 Jan 2020 08:47:43 -0800
Message-ID: <CAKwvOdne74KKV4s+voH1_+4iL_2T2efJTSiw5b6MW2=egiMN1Q@mail.gmail.com>
Subject: Re: [PATCH] media: i2c: adv748x: Fix unsafe macros
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>, 
	Dmitry Vyukov <dvyukov@google.com>, linux-media@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CMYDVK3o;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Thu, Jan 16, 2020 at 11:25 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 1/14/20 12:14 AM, Nathan Chancellor wrote:
> > On Tue, Oct 22, 2019 at 08:25:22AM -0500, Gustavo A. R. Silva wrote:
> >> Enclose multiple macro parameters in parentheses in order to
> >> make such macros safer and fix the Clang warning below:
> >>
> >> drivers/media/i2c/adv748x/adv748x-afe.c:452:12: warning: operator '?:'
> >> has lower precedence than '|'; '|' will be evaluated first
> >> [-Wbitwise-conditional-parentheses]
> >>
> >> ret = sdp_clrset(state, ADV748X_SDP_FRP, ADV748X_SDP_FRP_MASK, enable
> >> ? ctrl->val - 1 : 0);
> >>
> >> Fixes: 3e89586a64df ("media: i2c: adv748x: add adv748x driver")
> >> Reported-by: Dmitry Vyukov <dvyukov@google.com>
> >> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com
> >
> > It doesn't look like this was picked up? I still see this warning on
> > 5.5-rc6 and next-20200113.
>
> It's been picked up some time ago and will appear in 5.6.

https://git.linuxtv.org/media_tree.git/commit/?id=0d962e061abcf1b9105f88fb850158b5887fbca3

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdne74KKV4s%2BvoH1_%2B4iL_2T2efJTSiw5b6MW2%3DegiMN1Q%40mail.gmail.com.
