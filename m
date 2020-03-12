Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAUSVPZQKGQEDA2RHWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA7C183D7E
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 00:43:00 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id v3sf2460800qte.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Mar 2020 16:43:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584056579; cv=pass;
        d=google.com; s=arc-20160816;
        b=lVYsJrEsEfZr+pZS2+klefh2wrGasN5jwUDtFFlnAuauSQfqt9aiw0GGB255tjh5rE
         AurDEDwhn4ct9FgyIinysmOn0e0O+HrTSH8ONMfn/yPICbcFPN6S1Vl9n4+jmeg1NmhK
         /fCIFyEPeEF1b0RTTrh+3vXrR8Yzr6/k/OmdpbyqLSrefFyVG3FXXjAF6Tallu8NpAuz
         +5TU7+CZtCIw5zDyYJ/57Q7M9qeeQ9OX2pzm6ISMwcj2AOIjgkYllMNC55DSSGZaz6kv
         6FWzQ8trBPrxueLti2Cx9pTSvO52M4hW9q2QN3fUpJXrgvzkTx1Frchm9AGkk4CxJM+H
         sZyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pQl+HQdseEfbmQyOVyDnr/X6OgyDGZ7jebhcB+1ud5Y=;
        b=Ytls2/uBKI59ZIsrsu53KzmhtqPALRi8rqGk3IthaswBQqjdFlRblnl6/Hj0zSMh8a
         NDbcNugAMgXRIMXDWbROvoh/R2pu1EwGojO98RNCOsVM+9bMytBV4WDTbPai66e/8Ihe
         2MhhedHjGawVAoNV3AaW9RFLTqi0JfP6AGRA7oktQ7aZAvrXj4lA4bRBdLMZem7f9Bwe
         VT4l89wnw68InwieE7kvZ3jMIHwjTQ1xxJ5VmwxVBWYTcflrP5i1XiwsXN9PH3hD2xwP
         j+qQZ0a8y6LCPX0axE5AgiAdUWtauMtj0VIIuIQ+XeIjs4uCgRb+A3BAClWC1ldxKhqG
         vGBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="nv4UN/kr";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pQl+HQdseEfbmQyOVyDnr/X6OgyDGZ7jebhcB+1ud5Y=;
        b=XnoGOgJXgC0EpZm5OjBYdlGfGutZ0TrJVwZjNLS+0ExHtShRKbbzhr+amptyCxLfI3
         HS5Qt2q3xoRrH8yBOXlxqb73tcRnZMmBwYcNZF1K/sxdn+CUf+09kyg0rohDxX86k+yg
         ++Kl2jG7nW3csrCwqx9sFAbtPLzeJ/UYveqc1zWCg0H7JXYT04mT2CwShPldDbQVMDxS
         0/wCaNtMvV+uSjL6PwN6SDUqMzgj9iyvhskCOZvJA/DGFZvxZaiq11LLFrrF8X/rFp/7
         xSBHQR5PxpkxAoy4/B6w7t3xheKZkJJCk/xKpV6nsA1nTWGBvxNKICqDJxJ/TSUmDdpy
         MU7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pQl+HQdseEfbmQyOVyDnr/X6OgyDGZ7jebhcB+1ud5Y=;
        b=kB+89wHZW54BRdjSI7vigFZr5XmfyT4wJH2xhI36WHn60RRMytlHVdFDhgglc4p3jP
         1KS4/O2zbwM7wFudjseKjZeFTKrYh/bOGwz+AXf1K3tnCC+ymvwlwWG/vBfWTYJvGZ35
         UlmbXQRL4e0D6wVpMiTsxV7HqS/PMDYotQPgoYxO6WIVqTx9bsOUG+0RHkWKoduyvDsc
         NU/8ikTM+KY2QdVeQckM1Sf0otRUUZI5PZ7cS+tUkUtqNemIK0r9qiMs+Tofxbc+aCRX
         sg35ZAgARIyG7dNH54ZiSCiR+va30JtYVqsmazR3wrCoHDF85HHeeWMq6vhsKqLZd5ti
         Ebcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ11rCV6ZaKeLMo22vogjVCgQF+4/mWO+i/yI6bpOBNDyJrRjPHa
	1jsA+Z9mO0byUJ47coP+wfE=
X-Google-Smtp-Source: ADFU+vt1DK5XQ9nNBmcJ+AmBK9AjmwT0nbDU81H1d/nv3ADhM8FhWNAKzMvFSq666fkFEF2qfEV0wg==
X-Received: by 2002:ac8:6ec3:: with SMTP id f3mr9873304qtv.328.1584056578920;
        Thu, 12 Mar 2020 16:42:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:23d7:: with SMTP id k23ls435255qtc.0.gmail; Thu, 12 Mar
 2020 16:42:58 -0700 (PDT)
