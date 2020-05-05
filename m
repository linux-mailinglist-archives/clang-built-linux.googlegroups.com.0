Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP4KY72QKGQE6RJOUWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id C52101C616C
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 21:57:52 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id q43sf2960375qtj.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 12:57:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588708672; cv=pass;
        d=google.com; s=arc-20160816;
        b=fT0G6JiIFDFXUyz4e10CmHq/R1FmSRYOQgGJGeW1KkvnS6ymHBnXCP1RTI3QGB/p3V
         8ilr2ibsjzVshFokugt9RHEq5Ru3IgFucM4PrXQchPMG1+aZu7PlD680ekOCsJj4qR8C
         19M/Ra1RnEhAmfsL1/MFLey3fXQj52d5Pg+eaMAA/cZml+VEYQgb5WTAwTZuGVHKimrt
         yurRq02x18WHQ2GZ2vL3C2D+L9iib215L6HZgf5Brq3NFs6syPeuPneQ3FAggFUWcreF
         /mTiCV1a09+sHhamQNWEjvA6LybMGkdFjWZCHi+vMVxVwW1M9BfNpmgF+/N08iBbjjGC
         OU9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0mSg02c+qo+6L5SUb4io5Y8V6y575sjCGvwYIrkbQKA=;
        b=IKsOYkcSOi1ttGHFTJYsYxBbQdtBS9rRQKQC53QoZ5SHn4U2jzN2s+ILbEpcRzIuhK
         AYOtdSuh2pHiXqyFh6kJTB+Mq9C18Yaq4cZXFiowSlCRdAqIdXUjGDe9IfPf2ZfcSZwB
         6KgePYyOmNN7LoUSL0Hs6eqdbHpHehnLDF5oaDZL9wGIHr1Z6aIWjFBj3ZDv3uLAmtf4
         qrZIBgYE/tXWrYFLKOenpA8X3Ljl+2PApdr4JburQfztu+kW7UJkdrjISRsWqHHKQqpL
         KFJcjspAp8l2mtD29hQ9ZmepmgCv7u3hh3/05qNEmY+1quZZbmLstygyfRTdj9CVP82E
         jmHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="D/CUUgV+";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0mSg02c+qo+6L5SUb4io5Y8V6y575sjCGvwYIrkbQKA=;
        b=sZrsqi7Bi8H9lv6IPR05ByPD8ZP0NfU9Ypo11eSJM4HWFLlrHghPXfleU+JhOPQYX+
         cwhZXKCaF12JSi+rpXNs/Rg490w11zCXoefGEmaKDYh+3as+YiK6aOLfPfltCE5bFLbr
         n+pC3VQrHRgRd2oQzM6twgehvcipUpZ8pRnt5Ab6o5PqtZcmq5ymmbKaHwC9fD7PfVSl
         Z7S0uR/yV9n13hJvNN6brY8np4jrIMXJWo51pHx/DszsjX8MqAA6RC7Iwylqrgc6S/mY
         Yy6gRwe5uERD6JoU7joXzU3q/ROcnlXmXgH9Y0FV1KtyCer7oDVCEuo7/VeRaXU8HKuQ
         4kgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0mSg02c+qo+6L5SUb4io5Y8V6y575sjCGvwYIrkbQKA=;
        b=dRjXX8WCEeX/thkLFKxe84W20jM1V0bxPMUl56/ctAQXIgn7kkN9l5zZTJdXl4Pizc
         5OkRZuRgmIjQJPmuP1/+saN1BJTAk/u0d99RrinGeyM5XXzjVjhrX3yoxqAtmRLi0C7x
         wkZ+OSMJZ8tLS5Vss6lPw4ag0lsfwrV4shC1Yhp3u7Bk2MrvIOp3vB7AfTq+MRf5mNz+
         MzBjJPi/no6m5ar5MWrK5EYX+o+1gH3wHKYKITluQ+G55ynnsMFKqZlPlBKORPEYeZz6
         EhY+fw+Fh3BuE0tLdpWqio9tJRPeBBS1sHoW43ekgUcg6WUMQta9cklwwC1FL3uCUTqj
         vrxw==
X-Gm-Message-State: AGi0PuZsEdiY7p5CFIpvnlAC2v7vQ8aSCqvPK28yLDSJMcYJGVmBgpzn
	dg8YnUg0K/CGw8NnbBJSA0Q=
X-Google-Smtp-Source: APiQypJ7RnSGDYiHCmb9mtJPSDTPa3zH7dbpIgi00xLzeiLIOOUUSWQJiU5v9GLgWQfb9ePX+ymGEQ==
X-Received: by 2002:ac8:1901:: with SMTP id t1mr4657504qtj.269.1588708671872;
        Tue, 05 May 2020 12:57:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:51c4:: with SMTP id d4ls448890qtn.9.gmail; Tue, 05 May
 2020 12:57:51 -0700 (PDT)
