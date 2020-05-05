Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBXHIYX2QKGQEFW3JLAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 8848D1C584A
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:12:45 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id u10sf1894185iog.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:12:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588687964; cv=pass;
        d=google.com; s=arc-20160816;
        b=A71B4wzxvkIu/qRdg2CvDDueQtmMnGMpgqf6bRw8OiJuCUCYjq2EokjOHd1PRd9wOB
         aMKVmerGJfwpvFmMZuCtHfLstuVJYU4f9lxVJqUZY5yeqLubTeB1YUIl0EzJHMRJNh87
         SPTrT7uBP5txplFMU6BVrLUwS3ruLqHHFztp/iTm/AoR0+fE5KkMPJ+qLiQC9HaFpNek
         tJndIbv2RuEHdwjTW7oc3gE8/mRFUQhecXLrm+lRJWfnypzPvY9VhCO/mrRL7a+Yi+gi
         nYwQqGknIrtyCgQ3RMpC+bYpCdKDsLgN9bO5ptWT/wEbUZqDMcwmcfxbe6L/uNXeIsf8
         qR/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IrwdYBErml3UyYA5IHMPiOwgqkk9ox6pn7EYAeyOaLY=;
        b=WZ473jBJSst0jVIHSIXdGVroGRj2sBHtOepSUtp49UbStOIQR3gJWbWxGUPYWmJ5ct
         J8fT6iaqKN1U4g0nfhzjyzLcLGMMxguzFPM2b8F6BVI0/f9LQh0YJTUXuqKiNOJYPgwv
         4pRAikd4BzhcfwHsW1uVWMh3W+YdR0Y6o79gOiYBorA9TagRO00hPFV0w6JjYfhlDi/C
         uFI6Ify8bL+/cP45eGTfVTZwn54g4p0IP1bHh5RZ30cK9LZUjCH+Ykra7gBp59l+SxE0
         +PcpgfF6haBx9fdVUM2grobCnSst8wE2ntp5UXX68R19RkvGa4SZsbTU6yLjrqzUk9xc
         cC7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="gSAzcE/c";
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IrwdYBErml3UyYA5IHMPiOwgqkk9ox6pn7EYAeyOaLY=;
        b=l80a7VBS+n5DObzYgqx6AgOIWQ199D7cAaAUbR7f1HWGITqEMHmy3Y1jnrYoVNQTe2
         JIqBe7rjIY9+NEQ6H9nVfVUhqIKleibhppzXCWUGBg2Z/w82LO+gGviYw1var5QoS2Vt
         /an8w5Qfq+HlpThvNZrk5L1RbUzy5BdF/qd3I2JK9DVM5qVI9Rx+1eb0qdoFewC5aguS
         fDCyINOaL7TLOPncFbSv5y0H8GZqVVvJwFLdR09S5RpyZx+Riw1AdbshYzoE+H8aIp/S
         X0DSf320diVkO3hRb/RpZLYjnkw0lnHAB+xVcn6AesQs+I746OhyXSLX3g/B2SJp9sgv
         roug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IrwdYBErml3UyYA5IHMPiOwgqkk9ox6pn7EYAeyOaLY=;
        b=hwL0RlKFrnGCK1KO/xSpgDpcUVRxBLW3w4HKqD1VzMezgwNDee6C6U9w4DIUxLMRt0
         /JThba/HocZsv7enNPQmZwVgrtP/i4x8gHKVBWdgPqfBM7yIZobVgD2PangabZMW1ELd
         o5yS0yy/OX6zoP0zVqCgG2V/xagMtHc61q5ksSdS07206SxzYRUXqrtYcOVGJzFYupRy
         DYMx0aaS7yac0AtTjbRwEjrHLUi3fXOd3PVyE9Fo18rALIvztuNr1BKIHP50W/S/U9SD
         fEF8VOg33cH113Ahn6nb8zmLz8LfrrQYudzc/qmU93zsWESnRPnSQS5erPP5YQTE1jQT
         UCrA==
X-Gm-Message-State: AGi0Pub61EvXNvGCN4Wb0M52ThYXmm+/p2MoCjlaeHouwkiFJYwbfmzI
	Fb+HXy4rZbps+EaMt1MA/WM=
X-Google-Smtp-Source: APiQypITcpCAj7Kc2j9EXkXsmSWl50/DbX9L0WdOkxhPra797r4mprZoDKA+WZGjj4rGXN3zR3oVCw==
X-Received: by 2002:a92:bf0b:: with SMTP id z11mr3782141ilh.207.1588687964587;
        Tue, 05 May 2020 07:12:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:b6c2:: with SMTP id g185ls688044iof.8.gmail; Tue, 05 May
 2020 07:12:44 -0700 (PDT)
