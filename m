Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6VKU3ZQKGQEK7RWD5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CDE1826D7
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Mar 2020 02:50:51 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id fc5sf2575560qvb.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 18:50:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583977850; cv=pass;
        d=google.com; s=arc-20160816;
        b=UVDijbaUwkAkqzDEz0oPwJyQwbZu1EjfXLQClC85AdrswB7Ryi9CrVK7bzDAxYpgCu
         iiudEgcFYg2qUJ/5va5a9h3V+09Opn3GUhPtqAwnTzqR588La7qR1s3mpdYBDyzC1CCu
         g3OFbL+9BmDGKaV30U81ISJQQSVBuWZmsG9H2QTZQmBI5bnhMBGDbo4CW1iRLlD9bfi5
         SvJC/DmYkZK8b4vX+RDTs+Lo39oUOXbmDSVaXbpuoX5Somgre38ud+nKvNj2WNDGWBnq
         cNDvl8RPC9BZ0fKoewQwdMmcEOF3NDsC1Bv7tUzc+Byr+8ER3QzS0dvqLm7GEHXPptfQ
         LSJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lDIe9C+PVLSRpiF9ob1gNwQw6z+TaJ7Am86UjZIWM1k=;
        b=cJiVW5RSCppqbeSlw8CZ9SI2SRhrBBlsv0gkpw5p58PVuWeOyyUEpXv3cgd5m7Qrkp
         zfHZQIsyhwe8jjywtyjTr0tlrYjtiiXYf5VLdnLk6CEAgJxjj76WeQ7+HZsD7i49tltM
         p+/N5hqWGVys37rMuGzN8W1ijaVlDsNGHCzP8woVhZiNAgd7wMGQR+mK9K3/x+dc+xNg
         6TGnSx26y3qSJGCSQZD2y9OTYZqEKorp15SWrG4eamUOaVJCYYTfc7bTZNkep5R4ci6c
         AFPU1FYsabWA4YR2wLsqIb/IqvbehgkWYVqmy6KA8OEKV4Jc2bY1wEy5pGhDF1n0AWO4
         VF2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fVxMDJRE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lDIe9C+PVLSRpiF9ob1gNwQw6z+TaJ7Am86UjZIWM1k=;
        b=JCy8L63UPw1HXkGkohOAW26Ja/BpzJ/Q+SVUPpcQk09Q4IAkmD+iA8e28qb6d0AjEV
         2oETRvi/bNzGnxjnyH+YvJFg18RKmoVoghq5zxH7eRi7j2Uznt7BBlFnvkoGIEtAkbtw
         1tEH3KalOZrMEou6DinMXP2PHw/cHVZSZG0MueX7g4IgpZozw0p+583qFNOzjl/MFSG5
         /5/+ZBp1ow38zUYudB87eb8eClYRdktDsy/fhAAr+SB6afNzmn6WoVY0113VHsiawHm+
         WpSbRJsIkEYm+D4WrVWrM22kyDPmig2MgIPuh/IfAhyYRiBAUidYxkBWX70fSU4whNLT
         IAqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lDIe9C+PVLSRpiF9ob1gNwQw6z+TaJ7Am86UjZIWM1k=;
        b=CRsNKf2v45fhvZ1L1gGuVYPUbwOnpPO3wRPGvyQElK9U5hEyeCyPcdsUdt6qaruRgA
         zucglxqNw3bmdV2XslxkzLONJCnhoLjAeTlxBbtFdlE74kX3ErgTIcFZNFPQGt4ijabK
         lqvBrGsCMQFP4WYP9sQwonyZaknN/cfZck5P+GBpa5tdw2TRltzjAJQg1ewnHB3Itxy+
         ryUCUHevDUwGMiLPBCMJSYEuDdGAAdyXwNeZlO0bv+l+8oDaVi+Dcv35pz0NtneYzAPX
         sTIzwZTKd8R+3Xioh4DwpVxnH+c6sHeIpl4IUJABDDiJjPzdDTpOdgoDBm1wMW6SvAH7
         oSTg==
X-Gm-Message-State: ANhLgQ39zNSF2kZI1+ujVZJh9WCnkd2ENHTUnNvWNz01COL4K6lbjNBX
	7J+VAJlEuPdEjLe0dEGTBTc=
X-Google-Smtp-Source: ADFU+vsmn5PpgBD7bcavPDH4LMmtprGrWqLRhy6Cqktj+C0wBt0xmDWKeLJaGv9JP7XaPqhVvMwJNw==
X-Received: by 2002:a37:8e06:: with SMTP id q6mr5662766qkd.317.1583977850491;
        Wed, 11 Mar 2020 18:50:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b8b:: with SMTP id 133ls2107503qkl.0.gmail; Wed, 11 Mar
 2020 18:50:50 -0700 (PDT)
