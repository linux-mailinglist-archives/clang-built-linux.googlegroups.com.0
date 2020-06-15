Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBYVDT33QKGQEHMHUESI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id C652D1F9BD3
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 17:21:07 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id s4sf12319929ilc.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 08:21:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592234466; cv=pass;
        d=google.com; s=arc-20160816;
        b=tRX7ObmkTEgpke+35n21QhBCMWPn58EuWKp3YYh27km5BtX5jFFInOpgwMOiDE/hzU
         H4XgCbytz+EUQWYH+Z/lqAHsD/50XtAxlKS1Nd+Mr7QhRSl0+cC2WtxFTXjsVE0HRX+Y
         5zOgeOreQCm0gmb7H/xeJoHRuVo73v5WKuF9uTuy7QKIn+ikWoVxSrju55jzJCxR8hBa
         Mj2Dfa50uNUx0Qd2Pzi96UjpoKDmzKiMnx9bXGeePtgVbomlTikO5/I6HtjVe2SfBnUh
         PP5k61KVZAT5SD86gTB84IjCMdZcWjAZ+1wdHwkvghbHmgwFfzjGujVekLKPbKXiToSe
         oQ+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rl98/nL7DzL79gJ5QVInfsdfGF/Dc4GdWurcabq1fvI=;
        b=Wn6Dyq40/p1XEWF1ZvQ8bjdPdY+zr+CEwXuxlBnDt7/rW698gm3N5KJeet/Q3DORru
         n31wjast33h3104PW9GlTdT5x58M5poCsHVYnUTWY4bd3d4THGCciW8VPP6r//1nCmL/
         1pGYll3WfKeTrxrE02x7QiLJ5VtsFj4GbudlUEh1Tm6irWBbZPJPdRGpwUrg6ZjaN8VH
         L+PFS1zduHS1av4stA+m7i94ozT2TXFRHgHPuF0hgmK60Gg4EXKWUqXHoJtrY2ZmE0qH
         1CA9sYQIPNhRhuKQOFtFs+ogrifAPeaCVqmUl6jZi/XwhNaoVmpZhMOY7xVupTj7Zx/v
         xung==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=H52QNX2j;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rl98/nL7DzL79gJ5QVInfsdfGF/Dc4GdWurcabq1fvI=;
        b=mXRB5wqcQYjYm79pYqWc4vnOYhPyptS9xaaV2cSJa9/wa7jaYbZXSbdAk3rYAhYLVk
         jpAOvH1LzJCW6aw7jnBqJTlZ3h//jV1vux1mvbqzul6tdvCy9lEQDULVzrW71Bs6VVOZ
         AIol4OTOirTcmhWlSyz2ORqyELhJSRA6JtU0pfxtViPfxnvtWOu2k3OJX9y5txmTQWF1
         kvKHNraOWLcy8Avq9OenHHAeMBY+gb5UQcIhtx9auk+MYeGU1yk61IS5v0DU9ItUByZA
         X2EjsmOxbVlsjHAdKajCZXbsmHqQvZCxpp5YPDIKJYf/4YS0CF8moNwNhgQjCr4O77Kn
         CvNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rl98/nL7DzL79gJ5QVInfsdfGF/Dc4GdWurcabq1fvI=;
        b=WffK2zbT4IlAYq11YY6Ap/DFtJGsdBforOxcEvO+CB168I7r0J49wkFhRWH++BP71O
         OyMkMPyXGLZzXLJSkzeK1P+NlYSq7XyW9ipfdsEzHYZ7urn2stG19BRMQVfBcGocsnre
         WlaVLJEj03If0ulGSZ/OgARnwcgGk7jVSPFd/jz1JVsnHEh4TF/pyx3oyDWoHTOf0UDN
         JEta+Br3FLifKdzef/U43fTEXA4vT4lZrYPFfZH8Um7HcttqgdPfiThfS5B5PE6CRXwV
         s5mXkQL3ca2+dFQCGCZb7O4O2PPylZdDPOCb9uik+lq1s34ck0ownmWeMVHrr4jeWrSe
         KG6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qUsBxhGdOpHYiQaLmYuEMGMNtl9f03wCgGtDsVi3lMbwrgtxn
	s5URBgBHJVCv+PCdJfNkCVI=
X-Google-Smtp-Source: ABdhPJwjSm8rboDQOFAcV6Ok0RURBACA8LF93TqZMk1HNBMmZ8Dz7ezXMfFpNYuB7qQC/nKaMKYxKw==
X-Received: by 2002:a6b:3e86:: with SMTP id l128mr26628353ioa.95.1592234466678;
        Mon, 15 Jun 2020 08:21:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2106:: with SMTP id x6ls2687790iox.8.gmail; Mon, 15
 Jun 2020 08:21:06 -0700 (PDT)
