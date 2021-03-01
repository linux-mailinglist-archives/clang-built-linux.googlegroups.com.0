Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTGC6SAQMGQEWYEISHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D72F328694
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 18:15:57 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id k7sf6364373lfu.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Mar 2021 09:15:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614618957; cv=pass;
        d=google.com; s=arc-20160816;
        b=Iq4Mwt+8nY+EJ0E8oWXg54jsgFXorH7OZy/dHjpUrtU5dz0LdxV4VDRHpqs8Twcxy0
         Us5SAn/AuCIoHqyfwWCsaV+FeGO26dfBKUbDefoLTERypTc5wj3cZH2T+G7Uhu86YdVn
         tL/h5pVBzf8WG1qFN5j0vfFxYjLhCYEnqfE9gJyS+St/7xjFgqN7CK+gLH5vV2mb4xyx
         1okc51TbzB/2kU0BjQdRNRCkcIo6Tm/7mu5o2taB8GwmqQ12hfIgxINQFNX6pbic3eNW
         vMKj2LXO2LnbryDkwZCvgGdrhJuzYkhoHmyWixW/Ya7N/CsmrZHjZwzBDmPvBkx7vBLp
         0d6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=t/T7gRXsalXqeODIK4Stu4IoqN9Meyg25AFfn3tUauM=;
        b=e6xoxM/5B7mO8DUvqQUrRmWkATW0Od8HwKiue19sWuGzK84enZC9oWZEZK+6P/g2N8
         rcb84VT6BUA6HAKhbMlrC1v8bP+hYm8oBE5czg7KcN/18Tlm/61xFt7se1PyXsb41dPT
         dcxhfX69mO9X1KgLB9YiVQRbOu3qDk3jspyK1OljIXmlkPHt3y3EgwwYIiemOxa+HNfW
         x3ZYsYiQABc9Tpkf8AtHWWU0lvKAb+b2ffz8RxrBZov5+jmR1g6LcLCN7o0ChFS1UfhN
         jjow6w6jb8p/Tblop22A4RuU6NoN81ehjFoyY7opy3ehcEkP5EoVKfpcRBRcLJ4k1X2g
         z2Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QUngnvuZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t/T7gRXsalXqeODIK4Stu4IoqN9Meyg25AFfn3tUauM=;
        b=MFQZgaKIDXe8lizT8KC+tIDVS70FWCrotT3pw/1ySi+6W6PzCJch4kfNNd9OseHxmT
         ULqkan2t7BjGu/xzgwnr1nIfjcWsMFb52Btj3Pytei4yQQspFryrj44g+O+TOVJBu9zU
         8rygCVX35Et9Yk9GTVT0mGyodubFNsDEkaSY4trdVbdhamQR/2yI9WZe7OBRwxD9EO39
         rxBKbgmluDqgRWSljcRN9BEfHK9nUIykXNplQaZ+0R8pKVdtJs3/UwQy6lNP9FTKO2ix
         9A7cbsaCoum0R+Hh7bN4ikNDN3XkdtcGDc0TAq94cUjNMEU6bBoxuJoyIkgajgwWfrtd
         OLgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t/T7gRXsalXqeODIK4Stu4IoqN9Meyg25AFfn3tUauM=;
        b=AHPPJ9LE5N58651VrlPGPqK9qJq7h4p+nNK2SjpMS+ikDl+sUIJEhKOfMXEwob/r5f
         NNINFR7EqvVM25J/PNinvoyqeF09qX5BLIAJ6sv1/M0folzPdRUwcTBWkDYZZu8KcPOw
         vdh0fBqVyIhE8OYE1iWao2dl7nz+cDsjxIZ2KzcNy7zzPTBQiUi5+XRY0Vk2cl+/9Ix1
         VXWy/708RZdaszXmPVqFaSgjk2vYXud/D/dUKHXNDi41dDQRzeYUkiPMkLL5qoBa5F6y
         6JHBTpBFXo3D+xvD1EfmOqJZ/IPdze5877L3N5Qg5aDW8RVM/tYETTdGeL2Lkclv6Hp7
         ZJ6w==
X-Gm-Message-State: AOAM5306734DGzKqqulusFCp946+pS/RXpEITgQe/+hi9T2qZY4TKyhu
	mTGEP9v6fuIuUDCl6O3k72w=
X-Google-Smtp-Source: ABdhPJyO6PAmYsxBSZpDX9h1dU8eqcKzzBhUgcUC4DKvsPBs+oP/+nYYq6WxwFhD/c7eiWseQUgGdA==
X-Received: by 2002:a19:2d5:: with SMTP id 204mr19813lfc.85.1614618957116;
        Mon, 01 Mar 2021 09:15:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc11:: with SMTP id b17ls2946131ljf.7.gmail; Mon, 01 Mar
 2021 09:15:56 -0800 (PST)
