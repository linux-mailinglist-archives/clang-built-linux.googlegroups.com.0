Return-Path: <clang-built-linux+bncBC7M5BFO7YCRB7XUZL7AKGQEOBETGYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5422D6C0D
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 01:17:03 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id r17sf1568710uah.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 16:17:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607645822; cv=pass;
        d=google.com; s=arc-20160816;
        b=OW7ilsl4048ZzaNcp0dmleHjgnmHEktEfoEtrah+PDNRlPsqBdZCvLLaiD5RjXUmEf
         eebo42BgktTKG5BxMWC426pR2nBKTPzfvaNeBI1mgrBrl8AGrFieX/zPsNyEzTzMVhmC
         vvgfKaChEiYqU25FKzFMceCCgby7H0YaiKPPjH5wFg208cISUZU/g4zClf6j/2KNtl/3
         4R7pOd7q3OUGnZkgv8qBvZowLJxB2Tkt7rCvvH21ujv26XijUmR0IKHRNlXz39OMR+/D
         02n7X4wJF+jfmf4euEicVHOrWH8osPB6RjylJNql8kFOPR6orzyJ25bgvuaaBo6igJQu
         somQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=P/L79uWy4HJi0QAMGyoHZhcs4aP2AELtDYXbv080tgY=;
        b=xe2WSyK96mlX2slIEtT9+o6nSE99lRTs+QPzHGMm5HKnhUIN1spYvJI+h672Qq0+Qz
         1MduFR1eXYkLAcn2jZwjNxCvTZO13ygVUYixEeGxLem2ZU/NNVFg75bBhbP7eT92XH+V
         yUu1qTi93TJ5nHyT43nodO4OBIxDS6833OpiUEZzDb+MxcxMIkdieuuEEeF5gbEZt09n
         y6HLKu3Lvq1HQJWT/SCJPvL2IMcEmFVNjC4ckaD/o2YAgpEchoXacyXNJeH45AJGRa2e
         qnosOgSc+iD65eLUyWNHUM+TIAQns8/z0pZIx/nvu6xCo14a5+alsfzJ632G/xev0r+O
         hRjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@roeck-us.net header.s=default header.b=ZhbO5WDZ;
       spf=softfail (google.com: domain of transitioning linux@roeck-us.net does not designate 69.89.20.226 as permitted sender) smtp.mailfrom=linux@roeck-us.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P/L79uWy4HJi0QAMGyoHZhcs4aP2AELtDYXbv080tgY=;
        b=HQ/28bcaLyAUZxUt/qWIyJU9zCgp5NFVyDLtf+RFxCwR4zaX/PuvMCZfnZ/MEqFMAx
         VOPce4aXi4FKuDmPNnZR1NI7iFzxE8ZBFCUOeRJ345sNvgyyAtkS55mQuI2e7KSnVpFW
         MHjk+XKG/pcegY/yb6UnOHjsOmsQnSkymKJ+RqWOTArk3rpJpfiXyKt97mQAbkI3tISz
         BUoEZEuPJjHjuVJrtEW9OxjW/SqXOIghvZrimx0NBf+O8D0ACFPNZnB9t3pTX6iEcvTq
         HDZeYgvQ4NsWbFzGk8/Jv3yAC1iY8uE+OY46l55TVdQJxzgbT45WzdCmCZrM54KrNZTN
         a1qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P/L79uWy4HJi0QAMGyoHZhcs4aP2AELtDYXbv080tgY=;
        b=E+mh8NYhoRsDTel0WPYhKidPRh6BNF2uKwJ0HhyXGQRn7aMtPuWEXWzBnRZ/XzhPMo
         Ul+LqFrqY3QXX/txF2UIgpP0qdwz8y3lqBty87hB/8hDcIlVcGRzilO02oDBJYmaLWi1
         GKHz+vYC+zXC7XGa6SKm98sFfJy17FWvzM3her8OKkMFPz5TrLxIwsG4/cJpBh+fytZf
         0yz3nfMOaNmRYjC+Z9yLr4cHBNIeDRWoJIfzjOez3ltw/xjg6Lwv9bMk+ibqVWcXmXPd
         Q8oMFR/7WiDyzD6F6Kn+loy27eJdjDeZHjDkz8dRnFz7ef+z00OR3PPYTwgz4zXBpZQA
         KQtw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ClC1MT4GU0NA5Xy/f0LdJooaxZafNZN/bFG9zatx3jxKmA7ac
	G0API/JVJpenvpTlMnWiiXU=
