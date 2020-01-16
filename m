Return-Path: <clang-built-linux+bncBC2ORX645YPRB3NYQPYQKGQEF2ZXXFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id B806E13FBCA
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 22:58:06 +0100 (CET)
Received: by mail-vs1-xe38.google.com with SMTP id x15sf2245183vsq.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 13:58:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579211885; cv=pass;
        d=google.com; s=arc-20160816;
        b=nA+j5dvpOXGPePWC11mJs9+yv0Q2v/+66KwYLyx8HlMiaeRf09F9wsWIjN7HcALKRq
         1qDex3b4WtNcgDfc6B4nIxdQlyL6tJbSUfUoaR25xQ6nOb2OlifGzCNhspqbN1UCKhlJ
         Rteyc9GDMtqLeZ9pt3lE4AKNTZQSxT+AogNKecAQRrAKC3p+Mxz3JvwVTiICzqozQ+zh
         4KtV3Tqp5DDNVQMrDItwkNgCdLAK54wC165mcDu88kG5t2jNERa1Kihb/hBsQrCYr2dj
         mNJdvBEzLG2URTkuzYrXF8ahVCL2h9AJQ640vvMVmcSDvPEugoglZcd9Kn/vxrMRHVBl
         30zQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fz0uCa+5qamdGWnKYCXGIhIuPV7eih5MDXNfVPUOBjk=;
        b=Egu7cGw0SHbaLPQrO6+4e9aWCLsg1euBKQjB/S3bihlNCUOQ8rwRZpN0Or9Fk+FRoW
         tldPsVOpfKAArp4AKccpNJgiuDAMRwVRme0fThvBPHe1HUN3HLNOr7ANAlrLIgsY5HIW
         sJuDksUAEaaDbt141IxcVEZkBKbaGGt6sMOaEJddXqR1m6T3UQeDuR6qziqriR8mTvtt
         Nw9l/wyP8pYqhQPEek8loIx9hNxz3dnYIOzVkdwpkrHs8v4OnyKt9hzvdvtuiOvT3niT
         PlbiNv7sXC6IPqKns5HHz8ySiXkk+7OseHoV3YtiumENNGAcjEHVKYUEjznbEyybfcJL
         ceTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VNVb2CG8;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fz0uCa+5qamdGWnKYCXGIhIuPV7eih5MDXNfVPUOBjk=;
        b=JNOO1DtOMNX5U0AM1K5GOCaJY1TBFgWlVnXmzwYszrLgf8/0oyHCBQo8eK3q3XvxoE
         Z+C5ZR7G+jQq5arWNqoUe3DiwCpzivIMC8qnWLlYpHV8V2G1saja2seXCh4y1oKrXPyO
         Ltlj7z4xRWPyyugSCHfGltCgyVce15a0Vq7xFIoX0FxmTntZwIB8dTp2VB3953fWH4q2
         RJ0PXP1DitLoRktoqynWTQwcdXVHm/Q1waouqY16Z+5w2IWng3ep4AexnFpim+IirtNX
         nsFxPJgj3vdeVkw8OLYv/XEI8ngsw55P7mIpHX0z8eSQiIw4U7Pw32gN6DZu6JZBLlwk
         hCJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fz0uCa+5qamdGWnKYCXGIhIuPV7eih5MDXNfVPUOBjk=;
        b=kvaYXaAF/XXxVz9/Cogf304eeed2/GRDU8rFlQLqk+kMXLrF82/Ju9HJjKi3k4Up/p
         btViLIm5wTjtCbkadPJVJWYOQm8bNx19H40Y6A6OB6C9GklgVpahlZ9dBt2lzYZV3psv
         +utscUxOI8Fkzd3iMBu+BnYiZSh/F0G/qxsE3l7mxUkFFdftD3289JQ11wTqgAo5kR1Q
         TKsuhWhV7TwoaxxQgIabO++oWlY8JkUmvw0jEdpFtTD93wGWE4PTKCTZlKA0HZzlSD1h
         IFfR84TGYvEhduJxv23q+9f8uDK01fSl5+T0D0gLAWV4iSQc5ZytLZ116bKrT+P4OudU
         BqsQ==
X-Gm-Message-State: APjAAAV+/nRcUclBDVjwa2zYcGKHbiwgNqlA54uICLwtj/B+hkjq1AAO
	LiTeGq13A1rIeKBvlSnKRyw=
