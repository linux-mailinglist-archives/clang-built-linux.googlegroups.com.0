Return-Path: <clang-built-linux+bncBDYJPJO25UGBBY6BZTVAKGQEF3Q5YIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id E07748C243
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 22:43:17 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id a198sf36667809oii.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 13:43:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565728996; cv=pass;
        d=google.com; s=arc-20160816;
        b=QTMkX6NnlI3Gxv2kcX5XKyp26ZHRDBWBfxBgiicITXquf/ffHOYDuI1/1krDl6jdA1
         njySuso5argFt9ucrs4CCQkd0/5xiQoRgaimRRytOXNh4UkdlleTCm/qGB/FprdPbai8
         K690u/OLeI8RozjlK5kcQzeXDUMPnQoC9I4Ze4XgOuDNoymhuLN/Q4L9L26Ar9jPw7Pl
         rEdINsk1tKRbnVoHReM1mszX0HGLr1qeQ1R55Q0q04rkmuv+DvqG+2cpHQr8CuFpl35c
         MgGEt0OrHp1Cw9lpLFC8f38OkxjMpzP1vsFKZzo55X2mrM8RlnFzDhEB9pt5hkPdAf5X
         cy0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9HAOtCOUjpQS+nrfFn7vNjJpyqEziy8h/6xI9wN9DL4=;
        b=QfEV7jfZq1IauEgDJUQFyiBwO3zrwGG/JPN3MMqN5o8N/kZ+wkdgzM4SJZcdQNu2E/
         d1vlVw/Aov9r3k2O7QroCrjQurqTFgBtHiBDWLEeCD31SVs/1P5QTL0WMlulOGUE5uih
         hc4k6Ebea3zXLKhOZwpADKxYpTH9zEWLgszRdHvCWNXl+2ns1yhEa9S5vEGRB/fgX3ET
         8vwIJp2kuVCsca3rfXacB5eTBoXvXOva5LeM9cS7rAoUy0CjcagyqkfZP4gGb2RnV0z2
         k6RxuF7LZNux/a0ZER5Fg2K/KJyZ4KIxc5XEbpuxgXHztfCPKB6SoCsT05cTT/FJkHBe
         S7NA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FNpL+MFo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9HAOtCOUjpQS+nrfFn7vNjJpyqEziy8h/6xI9wN9DL4=;
        b=jCA9eg296ezc7QsLW5BeTEWiqc1R44c+IZIb+lGP/CY/Hv9u/NxKQidVwaiUMSnM7E
         beTEsrdZ8O2EQKf9JlxB4ZpHPLRJhG3nXQDNP6Ai/RL4pXA1v7DTwZc/szg1VwyVrv+q
         dvgLNhIjtlgMP9eXlk9/n8dHk2u/h3V0ekMeQtyOQDTZq46ITnjQmQDhWtVS5RxqD06R
         EhcNvP/9pm/jg4essPw3D1I1aooe6w+PK9xB+j8EKj7LXqxmF9i2xuaMhs0kGspME4QS
         gZP77O+GSXX4BtpKo+kh6VwKylVWa4uS3gKR55zxhteXNo9iVnhsgBKCRfhMtodrMp8C
         FDRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9HAOtCOUjpQS+nrfFn7vNjJpyqEziy8h/6xI9wN9DL4=;
        b=D1q27ibrYcMaPJlXva2CBVE58QZHmGkALc68Qj6UWI8EVw8Jju+5BkN9bCL9jN+0k5
         BpL2ZDzfs7AuHUOJFma/CalC+WG1wLzEBN6mwPa11BIFvgRewAzb0+isfj3KDF0Bz1dI
         JKCtjvdtFyJgUCEoHiWEMMCZKc8bEXK9BLxjRTmUaXL55ZtHYHD0J5o1YpECcDubJ3dT
         9Zgl0CgdMwKMkQJFdIqvBW/x6Xa6uFYFWUqWqtPzipF+W2EviV9z6f5sAlKHcwWMnVs5
         +YLWiCo4hr96zOOUSD6d42F7G3UGMNOuC7MMHsvqsYTNHsf+/pefclfo3P6ohlomWMNj
         GnVQ==
