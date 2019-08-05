Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB66YULVAKGQEFIVENBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1238278E
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 00:23:56 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id r4sf41552580wrt.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Aug 2019 15:23:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565043835; cv=pass;
        d=google.com; s=arc-20160816;
        b=hY11iDHk0CT5aOQcnYDCzwQ3b04wxo2dH8EQhkVX3fSn9uXrFyTRYpd79uIUMH4kFl
         DkVD/Rmr9H0zrhFSzXKM1EzizAlUI9xEKe6nK8cdNZfywSfEH5a8Savcu82u/MwKjFx9
         9oXGK3xjTaWzKd9pu3QkvwXyD95L6PTMB9Maw0hygib2wc/nbXi47v4zanFwgeTWlcrG
         4Y+QP7iLXcNcX+rObYaEOgA40mljFvk6v/WTW1sskeW90lTvrcQbIwFa9Wn0BhHzZBTw
         a7x9pbOGsARhLJVw0TCm2quLIPn7fef/fqG5Qqk7wqbCwrp/+GJ78cVGFJMdLXHezivG
         OHaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=VQxiJd+N3CH0WWKQCiyymJ1C8DwMj0m5SsbbjSqr5cI=;
        b=byMA43E1uFLR2s58qnCIoUYKxPUNB4XMu037cZgr7oE+rAyQknTvFtCdwhLcEIDrwF
         uNWcx1W6i6APbqD8G8LtPPpJ0iqo1ftJYhSK8ei2qwulZZkZVc7SGs6KqPs8CIT1V5RB
         JrQKGx1+5OaPfNntB8IzOOKIW3My8QwZya7zTiR+OIT9y1y0Va1ZbK+dWNdhH0SJDrx6
         K5r2C84+NOMrTBys91igseCXMPqkej8wHzPOV2+ZIWNwBfL248lcEDc07M44xOgU3jxr
         qpT81Y61mzfRqAKe9kjgtavj0I4F49jICsITS6kA8I1A45eF/SyvkqPUn8NCj8xLKz/D
         rmGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iu3nsp3m;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VQxiJd+N3CH0WWKQCiyymJ1C8DwMj0m5SsbbjSqr5cI=;
        b=syrJlve6IrHgagmTpYMjLDiICLCqnDyHJ9YIuHS3F0xFhCkZgbD/e2W+Pnk6i1FLN8
         UcHoEVF3Eb1GnrBLEH9EQd5doEmbp0rEFUuVDvcub3VEduTHEqy1SBfCEIgjAIuulj2q
         qeJsdDDYXV7H1SzgDduH7SW0Xs0VkcfjHFLNQE6aWhlP4YPlavi3I1kJNemlvIM08mqV
         Q64G3gbQG2S3cxJ0dXfD7Loh5rmkTsMJYdkyZtdlFaJMzh5QxeWRje+svjHcfXXHDlhX
         J6Zh+U30Z/Q388NoJb58+o7sV+cERgJt5bkHycPLITU5yYQtHT+QFWYvXfvZkb0tu/OM
         vk8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VQxiJd+N3CH0WWKQCiyymJ1C8DwMj0m5SsbbjSqr5cI=;
        b=LxYpSofL/fKMWL6F0LUCWKMNxwWuJrUV9R0bCDS8u6YnIk2njrT/dfvtHyrwkPzDeG
         aYOP0DlJfYdMVgqj76gjuFPRoCsVtn5dVRe8eIUAfyiuKf6JYpIvMYKsxxf96SNlFDSe
         6UxT/0z9jW8upYTAqDptza7ILFuHaG/ItuPv2Rnk4hHw6NQHGTT+bl9q0DnCKYrRQhZu
         8zXuSmj59sCufF1unfhdBFfb7oDyPPDXPNkwju6bwC/7vB4T8hkYkEUNH41t3xEULzJf
         2eljhuvSlG2aZBmNv5J5JnrPwUkaxzII5B7WqeTDcvjNFW86oywglmPz/qmVbiIFFyrP
         CbgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VQxiJd+N3CH0WWKQCiyymJ1C8DwMj0m5SsbbjSqr5cI=;
        b=ixhSmg6ZZb0cOa8bpSpWBSTw/8K+/+PUCXnhChPhzS0ST0ArVgDvHbOyNI3aQldXBH
         HT67ITbl/jcKKKLOvqWh7WxEb2xLLiJkas6IKN6Km4mhvfFcvCTP1D+CnKIKjI9YS2vi
         Z+uwh+k7bnycSTq6Lm4muIGQ5FOXV6mrKHT7KQWVEos4Qd0STzS/c7BtmMJ70CgckBF7
         2sxeoWStgGGPGTKl5tUVhLMUWfBz0CUquF9NIxTDpExhqi7hENwL6RgSYVdvGMnaSQc0
         XjVyyjjeKPKOslHSvE6YjMjQ5x4xOFQjKeFIl+TW9q9g5sWhw49LNIdAqL02ozUtcbOV
         UQ+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUmew0SEEa18IARvlhaA53cfZ7rDNNu9PoWc37EWVazGP1RNur9
	T+zePCYqYfgx5Rbusn6pWzY=
