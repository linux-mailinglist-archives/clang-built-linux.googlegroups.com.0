Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBTUZVT2AKGQE55RGMQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id D186F19F415
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 13:04:47 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id q10sf14521999pja.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 04:04:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586171086; cv=pass;
        d=google.com; s=arc-20160816;
        b=AMlQcSSWgCYZp0llUmcrNXVdqmkKa6rY/BJ37YWuDJIabzHcSAtf59UONt15kNhaGh
         +bEhYt5eJUxA96L1b15wezK5K4/BDbNZrfI0z1+rBfkrsBVdKIav1KIa/x+YKJOWQeSm
         EWUcuxoYqJQY2WrCDsVLig9wVX/+L9zuf+wPTvuwNB5ZI176RuZIf4DG40MJGLSp64dw
         rXCO0Q0ikuFhwHozbGN7GQ1zfbeTJajnwhG7+kocJ64XayiPrw1vYqBiYd681zrpxsd+
         B+JQbBOxq4fymE2ZV/k+lkudHjuv9ncsxmP9LCZKXovDN09QdltTrW1mHZxgoGAVEVVN
         jjJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SWuAhyUpJvvExa5j4Z1gHXr8z8yilZNC4dJFHZqPzxg=;
        b=mSSJhskoF7/umjWryLioXpxzo5fR+PvD7R3yM4dV9OHUeodlQ9Qyyt0GGLKd6u8JuX
         /K7YTHEUZFAJUn6JNXQNckbBrxS9mWMFcFK1mIWRnDWy/3F0fihULic2OrFPyBZBTx8V
         m+WcoerPijt4J6X1aI3cdgVT2tYic26LPdobDhdOlZT0KFmoAX64xXYzCodXNAlIEbr0
         BBTET6nqlgw1VR/VbJWlgRvxEGjuJtteQgEXpHtRlIuNGwJ/5P1KcW0h60OchtJfmzLv
         tKq1RDmHXP42kflHo0wvcgFJ8PInBLkcZrV/iGx96/y1FnuiMrA2C+K6nDm7JSzXsSk4
         PBIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=NlmLniwP;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SWuAhyUpJvvExa5j4Z1gHXr8z8yilZNC4dJFHZqPzxg=;
        b=ZIs25jhSZNbVicEDym9WGw1oIERCTa08daEFCdcuFrtCN5XaYlGt5yN37fAjeOuskr
         U++3DLqvtIjrCJe4Dz/h1j155XvQeGHqpXPb7TvxfUbsWD6cNI2Q+smvVJ3BnKzR8zaA
         VH2n5t1ZEfQQTUEs4YxWDU2nF4zjhcxSh3sq2DFl0KRqSznrMWAAJqECGZkn1u1/XCmV
         2esc8tsfTEgpYMuqYuhFfIeJxZ1dPD2YPJyw/rg2iabiKRUWTgOdbyUSW33ln2ZDFmCj
         oKZe9GGR8qpyy6G8Q3Ev8rO100YqoBwEBuJtJawsUN0f9Jp8caN+dFnJcs3UbYcz2jVo
         mL6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SWuAhyUpJvvExa5j4Z1gHXr8z8yilZNC4dJFHZqPzxg=;
        b=PS9dmZRFdMg59yIFUgyNmUHiOIz1g9dRpGz7KsEPKYULvgaXzxHOnNn3mpjnX62xtl
         tj2ipJ+nUc4WA+VOhX9yfoCHAo2H3+NlaGce77fGPErA6Fr+F4LPgcyrp59so43LEArL
         p+n7/Fs3pTw86xR+Gvj94oDzIkbN7gLs3yS0PjkHjgGB60hJGHZGMuBvCtB2T0tugFX4
         sCFQCVCjZetDUgkMNz6vcdMye3u3GbRE+AhCmkq04xKt9fvx29SwL1l/yW9ZgM7e/cvW
         k6ibEd35C7cGUyvkJsP/C1tw324pqx3aFqj25mIcgGlDyNcq3kQjIqCQwrhckxZD8My4
         yd1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaKjb6Oxcn5QsYYbZS1JVKrx9pDXvmUPOoXsp3/7W7ZAwtnr67I
	VGfZ1JkqjqqdcWXRJ2Wl4Bk=
X-Google-Smtp-Source: APiQypIJbmvXvdRlnqlPYYbAU+1JuQYB8v0ZtOqk6EzKceJKH/8T6zNSMut7GnQeplODTROavvg5aA==
X-Received: by 2002:a63:455:: with SMTP id 82mr19857865pge.197.1586171086445;
        Mon, 06 Apr 2020 04:04:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7c97:: with SMTP id x145ls11087226pfc.6.gmail; Mon, 06
 Apr 2020 04:04:45 -0700 (PDT)
