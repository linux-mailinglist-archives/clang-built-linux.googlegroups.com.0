Return-Path: <clang-built-linux+bncBDTY5EWUQMEBB4VHTT4AKGQEHAYDWYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F1021A05D
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jul 2020 14:56:20 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id a189sf1436035oob.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jul 2020 05:56:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594299378; cv=pass;
        d=google.com; s=arc-20160816;
        b=QYbUJhVIWyEY0tEHGINPQAZ7pDZ6CsG03SM3AN/SKh6EUqXE4i2EyYcVBTBkb4u5UQ
         utEKaRqmmi4dVpot0aXF7iVE8/xSVM+i4V25/PuqgxoF19fC8EOPZ+WR6rgeMGccLsPM
         T3J0yKv7SKZpeszcxN8mp2lS7fJgz/xivMnzShsF0ETklRFrXN42QQbHpfO+PYsFtovt
         /c0vT2NZTcj6q0UNJCiXZJ0TDPo4SDcavR5Sqjo4yIGC66y3c7hRMLodV2bqL0eFp+Wf
         mgI3i7M8lbcx46nc0kyfKYSGwkj+g3xzZWLZxvfnNtCPLulibj3skqPIgNMd+PXwkMMI
         9ntg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=2Da4Q2b6aHBD98t8HNHG7ceEe2nbsEWq+/DgNmvROHc=;
        b=eEuZ8McZ/wB+dAApavzohEYAYi/0jWjDGrN8h8PpkTkdUpESCMl/EuVt6jbfWAendk
         ZuGhicLR291gxzWDpaeM16EqddSqtsJB0zdOXAqMostL5NeO9KJk6N2ay6Cn4YGn19aP
         zuekyOQYgpBWImBub8FxnJOYpfKJ4lk2600hbSqw1spLHyGJ+dZe8VKrpL88czWVHHwF
         l3IH8yaNMgPRMhjwsOHPfqIjpeHNh64OTCpX5z3EQQQk0lRUrFlRy5BubDB3emwp1Z+0
         esgHGuxqMeBL9BUhIG7+V3LMyZ+8Esr0tYm2U/O87VzSO/0xpX1pZgtvkwNWQ6ck6QuA
         XgVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2Da4Q2b6aHBD98t8HNHG7ceEe2nbsEWq+/DgNmvROHc=;
        b=Zdq8CFJNot3v3m4RDhHMyKPyLCGFe9rmfm/TjooyDq8gwJXQz5M6GZZicn0P2QefFe
         1dWoZEhk1eufyGELKgLPiW1tZylE1Z68V8Dq6YdYUWw04wlCIKjciQFza7d1xAdRFYKh
         FKVYEsoyImkg2H43+8P4p+aluvdgsnDKTzOT7MyTwv5GQ8fYvS79OxC6dabGb8szLxCr
         1vqWRwMgfe8L6W2zbCeiW0gCamdyE4ipTwp5bdIMlPqHtd+M45/NZeUO+HyNllV9Y+7U
         6OxyPLY4CR2d4lCG2ANtEE17Jt3SP/rGhoQuNq3i+qRK2NI95IEzIIiBWLpzzF7F6xfo
         3+NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2Da4Q2b6aHBD98t8HNHG7ceEe2nbsEWq+/DgNmvROHc=;
        b=UDnfr6yYS2XxDobSr3mDxQsJigY3vWeS0ge0r1vTuEsoWI6d6nLpK2jd0NtH54PyxK
         ozZt0/GkgX2usTiIzRyAsE53IaMu7e6RNhsH1OMYwHmJ5AqW2UiCCX9gP2rlfehRHGNB
         BtImiHHOSJET7hpihHu6FhfjxaB3nPoxbtFXmQMZBhW/VfJgNNpRXyXQLt8q/U0b1XTn
         WT9MRJC3oZUcbPP/+4ODFP11eH1jzb4gZH+aT9v1l9fD/u/6yJqfWY5tqb1sRtPfjEIl
         DiUwO7sdSW3MtzS+5jqHas2hBqQHb5sBjs3w9D8+lXMVlNQDLK0K5COa7LfAaw3PlqJ2
         yHwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531E67FHUr32xsb7IGk0Tex1E1kQbLH7WhoxKthmSzje1sgNilAY
	hbCvIVjVM5M8AeQ93mtY/44=
