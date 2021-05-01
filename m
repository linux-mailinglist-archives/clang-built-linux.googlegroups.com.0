Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG5VWKCAMGQEXVTHY4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E726370448
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 02:02:36 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id 4-20020adf80040000b029010cab735fdesf7810209wrk.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 17:02:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619827355; cv=pass;
        d=google.com; s=arc-20160816;
        b=QaOS9aK1ZQdGUzj0eQb8CJ6n4GclryoOh0TyOilJEv12bDSAKRrPYQcnwzyWtMeIKW
         cSNO72+ngxcfAPa1/IKgb8lKFPon7luFUp8Nmn1/GAF+y0KPT1yMQEvhYUXOS8KKmHYZ
         IWTYmYWuzNICInpFd/MtUf0NfuwqLlljWIbVCw5jLG9wV6j1WO3fU2jKn5EhEG3bp+a8
         Dg8n6WwPzkzbZS6l0CuXpAyHgcD/oCz0Byx8/ZZ87uNbbo3Jubr7Kf+zco5KonYgdlFe
         JgBqEjITLJjlGHndJ/Y9bt5mSG4SRusuprQ9qy/eLJbpfo2nhGlnHXu/TI2coSsiTmMy
         ASKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zDwo76X77C3idSQ/UVDG7ZlVo8Uyu3lt+ubVs8rebVg=;
        b=Zykt3mFT1LahnNwQ3LO3jcG6ANgCK87EvCvEUyYZKmxUOPOKCuKxXVaLFdkzqw05AK
         TrXZKpnO/tWWHg8a4zlT9Va5Q3fdWCFNtvyaGYYxnRem+4aijOvKWyMl97/8gHDWuV6f
         rJPj+nzkZZLz9gsW3lxssbWVusgy+Bp/tFFiykDSDOBGur3NByLXSfkK1Gm+xbdGDUVL
         a//LeKmRptx8seSvBkrplpcxadFIYAte2xrGmfKpkoun1ZYEbtMltPChgvkMPlfLY7BY
         GVKVDvgQR1KUlSo1leKiCpbFXPIVkUTTjItEI7THMONg+a9kXuO+0naTOa1UkGABJ0HK
         aBLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fk2hsfuY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zDwo76X77C3idSQ/UVDG7ZlVo8Uyu3lt+ubVs8rebVg=;
        b=eYZgBK7yBmaspY8yQW+VmFhGQ739vp6ERgUKJv7Rec98R5hgzoG5yw1cAaRJ0pxjOe
         fKqW8JGn1r/QstOD3zbd+EyRqP/BAmKyX+zSRcABLGOzkuOzzLUXXGf4az20csehKSlX
         pcW8JbYiLlJw6dwp0yV3GTuU9hHRgQR1g7+pXINDaUUXF4FT6XClS0K9O9pWqIbsXgee
         YcQv3SMNgD+1xLlz2ynn9KbnVN2R+2tM6Y9BPVT1kXxePeIDrdG29NfMyyUjuQ0GdLOp
         zFDrXT3LLg0VYqmNXJnbeurixr5eOSRYeEDZG9ybi9J/x4ZzdMmW+J/XboCuujSiueIN
         389g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zDwo76X77C3idSQ/UVDG7ZlVo8Uyu3lt+ubVs8rebVg=;
        b=j1jViF8Qjmi6K+dBZbHPZkCHft0sWHzmU9w7+YUI+07okibwgAyRUIrgQMrJcvf6vs
         KwIiWLlxl7MH8YjjD7IDhtXNRHBf/jNk79LzKRwy54lT5mmc3LR7OUyyGu4Obe2ajBmY
         Q/amF1FF7NYWqI67/0zFUlS6Q4Y0PVjK8tE1/n7w6J+V5B4wq4rd6rgfiHaQyMsCp2Dd
         mO0ijFYXwTy6NxHpi6vsOlOA7X1uuYY9C+B+f8kyr+N7csBlQU/LGcvWjdyHbXEYsVzF
         ijctyMZbAK1mY4iFfTci/qQWUejrwK+QzIfsIOpJyL6Oi/pdzi5tWeDlrHnQQMTHUVYb
         JHmA==
X-Gm-Message-State: AOAM532o9IhagM7qO4mULotwVpF1xDiElpdc6Wt5ZGH+/u0jzBQl7PYq
	UgYPDjTTdk3bhotJslggGMk=
X-Google-Smtp-Source: ABdhPJx+UN/AatztNfPIwap77zhPBkE1sbWL7bO53n/pgXLiSfheSvMJ5dVxM3WiVyCOgyp9srfeQg==
X-Received: by 2002:a7b:cc11:: with SMTP id f17mr8882126wmh.159.1619827355806;
        Fri, 30 Apr 2021 17:02:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6da1:: with SMTP id u1ls6652021wrs.1.gmail; Fri, 30 Apr
 2021 17:02:35 -0700 (PDT)
