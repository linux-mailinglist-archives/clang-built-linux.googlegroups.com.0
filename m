Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSOBXT6QKGQEQ2FS2AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE672B298B
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 01:11:54 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id r2sf4839709ooq.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 16:11:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605312713; cv=pass;
        d=google.com; s=arc-20160816;
        b=OsfKQX+MsZXCbyP50clgDdk6o+YIKdlJLrPKd8AnEUGHcs4VQlh/SC21MWwVFpPoE4
         vqNauFvX8RRex0J8PNQc06JysoOFj72DycDHkIGSba+ikI0hqk5/3xUXFsjFJ3+kZ0ef
         h80wGoC3mLXz9W1QoIWOMybWAa89NtFDvuNp6aoKijbHCKljQcq6MYN02+Beg0eL+lCA
         uXmxKD/wiWxF5vOqvSJNKbKA3kbpX7Bw8n3wGmV1i74bfyuNccsuzwWvEhMlSbGHIHvV
         rx+45yLochaCgM/9eEI+NTP92Yma29ukV1XSjm8vB/gENbShFC8KLN9rcENC8hiC/FTT
         kkKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aRHXFzULIIW5wkl1vXYwWs+N8peVs3Z1cLnC2TKvKeQ=;
        b=z2c5nTpBR7l4WCK3/oA9oUUbxTy5oNo09Um/ENwANyomq2TnOBXu5VSy/w1umuxcti
         Y00j/poIF2dPdorNKLALsIMzV0PycEotBTkI5AjTJdo0EkAmAOcZstb2RcjkSoE2CUtM
         wk8XXg1zGfVVkjuoEgSAfQGOM7gMO4tR5XxnDfPQPXq50VGIkcel7liSHoK483Iaazw9
         C0OQSHUvPMPvkG+IUuJRaYWafVDY3PhP0TSnyGwqyM2ffpA9SwmM/wzYWRtBGHPkl8Bp
         01UGjiwkew1OUQDMw0is4R1lkFJUr/lvC8hzYowT/amX2loCZXI0huJ3L4sWeluD5z8y
         V1Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WS7hp38i;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aRHXFzULIIW5wkl1vXYwWs+N8peVs3Z1cLnC2TKvKeQ=;
        b=j5U044LZGwJykwmZsYWeO9kjdVkrLzH5SdrZvv2pUPRdAGrZHL5jfb511Qx3nD0L9h
         vUviQajokItzPV8CLBDtkuPPs7kuvdMSvpT6ue/Z449FqGcUTKWQsqOMYCIBZL+hHH5K
         IujwWIhcSvHR/WCzwlp7qVcdiOJcXYptlX/fbJQTL8PGJIvp1OH5WgzbeIzPSZ/NnIl8
         mYOn/majTAuiwJTQa1iFwINNPAnEw/l2QaW7F4G/bYpF1OwEcuk+6Z2AZDou90tnXMbv
         tn0t/r9jvcnJZHVRZ3pa7Erzs7+PPZ7OTLxo1M6Wwr5pDJAIAIHIkRIzOUNy/0ubOE0e
         wJVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aRHXFzULIIW5wkl1vXYwWs+N8peVs3Z1cLnC2TKvKeQ=;
        b=J24yKdh0V7XGbyHpU5H5CcQX2ocQbDkPWZR08pEwBKnjGlTQa6jU5tr2qRiG0KQcXa
         6H0g6U2mL9uinGRoJNMN29LV7WHa8jLgYbyrnQGno0gOH03xAOjQXsWB5p6oPSlIQQ9q
         orogJsU84A0dkAHzHZADIa5EDLCNApgwV3gbdiH4GIy2DQgfceNW52aa9coP845KaXr6
         AaNweSMn03nZJ88pTVrRJkPPuzxGlu0DFDyy+eqiKFp3BhO28C859RnKcQVEGg+AM87t
         C/jzyxk61AVAgiDTYwN8DKLk+sZh/B1BZ0/pXPzi9F1EjFVi8ysnqDDXGhR5FjPXEFGK
         vBmA==
X-Gm-Message-State: AOAM533ngri1Ba30gmwrCm1EgSbIEOAbv7bSVYR+6sg+qBvazmjoiApA
	PissVJNg0ZMmP/Iq1JogzXo=
X-Google-Smtp-Source: ABdhPJzY/M9wbIsXvHvfvzneABqZKhGyagq4Zb5xYKiUzc9ehS9wgAX/oROR70OOA62wFMhnJgx0rQ==
X-Received: by 2002:aca:440a:: with SMTP id r10mr3496872oia.110.1605312713816;
        Fri, 13 Nov 2020 16:11:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5c8a:: with SMTP id q132ls1906492oib.0.gmail; Fri, 13
 Nov 2020 16:11:53 -0800 (PST)
