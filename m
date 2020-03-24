Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUFN4XZQKGQEKNHWN7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A05C1902F9
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:39:46 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id 30sf5678653uaz.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 17:39:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585010385; cv=pass;
        d=google.com; s=arc-20160816;
        b=MBh6fhhui2oPnnMkjOXzeVY42Bb1pQsoZIuPCluXV2CCADjCImzbKBftBNIR0mXzPp
         xtmzLDkTFR88SVvn7i1c/EfG6pho8Auo0jOHWEkkGJC7mGJj1EKkxqPclEdq9CVhzE1O
         lMfXoXzcv7NN0jny4KZrRADlfGjr182QRvlStacx/bbuu4O1QgaUlwdlmHCHpBEJsz3C
         WMscxQ8PQeP11JOzZ2oBpplSanx8Ln23NnKWqzWRJGv3CBSWaKPc90oQxhk5r3Xq6q+r
         CbaAjAwRrdWxPLmWjUzzcKiNCoQqKSe0kLVv+V9KVS0Ht3zXOzwS7NQ70KFlomQHRUC2
         oYcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZLLh3VDc3xvNyOZZ4pG8HxnmzGGG3mrHZICyWrLQc1k=;
        b=rh8RaCaGGsqUXCe/PqwEQCKFNTYgFzKuFVFCOezO1Gk3V1FNYa8BOnZufvKwmrTvox
         YtRoyy+LMjiK+BEFY0pj2O1nVic06Iw95q3rCAV+mc8R6jq6NwBoBEYTS2AV8u8rD84L
         XVaDGjF72b5x3crBHyXNjluzDaZepTZFMhBqpHuVDuHRIAX7FhA/hnErJ/Oa0o4PPJcZ
         r9rPrFSfZ9uPz5Gl4RYc2KE7yqWPoI4rT8HIvUkc6de57i4RTbvnGSLU9/vNEC1ZBcGp
         x5QEs3AM8NmICFBT16ALfYSVu5Jn61XcJJkRWN/LVaboRedg8KRolo/h5X9FKSSNNnoY
         9A0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IicuV4aZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZLLh3VDc3xvNyOZZ4pG8HxnmzGGG3mrHZICyWrLQc1k=;
        b=fpGMlI0O9MyjMOo8if5rz9CN5TN6/l+KuACew9tdt26pzLX5WZigE7onD9uxyd+G+d
         gIyfXP6HxkoGR1cfKt9b2sNcLlBobKsHh6jGZDff/UNftvYmrtbgvxEDzfazzeA8mPUh
         kWHSGhIdP6FMR4/5LvVa/w0x/gt/NMiI7zmGwjhIepM/S9z+0VRuQWimC+R9VmDUJMZO
         DBIkK0AMrsQcorQ+8Eci+PXMC0Bb/8/fhLZkpKptSbKO+r/OPXGCa7HWDMfNVcCrUSjT
         4Qslq3jBkJnAWgWLpU73zMma4BVxX6f6d2XjskWCzMNH81hN2CC5zX/XntgpsGzRr3+M
         3Niw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZLLh3VDc3xvNyOZZ4pG8HxnmzGGG3mrHZICyWrLQc1k=;
        b=KWR0ITMRVnLNixnQ85NbehLTpAyVSY9wdgIynxfccPsjtFfJKmjLzwpyg87C/i3OxW
         KWbpbk27f/ygc7JbgbBAr3vtYmB4K0TRNICgol467a1C5vWTjih4z0Kp0RGN2diBHmYj
         4VBiTb9Ac5INobjU1oUYThDCpB8w3nTrOk747Qq01wD5FsmSwr8P0DTmeRSrN2KSnBBM
         jAXRIHrAOhR/VNqQ3Lv55T8oih8gqF+9KXhkfrnLXdSRwu6YL9ggxkdJ4YlXn/h+U363
         jDC+V32r+LPp9hrUcDVQ75eE0vak4u9G80tByZrCqJAgJ5+qgzPbfCDiq53uM/Co8SK8
         PSzw==
X-Gm-Message-State: ANhLgQ0xAZIkhWZeflcqAgLhiXCzuNpYZ0XpjAtsa8tgDvRfbWrUWkLd
	G/dQiLNpRg0xQVoXPLTtquI=
X-Google-Smtp-Source: ADFU+vt3f1ygALE7uRgKAurXgyDNkoiIukiM92pOPmr8crUo8XvwXhiufuzJ1k5o8YVkc/3tuXhoyQ==
X-Received: by 2002:a67:1701:: with SMTP id 1mr16603090vsx.19.1585010384996;
        Mon, 23 Mar 2020 17:39:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2096:: with SMTP id g144ls842350vkg.7.gmail; Mon, 23 Mar
 2020 17:39:44 -0700 (PDT)
