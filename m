Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4MFWH6QKGQE3A4XACI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 311632AF965
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 21:00:51 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id z79sf1300629oia.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 12:00:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605124850; cv=pass;
        d=google.com; s=arc-20160816;
        b=08yZwBMvLFgiuTzb6l4fRRlODHlcSlFapD2g0gl7nBmspvLfGBJsVa/8r9/s+PNAyr
         iIQodvt7GYv7GnaXKFp0aj7Yp9oKg2hMIoH6pEn3Va1PgLntStshginMivq5ko9kWXAx
         +HyDZUTrWZbEpBtDwdZS4YQxfz9/c0UAUyfnJnlcJvmttNQ63Jd3h47U5oWf88BBL3Tt
         CojjUlnF8B9F1vmZhsU2+YGT0MUcC7uV4UDU0FPhO+q2/PhIpRx/cOxlkCdKJB7Q6I49
         INzpeCl0xPnqJG3cExz62do+qZN75aoFJMGFqgH6C0hlaZ5wlMQ1RrE8w+0oh1dr9dAJ
         s/cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vjthw9uPiJlZ2RPOXoXFeeYm/Spzsdrs/tIYP0JUhxM=;
        b=nU37q5hcb8zL4LCk4RV9HvU5DbIVTRfjZ4eNoZBJRjZrbN+4oxRe5dbdfCtzOqf34u
         KcYepbw/fe3cSnzQzMVyA9ySnU+u8Gdl461Afi2ttarU4RXfroIrc0VzHLfMwNcbMevz
         NK90cleEJNXqlYlsJPVtwqavff8E2s2/Te/L3CjMIWYyr5YcdqXqwz0Wf3qwI+kIAe9o
         OEioqAdoBZTCthuEDB8E4XMDtOzSBF7CyHvKKwr6uSRhu2QKigN3vq2oHr0t/rEVP+Ie
         MuDFvg7rilQ38x5fYM7fF8wfplp2c+rLckPkWegpmPNh9+2HmY2VnkX+fURcRUlLsTLp
         ZRhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u6lI2X8l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vjthw9uPiJlZ2RPOXoXFeeYm/Spzsdrs/tIYP0JUhxM=;
        b=GorPF5c8IhIrsdSr6Nzp8n6AY4He9VwtItQ/nFqZHiFn+zNRlcvCoSOora59c1ey3N
         EtjXFYlH7ArfKTbefCyTVBHvA9ljwEbwk+A1K/earp4K7lgOqH0DjOlKNuOIq9mSDoGq
         ifBIY8bo9EoGhzxmrxI9+A4FM2kSWHAXkxAfrVUcf8kO5Q0Cc1NaBOdhPKmsVjLtngur
         E5ANijPqxiGuOJw8E1ZfXaUvMDZW2LNA7QWD2AcGlD7zCZFCAJtKmtlNhLC+9T8CQWIy
         cuFdjXLoz/zXlXi7dDYITj7vw3p0TmR5R/yD9AyBwBmO22qoV16puK3QyrU3Uixsmtec
         3IWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vjthw9uPiJlZ2RPOXoXFeeYm/Spzsdrs/tIYP0JUhxM=;
        b=tIIHL8ICS1MkSR9znsAPJWPKF2kRt44xExVPfMF+7C11Mbsc2H2l7gtkC8NFpIOX7F
         8cG7mgzn0NvQbS05SECt/h1AAN1NFXLl51YzbhYW24D5KK0HKiCBd2ym4pFEu+VhbtKC
         ysSoNwWlz8iPYPQIQS+XjR1+9o7/YItkkGl08ZFdZcfb2hTdn8cVBuuI4KcH17raDe8w
         lxdPk4K2za6Ykcf4Q0cpxcd3y9Ypu6e2EnxFzo8eAScWRuHFkM1Zvk/Hf8JmkZj5P7xY
         ftvNNS3kvQjHXoA9o5QcCnUhWDfhRtbHZUa/KpKP3u0sXazDBCeiDKJRc6TgT6nx4cG7
         yUbQ==
X-Gm-Message-State: AOAM530bQkFmTYag44yAhD8Z0+8O6Gv1DYMwbTVxvbHUZKqKzyymlWIG
	xyjsVF7/eN9kz3yHvkyFRdA=
X-Google-Smtp-Source: ABdhPJwbhp0zj2VQeT5nCUBcPkgwe9aU993OXqsAHMxdvX0oLNJliO5EHa6NzFwH9cJj0nU3nYetzw==
X-Received: by 2002:aca:4c93:: with SMTP id z141mr3403290oia.76.1605124850035;
        Wed, 11 Nov 2020 12:00:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:3948:: with SMTP id x8ls27646oog.3.gmail; Wed, 11 Nov
 2020 12:00:49 -0800 (PST)
