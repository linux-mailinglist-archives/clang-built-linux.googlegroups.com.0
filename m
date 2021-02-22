Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBD4Q2CAQMGQEJG5UVKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFC9322045
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 20:37:53 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id e16sf8614851ile.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 11:37:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614022672; cv=pass;
        d=google.com; s=arc-20160816;
        b=YS+wN2mIFV8QP+RvwQpbOmE4qN85FEcgxXSrdE2DOqdLfD7HDd5fbp/De7NcgmPmHa
         gUzxwyKt8S9mtzpC5BP8EFyVjUp4AnamvBZKCmGSriXjmDFH78+xdC8K6pMlOMU788DR
         D5d1VDbRHs3vJesG4s7OdBDJnArZgkJWu3butOlSmgULCjlh4zbt/uvtHWM2BkcT+dV8
         0Un1bLK11JFOkO/TN/MVoERKzCM0rYnJZO2OQhmNfp2vWKyWRPPMuweBL1y0ulHzkgNA
         1K/WzLNW0BFvIrPi2HwyT2y0h/xy0/5rADZr7TAb5q2a5WqHN2MDFTiMUQlnzaiRrqTG
         E5ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=PQ3I1r3Ind/P0Z4SuxoGJJUcRsL1T04aDnjZgPCtZB4=;
        b=Rag/xdFbUF5J6YWTWOnj+exbn+I3A+VvBnL++pY+Kz2WedQd7YL29TzV7m7qmtzkgr
         zGkLcC1AGH0/ZT+uTO1gN9J1PNNYNFlSyhbo8DOFzclk5qUWdtdhALlT/L1mpYWwfKbn
         gCOXDJsrYGidRSgyDLktDI5DrQV5bdsMMQkiZZR2Q+vtEWIZfxaFXyfXPZnG5UbnDPzc
         u0qRobJOGdaQCq43aYq2CBiU12CA0uvvlGVKOZ2VW76EJwk1FyfpAsDu8JcMQwOF0pBh
         0HTYYrsCyFGBUkvIRUVqBLc8fVYnFqPzBcuc8TJhW08JhpT+ufdqo8sJ1d8/s4R/ybeW
         RAGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cTAtP66v;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PQ3I1r3Ind/P0Z4SuxoGJJUcRsL1T04aDnjZgPCtZB4=;
        b=hJZWSM9onGHbZNgLSF47L9kNlMqF9Q3CuokmMwwQF18ZDjgYD85kN5e3GxDi6t2BXv
         dgXTLO9W4aL7WtEGHzpstfXZrRueSjuDW7BBxrsu8vc7uKwvm2/+axdSXUscimy0sJTU
         0m6q4xsihSAg3nYVNaU53ckUuS58GeqR7Ub/1ryqSSbRELnQYikih/AeNKzXp2mNsTOq
         Ft1f6XqPr22k16Sje2h+Xx70ERuVozScgFofH7TL0Xm6DEr8B9Vojmrq1jFvFpFVz+DQ
         UfaJX58PEctUeGNCB+96Afx2ZkWM87tVglmUKppMwUASm4bSqQ4FWejW+BA0le1z9abI
         boxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PQ3I1r3Ind/P0Z4SuxoGJJUcRsL1T04aDnjZgPCtZB4=;
        b=QQSXp+rTf6TW1eAVl00ylgAagHr7+9/qER9VYiNiJ6FbB78D1jXIMMKePaGnUtmakh
         IUTK6tClAtCoIBiPDabJsVhuu9dQg/tmW2TSdieTnZ0QT/I+omR8SH0zzWM7I04vr+IX
         +Y0ZD/BAq8GqxJfiPxrvrqxf19IG4yN8C2jXWfNIVq4ubeaKi1zhBtwDL797lKkYSgoB
         9k4YR3vte0URxSRglizYmekemuFp5b5b4daP9z3upYa54FnOQdwKAa68hClhfm7XP88k
         NYjalKlVZwN18p5E5vK2OIUGeCiHpl4Z5Xt1L0Azfgm08PPDOEEsnZ4XWWnE2zqg4BhE
         3Mcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323q8cVA0kqnfSpjf32tFw3OwLGwTi6B1RYJgz3P4uoL/Qs8OY6
	A9qotnGt2XYhYk45SFiIbRA=
X-Google-Smtp-Source: ABdhPJxasadm0yWstP7jrMKZSkoNqkyjCFz02ebid0yhiSQiDP41fv/8dEulhsEnjAYSJZsHJSwA1w==
X-Received: by 2002:a5d:9506:: with SMTP id d6mr16559117iom.37.1614022672073;
        Mon, 22 Feb 2021 11:37:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1a85:: with SMTP id k5ls4632536ilv.6.gmail; Mon, 22
 Feb 2021 11:37:51 -0800 (PST)
