Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3HN2TZQKGQETXY6S3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C35718DA71
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 22:34:38 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id t19sf5606937pfq.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 14:34:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584740077; cv=pass;
        d=google.com; s=arc-20160816;
        b=kf7jEYvF2LBtcyC3Gwt0uFRLpJOe5RgvsaTPv+uDvE92LuYKu5WdZ1+y8/2R2QtYqd
         MOnE1xHG6GTJ+XLSzNxOvjPrfawVIMXKu2NIBfQph97YuvJPCj82RrT4W5EStFmBr/tX
         dDdlsT8rnqI/+7yq+crtU3eVoatEJXu6MVBHmDYSYB1J+MuQctsrlwnyC8YN7WMDGILr
         OsRoQ/hBHNhEj0onLdGfXO56OxY8kVKNz6uHsBBV7GCOoNJlYa9L27477ZRFAYyNn+dA
         PUcNZcxTBDXYEuHuT/vCpusX1bbGD8vTmvUJbC+DpilEMXbNxrCx5XqNav4LskJU7ycn
         pqew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8ICPEv+Z2fIW7vE0VAZ2Akz/IvGShx/+uW3TcpixCzU=;
        b=grXfv6fVh7DW3HW5LIT93srBB+ascn8A2gCc0Yv0M5dO0d+nthOpppFikl858xKPN1
         q3zie9Ct8zHq/nGYqnbRXdKUIbyNTUGa4Yljia40NJaTUsjfpAzKweq8+35rgwDzs+VL
         Dnx+wD9XtdDyUvqS7uYlJ1XQBhfpDwA57Qb4Zcftkr+HDii1DDCpZLw9ZsCMVtoyDCHI
         00DwA7tHyOLyqGY3LhQzK3il4iwjawBdvWTv6OKahHRswP26BY7j2KNVysVa2uWVpcsA
         fTiP/SLT+J6CET7twVaTOQXskFkEhLidBgAexIhXkcFAwFAI59T6O68kyhByxjV3A4lp
         aRWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YsNkZupP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8ICPEv+Z2fIW7vE0VAZ2Akz/IvGShx/+uW3TcpixCzU=;
        b=TccfilFR67LYbV1j2YUyIbG44/vgEvidoFepppNj7KeeZGYqkSSGcp5/T2uoA1Q3wG
         uxhjM1Lezd7/G5qUWkVoyEHAhYQIxR5uD3E2zgAobEJZCcP+fTlevx2pAfJQp5rfHCow
         cVWc0Vmeizejxa+rUbWjvz9n+RU7hIqLCQ8yfpbcHrpjP8QDzDnzHnOqr7ZZk7kcJOoP
         LoSjkXKuz3XScSTRQx0SzO0ZjF4ih6caZvwIddVI3Ht4WSwPMihhN7Jc+X6nPb6XVpCu
         0TarKt9LzYUtqJG2mGrlZJzb9at22odrEBdajhG36aCr9KVJgrChHJol/Sz1Jisq8T3F
         DUKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8ICPEv+Z2fIW7vE0VAZ2Akz/IvGShx/+uW3TcpixCzU=;
        b=bZmFcf8xGI6ckX/JNgOgpci545D5/9y1FkgOKoiCK884j+otrRHrQFR8bN86Np78ZH
         1h4OnA3VPZCAeOcBu/6jymIqF4mBbItkXf1jJdq6E0+4u3qizS0RhdkSP3TtGU55adl6
         RKO1llrFcgkRq+bGSOpzObbj/wbh2gLMMNXGVrv2SfGBuKCssUfDNwZS5kpjNvMCy3L4
         lSHVJDDZeIhWHSjruOQyU+ee6GDY0UOoVIUWve641K0uBm8ltgNwzDtZtsMnmvS0m7gH
         kgqOVa2JEtsesXm5Qqbo0YVcb6y5ttXwYEAAVT+VRNhfOC8r45kFo15nTgh5XQroUQyR
         yVdw==
X-Gm-Message-State: ANhLgQ2+VkdDk6ZhLVBsqs//3R2YmlODPc6MCxSLjIesVLbY/9lCHZUI
	ivHf6rJQT9pJNdQC0Z38gdg=
X-Google-Smtp-Source: ADFU+vuZQg4wvMboDhPdVR0kU+EKtjW/BDglvxpzDDtnpTS39zAfwJ3oYQBzNxpBVtjr1KMmCZ2QIA==
X-Received: by 2002:a63:5401:: with SMTP id i1mr10290329pgb.181.1584740076884;
        Fri, 20 Mar 2020 14:34:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1c88:: with SMTP id c130ls3808609pfc.7.gmail; Fri, 20
 Mar 2020 14:34:36 -0700 (PDT)
