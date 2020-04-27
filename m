Return-Path: <clang-built-linux+bncBDRZHGH43YJRB7MZTT2QKGQEMDEGGAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5215F1BAA5E
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 18:49:02 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id f81sf95427wmf.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 09:49:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588006142; cv=pass;
        d=google.com; s=arc-20160816;
        b=QDH6yBLIdlSR5517auglH3O4bGrxZPrJG02DB/ABsnGpGyXIxf68WHl5oMjuv2OFvo
         AdBB2jwaLhASJ8EnEa2XNKNq+IIVeJ+8+KXjlOCrT780PyiWwyIM9r9+KFvUli1H0TYQ
         d2jrT5Y9ZDrbH9yG/6lIq44VoVkJJ91bKvKAiibiCf0yWk+CCw+xio1sjGuXU9nIZlD6
         fQNyz4/w3+vqY4Wes8yJiT3iG7mU1uvcRaMOXPicSAD62hgvVTRk/2JHOsZDfh625sRl
         +02aVAgqyk72MPfXP7ZQduIE5sjlBl/tPVVeGQkAMKIJRsPiV0tEB0JdUgpGjdNZtwNr
         txtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=GgzPkLi1SeGOw4YfLASsaa/3hJyxisuRAyxB8LmnYZQ=;
        b=nqwqgIeElP6iYoBFSI1NXDYTSlq90G+l83pK1lO1+OxfZ8CwVPQvqc7Ga8g1S/z6dC
         s5iKOQJJVALNLZb5W8f5aLgwJu5QwhJEMSPBTGFog99gxUKuHL1u3cfiCisYtcKohZUk
         2Doc5hU9TtaipVkXODUd4PnrZlMbwHt0wCEDTq9IDmJSM8RHZlj6CSFy/ZskqHFWFVmy
         hNrjkPJHwGt03AtEzIaTIbCXpXfSKxmk3wqS02vs79s7j+aCw1jVoJwDPvEd1jZ4hrIy
         Blyj0oD9SWQcSl1Xl+eUQoZf0FbF8i3IVT3IrRQJietaR2hV3baZ7rj1tUFNHgEW0POX
         L9NQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GRK7TdGO;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GgzPkLi1SeGOw4YfLASsaa/3hJyxisuRAyxB8LmnYZQ=;
        b=nBsxFj8LL0qjjmvP8b3AMrTQRaYS/WAIhd8sFO5p5Hkc80sq6t+khgAh49lOxN9nk5
         FJEG7EQ9Sx+ccb5ApD4U0S4MoofxzIXlY8rwJ+kl+J21MDNcxCBg6TKVpKqi6XtSRT3q
         49FM9tclikzI/t12nXPActSG8mbdtj0RTGO98FdfRVBmrz4p5Ld7BTUL6piVA0mZNaaJ
         7Uj2UOUDEywdtmC1+KIm6zi1rTbuSOJ3QXrEyv+B2M51lclKuBjPQ+H6Z4xtnsfSmVHF
         0m6C81DeaYsupquFtTXnXz5Oz4xppes531yB1hQ7Di/PyXZIXbcLiwPtYT93AosN/u91
         C4DA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GgzPkLi1SeGOw4YfLASsaa/3hJyxisuRAyxB8LmnYZQ=;
        b=sMq/AxLr3oQDdOetGjl2TMxgT7H7TpDyoAVxftw8sj9qxivb3c4yXVnw5rzPMV+hTT
         t0UHQPDFAAPcTPUYGBfeHN6NDzKUmptyutcMg8qsTJI7IBP8/JLePGO7Ai4d2FrU8T74
         AMlRmndiaklNPG+WOIYDSvcw07I3Xfk12yJMb2g8ElTvwh46E6nOXDOHX8ORBoLIaEjn
         fSdAy3s2q8ciQlZFbzF0BFoR9KhJR/ENMnLQ7GKxAfAmxsw+PNpls+62NvRcD/gonLqJ
         qUy7zB08duhFehZ2Z60LHuYuqiewJzjv+o1G/zKOo8sT4P5Ek1HBviHHDjYrpSXSMYqU
         KKEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GgzPkLi1SeGOw4YfLASsaa/3hJyxisuRAyxB8LmnYZQ=;
        b=EQXuJvpFARu7a9oXAq5gEnf86Dw2lq4rOhlZ1HhxCEPltetS55OZbAxgpKQ2tLacXv
         XOLHFE/NG18yxfimEJDNDU2POBq7jYIfROa7o5efJjD2Twkk1Xihqu5P+8qAO433C0To
         4CKO5b9UkcRjxnEgKvCWHKh8HCatuyjKUy0Lv1JmFXux78KZaJUoaVbFk61+/m+R9em5
         lCJm27dN+sPFgGxqrWm7tE2TKQMtkwEELe2a2QgzzkwX1NHNaP64tfh0WgygSTTN3sYy
         Cj0PeCxbMEL8DTi7yce3k5WxuPfCJrGRYg932KTmOVYV/C71BN0UdyCfuWtb5GU6UG7r
         qJPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubjmENLYMsAEOLYSKO2cNT09dh0mPzMKdZa+VO+xkSkicbc7i6j
	ioMAuyfavhkB55yfVmz84n4=
