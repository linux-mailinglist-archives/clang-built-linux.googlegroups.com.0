Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBEWFXT2AKGQELMKPVBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3781A34DA
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Apr 2020 15:26:44 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id w186sf2797044oia.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Apr 2020 06:26:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586438803; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ny4VJ12klmnQJ9gr+ZJOYCa4cT8sbcN+p3py1m0FBzfPWDEGz09/pJPjlzZdr6A9YJ
         EnB6d6wYMjoAByNXz8CeuIOMBapYTgCV3Z7/ZIpV1cw6eEBZuJoVjFSDpAkcF31U0YnV
         eFtDpSEznMKzBirUmLTZWKEq1CPnmbshN8LQbFESUvCWm1CBLOyYYeCltpqghNQYHeP3
         z4smV86BE11nUaP/lIpQ/rjrbMABwDqKhsBnZNy8p0tDnfmq131siy3VltZPWBFxmqWX
         3lDIbcU46c5wHxHM1CzNWUt0XI2fh1qLhsNGQG3h/J55FcoplUoDAclrFp8TxUOsE8K/
         wlog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=qsmK5vfvqqatft3wHNtKRT24IBw/8R9UHMDna2ItcUI=;
        b=CpVjpfbaqYoLV6891wzRPBeHEOAqOVT8iFaF6U1injz2+7C8ggoJa3x+dAjscRDV7L
         nyaP8Q4jVyBMHVH7qle/QISOmDFYAA0fyBLWiQ8mhcLGyj0eIp2/C6MsDKDCC3OZjv6L
         eZ2NuQj8enDFY9Je4QnrFOs5yeNHQbvsEk+7qWeyJqjyTpPDpbwa73YdzNSDiSTAkA1g
         NvH8dttVfzCzeEWFrDCVrW/JCT0XqCbGDELUEo6uYuH478wZ48VrMHnAYN2cO07qGNOQ
         FLReDHJ84Y83izGZgyhuXbOFGVLwNUBRFxNcGoTFzDc8dDn037vIgPBUCKrZR7R4wanF
         PVjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H9uzvWqk;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qsmK5vfvqqatft3wHNtKRT24IBw/8R9UHMDna2ItcUI=;
        b=XAHgWNO/FvyeKjw/higsuFngqMDonqjF3zUZyfGJkFjJH6nMxynvR6k+OwiyO5yKkD
         XGPVO+5LCJsCIMreumZjEGkPn7WIe3/ODXOgH9YEuiBJMbsvalZQyJvmDYjhFbCzJ444
         Uo5ZsfF9CVHl8i7LcGifnifgV796VyBYNi3j+Vn3EKr6zp9wwlP4WZb6vQYC9QzCvCqj
         QXmHjvzitYZWSSiDo0wIBwtcgTTe1355P14FIqX+7dKIaEhUe6vKtGl7QKPspsRgvvzG
         dC+0MyAecCerg+cq4fbE4yh+P/se2b6XySMgcrEPZEMaiI97xdt2uchv/vtDN6zsLx4p
         yMbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qsmK5vfvqqatft3wHNtKRT24IBw/8R9UHMDna2ItcUI=;
        b=IGwEB2FZqL/DpcJy24szgp04k2y1P/vjLYaCSbnbti0NJq3gHz5GVSDbhGEYhWOowO
         o87gOVf86xcskHhsw9gXaY0h19vE+WR2ltjWC73gJeYghqRRpYJeo1BHToK9AV9TsRnT
         /8gQKJMTvwf4LUL9paAvhv+3cvt5l23tLa81vMVk+Fm59LEL3ogVnCJ2ODTfT7SJTdy6
         yYzHb6S3Nl+bTO9EBXuumcKLM55k07fWthr8MEdNYfcAowbzM4qdh4r4rGbLKNDzUlsN
         652I+8X4wGQJ3QKQrqur5/7+aWqObsU7FS4TIONKWvbv707ElSdrCNeL9zzm+sC8k2R1
         9U2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubChf0mGF0aMbH27HTPiDPrfeuAgURPK0WUJ0tqyDDxDgrSYw2K
	eprYIxDo+9WyozOMOLEEznA=
X-Google-Smtp-Source: APiQypJxL9QEBniayAi1VnSm+lnsEIFMhWlUXnseeXSn8y1JHFoIKDk1/oZxJjK/GKx0AbM08iNYiA==
X-Received: by 2002:aca:5109:: with SMTP id f9mr3457930oib.14.1586438803100;
        Thu, 09 Apr 2020 06:26:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cd45:: with SMTP id d66ls4045094oig.7.gmail; Thu, 09 Apr
 2020 06:26:42 -0700 (PDT)
