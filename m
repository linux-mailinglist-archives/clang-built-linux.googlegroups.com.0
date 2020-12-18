Return-Path: <clang-built-linux+bncBCZLRWEX3ECRBKVE6T7AKGQEFOL7D2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 514D52DEA41
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 21:33:47 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id q11sf4672214ybm.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 12:33:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608323626; cv=pass;
        d=google.com; s=arc-20160816;
        b=Po2AK7o0LEqSTpcqp8W6eJX5L76OryZ3nN+XSt+h+tB/GoVZG/oXkNv5rC5fT+6QKl
         V+q6+L+ao0IJnQ5uqZfpj/X4RcAGt0QSSCHsIYqpEGIyIjq6N01We6hgPHk0JHFjuqS4
         N+oviHGMhPabFDH1KhuXXT4OEBxKab/UgXNmgXc3osz0/H2ZDRkPqkfYRvPg5cLRR/OD
         hEYocIhFx8dIa1zo27IRq9PWDpTOjGUYyLAPbXi/hT4BZMmvfwGvmxrOFJzqzx9bdpkQ
         A8unNV98RI3dWySMxFYSqCqCBxQGGiEvfwBFrJ0wetlcBKVxrX6mMzoyofWJ2vPcN+gF
         /T/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=PVhFEL0dmk4Ak8biQ1oBoEkBlOwqfcOIjmSIfP1kmII=;
        b=uWXYcoaIw62d2Yw40pS8Vjqck0kLPSWAUU4U6P6ZQVlGfASNHZFFxSH5qHm6bxowqK
         s2iyOLwL8niv8FS0HzNqU1ukexo7x5PBlYYtaOMbNNUcPALBr2mmuy8xlopBaTzS+KK9
         DfhmoTpYw1c4vMSwylxq+DN+0YGCoWSQd5/Yluw6DST/Il/wjWqYxJrYI0b9uPHxASap
         adDnSw8Qs5p58qeITKyRuvCMHXemOe+AZJGIioexQdmFGc/u7r3SjeEYDTNZQ+hDzLFo
         hbugxXQ/zL1LNndGHwo0dwzOSduOSRHEy3ka1J2DhfTHog7/8B2x0pCsZPeCiRiEVps+
         IZAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b="Pok/cBh0";
       spf=pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.64 as permitted sender) smtp.mailfrom=jonathanh@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PVhFEL0dmk4Ak8biQ1oBoEkBlOwqfcOIjmSIfP1kmII=;
        b=LsuN1kAPRm2v2u+78N6QPA4bpD1PnQBo0z2+s9MGBFVKIwbY0fvVNoDn8jGimVNfW8
         gaMWF2LNNcHx+/1oEWtK7q7uxx8QkNiiqTOaWxtc2HJMtS1fBs0OIqdBxczoff1E++W4
         yWEy305e96gSxho2aDpKHWQWK0rGkyIjX+rBgm7dAkdt7uvgkVkONKRmtQXefjpg+ZQ5
         FEwUFafTGTi5oWhttd6d96v5MBgmxHGIv2kZB0MxGxhmCq9cn1sXZk3V3IIBZckqcqQJ
         xBCU2++WaHYkJJqK4JNbK8C800bL4JtvpkQPFuJdDWgpbzxWZaNytTgYQm2v/dOkPhI5
         Zd+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PVhFEL0dmk4Ak8biQ1oBoEkBlOwqfcOIjmSIfP1kmII=;
        b=QL3bG3tz1EuyTAJSu35Goa8b0ySzpfsrEnpihGYN/GPxte3PtiA1WhQcC1/HzFvB4m
         EVd8J2fAGc7P5fJ01xDOY4MFa/dmKPHGmGwGph9cNzp1rAdBsPNjJAGRiijdJOTCsFwI
         QBIpYWbj+3iIE4JIn2SlIQbyUXIvxnWzVsbN3GxkWX1htQAHeAK0DBYQYi1DKhhZTSZ+
         yQ/efjiZSb2FIuG4pWmWQQ/0uOGZOneeFoMY29kwrqKPloW+Yl/fxdph09lCSgd0obHd
         50XcvlQZKMi0nude3xNHoDjDDgFNVMmIpJvJowd+8gQy307yNJ56zbrVqWLlf7HTqgXs
         b9pQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wG4vtsXyXOj5tn/9aIRsj6nqpcwWnNj4rSKbySEy4KeY27Jtl
	oPqjGZZNtyWS9kaLdtwqmMM=
X-Google-Smtp-Source: ABdhPJzlqtEqeqQQ8KeyaOp0wGQHbKpVX9Qpk0X3t/LMzIAw9m6yOLzCSC5g8ce557HsYYyKmkwIXg==
X-Received: by 2002:a25:6c05:: with SMTP id h5mr8353848ybc.450.1608323626183;
        Fri, 18 Dec 2020 12:33:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:32c2:: with SMTP id y185ls13995111yby.8.gmail; Fri, 18
 Dec 2020 12:33:45 -0800 (PST)
