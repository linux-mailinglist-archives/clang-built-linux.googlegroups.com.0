Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBOF6273QKGQENQDYYXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id C28D720B0BE
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 13:42:49 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id d10sf35616pfn.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 04:42:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593171768; cv=pass;
        d=google.com; s=arc-20160816;
        b=FRHCcTxSTclwXk08/YPX9FwXUhHibR4qRmrT6xl/zJ34PsGUWRBbaqbs3BckZaaeQJ
         sLZ06esVszZq2ZOPYfO6T5c3McKvJHlMRuJp+9FSv9YJc/vreuta+2G8xZMFo1SuDNeI
         cVkrHV66/iPVfsRneo8YgH+uQaAqNQCkfrSMK75xm/fgfZ4MNbWQ6v99//eAL03QKgeI
         ZjmSJTnAyhwdHCrIJL071Js3GE2iOAzX3NiJHaruNC9AkuGR6iAkPoaydA6bG+CE23Lt
         uiqXEwpO0pyhDso4RLy1kG9R9jkfeil9HSzJjHrNwFaGeLBkh7ooH27WCwMoB/HoxgVm
         GWog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2gNv1Q8vtfmy/W1VGJ7zxnOJPpoTm8h25c8XBvB+wkc=;
        b=QkyuoEiAcXwZOPBVGliQPziJTlkHkVVkJId7SeBSVFvPuTD6ghv21KUz964P6XwPDY
         /4auAhYgUUbLZYbEiIfwgSmmH6EuTGvFXjqH2lyfddPnsrlN1SqpUGFZRgY4+AYV6cwc
         4ZCEoLEcNs3V/qPJyzFnk6/rwgWtBF9nyAr6BoaEItAuc3914ck6526oWMhyEA2Epzqk
         rZLSNq9qEYV4lRcXcKROkfjpTYa+fyeiZT7DrJJkzJni8pHWtWu+AvChZpMZX11N/X1e
         jHrwNdmKYQWkRiqL8uNKNa+JymcbiyibBAUiIV4IxgEYEYPoDZQPh6yOlNtJQP1XwB1v
         4iUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=HW7pMPoh;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2gNv1Q8vtfmy/W1VGJ7zxnOJPpoTm8h25c8XBvB+wkc=;
        b=QoQoWNND1XByKJSIozMipb4SvmivW464UXeHw9sNRmSP9n9pNcUtbQEsh01KS5MJwz
         Cxyv8ecY7r/A3vzSxyp16DkfUNv0ZFr4Uw2dwa3kJ0HE32NvbwUBMGU2EL3zVsPm2kU0
         DlxSZbGbuuDamJ3GWS8LGoSv9YafvOzigoSgai9NO3VGaqyb4NgQfPVLdS7uEcd/WFAh
         dkhbNL3qdLU06AVZ32jJJfM2iekHY0avSpxpNCMlwC1VrI+yXM9/YPe+e08hNXVzjgAO
         Us4xAplLE3jqaso3S+rwUAviZb3CR9L1wyay88YlxDZE0gCHAfELn8sii/VuOYCisyXP
         tOIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2gNv1Q8vtfmy/W1VGJ7zxnOJPpoTm8h25c8XBvB+wkc=;
        b=FA1K/p8u3zc30bfZG4nTxv+lKPEaTlZmTdO8dCTV19Sfd41JtQXkdCi87PC/wWm9PT
         YsjxyfvrDWWTOwmsnB1rXw8A/Nv4PfnJMUD4O8M8HyedllAhaqwfa+S8HcILlEkyc5Xu
         wp/fy7uiCRfNdLyZXTSket9zr1MCJDhTqVTuIif0RHFLSdQDhAhBfeBAd0ImLZipqgcI
         tn8TxG3tLOz98iW/Joumx0Oyuq9Pj/mAsiD1e6nvikpzVvMuWP/nRRQ7EWKGhlWc7jQ/
         fUlyzwCNwGqYbQX8MvChW/Yf35i7gDmH8CEbsiqZcaHgOcDCjWRk3+LC1d6iEraM+wnI
         YCow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EcsiQdPgBPsc3Qr8DPCef31BB82qjOo1hKH4pb3evrXBVQeDy
	nFBRGULSGDwQWZEhdEzib0M=
X-Google-Smtp-Source: ABdhPJwMei22wVk+HvNN92EevtIdZE0cRuwQvA0UXThUTQTuQpOMymNxKt0S8sADZHVJtiQy1I9LMw==
X-Received: by 2002:a63:6c49:: with SMTP id h70mr2379669pgc.150.1593171768359;
        Fri, 26 Jun 2020 04:42:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6299:: with SMTP id f25ls2499958pgv.11.gmail; Fri, 26
 Jun 2020 04:42:47 -0700 (PDT)
