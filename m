Return-Path: <clang-built-linux+bncBDAMN6NI5EERBG5P5CBQMGQEMFWN3DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7673E362BAF
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 01:02:52 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id n128-20020a1940860000b0290171d50a7ecbsf4471411lfa.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 16:02:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618614172; cv=pass;
        d=google.com; s=arc-20160816;
        b=IMEJGSzUqcTJCfnDceaM0bcMoIA6c1iQ6seRlhubDDsY9YAKNOcU6QywCyIZBgZe6e
         +gOg6Ql/971C1OUmMWnMCIWJy6mjQPbp0/JrkcXmnlFbivi8ULsbr7hITwKZkiMyxKrH
         SdNZD/YArCxif5zM3jjAtc/0/cxphXuKwZ2SwULaJeDV/mNbyfTMsa70YwyXQIIyCq+L
         jo0qvPa7kf1wGd4lABXJssXdSFMfN4LKMOePpnmqIQyKVDI2yt01BMSpKmTAJD06IxwD
         lIi4nZqqiluLyeMj33XpAdwcByOZow9dWr9Gz0ZPyJpHzeM8nCZifINYSTBEl1RsDX1a
         RvIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=r73xWRbbURJtlNOetohr3NTSGT3zgdJv/rtDVDYYlJQ=;
        b=YXeopKJmeZckLNd7RtW5nFerB/AzZWttdVqOHFICLQkf+N63AbOMGIWIJlu+38uT8f
         0V0waaPwd7F/XPHfhEcJiCOXgd5AeZTOGmJcu1Z17bXncN56gIdz6uucBTPuUBI18R5f
         MzIqL11XxMzPW99XUMQtCsctToidUEdMI3Xs5Mi1su4Z58GKLJmXNFtx63IXU+VqwOxU
         zDD5BE1WI6v3fPou2DkZBqicaH+6tli2AN3GJ7/kc+xuvsVWquA4cKqZBAgLvD/jIJuA
         BLJRqlF1lx7c+CqIdxKv8Dcevkl+uAU1tE9qky3XafKh9bzw1IlJNEW1cVlTqlc2cLdF
         qLdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=unUul3QA;
       dkim=neutral (no key) header.i=@linutronix.de header.b=7henxW8U;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r73xWRbbURJtlNOetohr3NTSGT3zgdJv/rtDVDYYlJQ=;
        b=AJ+y7RlqChwMPPfBq54oGY6rSJkkE5ijdMQEeeVsrT/sIMjh7ZK4DdsA9Ky9qVKeYC
         n63BIwCz2rfQaLKTCaehddCa0uwNfBCoAVjqoe82roLy7M+cdnRUQDg/JIj9KwuFlwM6
         Jn596wR7afCDJEtlAlFeRHlpfsGtTUxBHH2Dj/OESs4SENZRSUQisjMTMTVKtMAVQdUo
         Xc/ZWi7mKL88NKfIlDEHTOfuDj0dUV3g5LH3xaPm6QDNh9KHWPwJOM5FBNsVCT0IyRmo
         gJMTMGsQcs2wFfGY08UieDvE4hsyNp2anpfYaOhuVotfW11CK2per1auaikKc/kMADqM
         Lcpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r73xWRbbURJtlNOetohr3NTSGT3zgdJv/rtDVDYYlJQ=;
        b=HtIectmJercsUwLbuNuc9YkJPaAcOkmLbzN96bBQ1FrxWcg0fXEC1qGDQA7nCJfUgU
         xAWpHe3B0kJ8RqMUWDODsESLDkRWm71nEWEe+Wd9GejbP4VbRLfmvB7ctFgjh2HriqTg
         NcYQnoRUAFDJ2H8hNIm9gwb2wU0CDra9rFwoHzURq0Ae4MYXEjnJtq7LSEGhLfbFNA03
         13/kvSFOyNi6Q1y4+TKZhVjr6HPj3V51nnpf3jYlKauJCUcAzGPqWS8NOvUx7ODCf7RG
         fnRSQwmNMYyXgt3w0/kF12S41PNFGSJn5bWTfTxObdzgf6m3nhHDuHCA/3LNMOcEl356
         ouNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aVsN9doy1FXbLKD/ME014BuSVUOXArfQZe9euSMT7hCenqtVB
	Az1F1b8zJ5QOhqaVFe6/OQA=