X-Received: by 2002:a6b:cac5:: with SMTP id a188mr3588681iog.145.1588687964181;
        Tue, 05 May 2020 07:12:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588687964; cv=none;
        d=google.com; s=arc-20160816;
        b=hER8Ugj71ORhH66DbnMFykTu7Y00GQbm+imy8Hi/y7BF7wdqXtBxdTVaRikAYoowLl
         UuDEKktW1IBw8WgbaW8jAZ7gryp27hc7wRibccrUny80VUGJm2RC6lJF5GrmbNZ3Z28l
         2BSc57GH/iMjO8ssVBLmEEl58HKz3LDG3586kY7Kzp1n6tOgnaQAacKxC7f9OtlwwSG9
         Ufz9pWGVpAtEDboSUe+KgGPCY4UJUAaLDW9NX7NUBy8jKfSnhDlBhRXKlHkbVsWMrc6U
         9FFbxLWXPeKzk652eTava1QtzR7sVrzD3nbNITkaO+BynYoggMhEibgBblLT+0oE/tHY
         7CEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Yjm2cmKVuwlkstPxfFd5MfjFWk/J8R1nDWAUw4Id7r8=;
        b=m/DSft6POm370OCsovCXPQPx8+o+Tl6ffwo2QehlSTytjyGEyySssog8wAzPXHEE20
         mzOLFKj4YbCyUaBtlg7TxcLcLCFvqTxK+bKuLnn7BSp2g2KmOGEDb1n86/+Y8BjcBo9h
         6uh7iC0c9QaPYH2u/rKzGwcxnQZKlC58b5Xkpo0wyEeOHc+xbWnfF7GVSJv7AX4lTeb7
         sOYkQvq3kyYc1qc8fdKLBz/GVtYLeqNqPEg/OEl0yY8dtKrrSXVwfAh4WSW/0xa227Ih
         YgexRphMApA4N9VM/PhQcnM+Mx5CjiWGChY2VJSIiDT4KI7IEgvTSspepGmFa21Zz/hu
         SOLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="gSAzcE/c";
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id p18si164008ile.5.2020.05.05.07.12.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 07:12:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id x10so2070967oie.1
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 07:12:44 -0700 (PDT)
X-Received: by 2002:aca:1c08:: with SMTP id c8mr2558360oic.172.1588687963483;
 Tue, 05 May 2020 07:12:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200505140407.373983-1-arnd@arndb.de>
In-Reply-To: <20200505140407.373983-1-arnd@arndb.de>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 16:12:30 +0200
Message-ID: <CANpmjNNw6M9Gqj6WGTHH4Cegu8roTVu5x6Vqs_tCBxX3gPwL4A@mail.gmail.com>
Subject: Re: [PATCH] omapfb: don't annotate dss_conv_list as __initdata
To: Arnd Bergmann <arnd@arndb.de>
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Allison Randal <allison@lohutok.net>, Alexios Zavras <alexios.zavras@intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Enrico Weigelt <info@metux.net>, 
	Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org, 
	linux-fbdev@vger.kernel.org, dri-devel <dri-devel@lists.freedesktop.org>, 
	LKML <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="gSAzcE/c";       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Tue, 5 May 2020 at 16:04, Arnd Bergmann <arnd@arndb.de> wrote:
>
> With the kcsan changes, __read_once_size() is not inlined, but
> clang can decide to emit a version that hardcodes the address, which
> in turn triggers a warning for dss_conv_list being __initdata but
> __read_once_size() not being __init:
>
> WARNING: modpost: vmlinux.o(.text+0x6e4d7a): Section mismatch in
> reference from the function __read_once_size() to the variable
> .init.data:dss_conv_list
> The function __read_once_size() references
> the variable __initdata dss_conv_list.
> This is often because __read_once_size lacks a __initdata
> annotation or the annotation of dss_conv_list is wrong.
>
> This is clearly a false positive warning, but it's hard to tell
> who is to blame for it. Work around it by removing the __initdata
> annotation, wasting the space of two pointers in return for getting
> rid of the warning.
>
> Fixes: dfd402a4c4ba ("kcsan: Add Kernel Concurrency Sanitizer infrastructure")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

[+Cc Will]

I think Will is working on a series that completely overhauls
READ_ONCE/WRITE_ONCE, also getting rid of __read_once_size() in the
process, which would make this patch redundant. If we can live with
this warning until the new READ_ONCE/WRITE_ONCE gets merged, we can
probably keep things as-is for now.

Thanks,
-- Marco

> ---
>  drivers/video/fbdev/omap2/omapfb/dss/omapdss-boot-init.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/video/fbdev/omap2/omapfb/dss/omapdss-boot-init.c b/drivers/video/fbdev/omap2/omapfb/dss/omapdss-boot-init.c
> index 0ae0cab252d3..29fdff9c95f6 100644
> --- a/drivers/video/fbdev/omap2/omapfb/dss/omapdss-boot-init.c
> +++ b/drivers/video/fbdev/omap2/omapfb/dss/omapdss-boot-init.c
> @@ -19,7 +19,7 @@
>  #include <linux/slab.h>
>  #include <linux/list.h>
>
> -static struct list_head dss_conv_list __initdata;
> +static struct list_head dss_conv_list;
>
>  static const char prefix[] __initconst = "omapdss,";
>
> --
> 2.26.0
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNw6M9Gqj6WGTHH4Cegu8roTVu5x6Vqs_tCBxX3gPwL4A%40mail.gmail.com.
