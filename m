Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB75R7TUQKGQEVBDCRHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A73E7903E
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 18:04:16 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id e8sf30183476wrw.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 09:04:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564416256; cv=pass;
        d=google.com; s=arc-20160816;
        b=1EDNjKKMOl1Taab36y49/DIHvUJkkyaynArZHzy1ZosDKpYUZJ1MRAaa5A8WxnVWpJ
         yh10PYiWjVI7+OcG0Yk3p62MzjVj9dV6NjsVw9dC/Q0YtrLd6k8l5K/xYEXAE/fJUKer
         NwlmKyqRnMFloutfuiyxmuwYe2YX8bnGXzD6R+RCgX6TWaQCvcg8hLKS03baSXGr73In
         Bi46fYlgr3kdqYb3gusTZKQY7Oa/NYm3TEwlTSSsHsv8jo8oy/j/KptAdcHsBfHaRiyq
         A34tBNJv6QpjKLMciof5iB8Eq5n/2qRm/nqx20A4bAvmNv39gGfbyblFY+3qY6XBEw80
         KjyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=ZNdpZ8odmO+FQW9tqgQf1c+AnpmSmkZjViVpGvsh2sg=;
        b=FqFkkJ5dMfT1mMOzvMIRuRab7yrlNM2GuBhz+PJANd7tBdLgYY+3UF1K0vXrdPtw6m
         D9/bqJNXhSunYlptzJzSm0N9Px3PKpMttkWHM5ZRDsm2hpJoj3XIBZgdGuuArP6PUg7T
         7InQPnBhYqbonoLSd6Vr2T/cI2A4MXq0lLYKoYRVdxXmf0egHKL7Z1dV1FJLChZ1Q0Nc
         YwBZ6Cm+FlYk199UtZAR8szBpzTBTuL6ZCXGrYbeo/sRQGwfW1U6KjNz+86nFYrXGh11
         vTt5ByroeedKjixhtl7yBeC4VVVtkz54fP1tCUAXr1drn3E/Rta+dKJIibIv9ryR/1IC
         uvJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=so0RkHbQ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZNdpZ8odmO+FQW9tqgQf1c+AnpmSmkZjViVpGvsh2sg=;
        b=ZhsHlrmkcLj9mI+L69opvZTuUzCQuTDGfcGAgRuNI8HkXtlIX+nwMZ5l/TnmELUMh5
         zUr08FQWZLzjQcNIQ3FVkaBAB3iqcZW/fco5TEfkIRkUFfTSKIFdIMux+zKDWhdTl2l7
         hS/1muqmdrTBeyDfmr1a/r9YxmGUUVP1I0l/Q7+lK1wDcy88i7A0ol4XYb9CnxPAgDil
         xIkcHKW3h/e76/YQPyb8yYJLm1y0toIuZtdXgFtqfVFLoFtUKo2zm9gmYQenEFVaMCeo
         wZQWdapPgYLsDa7zOs6imOsyoh4eIneN2qWIHk53ijUni0r4IvvMFZ3fT58l3HdxGxV+
         crcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZNdpZ8odmO+FQW9tqgQf1c+AnpmSmkZjViVpGvsh2sg=;
        b=juM4fr2jInWkni/XLpkoSLZWo/s6ficGA7LXCf1N141SiSuL/ZlzKKdY/CI6vIRBMJ
         SHndwsysuJ0LpXo2YxO9S7rrgt354/mmQx6l0BXJJaGYC0LdfquSf/Mz7MsltJFR5LNM
         vkg0aQ4IzrXg1NIJ7NLq0vdXyD3eu6vuvJg79G3wkj0ulrdx8FMNDU84N3X0bAxJTO6e
         RXCDEc5IEcam8jJ8KirhIFUFfCkWuNl2TrExN0wbkMu5jGYwx4S4H1OzSAMAQyAYi7rt
         82oDe8722mI6jsvlllUwwlrZ4EoqXfU+HrGmprsRPgvL1rU1bNL4mlK1MY1lKacnkLC3
         QKPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZNdpZ8odmO+FQW9tqgQf1c+AnpmSmkZjViVpGvsh2sg=;
        b=sKHZSq1ZuiIbWBGGsLkkeCML1XBSAlulLl5aeG6wh1RoB1YTozkbdM1tkmgUEtTOe2
         Xq2oYXQXo7K6SMqBIHL5QQ9QMN37VCxF4ezyfMA8BmOa/a9MRqik/XLZ/qCjpZj42SnZ
         hrRBxljBtc4ezZgGHQoDqbTvtVO903xSvZhNTwLS7SdbPBkCcnM0o+SgKiyA8ynnkbXk
         Iog+3P2apyA6tY2NhastKjm684RBm7ajmpTcevdrDuGXm0lbOHph7VFeCBEAQclia3pV
         o4NHG2PufuE4G2WsJeDkhLuJ1YCa7Vt2Kwt4nt67ndTboZzYqGJHgj9aqbSRPLYTjpAy
         QOxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV9EOC8zxmjAiQ6rIyd9qjNemU/5JgsNIb3rxZ6W02xhdlRsXRn
	hfkbr6WRfxhaSrq45Z3xpqc=
