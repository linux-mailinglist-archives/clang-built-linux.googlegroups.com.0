Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVMJ2CDAMGQERK5K6MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id AACD83B2601
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 06:06:46 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id a193-20020a3766ca0000b02903a9be00d619sf5132088qkc.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 21:06:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624507605; cv=pass;
        d=google.com; s=arc-20160816;
        b=mZF6wdGSMq0QZTD1q72POgtyoxAE7t34mPVJHMNRUP0LF/PJYUd3AJC6xHhBCbptD2
         0iD7+0pVO5VkfNZ3W6Zy5PSlLeYNfM+ERz/FpK1txOR4T0u7ykt9KdAEb8qOBRKkMzHE
         bDhZJXRvW9UkJyudZNkSfzAac6Zt15/U268RUBPjfRLVbJ6g3nr3MrA4YaaDWBAbQ+SH
         dD1Szvh8adRhPgjZFiG054nkWEWPrEhnWlRxpxtguKBsEE++D6sZo4Mb8PmEFtP8agi5
         o+QDx9WYkqC2oxJI7dNgcq9fH/I4D6tkLQpAy2dSWXUHXJvaEn6M9V2GZ3oUz7CoJxK5
         tOzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ubNTBRtcytCvC16NAVhuKMeN+8n8cnKdjkoDHzA1DSE=;
        b=KPawLUfclRIRpXXzQA1zdfXAJ4+JeOk2+9TFzkU2hw+1OJ5Z6Ip4eiY7o0MjIdGEqb
         dWJ0TsAzSz8DMZWwHHGMSHk0AaaLiYEH2EVBKY3ZBw6hA7WCvJgRbM4NugjZ00l7ruex
         D88M5uVnYaLfiXbilvArnkyKrbBg9sHt3y988ke7/7upeBxWBR/w9xeyoyylVIxRm6d4
         FD47S/sAOya9xt1zDPQIYBbUmRh3gfZEzSmMcJCkO/9pf3J2Lx7RvvqH/Mj1o7YR0hxd
         P103ktw5NUTOVHfUmwbZUbcP68iM9TFmuqfWuw+d/UX7T/wPdxjRsb6Br2LkZE89uIgW
         p9+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tsBrCdUL;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ubNTBRtcytCvC16NAVhuKMeN+8n8cnKdjkoDHzA1DSE=;
        b=mlM9XBU8Kvpg75HzjO+gXd8Yj3+Jkvdz28lAEW9x4iZQVw+pMXUPvWqAxCnsiwE9Kc
         g0FMpWNEm3xjLlbL7DlN4V+zKsok6szLN2cBGXaXjSnn8gkSU18MFtsquAB5ArzoLtMO
         sA8xm9wyhetktjHIRLSaZjA27EHMLKORg59VWWVcODJ3ojbjw82LWsfOQnI7LvjukgkQ
         qKJ8kTsvKBulHoe85D/eAOqahVbeKaeDti55lmhur79jJ5SxYhNV5u7puhZMewSG52/N
         tN2UABBBZUI3Kqz/810V2lY/q64kbkAGxZz5hj+Z5JlG4mYk99X5faTaLBI1T2nn8B+f
         NVTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ubNTBRtcytCvC16NAVhuKMeN+8n8cnKdjkoDHzA1DSE=;
        b=hcr7h+zlf5UFxQ0dPTwNcwk5kEZh133utW2qKmtcTPAdPI9NsMRAUfXmtMCJPFRbUv
         PCmGzWFUbh0ZXnxfk1NMQgnmXodu7/iDRaLLOHOIsRAsWDmTRYjymLb8BjdTgKRMSdBb
         oZZ5jDh3ac3rf0ymDVrc6TfmzbWTiIVkLQzQGzQ3nrwqVkujF1eG+lM3zF0e4L8iR8S6
         wH36VQGUwjq1hru2nCPRvRRnRmWLXHxhg9G8k/Je6cK9o6ZxjKGRQOi+oHGnFpm3vrqr
         EdF35FPPRrw3UOcwLpTc3W9dLr+Pm0kVuaJQVM4vS0StVg4Afnc4bTpEYU7VJQ1/gL6U
         tVnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wjUaKnnf1ifJi/saQLehWEQRmVUfLxQtCwsn8WbesUUFyUXsE
	O2zE2tveeCFD3pbzC69KG+Q=
X-Google-Smtp-Source: ABdhPJyyePNGWhnEVAzRSSgGPjPoSQP9TQprS3GrGzsq/57HvrS/cwShqlFttnUVe+hqGMaelf+WIA==
X-Received: by 2002:a0c:f704:: with SMTP id w4mr3379139qvn.50.1624507605762;
        Wed, 23 Jun 2021 21:06:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:244b:: with SMTP id h11ls443135qkn.4.gmail; Wed, 23
 Jun 2021 21:06:45 -0700 (PDT)
