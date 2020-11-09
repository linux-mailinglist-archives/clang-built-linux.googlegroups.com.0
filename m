Return-Path: <clang-built-linux+bncBD63HSEZTUIBBTGYU36QKGQENEU6D6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D952AC65C
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Nov 2020 21:53:33 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id s9sf1332134qks.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 12:53:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604955213; cv=pass;
        d=google.com; s=arc-20160816;
        b=jJO/JqYjFXRV9TDablS6tcmSYbw5JIqCUB16v5r3iqE2V9H3KC+592OD4rxNKJkngN
         /H450bEYgkhlStKed3/13aMTRRtE1abAbWBu8DewJTdNrndQyPqLA9iNFrix22hwNez/
         L7vGityJw1HxjGoRGpeeH4Dpn4UaQTJ4btv3bU8vZrpf9C513cFUPcSKBkkJAgMJXewH
         B5nH8TiOfLIpMZ/NztjlXCEjiabpRDN6wgImMjXK35qGtFEVUF4tTtIx6yCIWMao88UZ
         C25ASPQfsHzGimdW/SAORnhhqHlRKAEdCQlvr7kiFPV35f6+pjEI+6fgvceikMMoumM7
         PRSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=fiUjegW/jIUQqFtEc/pXJfr+W66HMsLyOwQRljgTy1g=;
        b=MXZdD5N7vozvD/Xz6z1V/NCc7N8uxQqA3VZBVp7qLlDPdJbwFoAtpTa1yDjUblX+Xm
         /r820VFdEUSMNqZssUdnTR5RApLT3vziHq4oZ4wkRfaWnE5WaMjiRHfesmHhUlnj6if1
         Fkqs/9/Oo3PE7QWPDejaLmB8ewAtYGIq6mV7seuEMGfDJB7ffSya0P0alGdxvuyth4Q4
         u6qRJV3gwDiSYz2rMw6zAw6sFWNkQ1WhjyDIDKGeeP5sS41IcGyHDKi4m19SM5DZBwHg
         aqiFoyLzAy7gmJcQVEvgMP2TZTqJWBa1YgV650yU437Q2vfUPi7tqOcdjizXfS/D41up
         UGDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dAyxD+4X;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fiUjegW/jIUQqFtEc/pXJfr+W66HMsLyOwQRljgTy1g=;
        b=j00Q5J22PeL+kgXRWzArAwUnJpCOAmtK6pX7hCZgMPfGcIHmH0u86u5DAnTE/5a5Py
         fMVCHiT5nESdMZlqjKjh/racND9Li1qlC2RV0/aBlMZRZG7yY/5yc+gnn0uKDEdJMCSf
         M4oCDjCIMchR8FSn4jjTGinGOEhGRchdnalc8F6zSPT7pwp5EWOvrLA9KSrFMEJue0jZ
         ZTdCpVrMVHkRou+kFVXaR+B5O3lJ4cvb98qifID7YUmBVv2+IXd2M2CyXuqM9zaTptUQ
         k/aZ3jibJYsf3CXfBpxcni7cA9j2A1c381U9hAvPU0/98Dj+Z70w73A9njuARbXJpHBb
         RcOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fiUjegW/jIUQqFtEc/pXJfr+W66HMsLyOwQRljgTy1g=;
        b=KEphj0lq82V+jdVTkH3pvzpFMJDY/owg6+KIjG85yvDy8RXnyM/kJns4Nl3JG44uvI
         RdJYlByFygL1IojblQF48OBrjhtnDdQZ4Wm6dg69u9gZs7Ko6U9DadjPIBN9PGgNL32y
         ER65ODi91eBg0SqvC1V0LdDoMgrY47OABIDU5Hn/MB59xm3oKfnzsLebI/fMA4x55U3u
         lRcotu9bVDAKqx3alfXUnWs5akVXJsOY0AuJbBwu0Eb3cotSHSo5WoWqbP4bv6H2Vfa8
         YKYr4lme89a+k5rel73Y3IRT7SQu1wSe7cB0tyuC13TzSR/dAEqSmP00TNnjYF6801KN
         yqkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LhdpOZr2kHYktuVjn6Lx5ZTGGAPSQHcnFFkZ0hiQHZSYy0zOF
	GMzPZ2ahZnF9q1PW0E4T+CM=
X-Google-Smtp-Source: ABdhPJy23RZNW9BdvgTIQrOBp0avUcIiJnd7TFcd0CqOid1z0+1UBK/wj0qWLPXsNlZn8BBlyTmWEg==
X-Received: by 2002:a37:47d6:: with SMTP id u205mr9968082qka.19.1604955212824;
        Mon, 09 Nov 2020 12:53:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:152:: with SMTP id x18ls2166169qvs.10.gmail; Mon,
 09 Nov 2020 12:53:32 -0800 (PST)
