Return-Path: <clang-built-linux+bncBAABBZHC33VQKGQEPXGXASA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDCAAECD6
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 16:21:24 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id y6sf9778356edq.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 07:21:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568125284; cv=pass;
        d=google.com; s=arc-20160816;
        b=RH+D/A6eoAkyYKiAGxwtpLpkKFJ1Usc1YPwGdRc0BUwA5w7guDkWF6L8eEKXVwFFDy
         kg742NsGoMMYMbxrpHSeprqmswX6qQubkwYeOBXl2cQkCm8DIzSX4zRzPOJDGPFZzfRO
         UM8ybG6uNFjBR5aAqK+zsb7FYhQ1GybFGsi5yAXD3OO5NewuHJ6TeMeTKBPJFVMgWKaW
         UaP8uMQxIhiUSclmB62w4+bPKiUwwV3Mh7EBcEYY+/0Epyy6aspjpOVMrK6O23tTLBLK
         0pxglB2hFrYSZA6ZRIwcuDktatL00AsN6n34ShscEAju7Q/nGsWv8PXcMTdyUnexvr0O
         IE1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=O+tfFNCfYjXLGwSmOdK9bA03W2XCjvIs4zF+fAZRX2Q=;
        b=AQh2haufHM7OOYOSsjUZ+/scuXQUQYAffh229xTfz97F5do7Sb2TN9uUb+oUQtkR6M
         QbayobSHLCdYyMSeWTKk5xmGI8ITAqnXgtowSA2gWhfgyBE6w1mtB4ZpdPDLgCK/7i+w
         TJYGHbiJhaZ3URO32wIURU9jzihTYgfmSCYcYmdT1MFLapTrxSUonxcU616DvCLY0WNq
         4KWsvepdI7xVZwTvXmrtat7YPgxseGrzk/jM3A/Fs+v4zKsPj3sBcd28wowgEwtiiPsI
         ohq3dxak+3wi5cbeEz0AHROFviKc5Zxk8i0YdCwkFQfO3ttdqvMOK54tvVtCRMFl2jjk
         wPQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andrew.murray@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O+tfFNCfYjXLGwSmOdK9bA03W2XCjvIs4zF+fAZRX2Q=;
        b=m/zEkuSDaEJzpubIfcHxPpvlit35cMS4n1M95NvSCcUbVDqzqbNun7EcgpuAalw3K7
         YivfVa3piqms/Qoa853dqM3K/tDLzCiCIgmprhH3WhMnrtgpBk03eUJLj3eXXU2n3XdN
         DF0CFY31v8bgGjv8JumHy4yIeTNmzZEZQZDXL+Xb/aRCO6LFo9JqSY1Chl3IK8hB8Gj8
         yfr0TSG85kcxepHm04QDmv0eVWtMcyVqn3HWydm26fz5HkIOrHaXTGCK8cibLZzug9h3
         Ze+SEGS1oqZqZ4ELNFFffaB32PgeO7LULj+3dLmNl5VqPoDbxnIEHQITaePCEOz2nZqB
         Dvfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O+tfFNCfYjXLGwSmOdK9bA03W2XCjvIs4zF+fAZRX2Q=;
        b=Ojcaf1rJyV5dn2J0Gs+OMgCKTalrlMIF4U6AD5Ow/A0hGrouHn55KH0GsUWleW8QFP
         cQOVubAgLdM45+RtpVN+gzywdFB6t8M+a/6ikX0sjOUul/3q8kqWEUpIMFtjIgk7tG/z
         2f83WyyRZN/pluuTg6IESiY1Fa2Gxj0XUAk5VIYdq4TRek7bgjXWixHyZIq+Zw2D/S6c
         OwXzG3AWDoqW2AInJ0p56hlsO1ZVPqUzkosaUCTL8WapWmMcygqb85j2AEO71TDnxC6Y
         xqICTkdkNsMaxZ9SrtmWZ3sv1DlBjhfB5VnAiW8gWuxGiH+OkrPm7c3dr85C12fyFBKI
         4NEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVgxVgNmBk0gscdRi5fPDDLLYAzqTVwLfAel9bVEVzfJ9bMRkim
	zHp1l3bUB+bThmUdOwFcEBg=
