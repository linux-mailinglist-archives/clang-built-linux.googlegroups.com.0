Return-Path: <clang-built-linux+bncBDYJPJO25UGBB35O337QKGQEIDQS35I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 926ED2EE9B1
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 00:21:20 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id gv14sf5993864pjb.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 15:21:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610061679; cv=pass;
        d=google.com; s=arc-20160816;
        b=KSJN6JYzgtY8qIEiXTjGYsrt2oAlTHDY1uQZGgHfS27H3Nt5JDG8do0sED1+MK4rq5
         zBuyzKYTeR75cvjd6ZKY8zAPPm0YQZ5ZQX3sF9WtO1Ut+165YpCQhe1FP7XfVfOdMWat
         woQ9OI3J1Dy6qTBpayYoz8G1+vF13N3YS0Gy2G5tOi2Sibz+8AIDe2kj9VQxEzauOKl2
         KWa3KYOGW1OOmFGz3RXfkJn8atvJ2riKs6Al46o2HOOFZyGpa7X8jDL3cv3QeL9sSsAp
         yDFTG1Gry7M6w7+/3sNvzL/xR8MyRsu7JlBoyrsPZFxkyJgoAuP5GHyyRJcdPl1Ph74m
         YBJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZMSTJg1PJtOC+MnUj5PhIGLsT0J9FpOpcdenbVM8Im8=;
        b=Bpa4V6teNutYMHQ6URWS+O8Cjrqev8wXyxY2dB1W+lX0NzaI45KmLJsPDfC2qtntif
         DPvEI8/mbUp93YZTMgEEsRRgvRm1Nw0P24ZeAS4A6xazfb5s1oa4st6pkT3HaepXArTf
         Y8pxorJ2ByDocigOVJAiygSpqMV5BIRISrNeSrQrj8VRxpLZhEHhrgJwuw47Sbb+cvaJ
         AJZIn6YiziTmBxLAoSqJsKj+m4ePU+txs2SdhHEx3y7FM3Wu8JIrvPQUdS+GgBh6Dg4K
         70gEEhPhxit7BUtN0dCOSReuhHiwCl8QRIVsMnLlTOdP9rXNWQhkxdU/67xAajnryOyP
         7/kA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HWfuArjx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZMSTJg1PJtOC+MnUj5PhIGLsT0J9FpOpcdenbVM8Im8=;
        b=eJThiGrRKtM7k5Pr7fC7otcFuDXP2bd65cN2N1nP00SF+6aKp/68E8U6Yx84irtuK6
         gdBf//ZNGqPPwfm2SZmlu4R795ht8uu5bx8gd9Iyle+HKLI5UNYstSPU73GNBHvvhrgg
         WQJaMLS5F6rvODUTjz5zPZgshXvV3M+mi+ENzSbr/ij+yGsrKpLjmoxeyy2TT9Nawlzt
         HRUqjuNEw3brDpK+ysoMwX/xpC9c+mZdxQSHrNeVHUMxWDKkIj9hGXmOZDfQVdcCRjIv
         +7+FDs2iHt7oWwOyMigLrA4VIy8r4nyNXk74WGM+LYSYmtRIHAn6aeybMpjddycEOAK7
         VyUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZMSTJg1PJtOC+MnUj5PhIGLsT0J9FpOpcdenbVM8Im8=;
        b=Gvim0FwD0ZHTB7fXXsowdbXf2DIKq4lhUIZ5QZ2i5j/8JWSy0orOvUstQHE0s79V+K
         xKqdgU1PnwBCFuQOJidhlQ/MngIRkVhfXGFM9R+EK7/rK9qAzWTuhJHvLqk3bN646NcR
         3suAjhxA27VilxylGQmZwukpLsd0Soaqm70fqAKVKxZ+F7Pj9NdUj4Opi9apzP3YL+Yf
         5PUbxjQ9DMQbbstbNIPC1Cp+xJR3R1wLbuBQb0qaRhiC+CJWoDad9KNYGx1YNgzTilSc
         UrD22+5N+2IlAAGENNmAeKnRvZAotWC2v6Wr79GtZ4o4MLx5Wp52/uAKBDtB95UOxMqb
         inHw==
X-Gm-Message-State: AOAM531zEGMhEBygNfkw/B3j1XQud8yawUhGOspzhOg14qwzGwmHPr2J
	KyGnWLjoHsVPJpyFwmkUkG8=
