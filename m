Return-Path: <clang-built-linux+bncBC2ORX645YPRB4NSQPYQKGQEM26XLGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0C013FBAC
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 22:45:23 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id x127sf13952809qkb.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 13:45:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579211122; cv=pass;
        d=google.com; s=arc-20160816;
        b=qiPq8JD1/1jxuLkV1D8KLfwOJgdAUgBYANphyvsCGpXWaDoMW2YzIORNaFgD47rayR
         yn49mBrR/MxX4CvvJryyuNy8Ilb1Xxtz3I3cdKecmQefAOrzyWbTCCPQ+n6vPi2PGdR9
         09gWedv683kmdi4YNjCXzG4R95RFIZOt0wQcXd8XheBpJH2eIxElWFdFO6sH8o7dw1RV
         1WOuYLFP2O7+SAEmghncTAbxZAVjwSIMeL7+xCdTGhum1DhIqjSjHaRL71eq0DBju9HH
         l/6EH0Fqsmsty+jW8MGuhx9N6s9rlf99mQ6+KtvXh9FJg66NBzmx7vuwHK3Sikhu9hhv
         M5vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=k3HuUhEK30HmFxjZYjHch/Dk6wCC9dFpNHe7NW5+CQs=;
        b=zEnjsG6tU31ZeVqw+YDmAshQMWWlDxtdc5Ow9VfrbIDJG58BJ63l83fxvBJDr1b3sn
         4DyCj8CUlv0+Nv7RPfceOnLWtSVNm1dOxeZj/5qGo9Ehzmp0d0Ay4teSusgzhWH8leN0
         79+jNYyqZcCyH0r2C9ryAit7XdRh0yoLo1VA1FZInAE0x30eJ/j0Sth2Oyzej0jfUYht
         BDg66hjf5JF3+794TpePY/2oZm3a5X4KBNpeQ4zWJvGoM+uSQp/7V56loAaTiZ9Eyfc1
         aM3YrmmNqifkQj9wyRZJZt3P4A+LndNbIZaKkn+kayIWNAUaPnKfyruS4KzADWnQOF4N
         QRyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tYITaZrs;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k3HuUhEK30HmFxjZYjHch/Dk6wCC9dFpNHe7NW5+CQs=;
        b=KGPG6WmBVE4UNNKvJ0xOkG1D41ze1iwy4MKZoHXuY3zHIbzkGmGFNvKUqSQbAKDnbP
         /mJ/+GwW8Gv5Gu1aFPaZMioh5oVEPXDAxOApsoSPebOqPYrmlXMOVnKJ9PuwNKn5cCih
         vvxWlAxjzUIiYT+B8+QPEhteWDW7PKz1pthhKT+2q1ZsZ8SA9R5MHDwu5NTdaAnM+6/f
         qzgX5/Y8mOOk1v4RpfWXTezVWjmiu92u6KLHgHkGrSezY8D9aN0prqtanmgnQ5TfZWGd
         +V1lrihxNzIro7ZpwOwFF2bV9751bM5P+Rg9KWfDHXusTy5irZyIhMgjeS8cjX8vp/FG
         6Y2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k3HuUhEK30HmFxjZYjHch/Dk6wCC9dFpNHe7NW5+CQs=;
        b=H4C0Wpme9dLRMNaIxvwwNoBgcEiAwg43PdJvH6wXcweap0OMpRPeLpKw1UexYoRgyv
         OE12o/UleaNVH8Adgy14Om463LgR1xg1kNyQL/bj3NSEy9lsHsGhpQBJgHAaMxnIJmVv
         4+j2SmktR3FXAXpuRZp+n52KRyzkzIePho8YJL+QH0+xOnREZ7cORzyGommGWGjuyHUu
         qqi2wbT11HT0PxcACn1qk2slQJUGvucNfIql20wCnQT+iZ7uG/n9+pOsH6eChzPhatuy
         1HdGiny/cGIekvV+4huuQHpYnubwF0n4LdL1ZXQSzsUyUpQORUhnvHeiREolINoLLpXn
         QtTA==
X-Gm-Message-State: APjAAAUJQLm5luOeAUh7uRWm0PsFCaNcN79936BM7uMj1aW0CvXGS5QA
	RvUk1TGYgIamUnusMKm3A5M=
X-Google-Smtp-Source: APXvYqywPmWqfjyBYRKbE/gmaa6OPQmHV4Or/67HsFT97fUrZ2FLU9/MOnsAeZwrG1KdP5CMwt6UeQ==
X-Received: by 2002:a0c:8605:: with SMTP id p5mr4775405qva.109.1579211121835;
        Thu, 16 Jan 2020 13:45:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5543:: with SMTP id v3ls4451829qvy.7.gmail; Thu, 16 Jan
 2020 13:45:21 -0800 (PST)
