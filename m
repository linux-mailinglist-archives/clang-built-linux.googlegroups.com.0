Return-Path: <clang-built-linux+bncBDAMN6NI5EERBMM65CBQMGQEUAHGA6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 343A7362B0D
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 00:26:58 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id 91-20020adf92e40000b029010470a9ebc4sf4041831wrn.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 15:26:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618612018; cv=pass;
        d=google.com; s=arc-20160816;
        b=OW2pX8aysKh0ZMMCaIjCjAed5ds+uWFsFT1EZxOmj4ELFVFIBQSS8M70arFWmeNisO
         GIU8TFNvqEV85RvGRaneg+vkTHan6Vw94ExPljRAq4oXRoU7BVueiMw+UxEUKm16HvwY
         xSSXgxhS3rCqXaBkfAxV5Aek2cfVZeGPU39ToOqCLM3kxh3OY9oETsSGndSF3ijvFy9N
         NC5u07siwhAmKJHGeAMuuJJJ+/iI/67BL4yFTJmaJl3sUB81sKTqm7+EeyHqO+LQaaLJ
         tkfwV2n1v4xzgWtwWRrXZ9WtvjQR3l5EUyv9xIyepTBkbH8q9PU+nBzVpjDsG/BFL7fu
         eoKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=Z5ouoVu1oEFeS36izvmKxxuCxQZDEZE8aZHMEy78S0E=;
        b=gqmJdJpTGlcAUY5BQ4D/1umciRu3qkBody4TDFv8UF11hVfeNBM0y44Vmy7H4sxiOS
         qKV/L/8zO5tjCzAThOA3hzNOyJz7TONxk1C+X6/gKGT67N5nsKbfvqejsCY1UajAgX+q
         FHwxKWYL8cpe+iBP0SoQhYOfR/ndq7I+tx0OuVY7UJh3R6xIaJpjyuqg+BiaSuyqDXWF
         hxJvdWasGUU5HtiVxDuGeOWXARk9Ez1WnVTElDuJEtjlVNS5oFlZLdEiOPxWGbU8JiXA
         edj4jmg6iDMGmr9+OtPRZMwaJ7zrlSHDaVndIEXSxS/2jroMYPFcQXIAOEVfDXKwV2hz
         ky2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=bqRX0z1g;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z5ouoVu1oEFeS36izvmKxxuCxQZDEZE8aZHMEy78S0E=;
        b=Au6ruuqq68gUZRe1CmuvjmKJpaw2I2yGL4oT7m3nMR59twOq+4dSHe5vbH1AXnr+Nj
         AH3jScOP29LGo19f79t5tS1MdsOYv1JkkcaqKP+3KG3+Pe2yBWCyTMT9FbClZgCIAfXl
         XYzpdEGiBxACHL8Hj2UTmmd4lvJaIjOiUgZkQcrpQFMaPD3+pwX8DyAUtn6UlAtOaML7
         qU4zoWDd2frnyDR0mLuz8Fc95b9TG6JfyR771dDv990X2w0EPGgxDLxfQWHUG+kc+5QG
         1juQXt1Kz7Yd2dOhjLaJp7ZlSi07alyrSi55Sl+J2sSWStRx6C+K3tdX6DVEvFoYLBid
         U/bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z5ouoVu1oEFeS36izvmKxxuCxQZDEZE8aZHMEy78S0E=;
        b=lyzaoiaRJNhxXwqR04vzwtHUpry0LVujLq32Q1vfft6qyBv2bVqEaJMw+WK8Zuba8S
         SPIr5+ypETenC0l3wjX9SoJojQXwZloJ6dMp1ZQ/sxyi9BiM6EgOItfdVy8oiSae/QO3
         z/wGAFNraTwODqPF4jLiM+y478DtkOwo7ldhGrFe8K+CNJTf+0RpnVvvUoas8BkKN2CT
         Lf4oZ9t+bcscSx3APosTc4yX3li9jeaNV9Mvs4wmWvEopPwETl1twYUwJSnmN391+inL
         kLTYSO/Hvd5RtFp0bHgXzeiTY3MQ+RMiyUBv2yhuuqhVVBJzQciUMaZaLJJdKwMlDRd1
         pZiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530waPoidaegU7Q+ETwohD9ml5SWj70h1G6kqPpPcAAbTcHGZCz+
	Y/Afljsf+CKwJsHndfy+tmw=
