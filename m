Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBD6T4L7QKGQEFU7POQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F23A2EF7AC
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 19:50:56 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id q11sf16457744ybm.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 10:50:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610131855; cv=pass;
        d=google.com; s=arc-20160816;
        b=woDHgZJHow0k+tcDcfBrluR0F3AkG/JReGWjiu9B9mHUqTkgiL8X+vNpPfeA5qGJRk
         rnnMiNX/au+xD1E6HyjUWj5niyDCuMQwUI+OnCWw21XEc3p9XlabqJji5pPsT8Rg7uHL
         nZNY8ZhiSeLOWr/vjH/2zoNNY7xgdAvjxolZDNa23BL7xsDX4DdtX1cX2C5JAhohfWhk
         sW24vK7inBvSC0kDvb2NBFqYPuYbochWr6ifpmhbv8gdlhnlaIrpRM/QwjcJPN186ma2
         FKEgQ8RPSMCzBR7P1P0V8HBCTZZRZruzkj0PGv87navddJDXLNzXT/dxhZdng+c9H028
         SbCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=l+ejgFV1/CKcgjtJXT6uJCkRtAH4YcabHhbyoAz5DNo=;
        b=uCIKEsL9r1h9OqZDriZCkHoYCeqwVRFXPGwxMF5SUL4TFcfd3YXZj4KLdE1R0+CHJW
         hYtJb0I1FWU9PomnhJs8ng1OrCf1LSDS8UzpxzkOWC5GbJng94D89aOVG/F6dm4LqdCe
         NI3uvGxtpR2tC60quObzXeb+IROpUJpBxikPXFcRLpxAlR1dBsdd1IdGxoqwHe5WUNix
         4zhNV5djdoAgeMMeYAlWLUPxDQU2rvRq7iVFAlcpFVwOGH1NFbyYm3KROPY3pgkRwrgB
         nkj+ikEW+ayeck1OsOiC9LTEVu5gWuDL08JscL5kwhfQpNb1H4yCudrL980/QQtH4sBE
         i7QA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aLtx7xVu;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l+ejgFV1/CKcgjtJXT6uJCkRtAH4YcabHhbyoAz5DNo=;
        b=D7QkPZPrOkxNPCkyrTVvSVliosxPXSniQz+y2uzK7LYfewbeypBTzN38sXpk6j4cXp
         B1ou7A7tiqxMEYIeAc/ORs+O6Nmag/m9egKL9aYBxHjRjwBxA3lG22XJxTjIFC+4jkp+
         EfF/N1NbmRe4JRGK8ODe6CqPSE1dxKVNQOz+YbzBuhAbLxvi088yQgTRtVhsqE7fk77G
         KGY6UVPSQZ8tBO7jp1s09vmcK0Nm3IcJnMnJ3UhVGy8A2nZ2oG4nOTt2ECcVEgwhpCA9
         jQhxpcW1uMctdUW3dWjn0MFSx8p5ApptQDFT+XW+43d0F46m9SaG6BBoQNboECdmBc+L
         cUZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l+ejgFV1/CKcgjtJXT6uJCkRtAH4YcabHhbyoAz5DNo=;
        b=W2lBhuIVI8Sv1yoN9eEIHhTOKPVc0V1dV46+/xhOzQGT70MbYuDmmr8LK4oAknbRno
         ZREJWRCDF07AZFjfT6nslnqw4NTmlDGgjZ3BlUYVTiJ+HEtoTrNfr+a75B20JwrYR1hl
         mpmmLV4J3L2lQIPZaINWwcvX0aZxjR4x+ZPVxIuPShN6unot+G+7mFe2ahLskXcF8yT2
         uheJMrhsDfliGdPXLcRG2P6MpiJ69475GhK577K6rUct3HVpVVFJ0gM57niRnZfHsQIc
         EG+35uxBGdxfNOAvkWfjK9nePxhzdxgDQLb/TfopEzB+DnXdG+JL8cX3zg/z5KOU3r+u
         j15A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338FPRvyBOonytSHI0caJX9WLQiMQPFmPlBy1o4QtyHAvsoja6D
	HySQv8RMIMTBH7+PC9YgQXA=
X-Google-Smtp-Source: ABdhPJx4bocO8YQEpkl56tOsX4ERB2xGSSk0jrWGhygCxOUPIPNez5HhBQLIfRgguR3GUiFejh8qnQ==
X-Received: by 2002:a5b:eca:: with SMTP id a10mr7418996ybs.447.1610131855288;
        Fri, 08 Jan 2021 10:50:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c802:: with SMTP id y2ls6052890ybf.7.gmail; Fri, 08 Jan
 2021 10:50:54 -0800 (PST)