X-Google-Smtp-Source: ABdhPJwXn3M7iSfdxvWy+ADoa8ZF07MoNKHDny4r9BJN8kP/FstEyoCFNh+6J712ZYdmvE+pMQWkCg==
X-Received: by 2002:a05:6122:12bb:: with SMTP id j27mr12411867vkp.18.1607645822755;
        Thu, 10 Dec 2020 16:17:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8d45:: with SMTP id p66ls894974vsd.11.gmail; Thu, 10 Dec
 2020 16:17:02 -0800 (PST)
X-Received: by 2002:a67:5c03:: with SMTP id q3mr11031961vsb.47.1607645822155;
        Thu, 10 Dec 2020 16:17:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607645822; cv=none;
        d=google.com; s=arc-20160816;
        b=JnpfCo/xMR9RPXZIk2rUe47K1fPYemMmjdtQDvsZ28wywDDf+P15PPfouwd6vCbumY
         OF74c7qTFOwSd6BbRVaXEN70bQqRS+39RmfXJORoCSqC+bwa9MIVfScurHhlxz8YUNcd
         s023n4xf5JoteuLftfX35mAR3itD5KYPzkBY2uUP3rdJWYeuCU+2xZifU8hMdVFep7v0
         gEK1e2IiebySTcLB1hIsTdlaC7RaXvJXmGtr1gpNxa4VepQyVTzVRqh/MU7DIsqfZfMV
         r6PQ+1o6coh5lYFECQ/x3Yu/6MMvrn/oyhXfWicpIMNGiynnIJKHDxb2RHZVVqiHtaXn
         UEEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ekvtIws0SfA/x/tSI0N4ti3JHZLquQwZr2WPg4tHLII=;
        b=nr/Z2sf0nOrkXlyyYPxvkiV1KFXZJd0QEKUo/5+A8IDZFwtuT3XYTtv4n9zXOAtRb0
         VlYT/pIr66wj2OB5WKu0WJXkF3dfd4yj+nmmRBdejxrIppUk2cGUyOukVqXe36HQicgK
         ILm3u1LelnhJP7aqJsZpQ1vGDk1r7lSC1MaakGpYKsL2q0Yu/yYS2EPA7Rd/bBVg7NAA
         Sm6hnYPe0ZqgCiXF9vSSrtNwDwvTXr3LUBDqC77zw71TbREJolAroXmC3eTCNBn3SeKm
         3PuCI3mPQT7e+kLbvaBQXnrYmekF55Wp/zn0RDrypQIdqNePLz+e4bVGZQOnhTmDn/E0
         qrqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@roeck-us.net header.s=default header.b=ZhbO5WDZ;
       spf=softfail (google.com: domain of transitioning linux@roeck-us.net does not designate 69.89.20.226 as permitted sender) smtp.mailfrom=linux@roeck-us.net
Received: from gproxy10-pub.mail.unifiedlayer.com (gproxy10-pub.mail.unifiedlayer.com. [69.89.20.226])
        by gmr-mx.google.com with ESMTPS id y127si439329vsc.0.2020.12.10.16.17.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Dec 2020 16:17:01 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning linux@roeck-us.net does not designate 69.89.20.226 as permitted sender) client-ip=69.89.20.226;
Received: from cmgw10.unifiedlayer.com (unknown [10.9.0.10])
	by gproxy10.mail.unifiedlayer.com (Postfix) with ESMTP id 5CE10140471
	for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 17:17:01 -0700 (MST)
Received: from bh-25.webhostbox.net ([208.91.199.152])
	by cmsmtp with ESMTP
	id nW7Ik5LhjDlydnW7Jkr2Zk; Thu, 10 Dec 2020 17:17:01 -0700
