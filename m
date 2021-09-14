Return-Path: <clang-built-linux+bncBC2ORX645YPRBAUNQSFAMGQEQZPWUGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7470940B94B
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 22:31:00 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id k1-20020a17090a590100b001971da53970sf340046pji.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 13:31:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631651459; cv=pass;
        d=google.com; s=arc-20160816;
        b=aNgNTa6Bq5/Vz+n33e76pXMWXhhyx+J0bnvZuPzShuG6tCKFh0uZFobm7KiQHmdaPQ
         3MEs9cwPHClM8dYJXKTjxfiPbdKXTkeWC2jtfk9rRbsThLClcANJjmZ+O5/bIggF3cmn
         lmlceFAEo5M66mtyiwFd1KkR9Bjah8vUSgVUW6KK5iaN8LxpqF5JnfhOPHeTD14uHcZo
         tIFzAkFhZJ0SwEXZQWsjEDSWji4ViTk6p3npqA+sKNzfNkSJFOPC/4iV9mv2RR2ifN6G
         T9K90BbagGWQWR5I5D3QODbUT0KSAb2IjnRg+PjNqceEZOzHM/H6bsHPS786zRD7Eiir
         G+TA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bpeiYm8KBU89iU64CWvXJJfO1u8NSrzylARcXxUj30s=;
        b=oGkd3b++60hRYzY9VeteSbbisfM2ck/uw2HA2D2SQJuTiJGMdTVUSVj0pJeNdCxN3a
         eXboC9b3/RZ7BgNEe7EBIZ/kOHtk2+JtujDeCF6CtbGE8suviUUTGTU3gfMKUBUluBuR
         EVKBT1jWa/PU9yG99cskLGZlL6I/lOguEierVYGJlYYn5knnPYTBso66uNQZD2X6wR0k
         cZY0HB/OjGjw6T7MTnoN53MpUGlWuiuYZ9JaYZEvZIw1uaBDmYsksttKtDpcoeDQB/Mz
         fpbtWM1YLlvr+uAT/Dd3bzn/vJrSEl7E+n7WrK9Ywt9f5xCbeYtzcs4rA+ZOxJ/KBZoN
         SY1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=cyqojXb+;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2e as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bpeiYm8KBU89iU64CWvXJJfO1u8NSrzylARcXxUj30s=;
        b=lFewlfhP10B0dd6wX9EoDNDimzWNoNyAj2+lb+/0ZGIOM5idw0osNYICs86EOu12Mu
         MTyJCDCEir4W70Z8YqlO236QQFhcr66SleBT6wc1XYlJ7xRqj5USDvr7WnPp73l6d91A
         9tpE9X6afonXrwyQwZOOkhFWtd4y/Tbp0pf60DLQAyovDxsUtCXdqyI65lJlYUbjxod5
         AjDMjKz+1YdQQPnT7E5ZOWG9fxeBtpRs5OZ4fLthgm4XWgt6l7TGb7Kiyw9khLH4puqr
         MBs680vkv+fpdNJpS8ERu/yqdvLfOzwlS5Y0cohRIJnDKfZ7foRc+N0XDsa2Hy2ex864
         QfJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bpeiYm8KBU89iU64CWvXJJfO1u8NSrzylARcXxUj30s=;
        b=EQQpXgqNcwIHJDkA7jT1vNWqMJi+k4aa9U/HflUtzNYwY9kyIjdvqjVj9tlP3uBzul
         GnFpBiC7Hd5JVlk6cXG7zRgwVUuMlCZhJwyhHQEA/yc86Brmga7JAN4UZJfHg6XyNLLE
         2Fv0hv9U3MFH06PKIkJ742Xq2k/JZk0REI5NpgGzb8PnyPCUz+oNYPFLCyNl7eyBJlsa
         iUH7jnMGRfPXe6G6aVVf4Qknn6kGnyR7zuVO+ahpyrFTpasQTpGZdhPdzjyu0ZP1cnT9
         0hjK+8iFIQ3u717gsbO9LRQDuzoPZi0LUAy0T4FbHCgZyYTPOkWC5GXBythxbf4rbfYp
         Y+OA==
X-Gm-Message-State: AOAM531Pfc1r//vHsUUWJF0SWAu2kNo5cTMU+7H+JwuVIT5BlHa6DzBA
	60yK0jj/kU3sCCIGf9tlqi8=
X-Google-Smtp-Source: ABdhPJzuQ5B2wAiMsF3j25RU/eRGMz4j0f8vQkWuKGim17jecncgiD/9Z0S0Y5l4vQmTkrm+WkK3tQ==
X-Received: by 2002:a05:6a00:2244:b0:32c:a800:ba47 with SMTP id i4-20020a056a00224400b0032ca800ba47mr6717362pfu.56.1631651458956;
        Tue, 14 Sep 2021 13:30:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fb01:: with SMTP id o1ls39570pgh.4.gmail; Tue, 14 Sep
 2021 13:30:58 -0700 (PDT)
