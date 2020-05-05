Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBEPKY32QKGQE6UT6HIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 543A71C606B
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 20:48:50 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id o25sf965843lfg.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 11:48:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588704530; cv=pass;
        d=google.com; s=arc-20160816;
        b=vBBVFdEbW9JPJ+MhS3ZUOtXhjwpB/GzQXqEX9OFrfKB6BL5sFK8mbgvwhXbur9IXfC
         xRI4H5EnY5o9J1DTNh9coM/7uv4ErUe55K7zBhkf7wHbjaOOP9uWJPxhDUKPrEc7j8gK
         CE5AqR9Vg/d28F4ecfxE8HGYdJdK+T5//Tk4zZWdPiItqpUNQioX9WwvbcvMkn6i5SsN
         iZL741dkTnvqBeD/QXjEWkYlmWndps0TPz3XU7dRn7+Hdf1OYChXseBdCN5rPRZ1cwk+
         m0bmf9TuLxByk/3rC15ZK1gTRf+YOUszwTak3fd7CJpa7QHNnBds1FXS9ZliC/ZCIRPt
         LrBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=49+8yJYsLJbtTzTUMvI8z0vLMiM4zrL/ZbYXTsYTBvw=;
        b=Fw8vtAB1saW5G57K0Ar4bobPTpP900slB6vx14bHM/1jFAa1PE06IlHdApUXmpuf7X
         tNYkJWohaWy9hiOodxv+srni/DDyGVLKlRjEJtU1AcLTqefFaWp7xO1fmbc/bPM2BotQ
         i4Ph1XDCxfKRCOHYpl0WJD18FZjlsFx7HRAivkCbuvpCzZ3+vXM/ctL/VkFIgwHKt5Jy
         M5I0suGd44EDlerTstM7EPgPHKE64OithE32gtLfpxolWV/D56x2jcV4Q0ukbtDVoH8R
         d6b9rssoMAKEubLob4/yy/7J7Mje6QuviOLGreJqIIbv3W/mwTz6anMKDAIvpRUIkziC
         IzlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=OrJoG2wV;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=49+8yJYsLJbtTzTUMvI8z0vLMiM4zrL/ZbYXTsYTBvw=;
        b=k8BOJEDWXPBnxQ3P4Cx3tDmh3FUMitH8evLvNU+tGjML65AwEvAGj1Or+nGjU3anIO
         6PnDNbTFcK5Bg+AsCVVDxf3yJDFVqIgcrhE84o8/dg+tpq6eYpJUVMDjcFgw9a02vQsO
         hLtPWjcuObwz160OU2quEcOq7U1uwHVqnWQ9AKdQOGBseNsuhY3tU2ylRl0Bwp6tYnFK
         MqvObkgkLS9tO3iJ1G+b0YfUqm3yHyQdFw1GsKQGtLu+9bSkPg3I/HFBYGlepXA4TDyJ
         sAYn7oARiRhEHAs4nbb7pf6VzVpFA+F4/WvaBNbytGOEdiAajgdKqAQBISlqgDXxjsGs
         R0gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=49+8yJYsLJbtTzTUMvI8z0vLMiM4zrL/ZbYXTsYTBvw=;
        b=eVpBQyZnhzVH0WHbkvIWiFNMZweruXC2VE3pGt8KYnvgHvkKeaER2nCCXKWkCREluT
         MW7X7PUG/xfi8ZA0HMAHuHvRkB1qGol4pJ3fSm3DgDDeBSGf1trLqlKqL/eRClx9lOkP
         SfwgH5I5oBO/15vsIG4Y/FZDQtZBJCgwXt1FEjYatFARNH7Plsy1q9F6W0fvYDBP5AoM
         i9ZouQjz1uY6JwTH/vPBB/eqLV8gvwhaf3QsBAgsrbbNa13HGB5Uo5Gto/eE12YlzQPZ
         VRH0DHQx31jzHAfg+jH8EVdl0Awzb07G0shQa07PLRXoqYzdVIG8SeH0Yk6A62W9DHsl
         2hKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaWuy8IhVXfGZ04XyTz8BVVUrC3gW8KIv61/aRhbI3+qFFOluiP
	Vt4o1473vhKi04jIFypvgCg=
X-Google-Smtp-Source: APiQypIqdun+9hEunJ1u+2gTnuC2nxBoZhuWJ1Chz9n6djjeKA42S0NIGsx5wqnirnOKqmHnzOigwg==
X-Received: by 2002:a2e:9e43:: with SMTP id g3mr2767109ljk.4.1588704529889;
        Tue, 05 May 2020 11:48:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9ad6:: with SMTP id p22ls728182ljj.9.gmail; Tue, 05 May
 2020 11:48:49 -0700 (PDT)
