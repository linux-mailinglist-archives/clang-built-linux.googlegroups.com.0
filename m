Return-Path: <clang-built-linux+bncBCQJP74GSUDRBZWTZL4AKGQE7PIU2YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFDC2249B6
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 09:51:03 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id j198sf4415129vkc.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 00:51:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595058663; cv=pass;
        d=google.com; s=arc-20160816;
        b=HxdMZRWJ9gB4NmeZYHR/DpiEQjmxNtWjIGHhvRwwvvdrcJAin1Ovsfelrk+KKSgFoj
         h3XxgdwKnZNx8j+R6BtYyTKWjRAmV36uVLCPgDOhPGfcltelHh98ZnQGoxbDj5ahhtrZ
         XceXGXm5xlG9Eq2Os8dzMPzPBQThgL26Qq9t+EBHeEj8UvMO3MiwF1lx/TvuDYtDoUyl
         oHFfpoCRUc/lHQTDe3FW/PYExnFsrAduA3s6eQQy5AEjrDyF+DiNZCim4jqE1V2IDHjy
         qc6XN/+EiPdGbA/CTwGOO0ofOdCa6MgyNMoBsMXjFERSe9He/SdnjnTMC+/kE4DwUer9
         K6Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=7nbcEO/Nw5WcohJ0rKu/9Uywwev/Ij1u/hAdcYl+NfI=;
        b=ajtCw0iHtLPCY5uBUImmGPeYNrhc1L1q1Fvrn6pE37AsUOH/rtd0tCYHWM8CBBA5f+
         DAalhkCg78NwlsYIYWZtryaL0Vv3mpcDUsv7fnKQJUF3Y+5K/0U4O2PIyld/3DC49P7c
         5SPIMplxeJyPSDDcEV1RabJbLS2/qZvI6ZHt+9usbNlbk886k0V5p05rwqPynWOf0R7y
         WdedBDKwabnqFnE1aNLrHrmTTNGpVv0ZFYCHfiyQZdScXlc1W3n0AaAbtx19sqxfVVeA
         VNDrLMxaJHpSZfraDiCsrwsBu5qUUBzVnDBf6fPCEHz8HCkLAgq4bC/XGRoBbX3zqf7s
         JvjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.194 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7nbcEO/Nw5WcohJ0rKu/9Uywwev/Ij1u/hAdcYl+NfI=;
        b=LbkYqTxA14SxAKXSI6X1vG5N6cQO50E5vm6b1sdoper7mptVVycE/xCI+X0LYFoPYf
         sERUCyrQ41PJ784jQEy6s/FRtp2DeIl/USwbRssm+Rs1dTIdmVAkdSozs16n7WH+Hcgh
         Nl+6GQXhdRJ+3xD7tp8O1m2zAZEm7orxno6Pil0dfhXKv0T8k3TBGbB2Isj1WyFQQMR5
         XSpDXAb+J01cqKMnaPX/s2L1Wy2NU6kfeMvvNN1oQgtAWaVv3GAFJr3JU36PYrovE9LB
         tYGM6MofyINlWlIn6HpxtzzfKmLg9/ggWPuYQFeCodog/5AZHCqVksWCTJHiLpayAx1b
         4ziA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7nbcEO/Nw5WcohJ0rKu/9Uywwev/Ij1u/hAdcYl+NfI=;
        b=OKT2Aqg8iqTeINmBoWHImFEfCmoJlPsYAvkHtG0bzK2Q88wOofBm947WeXtqiLJb1X
         LVDrtXvhCB5qhWcXr/FVRJq4IFygl4BvKNOJNLxwEsr8kikwEZq5vhaBsuGJJf9y3odN
         34MaSiJrurGnVdvmpRQbRgxaAXqmtXm9p9NkXO72FgSOx2UcCLDtPXpXEOVJFnUdqztQ
         +nDz/tQsrXVXKsDGpykaTbTxzLxIBMebPxKXU/Y9uz3YITpHPUc/MWnk4nOaiJB8IcfA
         EogINWWT6Eqo+bZnRjqidFGh0TmpCOuFGjoFxVtpKWONnBID5LLYnDd/DRvYdPrlrauv
         CAiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HUv0ra0nnvWxxlKvjTWE423qLdK62jkZvFQayZjoegzQ5Cc19
	UP8RWtx2jsfvz+cGgjfFT3M=
X-Google-Smtp-Source: ABdhPJwW4EsopFZqKth/IOuTT6Tny8Zd0vQl+ox6Ld5XebRM/7SDJfK5romLO4L1txCOP7oEp6gmKQ==
X-Received: by 2002:ab0:5963:: with SMTP id o32mr9784964uad.142.1595058662836;
        Sat, 18 Jul 2020 00:51:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2b0c:: with SMTP id e12ls117132uar.9.gmail; Sat, 18 Jul
 2020 00:51:02 -0700 (PDT)