X-Received: by 2002:a2e:8594:: with SMTP id b20mr9812876lji.120.1614618956068;
        Mon, 01 Mar 2021 09:15:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614618956; cv=none;
        d=google.com; s=arc-20160816;
        b=KFCOJUBB3SsUWxiNaBZSjhUJj7souwX4rDLZKMA74NrA4jejv9psw+ameyYbA46Nrh
         crCsuQVgk9rt6AnTaupPr8BgSx/yxxj3fEPw5oNzoo1jqy02qxaP3P/oRpyWwTlCS93O
         Hp/mt/wZXBqTOmRoC8Z26mTD+aaDL9F8ZoWbfPIWwdwZT4/zGesBTFytvS3loCZl2SA3
         yFpje3g5PDtyQe9zBWvu3P0YT3G5Lf5errflKBf950p6vdk80fwSEfA6mEHG0nPLxCzs
         4pfgYOdDGymeaUUnNrWyddxK/ubsleYGBVQn4j9idxQ1EvNdUM27X2Bv89+IeioDd75O
         W/0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8vfA0JJVUwjAoVTynDDOGpb5xwJq3miSmMP9XTq3nF0=;
        b=o+skCzATK6qo4wIkLvNDSTTTsnz3WcOZl9elUsS3CUspm/WNX6mR9p26twJuydfL7t
         X1we4NZkjyu4gQKBETyRiYHdISd/r0uu0DYmZoLSBT4eLHQ/2s2GOWiD5oOlCNkj1VDO
         kYtOGUsmqtCM0hNIMMrReN+bgZ+VfDG0vZAKj8hG/kQ7xshUwdNdA5oRjbfBMHyNUJna
         XwQAs0mG2Vmlex96rUlHy6WteJaMv+JxX4AQyvByUrqX9m9tE5yyV2Y46BhQu2SVedew
         u/dD0U3Suoxa6Bk8HjpHLbgWcnfkmNT2BKGC/RG5mjuMneChYtVx/X70C7ejpgk40MqU
         yqPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QUngnvuZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id p18si97788lji.8.2021.03.01.09.15.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Mar 2021 09:15:56 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id e2so13174669ljo.7
        for <clang-built-linux@googlegroups.com>; Mon, 01 Mar 2021 09:15:56 -0800 (PST)
X-Received: by 2002:a2e:9a4e:: with SMTP id k14mr7363439ljj.116.1614618955690;
 Mon, 01 Mar 2021 09:15:55 -0800 (PST)
MIME-Version: 1.0
References: <20210226140109.3477093-1-arnd@kernel.org>
In-Reply-To: <20210226140109.3477093-1-arnd@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 1 Mar 2021 09:15:44 -0800
Message-ID: <CAKwvOd=kWY8ki-j-VZ7X4anypeuW5=4w2FPD=f39vK-zrAaWjQ@mail.gmail.com>
Subject: Re: [PATCH] [v2] spi: rockchip: avoid objtool warning
To: Arnd Bergmann <arnd@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Pratyush Yadav <p.yadav@ti.com>, 
	Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Jon Lin <jon.lin@rock-chips.com>, 
	Johan Jonker <jbx6244@gmail.com>, linux-spi@vger.kernel.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-rockchip@lists.infradead.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QUngnvuZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234
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

On Fri, Feb 26, 2021 at 6:01 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> Building this file with clang leads to a an unreachable code path
> causing a warning from objtool:
>
> drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
>
> Change the unreachable() into an error return that can be
> handled if it ever happens, rather than silently crashing
> the kernel.
>
> Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks for the v2!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
> v2: use 'return' instead of 'BUG()'
> ---
>  drivers/spi/spi-rockchip.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index 936ef54e0903..0d75080da648 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -476,7 +476,7 @@ static int rockchip_spi_prepare_dma(struct rockchip_spi *rs,
>         return 1;
>  }
>
> -static void rockchip_spi_config(struct rockchip_spi *rs,
> +static int rockchip_spi_config(struct rockchip_spi *rs,
>                 struct spi_device *spi, struct spi_transfer *xfer,
>                 bool use_dma, bool slave_mode)
>  {
> @@ -521,7 +521,9 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
>                  * ctlr->bits_per_word_mask, so this shouldn't
>                  * happen
>                  */
> -               unreachable();
> +               dev_err(rs->dev, "unknown bits per word: %d\n",
> +                       xfer->bits_per_word);
> +               return -EINVAL;
>         }
>
>         if (use_dma) {
> @@ -554,6 +556,8 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
>          */
>         writel_relaxed(2 * DIV_ROUND_UP(rs->freq, 2 * xfer->speed_hz),
>                         rs->regs + ROCKCHIP_SPI_BAUDR);
> +
> +       return 0;
>  }
>
>  static size_t rockchip_spi_max_transfer_size(struct spi_device *spi)
> @@ -577,6 +581,7 @@ static int rockchip_spi_transfer_one(
>                 struct spi_transfer *xfer)
>  {
>         struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
> +       int ret;
>         bool use_dma;
>
>         WARN_ON(readl_relaxed(rs->regs + ROCKCHIP_SPI_SSIENR) &&
> @@ -596,7 +601,9 @@ static int rockchip_spi_transfer_one(
>
>         use_dma = ctlr->can_dma ? ctlr->can_dma(ctlr, spi, xfer) : false;
>
> -       rockchip_spi_config(rs, spi, xfer, use_dma, ctlr->slave);
> +       ret = rockchip_spi_config(rs, spi, xfer, use_dma, ctlr->slave);
> +       if (ret)
> +               return ret;
>
>         if (use_dma)
>                 return rockchip_spi_prepare_dma(rs, ctlr, xfer);
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DkWY8ki-j-VZ7X4anypeuW5%3D4w2FPD%3Df39vK-zrAaWjQ%40mail.gmail.com.
