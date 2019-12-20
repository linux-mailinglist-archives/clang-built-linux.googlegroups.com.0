Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4446TXQKGQEZARKC6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 893881281F2
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 19:09:56 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id p126sf868468pfb.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 10:09:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576865395; cv=pass;
        d=google.com; s=arc-20160816;
        b=AfAdizD9IiXK38wsrsKYgJNQHttE6Tju57KwX3xCtnVeHpNvvYj/qSBquiqzL8AeUx
         oqMEXPZ0Ti8IA8/loVB5tsY6DGfrt5t/0zi9aGoTupybyjwKRiJ8xiTwG0q6h4YptJnO
         +JaMgSYBVLwFfkWGEuBKu20HhA2AxW77XbX/lGRPQN7zyrFWxshxc5jK7kCx83wDaEkS
         LL51irMyb9iFhCegj/kveeiZv9Yift0TByWrK0DD8MtWktPW6YhkJxuNWPkOBbYrMlZg
         Tko69875qXrw+ojNOKX9mQfx5yoO+LaM4DTEOaz0KUVYcLbiiF6/izOLqaYNoBkQFltN
         ghJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Q1Lh3yTnyndZlBFwUiqpbzUTeq+OLCNJ/25L6oh+zK0=;
        b=gMzmpTi99y6RSebiD9QHBEdVildHg1eAcLG/dM/ZIpKtDcjUZwbnGBSCo2llJgEfQn
         Hp9lKFafu/gPY3RWbf17e/1du8i6fGA6RvCPOZdOlvaXa14LS2Dl5WI5BJEF7Kz0js93
         OCZkQUvsk3Mr9V6CFvLf9ax7P7gLmBMLOLMomdZTse5HrbSjrDzqDabFenzj8HcE442j
         4lEO0JSlNTGHdipMmas6F3ISRdFDmdluB/zMQBZaGuB0r5LUSycpTva667xI0lV3mL4d
         TKY5D1pFASoFWpVZAnveUg6goHI+M48he6iGd8ud+mRcsUWeury/Ew83D5H+Tg25FI7j
         Xf8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G64k8noT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q1Lh3yTnyndZlBFwUiqpbzUTeq+OLCNJ/25L6oh+zK0=;
        b=jOlp94EzQz9BrnMjX8LjPUBocsy9boc9cVFvjz3wt5s6VlQ0wh8FQIAM3Zen5ow0m4
         3SnJhGLI47QRxVoNbUWVn0AdnwIWtPMCiPuhiGeaKOpui0a0luK5IVsk4kuKteBLu6kH
         xxc3SGkUiFxM4UULZHYfv0orzeV/LKK+7zNTlV6hHpE0Y9xCqt2K8t0ttbDQGVeAb3bn
         cVr9C1iwxUpmG3FH0ZBAE7xQFhX/LiGQVYgBTFWxrgXoobMrOrX8IbA/ELtqQ0w4Hv9K
         +bpr/hvQtYPu+LmzXeQRpxnE3d6LjTFtmr9QBZzg+6EWcir7fLEVtLNVfdHAJPU7mjyj
         vPlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q1Lh3yTnyndZlBFwUiqpbzUTeq+OLCNJ/25L6oh+zK0=;
        b=esjSzq6e+L0AJ5pKzDUbV+86iIrEfWXNvvICC2wXdhZVh3OgxSbvL1rKqnRsNniwuL
         UlUuEc/cNcQbUR4MuB9F8XfFH3FJGM8XNs67YZyWzGctHoQj+Bg6qYLI26HI5qDK+dwI
         YU434vcyRPdlcrxSylRoAYPdb61i69JHi1wXLAVFRld0o9vpJXDnKfp2n6FB1tSlm3fx
         sDCjDoK2uxMqUd3PRocFsrdRCakUH7S0kXMYerc3zPrR028WekIdynJ2KOtiLjlRxmyw
         KdpUw10bvWYhmjZMBmf6o1D/3YZMMvEgIBz8f000WHjO/u1QpaFflJDtjNsFT1k9M+dm
         CQJQ==