X-Google-Smtp-Source: APXvYqzM62cv2965aPfR7P8d5N6DqncqIyQJeBIJXr1l3otrHh6YfOL1SuMYKGDkn1YD0nRbTyBaWQ==
X-Received: by 2002:a50:934c:: with SMTP id n12mr23138352eda.12.1568125284621;
        Tue, 10 Sep 2019 07:21:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:ace6:: with SMTP id x93ls4716231edc.6.gmail; Tue, 10 Sep
 2019 07:21:24 -0700 (PDT)
X-Received: by 2002:a50:8ad1:: with SMTP id k17mr8290070edk.243.1568125284268;
        Tue, 10 Sep 2019 07:21:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568125284; cv=none;
        d=google.com; s=arc-20160816;
        b=g9uVRQ2ie1lhNTOp1TFh1bm4j+4KokifqipAj9006mhYpzY17NjzmBLrQ/1U//cf8V
         l+qp8tapqe3doalf/52xnYdCCXYKhPvU7M63X29yHq2AHbx9sXrp+8+9q5F2PbLjGoXw
         +JuBX+AqNsVxODab4QEQYKdKqavn9ZS99W0hno6BC8TmJtD3qBeI0CTvPcbaCxs8OJyS
         mXpvaaDpy6cvmPnTFqrhU57fOO+QrMEwVXieWGdtfO3mHoxIZOYM0dd/4VAAaffT8aSt
         kqBmbhGT87uR4Cwu7DUMK5aVthwEWiX9aszIbeD1N/zmVRGLxgLxO14B04Chax2xos27
         XA6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=7Y75V9fDKzp+2J49oYKhrB+wp1MupSTaAL/uxnift3Y=;
        b=dBolXx7e3dU9bZ7yeBpQ31KYj5F8YJf9jWRMBHU0yd8aKZwtIMLm4IE8eMXfLYGvTd
         VvkOHTGCFmUl02+ublMDXfrWjQ9HX+5HdmNIc90DFCOmCQO1bGGKf2+/0vnqNnPXDv0i
         ZE8dH3D09vinzi03gnQImvo9HFsLKozpagQBGSdAUjYwMahQZL328v/K2ToA9BSQkFf0
         GZPKxtG/yV7XLkX2zs8Ois3lviQYEqbBwknvntGccULFjtLcNBXIL1eIObOYiKNKaI5r
         d2meyQaB4FUkgmvdBVzLaUtwNGvL1ZoB+ILHoNJXtD1vuBQeS1OkFu/Yu4t39C7va4wL
         DNBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andrew.murray@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id z31si1296338edc.2.2019.09.10.07.21.24
        for <clang-built-linux@googlegroups.com>;
        Tue, 10 Sep 2019 07:21:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9925828;
	Tue, 10 Sep 2019 07:21:23 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 10C1E3F71F;
	Tue, 10 Sep 2019 07:21:22 -0700 (PDT)
Date: Tue, 10 Sep 2019 15:21:21 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Will Deacon <will@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
Message-ID: <20190910142120.GM9720@e119886-lin.cambridge.arm.com>
References: <20190909202153.144970-1-arnd@arndb.de>
 <20190910074606.45k5m2pkztlpj4nj@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190910074606.45k5m2pkztlpj4nj@willie-the-truck>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-Original-Sender: andrew.murray@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=andrew.murray@arm.com
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

On Tue, Sep 10, 2019 at 08:46:07AM +0100, Will Deacon wrote:
> On Mon, Sep 09, 2019 at 10:21:35PM +0200, Arnd Bergmann wrote:
> > On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> > when CONFIG_OPTIMIZE_INLINING is set.
> 
> Hmm. Given that CONFIG_OPTIMIZE_INLINING has also been shown to break
> assignment of local 'register' variables on GCC, perhaps we should just
> disable that option for arm64 (at least) since we don't have any toolchains
> that seem to like it very much! I'd certainly prefer that over playing
> whack-a-mole with __always_inline.

I assume we're referring to stuff such as the following?

https://www.spinics.net/lists/arm-kernel/msg730329.html

Are these breakages limited to the out-of-line hacks made for LL/SC
atomics, or were there other breakages elsewhere?

Now that the out-of-line hacks have gone, I wonder if this is actually
still a problem anymore. In any case isn't the right thing to do there
to add the __always_inline to functions that use the register keyword
in a function currently annotated inline?

I'm happy to look into this if there is likely to be some benefit in
turning on CONFIG_OPTIMIZE_INLINING.

Thanks,

Andrew Murray

> 
> Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910142120.GM9720%40e119886-lin.cambridge.arm.com.
