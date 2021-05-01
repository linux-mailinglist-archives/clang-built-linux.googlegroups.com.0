Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBB5DW6CAMGQENLPK6WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 40286370927
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 00:09:13 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id f24-20020a17090aa798b029014e704b7ff5sf1729576pjq.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 May 2021 15:09:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619906952; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jo7GxiRKdTXR7L3ciDTDOhFIa6EYnDvR6af5CbZR24YRGhOPbwzloI5gOHXRWHf03x
         pOzFPXQOMMHMNUt3idEqplF/dAaJYfms4eF4tCoq6QcVenmV3p/NygrSamVP0jsnj93r
         54/kBKtdRLlzoTQqdRdOI2m8MqBHbIPXIi5GdtEJZkPe60ja1LBuZtOAwKCr05f9irN1
         FSDSZZqswF4ZQ++dgdIu/qpl0/G+cKEZ5dTzGK71D/oZA+oH0c86ASLGDMnEx4z8X9sK
         qHO8P8HJhMfXONBFbKCCxbJfPYHVPjLUXJ5di8CbZAYAzSRkBxNhbVDmUecddOgTQ/ar
         Kz5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Vh4ZMLR86ycRZpdgnMkoYYh7in+AVCmpbqqY4reaen4=;
        b=q8YsfNrQt0RVmH+aun9PdVEqANwVfBUhklj3QvbP510jm23ZRLayJtJqgZ8RaV3hDN
         ho984lKN4Mz2JVXPPF9lxZcde6Q0fc9g5KZcOGNg2PyuceebGLhfzl2V1goVofh40iEq
         l45zAdTBDJQ2vIiF2xwcT3KYwAxmGeY3fiFSFGTFQXOPuOJepriZzhlikjnZz2OnpNvD
         51ARA3KGMuHH+VgVXXoY4ZyXhoVTbpi30mk8mXZETkQQYfbRvBL/G/V/nBbOwtMT7Dgj
         idHSySSfs43ZUS0Upz8q4j7xmeUGsuOZcVfc/Y3rAXR0G6vZwDMov6E7+8n1SNR2hUc0
         zQzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZE1bxUVC;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vh4ZMLR86ycRZpdgnMkoYYh7in+AVCmpbqqY4reaen4=;
        b=ZD9PsMsNiHO4Ux68WEp2ULMaKlmTxJtrVsfOyazHJGY4+visR85rz7bVKeJ4SPOxIc
         PmCEwpfz2FzdjSGEtg2DJWaxS1yyku9MgzRbQ8uRg7RbB5S2gulPbDW8xwe4tDI9gLQV
         63xVMQRghkJdBv9B3FYSW/NJEg7x+ZNYMa3nvGmTWfY96SprNDQASd0V4vIbts8f+vQZ
         0U0QSn2JZjUsVXKM9h2uNzo432sfCoaDjMBKpa4YVmPbeD7tghYwnzIsP9gRmwCGxyqo
         fOlD0XwpXHMhN2zCV7kYjpWBU9ftzobncGY0cJ1JRsH1aS2Ap8D9mW/XECfTGudcP181
         zX7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Vh4ZMLR86ycRZpdgnMkoYYh7in+AVCmpbqqY4reaen4=;
        b=XBgT4kH9K9yTGf3OVGq5NtQkzjy8NeePsgvKgjgFdk4RZynbV1gsq7ihO9IUug7MC/
         6l9a0W4sY6o22DncNwYrQN7rVucbEsq55t+xcSKzwbiV8N4nIdCuwR5Br+OLwMrwA8d1
         tWovPpk+ivuvwFvN+FoGVEdWH82ADNR+UyPkfsXazO4tbZ8Sm367bLSmLaWViMSWGtge
         uxmpY6Ru87J5iZ9drRG0j8L0qBLPVzA0Ou92R1bvHkUaOBLdgouROTEzUtD8Z3GvsOHq
         W3Kt3AFlKMwa9tXsAMpptME4L5+G5CX0hR9yWAp92Z4tuJA0Wi4++Ers8i96sqU+1V4y
         vhyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TgAbXdcACgjWFWPRzZxr/MXH//XS2K/Pl+bPCQWnKeBmgGnQe
	hSwJnwPb9Ys/S9g6wh3Nztc=
X-Google-Smtp-Source: ABdhPJyzd4RS13D62iQtImo4H/A871ppTknxr2InCJyaJyhQgqBggIk47k1+bbsLuYkEDVZ/IuGsZA==
X-Received: by 2002:a17:90a:bc8:: with SMTP id x8mr2672912pjd.224.1619906952006;
        Sat, 01 May 2021 15:09:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e84a:: with SMTP id t10ls3583295plg.9.gmail; Sat, 01
 May 2021 15:09:11 -0700 (PDT)