X-Gm-Message-State: APjAAAUMhtxfPu0Syp7hxYAYJUuLaIwETIzg9687jgkI58oyRCAyWcmy
	nmknvWdFshUd3kT6S0zv5bk=
X-Google-Smtp-Source: APXvYqyF+SqoO25XHl6uUkfbCVjyBcKzQv/nsyGc+diw+m7lyrcwyH0zMFw+qifu9yOgJ+ERZHgzbg==
X-Received: by 2002:aa7:8708:: with SMTP id b8mr1799317pfo.184.1576865395154;
        Fri, 20 Dec 2019 10:09:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3421:: with SMTP id o30ls2659736pjb.1.canary-gmail;
 Fri, 20 Dec 2019 10:09:54 -0800 (PST)
X-Received: by 2002:a17:902:b690:: with SMTP id c16mr16411041pls.72.1576865394700;
        Fri, 20 Dec 2019 10:09:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576865394; cv=none;
        d=google.com; s=arc-20160816;
        b=BsuZS7GoARZPs1NJzx6RMprH69qzANHU4uIxBVyM09cicwFzIQ0XSkEs2tlFKWvqNu
         ukkNXYX+na72ZCM1+HIsLEPpxpQzIoxQDAmJT/17Pes9/eE4a/6OhNQbrUZVziqG1Fih
         TO5rL/+DnQEmR0/VH9L0dcmVo129J1j0i7FTL4AnTjMBgTMm91i9LStUQEfTEsn1VO63
         11gZNdAHWAg7OMRcbnHeb+YiZ6Dvir3zNwKHsyDXnKs9ul/DmwhmiRkLU98exlyQJo6x
         l+pnikXTwpxvirNcQJc7IS9swd8Ux17GI4wlfCHXP9PhIZYdjSJWJd9sFc9LifkkPyoo
         XDsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1NoYeCvzhEf2ThmFbvrz2tyjWvGOYahfq+FFDczVt3k=;
        b=TBkCm1V2PhxVYTKct3PAXA9pS0OcIn+ax/wIEOd7FlO5LQVS7WOl3xqMpflO7x0SUF
         wVtYQZVB2zvD1zOJVhcDvnj1GGH0tsDnBEAkZFjxXZSgyXS7h6QdlHnUg11xPyMmTyCl
         OMr6hgVdPxqreFTYBJx5LeyUMkwSc4A/tLAPlaGJgz2kh0HIDlIUV9Z7KYkn1rwlzCJ2
         3hHONvP6KvI5dV2y9Sb8+f1SAf1MMhjMK7hjFZE4rFNx+oqBUF6b8/ZsWWVPwYI6hcBA
         kCZc0249RIw5ojhNZRbMCJtM4ih5s0WZrPNWmSyThzFdNDtjvkODrusILDY+lYMin9X1
         dVEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G64k8noT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id k1si489521pgj.0.2019.12.20.10.09.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2019 10:09:54 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id l127so5636497pfl.1
        for <clang-built-linux@googlegroups.com>; Fri, 20 Dec 2019 10:09:54 -0800 (PST)
X-Received: by 2002:a63:590e:: with SMTP id n14mr15983487pgb.10.1576865394047;
 Fri, 20 Dec 2019 10:09:54 -0800 (PST)
MIME-Version: 1.0
References: <20191218030025.10064-1-natechancellor@gmail.com>
In-Reply-To: <20191218030025.10064-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Dec 2019 10:09:43 -0800
Message-ID: <CAKwvOdk0hz-Eu00yRwRT6MFDmxPWdgnuYZWxGxASicCq68NivQ@mail.gmail.com>
Subject: Re: [PATCH] fbmem: Adjust indentation in fb_prepare_logo and fb_blank
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, dri-devel <dri-devel@lists.freedesktop.org>, 
	linux-fbdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G64k8noT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Tue, Dec 17, 2019 at 7:00 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../drivers/video/fbdev/core/fbmem.c:665:3: warning: misleading
