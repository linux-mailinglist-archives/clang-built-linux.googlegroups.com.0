Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUM4V2DAMGQE7F425LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA5E3ABB24
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 20:02:57 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id r15-20020a0562140c4fb0290262f40bf4bcsf2253057qvj.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 11:02:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623952977; cv=pass;
        d=google.com; s=arc-20160816;
        b=eMfyll8lqDgIfE6EhFhhpE07IKVGlPU54eFK2byeSqwHkhwqiSejVLXiLqky7k2GPK
         iFITQkKnBiLLTMnMcg2nwyPptnxYoPYaZkdRL5KURCL+WfIw3OoUA72Aa4RfRpPBmP9L
         pNfr4nHFZwt8O7yN1E/ptgpdTZ3abWhsJaAWvtSE8GrUu3Xusmq3Y+UoDBepTsJds/h5
         5rlN59lScg/5GfX7Lm5UW71oQkWLc3Hd5H50HqEfea5P+D3PmUm7vZ4KfCEYP4fmejo4
         5Bd+Se+jfdJqpcObgpoaK1BVyrWF9HROq7vjjavD/ursLZ6SEe8HR3TGVVex6N9Z3Ykw
         VCOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=EFeT0zi/7I91rtQY1JK9xRtzqR7KlXl58SfZ4QIPCLY=;
        b=a3TOzDcdj8gorjnrV0XUr6LRJcv63FHLwW0D4oZaoDFK5UnQsLZPx18Q42pBriiPco
         eADBSlI4XSmh2UfC7RUUot+qBfwdJA4gAYIx5VpiZtp8w9PO0kWL/20xAxT3H9xCXnNb
         mc1Jzi9nVOJ2HVaTY/0e6Cbft1VMBmYztatq+cCmjFjox2JYNCnD5m7BIRpLzbm+gzFK
         VZ5Mso5eCkDpMFD/LrI6nQAn4l42AdgPe7isevX/Ojit7ZujTvNa5J5f0gEEyRieO6w6
         okpAg098VSvvZqwssgXxOyaakyu+7j+xZ7xGygZJ1rQEg6IzG8YdGSsAjayeG9M+xQFh
         GWww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pT7MmJp0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EFeT0zi/7I91rtQY1JK9xRtzqR7KlXl58SfZ4QIPCLY=;
        b=NzqcTD5SVd+TwkJS7eT/qpA43DI3rorRDtLssyS38+ZlG+cVH1EMRBzZGp2v+A5ttv
         2U1vTrWDdrGIMi5R3YGl+HqhjuzfofGIvMsDocT9GGyQGmbwU/JtrdjLD7TMQKAbAUQ3
         +aM/KwE2iqftApm0byh7RqxlmpH0G9qc9COOxV26Iu9DXrwqcXRJjMm432Iv+vcD8qk4
         8D82Gkd2+u3Lqt4wHnIv/KQe9oThBKwawz5QuF0EmigsijvmmgUj8gdRJnTNO7xa4ajs
         dmeoQAEuIXnuA1eSHTr3konUb5hnYu/XS2IGceN+R7bwq5GdLm6r62qBPyvMMzzkP6LT
         /oBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EFeT0zi/7I91rtQY1JK9xRtzqR7KlXl58SfZ4QIPCLY=;
        b=b8aSlY+RJ6KcziT757RCO3aLIwxRU28t1P5oqE8XCcNoEtOvR1il04R4wdIPKsBD2Q
         dul6tZMnC+Bko+t6D7kLRpppvXbBvBGH74ycLD/UpdUkyyouCLqI3eMxFfDtAtqro7IZ
         bVpJxxeUZYEb5mQGp2SBea9QK40J3a4XqIRH9taxe17c3kkh41gjw8IOI/QKJ0ToCjYi
         29rElohNB/nXDb/KxLb2KMgrL2p69CWScIUCQDvoJ63+2kgY/wTan1ivQ04vk2oJJXvw
         PnOsQdHa2R3TG2yDE2ALUG8Qz7HgdBCZ5lMYHp++VKI8rtepqqt9LN5VDhYe07yuEct8
         UaLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53002raZTup9YRiTCAdpZZ0pSEVqQ8zERdEgWoNato87XoX9xGjX
	VpkhNsbOK+1y5dLeyp3THUk=
X-Google-Smtp-Source: ABdhPJzataJdvirdjKdtWTS08ImJZUYwm0UG2tT3Qu7GvlYWzjDCls+pwjY23hFftNWvsfwYUyLaQA==
X-Received: by 2002:ac8:6b42:: with SMTP id x2mr6477149qts.382.1623952977096;
        Thu, 17 Jun 2021 11:02:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:9042:: with SMTP id o60ls2451381qvo.7.gmail; Thu, 17 Jun
 2021 11:02:56 -0700 (PDT)