X-Received: by 2002:a63:3002:: with SMTP id w2mr20703141pgw.290.1586171085783;
        Mon, 06 Apr 2020 04:04:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586171085; cv=none;
        d=google.com; s=arc-20160816;
        b=rM2MQOrqOWrsBQI4xolNbbYbfu08CqhnS5Z5ufgmOUgpXQqsf27n2d71VfvQosf0Pl
         kuB5OT7EIyte4Pe5UNnb9ZSxZWHKeJaq17Tgm2syE6nYf5GM6cot+MbV9J7Enfpdljz4
         lnmoJXFIfEakcc2khxc9JjyutMjQ9oBOsAdtUcDodHiTpma2DTRIKgOKM6TTVHYCkK2K
         UVmN2iENJtvDwKISHeBMG8NW4JkNdSJ/GTENmQlQkZtNClFK8iLk40COjt1aoZMrZ8X/
         i8LG/iw8b8JwcWBrCl3o7MyU+XhR7Tos2or2/Op4CUxxCakr90Lk859TrevsAGcOzSKB
         Ud5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=91jomgqgEShWhxWCDxxUvWHFtjKYAeVic8T17yZiSn8=;
        b=EgnV5QUGvGfw5u4iua/brGA+DiXfDmlgK3Fq1DGcX+PKaSijhz2JRHyPFbctp+k8+6
         FS8n+9jOCQNmafrpyEu6qSrOlKjdXbyNay1hOjiDRiYSwghPC5K197Lxm+m0EUcoLZcH
         0/p6lQhS6JCqYeQqMF93ix5QSkKhYTHNtA40x8p0im2S5+Kn0yQtBflPmEcOixUmY62p
         jRsq/SoPRBfU6kuVMhPJZTiiB3MSHBEbdRiX6X2QQ60CLKR9x3g4LboROoBtm1nDqjK8
         GNcv0iV8u2nUw0OHzYDGSxA0hU3Q2Ix0fmBxzGWqMOgTgACPKOOhN8DWgXLD/tqzH9Tx
         sroQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=NlmLniwP;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id i10si807465pli.0.2020.04.06.04.04.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2020 04:04:45 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLPYX-0005ld-8D; Mon, 06 Apr 2020 11:04:41 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id C6B41304121;
	Mon,  6 Apr 2020 13:04:38 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id AB48F2BAC6A8E; Mon,  6 Apr 2020 13:04:38 +0200 (CEST)
Date: Mon, 6 Apr 2020 13:04:38 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Fangrui Song <maskray@google.com>
Cc: x86@kernel.org, linux-kernel@vger.kernel.org, rostedt@goodmis.org,
	mhiramat@kernel.org, bristot@redhat.com, jbaron@akamai.com,
	torvalds@linux-foundation.org, tglx@linutronix.de, mingo@kernel.org,
	namit@vmware.com, hpa@zytor.com, luto@kernel.org,
	ard.biesheuvel@linaro.org, jpoimboe@redhat.com,
	clang-built-linux@googlegroups.com, hjl.tools@gmail.com
Subject: Re: [RESEND][PATCH v3 09/17] x86/static_call: Add out-of-line static
 call implementation
Message-ID: <20200406110438.GJ20730@hirez.programming.kicks-ass.net>
References: <20200324135603.483964896@infradead.org>
 <20200324142245.819003994@infradead.org>
 <20200406010859.bcfouhukcgmg2on7@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200406010859.bcfouhukcgmg2on7@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=NlmLniwP;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Sun, Apr 05, 2020 at 06:08:59PM -0700, Fangrui Song wrote:
> On 2020-03-24, Peter Zijlstra wrote:

> > +#define ARCH_DEFINE_STATIC_CALL_TRAMP(name, func)			\
> > +	asm(".pushsection .text, \"ax\"				\n"	\
> > +	    ".align 4						\n"	\
> > +	    ".globl " STATIC_CALL_TRAMP_STR(name) "		\n"	\
> > +	    STATIC_CALL_TRAMP_STR(name) ":			\n"	\
> > +	    "	jmp.d32 " #func "				\n"	\
> > +	    ".type " STATIC_CALL_TRAMP_STR(name) ", @function	\n"	\
> > +	    ".size " STATIC_CALL_TRAMP_STR(name) ", . - " STATIC_CALL_TRAMP_STR(name) " \n" \
> > +	    ".popsection					\n")
> > +
> > +#endif /* _ASM_STATIC_CALL_H */
> 
> Hi Peter,
> 
> Coming here from https://github.com/ClangBuiltLinux/linux/issues/974
> 
> jmp.d32 is not recognized by clang integrated assembler.
> The syntax appears to be very rarely used. According to Debian Code Search,
> u-boot is the only project using this syntax.

*groan*... I was going to use it in more places :-/

> In March 2017, gas added the pseudo prefix {disp32}
> https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=86fa6981e7487e2c2df4337aa75ed2d93c32eaf2
> which generalizes jmp.d32  ({disp32} jmp foo)

That's all well and cute, but I can't use that because its too new. Not
until we raise the minimum gcc/bintils version to something that
includes that.

> I wonder whether the instruction jmp.d32 can be replaced with the trick in
> arch/x86/include/asm/jump_label.h for clang portability.
> 
> % grep -A2 'jmp.d32' arch/x86/include/asm/jump_label.h
>         /* Equivalent to "jmp.d32 \target" */
>         .byte           0xe9
>         .long           \target - .Lstatic_jump_after_\@

Sure, but I was hoping to move away from that since all assemblers
should now support jmp.d32. Except of course, you have to go ruin
things.

The thing is, jmp.d32 reads so much nicer than the above crap.

Also, I still need a meta instruction like:

	nopjmp $label

what works just like 'jmp' but instead emits either a nop2 or a nop5.
I tried various hacks to get GAS to emit that, but no luck :/

The only up-side from that new syntax is that I suppose we can go write:

  {disp8} push \vec

without gas shitting itself and emitting a 5 byte push just because..
Except of course we can't, for the same reason I can't go around and
use:

  {disp32} jmp

in the above code.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406110438.GJ20730%40hirez.programming.kicks-ass.net.
