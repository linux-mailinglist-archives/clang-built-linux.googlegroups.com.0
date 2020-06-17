Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBDHJVD3QKGQEVJ537DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id F34EB1FD0BD
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 17:19:41 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id m11sf1972989pfh.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 08:19:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592407180; cv=pass;
        d=google.com; s=arc-20160816;
        b=HahTdjw7vvAPK9KKyxrMZMHHsyoMaIyJjUcXh097PvcoArknrIYu2tYrohW7nzHLSK
         EyoOpqrcXIK8Ao9A0YsT5jjlU3QYMVktYVYOcRskZ4HD9tUAILdNAUhQrsx/DoJH3ac3
         TxlsKvjsIdBz0LzCwSYIbcd+sZgYvL7/KEIgHS+AYslfxVQYhdstjKsMmG8fVrZmEMmL
         gAdK61mbQLQnDwUyCazytM4KtgRr+i3X6AcwETLVdQqanFWuYQtZWqWhLWgptmrM1LVD
         Ag2MDSybBMzmLWrclvWS/Q+kZeN7JLt1GIdXZ7Lp6Ms0UOk7jC7v3odxNBFhoUCI5AKD
         Wdgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zQVjIpnGlfc0Q+jvbE+5dBv9Kcjbw1XCGCtDJ+zzmGQ=;
        b=WvJ/moSlhP5D+jlpxTn9eprL70h5qsYLmoCbsL9nm5nrE/Xd50VTMAKekRSEw1iSfE
         9BqLXuY8M+9jK4vyUZMu5ZG/4R3/Wi/c7L7OfMB+qhPYxDcPLsMMo8Bf2+oEJdQBcN+m
         rpP29YkU/obuwNH9tyuMuOh+7pTLlOT8w5sWvhfm9Ahzp/BEIolaRgxYSsGWcAntKN2y
         9bQdpJSmOpU/llQxssAPwoZGYWyXO3k1sfvn1K/bIPcYuE11r90L8JpqyJe/8x5MBWnw
         HYgOwa5zluVOzQrU7CmUFJ7nr/cPPZzL3y2zirpMWGYHtQG5YmK6TmRRsviT6NjqImSm
         LnHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=eOiyRfkt;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zQVjIpnGlfc0Q+jvbE+5dBv9Kcjbw1XCGCtDJ+zzmGQ=;
        b=a7K9ossGDlxf8a8ZUBD5FFHTxipT3C3jZsj5yCiRMdRSMwLbJGq8I2h7q/8PI4SmhV
         oGd6ZwmGt3l/160EGhXLAZerrO4H8XbYJHXWp++Bra5/cmHg4MItB7NGpe4qJjL6L6zD
         XhgexsxdUqUquUhwvsmm6kpYyBTxpXd45MgYDnL3cE4TzB1C91tM6qP8u96owHMM7jzI
         XHpIGaLTZT6fBKGJVuPbdbsw31NWg977lqyMaHUtNsD8nLH0i3PqUILV2bLW3+mcsOaF
         khFDBUrMAxiQi9LiMWnl9izrRgEhPLCAt/8gy4RqIpCzpvuo+RZN+mrnMdtlTtrlYbmL
         7+eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zQVjIpnGlfc0Q+jvbE+5dBv9Kcjbw1XCGCtDJ+zzmGQ=;
        b=eGItIZ6o6K2lOfINRcBraPPved8wiN6xWVgbo1X2MXFYr7qZxpqtVkrG1oP+ngwET8
         DhR9VxTC23ixVslSELGAZesOU95mG5+hY0K4UjUesde+4JFWugE04+MMwuzEtnUQQUEm
         GpWotlMyBXQbuUiSfKdKiiTB2Zlbav0Tfg9oGPBnXG1/ZurDiALe0WutR9Yjn4+VxaDM
         YdX2lBfgfMNcNYqh0Oi1vhOcruNedkTzVQD0Su+ZPt0KTkrcD/yjv6erj50RSNgU3sg4
         7i7TpgdIMNw/OPmVLc9tNMaa2FIuC5LHhCNjaGQCXoCO33swfqq/C+luSI7LLgez0Pk7
         2ANA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lY06mLJDq+SIN8FX3lSP7b2+cQpR/Jz/455/pi3CWTQfqqGd0
	r60HDjbutPa8LsMx3csl7x8=
