Return-Path: <clang-built-linux+bncBDAMN6NI5EERBYXJ5WBQMGQEOKOKXNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AA63632B1
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Apr 2021 01:53:07 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id r4-20020a0564022344b0290382ce72b7f9sf9215906eda.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 16:53:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618703587; cv=pass;
        d=google.com; s=arc-20160816;
        b=WAnIFNxSq92y1QtCLnFYVr+2APjSSa6Qrg2+HhCQ/f9/h0YyCzD5R0UFQL4kiNdTlU
         r29pvm681xqcqS+Al/sFTh2asKrCBQaR5D7KLQXEtdDVg5djwJuSVnXXAFxt47zfLgMU
         nn6iiJPXwpCoBRH6hRhI7SVbSoDHW4vAR9iNgdkk3o9XJOHfO6qWXcZH1S+/3AgMH6zt
         XeqVlGn2hzv7bjb8uB/9Bf/+1YUQvTtbJjA9Vct2EiPW87LUBcE5wsBBupGfEnDIVGli
         e3KRTio7Q4NtvJqDJsnJTOFi1pQDJLcG0QeRIc84rhxNMV+vQ87/yE8KUaCL1izseYjK
         IfVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=OVdZToXYIwgIMLcPbCqEwJOFQ3Cmc1DvZnB2Bt4EPiQ=;
        b=rFYyNVT0kQjZHNeoen0X9IekRgqhBrQqBMC1s+NepVHc25uIbvOx5ME8bIvOBuPcIK
         xTmTFNVGdX7qZuanr+LXV1eNtfThRK0nBxCa+zXLbgCUSFFx83ypQ87jLvugfw/cl2Fv
         usSNFVEzNWbF4WnJ9dRIm81VvbYn+5mTCcMkfxikTqh705dwGBrK4wA/Hs+Vj36k6wRi
         2qLXyL6EqLo9KLMTFl2TCvFHZzCa2MTry3M+ptg8Xee7OuIM8/hbJx4DH8XPbHzAoREg
         Kn0c/C+j+5kGGec1m9HlzZ6HUf70f37dMhepjoH4u4kGWdBbbixGP0w7WHD933nrNUQy
         xd+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=JL1VKzqb;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OVdZToXYIwgIMLcPbCqEwJOFQ3Cmc1DvZnB2Bt4EPiQ=;
        b=ff5o0HUBKbELO2PSDE8wJDWufQr3H2w8/XvREgIgzts5p9c4SYYn5zPIej9dv2xq8M
         jJopClkHop/hzCg/UetiSWviWlXCqzMyOneqyVIaUxt1VvHLzqIU4rLdpzZmmVACSUNA
         TsZErVhei+0XI6jRLyQSfoREEX3KAeAWC2JNK5QiBwO6B5leII4hC9ivxbInOhOK58ev
         lwpfRxVxA2KJz94njExQxtpvSCkNYE2ecDVGruf+ToAkIdJbF75II3SmnFr7fDL9q1Km
         qalydg1MT+m13rPLKYSWqtWDeHHTBHXVoRAKHwWkzM4Z+AAMQnRhZ44DKW2nFCIhLaVO
         tAkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OVdZToXYIwgIMLcPbCqEwJOFQ3Cmc1DvZnB2Bt4EPiQ=;
        b=sdhldknkYHMV+olYjabgqhPD5bTXNYDLCi3490QMNCOpFanDFEF9WJB8xG2DuUWHev
         NSnQmQA6Xt1INA0m9sNbkfecyErxkVnXxPLGGX21VfuVyvWnXLmoyVeLgeYC5hmEWcM3
         hsXk/aB+fQX15/AsSScWC4RJOWn7TdPK6bndvn47kHVxWgxIJZGrl4KtFBoljsi8fZJe
         AZuDzRz0bnjjBHV8dOfuLa2PJ715uSlbq2Z8hnj+aKRwG5jL3rExMiWftOgT5xSokw5u
         hkVmLpvZrLzXLR55Rs2ap8E/aMwhZMH7P9wnynHnWi4UpCTlKHOdl8bt95Ry7WDuDm5n
         bYmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yoedUtq97NEIwVbxhV/Ogq9lW/vMoFxkjRYXNDH6/Dl+bHeA0
	9lO8ujylxrxKXGqVRv5jeVQ=
X-Google-Smtp-Source: ABdhPJw7r7iuD8yYByi8jIvzZ767BfVBGXGjCCkhZ+Zk3Bj2yWzu5Y36UNU3sjoUvdYjxh7qBoTO7g==
X-Received: by 2002:a17:906:2818:: with SMTP id r24mr14919001ejc.502.1618703586935;
        Sat, 17 Apr 2021 16:53:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:b07:: with SMTP id h7ls5597914ejl.7.gmail; Sat, 17
 Apr 2021 16:53:06 -0700 (PDT)
