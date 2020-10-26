Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLNI3T6AKGQE5WLB4SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 9256D29952F
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 19:23:42 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id l8sf3908873ots.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 11:23:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603736621; cv=pass;
        d=google.com; s=arc-20160816;
        b=mj2HGHL9KXtfyKePXxyoRLYqqaViowzkgGTbKV8F9O4LqZpulcmbJ6OVcdtud6WMmK
         flUDGRGgYSgnnvVc5UcJF7TBq5pxW/XLhR12WUH2Tlg/TpbwjBT/c/lcWYYDKMu5+KW6
         lsmye4OZtuN0YhT7sv9TF+GX6wiFjL01TV57UhXiaizAkHkkf9wQinvt+xuNTEvq3wh1
         xyObyf8hInXfZXYWuZ7lKjyBVWJJW+NzawjYLfDmn1vbr8aOrXuuqumrIKbt0C1naujE
         R0d83jRAiKSUSYJ9tAw3ZCrovoh0SdFmHu6wbPv5c+r14m5Z4RldJ4QjB5PJJUcQLnRi
         j3zA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ac9hQbMZ45DLa5nd3EhrJ/4k8ZaSKV3E7AezFX/3MLk=;
        b=Xs2esnYI9H4tvFgq3cKlJRrk2kIvO10dO7/EY84l3VeCWJ7XSGdEoaC5pHLEPBUdbc
         +bFMWl2h+7WByinD34lEj3h5hhmv6izlxd4BXlEFHuBgl11FlRyPc2jyESpfqluyiR/r
         Fqo8XbvfRAz2mUpnSLWpv3Rd63tM1QgG1E5R2qn3A8VzTE/pagOjZSLWkyql+dj7xk/H
         rDg9k0j+qLV+403h95qBzweRhyU7axUSmzIzQIAJreRft2EU4taBOPSwgEtMlTOOkX9+
         GVwDP45I0e8C9SUjA2KrPDMctnxLnvxwURtipW8+865Ut5LZ4vL5/VY2RWJfNBUGfKbo
         Jdig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="DNcGM/Ea";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ac9hQbMZ45DLa5nd3EhrJ/4k8ZaSKV3E7AezFX/3MLk=;
        b=nxFQrFDVf7Jc1aa98/2Da14DdPrtWDy2mBUJVXjSVW56bsMJEp4CrQBe4U47hXJvfC
         9DGFB08XBcrRDVftXq2yoYH8/2nydfSIQqVY/seEBBy2es0L8We32H7GWLzAr/pkLG+b
         H3T+lahU7MVUrPjbS3nn5Xn5Cq1KpdQAfQMYEa7ZVfS232ougEZwg3EkRjPV1zpNdGQz
         w2shOtXALkobS1c4yhjwe/FS8Gi3iWxTVKvsTpKmCBXW6FM7nMIaufEUO77uLFabylfk
         5zQj7Pxcjxp5JH4eMNmUx69WwiK5jI49h2nPHktQnWSTxc9OvttbZe3qxFysUDUXVTGU
         AGMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ac9hQbMZ45DLa5nd3EhrJ/4k8ZaSKV3E7AezFX/3MLk=;
        b=XtE3nNBaVzHOUWGYeAFldrusAEvF5cZLY+NrTf9Jw1RrpLD5p0KGgTQmsLNb8tMczF
         HqYoHOqQADa81JwkXcMhwkSMvXxL+Gp6yBmK18yj9v5B3w2/O62aTVbM8ABCmUhX/5uZ
         25LV/4IRFFd/fiJyBs2nD+EphzBn9hoTH9rtsODyYfEpDG7GH6o7EaB8r9dPwz2DWyV8
         uh6Estg0cOuuUjt5lPbjtQOOxnEj2onUer08HxWeVe1P1AU6xY2wrCxS5Po2SuKqV00d
         d5zLn+95sHjQAj890mWfXFOD1ZEfW2bAbNpo7803y1QpnAxCJwbJnzYAphnNlDyS9usj
         647Q==
X-Gm-Message-State: AOAM532lozeUgZG/Dn1gtR4d+sySWB/0KCd+W4kJeReVEh/JdMLotXRk
	cay8Vxpqp87S3b8FT6X1b6g=
X-Google-Smtp-Source: ABdhPJzaZoooFCygQtov9L/Rew2yzsgu+R+rH4qbSC2zFMDgBMIZ5eq4giZ0YQ8MD8Wqps3oZPWxTw==
X-Received: by 2002:aca:ecca:: with SMTP id k193mr6750965oih.96.1603736621564;
        Mon, 26 Oct 2020 11:23:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:13d8:: with SMTP id e24ls1353030otq.11.gmail; Mon,
 26 Oct 2020 11:23:41 -0700 (PDT)