X-Received: by 2002:a25:d92:: with SMTP id 140mr7737296ybn.101.1610131854899;
        Fri, 08 Jan 2021 10:50:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610131854; cv=none;
        d=google.com; s=arc-20160816;
        b=tY9ZKcQYUceCyPOjPGa0wxOXfczzbRZJW5e+GbwTOijjg+7w3AjTLIFP6MRiNn1rGf
         ArBS7H6s1YAjvKrF7+8i02Tqzt7CPdiXtrQhexZmMlAW35LY1eooEosFR+pYBVFMIkf3
         H/S9mb96xtJB9TQZAdg6FoBCHBJv8kHYXQzj5tPKQhnvpE9i5AT+WlX3uG6c+RLwGD1Q
         jwOeh6lcDYHiYHbU9lcNA8qE/oh6G4IbfRWAr90CoJI2mH7vfXwX1Yaor4849gWh3iZ9
         I/AsCUngfz4Y5waE9PqvjVF1sRqcNwJ4w9sQ8sCfGJ0A3rWymjiPVeexvc3pOhC6K2QU
         np9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PElrNngcG0Mb8+pnM2G/UM9bMV1qSApTHNDZIKBDafw=;
        b=aCjZDDdIAeYQljum9WdoubYmI0JY9Lin4Rc8A7xo2oY5Bf5UZxSB5wyrcy7yqCE7li
         8TsMgC2vJljZ6uJ8lFtOzgM+9CkxnxK3zkM6GsJlQhalKBcOV1Cl7gR00j2siYwkibVD
         pVpf+q5XUpJel8jbCohMK9loefIpqd0I1tO8XBjaEtNBl99EU24FIJn2qELmcCFVl07P
         hviUZfhNFZeLux3r7+ElQjDPRfRpLVWL8hqB9V3BX1tFK4faiSveY4uFlpsnUI71cIw2
         HGdwZ+4n1+t8eD21CSsyNe3UD3V4xX/wKiFzIgP3pwjt8PsOPrmGi5abDhhcCkhxRRpx
         Pu7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aLtx7xVu;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e10si1237152ybp.4.2021.01.08.10.50.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Jan 2021 10:50:54 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 872D223A5E;
	Fri,  8 Jan 2021 18:50:51 +0000 (UTC)
Date: Fri, 8 Jan 2021 18:50:48 +0000
From: Will Deacon <will@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Boqun Feng <boqun.feng@gmail.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-arch <linux-arch@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] arm64: make atomic helpers __always_inline
Message-ID: <20210108185047.GB5457@willie-the-truck>
References: <20210108092024.4034860-1-arnd@kernel.org>
 <20210108093258.GB4031@willie-the-truck>
 <CAK8P3a27y_EM6s3SwH1e6FR7bqeT3PEoLbxSWPyZ=4BzqAjceg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a27y_EM6s3SwH1e6FR7bqeT3PEoLbxSWPyZ=4BzqAjceg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=aLtx7xVu;       spf=pass
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

On Fri, Jan 08, 2021 at 11:26:53AM +0100, Arnd Bergmann wrote:
> On Fri, Jan 8, 2021 at 10:33 AM Will Deacon <will@kernel.org> wrote:
> > On Fri, Jan 08, 2021 at 10:19:56AM +0100, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > With UBSAN enabled and building with clang, there are occasionally
> > > warnings like
> > >
> > > WARNING: modpost: vmlinux.o(.text+0xc533ec): Section mismatch in reference from the function arch_atomic64_or() to the variable .init.data:numa_nodes_parsed
> > > The function arch_atomic64_or() references
> > > the variable __initdata numa_nodes_parsed.
> > > This is often because arch_atomic64_or lacks a __initdata
> > > annotation or the annotation of numa_nodes_parsed is wrong.
> > >
> > > for functions that end up not being inlined as intended but operating
> > > on __initdata variables. Mark these as __always_inline, along with
> > > the corresponding asm-generic wrappers.
> >
> > Hmm, I don't fully grok this. Why does it matter if a non '__init' function
> > is called with a pointer to some '__initdata'? Or is the reference coming
> > from somewhere else? (where?).
> 
> There are (at least) three ways for gcc to deal with a 'static inline'
> function:
> 
> a) fully inline it as the __always_inline attribute does
> b) not inline it at all, treating it as a regular static function
> c) create a specialized version with different calling conventions
> 
> In this case, clang goes with option c when it notices that all
> callers pass the same constant pointer. This means we have a
> synthetic
> 
> static noinline long arch_atomic64_or(long i)
> {
>         return __lse_ll_sc_body(atomic64_fetch_or, i, &numa_nodes_parsed);
> }
> 
> which is a few bytes shorter than option b as it saves a load in the
> caller. This function definition however violates the kernel's rules
> for section references, as the synthetic version is not marked __init.

Ah, I was hoping the compiler would've sorted that out, but then again, how
would it know? But doesn't this mean that whenever we get one caller passing
something like an __initdata pointer to a function, then that function needs
to be __always_inline for everybody? It feels like a slippery slope
considering the incentive to go back and replace it with 'inline' if the
caller goes away is very small.

Didn't we used to #define inline as __always_inline to avoid this situation?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210108185047.GB5457%40willie-the-truck.
