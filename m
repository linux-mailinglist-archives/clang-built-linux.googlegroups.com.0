Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGUV66EAMGQE4RHPZIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id ED48D3F1128
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 05:06:03 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id b4-20020a3799040000b02903b899a4309csf3208133qke.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 20:06:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629342363; cv=pass;
        d=google.com; s=arc-20160816;
        b=clRKBRKxlDZish/RtRK444aNmOo0pUhkZu3D/VS7U9zPu3vBCixHusAqoFm2R0GC4r
         4U9cdRtebUtzUuxLxcjcbuZfZ3/d+b7OHgnbGrjnK0wrT/lxXAak2iKJQ31c1O5s5ACc
         at0A5T8PBF22/HNvEc6jSt5ReR6wULkcGsU8jGKtmJrH3GcgP7tUZmZtCDTdIYSNaex8
         M1RXi3C9qI0XdVmjQox7JSo49UlG2DjFhOzclC8HK+fBlbgXb+ZEQYYTU5LsSTdg8I9x
         gxkf6VRYVoXl7VZndjyPE1YB9253OARYUynM4EhzvDu3H3bu6KRzcXAPXekiY2Ti5sEV
         KnBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=B7cD/bwEqarOJcYHsXbM9/bAkn8JJaMZiwajJ2Y98iM=;
        b=JmCDzbgpR36DNgrUZI+9ZthGyeSAB909jzIFsrI976Z1lZSl+bJaxzHCSN0E35mg30
         rsLHdGA9X4m1ZgjMWSPDpGiIwzwkAmrtw4eIyg/BUAD/rTQuYUxbTCENfjw/ocEZBHsk
         Nfx9RYOwIn5nnMQl0REs2366Fpy9umRLdN4Owed2lTQNYf/0iTzJ/4WkaC95dp4rA1dk
         fNZ0cShMVvW4AobCnLkI8omI8KI61qIVrrMMkiTtffcxt1lo6s4KmGFsmK/TT6+Q/xAP
         f3u/HvygxsmuLsevsIIlse2TJfnmIbXCCwvrTa6umyuNwIKI7VtAabZnvDNhsfEEgucb
         +jDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ajq76RcF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B7cD/bwEqarOJcYHsXbM9/bAkn8JJaMZiwajJ2Y98iM=;
        b=ipUQew8noRy7AmL7m65ZaOEXutf2n2xwl6Qckp4QVAihtNUzvOYJ5bO5acsvJ4EiNM
         0yByZ3fXhViEXr4wPxvnhIlJ7HP8y88pcazAGXLNiNs+8JAAP4mGbxC2hC+NgB4mNon/
         iwQPHBfkzD4R8Huon6QzAJ81C1dei0lMkKH+GAza2xJSpa3kAW1NZoinbBhcXHKm3f7f
         lxaW+xxaUO6Jk7ylLJz+ozGo+yTEVit3R5Z2XxJ93IO9hUdCiRe2lYiHPNfPdPVQ9QYV
         R3VkpNq/udXUc2bLy2SCG5vG5oDa4wV2IETm2h+4vn8leg1NZXMPIVW8c2d9N4KXe79e
         XJhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B7cD/bwEqarOJcYHsXbM9/bAkn8JJaMZiwajJ2Y98iM=;
        b=elHoFm1BzIFlY13FZY1BU15JCO2kGPVS/NJpuBSuwEzDTQBrJVyYSfXb7K4MtG/d0j
         KggKX3PszHJCZ+32OMHWszwlrCkfM8qslA1aE3gH6Isnv1MODGbU3NzbRL2qDpB0XjOr
         sF2cB7uEMrNujKrWXWpwCfH/Al5ynyWwJ0tg9e40DyssP/kZJR9mgdwcUb1/CTdpCR81
         ckrLTQa6Rt7ZmgR5xMsGZDf/BBN7h5HI8Tnz2oP8dCHwBFdcRfven5TMIJTcDwT3RwkC
         VEZR7bFuU7CVndNm7KmhjhxpGetjaWBh/aX1BBfBIkXTxSn3tshq3EJwFnI5i1/SDgQn
         UpMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tWkMzYAdPW6PiUjJTdjj3sFTstRCO9NLX/435BCS9H7Bj8eF6
	oZodyrTbhyWqaeiACCiNiiU=
X-Google-Smtp-Source: ABdhPJwj9RNCRIzTgixZlfDRLOtfeYj/NdW+Rf14FHKgi+h5HpTOszkU7DDOIuw4nFZqKZRXwy3Lng==
X-Received: by 2002:a05:6214:d8a:: with SMTP id e10mr12505289qve.22.1629342363133;
        Wed, 18 Aug 2021 20:06:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:fb12:: with SMTP id c18ls1199212qvp.0.gmail; Wed, 18 Aug
 2021 20:06:02 -0700 (PDT)
