Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBQPL2L5QKGQEBQJVFUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EB127EF7E
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 18:43:46 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id k7sf847230oif.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 09:43:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601484225; cv=pass;
        d=google.com; s=arc-20160816;
        b=C/zSgNw58T1uPBw00zos2UGSMOG6K2e0m3qjNsjL7QsVKhRyOwDIhmSXCi0lgT/uUc
         zdKEj8D/tkzocvtvaK6K02XDLrJwvdmssOtrjCSO6lXd6ZKjUpP9/MJHTX9UqvbWlOoP
         TADaZ7eDYSZR9CKu/5OWb8pqJkl9Ka83rfe6zv/GrJbRqNxv6YfiTLQrwH9pxUSFCgS0
         AISECUphsXomEl0bMLOJifnMHps5YgMWuW6VAL+/adZss1TqE4cFd+WnmOZzQZ8kuoiZ
         A97A+wSmOzqZvYd6+yUxeSAXIq+VKsSC0tvu0b0loZxM3UWx2fqxnlasNSbBTQOUsyzS
         tBBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=DNS1ndbH2YYjvPtgX7SIXDKegtE+xAGhi38JFMCDO10=;
        b=Kp1U22W8W3KE/HY6n26Ruhgws3uZtyHxcNBpt0BGLR5tiK5cSi3ASsuiEGQ6e5xUnm
         9LcqtAF0mSiX5FG1rKSlo7vyqu65RQrtBHfaSx9ymRFQbEUZR4jEquwTJCrOl68QUiqI
         nZpVazIGbmyRnovcDFghTAwLBKus8JRyWffGj3t8B+Ver56SB+a0nhrxujXPW8yUmYwV
         6o1PzUi1t31EjSEwkiKydFdQ044NxsD38xvcyWzgrYFiOW+5D85mDnMhdenjfu6JfI/y
         Srfp3Dxh7xUOmlVeCrcUPXwXYb1lJsHTjA6NZU6+yJ1Gb2gtQDqBbR5WHIPmqjIni4Qh
         lLSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZiS94qcW;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DNS1ndbH2YYjvPtgX7SIXDKegtE+xAGhi38JFMCDO10=;
        b=S5c9MyZMcV3gcqW+vXF7c/kI95rmJ7Pb35TaGKt2VAoJypwTUl2kpaIVPAQjUt8JVR
         aS6Ov6S0LVk9WyoQjHidi9Nij5Rtdd8AQNi7w4xJJ6zqnCwEOsYsiYha+H17preXZnFY
         iWFg2FfZyxbNbBD8SuCFdqbgede2TWnNOZVx0sCFItfHMx2bVuLDhwBuE23u88WSHjxs
         XSVKxorWQyzKM28/dcFwXEXl79HOEKEpSAoGS3WTRXLcc/1TeXiBJpSkD42ZpPvsI2cI
         8cq1ELXm+vfoiU/u+Bf7TB1F+s/VGMofId7BAenlTyIZy4vHauo5dfqtTjAICqJqFFya
         oh+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DNS1ndbH2YYjvPtgX7SIXDKegtE+xAGhi38JFMCDO10=;
        b=X3IgbcOq7Zw7bef+FkFMekUkeeeZgLXhb5pB5dT8um/ttV55eN/gGTzC6uwnbhR6H3
         ws3vQ+EilQvOSRznpkXXd5gQME7Nm3QE4K/3YMsMGdFQcK7q7PXW2ZA8COjQO3UWw73K
         LGXotVssEn05ijw+qrTDuiU/osfGg7uEpwv3zgLylDdc2BhwLQ7Dl/sZZs/QPsR+idSb
         8LhT9hoFnAEu8kq1hvWhFYT7spcIEYODYROcIiUVdSsojXvAQWp0Zq2VCcPfG9CLa0rM
         vSAufHZf1vAliy9S9axxKajg+XIRgwGo4lomC+0zzpORoCvH1RriasF1jWo0hqBIXlFv
         O+3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DNS1ndbH2YYjvPtgX7SIXDKegtE+xAGhi38JFMCDO10=;
        b=Xde13oZV1monu/UpBa68pNiZyT6/8BkXw/TcyGKZadoMzr5J04oZFULyNi/3HA6r4O
         dGYwFoBH79d0osMm0mchi4mi44ZFY7NDI56tUCvK6Dq1xcOnycpdogfM48KkYgLEzQ9O
         1aq3EkQhWOaySTpUlK2G4S3i78W9PizKB+lcNdJPX4xcJxFZXKBlmg4NiBGiXwR80V2r
         EIn1ZFFDRaH/5k/fGnD4eZ7UsaR3ShWZIodUpGGd+8M11IOmm56Sc8e1jf1o3uKzOxQG
         jBDsY9fjtkk8GYEYGQOBxjycS66isVMubPXmjZtk8v2gmLrf1CC8YufNZaqE7kwIzIun
         rMwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530VJ4xfM0QP8CojuihFFK2NIu1eGYGRku55FIoB5STH/4MYykM0
	EmoolT8/Y4sdz2d2h8Sx+K8=