X-Received: by 2002:a4a:a445:: with SMTP id w5mr13577658ool.63.1605124849571;
        Wed, 11 Nov 2020 12:00:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605124849; cv=none;
        d=google.com; s=arc-20160816;
        b=ayBZz9opmiOEn+Uj6yawiSazcRMuypwqCN9M4aCzmmg0G77WXVLTKpR++V/KQ/i7I9
         vGqZPoOaPmTp6sTJrVA/7p5R1p+7SKPZGF7r4EE58KPMaoUKt5+BPG+gfbENPqmH7luV
         C8GC+LTfAZ43hU7QTVeReTF0ZSqd0chwoP/tvFgfHgbHg86RKuLrtWZ7UctyvsoZyYEV
         cuAvx4M2uezn3TNhCwj7pqty2J6DZfuJJ8VKVivOcgQ+baKMkV/7YlO9/iYIVyN6GrYT
         +QDWgtlLwgNTe8RM3lvMZWd3HtM5EmQtuCS9mUbUZFMi7XlbE0iNyzKdSDgBMAeYOJy4
         MjRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FUj5Ux6T0pAvZX6aMMGDC3TkMnjTVY1hpdEEFVZyifc=;
        b=dylDKAdwu0a10g50Z0vBKijHWyZEu2Ajm/5eXLlX1CK2DN1nTGJ7ROYFzDHyeHTjMk
         MaFHyM1QB49Ux9WExZNuSHew+EyTlo56vxTr4rdfclJul1OIZ2qJwYrXDDODQfdjS+Qc
         nJOcaX1d5K04Q2xsXuK/menCnSQ+M5KaRYA1DY/BKREp+PKXA1PrKwprWpqwEQbHY809
         sI5dAYnJbZpxV7KoHKuPU7mPz16PwxrNKiM8kCgE+si9up/GQKT71gv4/ElutjJ3F5IC
         fIlXa1AQf4tJtwBZb3oC8ht2+GZFJIayahfDXWycRjmuhQ6tZYnRlaBacxYyixd8Ht0d
         LRdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u6lI2X8l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id d20si350222oti.1.2020.11.11.12.00.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 12:00:49 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id w4so2074901pgg.13
        for <clang-built-linux@googlegroups.com>; Wed, 11 Nov 2020 12:00:49 -0800 (PST)
X-Received: by 2002:a65:4b81:: with SMTP id t1mr24128814pgq.263.1605124848749;
 Wed, 11 Nov 2020 12:00:48 -0800 (PST)
MIME-Version: 1.0
References: <20201026215236.3894200-1-arnd@kernel.org>
In-Reply-To: <20201026215236.3894200-1-arnd@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 11 Nov 2020 12:00:37 -0800
Message-ID: <CAKwvOdnHWYXieOPbOWzXxC_5vLdQdW4FsLZyiMmtzfj6JH4UWA@mail.gmail.com>
Subject: Re: [PATCH] tomoyo: fix clang pointer arithmetic warning
To: Arnd Bergmann <arnd@kernel.org>
Cc: Kentaro Takeda <takedakn@nttdata.co.jp>, 
	Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, James Morris <jmorris@namei.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Toshiharu Harada <haradats@nttdata.co.jp>, Arnd Bergmann <arnd@arndb.de>, 
	linux-security-module@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=u6lI2X8l;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Mon, Oct 26, 2020 at 2:52 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> clang warns about additions on NULL pointers being undefined in C:
>
> security/tomoyo/securityfs_if.c:226:59: warning: arithmetic on a null pointer treated as a cast from integer to pointer is a GNU extension [-Wnull-pointer-arithmetic]
>         securityfs_create_file(name, mode, parent, ((u8 *) NULL) + key,
>
> Change the code to instead use a cast through uintptr_t to avoid
> the warning.
>
> Fixes: 9590837b89aa ("Common functions for TOMOYO Linux.")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  security/tomoyo/securityfs_if.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/security/tomoyo/securityfs_if.c b/security/tomoyo/securityfs_if.c
> index 546281c5b233..0a5f00073ef1 100644
> --- a/security/tomoyo/securityfs_if.c
> +++ b/security/tomoyo/securityfs_if.c
> @@ -223,7 +223,7 @@ static const struct file_operations tomoyo_operations = {
>  static void __init tomoyo_create_entry(const char *name, const umode_t mode,
>                                        struct dentry *parent, const u8 key)
>  {
> -       securityfs_create_file(name, mode, parent, ((u8 *) NULL) + key,
> +       securityfs_create_file(name, mode, parent, (u8 *)(uintptr_t)key,
>                                &tomoyo_operations);
>  }
>
> --
> 2.27.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnHWYXieOPbOWzXxC_5vLdQdW4FsLZyiMmtzfj6JH4UWA%40mail.gmail.com.