X-Received: by 2002:a0c:ff48:: with SMTP id y8mr1200456qvt.29.1623952976719;
        Thu, 17 Jun 2021 11:02:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623952976; cv=none;
        d=google.com; s=arc-20160816;
        b=C3cxzSB8jgZDgXP0bX5YKMJ/Na6MjXUE/t9/cNT0AlwyPtN68mdJ2Ax+PuPs/izsv0
         oeZWu/0s7emZ75/bwpqDOzNoh0JaI2lfde1EETcsSJaLTlkV22b/908+ziNHiRgEmYXx
         kLtCgvJtvrl1Izkt2JtwIqfhr6+61w2u2E3nZ8dX2d2jl1nqPVhCgOaPVfKR9D/DYFKc
         wQd/yHN1/DqBhTFd8v4wNj6W1j3eLEUfiPYoLPuZOBJHeDiKjetzVNyNdb3LQa7OD8EY
         o2CXJrRPZ3vCRHlSdK4CprpN0krC7Yt+LCE1usKiXKnbkopD9sLWKWXCb0eDJ04OwNyj
         RGyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eYV95erL7TFAB+lcjK/WI29aoG1NnXhq6N797I9SOBg=;
        b=X+z1IvMnZcw8lhjq8bD8TvEW67BRd7wWByGlF+cpPxrQKie98Se/EWRVexYIfv4elC
         RKjV/ikNCrs6taKtR9mI3zGv1POXyAZdBnPCR/bJ1WNQ2ado8iUk0YmQf2gDVCaMtZJ8
         mmy1vYj2gO2Z6xa1lRA49harO5ipfTz9n1hotOZdNa7Sw/HafvVFm5dYp58C6C/Kl3YE
         hMr8O9/JDgjMBfj8YEC3jXLmZaGj012AvbxuCBDURYgppP2FrpkNVP7/0qyj2H9n015J
         jL8R69HDfTQnB68Sa/08cX0RHWISacUQhkeF8fej5/Yc6yk7Gc69J13yp50J9IbfE/1W
         hdBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pT7MmJp0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f1si356291qko.5.2021.06.17.11.02.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Jun 2021 11:02:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BC61561241;
	Thu, 17 Jun 2021 18:02:53 +0000 (UTC)
Date: Thu, 17 Jun 2021 11:02:50 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Matthew Wilcox <willy@infradead.org>,
	Naresh Kamboju <naresh.kamboju@linaro.org>,
	linux-next@vger.kernel.org, clang-built-linux@googlegroups.com,
	lkft-triage@lists.linaro.org, linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [next] [clang] x86_64-linux-gnu-ld: mm/mremap.o: in function
 `move_pgt_entry': mremap.c:(.text+0x763): undefined reference to
 `__compiletime_assert_342'
Message-ID: <YMuOSnJsL9qkxweY@archlinux-ax161>
References: <CA+G9fYsWHE5Vu9T3FV-vtHHbVFJWEF=bmjQxwaZs3uVYef028g@mail.gmail.com>
 <CA+G9fYvvf+XTvZg1sTq4_f9OrVFsCazGo0ozaEbjVYgSeKCkWA@mail.gmail.com>
 <YMtTdU2b9fI3dnFD@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YMtTdU2b9fI3dnFD@casper.infradead.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=pT7MmJp0;       spf=pass
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

Rebuilt the CC list because most people were added based on the
incorrect bisect result.

On Thu, Jun 17, 2021 at 02:51:49PM +0100, Matthew Wilcox wrote:
> On Thu, Jun 17, 2021 at 06:15:45PM +0530, Naresh Kamboju wrote:
> > On Thu, 17 Jun 2021 at 17:41, Naresh Kamboju <naresh.kamboju@linaro.org> wrote:
> > > x86_64-linux-gnu-ld: mm/mremap.o: in function `move_pgt_entry':
> > > mremap.c:(.text+0x763): undefined reference to `__compiletime_assert_342'
> > 
> > The git bisect pointed out the first bad commit.
> > 
> > The first bad commit:
> > commit 928cf6adc7d60c96eca760c05c1000cda061604e
> > Author: Stephen Boyd <swboyd@chromium.org>
> > Date:   Thu Jun 17 15:21:35 2021 +1000
> >     module: add printk formats to add module build ID to stacktraces
> 
> Your git bisect probably went astray.  There's no way that commit
> caused that regression.

My bisect landed on commit 83f85ac75855 ("mm/mremap: convert huge PUD
move to separate helper"). flush_pud_tlb_range() evaluates to
BUILD_BUG() when CONFIG_TRANSPARENT_HUGEPAGE is unset but this function
is present just based on the value of
CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD.

$ make -skj(nproc) ARCH=x86_64 CC=clang O=build/x86_64 distclean allnoconfig mm/mremap.o

$ llvm-readelf -s build/x86_64/mm/mremap.o &| rg __compiletime_assert
    21: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT   UND __compiletime_assert_337

$ rg TRANSPARENT_ build/x86_64/.config
450:CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
451:CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD=y
562:# CONFIG_TRANSPARENT_HUGEPAGE is not set

Not sure why this does not happen on newer clang versions, presumably
something with inlining decisions? Still seems like a legitimate issue
to me.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMuOSnJsL9qkxweY%40archlinux-ax161.
