Return-Path: <clang-built-linux+bncBC2ORX645YPRB5XPWXZAKGQEE6R2BPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id DC647164D38
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 19:01:27 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id g7sf1016850ybo.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 10:01:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582135287; cv=pass;
        d=google.com; s=arc-20160816;
        b=km47gAMKy2oLKei2Umr0p6cHm+oqXdaJJVtoESsGRoA20DK+DR5U4rYRlnwowx/qta
         jT+0KMdXbzDO0CwofCa03EkELT3Xdbosgr5HAAlsHlNq+Pb+rWroZFcPHJjQff8BAcMo
         HX2+JQOZFPNedumDvY7NHMkmLIKfpW4VaHe2eNP6wriu/C74nUJV/5zcwBSrJddRUTyp
         KxZVDpqkdbxt4c/RHJJuGNvEorasyYxkpIJVL2Pa/PcYl9lnr2NojCjX0QUAZuaMeOYl
         Hyu4V+ziVn7w8t2MyhECtu8iM2qySPdzjWH24CvBnFvuQLLAXnY3waJfk0ByRrvpyE3H
         6MeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ODxexuQfoGzzsX/jIW3Tb3k8IwKla9CUrNp0nOG7Q64=;
        b=Wk89Bx3dCcNCmlkrYdM3I67JoKlCg2rjXnr3LLmIkzT6n2WOROYAFuYiVi4QNjo1bL
         AH/CB5DrJKDOl3l1BlZGPgtv7trMv4PUjH3aqYVgTkvFjKiDFmKlLkgjPR/qvW8IHzKF
         OUCXsrgmC6AN2+9CuotqVTmc4aot4X5OFQEOK0pGFA3eKOjbxEtaH6XiCjkgAe1haxsh
         ESxA9f6hdJhwMrBzGfJ08xH0tX2GEgzpYE/xYvbX+geiCzAQdQyYVF4bUVm9DAhGh807
         G091WVww1x59bX1EPrnQkh6ftzHCw7mrPkEPp7c/NMHArgkwV18IByKz01NQqBaZX1ax
         Y6Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gh6t3G5B;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ODxexuQfoGzzsX/jIW3Tb3k8IwKla9CUrNp0nOG7Q64=;
        b=CTC1gpu3j/4LhtM/NAmQjQ1/bIFcoHzWQm7hTm1euu40wRVIN8K34XB0x8LX5vWkYV
         czZ5zFhpj8KYD/lAP2+AFaxGRbXrY/OwDdviJrDJzRaUMdSTthb/iTemZ2z1fuwYFJIR
         qwXHN9HI1WDvKCskip6MVJXY9fqI12amtycOFz0Li+gGfegNWzQkj0QCCm601aYutfiL
         tHiM72RBlysupeG+LdOJCFqUAqpyhUM/YwCY1bPngvNP6zDRbUDDJryd5cFicoKk+G2o
         zMNHqkLjJZSZJTugoOK8xzf3srU2fJEgDam4jY4MdQ9RVecEZ8eCIwUivsdg8sfY7jOW
         MZsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ODxexuQfoGzzsX/jIW3Tb3k8IwKla9CUrNp0nOG7Q64=;
        b=KAjy5FIQifWc3tAB0VwG57HdrxiN3nHTJV8f96cXOROwWE/B+Yp65zpi8OtOs97Voq
         f9/4907ZtrBjh0eDz88gha9iIJ9u6K8rHSF04+W21z5la3Yk6rJxJFMH1Z0OckMMvUYy
         wik7wdGu4G3AsNzMsQYyvGY/xg5uzPc4GoDah09qXmcBtcYXzW63HtBBAlUM/UkBM7ru
         s1jTwK1MkMU2WAgtysG+4sHBje9nwjDh98ilzj1ui/opEFG0G60fyGoFX5hoXRaJJbYj
         0+ey2J7x3Eq84CSr1B0G98vGU9iZazcbR1w1O03AjF+0mvMe+P+R05bgs/jyYl0+e/EH
         bHXQ==
X-Gm-Message-State: APjAAAXyv1aO5lyXcTi624BkrAe9r9xyHJ1KWdd4B/kKi2tFPA5VvFfa
	cU3jQRAZgfWAcyo9bJdfr9U=
X-Google-Smtp-Source: APXvYqwo8tfTgbT7Gp2GTmgqf+tQU0OW+1ozq1sukonXboS8ZFcxt+DG4RMe58hwdTjoZMAXOITEqg==
X-Received: by 2002:a25:2d48:: with SMTP id s8mr24622272ybe.79.1582135286940;
        Wed, 19 Feb 2020 10:01:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6849:: with SMTP id d70ls72312ybc.8.gmail; Wed, 19 Feb
 2020 10:01:26 -0800 (PST)
