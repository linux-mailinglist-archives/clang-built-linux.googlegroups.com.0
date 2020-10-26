Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPOO3T6AKGQEOTDN5OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BCD299746
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 20:45:03 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id n92sf3093668pji.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 12:45:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603741502; cv=pass;
        d=google.com; s=arc-20160816;
        b=QLWld6hkcYg64VEiJTX2of6UyAgu+uVt0v4HIQ/NWhxFRBMmbuyq8cXba4eWxG4hNn
         QihmSpTuRrjnVYkdRQgi0n5LLo97w7Uwvbe65q5wD5Vpm0XZbjmbsvL/Qp6yGwOIa4RX
         THG6QfX/+vbYCRRdjeBQwpgwUqXVw9Y3lxcp5NAHocEW3XV/SiA9H4VvYAd7ILUk4Z9O
         lqCNFMs8jGQM5b127oZ/zxUeufQLbACOl1lzgGTCVdjxkK5MvgtmXRFLyuw03V/+4n72
         IHCIavFg6KkTitDUWvesWZFbIvboJcilPNMdGMap/huX9c4l6Sr9R6UMZ/xg/5GRfC9h
         RdBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qyK0lsfIQVMQtoEHIoLULm+82P141pqD/OJNw/ZkhjU=;
        b=L45TcRwVLgB6EQkatZxuqXU8asyacTUsiYhOdByUjU6LnHb6U4PDkVriEK2Y+EgVVS
         VNP/8QnZb7C/F4FUaORSHoh+Juajq99YzycqC4F71PYlfhVENGu8or1z0V2+P0IemuXV
         jmK4LirQJQGGTCDu01mXOc2t2ajx19Y2X5NOqK44R9diGALi3opsHByLm3CBMZA9QaUJ
         h7YHnB4R2lOvA0qYEmIiH7LJ/hCMBI5hSVFBIGdUmD+EySStegKCyZLjKg17FepXDbCQ
         EZSEbi07RI9DcpPeMkyxRDGXzXHEkRUlKEYQP9c93P4X+9DwjygnWW6cMpGjIhS8ZOWm
         mq/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z12aKn10;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qyK0lsfIQVMQtoEHIoLULm+82P141pqD/OJNw/ZkhjU=;
        b=RQWFpGHzsY0tDnX2Kn9drisMQMUikxTHuOqscPl+te5nzHuRWgM8gnE/1LrT1oTjYf
         mTTovtnpGcUj84CwzLUF5LzEwX0v7YwAWVBhGKFlCvfOaD6/2WDJ3n9Gh4r896OUoJN/
         agsygtsl6vmWLFIlif+Am1fdq4mmVPBoyy/udaTYL9XBLd+LUkN7sVEMdVWcdlCjZOqN
         z7mKSds6vqC6nTtE0tvQbLF2ReHrJkLot8mzSJAKgGfY2xmNiWUB4LYkhkLuXX9EAJPa
         DqO4NP0/V7m+inEtIaRKqvZaQvOn4MfgCg6rMjLeD1SxCbKdtTWP4o2gR9vyaNv0dhrp
         pMdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qyK0lsfIQVMQtoEHIoLULm+82P141pqD/OJNw/ZkhjU=;
        b=mc17mAz/m/LuLb42Tdby/R4eIROllEIdq4n8hhTZnIN9qMNeknt5HijHlqu62HB9Vf
         JOAoH3ln750CosfD7mYaMjBiZ05inSQXhPLzpJURWLvKWGMnuNFbelM/EGihRRUkJe7p
         8ujIUoSemQRsm04SHoWcD6pwvdORusvHUh6r+f3jKte4SiQtXLoArJI9dsQrzaEZB0ua
         6Yh8L5p7f91gzXHMgvUqEzVKNqZuoOJKV9a6IYIk3andW8vRTdhkml4oSw0Y0YCEJIR2
         lX2yXs96g/OIjSYfrpM1W8+tX2LTaIOo7zlR0/EGhm8umDa2b43RIo+W2cl4GrG8wt7V
         gOhw==
X-Gm-Message-State: AOAM533zmprBRGYAXz8VaRsn7nSFmSjJeOCri7EvDUphqys1iK2VmTdG
	HGsoqrnj8Bnyizt26a3iBkE=
X-Google-Smtp-Source: ABdhPJxVYVMWY1y1PJrmdHQMi2KscOEeIJpr5q/RoZiTp15RF4JOhbUTtZv/9xN3DRteUOYzO5MWhA==
X-Received: by 2002:a63:4c55:: with SMTP id m21mr18530239pgl.305.1603741501988;
        Mon, 26 Oct 2020 12:45:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b20f:: with SMTP id t15ls4853603plr.3.gmail; Mon, 26
 Oct 2020 12:45:01 -0700 (PDT)