X-Google-Smtp-Source: APXvYqwefzDs6VtymYzrB2LfZm9ZdwNRd2+sVO9vP0EgMPmKMLpuuLCvrduhfwmxbWk8Es8ne6PZ5w==
X-Received: by 2002:a5d:5692:: with SMTP id f18mr75847591wrv.104.1564416256030;
        Mon, 29 Jul 2019 09:04:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a2cd:: with SMTP id t13ls18465950wra.8.gmail; Mon, 29
 Jul 2019 09:04:15 -0700 (PDT)
X-Received: by 2002:a5d:4041:: with SMTP id w1mr110240402wrp.199.1564416255646;
        Mon, 29 Jul 2019 09:04:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564416255; cv=none;
        d=google.com; s=arc-20160816;
        b=RoNs8NHgW8V7F8qzGQrLCvvpPGN25G1U7OsyD7dheOdodI0w1UhlO/sThxrHJ0my4R
         moDxXXJvhPTgWPxg9Cmt0nCk4x+/pGUOzKI+e2iihMUHpz5zVgkW5j+A4APaJKkt8FgX
         JRjEKhCQD6ancx6M1pFSBc8M7f9l3luN4sVFmwzRpoDT5LbprNx8x4ImZ3sBdpdnRuAL
         qnkf+TV7yKv4jfsKxN8AwZ1SE49RXYA2j2Oj8ry6OM9f6yB1iPn1dTLJbheLwbNoAjvD
         gem1o6myhCSg9Szlzd8dEastI5ixCrOvwIMJGZUbOwUmc9I1t1o4cK+OOzQpQ+2hvYus
         B47Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZxCoxZNZqZ7BaNpp6YlaSGJX4F8d+cKr8ODCDAIBeo0=;
        b=yuUtvllRy8de7tfRWEe+BIjSjH25yNYOz6UaNVNYzO8O9cjaTdUXZUtsYXmCMxXjLr
         pDg7ui4Lm4glDgFhA9SQfBSU/F5rLZV2YFJ0JU2MLuJT2Hi9+GGN+OOMW1szhTOJnUj6
         33rF9bY1CF2S4Iz1VO6mXVShfMLRsSRnItkZ8ZzwlDOT44GBnmg/aWvaNXn7mB1/FxFF
         J1qfiHe8YHmMtviwYmm+QZa3cHkp1SIzNj3PckhpE/A+JOdMyRu01ZEqJbgUDHDkOYgP
         UYHH18sv8T3Lmp24d6alywbSKYDwEc5Ls/UhKzR5eMwQFP5d9AvHJpZ5FE3Sto5qygob
         OdOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=so0RkHbQ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id j18si2333046wmk.0.2019.07.29.09.04.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 09:04:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id s3so54348596wms.2
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 09:04:15 -0700 (PDT)
X-Received: by 2002:a7b:c144:: with SMTP id z4mr104465393wmi.50.1564416255100;
        Mon, 29 Jul 2019 09:04:15 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id a81sm63363187wmh.3.2019.07.29.09.04.14
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 29 Jul 2019 09:04:14 -0700 (PDT)
Date: Mon, 29 Jul 2019 09:04:12 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: linux-kbuild@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] kbuild: initialize CLANG_FLAGS correctly in the top
 Makefile
Message-ID: <20190729160412.GA100132@archlinux-threadripper>
References: <20190729091517.5334-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190729091517.5334-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=so0RkHbQ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jul 29, 2019 at 06:15:17PM +0900, Masahiro Yamada wrote:
> CLANG_FLAGS is initialized by the following line:
> 
>   CLANG_FLAGS     := --target=$(notdir $(CROSS_COMPILE:%-=%))
> 
> ..., which is run only when CROSS_COMPILE is set.
> 
> Some build targets (bindeb-pkg etc.) recurse to the top Makefile.
> 
> When you build the kernel with Clang but without CROSS_COMPILE,
> the same compiler flags such as -no-integrated-as are accumulated
> into CLANG_FLAGS.
> 
> If you run 'make CC=clang' and then 'make CC=clang bindeb-pkg',
> Kbuild will recompile everything needlessly due to the build command
> change.
> 
> Fix this by correctly initializing CLANG_FLAGS.
> 
> Fixes: 238bcbc4e07f ("kbuild: consolidate Clang compiler flags")
> Cc: <stable@vger.kernel.org> # v4.20+
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190729160412.GA100132%40archlinux-threadripper.
