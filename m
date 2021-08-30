Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKOOWSEQMGQEOXAEA4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 397493FBC9E
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 20:44:59 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id g14-20020a17090a300e00b00186081195c2sf78279pjb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 11:44:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630349097; cv=pass;
        d=google.com; s=arc-20160816;
        b=snewtW1l7El0ei5Foc7tnXTFusGQoDbkdmX7YUwiXF/+GBlYMHIO1Pwfw+l0JKEbhl
         EHOwASJUFyjV9/lAJ7jbMvQawTNlmQEXgjHkGSqQLpRdnUieNUoI5jLWO91ZcM6y36vD
         iV3DAh0VCnTjF7ODE9fj0KLb/Con8qD4WostiZlqeizXCuEg0O3/utxTPLdlh3BcdJJR
         2gVmazpzgNQTzUM9tdJlSWhjDDm35sqh+3wTCw0uaOlX98+8gBMvk08B5kJY2x8WZ1YW
         lju9aO+34ZHlwgHFHGT3ip2LVCiSNpWDvv8XsptfoIzgJ/uIhYiWExKLLsAsLqpLp8vk
         hTDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6oUSO1nsDPGEmn5HmGv+NKkXUaBSpp+N07PCDMdofrE=;
        b=GeWbpJEYuEdVueT8wssUAgPK94jZMdJZMa7dWG9lXSiIJJOqHoM9xg2LvQPXpqypVO
         vavT/Gt5HETeW0qqhsPjStGJP2aEAWixdpO6NK+ouZhqH5zLMf5Ri0KBXhmlmlS9h1BR
         TyKdF64rZ+NYTRtkb2peU0T+dS031Bn915sLcU/D131eaxA0fcpeMtmBE+zyLHaDiL6f
         7e1PtcwrpSKRiUo6O53erf6jm/Ka6MNZmQsuS5B156j+TlxGOYP+VU7YEA0vnoa2y7WZ
         mJNIwtUDxghPJ4uRhOX7+hnjXcrhFmPk8yYCLG4+di55Vn4EJ+gFcoP0f1d76HZKryK/
         A6EA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YIenoLLy;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6oUSO1nsDPGEmn5HmGv+NKkXUaBSpp+N07PCDMdofrE=;
        b=henHutSsVzrS8WvG9AfhOhdxBvRWwyB0qgReU53CSDOlgj3IY6AoMIwjEKhBnc9OU3
         jY5LV04PaSZd9V8rCiY0O+EuxZ2srpLtJpMMOYePu+Xh0LHYIQWqur59qnS3cL7u3Z9O
         SHWW9FCNypwWGa74Va4rz+tXy9JKbA/zB/QcGinHCI/Jt4rRIChR2VYOi/qtoLqJiP8l
         ZpsrG1rHfUErhSEuWLrCtxUR0jzpy+7GhX6CAezCPmxGVj4gokBWAuOOVxHM0P34E6IL
         SIigalr3JPP8Q8df7o3WNJIjCGbo2EXCm4l1vAzSXZNdBpw40aJYbLLEF1cREzL3Vjrf
         tLQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6oUSO1nsDPGEmn5HmGv+NKkXUaBSpp+N07PCDMdofrE=;
        b=hV8koMxfI1AlIyFIVNYcTxk0nPb8mRC4EGQnzKKL0oyyA+p4lBz3JPJh1TX83EKQuW
         PVf+h+Cg080fOe1N0ATfqM6/nCDb7lkXLQRhgjnF2jQoDHY5WZRzGQVq5P3g7hTYOer0
         2g3Ae/KO9IhUB1zmNYjE37u9UsjA821U//tcAAmNvy+i8wHFtNffp1+4/cSkjCQuH5Lt
         c8Fw1Tj6SX/5hWUktCwA0Z+QxC+U/5ZsTFibAx2ZoXsiYOL2h2Zp7FijksIb7afHpKI9
         IRzfs1OI1sbbgvfkHM7evsG+QH8ZwPRAKGq+CeyeJVHQCL/TDnJ33bNoPAaNlpaX8hVF
         DwpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NdBIYjECnkz/d5kW8ChpqOnd3HKkDbg447gKfvmtALaLPXXpG
	grqjlzimVKGoiRClxn5vBsw=