X-Gm-Message-State: APjAAAWRUT/YQaqToKAJJ11hGDLjbfHeB5D2D4ivwP9VR6PhqrQgxKAY
	5ry76Dy/Lam0uSuRXrT0rq4=
X-Google-Smtp-Source: APXvYqyZEtwxJi4OeNgICDsfJINyUoGXpaf2EAMkNB7kHBcywaoA6vhHiGpbqKBWZtAIau8JFjpQug==
X-Received: by 2002:a6b:c38b:: with SMTP id t133mr41021007iof.162.1565728995853;
        Tue, 13 Aug 2019 13:43:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:ba8a:: with SMTP id k132ls3921105iof.3.gmail; Tue, 13
 Aug 2019 13:43:15 -0700 (PDT)
X-Received: by 2002:a5d:8885:: with SMTP id d5mr4690552ioo.181.1565728995568;
        Tue, 13 Aug 2019 13:43:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565728995; cv=none;
        d=google.com; s=arc-20160816;
        b=EWiWA4RBTSDdSekd4XCsLuPuIfzjdEodeEUGHKPIUbFFc+fT4MSdJYntzF0sStLPaZ
         X0V1GKBmk2Z0kmd+kgsVfmBdNJzGoekLVqqEZ61Goc1rDJXpDMcTd1yclW7W/Ck3YoDP
         fys+5tINCyhnwtCg143lRCz+bLj3BvZn+aMdI6z0aZupG6lj2H/MonvfknXiMAVqPlO2
         SwZFq4FtDQLbD756YAdrNZ4x/m5fv6zr9m+XzUALy6APurg52u46yxiuFT6GXN9oH6vb
         yrk95jM39fDmTc6yyFqwcEvYLph+uyVpoTcvm7Kr/f1wJtnllfJi/uMit8a6YrvHFMJN
         KKYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wedeTRt18LF5MmeSQANDHDmPkQrZQasBte+17UN0Uok=;
        b=ijIEpGLNjBnPz8WehZ88GDY8VymoYO/1zlHDUOdqSmtHGCUTXWBVl6yV/hzN7P9IIp
         F7DCUUYWikr5MSSeLIWy3eTWUJabhudGEOn1LEnEh2twbJ3zO3+mJ/rLqIdPZnoAoUf1
         Ko1DrB4cvOQx5SP3mYZAwtTRl9Kf6Rul/LcqJ0TYYcNCA7cwoLcAXWv8qWCT+r1d428z
         EO6UOZgWOF1if590OlU6c+ChuKhLhSuE39bFEgDdnIu+1628P6SiyBsLhW4c41we5uM6
         1Ct8Kjgg+GRVMu3uANUxhrj4mCo55FvIkSe4z1ty/Y21GOuTlwCLJrZqXOXlDgFTzPOY
         tYZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FNpL+MFo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id e23si737232ioe.5.2019.08.13.13.43.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Aug 2019 13:43:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id p3so1553776pgb.9
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 13:43:15 -0700 (PDT)
X-Received: by 2002:a17:90a:ac02:: with SMTP id o2mr3955419pjq.134.1565728994589;
 Tue, 13 Aug 2019 13:43:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkAJcOCGvveBYaDD2kf4vx7m=b+Nxyn3_n=9aCBapzDcw@mail.gmail.com>
 <20190813173448.109859-1-nhuck@google.com>
In-Reply-To: <20190813173448.109859-1-nhuck@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 13 Aug 2019 13:43:03 -0700
Message-ID: <CAKwvOdmFc3RfHMVxdym9upmck=h6AnNW58ho+0ferOUVkaxajw@mail.gmail.com>
Subject: Re: [PATCH v2] dmaengine: mv_xor_v2: Fix -Wshift-negative-value
To: Nathan Huckleberry <nhuck@google.com>
Cc: Dan Williams <dan.j.williams@intel.com>, Vinod Koul <vkoul@kernel.org>, 
	dmaengine@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FNpL+MFo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Aug 13, 2019 at 10:35 AM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Clang produces the following warning
