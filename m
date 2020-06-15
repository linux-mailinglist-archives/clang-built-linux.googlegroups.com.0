Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB3MLT33QKGQEP2MB5GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id D127A1F9A2C
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 16:30:05 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id x6sf6748921wmj.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 07:30:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592231405; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hw8ArpQ+QYpTwgoOivSbD6B6xmeA2JNhYcg3pbt6Y52C+49LgxbwdD0J/Uax6W+Ap6
         KIUHs4ocAeyc3vQZZiprkWqkz0ebBMnCx0EXxiUVUtFKFM5McC7QqbN5xqyjRO3r5WCT
         IH5D8ZN/saiC3siLdwaouDSzcNVgMVMSjHfReVnuwbteRvYrmutt3b0WJxkdtms0A/U2
         NX5eLst2lZKsUZTqfeQPclDxVOvW9RvSIHJ682rh8R1iWNJ3J6u3JDmIu+zu7o+PMEw0
         LvaJiC41+3uZwInrOoAOWTpM0qUhv5opvhnAO45gCilsiMbGx31n8ooS4B0UzovWifMn
         w/Xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=q/7wmT/6h3vERG2quH/H7Qa3HTWB4dMhJGrkVJYbHVc=;
        b=FH6GjZAo2LnZYb32IBSxZtlz01YuzJgz4NIbSGBtLSRbG6iIgw1M0cWgxl9UjLdDOA
         QPshmgTmfxIqFVphFIkKBBsxO7Bpb4eVQQ5kvjkPhlaRnfFpNtYKw3qQpMDBwjDc1RWh
         dLkdWtLuzSCODdtkGqCBcTDS/i/XbayOLV40Dv8mk7uiyZRSTeW1SeQqJmNEpEE8/OfQ
         TW+gSslaImm09is9PD8hbrJSpgXVLjNJZqZ74iRKOGHUEBQ4daKFDOIQ2HwMUChswVLZ
         J6ZK1kYMGRdsqbHqKAwmCJMo0D4Bo1KVJXRMUN5GmIvOjk5FeOZxiVbcizLjlJ60VvCk
         JJxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=RCpCMYm2;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q/7wmT/6h3vERG2quH/H7Qa3HTWB4dMhJGrkVJYbHVc=;
        b=CCb1IDa/dWnYvZSyt4zkr+j9u16v8jB/X0klBxzhTgNA8fdhn3cUAFq+vIvqP/LYKH
         klwEkPmfPwkwnhxDuNpoTHTrkVZwqQg0fTnJf8UJSfpBmb5O9YDyw2raba9J+qxk2s79
         jFB1oCQUo8MM7lSwpR1bt3QxT55ZldEN7TGNcy+QrvVMwxObcyXcD1sSxjN9s+2qh4ss
         ELXEtAgzhndoYoMjHHIVqzauvBKs9rkK+19TAUY5pVvdSnE7KvOwItC16guY9qOrDj5L
         lTOAD1ZpBZIusCO0UyGcwtat+Dhr/dkjcARXmFuyg0W62tw5kiMI9bTqu59zs5fuTyCa
         vFQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q/7wmT/6h3vERG2quH/H7Qa3HTWB4dMhJGrkVJYbHVc=;
        b=JQqDz5tRAMOsh91hL6juvbbR4BYFAyA1vidPqqH6oFjItMu6QDLUw3Ui9o+vMUhYbg
         U0/GDCrcTlEpoLT1hFn9THB18qJCYbNAKkouEqRgiX7C4N6TKoQGYBUWPO9rlcw6R7tL
         ZS/pxjnhaXC0xtCJGmNRz04yqY6SdSNc5+BnH7SSMMZg8G5vZh4FWRntjorMEbKCe5bI
         OVVgtLdyayueTXy+SuKcG/45vh5GhOnNSUyW7R7VnHx1oIrsLByHpcEREdHtayqdxGhI
         2q3ukeg7fQMoU4ZdvxIdaWZf3oAQkxyIhcozbv5fvUR9t+iY0lZl7r15x/wY17ecb2Kf
         fBpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lklopLfcNEAuT23whdugmbTW1rmlpogT9je9JR1MHDLYDgIjz
	phtPGiy/KGcTAIB7jMjZRN8=