X-Received: by 2002:a1f:934d:: with SMTP id v74mr17433884vkd.3.1585010384492;
        Mon, 23 Mar 2020 17:39:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585010384; cv=none;
        d=google.com; s=arc-20160816;
        b=wKYfY5SYNTIj4fHKH/n6+cDWUrqpUxTQ9px90B9glT8AfiNGU7vQIHfgyWiyiNRtYZ
         1F8I5pLVKZemNvSBc2mt5p1FW/BiUgDRKiwMqIuMjetS7w83dxL3Fxop125zzT6Sf/zS
         /ypwCnyYLfuB1xRJv/3o+ANg5k6jUxNx1BQFYxHJbj9jn2JzsmhPIlFWtWROXux49v2d
         qUp8Jw0yoj87CqDMMRIAlBBTBWxUWGAW+6o7A/Jy7b0avvLlq2pZ+Hj132jRawmnkX+E
         ryfnTrrCdw4En713IjIKACERGLHOlW9WITajCGnattrz/bcmhxzr8iCD1xzWnbYO3OZ6
         UpJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EwaFHUkowidopA2gOElFYSmphBIPml11VZ22rD3FYgQ=;
        b=vUMDvSIadIFar9iakebXsNMs/jMfmKAhIqctOR+q1JhEGwbYyzcVt6Le0bgFeHQDlT
         9HwTTDyXYabMBIofASLPig93AoBq3nP1HJuXCi6eKyh4noKKU+ko7DXdm1H/yhESv4ku
         xkAVk2VcvTlv1lkwkVnnVJQwKOG8vUvInfH9ZKLZgUDjNpsqpjpPgSVwBg7E9V4fqcgO
         id3/7KcjKc8tznhe02XgMZ1CgXJXNRzSeTSt2hYMOYUycjMYJC9NP/z+wj4gdnifgj1N
         OEkicZcL57poE39PUSf4qQm9P1RkB33JKJxKQAxHI1RJdlzfWSjdrTljlqqHzwjgESbp
         D+Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IicuV4aZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id 205si965671vkw.2.2020.03.23.17.39.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 17:39:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id x1so2642807plm.4
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 17:39:44 -0700 (PDT)
X-Received: by 2002:a17:90b:8d2:: with SMTP id ds18mr1982457pjb.186.1585010383021;
 Mon, 23 Mar 2020 17:39:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=mOmU1S1g5oDDy3rLjnp543Fu6PSVAJyvxhyQDvpOM+A@mail.gmail.com>
 <20200320101455.GB20696@hirez.programming.kicks-ass.net> <CAKwvOd=edOBdTL=FcmXYuN8crykrEoJbfdVy4CmKL7ETj_TpnQ@mail.gmail.com>
 <20200323212538.GN2452@worktop.programming.kicks-ass.net>