X-Received: by 2002:a92:ce03:: with SMTP id b3mr14392121ilo.302.1614022671625;
        Mon, 22 Feb 2021 11:37:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614022671; cv=none;
        d=google.com; s=arc-20160816;
        b=m/nmJZO1OnCw3HehZowUO23sVXVWM6hgmcgTe2MbDS/JN9Xk5idoQdv4doyWU31zH9
         bXh7HjxPhdFaeq+kswDGK01iEdDlmH48TjuNlHWIT4EoA/YzIBZ+asJmQtim2u0N+tSS
         V/pSEe8Ev/KfONdNHfa6HCBuHqI4O2Im/ou+kqCnNw0LRR8FnjZDqGwIt8kucSefictq
         3g8PRDvoy2koYEXnO1czMZyilYLlD5fYiQgZouZvRQWIk9Cfy7XeVS6A2CvAGxB4+pQr
         6rmVzR9aioxBd4EqRzX5AiT+T4Nc7s3vfaOH5vs4GOYgEfVTAKk2CQuwZaAc6Wo0NA5l
         BRkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=UAjubPSxKzE9dz+BQ8PvW9UQwxS+TRngv8PLB3URVRg=;
        b=hBqPjjJrH3UyGiPBONqU+u/bamlkEujlJYKZ+W+I1l5Rlk18XXT5vXkgv35KdEG/dJ
         NeUlSLrSzeJ8FJzP3F+Cr6Pu3a8Cr/rATuvK8mIn9RMR0tvIOjCaTl11wbr5h78e+9QH
         rqdRv2eFZuCgw6ZsB/KiaRWGl+RS4aY1CFIlqb5Upidx7PzedMHIY2QUhDScMG/KML+/
         VE5zlQPzNVcZTY0MEY05gNCdqveNBANrx42k9XSb5tgLi5Km6gUaMlOQHrjyOOzLY2DR
         1d7u9ky1DUHlQOtvjgbcecqLjk8ZHXNKeSDRycw5L8YldRj+jpW2CV0QGeNyt2oVQfwF
         42VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cTAtP66v;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y6si947206ill.1.2021.02.22.11.37.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2021 11:37:51 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BDDD564E12;
	Mon, 22 Feb 2021 19:37:50 +0000 (UTC)
Date: Mon, 22 Feb 2021 12:37:49 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
	open list <linux-kernel@vger.kernel.org>,
	lkft-triage@lists.linaro.org, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>
Subject: Re: clang-12: tun: Unknown symbol _GLOBAL_OFFSET_TABLE_ (err -2)
Message-ID: <20210222193749.GA2954@24bbad8f3778>
References: <CA+G9fYuE4ELVDju=LESHnphL4Z2DT5YQjdh9rNgr5D1x5gZxgg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYuE4ELVDju=LESHnphL4Z2DT5YQjdh9rNgr5D1x5gZxgg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cTAtP66v;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Feb 23, 2021 at 01:01:16AM +0530, Naresh Kamboju wrote:
> Following test regressions reported after upgrade to clang-12 from clang-10.
> Regression detected on Linux mainline and stable-rc 5.4, 5.10 and 5.11.
> 
> qemu-x86_64-clang-12 failed test cases,
>   ltp-containers-tests:
>     * netns_breakns_ip_ipv4_ioctl
>     * netns_breakns_ip_ipv4_netlink
>     * netns_breakns_ip_ipv6_ioctl
>     * netns_breakns_ip_ipv6_netlink
>     * netns_breakns_ns_exec_ipv4_ioctl
>     * netns_breakns_ns_exec_ipv4_netlink
>     * netns_breakns_ns_exec_ipv6_ioctl
>     * netns_breakns_ns_exec_ipv6_netlink
>     * netns_comm_ip_ipv4_ioctl
>     * netns_comm_ip_ipv4_netlink
>     * netns_comm_ip_ipv6_ioctl
>     * netns_comm_ip_ipv6_netlink
>     * netns_comm_ns_exec_ipv4_ioctl
>     * netns_comm_ns_exec_ipv4_netlink
>     * netns_comm_ns_exec_ipv6_ioctl
>     * netns_comm_ns_exec_ipv6_netlink
>     * netns_netlink
> 
> Test error log:
> --------------
> [   19.017163] tun: Unknown symbol _GLOBAL_OFFSET_TABLE_ (err -2)
> open: No such device
> netns_netlink    1  TBROK  :  netns_netlink.c:143: system() failed
> netns_netlink    2  TBROK  :  netns_netlink.c:143: Remaining cases broken
> netns_breakns 1 TINFO: timeout per run is 0h 15m 0s
> [   19.070922] veth: Unknown symbol _GLOBAL_OFFSET_TABLE_ (err -2)
> [   19.095171] veth: Unknown symbol _GLOBAL_OFFSET_TABLE_ (err -2)
> Error: Unknown device type.[   19.101364] ip (751) used greatest stack
> depth: 12088 bytes left
> 
> netns_breakns 1 TBROK: unable to create veth pair devices
> Cannot find device \"veth0\"
> 
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> 
> Full test error log link,
> -------------------------
> https://qa-reports.linaro.org/lkft/linux-stable-rc-linux-5.11.y/build/v5.11-13-g6380656c9227/testrun/4002283/suite/ltp-containers-tests/test/netns_breakns_ip_ipv4_ioctl/log
> https://qa-reports.linaro.org/lkft/linux-mainline-master/build/v5.11-2899-g2c405d1ab8b3/testrun/3994442/suite/ltp-containers-tests/test/netns_breakns_ip_ipv4_ioctl/log
> 
> -- 
> Linaro LKFT
> https://lkft.linaro.org

Thanks for the report. This has been fixed in -next and has a CC for
stable when it is merged into mainline:

https://git.kernel.org/next/linux-next/c/ebfac7b778fac8b0e8e92ec91d0b055f046b4604
https://github.com/ClangBuiltLinux/linux/issues/1250

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210222193749.GA2954%4024bbad8f3778.
