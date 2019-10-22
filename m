Return-Path: <clang-built-linux+bncBC2ORX645YPRBFXRXXWQKGQEQL2MISY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 6991BE0DDA
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 23:45:59 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id f15sf19074138qth.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 14:45:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571780758; cv=pass;
        d=google.com; s=arc-20160816;
        b=XZeX2Oyt71XBppMsMtI0W4i5VNJNEUFHf11Xb+3Xu2hJje/DBkFIsk2AA6HRuWDvuM
         kCHcoJGMOb4HWl1m1YTMJEZCwD83m0+X8+hhv3wtDqO1GB4vJfDpP6SBINywXL6coDNt
         023HmLJ5wm0pg68MOKJyzHBIG/GjC2oWurIs1Bkujh3kJqi9BZbV+4KDwfsusQAIT5nt
         a5RVTTQ84ZmDHTqDR6wqh4sKinUoB5ls+dH9P6ABqWvJaQe1VIPAEfkQv0E+GPcKg3+x
         G8VFWgEnqs7JXqevqTE0qZbfeR6jXaYhr/+F+j7PbzZdSC7M5pVP8hhtUwFhp8n0W5U0
         5TDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jFf/KomOhclV6kfYz40VM2gGXvC05Jv0fbulw3ctusc=;
        b=USiU4Y2Qcsf47YruX0MDnuCC/pgery1k+Ac0bx2yPfMwU+jEVN2S6E3Sqr4LxnGYud
         Ad3SygItm77d+jRVu18100n/eS4JztHMuCZ5EWCvptVt3k5V8UMCvpXHZ/gdBDleN76k
         iN1AC6SMaOJ2UpeFNm69dilQ10R9/w0/rBjC3Tn0357A3X4X11wPF7MqWOXbJa0L7Lm1
         fERmtEt5t5QK/HYymYYvoC9/4fyNDoNIFeo2EpIf8mNGnWIcCACZ5bZnMu+xypxeBDSn
         iKcL75cMVf7BiPhN8EIEu4uKqVwg8PUUxrQstnIs0i/Bl1XUnarZwoRQ6+eND65zxGKN
         d88Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e7GEnWKd;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jFf/KomOhclV6kfYz40VM2gGXvC05Jv0fbulw3ctusc=;
        b=lNb/KpnSWH3lzuGEj565DwThF8wP0/85yKGs50twBP4ltFumiy93d4GcCIrrWBSU5Q
         gJex3OH+ZfmygB5SOmFc2FjIpZ+XN2mgr29CXqy/lxl+L4OQ3puiLwAG1/mp/ktSt2bX
         G5eeYzAARJhy4I+qKRiyeTqkfEdNUYhER5fmOFbPIg+TND4l8diWRtdtvTHQ4c0oA2M4
         /0BSk14mQ0+PVzI6zfCMI5zsueRuKS9KAVzyyF5YYHEYHKUhDighuCgzC7X2mE6HxBZY
         p/yp1JJKdjnh3kY11HHDKv8TviABE79ZE+ixj7wPIyoebmQ5CpW7KsMQX1/zMX3ZxzkP
         0NSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jFf/KomOhclV6kfYz40VM2gGXvC05Jv0fbulw3ctusc=;
        b=KZ3/AdLnBY7G2090Kk4xTGlFMJOw7toh5v+JDHGu96iALlH1x8wABmhROld+gaBGxn
         0dkI+2AtCGbAzLSiglyCUHkpFDJ0i2LKJNPvsDUEw2cYOFW07WhED8P5XygErIJqs+nO
         cnJICJyrA6xDzJp3Da9Ad3vmgMkW7S+J451HxRbk+ziFxZNXPmrJboIKJFKb+d98SF/5
         tO38RGdeouNYil8wdPXVQG/E36eNwEuC7X9yIo40W0rmpCSxH/X10Slin9gI+fgYLPdK
         ZoDbHYjQOzXNQmXBF/tk+KE79TShQLLtvGixnzJ5oI+i537nHJGQXQ76KsC5IJbJvKod
         jgqg==
X-Gm-Message-State: APjAAAUroOqp9xf0SocEt8wR7gAQWJ68TPkfxkPVMo2ivigtwVSD0CYm
	A/1o5hdjZxqffI40zqJxRjE=
X-Google-Smtp-Source: APXvYqxlyjqyBPDL2oziqNjlObZ54X/iBYYqSTY5h4Bcz23S084oFEBEvzC2d2VE99YkviXxTpM2kQ==
X-Received: by 2002:a37:84c1:: with SMTP id g184mr5317462qkd.309.1571780758143;
        Tue, 22 Oct 2019 14:45:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e0e:: with SMTP id h14ls47655qke.7.gmail; Tue, 22 Oct
 2019 14:45:57 -0700 (PDT)