In-Reply-To: <20200323212538.GN2452@worktop.programming.kicks-ass.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 17:39:30 -0700
Message-ID: <CAKwvOdm1fPpdwoEprcvp=yKWWWP752eXj7zYnJJZ8TzYsx+M3Q@mail.gmail.com>
Subject: Re: call to memset() with UACCESS enabled
To: Peter Zijlstra <peterz@infradead.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IicuV4aZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Mar 23, 2020 at 2:25 PM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Fri, Mar 20, 2020 at 02:34:24PM -0700, Nick Desaulniers wrote:
> > On Fri, Mar 20, 2020 at 3:15 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > >
> > > On Thu, Mar 19, 2020 at 01:37:04PM -0700, Nick Desaulniers wrote:
> > > > Hello Josh and Peter,
> > > > I'm looking to track down what I think is our last objtool warning:
> > > > https://github.com/ClangBuiltLinux/linux/issues/876
> > > >
> > > > Can you tell me a little bit more about what uaccess is?  I wonder if
> > > > an assignment is getting turned into a memset outside of a "critical
> > > > section" (for some meaning of "critical section" that I don't yet
> > > > understand), which is what objtool is validating against?
> > >
> > > This is x86_64 SMAP EFLAGS.AC checking. When SMAP is enabled, kernel
> > > code (CPL0) can only access memory with _PAGE_USER set when ELFAGS.AC is
> > > set. Otherwise it goes *bang*.
> >
> > Ah, thanks for that context, I was able to find
> > https://lwn.net/Articles/517475/ (though I think the Spectre
> > mitigations make some of the points outdated) and
> > https://en.wikipedia.org/wiki/Supervisor_Mode_Access_Prevention which
> > talks more about SMAP.  So it sounds like there's a "critical section"
> > in terms of STAC and CLAC "guards" where access to userspace should
> > only occur within (IIUC).
>
> > > Now, the x86_64 context switch code does not save/restore EFLAGS,
> > > because performance.
> > > To avoid EFLAGS.AC leaking out and destroying the benefit of this
> > > protection, the rule is that any code that has AC set must not CALL/RET.
> > > Because if it were to accidentally stumble upon a call to schedule(),
> > > our AC flag would leak, and worse, it might be cleared by the time we
> > > get back and our valid access goes *splat*.
> >
> > The attack vector here being userspace might manipulate a pointer in
> > kernel memory range, then a call or return might use that "poison"
> > pointer to do something bad.  In this case, maybe the destination of
> > the memset is modified to scribble arbitrary memory in the kernel,
> > which would be bad.  Is that correct?
>
> Any actual thing SMAP protects against, when combined with being tricked
> into the scheduler at just the right point.
>
> > >
> > >  [ exceptions, and thereby also preemption, do save/restore EFLAGS per
> > >    the architecture ]
> > >
> > > Function tracing in particular is suspect, it will hook into pretty much
> > > everything and _will_ call preempt_enable(), which is a call to
> > > schedule().
> > >
> > > Now, objtool has a minimal whitelist of functions that are allowed,
> > > these are mostly compiler instrumentation calls which are unavoidable.
> >
> > Looks like this is uaccess_safe_builtin in tools/objtool/check.c.
> > > All the kernel implementations of them are notrace and they will
> > > save/restore EFLAGS themselves before calling out again.
> > >
> > > See for example KASAN's check_memory_region() (and by extention
> > > __asan_{load,store}*_noabort()). mm/kasan/Makefile strips
> > > CC_FLAGS_FTRACE and kasan_report() will
> > > user_access_save()/user_access_restore().
> > >
> > > Am I right in thinking that this memset() call is inserted by some
> > > 'clever' LLVM optimizer pass trying to optimize writing a few 0s ?
> >
> > 3 of the 4 warnings I observe are from defconfig + CONFIG_KASAN.
> > Maybe that can help us limit whatever changes based on CONFIG_KASAN?
> >
> > In the case of __setup_rt_frame() in arch/x86/kernel/signal.c (for
> > CONFIG_X86_64), if I comment out:
> > save_altstack_ex(&frame->uc.uc_stack, regs->sp);
> > the warning disappears.  Within the save_altstack_ex(), the call to
> > sas_ss_reset() seems to be triggering this (removing it silences the
> > warning, too). sas_ss_reset() assigns two consecutive `long` members
> > of struct taskstruct to 0, which seems to be combined into a memset,
> > seemingly only when CONFIG_KASAN is set.
>
> Right, that's the sort of thing I was thinking happened; the conditions
> seem 'funny'
>
> > Backing up, put_user_try/put_user_catch seem to be the STAC/CLAC
> > guards, and they contain a barrier().  Playing with this in godbolt,
> > it looks like a slight difference between -fsanitize=kernel-address
> > between GCC and Clang: https://godbolt.org/z/-HhGWV
> >
> > For a 2 long store of consecutive memory locations with the same value:
> > GCC: emits 2 calls to __asan_store8_noabort which is whitelisted in
> > uaccess_safe_builtin.
> > Clang: emits a call to memset
> >
> > I don't know enough about the KASAN runtime to say if that's a sort of
> > optimization, or a bug.  I would assume that we should always be
> > checking writes through pointers before writing through them, so I'm
> > leaning more towards bug.
>
> I tihnk it's OK, see how mm/kasan/common.c provide an override for
> memset().
>
> > It's tricky to see where in the disassembly the stac/clac would go,
> > since I think they use alternatives.  I guess they would fit in the
> > sequences of  3-nop sleds I see.
>
> Correct.
>
> > (We really need a kernel
> > disassembler that understands our custom sections, objdump can only go
> > so far).
>
> You're not the first to float that... objtool has all the code required
> to parse and understand our object files, it just doesn't have any
> of the print logic.
>
> > So it's not clear to me whether the memset is outside one of
> > those "critical sections" or simply the memset was unexpected.
>
> I'll go with unexpected... but it jogged some memory and see what I dug
> up:
>
>   https://lkml.kernel.org/r/CAHk-=wgKDSSoV5WvO018hoPPSHO=TQ3wwnfOtCpaENceBe0Z6Q@mail.gmail.com

Hmm...Linus and HPA seemed kind of against __memset, maybe they were
just looking to understand under what conditions these calls were
observed?

