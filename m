Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBWGS4TZQKGQEGE67BDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5FF19003A
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 22:25:45 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id 12sf11879719pgv.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 14:25:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584998744; cv=pass;
        d=google.com; s=arc-20160816;
        b=ELE12t+0mJJ3a1Jp28buVmJ3O/obZh9B1wWaTRHe6lAt4Llj6E2xBasmxrbQASiJwh
         lFplLEebrwO/bt4083yLoWISN2JAOD1wDW/xYUPTzeFClFydK2NDsVcl78N8240heOtZ
         5zlgDmbNaOOrSSFp+4J4Fgy7+CL0uXr2+mOtyQuvhLkLsZT2U4j/ScUcjpQwb8s6HWX9
         zoUmx9AwfZ07Q/PJho/1RXZg/mhPTGoJ5yxJqYzBrKINmpXUzNgVdsV8YiIJSwQ5pVnb
         k06bTyVtAhuakwZr6KaGrHpnbKzy9ZBO6fVgAdxtIXIYYWp+r3s4RRdlB+1lm5kbjv+r
         9J6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=2K3I5ZPar7q7W1YcO3DqxVZa9lXmY8l7TjTE3er0Ges=;
        b=bfhvD85vzgCX8S5IEzRPXFdBWBNxzukSzH2Fx9DPrWy4PCiYOpvqqVuBUBjRQyZWeb
         Hazn0g7CsnX8HFjDMTx/QCfLdCFh3xl3ux0nBySvtdYgH4ONfwCWcOa4FkgVWi26AMno
         +aANe43yk0LFpkmXPULd4iNIEMmmc4xWEUmbUsZyL5z9cNLLplICbea/Smt66d3WPW6z
         aAQLVm/KVI9Tyr9s+Cao+Grx53lW0ZLJekbtJiHJTPdOgeVVOYElYYDVcHPFNicb7OLE
         +kuM+JKf70SbT0HWX4u0AbbLqZmvx3TSMfnde0bwz51o+tRhDXzytlwE+fitJxx1E59D
         Bvgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=DXQvhOIk;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2K3I5ZPar7q7W1YcO3DqxVZa9lXmY8l7TjTE3er0Ges=;
        b=ZhwJhUZmu3lLAyuDvA1+28xo9Lh7at3IRNL+TjmJ3XVgl3X3wykZFD9LZgemhgbuCX
         3AxCJHIBUmY8oZuIyNCj695r6i2c45AlQtBOwxU2pNIE0S7ha1M0P7iCJbLxScCZdqZZ
         DSJcEFcDjphWXWY0Ni6J3/pjdjXZcoUtIjMhzm2BC/eoq08jD+4RiTSUCw04VjwGJdLr
         9deKfgCeRk6eSOUqrNsaSys9yLouB+7EBtfPpQiMXK+CDVWHUfq5k5ZI6RfhiVjKQH3b
         6excvppqDk5XbnSJjbUMWFzjGjh3sCGLBADe8euzQM9EE8jY326g+RT4RMiRKUpLorlE
         dqqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2K3I5ZPar7q7W1YcO3DqxVZa9lXmY8l7TjTE3er0Ges=;
        b=fI0bzA+9dx33TYsCkriCW+eRMztI0405cILHG4VHoiJJ5uwND43AgKiBIFg7y0m4v3
         B7dXKltlLm8gKMCRssZ7xWXHn2i+ya7j2PfhqcUbo4jEfL9uJ3rXVyMs9hsd7fgTcALO
         AXhLipAzRlcCbTItD7yK438JLMSzi/earGS/6O6uXnd4FE8xF9dm+0SklWTmpN17Moiv
         DBMy5vPm/6+yWLonhkFCdSpHumw0+kdb4BHDteHhtD8+m+VkbMtcTmdG1FzbiHiLGLbq
         DA1z2lqMwp0Bj1zDhpeA/cBMlmNlusBztBaa+U59geRlWnVbnNzifDlDUEm06LeePo+J
         42Tg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0/dxf0yGCw2oGntAVOoC2kOaGsZ82iSrci3jl9Rr6t5er796n0
	vg9nF6VXGQRk3AmAHuE92pY=