X-Google-Smtp-Source: ABdhPJzHckVBNy3mePhM/vDGg3oUJhAQs7QSTU97W4PSzCa+1Rr551uFGlHNFibdN/iAxaJCz3/mqg==
X-Received: by 2002:a5d:4d92:: with SMTP id b18mr1283128wru.269.1618612017975;
        Fri, 16 Apr 2021 15:26:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6804:: with SMTP id w4ls206327wru.2.gmail; Fri, 16 Apr
 2021 15:26:57 -0700 (PDT)
X-Received: by 2002:a05:6000:180b:: with SMTP id m11mr1267514wrh.355.1618612017179;
        Fri, 16 Apr 2021 15:26:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618612017; cv=none;
        d=google.com; s=arc-20160816;
        b=T23VZL/fOiOT1nEUYV33a5lEbvXubMmQdtHza2zBgov7lbzIC2+alLphKytUnQfkIk
         pB2ViiRrxe6sIJ+nHxM+x4NXmx/7vgdUYdewHzc2tE+VibOhfnWYVlW+guN12MgFJ3nA
         ToZap/DCys4oAIMcwvEDhIoiWNyXd/itiac3ceu4lielzmbKoVLl191/B9pf9Yb9ju0+
         23pQsJdlrYSyotfNfZIKXgEqKq9i+r3EiU95Jj24vEoIuhketlAdU6dQ6sCbyPDNmoR8
         L6h4hxp/xSs0yFAsi2eqav+8cquRHObxdhONkVTbLpsOnNHo1wRqFm8ePO1L6DcIpfv5
         L29w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=oIMPFgWu4IqnP0nhiSA/nCdAulGUPJoqWG9L6Or5pk0=;
        b=LO5vJzVRsL9uYTtc+xuT+M1Bh79qoLK83cCRk45w32jmWf2rzwpMSH28p4FkrXF0G1
         1lNBqGqNDfwD1I29eQ3DokGCgrjbW8vn6R/MJE2FUv55blGX3O9OupwJ0ySIFJXRcoa0
         AgUgzRIHrHoQV+nFlao5vqjOZcdsc6r7uz+sDqOJNjGWsnpk0RA8y9v49466PIQ2qZde
         ZjLwNhJsXMyH1uT89lpBYk3nknZBwMGHfTD2gP65HtQHWmtBnhtVgXfRvm12EWNviR48
         YhVdf4C4t55AXQm5267pIkhovbz/d4rk8g12n8654ruqQyetaZDQgKXWiq0OrR0xyO2/
         AMlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=bqRX0z1g;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id l2si121610wmq.0.2021.04.16.15.26.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 15:26:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Sami Tolvanen <samitolvanen@google.com>, x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH 06/15] x86: Avoid CFI jump tables in IDT and entry points
In-Reply-To: <20210416203844.3803177-7-samitolvanen@google.com>
References: <20210416203844.3803177-1-samitolvanen@google.com> <20210416203844.3803177-7-samitolvanen@google.com>
Date: Sat, 17 Apr 2021 00:26:56 +0200
Message-ID: <87im4luaq7.ffs@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=bqRX0z1g;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
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

On Fri, Apr 16 2021 at 13:38, Sami Tolvanen wrote:
> With CONFIG_CFI_CLANG, the compiler replaces function addresses in C
> code with jump table addresses.

Fine.

> To avoid referring to jump tables in entry code with PTI,

What has this to do with PTI?

> disable CFI for IDT and paravirt code, and use function_nocfi() to
> prevent jump table addresses from being added to the IDT or system
> call entry points.

How does this changelog make sense for anyone not familiar with the
matter at hand?

Where is the analysis why excluding 

> +CFLAGS_REMOVE_idt.o		:= $(CC_FLAGS_CFI)
> +CFLAGS_REMOVE_paravirt.o	:= $(CC_FLAGS_CFI)

all of idt.c and paravirt.c is correct and how that is going to be
correct in the future?

These files are excluded from CFI, so I can add whatever I want to them
and circumvent the purpose of CFI, right?

Brilliant plan that. But I know, sekurity ...

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87im4luaq7.ffs%40nanos.tec.linutronix.de.