X-Received: by 2002:aca:dc44:: with SMTP id t65mr6335863oig.176.1586438802041;
        Thu, 09 Apr 2020 06:26:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586438802; cv=none;
        d=google.com; s=arc-20160816;
        b=SBkNMEtzqBPDXEmjuAFX1sSU0bZ7/XSrTRSyDSe/nqGN/pWENawbJEBypsAmJ6B+qZ
         LHH3Nig+Y+Mv71LSNNJzQQKQDWN/4FBAPI4fW/M4EYPYJz2D2Se3TMzOU/pHHliETnD8
         2jKp7VgKdSVnnTwLyYaH8pIh6tr4fqwLH3NQMp9TRC5GbTiU8I5NMzIqQb6r93wvXFtS
         5G14BQDgGBvFr4eBE/HJSj1ffqcZPtarA0foPXKUWHfY59erXk0HOeP2+6edRRnAaczk
         49QxKykQek4l/NOaY9w6ZfqImPWxbEQqbzxFKvNlzWAjhXPrvqxicHjNYiB1yJBWWT4B
         +RmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bQi+/2Q4KsBx+OTb8pn6xmzJqXL60NMw1DgnEojorR8=;
        b=W1qsIZp/iwru1bptCVXJbcLwWAIAoX5UOkbBLufbhAYOTBnGbAn5bbfnD4PoGLOjUS
         5JElB8zEhzF2PAKKCv7Gh1vZpO1jwv7RjJlF2e8gQ1uE0b9foKc56d8bJjihvGEpJqCw
         dWQdOrrnb3NE4cdfQu1qL++33dnn8X2MPhFnbyAw58wR6qsOItknhniS2jYP7rdja3U8
         jw+whZI5GIljCg+BPjh+LJm7cC0ISkQlAd9Zw0U1Bn5TEgrRUq/wMalwG6eIec/OE6MJ
         6wBZ8PaZxvKFlufAAX+KKwzPrGiqDCmID7rwtnFJ3l6QEYFdfhsN0lEMWdXxkd+E7WbJ
         KKtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H9uzvWqk;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d16si361952otp.0.2020.04.09.06.26.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Apr 2020 06:26:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 62E882072F;
	Thu,  9 Apr 2020 13:26:37 +0000 (UTC)
Date: Thu, 9 Apr 2020 14:26:34 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com,
	x86@kernel.org, Will Deacon <will.deacon@arm.com>,
	Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [PATCH v3 21/26] arm64: Introduce asm/vdso/arch_timer.h
Message-ID: <20200409132633.GD13078@willie-the-truck>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-22-vincenzo.frascino@arm.com>
 <20200315183151.GE32205@mbp>
 <4914ad9c-3eaf-b328-f31b-5d3077ef272f@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <4914ad9c-3eaf-b328-f31b-5d3077ef272f@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=H9uzvWqk;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Hi Vincenzo,

Sorry, I was on holiday when you posted this and it slipped through the
cracks.

On Mon, Mar 16, 2020 at 03:37:23PM +0000, Vincenzo Frascino wrote:
> > On Fri, Mar 13, 2020 at 03:43:40PM +0000, Vincenzo Frascino wrote:
> >> The vDSO library should only include the necessary headers required for
> >> a userspace library (UAPI and a minimal set of kernel headers). To make
> >> this possible it is necessary to isolate from the kernel headers the
> >> common parts that are strictly necessary to build the library.
> >>
> >> Introduce asm/vdso/arch_timer.h to contain all the arm64 specific
> >> code. This allows to replace the second isb() in __arch_get_hw_counter()
> >> with a fake dependent stack read of the counter which improves the vdso
> >> library peformances of ~4.5%. Below the results of vdsotest [1] ran for
> >> 100 iterations.
> > 
> > The subject seems to imply a non-functional change but as you read, it
> > gets a lot more complicated. Could you keep the functional change
> > separate from the header clean-up, maybe submit it as an independent
> > patch? And it shouldn't go in without Will's ack ;).
> > 
> 
> It is fine by me. I will repost the series with the required fixes and without
> this patch. This will give to me enough time to address Mark's comments as well
> and to Will to have a proper look.

Please can you post whatever is left at -rc1? I'll have a look then, but
let's stick to just moving code around rather than randomly changing it
at the same time, ok?

Thanks,

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200409132633.GD13078%40willie-the-truck.
