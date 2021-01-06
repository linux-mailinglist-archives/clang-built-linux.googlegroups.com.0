Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4G33D7QKGQEHUSMZHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id A15982EC5CE
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 22:38:57 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id c1sf2773215pjo.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 13:38:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609969136; cv=pass;
        d=google.com; s=arc-20160816;
        b=gRnx1iSZXe5aleHDdWcebhUFMidOuet46mefBwR/Dhm5S4B3QOc/GgOrp60rgV0uAS
         L5AaL9sc730cpUlvCasNIOrZgCS8/FG480KW648I2KTaiVcdoKUbD7xNgNyUzyERF7N3
         SUw0YqP/9CHq3qneEdxqs9hm2voRXoQynbRCQ4kOrMdymrVHmRbx0V3VK24k+5KyhEDP
         WkrW0kWcV5ce3YwCApQtojIsCrcYLv6ba2mH/pNpBq58O2yq1gGVdRyU15MmEAshVwHk
         jsYAPNNKu+lEjvvgckKUzLEmOMVxy1Xdt98HyuHk3Tc6CkcuFT0ll3BbjYyihy7p3HRz
         JlSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=KAUUsoupA6dMHRwwqeS8Q8/+GHYc3rWVUXgA72v+BGU=;
        b=Ht2qrsJt1QadpqC/JkqsK4XvPtUAVTUaIBNtRjYj309r8HzzqB2+3qMo5PSabbax91
         fPhtukyxD8/P6F3/MMRnEYcQHxQarbOSd/sucku0xVzlxZe2wYBEW2VWD9AQvICJnkDo
         UZKrBA4VSQTLw+DkHng425ELuSKYrYuF+KZf+cG91ebZA8O1UrTmLfEZDasZlekEbwfB
         rHAoOct5C3DHdIy9wBDN1OY2AWM46y2o88AIPBu2z0yjC6i/oZyaQ2BweilP8hwz3QXC
         HN4p37GigFpG/AqhACobYzNLjdpPWVKa4Ofs3NZD1XpK7rcgyaqxSh4apvXtZGwVCrNw
         /h3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FBNS7GR/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KAUUsoupA6dMHRwwqeS8Q8/+GHYc3rWVUXgA72v+BGU=;
        b=JWo1W5pKh4F/gOJR4Lp0lBibKeo9yAbe98nk/aeiWNtQdVeZOoFY0EwlObeYnsOcvD
         jBtay4nsqihwXE3eSRMhwuykcPPaI+g82t6pxZOrQbzt96wmpa01/dZRXRo5uhLFMa0d
         CH7kiJkEciEpSa+B97T6+uFbEbZEWSQ1PNOC+MzRKKj9Y2J3ENEHfn0Js3gLiuZhPHfr
         6xkhnOAELnRRZT5tT//pP2T71YBjvyQ3uN7HsK14aKpHegVfb7LUNi+Pi29GSVpytN9d
         oslkM7AZXL2/wUhOBjffSRt/Gg1X8nK47DSJWyklKjkXA57PUDh8IWm+Qc2esQesDF64
         a1lw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KAUUsoupA6dMHRwwqeS8Q8/+GHYc3rWVUXgA72v+BGU=;
        b=dTg1K+2Z+mKYGJR0ZVWB0522twtPF8kgEQfXBr/PIZPRKYS7E5sKiWn4179V09iLKy
         gJIYnVKzINw/DkY0jImYGnZY5P15k4sgc2b9ooXs3zJE9JVr7SKsJUZDm2xSLRG2dSGx
         GRL7PAKWdVsyKemg4ws4nQCdttAga8SoJvrD62Gov6KHiF3MePhvDflGRwy9Bt21nXcc
         D3tncowK8q72jeOy7fe8tOmOipfGZoYbuG4DvgoUEBWp0jWy6X1xtKYR4RTsUkPpWmqZ
         XUpQZ0D4R9K39NJh4enHDMQ26MfCMOilPnjichRfrpdOuDDQpDsFQctyFrsdeP06TMNZ
         jUew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KAUUsoupA6dMHRwwqeS8Q8/+GHYc3rWVUXgA72v+BGU=;
        b=ccm8pGaWlxTDhomLhnI1y+wldM6KqDN1SOM82pLIxatbghx1uO+uo/dmBCjOkD98bt
         HXH+usAMEDI0o+rY41xdh933hN+cuabb2KQHXZy7ALFVmjQmiWVIh23QP8vP3DDtvtEj
         HUdJ2nbpmHryz0dvtyVvyYIeiXegEBo0ySUuAYQLcGmI/Q7T19LE09azpUxViRhu2nfS
         Ze/f5vrmFm8weHcs/s/8X5tV3BM47LQ6YapNsiHZGucAG5O5Eo8VPNm6qIMR+G47iSAg
         nJ2etNPOJLQEos1GN9HMXWxslZ8nYJnbxiFP4VIpBVhSrAWRaIrF3QfxmUosCGaFR+Nt
         Yvwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334gCoqGiUzeskF05WXjDHx9R0gum34SjD0OvzxPmdcoa/2FdkY
	NsNLSMV+JleiUXwIdfV0pIY=