X-Received: by 2002:a37:844:: with SMTP id 65mr800969qki.15.1583977850102;
        Wed, 11 Mar 2020 18:50:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583977850; cv=none;
        d=google.com; s=arc-20160816;
        b=J8o2xSvd6muI1TcEJKCFxn3KTWRuoaK+qq3EsD8ctcDvUj4TmhfErICxZCedFTLWhb
         3cgqG364FD3CPFvF7s2106f51f/9EJL3kldQD41ymWe2yl8muzdmqqgfrM7eT3Y158kL
         bwgvzsQhBqjzFqVgZDd3Yi+XM2oqU+gMQtr7+ecmjEYM14E3hDDfyf7Dki6bbfvvaRuY
         bPu099aDBOTsnOt66Ul0BohDSxk4vCf82C5VCMj3eFAXMuAB++PA2SRF5UV3SXUeAsV2
         p8H2z+dIAnsEtTLU/vpnd6dz+aYcj2HajAumylcmKR0UVZXG5bLUhI8r/n0WILPO1yt6
         Tvow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TNX4E2Oz+P2PqsWFGk/pjWA5oylWbxV8DXQ+/wHZJno=;
        b=zrokuPgkiL4FTK6IvWUNExrGz6p+b9NB401vijNQkB1T7xUwSY7dcRJKTLwCHH8yKE
         Gqr83TJRXu0gSbGymTSja/ip2mJnyTaFeKG4aPx8of6R15uyxEx0411L4tLbXUoVB87p
         8y1JdhxRSsxeZmq62QCzaWU5vGQ5cWx+3cjYw5/d6qKL7C9uDY078vjfK6uesdzgsWFa
         ke1bEIkcmR5Lpf8IG2UnZXgk/rtc8WY0+uN+GuifiBy30peyMoBtFk2uflTGVtMwLwGU
         rEDeoyCaupX4Yt8W9K/nXnsnB6O1fBmQye7woR05rWE1TbmIqQXfs7j5G3b9s4G+/KuM
         dydA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fVxMDJRE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id d34si28882qte.4.2020.03.11.18.50.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 18:50:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id m15so2189414pgv.12
        for <clang-built-linux@googlegroups.com>; Wed, 11 Mar 2020 18:50:50 -0700 (PDT)
X-Received: by 2002:a63:4453:: with SMTP id t19mr5119675pgk.381.1583977848854;
 Wed, 11 Mar 2020 18:50:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200311223725.27662-1-masahiroy@kernel.org>
In-Reply-To: <20200311223725.27662-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 11 Mar 2020 18:50:37 -0700
Message-ID: <CAKwvOdncHn9deGkP_VoOyk7Yhs6YbEeX=DwrMKX-u8RqoVKkcg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] sparc: revive __HAVE_ARCH_STRLEN for 32bit sparc
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, sparclinux@vger.kernel.org, 
	"David S . Miller" <davem@davemloft.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Ilie Halip <ilie.halip@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fVxMDJRE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Wed, Mar 11, 2020 at 3:37 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Prior to commit 70a6fcf3283a ("[sparc] unify 32bit and 64bit string.h"),
> __HAVE_ARCH_STRLEN was defined in both of string_32.h and string_64.h
>
> It did not unify __HAVE_ARCH_STRLEN, but deleted it from string_32.h
>
> This issue was reported by the kbuild test robot in the trial of
> forcible linking of $(lib-y) to vmlinux.
>
> Fixes: 70a6fcf3283a ("[sparc] unify 32bit and 64bit string.h")

Nice find with the above commit.  Thanks for the patch.  Without it,
looks like 32b sparc is using strlen from lib/string.c.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> Reported-by: kbuild test robot <lkp@intel.com>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
> Changes in v2:
>   - Insert a new patch to avoid sparc32 build error
>
>  arch/sparc/include/asm/string.h    | 4 ++++
>  arch/sparc/include/asm/string_64.h | 4 ----
>  2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/sparc/include/asm/string.h b/arch/sparc/include/asm/string.h
> index 3d9cd082716b..001a17baf2d5 100644
> --- a/arch/sparc/include/asm/string.h
> +++ b/arch/sparc/include/asm/string.h
> @@ -37,6 +37,10 @@ void *memmove(void *, const void *, __kernel_size_t);
>  #define __HAVE_ARCH_MEMCMP
>  int memcmp(const void *,const void *,__kernel_size_t);
>
> +/* Now the str*() stuff... */
> +#define __HAVE_ARCH_STRLEN
> +__kernel_size_t strlen(const char *);
> +
>  #define __HAVE_ARCH_STRNCMP
>  int strncmp(const char *, const char *, __kernel_size_t);
>
> diff --git a/arch/sparc/include/asm/string_64.h b/arch/sparc/include/asm/string_64.h
> index ee9ba67321bd..d5c563058a5b 100644
> --- a/arch/sparc/include/asm/string_64.h
> +++ b/arch/sparc/include/asm/string_64.h
> @@ -12,8 +12,4 @@
>
>  #include <asm/asi.h>
>
> -/* Now the str*() stuff... */
> -#define __HAVE_ARCH_STRLEN
> -__kernel_size_t strlen(const char *);
> -
>  #endif /* !(__SPARC64_STRING_H__) */
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdncHn9deGkP_VoOyk7Yhs6YbEeX%3DDwrMKX-u8RqoVKkcg%40mail.gmail.com.