X-Received: by 2002:aca:af88:: with SMTP id y130mr3328633oie.81.1605312713507;
        Fri, 13 Nov 2020 16:11:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605312713; cv=none;
        d=google.com; s=arc-20160816;
        b=pSgHylRn9ERRRssCTqmD7npfglAf26CJt6dsID0gNBzhUIjUg5pWMvUxw7VRTvB/jh
         ifnAToNf2UT0SatW1pogXyDWJaHVv3VtkDrDjdOlS/IK8Pz6oieHKyV7IF6FvnyKn0AU
         xC+t4SCMmDQManyy9TyMZXo/xv6IXVkjDL4t8pWq9DgsBY+IHW2ClXAEoxFjWgoD+1vo
         77qPYya1RvwVSM267X1ZDB5dfZ8guq4vaXmrxfr0KTqRe3W2Y+5V9yu1aVrKFOeTp/26
         3w2m7RiywyjGTJAgx/XibrrWODNPlq20HW9zIaPhUq4/vg8OKiv2EXU9NSZjLX7hUmvE
         O8IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ntc2Ur5r6E5gisOKwvVzLKKB4T9rPZAtNNgXARF4+YQ=;
        b=PgFfUOecrve9pgNcmx3aw+7C+/amEvggWwhYhHjMpjsIWg0m1727IY9EntAUhjM0OJ
         2arDRXMDCWxuy03jSJxcMYkfA+ECd/dLpnb0u9VEivjOjORmlr6hOmTGDYNZ565LmqBw
         44zbreVXcbsdz2SwN8xOfthAmNkN3sEfLtLek3hBvKjM9BfRqtcWGmU4fS4SOc/LzgxY
         TOeCMEFwVmFuxG1Bb6VdXX8UXKFO58bsiVAFon3fMAX35Y/Y2ecCbMdnMdoFlM8nP2CY
         Vn44vxGvkSvWptWRteqzi8a4GQo5Uhn10JB3qZn3/9j4TbZSeyPTPfJY3+zOdnBonckL
         6lEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WS7hp38i;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id n185si623667oih.3.2020.11.13.16.11.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 16:11:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id q10so9025100pfn.0
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 16:11:53 -0800 (PST)
X-Received: by 2002:a63:b55e:: with SMTP id u30mr3736701pgo.381.1605312712709;
 Fri, 13 Nov 2020 16:11:52 -0800 (PST)
MIME-Version: 1.0
References: <20201109144425.270789-22-alexandre.chartre@oracle.com>
 <202011131552.4kvOb9Id-lkp@intel.com> <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com>
 <20201113234701.GV2672@gate.crashing.org>
In-Reply-To: <20201113234701.GV2672@gate.crashing.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 16:11:41 -0800
Message-ID: <CAKwvOdk8ewY1nOA2ji6yoZcOOYDX7OKqmbZYuMAnCFV=9t0VNA@mail.gmail.com>
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST
 entry C handlers
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Alexandre Chartre <alexandre.chartre@oracle.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
	kernel test robot <lkp@intel.com>, Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Peter Zijlstra <peterz@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WS7hp38i;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Fri, Nov 13, 2020 at 3:49 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> Hi!
>
> On Fri, Nov 13, 2020 at 10:59:26AM -0800, Nick Desaulniers wrote:
> > The `optimize` attribute is both non-portable across toolchains (hence
> > this warning)
>
> Like *all* GCC extensions.
>
> > and a little quirky in GCC.
>
> How so?  Don't spread FUD please, say what *is* wrong, then people can
> decide for themselves whether they want it or not.

Spread FUD? Ard literally sent TO YOU:
https://lore.kernel.org/lkml/CAMj1kXHxX+u5-cN0v3SLdqZTSiKsWsFOvc2SC5=-ScaUZOu8Ng@mail.gmail.com/,
and it was referenced again in
https://lore.kernel.org/lkml/20201028081123.GT2628@hirez.programming.kicks-ass.net/.

Was it FUD when Ard sent it to you?  Did you even read the link you
dropped from my reply, which is what Ard quoted?
https://gcc.gnu.org/wiki/FAQ#optimize_attribute_broken

If it wasn't FUD when Ard sent it, why is it suddenly when I do?

>
> We (GCC) do document it as:
>
>      Not every optimization option that starts with the -f prefix
>      specified by the attribute necessarily has an effect on the
>      function.  The 'optimize' attribute should be used for debugging
>      purposes only.  It is not suitable in production code.
>
> The optimize attribute is for setting/resetting flags on a function
> granularity.  Not all flags can be flipped per function.  The SSP flags
> work fine though, AFAIK.  But don't use it for production, there are no
> guarantees.
>
> Cheers,
>
>
> Segher



--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk8ewY1nOA2ji6yoZcOOYDX7OKqmbZYuMAnCFV%3D9t0VNA%40mail.gmail.com.
