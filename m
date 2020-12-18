Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBB6OZ6P7AKGQEH65QMLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id F40BB2DE88E
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 18:55:05 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id x187sf1981346lfa.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 09:55:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608314105; cv=pass;
        d=google.com; s=arc-20160816;
        b=reNGUq/r4lsN2IZmrHpBNJEiw0yzNmrZVfFCLRvkFXzdFM9SB8Oz1Ql5JFYUb1f6fX
         89DnyNtSVrrE4rf8G0NMtVCCbRMvSvRHFnSkqZEKhSnQTxnudJRSfi/acCXAE71cVb7M
         Sr6GGB1xUqtWB360i0LtXwMQT+6jJCUM91/s+0EMxcpZe0ockiixrqhTQiyIqxWsUhts
         WVY0H/mGW+yWvVRwdlDmEb/vUjdfE/mNLvyNCmfUzU8w3KhdKelQBZaDXMPfNuv0CHhI
         PL1bdGeWVUocXWXM6UFg6fPILFCNckV514aHWDptrx8ixchN74rK4awukjD3Rd7k6Bn3
         WyOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=8huOWyehHqpJ9w/MPNclPj8k5IJiUCrTXtCong5RNMw=;
        b=n5+6DWVf+VaE2PlyUysweaN6hQoN3boS1IwJxFhwUeUOGvuinf+Y5LRcgBceIz8boS
         0ThcsQwYhqVTWNWTNBbX37whrQ6frnqduqYE8njgt+UfPQaJOUOafikaHBcAirRm6C3e
         XXd31mSP0bQtmPgGUxanCZOsQ0dDxqmUfKwW0BrwumgJsVFfuXjortd71AXl/mgqfz2O
         1zrGAaGtEFkanPW+JQ7NxOC7xnmvQwg3KMk5FsWWLD1SdiuWTWxdYUWCjyEaaJ/T/UJ7
         7PGXw2iZLd/87spmV09pjnCzcxb4rr5dLuoeCOQv/j0HwEhW9nvdkZ4omENo+0M9b1wh
         9NBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=DFvI9G2Q;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8huOWyehHqpJ9w/MPNclPj8k5IJiUCrTXtCong5RNMw=;
        b=OeYVnrWHaLwDDKnaw5XdhHLmIWZnJVwxkmfE5ztxrrpVByFuh/lx9dZoIzsHGw1Muv
         RB/n/5bSb/Ft12mkmVT1yJ+FMuejl69JVSyZ1HCxl5eplYJEPWCH5VZBhOsmNi7wAWPY
         EgM7+Syt5Rfg+LS2LFPPuwD3zcrLd1dh9OhJDtndtVYfRzX/dLn9vgr71FO1Xc7vOIUO
         DANDfugRa92wd7JPqcsXNSXEwfSPYrhs7uAq4opP6hEsg3LSJ811xr6/VfanOeRgIp1X
         r8MLu/4/nmVU86vxOpq0jNDkBpNxMiBzX7GMhO+VHhdsvJHhmaYFHdpIybZ7JP5bnYGf
         JOPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8huOWyehHqpJ9w/MPNclPj8k5IJiUCrTXtCong5RNMw=;
        b=WlzBDZ9QfBuFQlGCI7hBi+9OJYWvT5wtWcuAXilqGxKfth8Xo0P88rFrU65CtkwEn1
         vHE4dQxHHZUz+v/RKcoz3zg/e7xI/ayCCsbGOwVk5DLZ/Sw+soTmgB/isBddxZqOJl74
         aCxjEQJ2+W5nbXjUqHzHVahJSTTqNV9izKFmlasBDcvNQNRPiXGW8P719ZN0cKAsk3TG
         oxIlRxJ5jSzRYM3PUbiak/R5gZwo9AyZZpsVFHIfQQ9T/W65wcHDLe/sVL5BalZPoUdc
         IFhV5fq124KQrLBeO5ECPHAczqqjWV/NylpjFYCHfMXGs68x0x8YZKooybGLKHJb0b/v
         rVeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333NjHXIJxwQNh7ScAfZgUBZejr6y3QQpi7+Z9KCnhSuJjPqyhZ
	O2y7woNTdtIopcndE1/OkuM=
X-Google-Smtp-Source: ABdhPJysvQxU4yZGESgcBIkJvXyX5ab7KhHEAQ3cTMWBajB75MGz9WLqRxR7VfNfOM05PCtAgYvhjQ==
X-Received: by 2002:a2e:586:: with SMTP id 128mr2428213ljf.273.1608314105535;
        Fri, 18 Dec 2020 09:55:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7806:: with SMTP id t6ls3651544ljc.8.gmail; Fri, 18 Dec
 2020 09:55:04 -0800 (PST)