X-Received: by 2002:a05:651c:385:: with SMTP id e5mr2642315ljp.208.1588704528150;
        Tue, 05 May 2020 11:48:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588704528; cv=none;
        d=google.com; s=arc-20160816;
        b=mV4OsKi/uW+3H9NjUdCtQKmWwDPuekQsmWDC2qWa4Sg8jXgkYF8MHCKfqmUXi0QnDY
         gsPlm48tjNOWRvhNx5Prb9ko25xPLRnyMjMQ/A4Ao0M446Iz+U5OAOTOcExD6EjyzsjB
         IwaiSCd8lN/aQMMBu6P4LxAV4h/us9F2EG/YiemS9wLeIGW6tC0r60R5HUgvwJIAriEP
         cuCyPxTdChzadPES3uPhTf/03x3PBv5e+bSCesjvej60iUno2fiAJm8EzETLetGld1yW
         h2Lrx3YUSkrOxz4TRuxDExSHN5Aw8Bu2x0QtrOLro6mUKkJqt3S1zO52SZOUAc3lA4lI
         Lmrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0aeZoygCkgdrdhCxkXT0t0qKXTgK7qHp5yzHDFCrrt4=;
        b=uG/bTpoZ8y74aNj+ZHq+54qTf+TBEGZScXX9thzkB3bc9WChgci0/fIqk1Pe6L3RJs
         iB1fBqgpPw0qxrRuhkIfWaCMP/pEEh2z6OY/D7TT/IXi9GZAkvPwh7yH/24PTe7y7Oj7
         X+ENw71wzzd1JIHpB9ZIKzNvC9HDeuVqZ3UQOMRitkI+RsmD4/R4tHM87oh5et0wd8in
         Q4t+uloMsRwZnFoh21KDQG/ZGIyZy4syqaBlZQUGPZARPA16ooUyCk6U8nr7gtaQCKQ5
         /g2cI7DoYernY33a5eO42cQ/NiMlvAXnKIA3lyawRDZyNlq3oN3cmAeXlDx4Urtpkg29
         32HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=OrJoG2wV;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id q24si240901ljg.4.2020.05.05.11.48.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 11:48:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id u4so2239113lfm.7
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 11:48:47 -0700 (PDT)
X-Received: by 2002:a19:f00b:: with SMTP id p11mr2558909lfc.210.1588704526959;
        Tue, 05 May 2020 11:48:46 -0700 (PDT)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com. [209.85.167.43])
        by smtp.gmail.com with ESMTPSA id t3sm2342993ljo.51.2020.05.05.11.48.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 11:48:46 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id j14so2233264lfg.9
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 11:48:45 -0700 (PDT)
X-Received: by 2002:ac2:4da1:: with SMTP id h1mr2492888lfe.152.1588704525320;
 Tue, 05 May 2020 11:48:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200501202849.647891881@infradead.org> <20200501202944.593400184@infradead.org>
 <1238787e-d97d-f09b-d76d-2df2dc273f4b@rasmusvillemoes.dk> <20200503125813.GL3762@hirez.programming.kicks-ass.net>
 <a53369f3-665a-af0e-efad-09ae456af847@rasmusvillemoes.dk> <20200504201445.GQ3762@hirez.programming.kicks-ass.net>
 <20200505093625.GE5298@hirez.programming.kicks-ass.net> <CAKwvOd=cP8UCX0+5pZ3AqzvOM8LKzLJJ_heDhrghqJdOnHoGMg@mail.gmail.com>
 <CAKwvOdkL+2Gvn2mkZ8cdHN=1F5cHQHii57ocD0RFeLJxEt=TUQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkL+2Gvn2mkZ8cdHN=1F5cHQHii57ocD0RFeLJxEt=TUQ@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 5 May 2020 11:48:29 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiUd=fcpegFLK4VK9iFfrO5BmpGKDszGpuyJkDdz4JaoQ@mail.gmail.com>
Message-ID: <CAHk-=wiUd=fcpegFLK4VK9iFfrO5BmpGKDszGpuyJkDdz4JaoQ@mail.gmail.com>
Subject: Re: [PATCH v4 14/18] static_call: Add static_cond_call()
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Daniel Bristot de Oliveira <bristot@redhat.com>, Jason Baron <jbaron@akamai.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, Nadav Amit <namit@vmware.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Paolo Bonzini <pbonzini@redhat.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	"H.J. Lu" <hjl.tools@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=OrJoG2wV;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Tue, May 5, 2020 at 11:28 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Changing
> void *func = READ_ONCE(name.func); \
> to
> void *func = &READ_ONCE(name.func); \

What? That makes no sense.

Yes,

    void *func = foo;

and

   void *func = &foo;

are the same thing, _if_ "foo" is an actual function, because then
"foo" degrades from a function to a pointer to a function as part of C
type semantics.

But that's not the case here. READ_ONCE(name.func) isn't a function -
it's a pointer to a function. So it doesn't degrade to anything at
all, and adding a '&' in front ot it completely changes the meaning of
the expression. So now the '&' changes it from "pointer to a function"
to "pointer to a pointer to a function", and the end result is not the
same thing any more.

Without the "&" it will call the function "bar" (which is the function
pointer that was assigned).

With the "&", it will not not call a function at all, it will do a
call to an address that is actually data of type "struct
static_call_key".

That's also why the NULL pointer check goes away: now the pointer is a
pointer to static data, which can never be NULL.

That said, I found it interesting that the volatile read also goes
away. That struck me as strange. But then I thought about it somem
more, and realized that the '&' basically just peels off the '*', so
now there isn't any actual volatile access any more, which is why the
read went away too.

Anyway, adding that '&' completely changes the meaning of the test.

Your initial reaction that "you can't compile away the read and the
test of NULL" was correct, I think.

                   Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwiUd%3DfcpegFLK4VK9iFfrO5BmpGKDszGpuyJkDdz4JaoQ%40mail.gmail.com.
