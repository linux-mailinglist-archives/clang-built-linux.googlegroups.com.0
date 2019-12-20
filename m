Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZU36TXQKGQE7FHKXAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 7581C1281E3
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 19:07:36 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id r30sf5603845pgm.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 10:07:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576865255; cv=pass;
        d=google.com; s=arc-20160816;
        b=qipc1R7oPjn/zc5BWKPkIT3h4yUvFfeaqUwiOKTEB1AX4Y3+eDpWyq2lbP7vtwuXnb
         huqQ/T6jOfwm/DDAaETv+0LT8hJzjW1wy0pJBXnnBQie9jdapgKM2tVYsH2FebjobPDK
         aq9V+Q+oELNVLLqXyybjsopoeGpCYyVaoCRLFDv/sKEZL5gaN9ZIWKiq85X3LftcZgzT
         XR6sscP3AM/EXB2tOnV8GZN5E3gkpmLKdwq9+dmrX4cMuzmjVQsHTYiYuJY5xkUmPnT3
         6w7sw2QykwYopKzi70KOzHvPKP/+2KBxnOvTFt3X2k1fZLw2i/69UmIaxQG/wnW94CiA
         JA9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=w0r5NFvRgAiCjTGHA0tQgsI6xSTnwPmErUSvzf+Pmp8=;
        b=oNS0+es0Txn0XV/kz1mq7ysPvBv0ccoWstlg3fw0rORgVIvqCGXAwKoStLCXP0xO1W
         t1p6n8YNPl7ILZC41wEQB04Ze+/GJfeBTD1WVMdgsibfw0sXcLnQK98d5g8OsuAzoNLG
         MlUnyAv6l6GWgo0B+7AEZFmhllEmCsoiadXvy0i/7UxdLBk5KZxhX+LMPmDIw+yHRd6v
         Cl+1ymrD6sP+yr1IQtHtq2/EL6hbnQb857W0kUYx52uJBr7nVLO9Kz85tWo2DzrouPjv
         znOxc19Koy8yjp0sVV6gV4jTMUA7pxDH81HF9yk0mxKCgurENhZ5OaD+ExWsXci1GDHo
         GyZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YXxdYYsH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w0r5NFvRgAiCjTGHA0tQgsI6xSTnwPmErUSvzf+Pmp8=;
        b=nsU/IT9UM6BVDKeqN1Gx+ewoUS9y6ATzKyheKz1Ul+f3nu75GHMS8DjOHEa8dB/L3x
         D318tKt3YGg30U5WPzAMAAiMEl2nmsVkGBjKawzANEtoRaTiMYtj/Zw8QlUP0Cx9RdKi
         mCrvVQ54fvsKqb+PL/SIjN380i88031rgk8oPfPXcj8B4YoDlLT9f/kgeDiFKLxStZfo
         WCMExBBuOIriots/2kn1o48N4fwnp1ecomi8GAKXW5mUifXo5YcWBxT5I5YxHBXpZCkw
         Jop2z8InzgvLlzReWmaKsMBRKZAJ58BC/Moaydru9xOif10LuEim4CRN6Mgg4CXPTLhB
         /Yfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w0r5NFvRgAiCjTGHA0tQgsI6xSTnwPmErUSvzf+Pmp8=;
        b=i2r+Z+yJj/KKBbM9l3Lo7oh0DsmloQpwHmVCD4ioMGaVn9eZBIKkFrUBfMTbDJ9+PB
         JuL7tDJ4MZ5P9DBYuq/x3sBZlGwEfonDGKQdUxuglHpfc6ALuaF+jfFTq+vn8DPL6v9q
         0r9UZW0kNVzku2ZCBRqkNZ7+qQrEaQGHsJDlv3jCuEFS5KqwG4bQRa8DuSEhQEfoAW8f
         nCbUaxj49fpq5jfEQdw5eWcuArnaXuVROf2E29E+tZX7m2bYWEDAVij2/2yawVvto56B
         XKxmqU/SdQgvRqBlpBZhYCLbphYQ1fThzNiDB3lRDGuUtRjtzDNJVgHj21Iv3VAFplTU
         3ukw==
X-Gm-Message-State: APjAAAXBgdVX7L+V1mzXTRQmKw6JKUWb01C2z3DrtKjI9PNLQUI7kj8j
	NAUrY4xafiuEufS6OSiAFx0=
X-Google-Smtp-Source: APXvYqzFfzdmD0x0uDEHiycpa+sO/+3NyxE50jW/JGUwXk0FXqx8ygTp9yrvvu8pw1zXiLwQfgnrJw==
X-Received: by 2002:a65:66ce:: with SMTP id c14mr16797202pgw.262.1576865254848;
        Fri, 20 Dec 2019 10:07:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7d49:: with SMTP id m9ls2277445pgn.3.gmail; Fri, 20 Dec
 2019 10:07:34 -0800 (PST)
