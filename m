Return-Path: <clang-built-linux+bncBD4LX4523YGBB2MHRP3QKGQEKSLLUOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A751F710F
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 01:53:15 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id f21sf3400357otq.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 16:53:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591919594; cv=pass;
        d=google.com; s=arc-20160816;
        b=xk2GO+rfEBwh8Tpl5N83KV5oWIKql+3m5+mtygpN3kTzpg9bgXYXSqOiymezB3EdGJ
         3r5x+scv8bRwUApuuCO+nPE9HsaiznctZj1Q6P3FDBnA2kJ11bcLEUpBnTnp92A1mrIg
         zwkbHKcVXOaSC4It07iQjkckdtmL29NiFnz1LJxfP0dHW8QbJYcTHhdq3Y07dexvPEms
         kOJbfpoAFWNj589/4KAnIU8estgBYRz7whQt5Afjv7DqiwSV+LEnZ38X4DP8A3xirVJw
         NIBZduY6RmTThbQbDFTbNgl5n2Tf6+wYj7f6xRgtQi6ygG8g+gFU9XnCeuG+cBljsq5d
         4LMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=703LUUeh2fpW9kG1ZSorimpny2qW2cNNj/75fn3u6F4=;
        b=vBFnAt67J3ZoVeO23qd1M9z148YfkxnO8fGSHquwVYm0LkqoVjhGltHLqZ2Z3hsZku
         EvFJ0bGM7AuS7eIXL3YEE8pFM658aCITEVjhkpO2VkLqm37znxeum6SSFZzhHMWFjEYS
         lcjBUjst7o8AFdQ4fMsH9woRlbj+wNp7mlklw94HrVNaZ0BGFDRHT2empr8MDpBntE6E
         7M6Z++f5489yegV98LDKpBmttuNLPty0UlBHUbrn2TTnvEyziTQyTKyGdQFXU8GxYUwl
         EFLU2jwNrxVrOd+AenM2oJjQH75AHMFSWC7QpdtQ3kcoO2tTctx8gYSnPa2PnlEIn4Zs
         LwTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=703LUUeh2fpW9kG1ZSorimpny2qW2cNNj/75fn3u6F4=;
        b=P+AtZM09B7+taU4HikuH/VretVAb2Nb4LcsBkCG10UzhSjuhOmMk/htCt31ZZMo7Ye
         8Q8/u2wEX2UtdLJwh6ICm4WJfqWZpVvntqzQt/hH6Av/o1NYYmAN2TlWXpItuXf539e2
         iFzgF5bI+/Gc6/J4oPnMHPZjEtv6ZJBP/pWuUQTK1nb7jByXcDnbSINLhPvc0Cv6Na0a
         iTm1O4ghE0q1eFk+5uWFrHQTi9SlnwCGhDtKhu0lBG/1myAyE9pYLACahPCYkX4hNuUX
         La4ebOlf5IEaL2ngHXJ0TKA/CgXebsx0cYWUOsiSj1lM0Ns4qPrm8OVWR6uqUaD97OWO
         qZRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=703LUUeh2fpW9kG1ZSorimpny2qW2cNNj/75fn3u6F4=;
        b=NNgoQ+hdrjw7GmQRVdPRhp82cbBAIQ+oWH+bY0Fn2hf+xS476xE53tePBCvIA2DTk9
         iSY1OwILb0lo1ZZ5rogEmFapaFfdDEA0i2HUuCH8ky+KnRs50ORLX8Igf0q2/eG5Vbrh
         oJ32iUoQ2W8pp/IijT5p9KKpX9yEZRVdACChf5uidTefYUnkN6+jCJfN2NXfea9LU4GJ
         Npjde5tvifIuqIqXY4NFnOzYIcuZML+05E0YsELVcKUEQ0MqeeNL/Ypjzw/tnSsscQEg
         o01fBdIjJZqzZOF3yA5PKMg8IpJMfs3BEtCoy3IHAD+Ivp5/eCwh31zrYDCNRUJpPm3O
         ZuFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ljQLyZN1KwoK3Q9GP12ZwEQgJXzO5HRQ+1TQhl5KtEyjuTfEE
	aM+C94SVmXQIAHGJAFVhByg=
X-Google-Smtp-Source: ABdhPJwlfqVlI05WjQ7Xo9Da9rv2MQaEPYZl4U0zrYvyz4VaBEAgD5JliiUD4p7Qgly/zI0luDBu2w==
X-Received: by 2002:a9d:3b8b:: with SMTP id k11mr8792303otc.208.1591919594245;
        Thu, 11 Jun 2020 16:53:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:524f:: with SMTP id g76ls787217oib.6.gmail; Thu, 11 Jun
 2020 16:53:12 -0700 (PDT)