X-Google-Smtp-Source: ABdhPJz4kF3FImmREG0JTWTLaMd7kUXvD6wZjRGj8zip+xGLLl79i1cfpEIHz8O6vk+pV/EdCCKwJA==
X-Received: by 2002:aa7:8283:: with SMTP id s3mr7402086pfm.90.1592407180394;
        Wed, 17 Jun 2020 08:19:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3182:: with SMTP id x124ls439735pgx.10.gmail; Wed, 17
 Jun 2020 08:19:40 -0700 (PDT)
X-Received: by 2002:a63:591e:: with SMTP id n30mr7023761pgb.429.1592407179986;
        Wed, 17 Jun 2020 08:19:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592407179; cv=none;
        d=google.com; s=arc-20160816;
        b=YU3ShgiJkx3/CgO31u+R7BRdERR/csKFfp1KgbNhpNj3eWZRb1P0x28e8urflVLQL7
         4t7/Bev4bjlihXAShd4NajsoixGMal8SFGcSHbEmLtcQJ9FpLKAY+MfsdmIKyRO03uJo
         ySx9XR7QyUBig5JXzGKHYqBJwGP0lt6t98BjANQyfgV4wsWyexP3bTRpko8Ep9fuXqdb
         uonR9MT7q4ukylrpYd+bj0b3y0ZawvI/nagJz91s85v+PMShSPc1Dmsbs36HDD1dzMso
         o8iDE2qaUUJTZxXUUoT2YWJwNKuWIydmT6Uh1GRnKJXLjENVGvzuw5S2wxKoOB2PWY+n
         rEAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9xgWNrz/EjgA9082VEmXpJMV85vsTTWYygZBrxi4Mgg=;
        b=Q7L8ZyzLbCqUGTErPN/xdxHaJl1ZQigIDhXFpb4WOf9NLrfcPIeIMsQ9JORGHOf3nG
         coQQjI3kb0PVhh4cYCmUYErD4npPcaH61Ca5+puVkjdd6yecOON3yBdlgbg2FUBcbMQh
         gz9XpuQOuMTx+zvhcXLTfF8M7Qko0Y3hFwsQ7KLzXkdyh+rHVE3fj0P9YAP9+pw8OUwa
         yo/KEBgnpXOtZMhAo9EVY04/q0e5E3tuTL4Rj7WpambrlsiCRUNBi7f5m0re3V9qF4hW
         pwtxA3x1jd05UlhkLr7Mem2Ta2fjBrWahjh6Dm71qJZ1tgW2TW43N4mYkWZ0+bNQzm4Y
         j/jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=eOiyRfkt;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id mt8si286625pjb.2.2020.06.17.08.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2020 08:19:39 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlZqd-0007cZ-05; Wed, 17 Jun 2020 15:19:31 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 42D57301DFC;
	Wed, 17 Jun 2020 17:19:28 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 2DDD220C227A8; Wed, 17 Jun 2020 17:19:28 +0200 (CEST)
Date: Wed, 17 Jun 2020 17:19:28 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marco Elver <elver@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Mark Rutland <mark.rutland@arm.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Alexander Potapenko <glider@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	the arch/x86 maintainers <x86@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>, ndesaulniers@google.com
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions
 noinstr-compatible