X-Google-Smtp-Source: ADFU+vvh1QOl/pvEQheje/3x3rSwTi/xVp4B6FdbqLHxHsApsTQYfaQ7XmSnj+CJkUlIA5C1mN4+YQ==
X-Received: by 2002:a17:902:aa01:: with SMTP id be1mr22717985plb.227.1584998744378;
        Mon, 23 Mar 2020 14:25:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b58e:: with SMTP id a14ls7371140pls.5.gmail; Mon, 23
 Mar 2020 14:25:43 -0700 (PDT)
X-Received: by 2002:a17:902:b60f:: with SMTP id b15mr9531901pls.14.1584998743810;
        Mon, 23 Mar 2020 14:25:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584998743; cv=none;
        d=google.com; s=arc-20160816;
        b=wMm37n+kHP0+s4yRgK2DjLDPmicJr5JN4mqtvqXLAXq5Do7Eo2UN7HDJTrq6VO8uaB
         b8H/HXvCqxin+dMOaWaD5BvXUZFe764+3D4FnBlisMkaAjvYBw8aIGbUgfsMZSD5tpCS
         6vOTUEuVvWeCAUsqr45ydTJmvoT0zKUNRrpVQ7PDfF2yW6R1PJzK0bOV1AG3NQQmOtg9
         wU7wFYS1WbM69GruPv7wHsLh5lVcH8XKLjaOEDBetRpn4bbyBqlOjLaSs4IW8pYPl9K0
         wScBS8j9NKmeevRB/ozFuX4Zbzj4yaOL/Cb7o6JhNEu3dW9swCLwvzrrMpqpyk69gtuh
         pTWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dv4KzVoQjkkGuKIDr/WWqEpRfY6YahHjPyrmmcTBFa8=;
        b=nrH8cbujRk4JBhyRKc5+IBgVNdr0Yyk0lMc/Q7GDr+iTwjYPcWU3qKULAm8utWqxbK
         3L+KEWkfNkLZFrdR0/Q1LdMxZx+LRvVzGAO4IcFSN80toK++H91p+5TADa4dS+bgm55X
         L42W9TkIIQRaEH1av26xhvfdLv7QKrzdr4DIXyFWTXNBso76q6ELeeGWilnWPLBUmN3a
         2NnTxWt4WGyumxaDjT0qz9XvZNPuVZMU0VEzuULB67qap0lhnJ+Gz3NblZzNbhGVzOph
         aidQ0OrVwMlxrWsORGBybL7Z38hr1PQCDrylPsIWLdpGQSM+yKN7MJVJNNYYVvN4NNDu
         4Uig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=DXQvhOIk;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id 188si1016479pfb.1.2020.03.23.14.25.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 14:25:43 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGUZp-0003LU-Kk; Mon, 23 Mar 2020 21:25:41 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id A431B983505; Mon, 23 Mar 2020 22:25:38 +0100 (CET)
Date: Mon, 23 Mar 2020 22:25:38 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: call to memset() with UACCESS enabled
Message-ID: <20200323212538.GN2452@worktop.programming.kicks-ass.net>
References: <CAKwvOd=mOmU1S1g5oDDy3rLjnp543Fu6PSVAJyvxhyQDvpOM+A@mail.gmail.com>
 <20200320101455.GB20696@hirez.programming.kicks-ass.net>
 <CAKwvOd=edOBdTL=FcmXYuN8crykrEoJbfdVy4CmKL7ETj_TpnQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=edOBdTL=FcmXYuN8crykrEoJbfdVy4CmKL7ETj_TpnQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=DXQvhOIk;
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

On Fri, Mar 20, 2020 at 02:34:24PM -0700, Nick Desaulniers wrote:
> On Fri, Mar 20, 2020 at 3:15 AM Peter Zijlstra <peterz@infradead.org> wrote:
> >
> > On Thu, Mar 19, 2020 at 01:37:04PM -0700, Nick Desaulniers wrote:
> > > Hello Josh and Peter,
> > > I'm looking to track down what I think is our last objtool warning:
> > > https://github.com/ClangBuiltLinux/linux/issues/876
> > >
> > > Can you tell me a little bit more about what uaccess is?  I wonder if
> > > an assignment is getting turned into a memset outside of a "critical
> > > section" (for some meaning of "critical section" that I don't yet
> > > understand), which is what objtool is validating against?
> >
> > This is x86_64 SMAP EFLAGS.AC checking. When SMAP is enabled, kernel
> > code (CPL0) can only access memory with _PAGE_USER set when ELFAGS.AC is
> > set. Otherwise it goes *bang*.
> 
> Ah, thanks for that context, I was able to find
> https://lwn.net/Articles/517475/ (though I think the Spectre
> mitigations make some of the points outdated) and
> https://en.wikipedia.org/wiki/Supervisor_Mode_Access_Prevention which
> talks more about SMAP.  So it sounds like there's a "critical section"
> in terms of STAC and CLAC "guards" where access to userspace should
> only occur within (IIUC).