X-Google-Smtp-Source: ABdhPJwi+ku8RJXnBL6/shbJCdYCAcBb0/Y6NOkACOgbklSayiVPtW+wOWf4KAbC+FU/MTWpZ3vLoA==
X-Received: by 2002:a62:5c7:0:b029:3e0:dd9c:8fd2 with SMTP id 190-20020a6205c70000b02903e0dd9c8fd2mr24893410pff.28.1630349097749;
        Mon, 30 Aug 2021 11:44:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:fe18:: with SMTP id g24ls3405712plj.0.gmail; Mon, 30
 Aug 2021 11:44:57 -0700 (PDT)
X-Received: by 2002:a17:90a:351:: with SMTP id 17mr503327pjf.233.1630349097172;
        Mon, 30 Aug 2021 11:44:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630349097; cv=none;
        d=google.com; s=arc-20160816;
        b=blKb0xxocFVxfaltacN91x3CJfIPRW1ya2mdUXHeO5sQPITEhSJD7jzPJvAOnJWyR9
         sySSemNllLHlfd1N63NGGA+XD7ke2Hsw1FRy0k9/5I5VgsSCZxpI8Abi980fDNXMgV2o
         NjLP/WjuTU9rcSRJZgpnZxiJiL2Bqn3cbf48BqZlDcOdP1h1qVGgagKMZ5vyjIa/gAAo
         l+ZPkWzzDggBJ88hs0UhLG/RtHLMC5rnfmKzdSWP7+ogwNxIL536Rb+6DKBzSUDzRx+D
         /8N7ATHdmo9dhYDORQV7HSHTE7wSvaCqXjfgDoU6EH0GlguxbOzTO5cO6+Tkp7p+g7FY
         Q9zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Okv5LnoDgVS4LKNVsDvlVi45GRnzsZgdz2be2LMqyxo=;
        b=DVtHn4ka5aa+fJ8EQK49JscMoBM3HJKjYFfIun/F1nhlSJiEZ3CQHJTKXo4mi2mEmR
         WEawMLXzJOT5YBCSaDIg6+QVBxvbqrJY82IaprLtImyugao9kw1DPN1ckwe/ppB26gF5
         STxB+texd5lgaQeV7RU4pSQP0bkb5TBvW8+Mp8eII64geZG6lkrSrhoL+pW37ahUj334
         /5aTsDCRD9HR+gflB96rZDxVsrhOVh+SY4kSwTTUyneB1OT1NK5WDN3PA9Yb/IaQ5e7l
         HkFbcbdQhWlGgpJrTqGp5Xe9nPqHZCvLxi9cPuwN/I/qIKX3msS2QaWQlPZSuWdID164
         yNJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YIenoLLy;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e11si1311540pgm.0.2021.08.30.11.44.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Aug 2021 11:44:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4C42B60F3A;
	Mon, 30 Aug 2021 18:44:56 +0000 (UTC)
Date: Mon, 30 Aug 2021 11:44:54 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org,
	llvm@lists.linux.dev
Subject: Re: [PATCH v3 0/5] Enable -Warray-bounds and -Wzero-length-bounds
Message-ID: <YS0nJtNDCwfbaubZ@Ryzen-9-3900X.localdomain>
References: <20210827163015.3141722-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210827163015.3141722-1-keescook@chromium.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YIenoLLy;       spf=pass
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