X-Google-Smtp-Source: ABdhPJz/Z+3Nhd14GWtOFeQLG91tlOvxAsugFxxuvE7CHQRyiZ063vByHBLrTU/1wPP5EUMyTrwBzQ==
X-Received: by 2002:a17:902:c104:b029:da:5206:8b9b with SMTP id 4-20020a170902c104b02900da52068b9bmr1099406pli.46.1610061679289;
        Thu, 07 Jan 2021 15:21:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3192:: with SMTP id x140ls3439567pgx.6.gmail; Thu, 07
 Jan 2021 15:21:18 -0800 (PST)
X-Received: by 2002:a65:5882:: with SMTP id d2mr4070327pgu.323.1610061678642;
        Thu, 07 Jan 2021 15:21:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610061678; cv=none;
        d=google.com; s=arc-20160816;
        b=uMbDHhXxRZrjtExI5/aj3DEsouam5kpkJT+mUVTcXzVFsh17N3ynoOQ5Jw4KxxxuV/
         ZNHDTw1/kevK4HHK3qRUOc96rLajG2mePLmXM2QPzBxTbUxcLl677iPJAZlqJGAm+hwP
         2n+oAj8ULA6o+GdoOKxziJRZKKL6UKSdWa1Z2M3QwGM0m5VDnp9Ggv54y/omX1KrL9Xq
         OSbq9ZlnQZTmRJTPMRpr7kTux+ST4tcIu3HDu3tDZqvq/5kNEHv7mDG+4qCuc45TK//6
         21O9Fj05dGOplnKDA1SdF9oPo2ZhVvdVQ1zXUWR/1h0xaVtt5FQmcn14RXKflMXqlUol
         zTxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=y0tJuyDEzyxT6uxpk/LQ7kuQcZZ+wYiZ8d01IZTeHqE=;
        b=U9A4i72+Zv1ThHtRLnVvJ8P5mqtpgrqDvWUc1cRDrPTP66xxcvaKLToUzkZBpSgSd5
         5KxC7xcw1eegKTnAqH/u/H73pG5hDxEmv24iRG96yVeFgOGvpezbSvixy74vktBssEYm
         RR81CiPcGbGEggy0aTbPOUwofgqIfJAGnXIXO7/2Ok3pCKw9pEz5WyZqCKm3XkOiivQV
         8KXRQHugJj4G8ac6tkqPcVPJJhys2W4l4XHzJnlS4CC0qe6qcErCkx7KV2eDypuobY8u
         wo3iEgFbiEZvXQ1PMPniF9novvCDfG5UIcgHv5wf2U9VNfyNCHh2utYFit26bFNdvBC7
         wJBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HWfuArjx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id i12si396384plt.3.2021.01.07.15.21.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 15:21:18 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id s15so4656492plr.9
        for <clang-built-linux@googlegroups.com>; Thu, 07 Jan 2021 15:21:18 -0800 (PST)
X-Received: by 2002:a17:902:ed14:b029:da:9da4:3091 with SMTP id
 b20-20020a170902ed14b02900da9da43091mr1040622pld.29.1610061678150; Thu, 07
 Jan 2021 15:21:18 -0800 (PST)
MIME-Version: 1.0
References: <20210107231322.56345-1-david@redhat.com>
In-Reply-To: <20210107231322.56345-1-david@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 7 Jan 2021 15:21:06 -0800
Message-ID: <CAKwvOdmE=Z9pV4txRw-kpcv5FOSr6eEXfmGnc++R_Vzv8MnRDQ@mail.gmail.com>
Subject: Re: [PATCH v1] s390x/tcg: Fix RISBHG
To: David Hildenbrand <david@redhat.com>
Cc: qemu-devel@nongnu.org, qemu-s390x@nongnu.org, 
	Thomas Huth <thuth@redhat.com>, Cornelia Huck <cohuck@redhat.com>, 
	Richard Henderson <richard.henderson@linaro.org>, Guenter Roeck <linux@roeck-us.net>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Heiko Carstens <hca@linux.ibm.com>, 
	Vasily Gorbik <gor@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HWfuArjx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636
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