X-Received: by 2002:a25:d392:: with SMTP id e140mr8866452ybf.70.1608323625755;
        Fri, 18 Dec 2020 12:33:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608323625; cv=none;
        d=google.com; s=arc-20160816;
        b=ixOMqTnl2BItCtgPYRlSc6AX0I2ACnagXGZpD+Bhea27/Z4vdw7UdCyQtNksCfO05v
         cSRv8XHbkxa95zc501z4+Hly9zjXdkcNFd+x3IHjHui1BejvgtfRJ0pJwWNYbGwHAGNm
         GFBAEXSaAeVXooaANVOWHe1mc+u4oSR9bA40q9uP7gHTi3uLAvwsZZfdvvuxJLh88wEo
         jRd3Z3wezazrdYMcqf47jDaV8uEsIap0iN8iLO6VA7WFiXO4QFkBRF+/QpgjfQ+OqCiq
         xCwzG+gWWsksFQ2FVgYNLpvgyn5bVFL9KuB5Enz4mZtKTLbW+wkkHnc4q1BE6Msbs2wm
         zJWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:content-transfer-encoding:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject;
        bh=Vkw+uLqloTF34H+X6XM+h7o523zkguJSKp2ANgZpfIM=;
        b=fVID8SCZojFw666zQhZ85cgy7ie8sMKhEEXuY/KuLDDiBH7z4h6AFn17b+5NR1xUDw
         VO0XnuTIOB6M1/KklTcDdC14Al1purmTyztzgw28U3xwBhvChLqODczjXAKd+c+mOPzz
         3ffHJMXCv2R+5v8WuUyompKamwEopp4K6ijO5xr0qxMjhtFRBjL0eAqU2WgPyn3ZCq/I
         sh8m1F3ZYBBbWz6UZDipM5T8sjj5a6eHGWetKHs21ISL45fEG/LcCQq8Q4XSY05TSsx/
         Wdf3Yxdx/+MZu71oIwCi6jR9AMaBjy8RmOgdc0USWxI2srSSFd5OEgppnsTvUWTF3OsE
         Iq+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b="Pok/cBh0";
       spf=pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.64 as permitted sender) smtp.mailfrom=jonathanh@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqnvemgate25.nvidia.com (hqnvemgate25.nvidia.com. [216.228.121.64])
        by gmr-mx.google.com with ESMTPS id 23si1058186ybc.0.2020.12.18.12.33.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Dec 2020 12:33:45 -0800 (PST)
Received-SPF: pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.64 as permitted sender) client-ip=216.228.121.64;
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate25.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
	id <B5fdd12280000>; Fri, 18 Dec 2020 12:33:44 -0800
Received: from [10.26.73.104] (172.20.145.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 18 Dec
 2020 20:33:40 +0000
Subject: Re: [PATCH] gcc-plugins: simplify GCC plugin-dev capability test
To: Linus Torvalds <torvalds@linux-foundation.org>
CC: Marek Szyprowski <m.szyprowski@samsung.com>, Masahiro Yamada
	<masahiroy@kernel.org>, Linux Kbuild mailing list
	<linux-kbuild@vger.kernel.org>, Kees Cook <keescook@chromium.org>, "Emese
 Revfy" <re.emese@gmail.com>, <linux-hardening@vger.kernel.org>, "Nathan
 Chancellor" <natechancellor@gmail.com>, Nick Desaulniers
	<ndesaulniers@google.com>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, linux-tegra <linux-tegra@vger.kernel.org>
References: <CGME20201218075758eucas1p1605768803a5c9edce4fbe54b3e3b859a@eucas1p1.samsung.com>
 <20201203125700.161354-1-masahiroy@kernel.org>
 <b9b17126-9af5-2f73-526e-91bb9fd27f71@samsung.com>
 <CAK7LNART2qQBY7Vc8rhMiXS_Fwty7qpWjwwfPrUegTb-gjy6sA@mail.gmail.com>
 <9f959875-1a30-b1a1-b626-3805e24a6df3@samsung.com>
 <e5b06d9a-9b24-2440-e0c2-8bf7095eccd9@nvidia.com>
 <25030057-86b1-5619-25fd-acfa0728b850@samsung.com>
 <4ab4f62f-8b37-01e1-f81c-270155b13a51@nvidia.com>
 <7e691a61-bf4b-0594-8d6d-36d62a5def0b@nvidia.com>
 <CAHk-=wjjiYjCp61gdAMpDOsUBU-A2hFFKJoVx5VAC7yV4K6WYg@mail.gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <95ce88c6-59bd-55b9-9299-51fa20aeb95c@nvidia.com>
Date: Fri, 18 Dec 2020 20:33:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wjjiYjCp61gdAMpDOsUBU-A2hFFKJoVx5VAC7yV4K6WYg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [172.20.145.6]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-Original-Sender: jonathanh@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b="Pok/cBh0";       spf=pass
 (google.com: domain of jonathanh@nvidia.com designates 216.228.121.64 as
 permitted sender) smtp.mailfrom=jonathanh@nvidia.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
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


On 18/12/2020 17:54, Linus Torvalds wrote:
> On Fri, Dec 18, 2020 at 7:33 AM Jon Hunter <jonathanh@nvidia.com> wrote:
>>
>> However, if you are saying that this is a problem/bug with our builders,
>> then of course we will have to get this fixed.
> 
> This seems to be a package dependency problem with the gcc plugins -
> they clearly want libgmp, but apparently the package hasn't specified
> that dependency.
> 
> If this turns out to be a big problem, I guess we can't simplify the
> plugin check after all.
> 
> We historically just disabled gcc-plugins if that header didn't build,
> which obviously meant that it "worked" for people, but it also means
> that clearly the coverage can't have been as good as it could/should
> be.
> 
> So if it's as simple as just installing the GNU multiprecision
> libraries ("gmp-devel" on most rpm-based systems, "libgmp-dev" on most
> debian systems), then I think that's the right thing to do. You'll get
> a working build again, and equally importantly, your build servers
> will actually do a better job of covering the different build options.


Thanks. I have reported this issue to the team that administers the
builders. So hopefully, they will install the necessary packages for us
now.

Cheers
Jon

-- 
nvpublic

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/95ce88c6-59bd-55b9-9299-51fa20aeb95c%40nvidia.com.