X-Received: by 2002:a05:620a:718:: with SMTP id 24mr5210327qkc.157.1571780757740;
        Tue, 22 Oct 2019 14:45:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571780757; cv=none;
        d=google.com; s=arc-20160816;
        b=eGnW8Hq/qNkhiBivJWCgYIY7uk3HeBHvGIzsZjCahK5psOWveZc9wn34w2BKgEljpL
         x75hD5oQ10aI4y8cQlyLSuF9/GfVjsLpbDc+s+08lMnVIRSjm4smD8t6yxxzR1SMQhOL
         qIuDtTTpuZYcGDBgBaEVLQzor2KYqW4Y0nHQBa94jPaeTy4+tltUdMwj6LHC/seiyyZG
         GcmDjrtpsqSz9eEzoPUMqK7VpSN+/cSiB3bBWKJI4quIc4NnPyx2pWevJOMCOWdft/nI
         2TfcZ976jYZuUgDXr8gxOTdgmPx3PmFXfQm5jdupK9O06GRwz0jdrZm3tXCqc9lj7doK
         zk3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aMrKTryhNXEL/B3UTp309ZugYMIYjNFJ3JCQDb7MpUg=;
        b=CIE0yE0nM3rO4F+lvs4G3hs1qa08Ox3EN4R+2Q2By0YEcp9LVIkpCUWPg9gy7Lvfot
         w0KXu3nQ6av2V7Je6YTFFKmNEpDdLQSmN+bpImtHFf4tqvu4CHncrzcgeH+w89Y4zT6L
         /CYGAxoUggIxCtpHjtH9YeG5YEVUEf9sA82ZDJBGyxGFo1t7f0MxoktZmA+b/GDcwhcu
         UR732iP2FHlEbjEePME06HxUQB3tlHdN5zO29ILaN4nzzhS9nwsgtTrSkqBBMi6Pw1Kt
         RtsRNuSHypoZs3YdTPePXDdnqL/3XcZoEDzdfhYYNRH/Joam3oN092gCsUzRShSERTtd
         fhYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e7GEnWKd;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com. [2607:f8b0:4864:20::a41])
        by gmr-mx.google.com with ESMTPS id z41si587003qtj.1.2019.10.22.14.45.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 14:45:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) client-ip=2607:f8b0:4864:20::a41;
Received: by mail-vk1-xa41.google.com with SMTP id z14so1365513vkd.6
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 14:45:57 -0700 (PDT)
X-Received: by 2002:a1f:a5d8:: with SMTP id o207mr3327674vke.81.1571780756763;
 Tue, 22 Oct 2019 14:45:56 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-4-samitolvanen@google.com> <20191022182206.0d8b2301@why>
In-Reply-To: <20191022182206.0d8b2301@why>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 22 Oct 2019 14:45:45 -0700
Message-ID: <CABCJKudSBjOkPFZ-DBFRNqQ=kx5u1Q8W6MY0VGoo=5BTakP2dg@mail.gmail.com>
Subject: Re: [PATCH 03/18] arm64: kvm: stop treating register x18 as caller save
To: Marc Zyngier <maz@kernel.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Laura Abbott <labbott@redhat.com>, 
	Dave Martin <Dave.Martin@arm.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=e7GEnWKd;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41
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

On Tue, Oct 22, 2019 at 10:22 AM Marc Zyngier <maz@kernel.org> wrote:
> >  .macro save_callee_saved_regs ctxt
> > +     str     x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
> >       stp     x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
> >       stp     x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
> >       stp     x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
> > @@ -38,6 +39,7 @@
> >       ldp     x25, x26, [\ctxt, #CPU_XREG_OFFSET(25)]
> >       ldp     x27, x28, [\ctxt, #CPU_XREG_OFFSET(27)]
> >       ldp     x29, lr,  [\ctxt, #CPU_XREG_OFFSET(29)]
> > +     ldr     x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
>
> There is now an assumption that ctxt is x18 (otherwise why would it be
> out of order?). Please add a comment to that effect.

> > -     // Restore guest regs x19-x29, lr
> > +     // Restore guest regs x18-x29, lr
> >       restore_callee_saved_regs x18
>
> Or you could elect another register such as x29 as the base, and keep
> the above in a reasonable order.

I'm fine with either option. Ard, any thoughts?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudSBjOkPFZ-DBFRNqQ%3Dkx5u1Q8W6MY0VGoo%3D5BTakP2dg%40mail.gmail.com.