X-Received: by 2002:a63:6fca:: with SMTP id k193mr16857221pgc.416.1576865254354;
        Fri, 20 Dec 2019 10:07:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576865254; cv=none;
        d=google.com; s=arc-20160816;
        b=UGfvsKaA9mr/eezucemaSV7u333T35MafuTZR9wGz1JP0X6jSTZfCmje7uU8P5YpHM
         x/pXmRE0VTcTEk/QRNRQ71tPTEcOCPUjZo9jSkTm4Ea4QkmzoSGgWUb4ZhpGauGSDSzV
         5Ca1nQr/It76ple7NCkIYVrDP/W8yCxUsLKeb/rtQtggpp6RDLd1icLSRvAZuogumepB
         mY6+EnreCaFMHKcGT/S+pakd/WbJ1/zo+BUbnJBtnlI/A1KfyimLvyjCwEc/NJKNhN0m
         aLj7573c8HAQdVwrGlXVPeGCTsJkv988zLP0Lx2UzAK4xArB7LsjO82kxeWZ9I6GVnoq
         NHFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YKFFB/AVD056vw8BJkibNJy24oTN3cNpbKhBWFLueik=;
        b=UNAUlaHMxmGvKwYHY+t+WFfDtlcuxiy35vMIrQL+gbZZ7R3WlPPR+iCSh9CMNVP7Uh
         beqCJ4dKzOOhgGyJ8HwN2712Nv2wPM9gp5KP0eYmcc3st1gOdpy4ibhuCQ/wg1bFrIiB
         UArg1qQdAA0r/hk7cxxq/4P0+LhdjWnUoXHJWSLAwaSlf/aqpkGppS5fgYFMOQNCnudM
         4yQbo8dOA5A1D43tHorSFnS2Xrx9RV+MZC9aX13uNtkVGsmpS3BNocCPvmnj2t1cd5FP
         j9MXOxKLRG7UIWgThnTlrgaeXQSup1G70UkdkeNDgVqdxnY4ixZQdvzKl2rg48ri/xz5
         +OJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YXxdYYsH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id h18si345006pju.1.2019.12.20.10.07.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2019 10:07:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id d5so4430654pjz.5
        for <clang-built-linux@googlegroups.com>; Fri, 20 Dec 2019 10:07:34 -0800 (PST)
X-Received: by 2002:a17:902:9f91:: with SMTP id g17mr16233371plq.179.1576865253685;
 Fri, 20 Dec 2019 10:07:33 -0800 (PST)
MIME-Version: 1.0
References: <20191218025337.35044-1-natechancellor@gmail.com>
In-Reply-To: <20191218025337.35044-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Dec 2019 10:07:22 -0800
Message-ID: <CAKwvOd=DcXiA5d07bS_3qhr4F-mbsGzZic=OgomuhZchGaXeoQ@mail.gmail.com>
Subject: Re: [PATCH] fbcon: Adjust indentation in set_con2fb_map
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, dri-devel <dri-devel@lists.freedesktop.org>, 
	linux-fbdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YXxdYYsH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Tue, Dec 17, 2019 at 6:53 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../drivers/video/fbdev/core/fbcon.c:915:3: warning: misleading
> indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>         return err;
>         ^
> ../drivers/video/fbdev/core/fbcon.c:912:2: note: previous statement is
> here
>         if (!search_fb_in_map(info_idx))
>         ^
> 1 warning generated.
>
> This warning occurs because there is a space before the tab on this
> line. This happens on several lines in this function; normalize them
> so that the indentation is consistent with the Linux kernel coding
> style and clang no longer warns.
>
> This warning was introduced before the beginning of git history so no
> fixes tab.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/824
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/video/fbdev/core/fbcon.c | 27 +++++++++++++--------------
>  1 file changed, 13 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
> index c9235a2f42f8..9d2c43e345a4 100644
> --- a/drivers/video/fbdev/core/fbcon.c
> +++ b/drivers/video/fbdev/core/fbcon.c
> @@ -866,7 +866,7 @@ static int set_con2fb_map(int unit, int newidx, int user)
>         int oldidx = con2fb_map[unit];
>         struct fb_info *info = registered_fb[newidx];
>         struct fb_info *oldinfo = NULL;
> -       int found, err = 0;
> +       int found, err = 0;
>
>         WARN_CONSOLE_UNLOCKED();
>
> @@ -888,31 +888,30 @@ static int set_con2fb_map(int unit, int newidx, int user)
>
>         con2fb_map[unit] = newidx;
>         if (!err && !found)
> -               err = con2fb_acquire_newinfo(vc, info, unit, oldidx);
> -
> +               err = con2fb_acquire_newinfo(vc, info, unit, oldidx);
>
>         /*
>          * If old fb is not mapped to any of the consoles,
>          * fbcon should release it.
>          */
> -       if (!err && oldinfo && !search_fb_in_map(oldidx))
> -               err = con2fb_release_oldinfo(vc, oldinfo, info, unit, oldidx,
> -                                            found);
> +       if (!err && oldinfo && !search_fb_in_map(oldidx))
> +               err = con2fb_release_oldinfo(vc, oldinfo, info, unit, oldidx,
> +                                            found);
>
> -       if (!err) {
> -               int show_logo = (fg_console == 0 && !user &&
> -                                logo_shown != FBCON_LOGO_DONTSHOW);
> +       if (!err) {
> +               int show_logo = (fg_console == 0 && !user &&
> +                                logo_shown != FBCON_LOGO_DONTSHOW);
>
> -               if (!found)
> -                       fbcon_add_cursor_timer(info);
> -               con2fb_map_boot[unit] = newidx;
> -               con2fb_init_display(vc, info, unit, show_logo);
> +               if (!found)
> +                       fbcon_add_cursor_timer(info);
> +               con2fb_map_boot[unit] = newidx;
> +               con2fb_init_display(vc, info, unit, show_logo);
>         }
>
>         if (!search_fb_in_map(info_idx))
>                 info_idx = newidx;
>
> -       return err;
> +       return err;
>  }
>
>  /*
> --
> 2.24.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218025337.35044-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DDcXiA5d07bS_3qhr4F-mbsGzZic%3DOgomuhZchGaXeoQ%40mail.gmail.com.