X-Google-Smtp-Source: ABdhPJyrpz9ixVBvJa6KxQkXP44K49qlepNzvngIPlG/yn4HeiEz23NEdTF553fVyf/ryvtOXzUBzg==
X-Received: by 2002:adf:b348:: with SMTP id k8mr31949277wrd.157.1592231405527;
        Mon, 15 Jun 2020 07:30:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a70e:: with SMTP id q14ls7627618wme.0.gmail; Mon, 15 Jun
 2020 07:30:04 -0700 (PDT)
X-Received: by 2002:a05:600c:22c9:: with SMTP id 9mr14471249wmg.68.1592231404883;
        Mon, 15 Jun 2020 07:30:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592231404; cv=none;
        d=google.com; s=arc-20160816;
        b=m68cu2FyLUQmc/jU28ECj3Q/e5MZpVKPDuxtlFUb4XwyaKecjGynehBI1J6IbpwdCM
         7xWeYZzOJdyxbRegfIiGZgLxe8XMrI0SUt2Tq0gvyrVZHGvzapRKYMv2R2XTPyaqO7IL
         /dzYlwHjbGl3C6Ewx3XwBiWVixeTZWSJ/a9BYPx4ni4veuVsy39ThZE/8KxppStCifW/
         z0VOouidfIg1m1S8DQTxHoHPxC3UHLUiS7k+F35AlJhey158svqSXZ7GCDcu9zAslyOH
         Vpw3MZeZD/bfe11yWoybdEDN5saRxQ+uKEHDhzi06iirgwCNiVXsBP05rclaZiU/nMhv
         1i8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iVtDey7osCTiXRlBck0DMsdzE3CHMm8eourPYCpuPzc=;
        b=jPAY/Nmuq6xLoV4MA80am5PA2f4yfEVuiwTWiFiIHGl393mOZsYGTvENfA9AxBwwTi
         iWicgKOiyjW+4bQD2QEikmP0HjHw0eRxzullj+cD9hwH9Qz2N+OIN/xv6WwDkaQooJNi
         9XZEYKf2nbQLK8e9awkWPNx/vQ2zkQm2n727dhc0k+fU+TB+Fi7iVkoRBfGw4W7bUD7K
         66Y/KUOgjouzgmBzzI+uIYilBrDKjGICZ7lWOZ36VhjwTSqJsAVbxBuKhEgm4oLZ3Lk7
         qIChp53D7DOxriCIFJDb2Crjttp364fm3E+FH+Q3DqQaIylZ0VAjBgLAuus8tsLVXKnr
         U+hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=RCpCMYm2;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id o195si758574wme.0.2020.06.15.07.30.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2020 07:30:04 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkq7W-0006Eh-6c; Mon, 15 Jun 2020 14:29:54 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 1BBA33028C8;
	Mon, 15 Jun 2020 16:29:50 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 09DC3203B8172; Mon, 15 Jun 2020 16:29:50 +0200 (CEST)
Date: Mon, 15 Jun 2020 16:29:49 +0200
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
Message-ID: <20200615142949.GT2531@hirez.programming.kicks-ass.net>
References: <CAAeHK+zErjaB64bTRqjH3qHyo9QstDSHWiMxqvmNYwfPDWSuXQ@mail.gmail.com>
 <CACT4Y+Zwm47qs8yco0nNoD_hFzHccoGyPznLHkBjAeg9REZ3gA@mail.gmail.com>
 <CANpmjNPNa2f=kAF6c199oYVJ0iSyirQRGxeOBLxa9PmakSXRbA@mail.gmail.com>
 <CACT4Y+Z+FFHFGSgEJGkd+zCBgUOck_odOf9_=5YQLNJQVMGNdw@mail.gmail.com>
 <20200608110108.GB2497@hirez.programming.kicks-ass.net>
 <20200611215538.GE4496@worktop.programming.kicks-ass.net>
 <CACT4Y+aKVKEp1yoBYSH0ebJxeqKj8TPR9MVtHC1Mh=jgX0ZvLw@mail.gmail.com>
 <20200612114900.GA187027@google.com>
 <CACT4Y+bBtCbEk2tg60gn5bgfBjARQFBgtqkQg8VnLLg5JwyL5g@mail.gmail.com>
 <CANpmjNM+Tcn40MsfFKvKxNTtev-TXDsosN+z9ATL8hVJdK1yug@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNM+Tcn40MsfFKvKxNTtev-TXDsosN+z9ATL8hVJdK1yug@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=RCpCMYm2;
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