X-Google-Smtp-Source: ABdhPJyiw8Lm9QmPkCdvTGwTu3MCBb7q7JE/ObrbeuKEDQg3kPyKvdDplkB+VytrkXCw9WZyBamw4A==
X-Received: by 2002:aca:d458:: with SMTP id l85mr11051810oig.127.1594299378636;
        Thu, 09 Jul 2020 05:56:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d309:: with SMTP id g9ls341168oos.5.gmail; Thu, 09 Jul
 2020 05:56:18 -0700 (PDT)
X-Received: by 2002:a4a:83d5:: with SMTP id r21mr44583281oog.19.1594299378064;
        Thu, 09 Jul 2020 05:56:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594299378; cv=none;
        d=google.com; s=arc-20160816;
        b=Oe6slWJ1VRQ6yA0ZH4egWYdGWqWXH2vqhqDkQ4KdGhAyBHn15jQXE4OiXq2UuD+FVC
         AsIUWZrqjCrutwE8j6KmgAxmLw/NpcSQbM7Vgv2zSFRK3fiyx84pBQfqNh3cZ7eWqJjM
         nuN7kXXb83elUlPlXdEN3TqsZ2MK2CNOJAkek9IgcrPtuKxgoBkfQU8HJguPb20+FmJj
         ByqIJdsn4g7nHh7npIw0Vy11GeDvDivjN2xAEF4IrnWlHdt8WPGPQ4YO3scx+syTRl7y
         wAPJaszwkRxvb917ratXcWrLw796QWJ9tmVK9qqFBbHi8KTdVN8fpD7axy3UwBtzkxjb
         0Llw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=zmrZ4tEbEBE6LR83/K8rqVNrm4nCf6I0owQwVTe8/Hc=;
        b=TlB/UQEiIR+DOC4FF1X9+0Lcngf9EorY1lSRgwZaTm3Om3StVwwsgcBL0MqzqVIZ0K
         DvFSrnVloHH7W+BXmHrYjJY5nEDUWofutH1ixOfr8avfqRc/8ly9YFCkmlIF24pKpIpN
         hSLYGm/J20UhJ0p1klq6gXp3OtmiZJzWdPAJG9eMQ0jxx9UBABtTEhcjpJLaTdUL+iwi
         lrmkvGubvIYGbFcZVCFWy+L8BwjutpiqXuLzzy7azePspFbag3XBp2KSIuGBTG3uAeb6
         oFu0VyavDYaNEOxvMoArpuE0uCNCMJH8167JuSweo8ZQ0i5MnCCPDGDu+Z1e8MGHdj4g
         fYnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com ([216.24.177.18])
        by gmr-mx.google.com with ESMTPS id l131si158920oif.4.2020.07.09.05.56.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2020 05:56:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
	by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
	id 1jtW5Q-0003zg-PM; Thu, 09 Jul 2020 22:55:37 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Thu, 09 Jul 2020 22:55:36 +1000
Date: Thu, 9 Jul 2020 22:55:36 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Craig Topper <craig.topper@intel.com>,
	Craig Topper <craig.topper@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v5] x86/crypto: aesni: Fix build with LLVM_IAS=1