X-Received: by 2002:aa7:991c:: with SMTP id z28mr11876387pff.294.1584740076395;
        Fri, 20 Mar 2020 14:34:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584740076; cv=none;
        d=google.com; s=arc-20160816;
        b=W/GrcSZNrDE31LzxI8TArth/KG8EgUUORu0YbFfbzIUEchjLS5REPu84jSpoKSZMVf
         IUluClcBDcb3uqDZLMNHdT0jnqQnr7m1g0xgq51HUZ0wzC8UNCFEiS1goAbvfSiE8lDJ
         jgSPF//qSgIoojyqLZEVO+eFfnbhbvers/AekHZNx6n0ycPoYEqRxrcyjyz+rBjfPYul
         2rC9iLxe0xew3KFM/A0ip7jkVJ63ahBDm7LtrBkFal6iqrhbxfa5rhZmPgQw0QZc3ghT
         hB2c3Ys74zSktlphvmez1fCOFMQLUTdfYx7E7SoL73e1EYTdtYo7XVjXwDEoRdr7ce+5
         PO/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=m4byeT9utw4Yh/7U93k3Xs15i8NIS7iBpM5yP1kU1CE=;
        b=l2nInJDAJZPMcbkl65wkJbSpVPyBwUoAEPnlTUjs86hfvKxfKJOWbbYkdhLdXxfZmi
         siMIM8P9L0GbEWGY0CaJYRdjA5nPt5VYnwY7cN54jh/4FDDKUc7J2C31DczY9aEKxvdR
         MC3LX2guKjz9bzXtLcLcuMNf76D38J73cL7IM0ciWBQDSlvdszUfYcoQwhbCrfVo8A61
         cshDPEGzhbRfFGYEZ4HplshRbv4fF6JRPoPVKP1nWTrbcinNosyvlH0IAIvy2FhJv5Wp
         c/nSSmgfGVxjZw78hcYMTLijKv3AwRr/zhxhUomeJWsl5vtRhq0ivOtUDiResTvRwRSg
         gnbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YsNkZupP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id 185si42586pgh.3.2020.03.20.14.34.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 14:34:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id mj6so3060251pjb.5
        for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 14:34:36 -0700 (PDT)
X-Received: by 2002:a17:90b:8f:: with SMTP id bb15mr10736247pjb.186.1584740075541;
 Fri, 20 Mar 2020 14:34:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=mOmU1S1g5oDDy3rLjnp543Fu6PSVAJyvxhyQDvpOM+A@mail.gmail.com>
 <20200320101455.GB20696@hirez.programming.kicks-ass.net>
In-Reply-To: <20200320101455.GB20696@hirez.programming.kicks-ass.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Mar 2020 14:34:24 -0700
Message-ID: <CAKwvOd=edOBdTL=FcmXYuN8crykrEoJbfdVy4CmKL7ETj_TpnQ@mail.gmail.com>
Subject: Re: call to memset() with UACCESS enabled
To: Peter Zijlstra <peterz@infradead.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YsNkZupP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Fri, Mar 20, 2020 at 3:15 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Thu, Mar 19, 2020 at 01:37:04PM -0700, Nick Desaulniers wrote:
> > Hello Josh and Peter,
> > I'm looking to track down what I think is our last objtool warning:
> > https://github.com/ClangBuiltLinux/linux/issues/876
> >
> > Can you tell me a little bit more about what uaccess is?  I wonder if
> > an assignment is getting turned into a memset outside of a "critical
> > section" (for some meaning of "critical section" that I don't yet
> > understand), which is what objtool is validating against?
>
> This is x86_64 SMAP EFLAGS.AC checking. When SMAP is enabled, kernel
> code (CPL0) can only access memory with _PAGE_USER set when ELFAGS.AC is
> set. Otherwise it goes *bang*.

Ah, thanks for that context, I was able to find
https://lwn.net/Articles/517475/ (though I think the Spectre
mitigations make some of the points outdated) and
https://en.wikipedia.org/wiki/Supervisor_Mode_Access_Prevention which
talks more about SMAP.  So it sounds like there's a "critical section"
in terms of STAC and CLAC "guards" where access to userspace should
only occur within (IIUC).

> Now, the x86_64 context switch code does not save/restore EFLAGS,
> because performance.

Oh? Wouldn't tasks need those to branch correctly? If your task is
context switched out after a comparison, but before a conditional
jump, and your flags weren't restored...I guess orthogonal to our
issue, but how does that work?  (It sounds like you're alluding below
that exceptions may help here?)

> To avoid EFLAGS.AC leaking out and destroying the benefit of this
> protection, the rule is that any code that has AC set must not CALL/RET.
> Because if it were to accidentally stumble upon a call to schedule(),
> our AC flag would leak, and worse, it might be cleared by the time we
> get back and our valid access goes *splat*.

The attack vector here being userspace might manipulate a pointer in
kernel memory range, then a call or return might use that "poison"
pointer to do something bad.  In this case, maybe the destination of
the memset is modified to scribble arbitrary memory in the kernel,
which would be bad.  Is that correct?