On Mon, Jun 15, 2020 at 09:53:06AM +0200, Marco Elver wrote:
> 
> Disabling KCOV for smp_processor_id now moves the crash elsewhere. In
> the case of KASAN into its 'memcpy' wrapper, called after
> __this_cpu_read in fixup_bad_iret. This is making me suspicious,
> because it shouldn't be called from the noinstr functions.

With your .config, objtool complains about exactly that though:

vmlinux.o: warning: objtool: fixup_bad_iret()+0x8e: call to memcpy() leaves .noinstr.text section

The utterly gruesome thing below 'cures' that.

> For KCSAN the crash still happens in check_preemption_disabled, in the
> inlined native_save_fl function (apparently on its 'pushf'). If I turn
> fixup_bad_iret's __this_cpu_read into a raw_cpu_read (to bypass
> check_preemption_disabled), no more crash with KCSAN.

vmlinux.o: warning: objtool: debug_smp_processor_id()+0x0: call to __sanitizer_cov_trace_pc() leaves .noinstr.text section
vmlinux.o: warning: objtool: check_preemption_disabled()+0x1f: call to __sanitizer_cov_trace_pc() leaves .noinstr.text section
vmlinux.o: warning: objtool: __this_cpu_preempt_check()+0x4: call to __sanitizer_cov_trace_pc() leaves .noinstr.text section

That could be either of those I suppose, did you have the NOP patches
on? Let me try... those seem to placate objtool at least.

I do see a fair amount of __kasan_check*() crud though:

vmlinux.o: warning: objtool: rcu_nmi_exit()+0x44: call to __kasan_check_read() leaves .noinstr.text section
vmlinux.o: warning: objtool: rcu_dynticks_eqs_enter()+0x1c: call to __kasan_check_write() leaves .noinstr.text section
vmlinux.o: warning: objtool: rcu_nmi_enter()+0x46: call to __kasan_check_read() leaves .noinstr.text section
vmlinux.o: warning: objtool: rcu_dynticks_eqs_exit()+0x21: call to __kasan_check_write() leaves .noinstr.text section
vmlinux.o: warning: objtool: __rcu_is_watching()+0x1c: call to __kasan_check_read() leaves .noinstr.text section
vmlinux.o: warning: objtool: debug_locks_off()+0x1b: call to __kasan_check_write() leaves .noinstr.text section

That wasn't supported to happen with the __no_sanitize patches on (which
I didn't forget). Aah, I think we've lost a bunch of patches.. /me goes
rummage.

This:

  https://lkml.kernel.org/r/20200603114051.896465666@infradead.org

that cures the rcu part of that.

Let me go look at your KCSAN thing now...

---
diff --git a/arch/x86/kernel/traps.c b/arch/x86/kernel/traps.c
index af75109485c26..031a21fb5a741 100644
--- a/arch/x86/kernel/traps.c
+++ b/arch/x86/kernel/traps.c
@@ -675,6 +675,14 @@ struct bad_iret_stack {
 	struct pt_regs regs;
 };
 
+void __always_inline __badcpy(void *dst, void *src, int nr)
+{
+	unsigned long *d = dst, *s = src;
+	nr /= sizeof(unsigned long);
+	while (nr--)
+		*(d++) = *(s++);
+}
+
 asmlinkage __visible noinstr
 struct bad_iret_stack *fixup_bad_iret(struct bad_iret_stack *s)
 {
@@ -690,13 +698,13 @@ struct bad_iret_stack *fixup_bad_iret(struct bad_iret_stack *s)
 		(struct bad_iret_stack *)__this_cpu_read(cpu_tss_rw.x86_tss.sp0) - 1;
 
 	/* Copy the IRET target to the temporary storage. */
-	memcpy(&tmp.regs.ip, (void *)s->regs.sp, 5*8);
+	__badcpy(&tmp.regs.ip, (void *)s->regs.sp, 5*8);
 
 	/* Copy the remainder of the stack from the current stack. */
-	memcpy(&tmp, s, offsetof(struct bad_iret_stack, regs.ip));
+	__badcpy(&tmp, s, offsetof(struct bad_iret_stack, regs.ip));
 
 	/* Update the entry stack */
-	memcpy(new_stack, &tmp, sizeof(tmp));
+	__badcpy(new_stack, &tmp, sizeof(tmp));
 
 	BUG_ON(!user_mode(&new_stack->regs));
 	return new_stack;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200615142949.GT2531%40hirez.programming.kicks-ass.net.