Message-ID: <20200617151928.GA577403@hirez.programming.kicks-ass.net>
References: <CACT4Y+aKVKEp1yoBYSH0ebJxeqKj8TPR9MVtHC1Mh=jgX0ZvLw@mail.gmail.com>
 <20200612114900.GA187027@google.com>
 <CACT4Y+bBtCbEk2tg60gn5bgfBjARQFBgtqkQg8VnLLg5JwyL5g@mail.gmail.com>
 <CANpmjNM+Tcn40MsfFKvKxNTtev-TXDsosN+z9ATL8hVJdK1yug@mail.gmail.com>
 <20200615142949.GT2531@hirez.programming.kicks-ass.net>
 <20200615145336.GA220132@google.com>
 <20200615150327.GW2531@hirez.programming.kicks-ass.net>
 <20200615152056.GF2554@hirez.programming.kicks-ass.net>
 <20200617143208.GA56208@elver.google.com>
 <20200617144949.GA576905@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200617144949.GA576905@hirez.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=eOiyRfkt;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Jun 17, 2020 at 04:49:49PM +0200, Peter Zijlstra wrote:

> I had the below, except of course that yields another objtool
> complaint, and I was still looking at that.

This cures it.

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 5fbb90a80d239..fe0d6f1b28d7c 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -2746,7 +2746,7 @@ int check(const char *_objname, bool orc)
 
 	INIT_LIST_HEAD(&file.insn_list);
 	hash_init(file.insn_hash);
-	file.c_file = find_section_by_name(file.elf, ".comment");
+	file.c_file = !vmlinux && find_section_by_name(file.elf, ".comment");
 	file.ignore_unreachables = no_unreachable;
 	file.hints = false;


> diff --git a/arch/x86/kernel/traps.c b/arch/x86/kernel/traps.c
> index af75109485c26..a7d1570905727 100644
> --- a/arch/x86/kernel/traps.c
> +++ b/arch/x86/kernel/traps.c
> @@ -690,13 +690,13 @@ struct bad_iret_stack *fixup_bad_iret(struct bad_iret_stack *s)
>  		(struct bad_iret_stack *)__this_cpu_read(cpu_tss_rw.x86_tss.sp0) - 1;
>  
>  	/* Copy the IRET target to the temporary storage. */
> -	memcpy(&tmp.regs.ip, (void *)s->regs.sp, 5*8);
> +	__memcpy(&tmp.regs.ip, (void *)s->regs.sp, 5*8);
>  
>  	/* Copy the remainder of the stack from the current stack. */
> -	memcpy(&tmp, s, offsetof(struct bad_iret_stack, regs.ip));
> +	__memcpy(&tmp, s, offsetof(struct bad_iret_stack, regs.ip));
>  
>  	/* Update the entry stack */
> -	memcpy(new_stack, &tmp, sizeof(tmp));
> +	__memcpy(new_stack, &tmp, sizeof(tmp));
>  
>  	BUG_ON(!user_mode(&new_stack->regs));
>  	return new_stack;
> diff --git a/arch/x86/lib/memcpy_64.S b/arch/x86/lib/memcpy_64.S
> index 56b243b14c3a2..bbcc05bcefadb 100644
> --- a/arch/x86/lib/memcpy_64.S
> +++ b/arch/x86/lib/memcpy_64.S
> @@ -8,6 +8,8 @@
>  #include <asm/alternative-asm.h>
>  #include <asm/export.h>
>  
> +.pushsection .noinstr.text, "ax"
> +
>  /*
>   * We build a jump to memcpy_orig by default which gets NOPped out on
>   * the majority of x86 CPUs which set REP_GOOD. In addition, CPUs which
> @@ -184,6 +186,8 @@ SYM_FUNC_START_LOCAL(memcpy_orig)
>  	retq
>  SYM_FUNC_END(memcpy_orig)
>  
> +.popsection
> +
>  #ifndef CONFIG_UML
>  
>  MCSAFE_TEST_CTL

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200617151928.GA577403%40hirez.programming.kicks-ass.net.
