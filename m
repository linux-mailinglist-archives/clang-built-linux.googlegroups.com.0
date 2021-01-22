Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB3HBVOAAMGQEZQBBIII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C25300773
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 16:36:13 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id i82sf5645724yba.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 07:36:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611329772; cv=pass;
        d=google.com; s=arc-20160816;
        b=RBRiilOtToZ8uCM5WynjoU51CtbzB7u/dCuaSQfqucYw5amMbZGD/lYly9UODlQurE
         1xd6jV/zGWpbt0K+WDsoUoMkEmUgLMRF3OZcYi/f4dBqHy2ycPY+11VI3gRltpj2W7fp
         NM3ymps4S+0j6gH3mP2wA3dv+4NLGLoCWXB5V2vxl3giTWhk06FP4Nch8MwDUzgfobXY
         NcSHmZOYtPrzEfAbcNlFj/ARFXBco4gy1ggD/+ZQ8eh/7x8T2CdA5VjjxqeYeko5OcFz
         BbvS9ek2cJG3PGFg1bIKQExjyNtsp+/HiuPZA2V7fHy9gmKrr/RQxpvQL6AmTtcbj1pt
         j2Ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=+zTlU+rRd7LB6+8EuplI/oJi4M6fzflcVAfXnbHdSME=;
        b=eqXerwYLPzv15u0i5LE+N5KA//UPMJSGQFukcA3x6wpY2q2tVPWbJTqA0JNe6wCC1V
         tytbRXIoBNOWnQNTDu4NJRCOnx53MHzlkgbQsLaPG45okeZFRxsbl28IxTNRslsMamTw
         yo4+xeOJd08z4DPlFAOAv782kxs14OjO6p7zPTnZgi8eizk1S88mpVnWl4yBMUdy3LNe
         YUERYtmPKBGs9TMILS8Fuxwij5m8CuPogxIX6pu5jI+76SaJusHsGOorNE64aTPBMj8N
         OX3GoBcFb8nUrCGxfxVDf6UEvee22Kui2eDeW1Kn8V+CT2XWc8M5qO7wKkJ2zvRpSrtP
         OpkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FLgQkzke;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+zTlU+rRd7LB6+8EuplI/oJi4M6fzflcVAfXnbHdSME=;
        b=aO6TyreTLrVihO8ueNID658Snsvsip691dDlzOtyS07g0PMKkRoHt0kJzdfZaTbuyC
         xj5k7iLArZpRHrsjw7zB2BHLznHLaH8i7ztszTSx/5hljUzvDc0K1VK7uXx0H7hWtutP
         v6sPeiLzNKTKKir1cVnosjfCNaE+FUTb+EILhvVVg9Grmc/QFsWvXHLg3iOuU3FVnVv3
         /FjR3sAR1ZjeXhXFiievX/O2kLDDmXTsAuP2Vqq8rinWqZcHaeaxwfhZDGvBSrgDDqIq
         TaqTABgLoekIDUNAdOkCWr5UAUC1JnFN19zY29k+eD4hsii7YdVWp3/kvOFTjuSNZsNu
         GULw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+zTlU+rRd7LB6+8EuplI/oJi4M6fzflcVAfXnbHdSME=;
        b=HxEeeWxbaEPzMZKhJIU3vnTkmW/422Pip0gj6rFbgyuX0j5a6aI2BaEswNuJcXXSnT
         P1D3zPLsa9jta3OOA+GHHgZY5OG4jmS5vO31RURVENIb1RcFV/CvB2ccJCQ9FGqlXNlC
         jUEBam/hur2DIqwnmnYJIXVuP493l7ikMB+qDK+cunTJR85VWon/5UFhh2mhrtmu2CuD
         +VwEnqd7HliMDwaKO8Kl+wgxtbrT3OLxUlhbvOu8dqle0AxQJ05j0iDvxAaUH2h93Jrp
         2QVgKnPivsy++gigUAfycs4ucn+PVP5WpZaTf7LFYbucTOtILKHP5MboH0vOcSi8SsIk
         xdaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZIRAn7NePrpnFM6l3+L+OGUe20S2Vj6RbfXhHu5kuqHm1uz6h
	lUgkbELtjOe6o4wOqjNCBtE=
X-Google-Smtp-Source: ABdhPJzZiQn/QrrdwDkW6sB8UZT83vJDXEaLByFNzb7Hhi8PuIxkgPCI/u1T/nP1ZJ4arUKDOufItQ==
X-Received: by 2002:a25:80d2:: with SMTP id c18mr7596393ybm.5.1611329772532;
        Fri, 22 Jan 2021 07:36:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8b88:: with SMTP id j8ls3152939ybl.3.gmail; Fri, 22 Jan
 2021 07:36:12 -0800 (PST)