X-Received: by 2002:a05:6830:17d6:: with SMTP id p22mr11780942ota.154.1603736621209;
        Mon, 26 Oct 2020 11:23:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603736621; cv=none;
        d=google.com; s=arc-20160816;
        b=ffoR81VzkZ/H1PQWvg6ndHHdx7xCVC0BSPAq/91o5UZVfoWJn7eA/AOiAep80zK5wz
         Wo+JS9yxQbu8+SbxnuaYHdsAEIzp9+4KmRfL/spId69CReyK9wRP8J09gZwhDo3bDf0s
         F7xlZEkSajF++81Ni5UM6k0xzBVFAbVft9Bcd+jZpyaEBpp696dala3Vyf93GZEfmivB
         HdTZa8bXSzoWpoM6Yji+1qzMpHHySW8Gk/9scS+wp11M8FrOkHyp2HH5b9mSMoPICV9E
         6F6Qq/NLlCiiSfAZoYY3IelbH5bU2Tjpae+5v5S8T4JD/tINSLNYe2qUhxBrBQLwSYk5
         XTiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mTOMrjwlGlpuPftdkncxJgdOXaY5B7jezcTkXNur900=;
        b=uiseNQdBkltBcaCOmWQy+tPjatpZmqGBKmllCtOlfyuWXDePSQ9m/3rdLcdBMF7Jyy
         7IpMmpLIBxgn6quAA7uwkyEAy+K6K02PiMFExofm6tKVTysICVVDQ/Ecnk209MngyxEK
         niLMnt+VWndeKaplDQtv6M66kLUCSBFJAUJRpaHEPw0rmvFOfmmw08u8ebkLgJAQULox
         QZZFbxGJA+s5z/xCgwCidKzFOnemvAuGAqAGGWVFhneeoNir0L5gCyjU0iqy9bZglXo+
         8p/KRiYt1yrdX4KBCVo/U4JSWrfkvmIH/PGwDy1WKkdLOZCR/l3vr+Mt2tkqrfEgJpzp
         P4MA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="DNcGM/Ea";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id o22si885306otk.2.2020.10.26.11.23.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 11:23:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id p21so3671174pju.0
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 11:23:41 -0700 (PDT)
X-Received: by 2002:a17:90a:740a:: with SMTP id a10mr17895934pjg.32.1603736620190;
 Mon, 26 Oct 2020 11:23:40 -0700 (PDT)
MIME-Version: 1.0
References: <20201026162336.3711040-1-arnd@kernel.org>
In-Reply-To: <20201026162336.3711040-1-arnd@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 26 Oct 2020 11:23:29 -0700
Message-ID: <CAKwvOdmdv6wABToSpJt5b66E1vD3Ec0QC3DnyZm7f2sJkcsNuw@mail.gmail.com>
Subject: Re: [PATCH] ctype.h: remove duplicate isdigit() helper
To: Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="DNcGM/Ea";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Mon, Oct 26, 2020 at 9:23 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> gcc warns a few thousand times about the isdigit() shadow:
>
> include/linux/ctype.h:26:19: warning: declaration of 'isdigit' shadows a built-in function [-Wshadow]

Don't all functions defined here shadow builtins in GCC?  Why is
`isdigit` unique?  Is that because it's a `static inline` definition
vs a function like macro?  If that's the case, what's the harm in
converting it to a function like macro if that silences the warning?

>
> As there is already a compiler builtin, just use that, and make
> it clear we do that by defining a macro.  Unfortunately, clang
> does not have the isdigit() builtin, so this has to be conditional.

TODO(Nick): finish the Clang patch that implements that.
https://reviews.llvm.org/D86508

>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  include/linux/ctype.h | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
>
> diff --git a/include/linux/ctype.h b/include/linux/ctype.h
> index 363b004426db..c407acb258c2 100644
> --- a/include/linux/ctype.h
> +++ b/include/linux/ctype.h
> @@ -23,10 +23,6 @@ extern const unsigned char _ctype[];
>  #define isalnum(c)     ((__ismask(c)&(_U|_L|_D)) != 0)
>  #define isalpha(c)     ((__ismask(c)&(_U|_L)) != 0)
>  #define iscntrl(c)     ((__ismask(c)&(_C)) != 0)
> -static inline int isdigit(int c)
> -{
> -       return '0' <= c && c <= '9';
> -}
>  #define isgraph(c)     ((__ismask(c)&(_P|_U|_L|_D)) != 0)
>  #define islower(c)     ((__ismask(c)&(_L)) != 0)
>  #define isprint(c)     ((__ismask(c)&(_P|_U|_L|_D|_SP)) != 0)
> @@ -39,6 +35,18 @@ static inline int isdigit(int c)
>  #define isascii(c) (((unsigned char)(c))<=0x7f)
>  #define toascii(c) (((unsigned char)(c))&0x7f)
>
> +#if defined __has_builtin

#ifdef

only use `defined` explicitly when there's more than one condition
being checked with logical `&&` or `||`.

> +#if __has_builtin(__builtin_isdigit)

GCC only recently gained the `__has_builtin` macro (I filed the bug);
I would like to see something akin to
include/linux/compiler_attributes.h but using `__has_builtin` like
compiler_attributes.h uses `__has_attribute`.  That way we avoid
spaghetti like this throughout the kernel.

> +#define isdigit(ch) __builtin_isdigit(ch)
> +#endif
> +#endif
> +#ifndef isdigit
> +static inline int isdigit(int c)
> +{
> +       return '0' <= c && c <= '9';
> +}
> +#endif
> +
>  static inline unsigned char __tolower(unsigned char c)
>  {
>         if (isupper(c))
> --
> 2.27.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmdv6wABToSpJt5b66E1vD3Ec0QC3DnyZm7f2sJkcsNuw%40mail.gmail.com.