Correct.

> > Now, the x86_64 context switch code does not save/restore EFLAGS,
> > because performance.
> 
> Oh? Wouldn't tasks need those to branch correctly? If your task is
> context switched out after a comparison, but before a conditional
> jump, and your flags weren't restored...I guess orthogonal to our
> issue, but how does that work?  (It sounds like you're alluding below
> that exceptions may help here?)

C syncronization points clobber CC state, so any external call to
schedule() will not care about this. Any instrucion level preemption
will be driven by exceptions, which, as you note, I called out for
saving flags.

> > To avoid EFLAGS.AC leaking out and destroying the benefit of this
> > protection, the rule is that any code that has AC set must not CALL/RET.
> > Because if it were to accidentally stumble upon a call to schedule(),
> > our AC flag would leak, and worse, it might be cleared by the time we
> > get back and our valid access goes *splat*.
> 
> The attack vector here being userspace might manipulate a pointer in
> kernel memory range, then a call or return might use that "poison"
> pointer to do something bad.  In this case, maybe the destination of
> the memset is modified to scribble arbitrary memory in the kernel,
> which would be bad.  Is that correct?

Any actual thing SMAP protects against, when combined with being tricked
into the scheduler at just the right point.

> >
> >  [ exceptions, and thereby also preemption, do save/restore EFLAGS per
> >    the architecture ]
> >
> > Function tracing in particular is suspect, it will hook into pretty much
> > everything and _will_ call preempt_enable(), which is a call to
> > schedule().
> >
> > Now, objtool has a minimal whitelist of functions that are allowed,
> > these are mostly compiler instrumentation calls which are unavoidable.
> 
> Looks like this is uaccess_safe_builtin in tools/objtool/check.c.

Ack.

> > All the kernel implementations of them are notrace and they will
> > save/restore EFLAGS themselves before calling out again.
> >
> > See for example KASAN's check_memory_region() (and by extention
> > __asan_{load,store}*_noabort()). mm/kasan/Makefile strips
> > CC_FLAGS_FTRACE and kasan_report() will
> > user_access_save()/user_access_restore().
> >
> > Am I right in thinking that this memset() call is inserted by some
> > 'clever' LLVM optimizer pass trying to optimize writing a few 0s ?
> 
> 3 of the 4 warnings I observe are from defconfig + CONFIG_KASAN.
> Maybe that can help us limit whatever changes based on CONFIG_KASAN?
> 
> In the case of __setup_rt_frame() in arch/x86/kernel/signal.c (for
> CONFIG_X86_64), if I comment out:
> save_altstack_ex(&frame->uc.uc_stack, regs->sp);
> the warning disappears.  Within the save_altstack_ex(), the call to
> sas_ss_reset() seems to be triggering this (removing it silences the
> warning, too). sas_ss_reset() assigns two consecutive `long` members
> of struct taskstruct to 0, which seems to be combined into a memset,
> seemingly only when CONFIG_KASAN is set.

Right, that's the sort of thing I was thinking happened; the conditions
seem 'funny'

> Backing up, put_user_try/put_user_catch seem to be the STAC/CLAC
> guards, and they contain a barrier().  Playing with this in godbolt,
> it looks like a slight difference between -fsanitize=kernel-address
> between GCC and Clang: https://godbolt.org/z/-HhGWV
> 
> For a 2 long store of consecutive memory locations with the same value:
> GCC: emits 2 calls to __asan_store8_noabort which is whitelisted in
> uaccess_safe_builtin.
> Clang: emits a call to memset
> 
> I don't know enough about the KASAN runtime to say if that's a sort of
> optimization, or a bug.  I would assume that we should always be
> checking writes through pointers before writing through them, so I'm
> leaning more towards bug.