X-Google-Smtp-Source: APiQypLaEHDroqU4cZeWR/3JyfmQ6c68epEiGCUDSvxjMgjFnDfbgWvLzKrQydf1HhbV7bnaxnUB5A==
X-Received: by 2002:adf:ee05:: with SMTP id y5mr27217671wrn.176.1588006141990;
        Mon, 27 Apr 2020 09:49:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6cc7:: with SMTP id c7ls23070298wrc.8.gmail; Mon, 27 Apr
 2020 09:49:01 -0700 (PDT)
X-Received: by 2002:adf:e5c8:: with SMTP id a8mr30806023wrn.56.1588006141442;
        Mon, 27 Apr 2020 09:49:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588006141; cv=none;
        d=google.com; s=arc-20160816;
        b=ED19uA4ntTjhOlCdAEFrTqJEFlo9kga8GmqOemxShKTETlYciig7AGax1d944ZXHk3
         BsdXZceUCbOQP83SOuIDz16MuBiqyzk6r++zilGRlo5CK6LIXMhLqileMJEhLQpw9wcP
         xbfVZmGSn33fjNaPDggBniDrb0g886tcFiJeVz8wM0O2L6tBAUAUH9PeKMgj6YGh0GlL
         /Z6FXgF5IroRNcsNyvaTfhjh64bOo3qIrHPvnL0KdZ/V8UqgKlOp+HSmlEecm/xw/zh1
         K0M4MOG7qLnNtIuPSUSZohaStzOCO/BiNRcli8uN2oKvRXtogo0Q6f2k0P0dQjw/ybZ9
         eucg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DggTYojfEhSzNZzSt4p++E5JdlZHCZXJc0ROh9SzVlM=;
        b=U+yttG7KSjJQUvD+043L4VebW6v2BORVJ7/m9F9tj801zpWYUTCALEVw7IF6cNiPYp
         bYPHMHhdbvtKSPkrWgn5OUavm8eUg+K+fQc5KBLwx9ars9iX9VyWNTHZsJb1mMEjHtkd
         G9B4urpuEv4XedEMUY2BsXBP0hv5cT++21VX5sJM/4vOz4B1kIb9PU3wt7ytHd8uyPiF
         aEUNbXZHWJdDngns+veXWg5gBhZWAWxshjBdHfBVyeVfmSmaDXOH/LdSTFzxqbn3qI2L
         eTf8CgzY0TI94Z5Y82LBgQhrkMvi68IIZ5/7OAp6PyTJpMJFkYl2xI8/BVQeF/P2CeGx
         0iNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GRK7TdGO;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id u15si797765wru.2.2020.04.27.09.49.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 09:49:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id l19so18327625lje.10
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 09:49:01 -0700 (PDT)
X-Received: by 2002:a2e:7613:: with SMTP id r19mr4909107ljc.29.1588006140845;
 Mon, 27 Apr 2020 09:49:00 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com> <20200427160018.243569-2-samitolvanen@google.com>
In-Reply-To: <20200427160018.243569-2-samitolvanen@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 27 Apr 2020 18:48:49 +0200
Message-ID: <CANiq72=vvRcjWCON7zbaCTxLA2wP_-5zrnLyymR4g9b1gwc5kg@mail.gmail.com>
Subject: Re: [PATCH v13 01/12] add support for Clang's Shadow Call Stack (SCS)
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GRK7TdGO;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Apr 27, 2020 at 6:00 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index 333a6695a918..18fc4d29ef27 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -42,3 +42,9 @@
>   * compilers, like ICC.
>   */
>  #define barrier() __asm__ __volatile__("" : : : "memory")
> +
> +#if __has_feature(shadow_call_stack)
> +# define __noscs       __attribute__((__no_sanitize__("shadow-call-stack")))
> +#else
> +# define __noscs
> +#endif

Can we remove the `#else` branch? compiler_types.h [*] has to care
anyway about that case for other compilers anyway, no?

> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index e970f97a7fcb..97b62f47a80d 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -193,6 +193,10 @@ struct ftrace_likely_data {
>  # define randomized_struct_fields_end
>  #endif
>
> +#ifndef __noscs
> +# define __noscs
> +#endif

[*] Here

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DvvRcjWCON7zbaCTxLA2wP_-5zrnLyymR4g9b1gwc5kg%40mail.gmail.com.
