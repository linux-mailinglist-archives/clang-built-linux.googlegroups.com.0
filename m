Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXODYPUQKGQE726IHOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2731B6D653
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 23:17:19 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id s83sf32237315iod.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 14:17:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563484638; cv=pass;
        d=google.com; s=arc-20160816;
        b=ANDdFPU0o6JBCGA9WMx+rh/ow05SLGSupZftryQbDnojIsIRiNgOG0FiiHY7KOFLXM
         VLUFF7br92KK536ns9ww+nSAhp9ku3f6pd0J/AU5+EHr+X7PuV505W3zuCoSD6wBwx6l
         mr3xyp6xL/ts4dbDIWHJE/LW/AUK6kqC7/7Y54PwOczZl43HY9LRzJoeozA5c8GO2R9d
         7MPJh69oggtna9my4PoS+UFGOYa+FdIoZgTaMWLeaiqr69k7htHFLetjKRFZr0NdoxXg
         dGHubDP7jS6sNi/wODwTpsSpf25CW/ySCwoPrX0Wmef8Hjuj/gqxjOvqPn8Ljf2JhWEt
         eokQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=NIjemVbOWQnVTA2MFGB6NEdaW2/xVSe7njxWI2dWN6c=;
        b=BFDqETh21zlP1ozWw9YbroBjZssKFohKSvgI9yENeCbggqSi8J7xvHRmGadilu9Byd
         48XJwaKytxNuV/vObiQ4dbXLJJj5Ez+/dfL6wW1oUQr1CgeyjEHDPn+BKv68W+l7ODqh
         5Q1otzGs+l+a+aYNQOT2Z8VHSLzc05sjyAkDX3D6omNgadFZdzPkpMTK4gVVBq300ewV
         /xSSVJwe/Ads1BpIF/peVl4W216Y02qsImJQAGD81ZYbm8acmfHp5XZ7OU2INshQSpqR
         IFxssVuVLh3jPrcbZkcNk4Lj22pLrTsVH1FnWPPALvn+PUy0wVq0NSU+EIdkr29yJZcZ
         lEhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="itwJ/6Zo";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NIjemVbOWQnVTA2MFGB6NEdaW2/xVSe7njxWI2dWN6c=;
        b=Px1Qn/buJUuvJpdDQOIinIOAWsFcjgso1J8YQjpW15ZnCOsi64AZgS6/kD8/TAJzEH
         b8X8vQWt+vRHUDMmCuZst2zouPAJPfxxisNyyiBaS7Rm+R3SKZsy7Ttr+Zdi6sPSbIgq
         RvfU0h9L1/flZuoVLmvQ4IdYI4MHMQcs8Zkg8KSEO8hzNhZbXW5sBp9DO+QxaS32GNUs
         HtAz+uxnunBJb/OqDQ0aE8EKh+is2Wza6yKmWQ/E9gGANFZKrR97jFKsXNSfHRt+tDCR
         Ym9zxHbgsXfbQ+5PmoGkc80MQYDWvx27KAtarl804ivg5t0U9ijuAp9o017Ons/Oq6IU
         GlAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NIjemVbOWQnVTA2MFGB6NEdaW2/xVSe7njxWI2dWN6c=;
        b=QBgRaaQ5Yi3c9DdsnEuFKElaaJHaJRVSZJxYkMjA5CUkXZ9n79y0TAe1cox+pZcaml
         SJZNzg6PhZibfraDD4hEaAceLzlkHpF58isj7VXGz1V83pMupCVfVTImhR2H3U+LkzF8
         HTqrTjn7NYNduNdQWR8/IUPGqRPkzQIYwh9Z7FrsmS2nSCwzWx8iLsZfWG5l4EvQ5VKJ
         sbKAK1bVs4Iqb1qj4L/0FsW91cD7GOhijrUfINjMpCRntE2b2Wgo5iW3GMiu+2+gJmrT
         KRCUJgC8k8i6d662QI7vM9k4KhN5zJIWnpPwa0yFooH71KzCtFOvDCapfUMf3U3UAVUM
         A/bw==
X-Gm-Message-State: APjAAAV9IgkjtE7f+poRbHGYbThEQUq7XfA8Yi5lvFDvgMw3oo+qeDN8
	MqtX6oJCI9Z6yCByRwUDOyE=
X-Google-Smtp-Source: APXvYqwXZsPqHV+OVdT0LQKeLbaIJ0NgjJUU/4Bog99Ua0PeEAvfU9y2TO9Rg8+qjQFhS2rxU5kxEw==
X-Received: by 2002:a6b:bf01:: with SMTP id p1mr16846122iof.181.1563484638084;
        Thu, 18 Jul 2019 14:17:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:da12:: with SMTP id x18ls7848066iob.5.gmail; Thu, 18 Jul
 2019 14:17:17 -0700 (PDT)