X-Received: by 2002:a63:fe42:: with SMTP id x2mr2393397pgj.207.1593171767910;
        Fri, 26 Jun 2020 04:42:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593171767; cv=none;
        d=google.com; s=arc-20160816;
        b=RoZiMatN66eVbfQnfsDnTW5Dzwcu75iSyayIyCJMwOfDlFHur7x6XW6GY3AF6ojojm
         JzMpbB5qFt+OzJWL1UXqElAy1kWf2grvpdUtv/hRKdPU6of37g9mw4L6a+TXjw8R8nSz
         E189NPMQX6/3dV0h3MLEF/XTVGD58P2Q9eP3qaVNLt2JrD1Z1V+SoMm7mRX7FKJFLgTc
         7TtpRJKLIO75r+u6da2Pv53vmgRBQ6P6mqpkza4UPVLZhysQXo15Qi5cD7gP5YdEM88C
         tKTcmo6zjjt3VEJU44TF/pKjIH7/VIvIrHpfgKoAsemKKoU+vTArAR4dXn5TeJKVf2MY
         T5DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dY6UukHlcZ+e82YPYVTQRIm6jOfXAELNJfA0ddnH3+0=;
        b=cCtHAh51pIy65SC/JLhMK+ro2O8J4wqwOAoFQ0u2b1hawYb+wVEu+bvJgFs18zx3g9
         +aAKg/RcpDM8tomDqyxr3zhxwlB+uAb95rPTW6REBZiy7zeUxpKg0Se0cZ5z5J7pWFxC
         f5A8EWH3YNu2zN/JHjXqk22txuYcmVRbXphXRcmXm3eWRmSHRkkvwmYk+o0jI+hkhWYD
         j/Ok5qNgsPYePugTCwVubGoGeuTbyCN3LTPLQIZ134y9aMQ2Sz9g2MNuEojYuvCEXbho
         mD9kYIOTvS5lWzX1SgAnFPsrORJcvI1csDHVTZYeNDJ1oHibvWMC4QtUI4WM7ws2e0xY
         0img==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=HW7pMPoh;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id l137si1431351pfd.3.2020.06.26.04.42.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2020 04:42:47 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jomkW-0001Sj-F5; Fri, 26 Jun 2020 11:42:28 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id BFB7D301DFC;
	Fri, 26 Jun 2020 13:42:26 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id B3EF429CC71EB; Fri, 26 Jun 2020 13:42:26 +0200 (CEST)
Date: Fri, 26 Jun 2020 13:42:26 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Steven Rostedt <rostedt@goodmis.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org, Josh Poimboeuf <jpoimboe@redhat.com>,
	mhelsley@vmware.com
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
Message-ID: <20200626114226.GH4817@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-5-samitolvanen@google.com>
 <20200624212737.GV4817@hirez.programming.kicks-ass.net>
 <20200624214530.GA120457@google.com>
 <20200625074530.GW4817@hirez.programming.kicks-ass.net>
 <20200625161503.GB173089@google.com>
 <20200625200235.GQ4781@hirez.programming.kicks-ass.net>
 <20200625224042.GA169781@google.com>
 <20200626112931.GF4817@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200626112931.GF4817@hirez.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=HW7pMPoh;
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

On Fri, Jun 26, 2020 at 01:29:31PM +0200, Peter Zijlstra wrote:
> On Thu, Jun 25, 2020 at 03:40:42PM -0700, Sami Tolvanen wrote:

> > Anyway, since objtool is run before recordmcount, I just left this unchanged
> > for testing and ignored the recordmcount warnings about __mcount_loc already
> > existing. Something is a bit off still though, I see this at boot:
> > 
> >   ------------[ ftrace bug ]------------
> >   ftrace failed to modify
> >   [<ffffffff81000660>] __tracepoint_iter_initcall_level+0x0/0x40
> >    actual:   0f:1f:44:00:00
> >   Initializing ftrace call sites
> >   ftrace record flags: 0
> >    (0)
> >    expected tramp: ffffffff81056500
> >   ------------[ cut here ]------------
> > 
> > Otherwise, this looks pretty good.
> 
> Ha! it is trying to convert the "CALL __fentry__" into a NOP and not
> finding the CALL -- because objtool already made it a NOP...
> 
> Weird, I thought recordmcount would also write NOPs, it certainly has
> code for that. I suppose we can use CC_USING_NOP_MCOUNT to avoid those,
> but I'd rather Steve explain this before I wreck things further.

Something like so would ignore whatever text is there and rewrite it
with ideal_nop.

---
diff --git a/arch/x86/kernel/ftrace.c b/arch/x86/kernel/ftrace.c
index c84d28e90a58..98a6a93d7615 100644
--- a/arch/x86/kernel/ftrace.c
+++ b/arch/x86/kernel/ftrace.c
@@ -109,9 +109,11 @@ static int __ref
 ftrace_modify_code_direct(unsigned long ip, const char *old_code,
 			  const char *new_code)
 {
-	int ret = ftrace_verify_code(ip, old_code);
-	if (ret)
-		return ret;
+	if (old_code) {
+		int ret = ftrace_verify_code(ip, old_code);
+		if (ret)
+			return ret;
+	}
 
 	/* replace the text with the new text */
 	if (ftrace_poke_late)
@@ -124,9 +126,8 @@ ftrace_modify_code_direct(unsigned long ip, const char *old_code,
 int ftrace_make_nop(struct module *mod, struct dyn_ftrace *rec, unsigned long addr)
 {
 	unsigned long ip = rec->ip;
-	const char *new, *old;
+	const char *new;
 
-	old = ftrace_call_replace(ip, addr);
 	new = ftrace_nop_replace();
 
 	/*
@@ -138,7 +139,7 @@ int ftrace_make_nop(struct module *mod, struct dyn_ftrace *rec, unsigned long ad
 	 * just modify the code directly.
 	 */
 	if (addr == MCOUNT_ADDR)
-		return ftrace_modify_code_direct(ip, old, new);
+		return ftrace_modify_code_direct(ip, NULL, new);
 
 	/*
 	 * x86 overrides ftrace_replace_code -- this function will never be used

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200626114226.GH4817%40hirez.programming.kicks-ass.net.