X-Received: by 2002:aca:502:: with SMTP id 2mr346703oif.137.1591919592875;
        Thu, 11 Jun 2020 16:53:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591919592; cv=none;
        d=google.com; s=arc-20160816;
        b=ibWu2oDZXmfv2d5Xe6pLUKu+zPb1Q1NcUFX1fsn4HrahcKsbCAZVOypTOt/uZUiqpT
         aR+GaPj/5L+78MLYD1zGuNFXn/el1N06rzENyAgRYlrlpOQ2hZbRrQN4+X3MzlqPbEHw
         v7ZR8HJkfSEjc00dhFz1RzS2TvW4qr7bqiy5OIIFB/H6WnPOEFBgWQkiW4edWI8NqrfZ
         lN8LziCmxLjZU6xwu0xzZ0WzZL4tdk8/qoeAjZHbjM9tgb/l0XySE6/WqJmF8gniW2IP
         js/++C1pKzO8YoLl93dzrR1D5L+QSIC7zZ3STxDnUNxFHi4RfhHLYFD4n3ntLl/sdXTI
         xRBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=rGSaBHOuTFMj5B3iDLu1sk1Dg0jJhWIP4DJRBB3Hpi0=;
        b=PhP1pKq9FYW/vGOKRGluQR2ydXvwUwrmc4/v25O+lWlj8QP6TR7XStK+gu+ef9dOe7
         WQW+qEnAFkUUsQ+EuKF9jGghDxATyYOcPKxem8vGNI2MiR9RiPOQQalZuLMxJGBbBANT
         9Hw3nMok9Bc4SffQske7UDUm6+NFSLEjZasJiP7ZJc4LazT1flVPtDj4VQ6R6Aj7q6Il
         3G6aHX6h24R0XbbdEIe8fPc2yPLTHAJBoo2+HaAwbLAVkxhWKRw2wHQ2JWRtKEQW6Bbr
         kzD3+BWusYMd3hTIXurjW6+yT5Nzvifo3+29nH3Z25GkgXxo0BDb8SvmEp+xiYqYzhku
         wL9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id k69si215968oih.3.2020.06.11.16.53.12
        for <clang-built-linux@googlegroups.com>;
        Thu, 11 Jun 2020 16:53:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 05BNqwH1028941;
	Thu, 11 Jun 2020 18:52:58 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 05BNquVt028940;
	Thu, 11 Jun 2020 18:52:56 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Thu, 11 Jun 2020 18:52:56 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: patch-notifications@ellerman.id.au, christophe.leroy@c-s.fr,
        benh@kernel.crashing.org, linux-kernel@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, npiggin@gmail.com, paulus@samba.org,
        clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 1/2] powerpc/uaccess: Implement unsafe_put_user() using 'asm goto'
Message-ID: <20200611235256.GL31009@gate.crashing.org>
References: <49YBKY13Szz9sT4@ozlabs.org> <20200611224355.71174-1-ndesaulniers@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200611224355.71174-1-ndesaulniers@google.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Thu, Jun 11, 2020 at 03:43:55PM -0700, Nick Desaulniers wrote:
> Segher, Cristophe, I suspect Clang is missing support for the %L and %U
> output templates [1].

The arch/powerpc kernel first used the %U output modifier in 0c176fa80fdf
(from 2016), and %L in b8b572e1015f (2008).  include/asm-ppc (and ppc64)
have had %U since 2005 (1da177e4c3f4), and %L as well (0c541b4406a6).

> I've implemented support for some of these before
> in Clang via the documentation at [2], but these seem to be machine
> specific?

Yes, almost all output modifiers are.  Only %l, %a, %n, and part of %c
are generic (and %% and %= and on some targets, %{, %|, %}).

> Can you please point me to documentation/unit tests/source for
> these so that I can figure out what they should be doing, and look into
> implementing them in Clang?

The PowerPC part of
https://gcc.gnu.org/onlinedocs/gcc/Machine-Constraints.html#Machine-Constraints
(sorry, no anchor) documents %U.

Traditionally the source code is the documentation for this.  The code
here starts with the comment
      /* Write second word of DImode or DFmode reference.  Works on register
         or non-indexed memory only.  */
(which is very out-of-date itself, it works fine for e.g. TImode as well,
but alas).

Unit tests are completely unsuitable for most compiler things like this.

The source code is gcc/config/rs6000/rs6000.c, easiest is to search for
'L' (with those quotes).  Function print_operand.

HtH,


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200611235256.GL31009%40gate.crashing.org.