X-Received: by 2002:a05:6214:cc9:: with SMTP id 9mr12218035qvx.43.1629342362639;
        Wed, 18 Aug 2021 20:06:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629342362; cv=none;
        d=google.com; s=arc-20160816;
        b=qo8ARl//Je9fuD50M9oiNc5IuYwBf/WiD4ALFy8H0pALaNKi7HEkftEHGlQKIxfWk9
         lyXSZx18c/fME8kRyc2gBL1UruPcmVhXd1UeXyR6eNmWpPI5JXAOXUACk2zNEbIpD9uH
         17Y7BTtLijWW0YeDCkucZiDJ7eqU/sgysoiddjMWJ4P4bzXjAuo/yy9GXxWQyGlviit1
         r6Gk0ASXil0I+xYT+d/GaDivGxkm/MJ7uX4siuIQF7D8VecaKwgrBGr+ykvoIutpFTbu
         7VTrDSTObE6ntLlCi/jNaM638F4r2ibx2y9wY5U587eIKquONbzwexDlOkN6mdniZVBU
         7ylQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WLjcg2NhXmOHlNCRN9Rxm54WSU/BcCVx6+P+obykn8A=;
        b=S9vo7ugWt3XJ2WS9RUOn2muOi6jYmHhtn4lGN12CobitYcCYH4EIDh4OmKcwcAE4SI
         wdytip5jSoaX2hbp6+3VwwJpEJ9z66xsHfFhMvDAwwIu7zT00aFzyOuqowPUZbte3wbK
         SNWnHe5+V/OCcz+foo4VGWfi042en7ZOEcn0dxxYR9ZdYktWb7cpFsKcbn6zGi4a6pQ4
         /vAu35IkorfwpWDaWVijCy3b216OPqZQDxo2ToasiHmvdiZLIfeavIrbOun7UVt7KRxe
         MJZe3/TJ5N0wNEIUdVmffVtImkmx+9W0tmZv/lQ+dJOuRDhztigTyLHoL88CLoys++LA
         b6ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ajq76RcF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id n2si116002qkp.4.2021.08.18.20.06.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 20:06:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id 28-20020a17090a031cb0290178dcd8a4d1so6429213pje.0
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 20:06:02 -0700 (PDT)
X-Received: by 2002:a17:90b:4b12:: with SMTP id lx18mr12866499pjb.121.1629342361851;
        Wed, 18 Aug 2021 20:06:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x14sm1200296pfa.127.2021.08.18.20.06.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 20:06:01 -0700 (PDT)
Date: Wed, 18 Aug 2021 20:06:00 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>,
	linux-kernel@vger.kernel.org,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 12/13] kbuild: merge cmd_modversions_c and
 cmd_modversions_S
Message-ID: <202108182005.AD31690E@keescook>
References: <20210819005744.644908-1-masahiroy@kernel.org>
 <20210819005744.644908-13-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210819005744.644908-13-masahiroy@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Ajq76RcF;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Aug 19, 2021 at 09:57:43AM +0900, Masahiro Yamada wrote:
> Now cmd_modversions_c and cmd_modversions_S are similar.
> 
> The latter uses $(OBJDUMP) -h, but it can be replaced with $(NM).
> 
> $(NM) works for both ELF and LLVM bitcode (if $(NM) is llvm-nm).
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Ah yeah. That's nice consolidation.

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
> 
>  scripts/Makefile.build | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 874e84a1f3fc..97392c26ebd7 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -166,13 +166,16 @@ ifdef CONFIG_MODVERSIONS
>  
>  # Generate .o.symversions files for each .o with exported symbols, and link these
>  # to the kernel and/or modules at the end.
> -cmd_modversions_c =								\
> +cmd_modversions =								\
>  	if $(NM) $@ 2>/dev/null | grep -q __ksymtab; then			\
> -		$(call cmd_gensymtypes_c,$(KBUILD_SYMTYPES),$(@:.o=.symtypes))	\
> +		$(call cmd_gensymtypes_$(1),$(KBUILD_SYMTYPES),$(@:.o=.symtypes)) \
>  		    > $@.symversions;						\
>  	else									\
>  		rm -f $@.symversions;						\
>  	fi;
> +
> +cmd_modversions_c = $(call cmd_modversions,c)
> +
>  endif
>  
>  ifdef CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
> @@ -327,14 +330,8 @@ ifdef CONFIG_ASM_MODVERSIONS
>  
>  # versioning matches the C process described above, with difference that
>  # we parse asm-prototypes.h C header to get function definitions.
> +cmd_modversions_S = $(call cmd_modversions,S)
>  
> -cmd_modversions_S =								\
> -	if $(OBJDUMP) -h $@ | grep -q __ksymtab; then				\
> -		$(call cmd_gensymtypes_S,$(KBUILD_SYMTYPES),$(@:.o=.symtypes))	\
> -		    > $@.symversions;						\
> -	else									\
> -		rm -rf $@.symversions;						\
> -	fi
>  endif
>  
>  $(obj)/%.o: $(src)/%.S $(objtool_dep) FORCE
> -- 
> 2.30.2
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108182005.AD31690E%40keescook.