X-Google-Smtp-Source: APXvYqyN34HW7d4/kxasjSLrfbUZldOJCbMkrrjiDBPBghkV/gXoKXJbieClrRelIeJ57zWvd2MwCg==
X-Received: by 2002:a05:6102:20ca:: with SMTP id i10mr3064771vsr.105.1579211885691;
        Thu, 16 Jan 2020 13:58:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:201d:: with SMTP id p29ls991922vsr.5.gmail; Thu, 16
 Jan 2020 13:58:05 -0800 (PST)
X-Received: by 2002:a67:2fc4:: with SMTP id v187mr3153445vsv.186.1579211885296;
        Thu, 16 Jan 2020 13:58:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579211885; cv=none;
        d=google.com; s=arc-20160816;
        b=qolNYHoB/RG9ZFIGh88jg5jMZ5yYlYBK8/esmdECcoGPgv6Cr9IdNYFYZwj5uaKR86
         nHnDf71BIF72FWRovA1vnvgV26ycdmdK1fFb4iK53uEizRxROBukeo+aXrYcD6apChHR
         VHaPjuIoulHCg6BUkAuDgqfyayLtkakoog8uRvi6+OhRaA0g/zS58Cw85WgFQRr+HrWk
         S7RkpL6bFvBWs8uBQWZaLRMhVdKM/dgi5MjB5O0AEAuHYrzu9XrC9VXtPyehHjLCfd7S
         N9lceYWYJQMaTQyS578xeaPRo+CEXOVK9MQVSc75AiJNv01zz7bNYnblCCmONWg6w/DN
         iz+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=90kSKrsPpbCluN0U4RDiVNxyzvDrsXuzgr4VAEgKFuc=;
        b=tq9Q44TnMegIxZVADkuQM6Rur7cngE3eRf8Ed0jDkubHh9DYu4ABF3RUAKLOIi+iEe
         u8PI/SqD0t/OdTw6iMxcHGspdHvoUWGmkvkv5f3FYPtCymfU0ECQ61z2HMoyXbwjpF9r
         Q7EcJ0tvoKpDQJrISjIkjSE1tEKS9njPqRY87WH8EdhLS8uLff/VSOXpnkSsKIMA4Jfm
         agMoWwm4d8frwqr6LoIB7zcnhTB07HgkA/zLyy8jVhJrTlPjOMhPwtyVn4R9LircIO0E
         PJFGpCa+M8YAeau4sOh6ZFFAMHfvyZPESXKIdpxYcsui29RdrcuC3aiIF3PDOR9UkOUk
         UqLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VNVb2CG8;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id t76si1016841vkb.1.2020.01.16.13.58.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 13:58:05 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Received: by mail-vs1-xe44.google.com with SMTP id u14so13676195vsu.3
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 13:58:05 -0800 (PST)
X-Received: by 2002:a67:ae43:: with SMTP id u3mr3413809vsh.44.1579211884786;
 Thu, 16 Jan 2020 13:58:04 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com> <20191206221351.38241-15-samitolvanen@google.com>
 <20200116182414.GC22420@willie-the-truck>
In-Reply-To: <20200116182414.GC22420@willie-the-truck>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Jan 2020 13:57:53 -0800
Message-ID: <CABCJKucnitMPUv+NhZu4bscz9qs1qB9TXR1OP-ychFO0LQ4v_g@mail.gmail.com>
Subject: Re: [PATCH v6 14/15] arm64: implement Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=VNVb2CG8;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44
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

On Thu, Jan 16, 2020 at 10:24 AM Will Deacon <will@kernel.org> wrote:
> >       .macro  irq_stack_entry
> >       mov     x19, sp                 // preserve the original sp
> > +#ifdef CONFIG_SHADOW_CALL_STACK
> > +     mov     x20, x18                // preserve the original shadow stack
> > +#endif
>
> Hmm, not sure about corrupting x20 here. Doesn't it hold the PMR value from
> kernel_entry?

You're right, and it's used in el1_irq after irq_handler if
CONFIG_ARM64_PSEUDO_NMI is enabled. Thanks for pointing this out.
Looks like one of x24-x29 should be safe here, and the comment needs
to be updated to explain why x20-x23 shouldn't be corrupted.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucnitMPUv%2BNhZu4bscz9qs1qB9TXR1OP-ychFO0LQ4v_g%40mail.gmail.com.