X-Received: by 2002:a05:620a:134e:: with SMTP id c14mr3641323qkl.301.1624507605303;
        Wed, 23 Jun 2021 21:06:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624507605; cv=none;
        d=google.com; s=arc-20160816;
        b=z4ry+pHoLX0dg5fvLcC6fU9+rjcIYqsKl/+G6fZvg4sjNUoQPZSNyLGYB0xiesW6ZQ
         QtFg64RqWQrJNKNG//9rGwvwXEa7jKycleiAWJTxzyfs2kx9WGXs02csA8PcaKaahdRS
         T8ZJ8fNzYgRoso5ZVoFL5xNZr9enSpoQuBsLDIt4D+/bjoVXw1nDzWyJ2iskszo/K7R1
         IkpUiackTbpyPo8qZMh6Q5bWkB+grSPfsqcH1zsMaprgMKz+FDPeLrrx3+04a9VlBcv0
         OM05YxIQIlO4YRgKCvDhgQXifvgx5Gb3/6r9fGTJTBYeeMGJrS3MdXADhedE9Fb/Nsry
         jilg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CsgOZGjb7IZ+GhC4u6q7PfKiWlJtqj9nS2SOQ+wlbrA=;
        b=r5wshkSx2AiVkzWk8g1x/Z+cGq33w0n6+2HoSC9fKf6Vdwmb35tyurzwwKVbWfubou
         OJZpKn5o3gDfaKrsQaGOmH01zeRHU6P8KbWqZOS99Hl35+xn3gERWx5WWpB+nJTVaZbV
         l7h2/YaVusNSx+vfI+wUwzZCsLpamuv3v45h3eR1eHEDhmxnIjUxVpsZdguij2V+LYUS
         jWB8RWFAxiQHu8JDbrWTOw/RMhueKTuLEVi4LaJDxJmETtQVjVjloCP11DGmyFmt8fvA
         y0ErKdcHetcTH3S40BFMyQ1Go8LpGVlytEkiK38Td0Og1taeoTqUraZPI2S+mzV5izpi
         JdZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tsBrCdUL;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o23si216152qka.0.2021.06.23.21.06.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Jun 2021 21:06:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A64EF613CC;
	Thu, 24 Jun 2021 04:06:43 +0000 (UTC)
Date: Wed, 23 Jun 2021 21:06:41 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Christoph Hellwig <hch@lst.de>, Brian Cain <bcain@codeaurora.org>,
	Sid Manning <sidneym@codeaurora.org>, linux-hexagon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: how can we test the hexagon port in mainline
Message-ID: <YNQE0YJzC2xmWg+2@Ryzen-9-3900X.localdomain>
References: <20210623141854.GA32155@lst.de>
 <08df01d7683d$8f5b7b70$ae127250$@codeaurora.org>
 <CAK8P3a28_0KJpcLRQrDhFk8-ndxmfk7-Q2_qcRRiYkyh-NNZUQ@mail.gmail.com>
 <08e101d76842$94f78a60$bee69f20$@codeaurora.org>
 <20210623151746.GA4247@lst.de>
 <CAK8P3a2bG64ARjpwQ0ZhQ9P0g8B-=AwcHHAbYBXBS4B6Fy9pQw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a2bG64ARjpwQ0ZhQ9P0g8B-=AwcHHAbYBXBS4B6Fy9pQw@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=tsBrCdUL;       spf=pass
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

On Wed, Jun 23, 2021 at 05:35:38PM +0200, Arnd Bergmann wrote:
> On Wed, Jun 23, 2021 at 5:17 PM Christoph Hellwig <hch@lst.de> wrote:
> >
> > It seem like it still isn't complete enought for a kernel build, though:
> >
> > $ export CROSS_COMPILE=/opt/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin/hexagon-unknown-linux-musl-
> > $ make ARCH=hexagon LLVM=1 oldconfig
> > ...
> > scripts/Kconfig.include:40: linker 'ld.lld' not found
> 
> I tried this using the prebuilt binaries from apt.llvm.org:
> 
> $ make ARCH=hexagon LLVM=1 O=obj-hexagon CROSS_COMPILE=hexagon-linux-
> LLVM_IAS=1 CC=llvm-12 defconfig modules vmlinux
> <stdin>:1515:2: warning: syscall clone3 not implemented [-W#warnings]
> #warning syscall clone3 not implemented
>  ^
> 1 warning generated.
> 
> Doing the same thing with allmodconfig results in an internal error
> with clang-12
> while compiling kernel/locking/lockdep.c. Same thing with clang-13.
> After turning
> off lock debugging, it seems fine.

I've reported this upstream with you on CC:

https://bugs.llvm.org/show_bug.cgi?id=50838

Christoph, that toolchain should work (I had to install libtinfo5 and
libc++1-7 on Debian Buster):

$ export PATH=$HOME/tmp/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin:$PATH

$ make -skj"$(nproc)" ARCH=hexagon CROSS_COMPILE=hexagon-unknown-linux-musl LLVM=1 LLVM_IAS=1 defconfig all

CROSS_COMPILE is really only used to set the '--target=' flag when
LLVM=1 LLVM_IAS=1 are used, it can even be just 'hexagon-linux'.

As Arnd points out, https://apt.llvm.org is also an option, that is what
we use in our continuous integration:

https://github.com/ClangBuiltLinux/continuous-integration2

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YNQE0YJzC2xmWg%2B2%40Ryzen-9-3900X.localdomain.