>
> > So for:
> > arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x341:
> > call to memset() with UACCESS enabled
> > I see:
> >
> >  d85:   90                      nop
> >  d86:   90                      nop
> >  d87:   90                      nop
> > ...
> >  e01:   e8 00 00 00 00          callq  e06 <__setup_rt_frame+0x346>
> >                         e02: R_X86_64_PLT32     memset-0x4
> > ...
> >  e49:   90                      nop
> >  e4a:   90                      nop
> >  e4b:   90                      nop
> >
> > I don't see any jumps in __setup_rt_frame that would jump control flow
> > after the 3-nop sled but before the call to memset (pipe the
> > disassembly into `less`, then filter via `&__setup_rt_frame`).
> >
> > If I try this hack, we don't combine the double assignment into a
> > memcpy and objtool warning disappears, though I'm not sure that this
> > is the correct use of `__asan_store8_noabort`:
> >
> > ```
> > diff --git a/include/linux/sched/signal.h b/include/linux/sched/signal.h
> > index 65ea429daaa2..2630b4c2e7cf 100644
> > --- a/include/linux/sched/signal.h
> > +++ b/include/linux/sched/signal.h
> > @@ -551,9 +551,12 @@ static inline int sas_ss_flags(unsigned long sp)
> >         return on_sig_stack(sp) ? SS_ONSTACK : 0;
> >  }
> >
> > +void __asan_store8_noabort(unsigned long addr);
> >  static inline void sas_ss_reset(struct task_struct *p)
> >  {
> > +       __asan_store8_noabort((unsigned long)&p->sas_ss_sp);
> >         p->sas_ss_sp = 0;
> > +       __asan_store8_noabort((unsigned long)&p->sas_ss_size);
> >         p->sas_ss_size = 0;
> >         p->sas_ss_flags = SS_DISABLE;
> > ```
> >
> > So maybe this is a bug in Clang; -fsanitize=kernel-address should not
> > combine assignments of adjacent `longs` into `memset`;
> > `__asan_store8_noabort` is expected.
>
> That's pretty gross...

Right, wasn't meant to be a fix, just to show that breaking up the two
assignments (that were being lowered to memset) fixed the warning.

> > Does that seem like a correct analysis?
>
> Yeah, I think you nailed it.
>
> > Thanks for taking the time to explain all of this to me, it means a
> > lot to me that you take the time to do so.  Sorry I'm more familiar
> > with some of this stuff, but I feel like I'm learning more over time.
>
> You could return the favour by doing a patch to that Documentation file
> you thought was missing useful text :-)

Sent, please help me refine my understanding.  I added a note about
ARM, which may or may not be relevant (I saw some objtool patches for
arm64 support, so I thought I'd add the note).  This reminded me to
send some more documentation out today that I've been meaning to.  I
have a rough draft of a blog post on how `asm goto` works in the Linux
kernel; maybe you can help me review it one day once it's not so
rough, and I've finished more of the diagrams I have planned?

>
> > >
> > > Looking at the implementation in arch/x86/lib/memset_64.S, we could
> > > arguably whitelist it.
> >
> > But then we'd miss the potential use of memset as a gadget outside of
> > stac/clac guards?
>
> I think memset, as implemented in memset_64.S is safe. It's a leaf.
> function (no fentry or any other CALL out).
>
> And the memset() override in kasan/common.c calls check_memory_region()
> (which is a whitelisted function) and then __memset(), which is the
> above .S thing again.

The compiler is inserting calls to memset, not __memset, so
whitelisting calls to __memset doesn't fix the warning.  `memset`
does, but do we want to be whitelisting that regardless of
CONFIG_KASAN?  Linus and HPA were hesitant:
https://lore.kernel.org/lkml/5127C62D-E97D-40B0-85B3-16F30B7ED514@zytor.com/
for __memset. Should I respond to that thread with this case of
CONFIG_KASAN and Clang?

>
> Something like so,... perhaps with a comment, ought to probably cure
> your woes.
>
> --- a/tools/objtool/check.c
> +++ b/tools/objtool/check.c
> @@ -519,6 +519,7 @@ static const char *uaccess_safe_builtin[
>         /* misc */
>         "csum_partial_copy_generic",
>         "__memcpy_mcsafe",
> +       "__memset",
>         "mcsafe_handle_tail",
>         "ftrace_likely_update", /* CONFIG_TRACE_BRANCH_PROFILING */
>         NULL
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm1fPpdwoEprcvp%3DyKWWWP752eXj7zYnJJZ8TzYsx%2BM3Q%40mail.gmail.com.