X-Received: by 2002:a6b:f90f:: with SMTP id j15mr39613845iog.43.1563484637734;
        Thu, 18 Jul 2019 14:17:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563484637; cv=none;
        d=google.com; s=arc-20160816;
        b=upZX1j4/84dHdHpQGbHW7JCUxfok2LUQhSzxJEDAJqGsQ2XprlVuqP8gv2VwINfzQP
         OJmSLU4lsniALeAGPObep61GnhupTdGF+FmrckIb6lFLH9grF+k19oML/YhyHGJ5CLu/
         5c44P0NE4hLQ74Nz/YUnw2iZN/Q22rCsyHXO22V9sye9sr8T4WPPAkyQclZIfRjK6K4D
         rzrCClg6MFm43F1swPjPEk72hYcbsT7GNzlBiF7tqsKn12oUKMh9eGE5ahGi1Q1rSWcb
         MLr+lKSogTo2mKfB32Zz+5qowwenlgOyCBOIkB3w8vjPzngFBA/kEuv7Vrr4OpPBt2Kd
         WNsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RheZEo0ByWVoAsse+7+UzvQGL1lauI18cqCeYYEU2X4=;
        b=O0SS1ddgRltEsMqqOi1wgcj/qCY1Geleukiafa+4t/3ON3gW2BCIXGBnPc3GA8bi9A
         BRVSEqGypGfSLqG66OcyWUtLCXSu+aAl6BYgaAGf9JBmloz8/K6bYHk14a2ARP8v8DWg
         mU18ONOQr8vzKdaORZsU+ldZZ9UntwnVJGUi57/xPwwLgiwlfzYdNU7pUXs5IiBWP1op
         bX3wmPB92p1GNz2AOUBigtS73PdPkDeSVvIWn35czdG2ALen4hX+/FFO+BdlCdFz+0b2
         i9r1arkbpYL94uGHJjqUcEQyfSgBVV24zxxlESpYUpZfASNX6HWfEas7diWkggOtCtJI
         bAAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="itwJ/6Zo";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id h25si1136787iol.2.2019.07.18.14.17.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 14:17:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id w10so13450229pgj.7
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jul 2019 14:17:17 -0700 (PDT)
X-Received: by 2002:a63:2cd1:: with SMTP id s200mr46303202pgs.10.1563484636536;
 Thu, 18 Jul 2019 14:17:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190718135017.2493006-1-arnd@arndb.de>
In-Reply-To: <20190718135017.2493006-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 18 Jul 2019 14:17:05 -0700
Message-ID: <CAKwvOd=HEjDA7pcsQvONoHgU2JH3xz+9MwHU0pXKathDRQx=nQ@mail.gmail.com>
Subject: Re: [PATCH] crypto: aegis: fix badly optimized clang output
To: Arnd Bergmann <arnd@arndb.de>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Ondrej Mosnacek <omosnacek@gmail.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	linux-crypto@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="itwJ/6Zo";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Thu, Jul 18, 2019 at 6:50 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Clang sometimes makes very different inlining decisions from gcc.
> In case of the aegis crypto algorithms, it decides to turn the innermost
> primitives (and, xor, ...) into separate functions but inline most of
> the rest.
>
> This results in a huge amount of variables spilled on the stack, leading
> to rather slow execution as well as kernel stack usage beyond the 32-bit
> warning limit when CONFIG_KASAN is enabled:
>
> crypto/aegis256.c:123:13: warning: stack frame size of 648 bytes in function 'crypto_aegis256_encrypt_chunk' [-Wframe-larger-than=]
> crypto/aegis256.c:366:13: warning: stack frame size of 1264 bytes in function 'crypto_aegis256_crypt' [-Wframe-larger-than=]
> crypto/aegis256.c:187:13: warning: stack frame size of 656 bytes in function 'crypto_aegis256_decrypt_chunk' [-Wframe-larger-than=]
> crypto/aegis128l.c:135:13: warning: stack frame size of 832 bytes in function 'crypto_aegis128l_encrypt_chunk' [-Wframe-larger-than=]
> crypto/aegis128l.c:415:13: warning: stack frame size of 1480 bytes in function 'crypto_aegis128l_crypt' [-Wframe-larger-than=]
> crypto/aegis128l.c:218:13: warning: stack frame size of 848 bytes in function 'crypto_aegis128l_decrypt_chunk' [-Wframe-larger-than=]
> crypto/aegis128.c:116:13: warning: stack frame size of 584 bytes in function 'crypto_aegis128_encrypt_chunk' [-Wframe-larger-than=]
> crypto/aegis128.c:351:13: warning: stack frame size of 1064 bytes in function 'crypto_aegis128_crypt' [-Wframe-larger-than=]
> crypto/aegis128.c:177:13: warning: stack frame size of 592 bytes in function 'crypto_aegis128_decrypt_chunk' [-Wframe-larger-than=]
>
> Forcing the primitives to all get inlined avoids the issue and the
> resulting code is similar to what gcc produces.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  crypto/aegis.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/crypto/aegis.h b/crypto/aegis.h
> index 41a3090cda8e..efed7251c49d 100644
> --- a/crypto/aegis.h
> +++ b/crypto/aegis.h
> @@ -34,21 +34,21 @@ static const union aegis_block crypto_aegis_const[2] = {
>         } },
>  };
>
> -static void crypto_aegis_block_xor(union aegis_block *dst,
> +static __always_inline void crypto_aegis_block_xor(union aegis_block *dst,

`static inline` would be more concise and expand to the same
attribute, IIRC.  Not sure if that's worth sending a v2. But for now,
thanks for the patch and:
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DHEjDA7pcsQvONoHgU2JH3xz%2B9MwHU0pXKathDRQx%3DnQ%40mail.gmail.com.
