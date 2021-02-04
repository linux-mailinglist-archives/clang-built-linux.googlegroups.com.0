Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV7R6CAAMGQE5YV2OLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D08330FADC
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 19:11:36 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id o16sf1152125uaj.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 10:11:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612462295; cv=pass;
        d=google.com; s=arc-20160816;
        b=NZjFzIP+oZSWL7/tF0kRFfcFFR38uFPz2E4b2/3K6ExWlKtyJuY9o2s0yF8mEiXaOm
         odbbai83CM9qsPIiRxZOxS//PMn8+JuW5ipu/bLFjB7HQJquT1Tl9QwaIeergyAO1ZYj
         3I27UoXQkOmxNbjHli48e5GmrKH2obNXcf7Wx3gif9iNKEPAa742yAMpqZXk03jJvBoB
         m9edUAb7p5iuvKVZS5UN23irKVHVHsFZhgYizQ0Kqh0ZBjLyASZY6Xc6srmkMGnfB1Cv
         XTyt10Fu1D6YMtMRqkyBtSf0wvIRhuGcP4kR/5FGhhE6fiS2Aq7w1dboC7RRpMYhHkhL
         MIEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=NppOXg+pyHRnFxrusjdrfAu75lykmMhK3LnyLyf1xkM=;
        b=G9eC4W6ntkx4eXRJYSLrBniDx1SSiOBxTFL2So8w3AtlLOLyWdmmTP2RQJq2nBeHMl
         LUD4fFu+ADDUtQxRYkqHNIOIubn8BU5vqWojIQS3FbsPZ1XMJ2Z06nX5bEeP/+VSqIGx
         eDq+Ia2Dok35Hu2mue5Y9QiCqHoYDKORS7BGBXeDdws0MrbFmDgz2+GX7q3KT9cwo1/t
         0ICRNRBzQp8pIfEmuEkBTUkRHtx24DvSlscqGIbAwX4L9oFv/AxRXGn0vaWJL9l4+CB4
         wmFwqz+Cc0DH8Lk+1+lB/Ze3MYHPrOUl/aB10WXYmuPT146CahHHiPqOa1a//2Xi9nyI
         QYCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VzWx0dK0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NppOXg+pyHRnFxrusjdrfAu75lykmMhK3LnyLyf1xkM=;
        b=PXgm8+4VMb5b49L+rHZAOKDg2niRsMxevI5B5t2alz8FLjgBrjuXWAlHctN4xkSHj9
         FUEjDQ+9bNZ618ROIElPbLkrqmcPh9jWefsaLd1mefNrfClr+ShDmIT+SnE2QUthMXrM
         K6grFWq71+XqA2VbTNHN6yC3SP1oBS0CkYZ96Qo0AygcV7CPqT0mqyvmMrLK03xdvF33
         iAnEvTA0J1o9kHT9cnnOOG3yFR+Ii8X2Hf27gzYyUTM4zWEAWN2YWHmc41/Q6I5Gyp27
         +XRQD37iGbKAG2uIk483edqT1XIXw/JEeC28/eSvhqC+Pal3xyMHcY2J76TVMTENPiQ/
         bQwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NppOXg+pyHRnFxrusjdrfAu75lykmMhK3LnyLyf1xkM=;
        b=UgHQDtZROMzPk6O18qxJPILH/wf1acDnGpaDrAVizdZS55ZV0QTEg8C8ZIXc3GDjFd
         qewDNz2B5F1WFodET72+AgG4qpRXBGfzlcZNnJMySinJLIvdhs0d7Yb/gjhjdXnzSojI
         6qxpyXgZrDkDphJr/2WzmdHdrTIwv9OZS/lHcc6Ykkh6nDE8TMwXOwCKw+A/ygGFvcMg
         nSNM54c9HyV0JFHpq9e4AbIJMek38QaUh6us8N3saG1xxzeXxgP/Uwqnxuyl2gKs+p7z
         kZTBZ+JNdES/P7S8O62zlPP1G7D6m6Dm6sbCk9NvNYWQj09Sa/wFpJ3siGbMfN94H+5s
         DjqQ==
X-Gm-Message-State: AOAM532ZySiGE0nTWlA/0XLJxuZCfa1cqXBHgXPXYgL+8rav0/Npshn/
	sMd5uDfXcI6KkY3Sv7sx6uQ=