X-Authority-Reason: nr=8
X-Authority-Analysis: v=2.3 cv=G4sy7es5 c=1 sm=1 tr=0
 a=QNED+QcLUkoL9qulTODnwA==:117 a=2cfIYNtKkjgZNaOwnGXpGw==:17
 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19 a=kj9zAlcOel0A:10:nop_charset_1
 a=zTNgK-yGK50A:10:nop_rcvd_month_year
 a=evQFzbml-YQA:10:endurance_base64_authed_username_1 a=VwQbUJbxAAAA:8
 a=n2IuXNhsAAAA:20 a=P60nflJvJZ1DZXJ0TTYA:9 a=CjuIK1q_8ugA:10:nop_charset_2
 a=AjGcO6oz07-iQ99wixmX:22
Received: from 108-223-40-66.lightspeed.sntcca.sbcglobal.net ([108.223.40.66]:34752 helo=localhost)
	by bh-25.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <linux@roeck-us.net>)
	id 1knW7I-0000Nu-Ex; Fri, 11 Dec 2020 00:17:00 +0000
Date: Thu, 10 Dec 2020 16:16:59 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, linux-watchdog@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] watchdog: coh901327: add COMMON_CLK dependency
Message-ID: <20201211001659.GH259082@roeck-us.net>
References: <20201203223358.1269372-1-arnd@kernel.org>
 <CAKwvOd=i6DFLrPAe5KihT+ZK-nFZ+L7troC300q-9Jpa=i4Fqg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=i6DFLrPAe5KihT+ZK-nFZ+L7troC300q-9Jpa=i4Fqg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - bh-25.webhostbox.net
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - roeck-us.net
X-BWhitelist: no
X-Source-IP: 108.223.40.66
X-Source-L: No
X-Exim-ID: 1knW7I-0000Nu-Ex
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 108-223-40-66.lightspeed.sntcca.sbcglobal.net (localhost) [108.223.40.66]:34752
X-Source-Auth: guenter@roeck-us.net
X-Email-Count: 17
X-Source-Cap: cm9lY2s7YWN0aXZzdG07YmgtMjUud2ViaG9zdGJveC5uZXQ=
X-Local-Domain: yes
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@roeck-us.net header.s=default header.b=ZhbO5WDZ;       spf=softfail
 (google.com: domain of transitioning linux@roeck-us.net does not designate
 69.89.20.226 as permitted sender) smtp.mailfrom=linux@roeck-us.net
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

On Thu, Dec 10, 2020 at 03:00:30PM -0800, Nick Desaulniers wrote:
> On Thu, Dec 3, 2020 at 2:34 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > clang produces a build failure in configurations without COMMON_CLK
> > when a timeout calculation goes wrong:
> >
> > arm-linux-gnueabi-ld: drivers/watchdog/coh901327_wdt.o: in function `coh901327_enable':
> > coh901327_wdt.c:(.text+0x50): undefined reference to `__bad_udelay'
> 
> Isn't a linkage failure against __bad_udelay supposed to be
> interpreted as a value too large being passed to udelay()? IIRC, this
> was an issue for someone building an Apple touchpad driver with Clang
> at -O3...you sent a fix for that:
> https://github.com/ClangBuiltLinux/linux/issues/678,
> https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git/commit/?id=fff2d0f701e6753591609739f8ab9be1c8e80ebb.

The problem is likely that clk_get_rate() returns a constant 0,
which in the real world would end up in a divide by 0 crash.
An alternative might be be to add

	freq = clk_get_rate(clk);
-->	if (freq == 0)
-->		return;

but I don't know if that would really be worth the effort.
I prefer the current fix.

Guenter

> 
> >
> > Add a Kconfig dependency to only do build testing when COMMON_CLK
> > is enabled.
> >
> > Fixes: da2a68b3eb47 ("watchdog: Enable COMPILE_TEST where possible")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  drivers/watchdog/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> > index 8bdbd125821b..32fa6de7b820 100644
> > --- a/drivers/watchdog/Kconfig
> > +++ b/drivers/watchdog/Kconfig
> > @@ -631,7 +631,7 @@ config SUNXI_WATCHDOG
> >
> >  config COH901327_WATCHDOG
> >         bool "ST-Ericsson COH 901 327 watchdog"
> > -       depends on ARCH_U300 || (ARM && COMPILE_TEST)
> > +       depends on ARCH_U300 || (ARM && COMMON_CLK && COMPILE_TEST)
> >         default y if MACH_U300
> >         select WATCHDOG_CORE
> >         help
> > --
> > 2.27.0
> >
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211001659.GH259082%40roeck-us.net.