X-Received: by 2002:a25:aa10:: with SMTP id s16mr7045691ybi.393.1611329772126;
        Fri, 22 Jan 2021 07:36:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611329772; cv=none;
        d=google.com; s=arc-20160816;
        b=IlyD88QuN02N8U/ZophuyZAJ87AvZAITa6RFZPppehxs1VHrF0Xp8vSRuuC81+Wk//
         f/55/RLBQrZysfqw35GN1ZHnfKqtg/CoBsufTKpLwd3SXXzQh/lZ5sd3SxAp9tDbjWtj
         TYDCZqN5AwNjGBTO087OnQ68iD8cPvAibVD88Tz6kKT1HiRUcACt7Dc0xMkUi1RiSs/z
         rL0Vp45O8pqE3k0kBqgwESMdWO9YBH6xA5p/IeeuMfxiqwpHx3WiJDRxVyM3ACs72uRE
         hkxJsyN/zIg/uVlxMY6OJBvDgpFWcsxWryfkUfj8bAi1aC6t2UfNqFVMLa0uyrFKoZN3
         K9Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=H3YI7Ls9WyKJxXv9GpO/herD8mdGN2GopzSzLnVMUfo=;
        b=Zxy2FswkcIAPUjbkj2VpLNeqfkXJpFN81kVWPyygoirAHKLDHj2MWzuW5FuRjsHtR9
         vuM8EUbL9j3hrdUxSrKyHK8dE1XGaNiWvU3uQDPm/oiPyVK1YtjZ58D6gZ1U7BcD9aGj
         Xa63WO89b660qosZU9/OMK4at/v9pZ3H8AuDSFhijPGQ3hr6nhdig1snHtpwU5c2aHQS
         6tb5XiXBdFCKCwGUIRJcY8aIisfPUsDEhVrJURFOOiOKPaXAQwDlXeXemaxTXJj26qMk
         //OZri8lZwjfUx77B9l0ml18AA0MRufLXJd7VLnppVya9u82Fy/fPn/fHuoFHB8+ZIvy
         OVBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FLgQkzke;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x13si1055804ybk.3.2021.01.22.07.36.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jan 2021 07:36:12 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3542223A9A;
	Fri, 22 Jan 2021 15:36:08 +0000 (UTC)
Date: Fri, 22 Jan 2021 15:36:04 +0000
From: Will Deacon <will@kernel.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	open list <linux-kernel@vger.kernel.org>,
	Shuah Khan <shuah@kernel.org>, patches@kernelci.org,
	lkft-triage@lists.linaro.org, linux-stable <stable@vger.kernel.org>,
	pavel@denx.de, Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Russell King <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH 4.14 00/50] 4.14.217-rc1 review
Message-ID: <20210122153604.GA24972@willie-the-truck>
References: <20210122135735.176469491@linuxfoundation.org>
 <CA+G9fYso4QNbRWdrQiiOiMb5RUr8VtM3AkKEGLasgN+KsPSvDw@mail.gmail.com>
 <YArqULK9c1Cnt5gM@kroah.com>
 <CA+G9fYuzE9WMSB7uGjV4gTzK510SHEdJb_UXQCzsQ5MqA=h9SA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYuzE9WMSB7uGjV4gTzK510SHEdJb_UXQCzsQ5MqA=h9SA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=FLgQkzke;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Jan 22, 2021 at 08:43:18PM +0530, Naresh Kamboju wrote:
> On Fri, 22 Jan 2021 at 20:38, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Fri, Jan 22, 2021 at 08:32:46PM +0530, Naresh Kamboju wrote:
> > > On Fri, 22 Jan 2021 at 19:45, Greg Kroah-Hartman
> > > <gregkh@linuxfoundation.org> wrote:
> > > >
> > > > This is the start of the stable review cycle for the 4.14.217 release.
> > > > There are 50 patches in this series, all will be posted as a response
> > > > to this one.  If anyone has any issues with these being applied, please
> > > > let me know.
> > > >
> > > > Responses should be made by Sun, 24 Jan 2021 13:57:23 +0000.
> > > > Anything received after that time might be too late.
> > > >
> > > > The whole patch series can be found in one patch at:
> > > >         https://www.kernel.org/pub/linux/kernel/v4.x/stable-review/patch-4.14.217-rc1.gz
> > > > or in the git tree and branch at:
> > > >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.14.y
> > > > and the diffstat can be found below.
> > > >
> > > > thanks,
> > > >
> > > > greg k-h
> > >
> > > arm64 clang-10 builds breaks due to this patch on
> > >    - stable-rc 4.14
> > >    - stable-rc 4.9
> > >    - stable-rc 4.4
> > >
> > > > Will Deacon <will@kernel.org>
> > > >     compiler.h: Raise minimum version of GCC to 5.1 for arm64
> > >
> > > arm64 (defconfig) with clang-10 - FAILED
> >
> > How is a clang build breaking on a "check what version of gcc is being
> > used" change?
> >
> > What is the error message?
> 
> make --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=arm64
> CROSS_COMPILE=aarch64-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> clang'
> In file included from <built-in>:1:
> include/linux/kconfig.h:74:
> include/linux/compiler_types.h:58:
> include/linux/compiler-gcc.h:160:3: error: Sorry, your version of GCC
> is too old - please use 5.1 or newer.
> # error Sorry, your version of GCC is too old - please use 5.1 or newer.
>   ^
> 1 error generated.
> 
> build error link:
> https://gitlab.com/Linaro/lkft/mirrors/stable/linux-stable-rc/-/jobs/980489003#L514

Urgh, looks like we need backports of 815f0ddb346c
("include/linux/compiler*.h: make compiler-*.h mutually exclusive") then.

Greg -- please drop my changes from 4.14, 4.9 and 4.4 for now and I'll
look at this next week.

Cheers,

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210122153604.GA24972%40willie-the-truck.