> indentation; statement is not part of the previous 'else'
> [-Wmisleading-indentation]
>         if (fb_logo.depth > 4 && depth > 4) {
>         ^
> ../drivers/video/fbdev/core/fbmem.c:661:2: note: previous statement is
> here
>         else
>         ^
> ../drivers/video/fbdev/core/fbmem.c:1075:3: warning: misleading
> indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>         return ret;
>         ^
> ../drivers/video/fbdev/core/fbmem.c:1072:2: note: previous statement is
> here
>         if (!ret)
>         ^
> 2 warnings generated.
>
> This warning occurs because there are spaces before the tabs on these
> lines. Normalize the indentation in these functions so that it is
> consistent with the Linux kernel coding style and clang no longer warns.
>
> Fixes: 1692b37c99d5 ("fbdev: Fix logo if logo depth is less than framebuffer depth")
> Link: https://github.com/ClangBuiltLinux/linux/issues/825
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/video/fbdev/core/fbmem.c | 36 ++++++++++++++++----------------
>  1 file changed, 18 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/video/fbdev/core/fbmem.c b/drivers/video/fbdev/core/fbmem.c
> index 0662b61fdb50..bf63cc0e6b65 100644
> --- a/drivers/video/fbdev/core/fbmem.c
> +++ b/drivers/video/fbdev/core/fbmem.c
> @@ -662,20 +662,20 @@ int fb_prepare_logo(struct fb_info *info, int rotate)
>                 fb_logo.depth = 1;
>
>
> -       if (fb_logo.depth > 4 && depth > 4) {
> -               switch (info->fix.visual) {
> -               case FB_VISUAL_TRUECOLOR:
> -                       fb_logo.needs_truepalette = 1;
> -                       break;
> -               case FB_VISUAL_DIRECTCOLOR:
> -                       fb_logo.needs_directpalette = 1;
> -                       fb_logo.needs_cmapreset = 1;
> -                       break;
> -               case FB_VISUAL_PSEUDOCOLOR:
> -                       fb_logo.needs_cmapreset = 1;
> -                       break;
> -               }
> -       }
> +       if (fb_logo.depth > 4 && depth > 4) {
> +               switch (info->fix.visual) {
> +               case FB_VISUAL_TRUECOLOR:
> +                       fb_logo.needs_truepalette = 1;
> +                       break;
> +               case FB_VISUAL_DIRECTCOLOR:
> +                       fb_logo.needs_directpalette = 1;
> +                       fb_logo.needs_cmapreset = 1;
> +                       break;
> +               case FB_VISUAL_PSEUDOCOLOR:
> +                       fb_logo.needs_cmapreset = 1;
> +                       break;
> +               }
> +       }
>
>         height = fb_logo.logo->height;
>         if (fb_center_logo)
> @@ -1060,19 +1060,19 @@ fb_blank(struct fb_info *info, int blank)
>         struct fb_event event;
>         int ret = -EINVAL;
>
> -       if (blank > FB_BLANK_POWERDOWN)
> -               blank = FB_BLANK_POWERDOWN;
> +       if (blank > FB_BLANK_POWERDOWN)
> +               blank = FB_BLANK_POWERDOWN;
>
>         event.info = info;
>         event.data = &blank;
>
>         if (info->fbops->fb_blank)
> -               ret = info->fbops->fb_blank(blank, info);
> +               ret = info->fbops->fb_blank(blank, info);
>
>         if (!ret)
>                 fb_notifier_call_chain(FB_EVENT_BLANK, &event);
>
> -       return ret;
> +       return ret;
>  }
>  EXPORT_SYMBOL(fb_blank);
>
> --
> 2.24.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218030025.10064-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk0hz-Eu00yRwRT6MFDmxPWdgnuYZWxGxASicCq68NivQ%40mail.gmail.com.