I tihnk it's OK, see how mm/kasan/common.c provide an override for
memset().

> It's tricky to see where in the disassembly the stac/clac would go,
> since I think they use alternatives.  I guess they would fit in the
> sequences of  3-nop sleds I see. 

Correct.

> (We really need a kernel
> disassembler that understands our custom sections, objdump can only go
> so far). 

You're not the first to float that... objtool has all the code required
to parse and understand our object files, it just doesn't have any
of the print logic.

> So it's not clear to me whether the memset is outside one of
> those "critical sections" or simply the memset was unexpected.

I'll go with unexpected... but it jogged some memory and see what I dug
up:

  https://lkml.kernel.org/r/CAHk-=wgKDSSoV5WvO018hoPPSHO=TQ3wwnfOtCpaENceBe0Z6Q@mail.gmail.com

> So for:
> arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x341:
> call to memset() with UACCESS enabled
> I see:
> 
>  d85:   90                      nop
>  d86:   90                      nop
>  d87:   90                      nop
> ...
>  e01:   e8 00 00 00 00          callq  e06 <__setup_rt_frame+0x346>
>                         e02: R_X86_64_PLT32     memset-0x4
> ...
>  e49:   90                      nop
>  e4a:   90                      nop
>  e4b:   90                      nop
> 
> I don't see any jumps in __setup_rt_frame that would jump control flow
> after the 3-nop sled but before the call to memset (pipe the
> disassembly into `less`, then filter via `&__setup_rt_frame`).
> 
> If I try this hack, we don't combine the double assignment into a
> memcpy and objtool warning disappears, though I'm not sure that this
> is the correct use of `__asan_store8_noabort`:
> 
> ```
> diff --git a/include/linux/sched/signal.h b/include/linux/sched/signal.h
> index 65ea429daaa2..2630b4c2e7cf 100644
> --- a/include/linux/sched/signal.h
> +++ b/include/linux/sched/signal.h
> @@ -551,9 +551,12 @@ static inline int sas_ss_flags(unsigned long sp)
>         return on_sig_stack(sp) ? SS_ONSTACK : 0;
>  }
> 
> +void __asan_store8_noabort(unsigned long addr);
>  static inline void sas_ss_reset(struct task_struct *p)
>  {
> +       __asan_store8_noabort((unsigned long)&p->sas_ss_sp);
>         p->sas_ss_sp = 0;
> +       __asan_store8_noabort((unsigned long)&p->sas_ss_size);
>         p->sas_ss_size = 0;
>         p->sas_ss_flags = SS_DISABLE;
> ```
> 
> So maybe this is a bug in Clang; -fsanitize=kernel-address should not
> combine assignments of adjacent `longs` into `memset`;
> `__asan_store8_noabort` is expected.

That's pretty gross...

> Does that seem like a correct analysis?

Yeah, I think you nailed it.

> Thanks for taking the time to explain all of this to me, it means a
> lot to me that you take the time to do so.  Sorry I'm more familiar
> with some of this stuff, but I feel like I'm learning more over time.

You could return the favour by doing a patch to that Documentation file
you thought was missing useful text :-)

> >
> > Looking at the implementation in arch/x86/lib/memset_64.S, we could
> > arguably whitelist it.
> 
> But then we'd miss the potential use of memset as a gadget outside of
> stac/clac guards?

I think memset, as implemented in memset_64.S is safe. It's a leaf
function (no fentry or any other CALL out).

And the memset() override in kasan/common.c calls check_memory_region()
(which is a whitelisted function) and then __memset(), which is the
above .S thing again.

Something like so,... perhaps with a comment, ought to probably cure
your woes.

--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -519,6 +519,7 @@ static const char *uaccess_safe_builtin[
 	/* misc */
 	"csum_partial_copy_generic",
 	"__memcpy_mcsafe",
+	"__memset",
 	"mcsafe_handle_tail",
 	"ftrace_likely_update", /* CONFIG_TRACE_BRANCH_PROFILING */
 	NULL

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323212538.GN2452%40worktop.programming.kicks-ass.net.