On Thu, Jan 7, 2021 at 3:13 PM David Hildenbrand <david@redhat.com> wrote:
>
> RISBHG is broken and currently hinders clang builds of upstream kernels
> from booting: the kernel crashes early, while decompressing the image.
>
>   [...]
>    Kernel fault: interruption code 0005 ilc:2
>    Kernel random base: 0000000000000000
>    PSW : 0000200180000000 0000000000017a1e
>          R:0 T:0 IO:0 EX:0 Key:0 M:0 W:0 P:0 AS:0 CC:2 PM:0 RI:0 EA:3
>    GPRS: 0000000000000001 0000000c00000000 00000003fffffff4 00000000fffffff0
>          0000000000000000 00000000fffffff4 000000000000000c 00000000fffffff0
>          00000000fffffffc 0000000000000000 00000000fffffff8 00000000008e25a8
>          0000000000000009 0000000000000002 0000000000000008 000000000000bce0
>
> One example of a buggy instruction is:
>
>     17dde:       ec 1e 00 9f 20 5d       risbhg  %r1,%r14,0,159,32
>
> With %r14 = 0x9 and %r1 = 0x7 should result in %r1 = 0x900000007, however,
> results in %r1 = 0.
>
> Let's interpret values of i3/i4 as documented in the PoP and make
> computation of "mask" only based on i3 and i4 and use "pmask" only at the
> very end to make sure wrapping is only applied to the high/low doubleword.
>
> With this patch, I can successfully boot a v5.10 kernel built with
> clang, and gcc builds keep on working.
>
> Fixes: 2d6a869833d9 ("target-s390: Implement RISBG")
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Guenter Roeck <linux@roeck-us.net>
> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
> Signed-off-by: David Hildenbrand <david@redhat.com>
> ---
>
> This BUG was a nightmare to debug and the code a nightmare to understand.
>
> To make clang/gcc builds boot, the following fix is required as well on
> top of current master: "[PATCH] target/s390x: Fix ALGSI"
> https://lkml.kernel.org/r/20210107202135.52379-1-david@redhat.com

In that case, a huge thank you!!! for this work! ++beers_owed.

>
> ---
>  target/s390x/translate.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
>
> diff --git a/target/s390x/translate.c b/target/s390x/translate.c
> index 3d5c0d6106..39e33eeb67 100644
> --- a/target/s390x/translate.c
> +++ b/target/s390x/translate.c
> @@ -3815,22 +3815,23 @@ static DisasJumpType op_risbg(DisasContext *s, DisasOps *o)
>          pmask = 0xffffffff00000000ull;
>          break;
>      case 0x51: /* risblg */
> -        i3 &= 31;
> -        i4 &= 31;
> +        i3 = (i3 & 31) + 32;
> +        i4 = (i4 & 31) + 32;
>          pmask = 0x00000000ffffffffull;
>          break;
>      default:
>          g_assert_not_reached();
>      }
>
> -    /* MASK is the set of bits to be inserted from R2.
> -       Take care for I3/I4 wraparound.  */
> -    mask = pmask >> i3;
> +    /* MASK is the set of bits to be inserted from R2. */
>      if (i3 <= i4) {
> -        mask ^= pmask >> i4 >> 1;
> +        /* [0...i3---i4...63] */
> +        mask = (-1ull >> i3) & (-1ull << (63 - i4));
>      } else {
> -        mask |= ~(pmask >> i4 >> 1);
> +        /* [0---i4...i3---63] */
> +        mask = (-1ull >> i3) | (-1ull << (63 - i4));
>      }

The expression evaluated looks the same to me for both sides of the
conditional, but the comments differ. Intentional?

> +    /* For RISBLG/RISBHG, the wrapping is limited to the high/low doubleword. */
>      mask &= pmask;
>
>      /* IMASK is the set of bits to be kept from R1.  In the case of the high/low
> @@ -3843,9 +3844,6 @@ static DisasJumpType op_risbg(DisasContext *s, DisasOps *o)
>      len = i4 - i3 + 1;
>      pos = 63 - i4;
>      rot = i5 & 63;
> -    if (s->fields.op2 == 0x5d) {
> -        pos += 32;
> -    }
>
>      /* In some cases we can implement this with extract.  */
>      if (imask == 0 && pos == 0 && len > 0 && len <= rot) {
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmE%3DZ9pV4txRw-kpcv5FOSr6eEXfmGnc%2B%2BR_Vzv8MnRDQ%40mail.gmail.com.
