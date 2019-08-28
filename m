Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMUKTPVQKGQEHOEBZXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id F158EA0951
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 20:17:22 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id x40sf510712edm.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 11:17:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567016242; cv=pass;
        d=google.com; s=arc-20160816;
        b=fh4fYIxdXU58ct0Ahb1H1kL5ImovJWKzwm48sbVqLOFdzQC0hjB2ftP+bnabG2n3hN
         tmQiw5Qx90cwfXHVOSxmDiIechZisP3bExOhWvAE/xvOQG8y4oY+30yQKvspdrIu1qti
         PWukzbuoKlguMKHVTRrT7aAW1wXmFQKgJRH8xA1CjXVq9C8gOpcEQWpbGL24eBwxNHwn
         0mRlqm0LJLL/Z3/0BmoO9Jyx0osUP0xrxfaPzwDODZ9lGIL8isSO0RUeQEpczzdyJ5bu
         dnxKMxljCKBObplm2TMPVBqQWfzCPc1k3/brA64SCR/e0bcObUmv3UzH4Je1krzazeci
         fEiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=eKwHh30gWLXMVNSfc4STdiGJNDW1Um3oYAfBi3Xssn8=;
        b=Hsohapwk+Iu7S0gYPYinlQohNfsqjFE54h075Sh2SvHPl6lb85tAQ8xZyjoCH1akrX
         O28otR+KokVijMFBW+rjTvaMm1dtmtQ8s8HdhNSOQz6mTX4IAWTS/zY3+twTVOvQgIXN
         /XxIyT7QqOZrowbByG+7PKQYJxfvm8XueOOEXhgHQqQBR0Igl5wa6/GXzZbG5hyfA7Mi
         2Radej6hX9SfWgZjeG67NMc4M10qObjSi8tXFUq4aGK62kPBCocPigea7BIED8RmI/RP
         SveMKWlaqNM/zb0ACqvggBBdfbqUyqs1QxqdQv09aNvvDTvMRohyZjkFxUA73hE7cxeK
         M9AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TTIo+0op;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eKwHh30gWLXMVNSfc4STdiGJNDW1Um3oYAfBi3Xssn8=;
        b=p/X9Lg/6BxFp5uW4YjimpxwR+mxqTDwe3glNqD6pUq7jvuaa1V1VIUPX54aQqYmgoi
         JA+JCElqacPfQ0TAvz6iTWkkRuU1UfobjiCCFw5ViM73D3x7XBdQjUQp/jBd1Bo0cMiy
         269jgq8cfRl6yN2OHA5nQSH7cmoiwJWNLl7lx0tKA5bPE0pMoTBhX8VHeA4HQcYdDL7A
         6r5qmLeIyTr5CXld1bblqjoD9BnUADjxkUJ3Vsph5iZyLjYDg1g2a8+RITFF4lJrCFTg
         ClEDcYrUwGdgM/Akn6dSCt7UULH6TzqYDwjdlJcOfsBzrR4NGbxzaXvuaMqSCYlf76dH
         tjoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eKwHh30gWLXMVNSfc4STdiGJNDW1Um3oYAfBi3Xssn8=;
        b=oRovJeUyGAb7a3qQ8P946OvsOkjIFZZlr0IoHzGyksKpPn7T3Azwl+9CWsQp+xtzGH
         iiZFsV9HlAL1C+ND5T/6Ry8iDgylDyZzpJhW1CEFTgBh1xs5Y0CrbIz6V29OmZGdcbqy
         UBOGeIpB6rS+nSGEuR2fq2sOuJLsufCCwHuqbXRWDcZ3xQA0KWQLtanyiOjAYZSp8XK1
         gsgxnQae5SrqylT3jwZeRyWGKA6TkDHbMlz3Zdfi72UvdCezNX9gpgJJvWIGtxMxYWVQ
         KsUgvvySxGwwBxCa0VwqT+ocozySykJWoFXIXRetyvaVdyJVeZZ93ZZPabbE19Z0c3Dp
         U4dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eKwHh30gWLXMVNSfc4STdiGJNDW1Um3oYAfBi3Xssn8=;
        b=p6HhYMOE0bcUOHJlLR6vxYOfoDRe4b1W+oSb6DXz3rERp7B7IVGabTFgDt8/W25IMR
         a+SMbNLEs8rtLYajYPdxsEAz7DJ7eq2oR7gBuQ49c8aQYu2G9gkLb3A90ciyuaIt+5c2
         aMkSDlZ4wrRrd9PFcj2i1n1iEbq8GoCLGG5LvNDeiHYyYBCD5d0gngp2h00o2yv1KEnZ
         8dzCP3qFcY2S7SNLT+8DpZIvmeNO/aXPDCWV8jBeqNNDQ2IDWugni6Trvk8wPir2E2Ds
         6Nbh47gvNlPMHVNlgEMca/nmiBLGmHttDTmcNeMZxpD56fgyYRuyWbYHnkce6apEyCG0
         cJtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU1tO+IZoNGSM6XJKrH6H07PYyTs37Hw7KVZAjVEiIVSW1Iz9CM
	thswjTxxoNnasbEVeaxBF+0=