X-Received: by 2002:a2e:b006:: with SMTP id y6mr2249335ljk.366.1608314104368;
        Fri, 18 Dec 2020 09:55:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608314104; cv=none;
        d=google.com; s=arc-20160816;
        b=So0zc0hhaASqyG+/YUysmlHXYvliYlxIe9a5ghyP1chrykb168ZPSjBztnK8oexXw8
         zGTr7n7qTI6M//EtszXU2RqNTD2kubwKv3i4lB5Otrw3uoBe0xgjlz2KI27JCej4iMS3
         y3khB1asRtdgY3qcEYEZYuZOtGZuLbi0pgKIcg6EwTRwQxijDlXxrgyqxnihUb37AMcw
         qQLPgtxuDdEz/0YLcaHIhVOrOkciElkrmFrT0dSAZBHWxSKZ4f2sENLhBTpM5oh/OgkU
         ukggcCBmuPWZCXmtV8f3K4mpuWJf5I43Nm4PYsLWEbQFm9CNdFxeP0zyR30AHXy+loIl
         FgfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=b10g2p9lft/UmhtwJiz67G2XWjBhcNCBTJqBJz2XXw0=;
        b=C0jQY1AXrXK3Eo2zoe3Uu4NOy9uJJZBk8OAJGxjJSXJQyKkV3lKrpg2kavz1gygp7h
         9ym1azsEJ2NzsehAW0NaC9FBXt+Qj3W58mtEA7AkRJDTHbG9+5sFipSuSrniAIBZurJj
         57kuSHZlFB0OgZ/CbJR+bmFs7yuhljapK+hbnTV165xhGrtxqi9WOa5x+EoYl04msuyH
         raUBjmNnB6ssfZBRbAitqIkEBMCcs5quHKisFgJuvRYeCHnKBMi7fMTTn/kFjxONDsBc
         HUbzC36tUYFEu/mTpEvffJcbVX7aD3FeIiCmIhFI1X6sbJ1l7c9JmEc3mgHeWtYtXEMH
         y1LA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=DFvI9G2Q;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id j15si436259lfk.12.2020.12.18.09.55.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Dec 2020 09:55:04 -0800 (PST)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id u18so7504354lfd.9
        for <clang-built-linux@googlegroups.com>; Fri, 18 Dec 2020 09:55:04 -0800 (PST)
X-Received: by 2002:a2e:8085:: with SMTP id i5mr2268468ljg.5.1608314103725;
        Fri, 18 Dec 2020 09:55:03 -0800 (PST)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com. [209.85.167.51])
        by smtp.gmail.com with ESMTPSA id j1sm992318lfg.225.2020.12.18.09.55.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Dec 2020 09:55:02 -0800 (PST)
Received: by mail-lf1-f51.google.com with SMTP id o17so7600711lfg.4
        for <clang-built-linux@googlegroups.com>; Fri, 18 Dec 2020 09:55:02 -0800 (PST)
X-Received: by 2002:a2e:9d89:: with SMTP id c9mr2380283ljj.220.1608314101731;
 Fri, 18 Dec 2020 09:55:01 -0800 (PST)
MIME-Version: 1.0
References: <CGME20201218075758eucas1p1605768803a5c9edce4fbe54b3e3b859a@eucas1p1.samsung.com>
 <20201203125700.161354-1-masahiroy@kernel.org> <b9b17126-9af5-2f73-526e-91bb9fd27f71@samsung.com>
 <CAK7LNART2qQBY7Vc8rhMiXS_Fwty7qpWjwwfPrUegTb-gjy6sA@mail.gmail.com>
 <9f959875-1a30-b1a1-b626-3805e24a6df3@samsung.com> <e5b06d9a-9b24-2440-e0c2-8bf7095eccd9@nvidia.com>
 <25030057-86b1-5619-25fd-acfa0728b850@samsung.com> <4ab4f62f-8b37-01e1-f81c-270155b13a51@nvidia.com>
 <7e691a61-bf4b-0594-8d6d-36d62a5def0b@nvidia.com>
In-Reply-To: <7e691a61-bf4b-0594-8d6d-36d62a5def0b@nvidia.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 18 Dec 2020 09:54:45 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjjiYjCp61gdAMpDOsUBU-A2hFFKJoVx5VAC7yV4K6WYg@mail.gmail.com>
Message-ID: <CAHk-=wjjiYjCp61gdAMpDOsUBU-A2hFFKJoVx5VAC7yV4K6WYg@mail.gmail.com>
Subject: Re: [PATCH] gcc-plugins: simplify GCC plugin-dev capability test
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Kees Cook <keescook@chromium.org>, 
	Emese Revfy <re.emese@gmail.com>, linux-hardening@vger.kernel.org, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-tegra <linux-tegra@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=DFvI9G2Q;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Fri, Dec 18, 2020 at 7:33 AM Jon Hunter <jonathanh@nvidia.com> wrote:
>
> However, if you are saying that this is a problem/bug with our builders,
> then of course we will have to get this fixed.

This seems to be a package dependency problem with the gcc plugins -
they clearly want libgmp, but apparently the package hasn't specified
that dependency.

If this turns out to be a big problem, I guess we can't simplify the
plugin check after all.

We historically just disabled gcc-plugins if that header didn't build,
which obviously meant that it "worked" for people, but it also means
that clearly the coverage can't have been as good as it could/should
be.

So if it's as simple as just installing the GNU multiprecision
libraries ("gmp-devel" on most rpm-based systems, "libgmp-dev" on most
debian systems), then I think that's the right thing to do. You'll get
a working build again, and equally importantly, your build servers
will actually do a better job of covering the different build options.

                     Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwjjiYjCp61gdAMpDOsUBU-A2hFFKJoVx5VAC7yV4K6WYg%40mail.gmail.com.