On Fri, Aug 27, 2021 at 09:30:10AM -0700, Kees Cook wrote:
> v3:
> - fix typo in treewide conversion (u8 should have been __u8)
> - improve changelog for DECLARE_FLEX_ARRAY patch
> - add acks/reviews
> v2: https://lore.kernel.org/lkml/20210826050458.1540622-1-keescook@chromium.org/
> v1: https://lore.kernel.org/lkml/20210818081118.1667663-1-keescook@chromium.org/
> 
> Hi,
> 
> In support of the improved buffer overflow detection for memcpy(),
> this enables -Warray-bounds and -Wzero-length-bounds globally. Mostly
> it involves some struct member tricks with the new DECLARE_FLEX_ARRAY()
> macro. Everything else is just replacing stacked 0-element arrays
> with actual unions in two related treewide patches. There is one set of
> special cases that were fixed separately[1] and are needed as well.
> 
> I'm expecting to carry this series with the memcpy() series in my
> "overflow" tree. Reviews appreciated! :)

Hi Kees,

I ran this series through my local build tests and uncovered two
warnings in the same file that appear to be unhandled as of
next-20210830. This is from ARCH=powerpc pseries_defconfig with
clang-14, I did not try earlier versions of clang.

arch/powerpc/kernel/signal_32.c:780:2: error: array index 3 is past the end of the array (which contains 1 element) [-Werror,-Warray-bounds]
        unsafe_put_sigset_t(&frame->uc.uc_sigmask, oldset, failed);
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/powerpc/kernel/signal_32.c:85:29: note: expanded from macro 'unsafe_put_sigset_t'
#define unsafe_put_sigset_t     unsafe_put_compat_sigset
                                ^
./include/linux/compat.h:455:19: note: expanded from macro 'unsafe_put_compat_sigset'
                unsafe_put_user(__s->sig[3] >> 32, &__c->sig[7], label);        \
                                ^        ~
./arch/powerpc/include/asm/uaccess.h:426:42: note: expanded from macro 'unsafe_put_user'
        __put_user_size_goto((__typeof__(*(p)))(x), (p), sizeof(*(p)), e)
                                                ^
./arch/powerpc/include/asm/uaccess.h:114:30: note: expanded from macro '__put_user_size_goto'
        case 1: __put_user_asm_goto(x, __pus_addr, label, "stb"); break;        \
                                    ^
./arch/powerpc/include/asm/uaccess.h:89:10: note: expanded from macro '__put_user_asm_goto'
                : "r" (x), "m"UPD_CONSTR (*addr)                \
                       ^
./include/linux/compiler_types.h:254:42: note: expanded from macro 'asm_volatile_goto'
#define asm_volatile_goto(x...) asm goto(x)
                                         ^
./arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
        unsigned long sig[_NSIG_WORDS];
        ^
arch/powerpc/kernel/signal_32.c:1044:3: error: array index 2 is past the end of the array (which contains 1 element) [-Werror,-Warray-bounds]
                unsafe_put_sigset_t(&old_ctx->uc_sigmask, &current->blocked, failed);
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/powerpc/kernel/signal_32.c:85:29: note: expanded from macro 'unsafe_put_sigset_t'
#define unsafe_put_sigset_t     unsafe_put_compat_sigset
                                ^
./include/linux/compat.h:459:19: note: expanded from macro 'unsafe_put_compat_sigset'
                unsafe_put_user(__s->sig[2] >> 32, &__c->sig[5], label);        \
                                ^        ~
./arch/powerpc/include/asm/uaccess.h:426:42: note: expanded from macro 'unsafe_put_user'
        __put_user_size_goto((__typeof__(*(p)))(x), (p), sizeof(*(p)), e)
                                                ^
./arch/powerpc/include/asm/uaccess.h:116:30: note: expanded from macro '__put_user_size_goto'
        case 4: __put_user_asm_goto(x, __pus_addr, label, "stw"); break;        \
                                    ^
./arch/powerpc/include/asm/uaccess.h:89:10: note: expanded from macro '__put_user_asm_goto'
                : "r" (x), "m"UPD_CONSTR (*addr)                \
                       ^
./include/linux/compiler_types.h:254:42: note: expanded from macro 'asm_volatile_goto'
#define asm_volatile_goto(x...) asm goto(x)
                                         ^
./arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
        unsigned long sig[_NSIG_WORDS];
        ^

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YS0nJtNDCwfbaubZ%40Ryzen-9-3900X.localdomain.