X-Received: by 2002:a0c:b525:: with SMTP id d37mr16627474qve.31.1604955212372;
        Mon, 09 Nov 2020 12:53:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604955212; cv=none;
        d=google.com; s=arc-20160816;
        b=ukhZf78Gw03kiBYlDJYc8H1R8Hok8JCNE60WlZZfGEJGC+tu1lAX1+1WXFHmjdhrwQ
         QJeQpO0+flju++pFcUE8ZqXLo4bZ8zUViU6SccZ0Bb9uU42XGIJBTXNcX3ThriMe9PaN
         fY6ngddGhqohfn0QOSekSm5ThfuY8+OSWitzT270qCBca78W8jWrMgrEcRCuA3PjXkyR
         7Zbt2vjNVNmdugeBf6YezNwgVZ+IpaDJ9rn3w9TVMpW3CHluDknLTMJVxSAc17gNj/Um
         lMEPvfuLcSjSMHCENofJb0LpEueks3gIw2VJHNTJ3zPvb63dLxfEFSMvnJkEwRyLCfr7
         FMGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OZzePb48VzNdcq7Abqou75be+BXciTes0WD04/kIxWg=;
        b=HN/bzIDD/k0JkzWmkMEC0+Y8WAQzsZRPvUKY46OeJhxTv7IXNBslXIeh4zSs2U3xgL
         vS9XXb7Syd6UTrHSujGM193vTh78gevWt780tXWIQyEbNIvK3e/G0RSZ6ojoQT1Ld6nf
         ENgZLmlpWIZpmfE5xacR2k6WJS6hsZ85V/7XNwNbfKa1pUSatze1ROKauZI/21FlUqjw
         j+yDoNBLJgIaXfC5QXHSIb+nfKJDMOWYE2M5d93EYoI9awDzoESo0wMhK1JoTl7H2n+4
         ugmZa4YjcKg+aXjPjbYy7JDdl1pjb3MnfX92D+9ZB5B8FM6YkUtvd4k8AI1oxvvqn2dX
         shtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dAyxD+4X;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z205si637535qkb.1.2020.11.09.12.53.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Nov 2020 12:53:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1B4C520E65
	for <clang-built-linux@googlegroups.com>; Mon,  9 Nov 2020 20:53:31 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id 79so10320650otc.7
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 12:53:31 -0800 (PST)
X-Received: by 2002:a9d:62c1:: with SMTP id z1mr11316465otk.108.1604955210439;
 Mon, 09 Nov 2020 12:53:30 -0800 (PST)
MIME-Version: 1.0
References: <20201109205155.1207545-1-ndesaulniers@google.com>
In-Reply-To: <20201109205155.1207545-1-ndesaulniers@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 9 Nov 2020 21:53:18 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEoSF7UXNjJS4A6VtDVbpe7kfqxdZkMS3Sxf1Sr=PvdLA@mail.gmail.com>
Message-ID: <CAMj1kXEoSF7UXNjJS4A6VtDVbpe7kfqxdZkMS3Sxf1Sr=PvdLA@mail.gmail.com>
Subject: Re: [PATCH] ARM: decompressor: avoid ADRL pseudo-instruction
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jian Cai <jiancai@google.com>, Russell King <linux@armlinux.org.uk>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nicolas Pitre <nico@fluxnic.net>, 
	Linus Walleij <linus.walleij@linaro.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=dAyxD+4X;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 9 Nov 2020 at 21:52, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> As Ard notes in
> commit 54781938ec34 ("crypto: arm/sha256-neon - avoid ADRL pseudo
> instruction")
> commit 0f5e8323777b ("crypto: arm/sha512-neon - avoid ADRL pseudo
> instruction")
>
>   The ADRL pseudo instruction is not an architectural construct, but a
>   convenience macro that was supported by the ARM proprietary assembler
>   and adopted by binutils GAS as well, but only when assembling in 32-bit
>   ARM mode. Therefore, it can only be used in assembler code that is known
>   to assemble in ARM mode only, but as it turns out, the Clang assembler
>   does not implement ADRL at all, and so it is better to get rid of it
>   entirely.
>
>   So replace the ADRL instruction with a ADR instruction that refers to
>   a nearer symbol, and apply the delta explicitly using an additional
>   instruction.
>
> We can use the same technique to generate the same offset. It looks like
> the ADRL pseudo instruction assembles to two SUB instructions in this
> case. Because the largest immediate operand that can be specified for
> this instruction is 0x400, and the distance between the reference and
> the symbol are larger than that, we need to use an intermediary symbol
> (cache_off in this case) to calculate the full range.
>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Suggested-by: Jian Cai <jiancai@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/arm/boot/compressed/head.S | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> index 2e04ec5b5446..b3eac6f9a709 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -1440,7 +1440,9 @@ ENTRY(efi_enter_kernel)
>                 mov     r4, r0                  @ preserve image base
>                 mov     r8, r1                  @ preserve DT pointer
>
> - ARM(          adrl    r0, call_cache_fn       )
> + ARM(          sub     r0, pc, #.L__efi_enter_kernel-cache_off )
> + ARM(          sub     r0, r0, #cache_off-call_cache_fn        )
> +.L__efi_enter_kernel:
>   THUMB(                adr     r0, call_cache_fn       )
>                 adr     r1, 0f                  @ clean the region of code we
>                 bl      cache_clean_flush       @ may run with the MMU off
> --
> 2.29.2.222.g5d2a92d10f8-goog
>

This is already fixed in Russell's for-next tree.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEoSF7UXNjJS4A6VtDVbpe7kfqxdZkMS3Sxf1Sr%3DPvdLA%40mail.gmail.com.