X-Google-Smtp-Source: ABdhPJwUelflp46CPWjpUdvKcrFQE35fiL0du+FOSZavB5Z//bIf35wMyxNH6el0bkpW6edE+qglPw==
X-Received: by 2002:ab0:6f10:: with SMTP id r16mr467832uah.116.1612462295267;
        Thu, 04 Feb 2021 10:11:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9a14:: with SMTP id c20ls376543vke.5.gmail; Thu, 04 Feb
 2021 10:11:34 -0800 (PST)
X-Received: by 2002:a1f:f447:: with SMTP id s68mr700701vkh.17.1612462294848;
        Thu, 04 Feb 2021 10:11:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612462294; cv=none;
        d=google.com; s=arc-20160816;
        b=ne+nTlUB+KT31eQ9fjgx7241g5Gwi7/aE0eYOT/s3n7jTvbyFbLUPfhCJiMBAig0cs
         IneQ5R2Z4Hf71LGYMNe4aS4iBn82UFY7+L81xV5bryYw+YmW2i2CyaWynJL+k+ID7yGh
         tQsVuwGo5EgmtrPokg5FtWBF0QxY4erv++N0RQFdeCIp6KnSX6Fe9PoN9kpr3VhytqsG
         SC9vJ3/oor1Xy06Em/jt5JXFMGLKgu1Pni+ZGITGdAn3kSuEO7A53GtdcPSZt4bjTWRO
         un7L4OLalayUfSZOu6xfyoJWHzh8ZvQBYgRWSBwCaa/9ewm+GE/9kbIm97X3jOkQQvsK
         QCsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RtK9mH1gkT4tly0aUjleqbTCqo0H1GWRGkm+wgQLcKQ=;
        b=qf02JQSU9JUQniCZ0hR6ujvxw+CPjXzKBdmPLsgitCfd4f9qxe+crG5lun7lEOm9Jk
         ysdUkzc/Uvg6/m1pQxW0oEdcQRrWaVcuPqG8Z+pmA/ZhXdN2nEYeyShHMvyQMGS5TsVn
         3NygM+WwTVBVGqq9H2u02OAZnwgks1zJLJtq7x/Tv18qA9RrkEyGxSBya/CSDHK1GWas
         HgoeFSwOh/gT5cdxsgtFq0yv1Lvo0hA30PtIJAP/zqoeeEniS9cqXI9kSwUSXmn/wTJ4
         8k/yiw/blMGW0nkBSjtVu+jZT0a4DEGCXIRHAev1sPWUITIPlr5B4tqag4KKuF7HsoR2
         xV5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VzWx0dK0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id j25si401121vsq.2.2021.02.04.10.11.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 10:11:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id g15so2280301pjd.2
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 10:11:34 -0800 (PST)
X-Received: by 2002:a17:90a:8b82:: with SMTP id z2mr190576pjn.25.1612462294295;
 Thu, 04 Feb 2021 10:11:34 -0800 (PST)
MIME-Version: 1.0
References: <20210204162416.3030114-1-arnd@kernel.org>
In-Reply-To: <20210204162416.3030114-1-arnd@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Feb 2021 10:11:23 -0800
Message-ID: <CAKwvOd=1Cs75KdVU5Fa9W+wYmjo=5fFNBb6m6PnHUp=eoM-H5g@mail.gmail.com>
Subject: Re: [PATCH] ARM: s3c: fix fiq for clang IAS
To: Arnd Bergmann <arnd@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Ben Dooks <ben-linux@fluff.org>, 
	soc@kernel.org, Arnd Bergmann <arnd@arndb.de>, Stefan Agner <stefan@agner.ch>, 
	Russell King <linux@armlinux.org.uk>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-samsung-soc@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VzWx0dK0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b
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