X-Received: by 2002:a25:b8cc:: with SMTP id g12mr25568104ybm.485.1582135286513;
        Wed, 19 Feb 2020 10:01:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582135286; cv=none;
        d=google.com; s=arc-20160816;
        b=f6n2Ddu6tCmAAIlzIpz1erGle+ONqidB0RnLHrdxdUo5RU9MP5hhHibYyHDj0tgK9D
         2CeJDfDU29hfbqSntV+6z9fTiUhnTSS3QqgVr5AE/yEryp3+ng9bdZLpbyU2RGwXUlZz
         csrbFCSujZUvCUQ7SIjAU/EdOqcRF3xNPR4De745Vy9wsU7WyJlRYweUhWlpkZWPJCl6
         WQCCsS7AFqSmCNbONsFIvd7wjcPD3kIhqfKc2yeOf5XBxLfE5XvsquhTOFfxLPZv4cb2
         fU/UqpAUo1ib9idaS3qoDRtrmYgRJ9WCLiylQa/q5uEpvflN45Xgr+a8QbhdfgEZE6pH
         cQeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lkHXwFRTyqTPxv+c/LKoXDAeY6A/OlAl/xcBXxo2cgo=;
        b=q34Sado2eQTkI4han+SMZOyJBflwBokYrOs1xcSjZm+TxmDm/plcaIOAi6igqRCK+4
         53eC4gMKAyx6agZ8jHaF+3i6gvs+soibO4fZlB1mSkbQ3rc6183bpNu9+5PXi7574T0K
         W7lO7J3MqUT8x2l6q/7HZCu5gkjkNeRl6WdJtPL6R8CuWlb3/0TLfretpUzfp1dY8UJO
         Yrg3GNABWnWLBzFPIZGCBJoBR7hzHlbnTIPfwAXna5YkCOmCHng+1E/7hh8PesUc7Csu
         ILQNEqIYzYsmudyKu5+8xdW36KmXCbRNi8a4/rWEJPRReePJQvtF8juUGS5Y7BhRb/YI
         3S2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gh6t3G5B;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id l1si75571ybt.2.2020.02.19.10.01.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 10:01:26 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Received: by mail-vs1-xe41.google.com with SMTP id k188so880809vsc.8
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 10:01:26 -0800 (PST)
X-Received: by 2002:a05:6102:1c8:: with SMTP id s8mr6086880vsq.44.1582135285718;
 Wed, 19 Feb 2020 10:01:25 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com> <20200219000817.195049-5-samitolvanen@google.com>
 <20200219113351.GA14462@lakrids.cambridge.arm.com>
In-Reply-To: <20200219113351.GA14462@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Feb 2020 10:01:14 -0800
Message-ID: <CABCJKufsYiBX6a0cmaX4D+3RDDKLLeRLAuTZgxO4=QryHYUptQ@mail.gmail.com>
Subject: Re: [PATCH v8 04/12] scs: disable when function graph tracing is enabled
To: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, James Morse <james.morse@arm.com>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gh6t3G5B;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Wed, Feb 19, 2020 at 3:34 AM Mark Rutland <mark.rutland@arm.com> wrote:
> Fangrui Song has implemented `-fpatchable-function-entry` in LLVM (for
> 10.x onwards), so we can support this when DYNAMIC_FTRACE_WITH_REGS is
> selected.
>
> This can be:
>
>         depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
>
> ... and we can update the commit message to something like:
>
> | With SCS the return address is taken from the shadow stack and the
> | value in the frame record has no effect. The mcount based graph tracer
> | hooks returns by modifying frame records on the (regular) stack, and
> | thus is not compatible. The patchable-function-entry graph tracer
> | used for DYNAMIC_FTRACE_WITH_REGS modifies the LR before it is saved
> | to the shadow stack, and is compatible.
> |
> | Modifying the mcount based graph tracer to work with SCS would require
> | a mechanism to determine the corresponding slot on the shadow stack
> | (and to pass this through the ftrace infrastructure), and we expect
> | that everyone will eventually move to the patchable-function-entry
> | based graph tracer anyway, so for now let's disable SCS when the
> | mcount-based graph tracer is enabled.
> |
> | SCS and patchable-function-entry are both supported from LLVM 10.x.
>
> Assuming you're happy with that:
>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Great, thanks for pointing that out! This looks good to me, I'll use this in v9.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufsYiBX6a0cmaX4D%2B3RDDKLLeRLAuTZgxO4%3DQryHYUptQ%40mail.gmail.com.
