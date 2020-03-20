Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBT7V2HZQKGQE6GI4M2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AEB518C8BD
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 09:12:01 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id z9sf3318227pln.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 01:12:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584691919; cv=pass;
        d=google.com; s=arc-20160816;
        b=pd2leYbExVcMwAIfo0FUfWXyatEvyO9aA5vUnpfDS3SJMYGMmGKU1moO9ES0J4OKPC
         qkz+1DzcGEQo7CrnXefn/NRdB/pP3DpkEWK73Yoiw0fJrxlRJKLfNqx0IUvRTTTviRNe
         WyUr4Y41/GiAgNdMZSbArigxWN7MV6S8kllNHVVJSZjjoWVcu/8JhJdGUC7tBzdyitfl
         GG3Kx7XGL8TjLsXoOnMhNm7tLKLYT0eMLl72bBc8AN62d0lZC4bWNLiZPwyj3g1UZ4jJ
         D+yg0BQkavYh30wClMB+uyGIlooHZYg6avQOunu5l7e4CUQ/iaXU21RVBXUcFpy90QEy
         1d2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=UPS5gxuRqh/CFqogB2Bm2h+/BiNBEZ1uHZWWTNdScRE=;
        b=XUfDtdZ/WHQD/PRWKt0S3/J9mZQr924QV2IqP5ay4+w/rv14HECcdQq0O3wbYs94Y2
         nihE1rYqNJfyHEwEdysw9Jepr7pDSAPMR6tOXmJ19cyhuTXVYJtH2lcbsv3WZkILgJGW
         4yDoVViVT6Fvkhw5Yyj11BThpnjr4Nd0cQbUKuLgwTM+HtkgPIvrSj23Dkf+jSoWEqlr
         rqKFIqRi9li4lnFUCPIAstXA1flseeo1iGUMxZGF4kcb97VFy3Yf4pGg4aYkk0d2g8j5
         3uYrnQ4L8RzL06L/0dRxzm5CZ4ooP1xK7mVBb6YX1vwZZ0Y3ZPjDkGKXvH5ajNxZOPLG
         IEjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PDdlrKgE;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UPS5gxuRqh/CFqogB2Bm2h+/BiNBEZ1uHZWWTNdScRE=;
        b=jUFj7FFmhHOpOrwUs7wFCxR2CL+byMH/KksiKeICDkVZvJmJ0HunLf0/py7HiSPZPM
         kHYlnoq/SBAbYDvte6dWA7NGyrH9Y9NogJyd7hmiC8AxskyGrpqqdnWRrt2rQQ0HPI0c
         5XbMKmC4d90wWQSe/ZJymfGc6lfB621SY5YMKCOl9F4sapT3egnCqWzeheGP2XMUZo/+
         zCoiUDNRZhmCxOnpXvV6Ob9lvMkxGstwWtm83hbUUw/CVXFYpAxM7KuoAURCGkOVV1V2
         joqcjF+S9d/kdIZNjUIABMAGonx9RH9w8UzHdw3cDR4KoXIvkjQMct0JMjVikrx3QkL5
         yJ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UPS5gxuRqh/CFqogB2Bm2h+/BiNBEZ1uHZWWTNdScRE=;
        b=XqyCEBxjO8ofeUflKrjBFU1Q/cVGdQr9xRV0Fd5Qg5jaP62oUzb4/wIyU+912UUim5
         zWXOLixtyXvbZC5sFRXz5BYsdcKIV3MRi/zIC1OyG53kZUdh+yA7GlLH04DomkLP2CMi
         STtrF6nY0m7IyUpiVC8gqt8AcPwNqouv0WjN2KCU6Z6NnGIadf8bklYoSxBVOz5eO+NB
         nfphRGa1MOzf1KgngMw+wEh6lL9FJjzNlqz6HH51763t1+caV94q2rW1+SXE0qw6U/0H
         26VZaPMpYJTslo8Z2kjrAGNuDXG8ca50R3Kt8svUy1nzqzfhjqB1IBWhu8joqa4thy0j
         azVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0ZLVUTQWTigIOqNT/LA7FOWS/0qe/HA5zo8PJm6XoLy9/eyfMQ
	XCYC9B/3T1pr/pX5+rDI5jU=
X-Google-Smtp-Source: ADFU+vvDiG3AxGorXgpiQnLUae5lZGu4xvsTLMTBBcPFrHrwDIBUeopCGgMMpj1i8p6s5ebwhir71g==
X-Received: by 2002:a63:3142:: with SMTP id x63mr7387467pgx.138.1584691919495;
        Fri, 20 Mar 2020 01:11:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:684:: with SMTP id 126ls2997885pgg.9.gmail; Fri, 20 Mar
 2020 01:11:59 -0700 (PDT)