X-Received: by 2002:a63:5011:: with SMTP id e17mr16878362pgb.391.1631651458344;
        Tue, 14 Sep 2021 13:30:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631651458; cv=none;
        d=google.com; s=arc-20160816;
        b=A20aPZe23s2RT1ZjnCRMxjSqWCdHNQLrl568UYA8qW0exqcbdN2zYeJhH3bgxghRRf
         eyDy4jD1iPi0guN+t/JCompmYhAOkJMROlDXH7/azA/X4W9OBV18Jm+/0HRCVipz03Xo
         waJKdsMB40oQEOBCNv5rbtrCbCUqN+4DtKh80QfdmL+c/9DcyMH/SqzGIArc74kZlMMc
         N0sQDzSCQjTbhwJR1inUvVR6qTKJC4764bObEfZGV4w8VRGGXEzGMDDjDg7/plnZu2iu
         SG7++66J5rGSs5muAbcTayXgtRxrb7FrQVEq/X2nBNsIrj+XWAmFEc7Yx8qFvH8Ip1OT
         W5Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9szN+UFlw1GIeZx0sVo7UxtVCzmXzz7h/G+9wB5zgds=;
        b=kUq0pmKfP0NMcZ1hhIIV63xaFj7GFlxOEGcLe3tb8xAfV6zT9FazLbtRUXMQcgEeY5
         9qyIiv0COtWyaOmWnIN9hlTbwlU1xF7X11ceo8o95kMhQCTX0LXwiP+T2VJHAOYzFYHr
         RsUCm+3MwPfO5b08L8dET0BzPg+5TuMy7KBKZElESEUlurI/HHbeyrFwy4iFqIyYdEOM
         iU8vgVyQuyOeil4QfpgSuHj32BcePwVp3bQHR0O+lE7OrzkKQnEJPbqsxL0lwbgaaIsN
         RZ84X7ePksYR0Ztt5XwIfdlGnJ992WTpswYFxQRiaBvyuOqn+R9aTu9EGlAAeUF3bH7M
         FQSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=cyqojXb+;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2e as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com. [2607:f8b0:4864:20::b2e])
        by gmr-mx.google.com with ESMTPS id r14si1096477pgv.3.2021.09.14.13.30.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 13:30:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2e as permitted sender) client-ip=2607:f8b0:4864:20::b2e;
Received: by mail-yb1-xb2e.google.com with SMTP id y16so836714ybm.3
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 13:30:58 -0700 (PDT)
X-Received: by 2002:a25:fc02:: with SMTP id v2mr1420442ybd.444.1631651457419;
 Tue, 14 Sep 2021 13:30:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
 <20210914191045.2234020-12-samitolvanen@google.com> <CAKwvOd=OvR8iZogXhMxkbt5qT7jbhaARgk5NsCzhpkjoZ7yy5Q@mail.gmail.com>
In-Reply-To: <CAKwvOd=OvR8iZogXhMxkbt5qT7jbhaARgk5NsCzhpkjoZ7yy5Q@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Sep 2021 13:30:46 -0700
Message-ID: <CABCJKudRDcwfkSK205Pb__hzLWQPUFhbjUtFPbctdPAycSOKQw@mail.gmail.com>
Subject: Re: [PATCH v3 11/16] x86/purgatory: Disable CFI
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=cyqojXb+;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2e
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

On Tue, Sep 14, 2021 at 1:02 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Sep 14, 2021 at 12:11 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > Disable CONFIG_CFI_CLANG for the stand-alone purgatory.ro.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
>
> I kind of prefer the existing convention that has explicit guards on
> specific configs (ie. CONFIG_FUNCTION_TRACER, CONFIG_STACKPROTECTOR,
> CONFIG_STACKPROTECTOR_STRONG, CONFIG_RETPOLINE); it's more obvious
> which configs may introduce which flags that are problematic. This
> patch is ok as is, but it kind of makes this Makefile more
> inconsistent.  I would prefer we had the explicit checks.

The Makefile does already use DISABLE_STACKLEAK_PLUGIN in a similar
way, but I don't have a strong preference here. I can move this into
an ifdef if it makes things cleaner.

> Does CFI actually do any instrumentation in these object files? I
> guess issues in purgatory cause silent/hard to debug kexec failures?

The compiler shouldn't add any actual CFI instrumentation here right
now, but I would prefer to avoid issues in future.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudRDcwfkSK205Pb__hzLWQPUFhbjUtFPbctdPAycSOKQw%40mail.gmail.com.