X-Received: by 2002:ab0:60ca:: with SMTP id g10mr9639434uam.26.1595058662226;
        Sat, 18 Jul 2020 00:51:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595058662; cv=none;
        d=google.com; s=arc-20160816;
        b=VCvEYxr+bstyNMeUHNH3czVcOcY8EfaP/ax0wrBYGaWfmBq+B2Kz7qCyCpuTkKOipE
         Ns5pB+vTtahLgmPOXuuUaueMKoh0j2BA3kCZumAyC1XgqUXOUcYTfPyoUSUV/lRCwXeY
         eu//lwF5swX0Czseg6RMSxSzgf+ju270lcf0xKpvhDFm/AWh3M+hWAfBFri3uUwb/qQA
         4x0IG2Rdv1oj+60Y8qvdcC21ER8XQoupmWoVEb7D4SrNfm+xnD09D0ZG1o8bnevqdsLO
         Box2F4kX0vCJXakudwikstqaEF51MEZfabs56P55Er8y7OzvFBj6dGZ+zGij3DdhvYv7
         BAZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=KEEvd4u3UvGoBQRrd8r0flfbXnRfcEtkikuqiW2DLRE=;
        b=rB5EP1M0sVpIjRRDa1tnjcnC/pPyQofHP01l+6HI6d10aAyy8xaFaNRp8UvtxLmruu
         Z0f01nrlzAFyHpOzxMrM/4zfU65ZjT5RRDXhQDZXrGPoGnH4khjoyJDBsqek8anjbXuh
         XU5rw87Cu9wzP0oJYoh352yN8CdxCx1xtT56EwcECARma3n8KWwRpKnGmG8H/HUWsl5I
         QxIS0vGx2CRMd8HoOfRqhRaJ/S4vBsbOp0k7xQjEkRDj7mOKUNSlO/Sxl1zWKIlIUVon
         cI4JlDsG6vFBk8HvTFPD8qLyXuBkMmOgmlH9NhxGJlng3cd52oFJHliiPAxm1DHhrWuZ
         nN0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.194 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com. [209.85.167.194])
        by gmr-mx.google.com with ESMTPS id c186si851377vke.3.2020.07.18.00.51.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Jul 2020 00:51:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.194 as permitted sender) client-ip=209.85.167.194;
Received: by mail-oi1-f194.google.com with SMTP id k22so10026858oib.0
        for <clang-built-linux@googlegroups.com>; Sat, 18 Jul 2020 00:51:02 -0700 (PDT)
X-Received: by 2002:a05:6808:64a:: with SMTP id z10mr10530650oih.54.1595058661714;
 Sat, 18 Jul 2020 00:51:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200624035920.835571-1-natechancellor@gmail.com>
In-Reply-To: <20200624035920.835571-1-natechancellor@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sat, 18 Jul 2020 09:50:50 +0200
Message-ID: <CAMuHMdU_KfQ-RT_nev5LgN=Vj_P97Fn=nwRoC6ZREFLa3Ysj7w@mail.gmail.com>
Subject: Re: [PATCH] powerpc/boot: Use address-of operator on section symbols
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, Geoff Levand <geoff@infradead.org>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Joel Stanley <joel@jms.id.au>, 
	Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.194
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Nathan,

On Wed, Jun 24, 2020 at 6:02 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> arch/powerpc/boot/main.c:107:18: warning: array comparison always
> evaluates to a constant [-Wtautological-compare]
>         if (_initrd_end > _initrd_start) {
>                         ^
> arch/powerpc/boot/main.c:155:20: warning: array comparison always
> evaluates to a constant [-Wtautological-compare]
>         if (_esm_blob_end <= _esm_blob_start)
>                           ^
> 2 warnings generated.
>
> These are not true arrays, they are linker defined symbols, which are
> just addresses.  Using the address of operator silences the warning
> and does not change the resulting assembly with either clang/ld.lld
> or gcc/ld (tested with diff + objdump -Dr).
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/212
> Reported-by: Joel Stanley <joel@jms.id.au>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/powerpc/boot/main.c | 4 ++--
>  arch/powerpc/boot/ps3.c  | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/powerpc/boot/main.c b/arch/powerpc/boot/main.c
> index a9d209135975..cae31a6e8f02 100644
> --- a/arch/powerpc/boot/main.c
> +++ b/arch/powerpc/boot/main.c
> @@ -104,7 +104,7 @@ static struct addr_range prep_initrd(struct addr_range vmlinux, void *chosen,
>  {
>         /* If we have an image attached to us, it overrides anything
>          * supplied by the loader. */
> -       if (_initrd_end > _initrd_start) {
> +       if (&_initrd_end > &_initrd_start) {
>

Are you sure that fix is correct?

    extern char _initrd_start[];
    extern char _initrd_end[];
    extern char _esm_blob_start[];
    extern char _esm_blob_end[];

Of course the result of their comparison is a constant, as the addresses
are constant.  If clangs warns about it, perhaps that warning should be moved
to W=1?

But adding "&" is not correct, according to C.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdU_KfQ-RT_nev5LgN%3DVj_P97Fn%3DnwRoC6ZREFLa3Ysj7w%40mail.gmail.com.