X-Google-Smtp-Source: APXvYqxnd1DveNpQHP1fpA4hRZrfyjhrwqQ90Nl8SdkCUjepg6QYCXMWzNEQUCCh2LQQIr+n3s7log==
X-Received: by 2002:a05:6000:1007:: with SMTP id a7mr243601wrx.172.1565043835769;
        Mon, 05 Aug 2019 15:23:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a557:: with SMTP id o84ls481348wme.3.gmail; Mon, 05 Aug
 2019 15:23:55 -0700 (PDT)
X-Received: by 2002:a05:600c:225a:: with SMTP id a26mr388818wmm.81.1565043835325;
        Mon, 05 Aug 2019 15:23:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565043835; cv=none;
        d=google.com; s=arc-20160816;
        b=sNoD6QJ8L+ZWFg7bsd5DiOFJDz4NFe5taEjeOPAqWUhva3YAvDFpxbph7fYaGvfAAq
         zdOF1u/7i1Wv3YlEytcIISUEy2jUQziii89FHB7bbbiNSteaSIE9sXWgjxuR8lBIZXIO
         oitxN90IGsuE3A6Zf4tVXE41nGTVUBYYwEmRyQzDWez/cjHLx/4v+DnSSW2X7qwnjE87
         A6jmv+132GhumqP3IfCCf19D4QTcY0tHwNN9qyOqV4NKVGQJyQ3KRnKo542hd9Z9FHS0
         xNAXe5jRQwmiaEtc+eSzTibYFRUwtvY7pIWZPUi0iwJi6AvN1R0QNBh/Ksy1zSMD0J51
         zKIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bUVYPxPP09P8ppfnqPZLUiZLPE23j1PKZ0KMt6pCCrI=;
        b=B0Mma4twk+jNOXGPGRqbDTG2Qef8us7+AtDBLsrxuCBkyctoBuG3ZEUqld91r9NGHn
         L2YIirkpEar/50DaUM98QmjBcl9QIXlGydT27dWTtUHaG4YywLgrz0xsuJEFs32D1fpw
         sc+YeaU7eQBlhgJm+63Lj5wEY4JJE7odioRRNV7diHT2y7/v+iS/eBN4gLfg3ftGYric
         ISOuYQzLKyDmNyuSqF5t91VZl4kDb6ngNYsg+l9CXp5mL9gKipNMTAWqrjOY4KaYp/dt
         ooLKUzB7eEIB8UKpsF9moszJ3gGkbeZBiQrc1rndpXN0RQ8os/TOW6Xlw3o3wbw8FRxb
         6i+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iu3nsp3m;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id a10si4518564wmm.2.2019.08.05.15.23.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Aug 2019 15:23:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id x1so36000041wrr.9
        for <clang-built-linux@googlegroups.com>; Mon, 05 Aug 2019 15:23:55 -0700 (PDT)
X-Received: by 2002:a5d:4e06:: with SMTP id p6mr232194wrt.336.1565043834692;
        Mon, 05 Aug 2019 15:23:54 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id z25sm89979646wmf.38.2019.08.05.15.23.53
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 05 Aug 2019 15:23:54 -0700 (PDT)
Date: Mon, 5 Aug 2019 15:23:52 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
Message-ID: <20190805222352.GA37700@archlinux-threadripper>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iu3nsp3m;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Aug 05, 2019 at 03:11:15PM -0700, Joe Perches wrote:
> A compilation -Wimplicit-fallthrough warning was enabled by
> commit a035d552a93b ("Makefile: Globally enable fall-through warning")
> 
> Even though clang 10.0.0 does not currently support this warning
> without a patch, clang currently does not support a value for this
> option.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=39382
> 
> The gcc default for this warning is 3 so removing the =3 has no
> effect for gcc and enables the warning for patched versions of clang.
> 
> Also remove the =3 from an existing use in a parisc Makefile:
> arch/parisc/math-emu/Makefile
> 
> Signed-off-by: Joe Perches <joe@perches.com>

Looks good to me. I can see this warning get added to the command line
even if it does nothing right now.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190805222352.GA37700%40archlinux-threadripper.