X-Google-Smtp-Source: APXvYqyYIyIBnbwcT+JsUrXXmnItauK1Yk7rmxkfhtiXkvyRHmH0UAhC0Fb+59ZlEl2IJ9czq4Ktdg==
X-Received: by 2002:a17:906:248a:: with SMTP id e10mr4330151ejb.248.1567016242690;
        Wed, 28 Aug 2019 11:17:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:6a07:: with SMTP id o7ls1085332ejr.9.gmail; Wed, 28
 Aug 2019 11:17:22 -0700 (PDT)
X-Received: by 2002:a17:906:228e:: with SMTP id p14mr4529961eja.258.1567016242186;
        Wed, 28 Aug 2019 11:17:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567016242; cv=none;
        d=google.com; s=arc-20160816;
        b=Jb+adb6j0c/bOhDTIjrmW29B+lW/t+adCZgsxZ4hNwUDJ1te1kSqKjlYk6CplDPZLC
         16N3RZfxIVlo0LrcR36TbGDWZAzOnzNOYq3sEOEARf2LVgtBKXt7No4bkAeqwUZ5DplA
         2KggYkTcPjXXthtr7AiO2DdLOtkNVyWUWLaCoFvR2/AcXiGBN1Cz0aX7GXvvXBkQP7fn
         u8SV8il2jmPOFcUny1B1DM4ZVte08lv7fEG2ZR3qjQBRyytle+2FV3hYtVnV+/AWAEKr
         c9hs+OeA/7B9TdWGB4yc38Ua9cj+zwlNGTYAv2+bHgYBefpBZOhpKl2edxZKOTcFNLPO
         YVKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Gwd3eZyhGra4vRNIIEht3m+fofsrn3t+q1IGOiidRPk=;
        b=d72n28AsIOJYKX5t/Af7YAwhDOVzhcTVUXfLcTUm7tBXj1HlNOcz6wKQy8fsHtx15+
         Xj1tSPcOaj5rhZMMoa0kmWz0bgshIIumso2uECOSh5S4yppTAgCPJJXzaZNESJqLpiGY
         11YRUx0fR+Lrzgw1CYNl34Is1d+Y8fTZ8ArS6Vd2tlf01ePtZ2hvbiTKQabqWSRvZdYb
         uCTMAhemqXmMwvMIflIr3sWV3C43eyODjaWKNl8yIw4AmSM26AkyQ/pzPR7nk5AnG1T4
         7g1ch4CANGEqSKWY9SWAF4qHkMXh7hze43+qsZnF/mqOI1t7fSUDSe/FxXynVhxXx8Ht
         XhSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TTIo+0op;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id b39si2064edb.1.2019.08.28.11.17.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 11:17:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id f72so1026045wmf.5
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 11:17:22 -0700 (PDT)
X-Received: by 2002:a7b:ce02:: with SMTP id m2mr6761639wmc.7.1567016241750;
        Wed, 28 Aug 2019 11:17:21 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id g65sm144417wma.21.2019.08.28.11.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2019 11:17:21 -0700 (PDT)
Date: Wed, 28 Aug 2019 11:17:19 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] kbuild: refactor scripts/Makefile.extrawarn
Message-ID: <20190828181719.GA127646@archlinux-threadripper>
References: <20190828055425.24765-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190828055425.24765-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TTIo+0op;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Aug 28, 2019 at 02:54:24PM +0900, Masahiro Yamada wrote:
> Instead of the warning-[123] magic, let's accumulate compiler options
> to KBUILD_CFLAGS directly as the top Makefile does. I think this makes
> easier to understand what is going on in this file.
> 
> This commit slightly changes the behavior, I think all of which are OK.
> 
> [1] Currently, cc-option calls are needlessly evaluated. For example,
>       warning-3 += $(call cc-option, -Wpacked-bitfield-compat)
>     needs evaluating only when W=3, but it is actually evaluated for
>     W=1, W=2 as well. With this commit, only relevant cc-option calls
>     will be evaluated. This is a slight optimization.
> 
> [2] Currently, unsupported level like W=4 is checked by:
>       $(error W=$(KBUILD_ENABLE_EXTRA_GCC_CHECKS) is unknown)
>     This will no longer be checked, but I do not think it is a big
>     deal.
> 
> [3] Currently, 4 Clang warnings (Winitializer-overrides, Wformat,
>     Wsign-compare, Wformat-zero-length) are shown by any of W=1, W=2,
>     and W=3. With this commit, they will be warned only by W=1. I
>     think this is a more correct behavior since each warning belongs
>     to only one warning level.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828181719.GA127646%40archlinux-threadripper.