>
>  [ exceptions, and thereby also preemption, do save/restore EFLAGS per
>    the architecture ]
>
> Function tracing in particular is suspect, it will hook into pretty much
> everything and _will_ call preempt_enable(), which is a call to
> schedule().
>
> Now, objtool has a minimal whitelist of functions that are allowed,
> these are mostly compiler instrumentation calls which are unavoidable.

Looks like this is uaccess_safe_builtin in tools/objtool/check.c.

> All the kernel implementations of them are notrace and they will
> save/restore EFLAGS themselves before calling out again.
>
> See for example KASAN's check_memory_region() (and by extention
> __asan_{load,store}*_noabort()). mm/kasan/Makefile strips
> CC_FLAGS_FTRACE and kasan_report() will
> user_access_save()/user_access_restore().
>
> Am I right in thinking that this memset() call is inserted by some
> 'clever' LLVM optimizer pass trying to optimize writing a few 0s ?

3 of the 4 warnings I observe are from defconfig + CONFIG_KASAN.
Maybe that can help us limit whatever changes based on CONFIG_KASAN?

In the case of __setup_rt_frame() in arch/x86/kernel/signal.c (for
CONFIG_X86_64), if I comment out:
save_altstack_ex(&frame->uc.uc_stack, regs->sp);
the warning disappears.  Within the save_altstack_ex(), the call to
sas_ss_reset() seems to be triggering this (removing it silences the
warning, too). sas_ss_reset() assigns two consecutive `long` members
of struct taskstruct to 0, which seems to be combined into a memset,
seemingly only when CONFIG_KASAN is set.

Backing up, put_user_try/put_user_catch seem to be the STAC/CLAC
guards, and they contain a barrier().  Playing with this in godbolt,
it looks like a slight difference between -fsanitize=kernel-address
between GCC and Clang: https://godbolt.org/z/-HhGWV

For a 2 long store of consecutive memory locations with the same value:
GCC: emits 2 calls to __asan_store8_noabort which is whitelisted in
uaccess_safe_builtin.
Clang: emits a call to memset

I don't know enough about the KASAN runtime to say if that's a sort of
optimization, or a bug.  I would assume that we should always be
checking writes through pointers before writing through them, so I'm
leaning more towards bug.

It's tricky to see where in the disassembly the stac/clac would go,
since I think they use alternatives.  I guess they would fit in the
sequences of  3-nop sleds I see.  (We really need a kernel
disassembler that understands our custom sections, objdump can only go
so far).  So it's not clear to me whether the memset is outside one of
those "critical sections" or simply the memset was unexpected.

So for:
arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x341:
call to memset() with UACCESS enabled
I see:

 d85:   90                      nop
 d86:   90                      nop
 d87:   90                      nop
...
 e01:   e8 00 00 00 00          callq  e06 <__setup_rt_frame+0x346>
                        e02: R_X86_64_PLT32     memset-0x4
...
 e49:   90                      nop
 e4a:   90                      nop
 e4b:   90                      nop

I don't see any jumps in __setup_rt_frame that would jump control flow
after the 3-nop sled but before the call to memset (pipe the
disassembly into `less`, then filter via `&__setup_rt_frame`).

If I try this hack, we don't combine the double assignment into a
memcpy and objtool warning disappears, though I'm not sure that this
is the correct use of `__asan_store8_noabort`:

```
diff --git a/include/linux/sched/signal.h b/include/linux/sched/signal.h
index 65ea429daaa2..2630b4c2e7cf 100644
--- a/include/linux/sched/signal.h
+++ b/include/linux/sched/signal.h
@@ -551,9 +551,12 @@ static inline int sas_ss_flags(unsigned long sp)
        return on_sig_stack(sp) ? SS_ONSTACK : 0;
 }

+void __asan_store8_noabort(unsigned long addr);
 static inline void sas_ss_reset(struct task_struct *p)
 {
+       __asan_store8_noabort((unsigned long)&p->sas_ss_sp);
        p->sas_ss_sp = 0;
+       __asan_store8_noabort((unsigned long)&p->sas_ss_size);
        p->sas_ss_size = 0;
        p->sas_ss_flags = SS_DISABLE;
```

So maybe this is a bug in Clang; -fsanitize=kernel-address should not
combine assignments of adjacent `longs` into `memset`;
`__asan_store8_noabort` is expected.

Does that seem like a correct analysis?

Thanks for taking the time to explain all of this to me, it means a
lot to me that you take the time to do so.  Sorry I'm more familiar
with some of this stuff, but I feel like I'm learning more over time.

>
> Looking at the implementation in arch/x86/lib/memset_64.S, we could
> arguably whitelist it.

But then we'd miss the potential use of memset as a gadget outside of
stac/clac guards?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DedOBdTL%3DFcmXYuN8crykrEoJbfdVy4CmKL7ETj_TpnQ%40mail.gmail.com.