X-Received: by 2002:a0c:e58a:: with SMTP id t10mr4779023qvm.161.1579211121365;
        Thu, 16 Jan 2020 13:45:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579211121; cv=none;
        d=google.com; s=arc-20160816;
        b=aDt6CIpOWrZ1N3DNi2gkVSyAY0bmhKcDuVL2Cia+0McZIwLB8wrSXm1Z8AnPs9miiI
         pnrmJcAR6boQkSlkkoYhMWS1gdRbv1TWUQbkfD35rjYspYgOO2psfW2jh8ULzDp3Rax4
         47MDq6aiFVbLdoPFuUV5/w891iB3lx+dBgg6d8OJ+L8mfB7zHtUB9keRDM8i3ODXNGh/
         GpxFKq1zol9rN3huZz71xIORtun1AQlwC+W7BofqSMLg56jLdNTAxU/v0bdoy8t9MSwk
         uc6jK4Dzx7J0Qgv9hTc8C3h9h4Lf8ecjNOHaY1M8W6vweaU8puYL6XuCCl0x6TUVoRUa
         ncHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tkSAt1Pw50rKdG/hn5morljVtZomrkNl/2z5xne6PRw=;
        b=DUqoAli5ICl6KM/HJHelAcjvhxT7yoQYtNypHVyqyBT6Nfz469Nt0Pdq8raoNCQ12q
         TvnpWty4h1R3Ert+ONG6NwEf2rt8m76n7LU1/EsIJ6azWM9LmvM2FTgdHFHK/O1RRrzn
         xvO+wu1YgY0xv/f5sIQ8VeHvH37gvV3TXpnOUYOcBDyPf6Zg1GphxLjCog/O731QRclU
         pATZGpsFm0+RyMNLf9ei4aVE20Mnqb3iMkDEDsZMSyyeVbyaCRODVy8VlNvp/zpFQ6+s
         L9NIB+CLCnCL2y/TIc9JEBOwfsN6FbAsuchC9IXqXb1ETr+rNSnM+CIXxquDxABvUEiZ
         UsVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tYITaZrs;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com. [2607:f8b0:4864:20::941])
        by gmr-mx.google.com with ESMTPS id o36si1091615qto.4.2020.01.16.13.45.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 13:45:21 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) client-ip=2607:f8b0:4864:20::941;
Received: by mail-ua1-x941.google.com with SMTP id l6so8207928uap.13
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 13:45:21 -0800 (PST)
X-Received: by 2002:ab0:618a:: with SMTP id h10mr19510791uan.53.1579211120670;
 Thu, 16 Jan 2020 13:45:20 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com> <20191206221351.38241-9-samitolvanen@google.com>
 <20200116173950.GB21396@willie-the-truck>
In-Reply-To: <20200116173950.GB21396@willie-the-truck>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Jan 2020 13:45:09 -0800
Message-ID: <CABCJKuduRyBBr1qZQj35nMCOLv3my22wRQXb4-i39n07qdL4Yg@mail.gmail.com>
Subject: Re: [PATCH v6 08/15] arm64: disable function graph tracing with SCS
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Marc Zyngier <maz@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tYITaZrs;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941
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

On Thu, Jan 16, 2020 at 9:39 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, Dec 06, 2019 at 02:13:44PM -0800, Sami Tolvanen wrote:
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index b1b4476ddb83..49e5f94ff4af 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -149,7 +149,7 @@ config ARM64
> >       select HAVE_FTRACE_MCOUNT_RECORD
> >       select HAVE_FUNCTION_TRACER
> >       select HAVE_FUNCTION_ERROR_INJECTION
> > -     select HAVE_FUNCTION_GRAPH_TRACER
> > +     select HAVE_FUNCTION_GRAPH_TRACER if !SHADOW_CALL_STACK
> >       select HAVE_GCC_PLUGINS
> >       select HAVE_HW_BREAKPOINT if PERF_EVENTS
> >       select HAVE_IRQ_TIME_ACCOUNTING
>
> I think this is the wrong way around, as we support the graph tracer
> today and so I think SHADOW_CALL_STACK should depend on !GRAPH_TRACER
> and possibly even EXPERT until this is resolved.

Sure, sounds reasonable. I'll change this in the next version.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuduRyBBr1qZQj35nMCOLv3my22wRQXb4-i39n07qdL4Yg%40mail.gmail.com.