>
> drivers/dma/mv_xor_v2.c:264:40: warning: shifting a negative signed value
>         is undefined [-Wshift-negative-value]
>         reg &= (~MV_XOR_V2_DMA_IMSG_THRD_MASK <<
>         MV_XOR_V2_DMA_IMSG_THRD_SHIFT);
>                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
> drivers/dma/mv_xor_v2.c:271:46: warning: shifting a negative signed value
>         is undefined [-Wshift-negative-value]
>         reg &= (~MV_XOR_V2_DMA_IMSG_TIMER_THRD_MASK <<
>                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
>
> Upon further investigation MV_XOR_V2_DMA_IMSG_THRD_SHIFT and
> MV_XOR_V2_DMA_IMSG_TIMER_THRD_SHIFT are both 0. Since shifting by 0 does
> nothing, these variables can be removed.
>
> Cc: clang-built-linux@googlegroups.com
> Link: https://github.com/ClangBuiltLinux/linux/issues/521
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>

Thanks for sending a v2:
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/dma/mv_xor_v2.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/dma/mv_xor_v2.c b/drivers/dma/mv_xor_v2.c
> index fa5dab481203..e3850f04f676 100644
> --- a/drivers/dma/mv_xor_v2.c
> +++ b/drivers/dma/mv_xor_v2.c
> @@ -33,7 +33,6 @@
>  #define MV_XOR_V2_DMA_IMSG_CDAT_OFF                    0x014
>  #define MV_XOR_V2_DMA_IMSG_THRD_OFF                    0x018
>  #define   MV_XOR_V2_DMA_IMSG_THRD_MASK                 0x7FFF
> -#define   MV_XOR_V2_DMA_IMSG_THRD_SHIFT                        0x0
>  #define   MV_XOR_V2_DMA_IMSG_TIMER_EN                  BIT(18)
>  #define MV_XOR_V2_DMA_DESQ_AWATTR_OFF                  0x01C
>    /* Same flags as MV_XOR_V2_DMA_DESQ_ARATTR_OFF */
> @@ -50,7 +49,6 @@
>  #define MV_XOR_V2_DMA_DESQ_ADD_OFF                     0x808
>  #define MV_XOR_V2_DMA_IMSG_TMOT                                0x810
>  #define   MV_XOR_V2_DMA_IMSG_TIMER_THRD_MASK           0x1FFF
> -#define   MV_XOR_V2_DMA_IMSG_TIMER_THRD_SHIFT          0
>
>  /* XOR Global registers */
>  #define MV_XOR_V2_GLOB_BW_CTRL                         0x4
> @@ -261,16 +259,15 @@ void mv_xor_v2_enable_imsg_thrd(struct mv_xor_v2_device *xor_dev)
>
>         /* Configure threshold of number of descriptors, and enable timer */
>         reg = readl(xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_THRD_OFF);
> -       reg &= (~MV_XOR_V2_DMA_IMSG_THRD_MASK << MV_XOR_V2_DMA_IMSG_THRD_SHIFT);
> -       reg |= (MV_XOR_V2_DONE_IMSG_THRD << MV_XOR_V2_DMA_IMSG_THRD_SHIFT);
> +       reg &= ~MV_XOR_V2_DMA_IMSG_THRD_MASK;
> +       reg |= MV_XOR_V2_DONE_IMSG_THRD;
>         reg |= MV_XOR_V2_DMA_IMSG_TIMER_EN;
>         writel(reg, xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_THRD_OFF);
>
>         /* Configure Timer Threshold */
>         reg = readl(xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_TMOT);
> -       reg &= (~MV_XOR_V2_DMA_IMSG_TIMER_THRD_MASK <<
> -               MV_XOR_V2_DMA_IMSG_TIMER_THRD_SHIFT);
> -       reg |= (MV_XOR_V2_TIMER_THRD << MV_XOR_V2_DMA_IMSG_TIMER_THRD_SHIFT);
> +       reg &= ~MV_XOR_V2_DMA_IMSG_TIMER_THRD_MASK;
> +       reg |= MV_XOR_V2_TIMER_THRD;
>         writel(reg, xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_TMOT);
>  }
>
> --
> 2.23.0.rc1.153.gdeed80330f-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190813173448.109859-1-nhuck%40google.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmFc3RfHMVxdym9upmck%3Dh6AnNW58ho%2B0ferOUVkaxajw%40mail.gmail.com.