X-Received: by 2002:ac8:66c6:: with SMTP id m6mr4668876qtp.25.1588708671559;
        Tue, 05 May 2020 12:57:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588708671; cv=none;
        d=google.com; s=arc-20160816;
        b=vPETnVOaFX+Dk8sIR7EZbXTDF7E/4FLcPrWqr134UsUJ4VzwmCMgGuXB7cIAWuPul8
         S7feYWa3Q/hjwxzU0lCVQiN1wpxttLp5cg+489tgRNUksVYgsPQHYPvcvpLmY7MbYySy
         +Kv1oQi4fKfHfZsbAJ9ko+fseLVodbznxHrsZlrHhfAqWTuRaF2XB0IWUaqrrseE3Bss
         gCfprLeMBBMs1KYEeIJTALHvBYQHHDW5V4YwKhG1LSzhdbQsVbcOrWJtjUbqdOS9b2gf
         Me0rINiA6gLqRiFMz7dV665ZkgSDGpT5YryHRh8M1BXWcPBRE9Jg2HqngT591nMj9bL2
         0Jfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+jBR7bx06JBk3b0Box7GE19GyYRN4IAfI1SXCDy+ZVs=;
        b=BBLTaWRNAy6tJsMajaIB/6S4Q0/JsZaWoTMtFFAC88wqTBFkDhdyGdR4wMTF7w+6Nb
         cX9GJN96PCqA7QGaYcnzQ+E90Hlsg4wvrJ9ZsYRuU2BNFpvD8+7RkLa3Ck/EzObzBwcf
         F/x4JV1iiZB3QyUNnPlHEqDmsLqMBiYrrYeQmgdZJXDUQTZcafRDPBbzWzDdcS9zOZ3M
         DUVUl+y1oszPLmWta4o2A86vyaA9atHBPqO0y4qyZNOhZRXYIgVp+4KjdERIXSMOsqYJ
         yLcyO1PuThJFUeHGJyXegXBsJ0QGOEyy95z1puNKhstffPBoKjf0DUNiNxLoJyOsP3uo
         6WVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="D/CUUgV+";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id l23si199386qkl.0.2020.05.05.12.57.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 12:57:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id s10so1290246plr.1
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 12:57:51 -0700 (PDT)
X-Received: by 2002:a17:902:eb54:: with SMTP id i20mr2500038pli.179.1588708670198;
 Tue, 05 May 2020 12:57:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200501202849.647891881@infradead.org> <20200503125813.GL3762@hirez.programming.kicks-ass.net>
 <a53369f3-665a-af0e-efad-09ae456af847@rasmusvillemoes.dk> <20200504201445.GQ3762@hirez.programming.kicks-ass.net>
 <20200505093625.GE5298@hirez.programming.kicks-ass.net> <CAKwvOd=cP8UCX0+5pZ3AqzvOM8LKzLJJ_heDhrghqJdOnHoGMg@mail.gmail.com>
 <CAKwvOdkL+2Gvn2mkZ8cdHN=1F5cHQHii57ocD0RFeLJxEt=TUQ@mail.gmail.com>
 <CAHk-=wiUd=fcpegFLK4VK9iFfrO5BmpGKDszGpuyJkDdz4JaoQ@mail.gmail.com> <656098739.766.1588705237442.JavaMail.zimbra@efficios.com>
In-Reply-To: <656098739.766.1588705237442.JavaMail.zimbra@efficios.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 12:57:39 -0700
Message-ID: <CAKwvOdnLze0e3Vwmb1Xdqwcwe9h6gnAwGnt3ksiNX7ENb_3Y9w@mail.gmail.com>
Subject: Re: [PATCH v4 14/18] static_call: Add static_cond_call()
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Peter Zijlstra <peterz@infradead.org>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, x86 <x86@kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, bristot <bristot@redhat.com>, jbaron <jbaron@akamai.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, Nadav Amit <namit@vmware.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Paolo Bonzini <pbonzini@redhat.com>, "H.J. Lu" <hjl.tools@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="D/CUUgV+";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Tue, May 5, 2020 at 12:00 PM Mathieu Desnoyers
<mathieu.desnoyers@efficios.com> wrote:
>
> ----- On May 5, 2020, at 2:48 PM, Linus Torvalds torvalds@linux-foundation.org wrote:
> [...]
> >
> > Your initial reaction that "you can't compile away the read and the
> > test of NULL" was correct, I think.
>
> I suspect this pattern of "if (func != NULL) func(...)" could be semantically
> changed to just invoking an empty function which effectively does nothing.
> This would remove the need to do a pointer check in the first place. But maybe
> I'm missing something subtle about why it has not been done in this context.

Good idea, this eliminates the check: https://godbolt.org/z/Xugo9w
but you still have an indirect tail call (I think a direct tail call
is the desired solution?)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnLze0e3Vwmb1Xdqwcwe9h6gnAwGnt3ksiNX7ENb_3Y9w%40mail.gmail.com.