X-Google-Smtp-Source: ABdhPJxOSVlXjSEvvRU2pQrEDJ0dChCbV4cFBYeJJ9qGmYPDtK5e1wPaYPMiQdTQWyif9N1bAm4Ezg==
X-Received: by 2002:aca:49c2:: with SMTP id w185mr1769128oia.101.1601484225172;
        Wed, 30 Sep 2020 09:43:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b88b:: with SMTP id i133ls572263oif.10.gmail; Wed, 30
 Sep 2020 09:43:44 -0700 (PDT)
X-Received: by 2002:aca:f5cc:: with SMTP id t195mr1961868oih.10.1601484224773;
        Wed, 30 Sep 2020 09:43:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601484224; cv=none;
        d=google.com; s=arc-20160816;
        b=B1pv1aWmCDfLmp1H0NCNTCStPz51sJeNROpl8jF/i3p/A0blwj5ifaaxKSobrHtDES
         3YTZ/HFJuMjGiRCHxwNQmSJysXedayVJVENVfcHPFFhUn65ZWt/Koz1pQffPJyVR7EH6
         PPInqLgUfeN9DG6IGrz8npMglkA7BSys3+oWYw+dClj2P9EY0mUtDKV+yLbOcbG1m3fU
         IaI5A3dSTBpbQo2K+oowxMb0bjXZTIumoIE00IXuLQH0XBxvHVuMHat9VsDebu5kWjs9
         Z+ukmjspt8PnWTcn1g9ivDVyJN3MQN52o1Bcw+EYeNAxSXNHgNPYZDSjdjSZH7aBikBh
         GvdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yQL+wkm7CHaYGUVs9aNlVsVy8ybAButOFBFiXoH6zwM=;
        b=zusohsKWwCLrLche7DmgabksiG8l6ozRZovc2rupW6Q6vD4pzxZmXrPDcndzCeF9+Q
         Lqnn3ONJJ1SL9J3tve0ZCyR/hEELjsE0SylVSx7Xmm99tetWoPY+cXbJgJ9xK2DTaa4Z
         sQBUhZqTkQ18lPNvtogoIvda3mQ1uaUaD4q9/uBHYeAMMnqXTyH3riDjApDaKJI6cjzB
         5vhCEEL7o/yEKeXL6IBaLamaANCZlCutfhSCYCHslraMz0EFZV+ZXHuKCa/9uf+OpsoS
         9ATVK8h8tTIFxChjyMFiC+pqHu0Xkjvk6k/KNvmgfqvViesoXraUeeaXVKtJcnup7tpl
         xU4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZiS94qcW;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id l18si136696otj.1.2020.09.30.09.43.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 09:43:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id x69so2391346oia.8
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 09:43:44 -0700 (PDT)
X-Received: by 2002:aca:ec50:: with SMTP id k77mr1866572oih.35.1601484224417;
 Wed, 30 Sep 2020 09:43:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200929190701.398762-1-ndesaulniers@google.com>
In-Reply-To: <20200929190701.398762-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 30 Sep 2020 18:43:32 +0200
Message-ID: <CA+icZUUU80TTJ6RuM-vTHPj4kSZr0ZehRA2q31=jFCxNKSiaTQ@mail.gmail.com>
Subject: Re: [PATCH] export.h: fix section name for CONFIG_TRIM_UNUSED_KSYMS
 for Clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, kbuild test robot <lkp@intel.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Matthias Maennich <maennich@google.com>, 
	Jessica Yu <jeyu@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZiS94qcW;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Sep 29, 2020 at 9:07 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> When enabling CONFIG_TRIM_UNUSED_KSYMS, the linker will warn about the
> orphan sections:
> (".discard.ksym") is being placed in '".discard.ksym"'
> repeatedly when linking vmlinux. This is because the stringification
> operator, `#`, in the preprocessor escapes strings.  GCC and Clang
> differ in how they treat section names that contain \".
>
> The portable solution is to not use a string literal with the
> preprocessor stringification operator.
>
> Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> Link: https://github.com/ClangBuiltLinux/linux/issues/1166
> Fixes: commit bbda5ec671d3 ("kbuild: simplify dependency generation for CONFIG_TRIM_UNUSED_KSYMS")
> Reported-by: kbuild test robot <lkp@intel.com>
> Suggested-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

"The return of escaped section names" - soon in your cinema?

Thanks Nick for catching this.

Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

> ---
>  include/linux/export.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/linux/export.h b/include/linux/export.h
> index fceb5e855717..8933ff6ad23a 100644
> --- a/include/linux/export.h
> +++ b/include/linux/export.h
> @@ -130,7 +130,7 @@ struct kernel_symbol {
>   * discarded in the final link stage.
>   */
>  #define __ksym_marker(sym)     \
> -       static int __ksym_marker_##sym[0] __section(".discard.ksym") __used
> +       static int __ksym_marker_##sym[0] __section(.discard.ksym) __used
>
>  #define __EXPORT_SYMBOL(sym, sec, ns)                                  \
>         __ksym_marker(sym);                                             \
> --
> 2.28.0.709.gb0816b6eb0-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929190701.398762-1-ndesaulniers%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUU80TTJ6RuM-vTHPj4kSZr0ZehRA2q31%3DjFCxNKSiaTQ%40mail.gmail.com.