X-Received: by 2002:adf:f60d:: with SMTP id t13mr1382349wrp.189.1619827354967;
        Fri, 30 Apr 2021 17:02:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619827354; cv=none;
        d=google.com; s=arc-20160816;
        b=RuWodcS5MhBFEn4xAqVmAlvivOlybXHPOoRrn5/7JP6Sgl+OloPqv6y1SF9hEnBCn+
         NcIcE9m+mCxGaMRqGJT/erWjhETuPqEjeeAUnLG88N9jQnL5ku/Jn7s2ljarEscA/jwW
         AAcv6gCk0dZZeJ83x+rRYq1wHFe+YNoWevgsxwMyIlkxe2tBECjRafaKwYWeWWGEXS1u
         3sU0cyFbB87QYWrQpsoI8FHJdtYs0gPMqRDmj7lxcORTFaDwyZcNDuSx1n/3d6cAAFl0
         5r8y9MHSoOq0mZWrmpZYqDCGwAcBnSP0Snh//T/77/jiFlWuMaxijVpWQDwzpwILAwEL
         /Gig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KBoeQcMdIXHbrr5qlPjaHe4/MPMag2oC2aXYy4bOLac=;
        b=ZKFeU3/+CVSH/Kq3/K/b4ojVc1Kpk4Nf8CqVHe9CBXFaLVmjrwwffr3gCHX+xU86WP
         AhlAruHutqMDxF79yb/Ec5afgNEHXJy0kmbq9FUVYzz7zIk40XsZlNn7Uuzpn7MBCl4i
         Nxbm5BEXUuWAs3k0Qk7/FrdzWloq4a5StOz2oNtSCurO9yQ4zvrxUpIwnvm4b5OhYHZz
         o/sdKtnB/CevATH40gL2axqrPcXgYVizBdLUGFt6h3C+y/UCfcWgWUokbvVwTRcqKrIk
         mCYThyT4LhjOkiPc3yyRZqaMZXrB8gNX49bdSqTrjLRb2C1H8EfzWwfSeB7WZV5wkHSw
         Yxrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fk2hsfuY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id p65si710879wmp.0.2021.04.30.17.02.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 17:02:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id 12so112300025lfq.13
        for <clang-built-linux@googlegroups.com>; Fri, 30 Apr 2021 17:02:34 -0700 (PDT)
X-Received: by 2002:a05:6512:2190:: with SMTP id b16mr4995671lft.122.1619827354571;
 Fri, 30 Apr 2021 17:02:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210430113724.110746-1-colin.king@canonical.com>
In-Reply-To: <20210430113724.110746-1-colin.king@canonical.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Apr 2021 17:02:23 -0700
Message-ID: <CAKwvOdkN3cDof=aEwRRuSEghTZt57TuZucP=pGvpmUXiPSYTWQ@mail.gmail.com>
Subject: Re: [PATCH] KEYS: trusted: Fix memory leak on object td
To: Colin King <colin.king@canonical.com>
Cc: James Bottomley <jejb@linux.ibm.com>, Jarkko Sakkinen <jarkko@kernel.org>, 
	Mimi Zohar <zohar@linux.ibm.com>, David Howells <dhowells@redhat.com>, 
	James Morris <jmorris@namei.org>, "Serge E . Hallyn" <serge@hallyn.com>, 
	Nathan Chancellor <nathan@kernel.org>, linux-integrity@vger.kernel.org, 
	keyrings@vger.kernel.org, linux-security-module@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, kernel-janitors@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fk2hsfuY;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

On Fri, Apr 30, 2021 at 4:37 AM Colin King <colin.king@canonical.com> wrote:
>
> From: Colin Ian King <colin.king@canonical.com>
>
> Two error return paths are neglecting to free allocated object td,
> causing a memory leak. Fix this by returning via the error return
> path that securely kfree's td.
>
> Fixes clang scan-build warning:
> security/keys/trusted-keys/trusted_tpm1.c:496:10: warning: Potential
> memory leak [unix.Malloc]
>
> Fixes: 5df16caada3f ("KEYS: trusted: Fix incorrect handling of tpm_get_random()")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  security/keys/trusted-keys/trusted_tpm1.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/security/keys/trusted-keys/trusted_tpm1.c b/security/keys/trusted-keys/trusted_tpm1.c
> index 469394550801..aa108bea6739 100644
> --- a/security/keys/trusted-keys/trusted_tpm1.c
> +++ b/security/keys/trusted-keys/trusted_tpm1.c
> @@ -493,10 +493,12 @@ static int tpm_seal(struct tpm_buf *tb, uint16_t keytype,
>
>         ret = tpm_get_random(chip, td->nonceodd, TPM_NONCE_SIZE);
>         if (ret < 0)
> -               return ret;
> +               goto out;
>
> -       if (ret != TPM_NONCE_SIZE)
> -               return -EIO;
> +       if (ret != TPM_NONCE_SIZE) {
> +               ret = -EIO;
> +               goto out;
> +       }
>
>         ordinal = htonl(TPM_ORD_SEAL);
>         datsize = htonl(datalen);
> --
> 2.30.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkN3cDof%3DaEwRRuSEghTZt57TuZucP%3DpGvpmUXiPSYTWQ%40mail.gmail.com.