X-Received: by 2002:a63:ca0f:: with SMTP id n15mr5880456pgi.311.1584691919102;
        Fri, 20 Mar 2020 01:11:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584691919; cv=none;
        d=google.com; s=arc-20160816;
        b=i042aiC3dsU0njuHJTbZlon/F+GPvvjxcq7xd665Vr7DW8w+/BwMOq0tVXoMMutU3n
         CWCzD08k1RxE30Eak/m/s8j0ORdEnLAANARq5cBCjPwQp8ryXFmsHEB+FOe6BEaKESml
         ygqyCbq1gLnjh0eqPD8il5//s6ZDoJCGmjZMtGVT95Y7SMHMXzg7rQHnoTa1DlN9zbL5
         8f/kyjIjagvpCMXHCbCcXJgDWujJ40ZiX5VeoBTkyjFyZ8jfLN3QFIK1Kp4rwuBiGRG9
         1xpd65WnhquY0cOXHAHIzTRVxoWLl2zVmH7H09AiFKSNgNlo9Fbuli3ZO4ofRhrtpdcd
         xxJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JaR7QigKTKkSNgzwPLyHQ0dKdOkT7rNartnzYTvAI/E=;
        b=i0RyVk3RjYc8q60WXh6bi0XfbQuN9cQH/qAtJsGJZqLprb7F/9fzJEodoGIMF3T9M/
         0hs8HS7n2L+VfRxNGfpHlGGjSnp3ExkrBvITmO7MpehyEXkgUhtXqDQQy4UYFmUUcJC8
         LTXJlJz4enHOXQC8sb8M5A7BGpz+lFvGA0PcQA6+hCNCATUFV9gd/GFi9qiz7Avhcbma
         d2qMCANOXpzUVEbqsRmuHMcUAvy652PUd2Ni1kD3PzpbUdLp7TBSPpxXI2qFg8YTqnOk
         swTq/63jH4I3A5/guKrs0SS9vn/fg0IsLgRVMZ6+6d3fMRnaQFHtqyUDQfNTkSLUQ97o
         hoIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PDdlrKgE;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 59si271561ple.2.2020.03.20.01.11.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2020 01:11:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 468DE20774;
	Fri, 20 Mar 2020 08:11:57 +0000 (UTC)
Date: Fri, 20 Mar 2020 08:11:54 +0000
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ilie Halip <ilie.halip@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] arm64: alternative: fix build with clang integrated
 assembler
Message-ID: <20200320081153.GB2549@willie-the-truck>
References: <20200319214530.2046-1-ilie.halip@gmail.com>
 <CAKwvOdneL8F_ZHBAzyb+VoJ+Z1FZp0VW8asGTu=g39TrouqAgA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdneL8F_ZHBAzyb+VoJ+Z1FZp0VW8asGTu=g39TrouqAgA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PDdlrKgE;       spf=pass
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

On Thu, Mar 19, 2020 at 04:43:56PM -0700, Nick Desaulniers wrote:
> On Thu, Mar 19, 2020 at 2:45 PM Ilie Halip <ilie.halip@gmail.com> wrote:
> >
> > Building an arm64 defconfig with clang's integrated assembler, this error
> > occurs:
> >     <instantiation>:2:2: error: unrecognized instruction mnemonic
> >      _ASM_EXTABLE 9999b, 9f
> >      ^
> >     arch/arm64/mm/cache.S:50:1: note: while in macro instantiation
> >     user_alt 9f, "dc cvau, x4", "dc civac, x4", 0
> >     ^
> >
> > While GNU as seems fine with case-sensitive macro instantiations, clang
> > doesn't, so use the actual macro name (_asm_extable) as in the rest of
> > the file.
> >
> > Also checked that the generated assembly matches the GCC output.
> >
> > Fixes: 290622efc76e ("arm64: fix "dc cvau" cache operation on errata-affected core")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/924
> > Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> > ---
> >  arch/arm64/include/asm/alternative.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
> > index 324e7d5ab37e..5e5dc05d63a0 100644
> > --- a/arch/arm64/include/asm/alternative.h
> > +++ b/arch/arm64/include/asm/alternative.h
> > @@ -221,7 +221,7 @@ alternative_endif
> >
> >  .macro user_alt, label, oldinstr, newinstr, cond
> >  9999:  alternative_insn "\oldinstr", "\newinstr", \cond
> > -       _ASM_EXTABLE 9999b, \label
> > +       _asm_extable 9999b, \label
> >  .endm
> 
> Testing a -next defconfig build, if I apply this, apply fixes for
> https://github.com/ClangBuiltLinux/linux/issues/913, then disable
> CONFIG_KVM, I can assemble (with Clang's integrated assembler) and
> boot an aarch64 kernel.  I think that's a first for Clang.  Wow.
> 
> For CONFIG_KVM, I see:
> arch/arm64/kvm/hyp/entry.S:112:87: error: too many positional arguments
>  alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) |
> ((!!1) << 8)), 4, 1
> 
>                ^
> which also uses `alternative_insn`, but not `user_alt`, so another bug
> for us to look into, filed:
> https://github.com/ClangBuiltLinux/linux/issues/939
> 
> Looks like `_asm_extable` itself is a macro, defined in
> arch/arm64/include/asm/assembler.h on line 125.  It's probably easy to
> fix this in clang, but from a consistency with the rest of the file
> (arch/arm64/include/asm/alternative.h) this patch should be accepted.
> 
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks, I'll pick this up as a fix.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320081153.GB2549%40willie-the-truck.