X-Received: by 2002:a17:90a:ad09:: with SMTP id r9mr22752484pjq.2.1619906951421;
        Sat, 01 May 2021 15:09:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619906951; cv=none;
        d=google.com; s=arc-20160816;
        b=fgBVWcSoh9qeyyExkXDQPlUxgjIsgGqTViYqzjC8+LRkMPzIQpkXifak1YXtHjFytl
         H78ndxvwEE9bRFTBBDqksdGGvKZk+k5x5AMVPIA015xMawkaOX3eJ5xgmyZ/zAdERxpW
         A237MLgMgQgXYhm8lhHAx2L6SuvUVMhtY/UVvEBHQqcBsZe1IO/X3Vi8QdoxMSKyD5Yw
         niesw3UreJmzovW1cI4DFw/qdJKxsP8KQ13MBD/dlFGVXAC0wJob1bhB2hAUFhHWALG+
         dq6ARDuBTxsXpc1LiXEHHwILDeRDbK1oZmceREaN50Ej5wSWZ35ypvPRnUKq17wfynsx
         uY1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OJmlonHTyW3YnaH5gHF3OIZx8NKqof8SfBVPJEDS5L0=;
        b=D6htBIq2RvxafbItJefpyR2mPAPkSWm5yUjpXglkLNSfqKJhTRen/kBB/l5sDHK6v6
         7czAMPybKaeqR9vbXkQWXW5raX8HCtcblCPGnAX3FwZa6rjNXrsUZPsTgrlzRANZsmyI
         0Sa3VNr+RWHIyALv/unfFazp4WaF4ai1wXcrBWBLtNc7b1O2EbiGTtEInWntJYoK5kuc
         oJCHONsIwJCu64VX2lyth7cZ0A34Ol6jGf2b+/Q4b+KhcT6qVQgh6KU059QYUTpjifWR
         0zukiL9V+KVbeY00p8rJ88LZOMmZWwwIAvolEMsgtfNGqUJ/FVHySkfRN6A8TUt4y5yA
         CzOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZE1bxUVC;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z15si1282206pjt.2.2021.05.01.15.09.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 May 2021 15:09:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6BD4661454;
	Sat,  1 May 2021 22:09:10 +0000 (UTC)
Date: Sat, 1 May 2021 15:09:07 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: CKI Project <cki-project@redhat.com>
Cc: clang-built-linux@googlegroups.com
Subject: Re: =?utf-8?Q?=E2=9D=8C_FAIL=3A_Test_repor?= =?utf-8?Q?t?= for
 kernel 5.12.0 (mainline.kernel.org-clang, 10a3efd0)
Message-ID: <YI3Rg2AMH8+D8qq+@archlinux-ax161>
References: <cki.FB9771846F.S9NOWBE0WM@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cki.FB9771846F.S9NOWBE0WM@redhat.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ZE1bxUVC;       spf=pass
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

On Sat, May 01, 2021 at 09:11:30PM -0000, CKI Project wrote:
> 
> Hello,
> 
> We ran automated tests on a recent commit from this kernel tree:
> 
>        Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>             Commit: 10a3efd0fee5 - Merge tag 'perf-tools-for-v5.13-2021-04-29' of git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux
> 
> The results of these automated tests are provided below.
> 
>     Overall result: FAILED (see details below)
>              Merge: OK
>            Compile: FAILED
>  Selftests compile: FAILED
> 
> All kernel binaries, config files, and logs are available for download here:
> 
>   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/05/01/295644888
> 
> We attempted to compile the kernel for multiple architectures, but the compile
> failed on one or more architectures:
> 
>              s390x: FAILED (see build-s390x.log.xz attachment)

Does not appear to be a clang problem:

https://lore.kernel.org/r/20210423130530.GA6564@kitsune.suse.cz/

> We hope that these logs can help you find the problem quickly. For the full
> detail on our testing procedures, please scroll to the bottom of this message.
> 
> Please reply to this email if you have any questions about the tests that we
> ran or if you have any suggestions on how to make future tests more effective.
> 
>         ,-.   ,-.
>        ( C ) ( K )  Continuous
>         `-',-.`-'   Kernel
>           ( I )     Integration
>            `-'
> ______________________________________________________________________________
> 
> Compile testing
> ---------------
> 
> We compiled the kernel for 4 architectures:
> 
>     aarch64:
>       make options: make LLVM=1 -j24 INSTALL_MOD_STRIP=1 targz-pkg
> 
>     ppc64le:
>       make options: make CC=clang -j24 INSTALL_MOD_STRIP=1 targz-pkg
> 
>     s390x:
>       make options: make CC=clang -j24 INSTALL_MOD_STRIP=1 targz-pkg
> 
>     x86_64:
>       make options: make LLVM=1 -j24 INSTALL_MOD_STRIP=1 targz-pkg
> 
> 
> We built the following selftests:
> 
>   x86_64:
>       net: OK
>       bpf: fail
>       install and packaging: OK
> 
> You can find the full log (build-selftests.log) in the artifact storage above.
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YI3Rg2AMH8%2BD8qq%2B%40archlinux-ax161.