X-Received: by 2002:a17:902:ba90:b029:d5:cbb1:1733 with SMTP id k16-20020a170902ba90b02900d5cbb11733mr16068703pls.6.1603741501405;
        Mon, 26 Oct 2020 12:45:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603741501; cv=none;
        d=google.com; s=arc-20160816;
        b=VHoNnkMoqpd3V/NXb42D1wvboWbrujCIjOyZnKlQjLQrpBK7Ztpcj2hrBGo7vUeQ2F
         f/yOtj2HoXSoIE3jFhKg198rlm6wmuXOr0iTl/BuAZuWAZvuPVPpg3lNGiiLhWm4ILux
         ErPu3ywAePZd2NwWfdm/N+95DrC2+dpcHkkG56IDNwKxl7eCLQnaIVnaA6Ji/QRKp1n3
         O9h2hZBfk6pNLdw+JNdi84EDtjkza8BohUbfGxQk2PI5znZD+BC3D6imwHGhjyLY+SxX
         fXWs2TUSVXf91SpWDG9ZPU6Gt75R4QX/7tVxpISd3bqzljT4rrDhMw77p1Z1n4w2aoX4
         ICSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UvmyfAS3FNKDIUlMjXBNYKBYoK/vtIij8n9c082Mubc=;
        b=DU+ZP78t5zu0eEs9w4JjdScaPPM5S5tHsqdwTdWNlPgHiw4wdrW/QUUHGpFwgqTQNu
         nXWkvmSn/QdqmWPqYhOEyEq/2eTZYtezYL1Yi6Bko84pe4Q00WRyT8AaI3juBh1nasGi
         mcEx6AmM25oYFsIWnHfXyvAqrtbDFdDKqQ13BfCSoQiGat+1/5BAD9cK5p3idCITmkFN
         0s8iofZUI6GpIaweljNPE9ptVz2qtVz2QJZ0/LPNnJlCJQGfANkjTJBMyc9ryd1mc28S
         Q4N0BRLzz65jCWPWElETJsxAr77neXgfhSIPWZfMi4PR403fKZpdzB3UqNxMm+vdPh5t
         OUpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z12aKn10;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id x24si621882pll.5.2020.10.26.12.45.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 12:45:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id j5so5238058plk.7
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 12:45:01 -0700 (PDT)
X-Received: by 2002:a17:90a:740a:: with SMTP id a10mr18182181pjg.32.1603741500883;
 Mon, 26 Oct 2020 12:45:00 -0700 (PDT)
MIME-Version: 1.0
References: <20201026194110.3817470-1-arnd@kernel.org> <20201026194110.3817470-2-arnd@kernel.org>
In-Reply-To: <20201026194110.3817470-2-arnd@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 26 Oct 2020 12:44:49 -0700
Message-ID: <CAKwvOdnb+nC+5SHjqU0gqwD2kaEptE6EjGtxxgmr36Ts19rNTQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] drm/imx: tve remove extraneous type qualifier
To: Arnd Bergmann <arnd@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>, 
	Daniel Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Arnd Bergmann <arnd@arndb.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Marco Felsch <m.felsch@pengutronix.de>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Markus Elfring <elfring@users.sourceforge.net>, Thomas Zimmermann <tzimmermann@suse.de>, 
	dri-devel <dri-devel@lists.freedesktop.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Z12aKn10;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Mon, Oct 26, 2020 at 12:41 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> clang warns about functions returning a 'const int' result:
>
> drivers/gpu/drm/imx/imx-tve.c:487:8: warning: type qualifiers ignored on function return type [-Wignored-qualifiers]
>
> Remove the extraneous 'const' qualifier here. I would guess that the
> function was intended to be marked __attribute__((const)) instead,
> but that would also be wrong since it call other functions without
> that attribute.
>
> Fixes: fcbc51e54d2a ("staging: drm/imx: Add support for Television Encoder (TVEv2)")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/gpu/drm/imx/imx-tve.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/imx/imx-tve.c b/drivers/gpu/drm/imx/imx-tve.c
> index ef3c25d87d87..2a8d2e32e7b4 100644
> --- a/drivers/gpu/drm/imx/imx-tve.c
> +++ b/drivers/gpu/drm/imx/imx-tve.c
> @@ -484,7 +484,7 @@ static const char * const imx_tve_modes[] = {
>         [TVE_MODE_VGA] = "vga",
>  };
>
> -static const int of_get_tve_mode(struct device_node *np)
> +static int of_get_tve_mode(struct device_node *np)
>  {
>         const char *bm;
>         int ret, i;
> --
> 2.27.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnb%2BnC%2B5SHjqU0gqwD2kaEptE6EjGtxxgmr36Ts19rNTQ%40mail.gmail.com.