X-Received: by 2002:ac8:7501:: with SMTP id u1mr10003549qtq.149.1584056578534;
        Thu, 12 Mar 2020 16:42:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584056578; cv=none;
        d=google.com; s=arc-20160816;
        b=YUeW8eR45qRecqrhNnf88DZMbdrNrESyxM2RYLSPTj+PoPiaaqMcqmmFummMLvZXLp
         +UdsVBoaytLdXiW5KaqCJxPIOPuTbmnB8ziZyeWSAZSmzj6xNlqvO17daGNzaqHKJqen
         3lqIbf3uA041fydp33HFCfURly6Wh/wH96sz9H5CayVnG0N7fqTTEXX4tCqrelvExEvu
         1v196RpVYzmkhAPntY7hVYvXigsH8qUEtTOL6Wsnnyd9Cljsq0jqmnHX5UIGF0SaUSTm
         26elT+HQtTSabeeYZg4wufBLIdBQJyBz/4liEvzUofJgXJQSQpdc1g0sJ4ikD3h8Qtgg
         xLmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LuDu/0LE877Abm9y/kHSncM9x1dsF0Fs5oSCXDjhcvw=;
        b=TLQ0ONxECYuPYq3Q7rDxj/tQ38P0D6e2B5xUAx6cMOaBaKLRpyEReWvwBZtG7X3xAn
         mFh4iWZU36IUH6oOFh6MUZQswCoWrJ426cvHEHT/ea9gwt0vTezwnBrcfHCAXxIFlE2E
         kAXdSuDnSIQMdy/epXRRZfzXSxgDTTOGBzk2eMfXrdITDq2WS7gAorBZyoIHqcBGeoTu
         QuPELd+HBBoKwWai8aPeQm2l9J+aq/4UHT20hDJel3qT+ZaAp1cV3dLwej9CtJKwAgcm
         0Qk63x88gCMmt4URbN/rd6K5Pfi6qGAVNRHjcDy8C4gp6y/AZg6GcfkSMOcsg5yKf5N+
         Dbsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="nv4UN/kr";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id d193si352433qke.1.2020.03.12.16.42.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 16:42:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id np16so3197601pjb.4
        for <clang-built-linux@googlegroups.com>; Thu, 12 Mar 2020 16:42:58 -0700 (PDT)
X-Received: by 2002:a17:90a:187:: with SMTP id 7mr4350539pjc.72.1584056577553;
        Thu, 12 Mar 2020 16:42:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 19sm34413636pfn.30.2020.03.12.16.42.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 16:42:56 -0700 (PDT)
Date: Thu, 12 Mar 2020 16:42:55 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Danny Lin <danny@kdrag0n.dev>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	android-llvm <android-llvm@googlegroups.com>
Subject: Re: LLVM Polly optimizations for Android
Message-ID: <202003121636.265F4852B@keescook>
References: <M2AyAx0--3-2@kdrag0n.dev>
 <CAKwvOdnN6dEwUQCrdEoiDBnjZxPPHVfYcck0sRqcCujYeRHU3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnN6dEwUQCrdEoiDBnjZxPPHVfYcck0sRqcCujYeRHU3Q@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="nv4UN/kr";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Mar 12, 2020 at 10:27:13AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Wed, Mar 11, 2020 at 4:40 PM Danny Lin <danny@kdrag0n.dev> wrote:
> > I have a kernel commit that exposes the ones I deemed useful through a Kconfig option: https://github.com/kdrag0n/proton_zf6/commit/00f711eead423
> > And a prebuilt toolchain with Polly support that can be used for preliminary testing and evaluation: https://github.com/kdrag0n/proton-clang
> 
> So no new compiler warnings, boot issues, or otherwise noticeable
> runtime issues? That's impressive, and worth paying attention to.

Neat! This should be very upstreamable into the kernel (though it
can be updated to actually test, from Kconfig, for the available
options). I'm sure someone will want to bikeshed the details, but it'd
be nice to gain CONFIG_LLVM_POLLY in upstream.

The Kconfig would look like this:

config LLVM_POLLY
	bool "Enable LLVM's polyhedral loop optimizer (Polly)"
	depends on $(cc-option,-mllvm -polly)
	depends on $(cc-option,-mllvm -polly-run-dce)
	depends on $(cc-option,-mllvm -polly-run-inliner)
	depends on $(cc-option,-mllvm -polly-opt-fusion=max)
	depends on $(cc-option,-mllvm -polly-ast-use-context)
	depends on $(cc-option,-mllvm -polly-detect-keep-going)
	depends on $(cc-option,-mllvm -polly-vectorizer=stripmine)
	depends on $(cc-option,-mllvm -polly-invariant-load-hoisting)
	help
...

And then the CONFIG won't even show up in the compiler doesn't support
it. (Which is the preferred way to doing things now; see
STACKPROTECTOR_STRONG for example.)

I imagine a commit log would included details on an N=100 hackbench,
N=9 kernel builds, and probably a "size" output before/after of the
resulting defconfig-built kernel.

I'm adding polly to my local LLVM builds right now. :)

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003121636.265F4852B%40keescook.
