Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNHAY32QKGQESK7UMFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6921C6012
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 20:28:05 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id a12sf3139304pfc.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 11:28:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588703284; cv=pass;
        d=google.com; s=arc-20160816;
        b=nYqg/AxXwieVU52WrY1Tgcabtc1kMTtk5rky8330f3zjMtQ9FsbxFsyigz3royjI33
         OsmNIvcnfRSHjESbWJ2IBG4LXZgcijTlQV8K99jr7aXD/dePjSI1YiJ4THZ3I6pvi8fb
         gRTP3ZrXnflk6GDocJ+AvY9w1Mx16yXT93xXdWjT2UXcAi+r6LDVm5/5Q0lQcJfctS4p
         sYJ9+f+XaHnv9tDfQuypYccl00tvDTHRYQbdmqFfqA+C6w7bQfcKvJxodNURd2ioXlXw
         mWJsyZLt3dwe5Ov+RpD/PaTuoKR3gSm5Dzwo7lIW3xxYoIgZz8d/zayQpCaj2GsRxiVy
         hm5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=c1OXjQCpEC3vZKOq5i6SxTrpzu1Cq3+cmTzCtFDL15I=;
        b=v2I7xBmVsJso/eFrPjaGfpnxqRVRVrZAhNnkNCNsoUWZheN+L0EQObYOJjzY3Udmqk
         QRQ1OVVgHk2fgCAiE7BWuXPSCLeji7jZUMyYoBiXyGgAc2crbgXNSdvfsNfYQIhTQ76B
         Ux8Rn4NyvkVnoeQ2opYj3SSIqGj2m4FbnVSdwXlvigqLMClAraXZEWfKBWX5RGpT8gty
         hgBdJkH/pNPquACFbJrhpg1EHDyVm2gh8F8sIa3jakoTOwJa0j8HvXpyJQliHg3F7/la
         FxQ09VDtZttKaPPXSjEIQbvfpNSIv17DvEaoaWujuGmxIhRg0sWjqQC3NSQQOvT/Gsme
         Du+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OYaFBo53;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c1OXjQCpEC3vZKOq5i6SxTrpzu1Cq3+cmTzCtFDL15I=;
        b=eoHUDS9gXALMsUtFtKsuGa5G53jAYGg5/zNtz+3vytqh8HReeJmwwvuzuZqmM4CHt0
         ngiGnTui7ks8DhrkKJyM2NrEEvG+yX1eEtT2dtGrIDBkWmp8Po5E6buwI7D/6AelIeMw
         Rn1dKedz09JXIDE/AyvkwNnUAG9WXhI76ptLUQsaQ+lBSsicE1/ZlglldbF9sPyWRf9L
         EpqdIwEGIXoAsi2N20CUxYngOIR6byw6xueX/l/IRH1l1QeKmJgYt38GyAd2q2HzceCo
         XZwBusA/qhD8SVIavR14PzIwsMNy4SBBbha64K117JOH6QTcASrJHQJgdUIoz2nNj1s8
         Q7dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c1OXjQCpEC3vZKOq5i6SxTrpzu1Cq3+cmTzCtFDL15I=;
        b=DF9N+XoFkjYQFSyi12tZeeGWTMj4SQMFSe0qjPLbTMTGg4hmRJG/n1TZCf5TCC99oc
         i3e+VdHx5axtK8PxCdZf+dksolCs8oJUz8nm+4lSpO2V7JX9oXNhXpTWibrqaOiAgyGN
         Nrx+wOlj1aD2Ap9rfiD7/flYud2Japb79vQh0lEPkzki4eXjO4diBBoaHiorzOn9jW3z
         3GkZ0OOdnd/dPHVpokl5UZ4venRC/t1M28gX55RXzzX1AsymRK6CbYUxD3Q1S8V2nuty
         uZzJbagQz1uEBgJNdj+uiIVK1hsPVtyR8wqoDZ2oDzleP4RcVRH/RembDFQI/vXDLLBz
         rMRA==