X-Received: by 2002:a17:906:b156:: with SMTP id bt22mr10907387ejb.181.1618703586158;
        Sat, 17 Apr 2021 16:53:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618703586; cv=none;
        d=google.com; s=arc-20160816;
        b=FUrdch1J7lsN23B88R//cuH0ZopSh2WaJVSW5hChT/aYDvAklLWFX8/KFOara6ZvHe
         FjA2A/aQZUd3lhkHc/SGhKelDoEgo03L0xIM4Np//Ys34XPpH8SZaTMiQUVlMJMin1Y9
         Me4eGGtVS1E7hOKbN9XW2P80qN12R/QqMqrWxIC2LqMxwhvBbtTfHwPI/TlzQ3hCf3RK
         atfo+q4nHjw+wFHWuDw2dyT+a/5yV+TwZW8VJ5MSjuV3lJI8oJmR7ajMX5TZXwYbDJYL
         0NgfSMxLSGpwlBjHTR60Q8lcMQDyBtDsRS5g5A+zcf6v72RK1VtJuE6ACA6ZAvFCB04P
         1bPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=C7Maz4mAaNbdh6Ve2gjfbQ91hhlq7K86k/cKBnBKj+o=;
        b=p2Mc+9lW3nIX/rfy/NWjkd3ux3V6PlaEab/qd8bO6KfHsR2i42re6ziZ0BcL3eWDzG
         a0lVQrR4EC16+hHA6Qf7R1QsWy7jjDu+NKPdMJuctotA3cC3c4oi4lA7ACqHIN0yJqYU
         FVW+gKqx6JLUaDYvotxNfuovysW9oij3kSITjHQjgBWkjaMkLwuXxlM5Ub5BSMUIx27O
         jK7sJVmSzDnNoVFLRPcQiWdky8eu6J06fMlznKPYnXu1tiNWG+e2qo2W+NbJQy2WsXrZ
         bkFlz5wRh+tq6EOBWAqEardoTU39AxmHrzdqkDnrAqX3cbWHju5S+JZ6/IeHX5QNg4bb
         aRqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=JL1VKzqb;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id h1si570876edw.3.2021.04.17.16.53.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Apr 2021 16:53:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Andy Lutomirski <luto@kernel.org>, Kees Cook <keescook@chromium.org>, David Laight <David.Laight@aculab.com>
Cc: Andy Lutomirski <luto@kernel.org>, Borislav Petkov <bp@alien8.de>, Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
In-Reply-To: <CALCETrWUS52tzLNiWL5sAVVB5-ko1EW73-TEiO=eZ5jF_QyGPQ@mail.gmail.com>
References: <20210416203844.3803177-1-samitolvanen@google.com> <20210416203844.3803177-6-samitolvanen@google.com> <20210416211855.GD22348@zn.tnic> <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com> <20210416220251.GE22348@zn.tnic> <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com> <202104161519.1D37B6D26@keescook> <CALCETrV6WYx7dt56aCuUYsrrFya==zYR+p-YZnaATptnaO7w2A@mail.gmail.com> <202104161601.CFB2CCF84F@keescook> <CALCETrWUS52tzLNiWL5sAVVB5-ko1EW73-TEiO=eZ5jF_QyGPQ@mail.gmail.com>
Date: Sun, 18 Apr 2021 01:53:05 +0200
Message-ID: <877dl0sc2m.ffs@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=JL1VKzqb;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

On Sat, Apr 17 2021 at 16:19, Andy Lutomirski wrote:
> On Fri, Apr 16, 2021 at 4:40 PM Kees Cook <keescook@chromium.org> wrote:
>> Okay, you're saying you want __builtin_gimme_body_p() to be a constant
>> expression for the compiler, not inline asm?
>
> Yes.
>
> I admit that, in the trivial case where the asm code is *not* a
> C-ABI-compliant function, giving a type that doesn't fool the compiler
> into thinking that it might be is probably the best fix.  Maybe we
> should standardize something, e.g.:
>
> struct raw_symbol;  /* not defined anywhere */
> #define DECLARE_RAW_SYMBOL(x) struct raw_symbol x[]
>
> and then we write this:
>
> DECLARE_RAW_SYMBOL(entry_SYSCALL_64);
>
> wrmsrl(..., (unsigned long)entry_SYSCALL_64);
>
> It would be a bit nifty if we didn't need a forward declaration, but
> I'm not immediately seeing a way to do this without hacks that we'll
> probably regret;
>
> But this doesn't help the case in which the symbol is an actual
> C-callable function and we want to be able to call it, too.

The right way to solve this is that the compiler provides a builtin

 function_nocfi() +/- the naming bikeshed

which works for

      foo = function_nocfi(bar);

and

static unsigned long foo[] = {
       function_nocfi(bar1),
       function_nocfi(bar2),
};

which are pretty much the only possible 2 usecases. If the compiler
wants to have function_nocfi_in_code() and function_nocfi_const()
because it can't figure it out on it's own, then I can live with that,
but that's still several orders of magnitudes better than having to work
around it by whatever nasty macro/struct magic.

I don't care about the slightly more unreadable code, but if that
builtin has a descriptive name, then it's even useful for documentary
purposes. And it can be easily grepped for which makes it subject to
static code analysers which can help to detect abuse.

Anything which requires to come up with half baken constructs to work
around the shortcomings of the compiler are wrong to begin with.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/877dl0sc2m.ffs%40nanos.tec.linutronix.de.