X-Google-Smtp-Source: ABdhPJwmZ57TQZRB3VJ5u8CGWSPgRMHKWGhzrglRH8m0SJ+em5XFWwhejlSD8AitIwWAuQ43KMt0fQ==
X-Received: by 2002:a17:90a:8c87:: with SMTP id b7mr6269058pjo.158.1609969136319;
        Wed, 06 Jan 2021 13:38:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ea89:: with SMTP id x9ls2010489plb.2.gmail; Wed, 06
 Jan 2021 13:38:55 -0800 (PST)
X-Received: by 2002:a17:90a:cc06:: with SMTP id b6mr6157782pju.94.1609969135713;
        Wed, 06 Jan 2021 13:38:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609969135; cv=none;
        d=google.com; s=arc-20160816;
        b=ZThXTpNCKUkRdgD8hMfBX3FlShsmfXkgEt5DbCiCw3je69y2wmvWHbH31cFnkBlez/
         ZQgRUrZ9m5lzqdOrg6gggpCTGbu1w83G3yybULLREgLhp+o/lfGpTyg07CA2QOXQOhFl
         8oaxwWPopYJyqRo9gmznUYEUpw/c1/+qx1rltlpvQ05bx7XP42YADl6MbT6zXX8QrcdW
         zMPI2Eyvppkf8vLJ6aaECQ76gDT7ldXdRtnvfuMoZ7ljXPjjEx5K1CFsHmfCl1Vpq2nT
         +iudB9zHM+TzQItvyq70WXSrJ8USLc2wKk+O2ZxXSkHhQ54gx9kBjqBPSA389UqD9Oqz
         qjXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dl1djWeKeSwJeX9gv/m26fBrhfl77JKKmwSMVyYVnk8=;
        b=ISSBndoej3W9t4WpaHc6ywkDIUzMC2BKnAC9Z094+vvpDjKUbEjMacBZh+X7WQklz5
         i/5p5/a6mwk8rxynHdNHJAih9V1OEO85V8ouVch8z0/uUiMp1CCvdD1tC17xlTAQdE4e
         5XqfHl00sB0Q4Oif1cMk+Af8WjV1MQfBemsYrYSZC4LXqu8o+vmIYKc6tPutOuEpt94A
         NN9/v35gtCIxArTH3IFckzFUgOLOLSZvu8jx/nOMido5HVv7vzTUkmApxzwEYDQxtLv5
         AHh6Lq2hkYYGdAaT223+mXNg1oirnRi3K3OR34462IF1BithOAj6yRiFemK2ypwsgqRj
         0uDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FBNS7GR/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com. [2607:f8b0:4864:20::72a])
        by gmr-mx.google.com with ESMTPS id e7si282577pls.4.2021.01.06.13.38.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 13:38:55 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) client-ip=2607:f8b0:4864:20::72a;
Received: by mail-qk1-x72a.google.com with SMTP id b64so3871042qkc.12
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 13:38:55 -0800 (PST)
X-Received: by 2002:a05:620a:147a:: with SMTP id j26mr6313243qkl.190.1609969135209;
        Wed, 06 Jan 2021 13:38:55 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 5sm1800666qtp.55.2021.01.06.13.38.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jan 2021 13:38:54 -0800 (PST)
Date: Wed, 6 Jan 2021 14:38:53 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Marco Elver <elver@google.com>, Kees Cook <keescook@chromium.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	George Popescu <georgepope@android.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with
 clang
Message-ID: <20210106213853.GA3617315@ubuntu-m3-large-x86>
References: <20201230154749.746641-1-arnd@kernel.org>
 <CANpmjNNGmbgg_pFMC6X_6vZcj53jy7PsNyZAC88rOQC5zrOiFw@mail.gmail.com>
 <20210104223336.GA2562866@ubuntu-m3-large-x86>
 <CAK8P3a3J1HGia3cPy+ArFQGzQWj1gy8bx7DdjnRFE=1+JmsrKw@mail.gmail.com>
 <CAK8P3a01iSXxc+05sTtSWvxSYX=g4J1vK-nfnn5oNkR8FO_OTQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a01iSXxc+05sTtSWvxSYX=g4J1vK-nfnn5oNkR8FO_OTQ@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="FBNS7GR/";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jan 06, 2021 at 10:12:51AM +0100, Arnd Bergmann wrote:
> On Tue, Jan 5, 2021 at 10:25 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > On Mon, Jan 4, 2021 at 11:33 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > > On Wed, Dec 30, 2020 at 05:13:03PM +0100, Marco Elver wrote:
> > > > On Wed, 30 Dec 2020 at 16:47, Arnd Bergmann <arnd@kernel.org> wrote:
> > > > >
> > > > > From: Arnd Bergmann <arnd@arndb.de>
> > > > >
> > > > > Building ubsan kernels even for compile-testing introduced these
> > > > > warnings in my randconfig environment:
> > > > >
> > > > > crypto/blake2b_generic.c:98:13: error: stack frame size of 9636 bytes in function 'blake2b_compress' [-Werror,-Wframe-larger-than=]
> > > > > static void blake2b_compress(struct blake2b_state *S,
> > > > > crypto/sha512_generic.c:151:13: error: stack frame size of 1292 bytes in function 'sha512_generic_block_fn' [-Werror,-Wframe-larger-than=]
> > > > > static void sha512_generic_block_fn(struct sha512_state *sst, u8 const *src,
> > > > > lib/crypto/curve25519-fiat32.c:312:22: error: stack frame size of 2180 bytes in function 'fe_mul_impl' [-Werror,-Wframe-larger-than=]
> > > > > static noinline void fe_mul_impl(u32 out[10], const u32 in1[10], const u32 in2[10])
> > > > > lib/crypto/curve25519-fiat32.c:444:22: error: stack frame size of 1588 bytes in function 'fe_sqr_impl' [-Werror,-Wframe-larger-than=]
> > > > > static noinline void fe_sqr_impl(u32 out[10], const u32 in1[10])
> > > > >
> > > > > Further testing showed that this is caused by
> > > > > -fsanitize=unsigned-integer-overflow.
> > > > >
> > > > > The one in blake2b immediately overflows the 8KB stack area on 32-bit
> > > > > architectures, so better ensure this never happens by making this
> > > > > option gcc-only.
> > >
> > > This patch also fixes the failed BUILD_BUG issue in mm/mremap.c that you
> > > sent a patch for [1], along with a couple of other issues I see such as:
> >
> > I'm fairly sure I still saw that BUILD_BUG() even after I had applied this
> > patch, I would guess that one just depends on inlining decisions that
> > are influenced by all kinds of compiler options including
> > -fsanitize=unsigned-integer-overflow, so it becomes less likely.
> >
> > I'll revert my other patch in the randconfig tree to see if it comes back.
> 
> The qcom/gpi.c failure still happens with this patch applied:
> 
> In file included from /git/arm-soc/drivers/dma/qcom/gpi.c:8:
> In function 'field_multiplier',
>     inlined from 'gpi_update_reg' at
> /git/arm-soc/include/linux/bitfield.h:124:17:
> /git/arm-soc/include/linux/bitfield.h:119:3: error: call to
> '__bad_mask' declared with attribute error: bad bitfield mask
>   119 |   __bad_mask();
>       |   ^~~~~~~~~~~~
> In function 'field_multiplier',
>     inlined from 'gpi_update_reg' at
> /git/arm-soc/include/linux/bitfield.h:154:1:
> /git/arm-soc/include/linux/bitfield.h:119:3: error: call to
> '__bad_mask' declared with attribute error: bad bitfield mask
>   119 |   __bad_mask();
>       |   ^~~~~~~~~~~~
> 
> See https://pastebin.com/8UH6x4A2 for the .config
> 
>        Arnd

That config does not build for me, am I holding it wrong?

$ curl -LSso .config https://pastebin.com/raw/8UH6x4A2

$ make -skj"$(nproc)" ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- LLVM=1 olddefconfig vmlinux
.config:364:warning: override: ARCH_DOVE changes choice state
arch/arm/kernel/sys_oabi-compat.c:257:6: error: implicit declaration of function 'ep_op_has_event' [-Werror,-Wimplicit-function-declaration]
        if (ep_op_has_event(op) &&
            ^
arch/arm/kernel/sys_oabi-compat.c:264:9: error: implicit declaration of function 'do_epoll_ctl' [-Werror,-Wimplicit-function-declaration]
        return do_epoll_ctl(epfd, op, fd, &kernel, false);
               ^
arch/arm/kernel/sys_oabi-compat.c:264:9: note: did you mean 'sys_epoll_ctl'?
./include/linux/syscalls.h:359:17: note: 'sys_epoll_ctl' declared here
asmlinkage long sys_epoll_ctl(int epfd, int op, int fd,
                ^
2 errors generated.
...

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210106213853.GA3617315%40ubuntu-m3-large-x86.