X-Gm-Message-State: AGi0PualC2vqtR4+BcODfrJODSVpPOqGG6BadYxOO2Pmp38BpVvmDb4S
	z9EeIhg8ELTB2q0O8kiP+Xc=
X-Google-Smtp-Source: APiQypJylMqCkINpBhLU1PvityvzkGbBCZbjlWCCj82oBr/IMd4ejlgPUSuG9JDNfd8+oaEQP2mRuQ==
X-Received: by 2002:a62:76c1:: with SMTP id r184mr4431043pfc.155.1588703284562;
        Tue, 05 May 2020 11:28:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a03:: with SMTP id v3ls256951plp.11.gmail; Tue, 05
 May 2020 11:28:04 -0700 (PDT)
X-Received: by 2002:a17:90a:7046:: with SMTP id f64mr2401297pjk.205.1588703284127;
        Tue, 05 May 2020 11:28:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588703284; cv=none;
        d=google.com; s=arc-20160816;
        b=sEcC80/uYMkh3cei6WvMffvqZa09iv91Tq+dCyJa9FoKCDxoMbAZeC2Y+mW5h53anU
         uDgZRCo3YmcPR89PX60ogVc2oyk26nH63XpGUK6VunKVfwlzR7nPZrs4UCnM6b3z6sTT
         1yU7SztO0J2c8cqTn/+oa1NCRgxSxJIqZ6wFEN/eY4+bFAW4hVBOS2I0tcJ1b/5zy48k
         H/yoBKVoDW7Q09LhNaqyZdIBt0ZFyq2SrIvPHyaI2S5Y7tuG8kJLRk9ng/6JHAztJfWS
         3eG9U1fxeHSzVOkbPVkGeTr9cBNXtRtCfpePnWLuV8miis2IvXYJpWrFfqj0CY/2WT/H
         cMjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=o+I2ZEpd9rMStG/cH8oLpZvbJxOrhOe7FbrS6Jy7iRQ=;
        b=E/lPbUPp+qCvFVfHR7J6m/9mfIVcBfp3rAhOip6euUmOQWiMKasA9TI0MR9dirxGYd
         VvnQnh3ki6YkMyuKD0FrZwJlpiD6R/eWGuyWLS/9KKlllWowTj+RgE0kpjWVYBa/FO5m
         btk2sCNOTUxpnFoi47xPuXBBjhynRbC18svHE5L6dbJwtD/nGJRuthX3JlXK23ycJQiY
         Br8yhfEsv3a7+b8Spx9OBCvrxpl4E0i2ztc1tkG+2PF8tbxYNlZNpDx/QJ+t2jnqLlrB
         y3tBqOhAz9fFms76ssKrVinqfoF7P+Gii/oov4wr5g+9FwvOdmvNwG6l/+qKVC4G4aG8
         Yu9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OYaFBo53;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id a3si148254pfr.4.2020.05.05.11.28.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 11:28:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id mq3so1585442pjb.1
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 11:28:04 -0700 (PDT)
X-Received: by 2002:a17:90a:6488:: with SMTP id h8mr4710233pjj.51.1588703283513;
 Tue, 05 May 2020 11:28:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200501202849.647891881@infradead.org> <20200501202944.593400184@infradead.org>
 <1238787e-d97d-f09b-d76d-2df2dc273f4b@rasmusvillemoes.dk> <20200503125813.GL3762@hirez.programming.kicks-ass.net>
 <a53369f3-665a-af0e-efad-09ae456af847@rasmusvillemoes.dk> <20200504201445.GQ3762@hirez.programming.kicks-ass.net>
 <20200505093625.GE5298@hirez.programming.kicks-ass.net> <CAKwvOd=cP8UCX0+5pZ3AqzvOM8LKzLJJ_heDhrghqJdOnHoGMg@mail.gmail.com>