X-Google-Smtp-Source: ABdhPJzgIg/QI/5freLYME3k0XN4KPyq/Gv+PEVEziBo2dcerwN2xhKQy8aoagVpJOBQyH47YO+MYg==
X-Received: by 2002:a05:6512:3f84:: with SMTP id x4mr4582810lfa.10.1618614172045;
        Fri, 16 Apr 2021 16:02:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls2162657lfv.1.gmail; Fri,
 16 Apr 2021 16:02:51 -0700 (PDT)
X-Received: by 2002:a05:6512:555:: with SMTP id h21mr4514668lfl.645.1618614171056;
        Fri, 16 Apr 2021 16:02:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618614171; cv=none;
        d=google.com; s=arc-20160816;
        b=XbHaBjavJUS6tMxvdq7Ibj2u1EZwRDKMPurfifXGlkgQTZ+VoLfgDN6L57cV2PgnLq
         Hg2hX/9z2O/NQmt0ThFr00dZFV0Gsg9Vgs9ptRQAyot6QvC/u5V1EgmZNyc59+2lIfE4
         bgjNWCwj4YcinyIavOwZZAeUggcACsfmRZEmooGgwZkNjwToAvrKKFP41n1XvC6WV3IM
         dPCxd/YkTk3PewxqomMHB3OwFfz3bT8/IK3lRhiKESqmZDiPTgVqbL0mypOroa77LOov
         YuBvzBprobCpSePm8dhNiYe/ZthWQ4a7rsWQ2MLhu6/96G7OyJ16d6fUVc0YlKGqWDUA
         KNMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=zYsmczDUOwFiI2C1OqNRUIH5SZiNDmStN6eTeuq1zKQ=;
        b=JsaeV6lOhilrRa3mKSLNXLAaZl8k//OjXBrnOCPDiqTLqNnmUNpmJC3LOAnqtBGs1M
         hCl6dIZgFR/IvH6ezo3TRiYo7sT7ewme0GzlwvHAN7SmLE1W9KCmlaQKisnhOVdeWAGL
         amBvwbXuN8UaLATZh9AnKrCy/yUlp8X0KTxbZwVIrORpvQPUBdCphaDPLFk7qkPfR1eC
         glrTmN/GWdqXliVymRwg6p3/Ct7sX/77RO6RY3KnmhvgJgJ9TRDhwTKAqLkVaPmhMDf8
         u8KdNKzkE7XCa5791rjgCcujEK22HAYQ2t0WlqlI9TXGUfGGJJ1DB3k53xC8p7QBesjx
         VeXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=unUul3QA;
       dkim=neutral (no key) header.i=@linutronix.de header.b=7henxW8U;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id p5si358107lfd.4.2021.04.16.16.02.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 16:02:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Kees Cook <keescook@chromium.org>, Andy Lutomirski <luto@kernel.org>
Cc: Borislav Petkov <bp@alien8.de>, Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
In-Reply-To: <202104161529.D9F98DA994@keescook>
References: <20210416203844.3803177-1-samitolvanen@google.com> <20210416203844.3803177-6-samitolvanen@google.com> <20210416211855.GD22348@zn.tnic> <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com> <20210416220251.GE22348@zn.tnic> <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com> <20210416221414.GF22348@zn.tnic> <CALCETrUo+tR+YmfoBPWV9z_7QhU74=7tmCBD_zsfa24ZxNvfxg@mail.gmail.com> <202104161529.D9F98DA994@keescook>
Date: Sat, 17 Apr 2021 01:02:49 +0200
Message-ID: <87fszpu92e.ffs@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=unUul3QA;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=7henxW8U;       spf=pass
 (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as
 permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Fri, Apr 16 2021 at 15:37, Kees Cook wrote:

> On Fri, Apr 16, 2021 at 03:20:17PM -0700, Andy Lutomirski wrote:
>> But obviously there is code that needs real function pointers.  How
>> about making this a first-class feature, or at least hacking around it
>> more cleanly.  For example, what does this do:
>> 
>> char entry_whatever[];
>> wrmsrl(..., (unsigned long)entry_whatever);
>
> This is just casting. It'll still resolve to the jump table entry.
>
>> or, alternatively,
>> 
>> extern void func() __attribute__((nocfi));
>
> __nocfi says func() should not perform checking of correct jump table
> membership for indirect calls.
>
> But we don't want a global marking for a function to be ignored by CFI;
> we don't want functions to escape CFI -- we want specific _users_ to
> either not check CFI for indirect calls (__nocfi) or we want specific
> passed addresses to avoid going through the jump table
> (function_nocfi()).

And that's why you mark entire files to be exempt without any rationale
why it makes sense.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87fszpu92e.ffs%40nanos.tec.linutronix.de.