X-Received: by 2002:a6b:1487:: with SMTP id 129mr28340399iou.197.1592234466275;
        Mon, 15 Jun 2020 08:21:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592234466; cv=none;
        d=google.com; s=arc-20160816;
        b=JVsmdlGFYQQO47LJ1IC6q7pehC4tgYJzoVCUkGsQZoRoPZhHwHeJkoCytRIpAgTmkT
         TUMuqvxbjvI6e2coBUknGGk67OksOg1UaFpBNzKNekgkFyL7sqCZ0sy5tiFKY/Orz68Q
         uwXJyAO7uI9Ant/OxSngK5kRI28AoqF3su+HGpVkQGRBC/NtoWoZwOksfuHHWVRB+/uy
         HRDNZfqTKV7axLXcjtf3IJd5PE17GxkjBi5hx2Hzo6yCGoaLi++A3bRzaHHDyNnt4aaJ
         BHw3J65myJBoWR0O/FezxCovnmAe9sUDPSME8bMtKQF+JoMLGHQa0Bi0QIsUqrrI/i6I
         UEVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Udue+LwwMS7xIun8pCno4Qdzcnv4kfX0ri/1a/g6c/k=;
        b=ek5R+jGXr/DrxOMdm0o1M/8HA9MjQCKWxzJjr1osW0su9RSlm+QFiYiftbCojvUKk5
         bznMi8/+RJ+Tdw8i8YYzm4S2UNHDRAk05xWTLwYZefprBKe2BQHIqQ1/A+257gdupS5C
         aqiagKgXMRrczb6tj1ix1gL64MjuD57f/OqdxhlzlCum0yNSj1GbHuB/DqAgX1NkpbYF
         MzJroQVwXGogJav8B976btVJz9R83WUNEhqmC+YXF+NGmQt7F6Sk4HOkFhqqWUEpqj6a
         CbX/k3dUZCekMA7a6pqXzrwI3ejKN4iGODwo/etdx+VLlK0soLlJCJehQm41T2gp8urf
         o3zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=H52QNX2j;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id i20si235761iow.2.2020.06.15.08.21.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2020 08:21:06 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkquv-00053R-UE; Mon, 15 Jun 2020 15:20:58 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 4EC123003E1;
	Mon, 15 Jun 2020 17:20:56 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 3535C203C3762; Mon, 15 Jun 2020 17:20:56 +0200 (CEST)
Date: Mon, 15 Jun 2020 17:20:56 +0200
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
	Josh Poimboeuf <jpoimboe@redhat.com>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions
 noinstr-compatible
Message-ID: <20200615152056.GF2554@hirez.programming.kicks-ass.net>
References: <CACT4Y+Z+FFHFGSgEJGkd+zCBgUOck_odOf9_=5YQLNJQVMGNdw@mail.gmail.com>
 <20200608110108.GB2497@hirez.programming.kicks-ass.net>
 <20200611215538.GE4496@worktop.programming.kicks-ass.net>
 <CACT4Y+aKVKEp1yoBYSH0ebJxeqKj8TPR9MVtHC1Mh=jgX0ZvLw@mail.gmail.com>
 <20200612114900.GA187027@google.com>
 <CACT4Y+bBtCbEk2tg60gn5bgfBjARQFBgtqkQg8VnLLg5JwyL5g@mail.gmail.com>
 <CANpmjNM+Tcn40MsfFKvKxNTtev-TXDsosN+z9ATL8hVJdK1yug@mail.gmail.com>
 <20200615142949.GT2531@hirez.programming.kicks-ass.net>
 <20200615145336.GA220132@google.com>
 <20200615150327.GW2531@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200615150327.GW2531@hirez.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=H52QNX2j;
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

On Mon, Jun 15, 2020 at 05:03:27PM +0200, Peter Zijlstra wrote:

> Yes, I think so. x86_64 needs lib/memcpy_64.S in .noinstr.text then. For
> i386 it's an __always_inline inline-asm thing.

Bah, I tried writing it without memcpy, but clang inserts memcpy anyway
:/

---
diff --git a/arch/x86/kernel/traps.c b/arch/x86/kernel/traps.c
index af75109485c26..d74fd6313a4ed 100644
--- a/arch/x86/kernel/traps.c
+++ b/arch/x86/kernel/traps.c
@@ -686,17 +686,17 @@ struct bad_iret_stack *fixup_bad_iret(struct bad_iret_stack *s)
 	 * just below the IRET frame) and we want to pretend that the
 	 * exception came from the IRET target.
 	 */
-	struct bad_iret_stack tmp, *new_stack =
+	struct bad_iret_stack tmp = *s, *new_stack =
 		(struct bad_iret_stack *)__this_cpu_read(cpu_tss_rw.x86_tss.sp0) - 1;
+	unsigned long *p = (unsigned long *)s->regs.sp;
 
-	/* Copy the IRET target to the temporary storage. */
-	memcpy(&tmp.regs.ip, (void *)s->regs.sp, 5*8);
+	tmp.regs.ip	= p[0];
+	tmp.regs.cs	= p[1];
+	tmp.regs.flags	= p[2];
+	tmp.regs.sp	= p[3];
+	tmp.regs.ss	= p[4];
 
-	/* Copy the remainder of the stack from the current stack. */
-	memcpy(&tmp, s, offsetof(struct bad_iret_stack, regs.ip));
-
-	/* Update the entry stack */
-	memcpy(new_stack, &tmp, sizeof(tmp));
+	*new_stack = tmp;
 
 	BUG_ON(!user_mode(&new_stack->regs));
 	return new_stack;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200615152056.GF2554%40hirez.programming.kicks-ass.net.