Message-ID: <20200709125536.GF31057@gondor.apana.org.au>
References: <20200703143206.3994-1-sedat.dilek@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200703143206.3994-1-sedat.dilek@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Fri, Jul 03, 2020 at 04:32:06PM +0200, Sedat Dilek wrote:
> When building with LLVM_IAS=1 means using Clang's Integrated Assembly (IAS)
> from LLVM/Clang >= v10.0.1-rc1+ instead of GNU/as from GNU/binutils
> I see the following breakage in Debian/testing AMD64:
> 
> <instantiation>:15:74: error: too many positional arguments
>  PRECOMPUTE 8*3+8(%rsp), %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
>                                                                          ^
>  arch/x86/crypto/aesni-intel_asm.S:1598:2: note: while in macro instantiation
>  GCM_INIT %r9, 8*3 +8(%rsp), 8*3 +16(%rsp), 8*3 +24(%rsp)
>  ^
> <instantiation>:47:2: error: unknown use of instruction mnemonic without a size suffix
>  GHASH_4_ENCRYPT_4_PARALLEL_dec %xmm9, %xmm10, %xmm11, %xmm12, %xmm13, %xmm14, %xmm0, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7, %xmm8, enc
>  ^
> arch/x86/crypto/aesni-intel_asm.S:1599:2: note: while in macro instantiation
>  GCM_ENC_DEC dec
>  ^
> <instantiation>:15:74: error: too many positional arguments
>  PRECOMPUTE 8*3+8(%rsp), %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
>                                                                          ^
> arch/x86/crypto/aesni-intel_asm.S:1686:2: note: while in macro instantiation
>  GCM_INIT %r9, 8*3 +8(%rsp), 8*3 +16(%rsp), 8*3 +24(%rsp)
>  ^
> <instantiation>:47:2: error: unknown use of instruction mnemonic without a size suffix
>  GHASH_4_ENCRYPT_4_PARALLEL_enc %xmm9, %xmm10, %xmm11, %xmm12, %xmm13, %xmm14, %xmm0, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7, %xmm8, enc
>  ^
> arch/x86/crypto/aesni-intel_asm.S:1687:2: note: while in macro instantiation
>  GCM_ENC_DEC enc
> 
> Craig Topper suggested me in ClangBuiltLinux issue #1050:
> 
> > I think the "too many positional arguments" is because the parser isn't able
> > to handle the trailing commas.
> >
> > The "unknown use of instruction mnemonic" is because the macro was named
> > GHASH_4_ENCRYPT_4_PARALLEL_DEC but its being instantiated with
> > GHASH_4_ENCRYPT_4_PARALLEL_dec I guess gas ignores case on the
> > macro instantiation, but llvm doesn't.
> 
> First, I removed the trailing comma in the PRECOMPUTE line.
> 
> Second, I substituted:
> 1. GHASH_4_ENCRYPT_4_PARALLEL_DEC -> GHASH_4_ENCRYPT_4_PARALLEL_dec
> 2. GHASH_4_ENCRYPT_4_PARALLEL_ENC -> GHASH_4_ENCRYPT_4_PARALLEL_enc
> 
> With these changes I was able to build with LLVM_IAS=1 and boot on bare metal.
> 
> I confirmed that this works with Linux-kernel v5.7.5 final.
> 
> NOTE: This patch is on top of Linux v5.7 final.
> 
> Thanks to Craig and especially Nick for double-checking and his comments.
> 
> Suggested-by: Craig Topper <craig.topper@intel.com>
> Suggested-by: Craig Topper <craig.topper@gmail.com>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Cc: "ClangBuiltLinux" <clang-built-linux@googlegroups.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1050
> Link: https://bugs.llvm.org/show_bug.cgi?id=24494
> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> ---
> Changes v4->v5:
> - Drop "5.7" tag from subject line as requested by Herbert Xu
> - Add Link to LLVM bug #24494 (thanks Nick)
> 
> Changes v3->v4:
> - Add <> around email address as desired by Nick
> - Add Nick's Reviewed-by
> 
> Changes v2->v3:
> - Add this Changelog
> 
> Changes v1->v2:
> - Replace Cc by Suggested-by for Craig
> - Replace Cc by Suggested-by for Nick (dropped Cc as desired)
> - Really follow the suggestions of Craig
> - Drop unneeded comments for my build-environment and Links
> 
>  arch/x86/crypto/aesni-intel_asm.S | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200709125536.GF31057%40gondor.apana.org.au.