In-Reply-To: <CAKwvOd=cP8UCX0+5pZ3AqzvOM8LKzLJJ_heDhrghqJdOnHoGMg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 11:27:53 -0700
Message-ID: <CAKwvOdkL+2Gvn2mkZ8cdHN=1F5cHQHii57ocD0RFeLJxEt=TUQ@mail.gmail.com>
Subject: Re: [PATCH v4 14/18] static_call: Add static_cond_call()
To: Peter Zijlstra <peterz@infradead.org>
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, bristot@redhat.com, 
	Jason Baron <jbaron@akamai.com>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, Nadav Amit <namit@vmware.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Paolo Bonzini <pbonzini@redhat.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	"H.J. Lu" <hjl.tools@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OYaFBo53;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Tue, May 5, 2020 at 11:13 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, May 5, 2020 at 2:36 AM Peter Zijlstra <peterz@infradead.org> wrote:
> >
> >
> > HJ, Nick,
> >
> > Any chance any of you can see a way to make your respective compilers
> > not emit utter junk for this?
> >
> > On Mon, May 04, 2020 at 10:14:45PM +0200, Peter Zijlstra wrote:
> >
> > > https://godbolt.org/z/SDRG2q
>
> Woah, a godbolt link! Now we're speaking the same language.  What were
> you expecting? Us to remove the conditional check that a volatile read
> wasn't NULL? (Not using READ_ONCE, produces the direct tail call I
> suspect you're looking for, but am unsure if that's what you meant,
> and understand that's not a solution).  I am simultaneously impressed
> and disgusted by this btw, cool stuff.
>
> i.e.
> void *func = &name.func; \
> rather than
> void *func = READ_ONCE(name.func); \

Changing
void *func = READ_ONCE(name.func); \
to
void *func = &READ_ONCE(name.func); \
produces the tail call.  Not sure if that's relevant/what you were
looking for/even correct (haven't thought to hard about the
implications of that change; juggling other stuff ATM)

> (I'm surprised that `&name.func;` and `name.func;` also produce
> different results).
>
> > >
> > > ---
> > > #include <stddef.h>
> > >
> > >
> > > #define READ_ONCE(var)                (*((volatile typeof(var) *)&(var)))
> > > #define WRITE_ONCE(var, val)  (*((volatile typeof(var) *)&(var)) = (val))
> > >
> > > struct static_call_key {
> > >       void *func;
> > > };
> > >
> > > #define DECLARE_STATIC_CALL(name, func)       \
> > >       extern struct static_call_key name; \
> > >       extern typeof(func) __SCT__##name;
> > >
> > > #define DEFINE_STATIC_COND_CALL(name, _func) \
> > >       DECLARE_STATIC_CALL(name, _func) \
> > >       struct static_call_key name = { \
> > >               .func = NULL, \
> > >       }
> > >
> > > static void __static_call_nop(void)
> > > {
> > > }
> > >
> > > #define __static_cond_call(name) \
> > > ({ \
> > >       void *func = READ_ONCE(name.func); \
> > >       if (!func) \
> > >               func = &__static_call_nop; \
> > >       (typeof(__SCT__##name)*)func; \
> > > })
> > >
> > > #define static_cond_call(name) (void)__static_cond_call(name)
> > >
> > > static void inline static_call_update(struct static_call_key *call, void *func)
> > > {
> > >       WRITE_ONCE(call->func, func);
> > > }
> > >
> > > volatile int _x;
> > >
> > > void bar(int x)
> > > {
> > >       _x = x;
> > > }
> > >
> > > DEFINE_STATIC_COND_CALL(foo, bar);
> > >
> > > void ponies(int x)
> > > {
> > >       static_cond_call(foo)(x);
> > > }
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkL%2B2Gvn2mkZ8cdHN%3D1F5cHQHii57ocD0RFeLJxEt%3DTUQ%40mail.gmail.com.