On Thu, Feb 4, 2021 at 8:24 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> Building with the clang integrated assembler produces a couple of
> errors for the s3c24xx fiq support:
>
> arch/arm/mach-s3c/irq-s3c24xx-fiq.S:52:2: error: instruction 'subne' can not set flags, but 's' suffix specified
>  subnes pc, lr, #4 @@ return, still have work to do
>  ^
> arch/arm/mach-s3c/irq-s3c24xx-fiq.S:64:1: error: invalid symbol redefinition
> s3c24xx_spi_fiq_txrx:
> ^
> arch/arm/mach-s3c/irq-s3c24xx-fiq.S:79:2: error: instruction 'subne' can not set flags, but 's' suffix specified
>  subnes pc, lr, #4 @@ return, still have work to do
>  ^
> arch/arm/mach-s3c/irq-s3c24xx-fiq.S:104:2: error: instruction 'subne' can not set flags, but 's' suffix specified
>  subnes pc, lr, #4 @@ return, still have work to do
>
> There are apparently two problems: one with extraneous or duplicate
> labels, and one with old-style opcode mnemonics. Stefan Agner has
> previously fixed other problems like this, but missed this particular
> file.

Thanks for the patch.  Pre-UAL syntax

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Fixes: bec0806cfec6 ("spi_s3c24xx: add FIQ pseudo-DMA support")
> Cc: Stefan Agner <stefan@agner.ch>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-s3c/irq-s3c24xx-fiq.S | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm/mach-s3c/irq-s3c24xx-fiq.S b/arch/arm/mach-s3c/irq-s3c24xx-fiq.S
> index b54cbd012241..5d238d9a798e 100644
> --- a/arch/arm/mach-s3c/irq-s3c24xx-fiq.S
> +++ b/arch/arm/mach-s3c/irq-s3c24xx-fiq.S
> @@ -35,7 +35,6 @@
>         @ and an offset to the irq acknowledgment word
>
>  ENTRY(s3c24xx_spi_fiq_rx)
> -s3c24xx_spi_fix_rx:
>         .word   fiq_rx_end - fiq_rx_start
>         .word   fiq_rx_irq_ack - fiq_rx_start
>  fiq_rx_start:
> @@ -49,7 +48,7 @@ fiq_rx_start:
>         strb    fiq_rtmp, [ fiq_rspi, # S3C2410_SPTDAT ]
>
>         subs    fiq_rcount, fiq_rcount, #1
> -       subnes  pc, lr, #4              @@ return, still have work to do
> +       subsne  pc, lr, #4              @@ return, still have work to do
>
>         @@ set IRQ controller so that next op will trigger IRQ
>         mov     fiq_rtmp, #0
> @@ -61,7 +60,6 @@ fiq_rx_irq_ack:
>  fiq_rx_end:
>
>  ENTRY(s3c24xx_spi_fiq_txrx)
> -s3c24xx_spi_fiq_txrx:
>         .word   fiq_txrx_end - fiq_txrx_start
>         .word   fiq_txrx_irq_ack - fiq_txrx_start
>  fiq_txrx_start:
> @@ -76,7 +74,7 @@ fiq_txrx_start:
>         strb    fiq_rtmp, [ fiq_rspi, # S3C2410_SPTDAT ]
>
>         subs    fiq_rcount, fiq_rcount, #1
> -       subnes  pc, lr, #4              @@ return, still have work to do
> +       subsne  pc, lr, #4              @@ return, still have work to do
>
>         mov     fiq_rtmp, #0
>         str     fiq_rtmp, [ fiq_rirq, # S3C2410_INTMOD  - S3C24XX_VA_IRQ ]
> @@ -88,7 +86,6 @@ fiq_txrx_irq_ack:
>  fiq_txrx_end:
>
>  ENTRY(s3c24xx_spi_fiq_tx)
> -s3c24xx_spi_fix_tx:
>         .word   fiq_tx_end - fiq_tx_start
>         .word   fiq_tx_irq_ack - fiq_tx_start
>  fiq_tx_start:
> @@ -101,7 +98,7 @@ fiq_tx_start:
>         strb    fiq_rtmp, [ fiq_rspi, # S3C2410_SPTDAT ]
>
>         subs    fiq_rcount, fiq_rcount, #1
> -       subnes  pc, lr, #4              @@ return, still have work to do
> +       subsne  pc, lr, #4              @@ return, still have work to do
>
>         mov     fiq_rtmp, #0
>         str     fiq_rtmp, [ fiq_rirq, # S3C2410_INTMOD  - S3C24XX_VA_IRQ ]
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D1Cs75KdVU5Fa9W%2BwYmjo%3D5fFNBb6m6PnHUp%3DeoM-H5g%40mail.gmail.com.
