Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDMK66EAMGQEJVUGOTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 828BE3F1079
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 04:42:22 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id p23-20020a05620a22f700b003d5ac11ac5csf3169702qki.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 19:42:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629340941; cv=pass;
        d=google.com; s=arc-20160816;
        b=K3IY9LEuFwbzjn14SHhs/BjMADx3rsGV3dXwkl88o1b9eN0wJbDXhAA4ctjKmu+shT
         HAqWLVEiJUbT6IYcx1W+B8QzPOOFBAXbOq8wO2+MZELYQP/58PtzeIIVauyV41EwGvU5
         0tieGeqibrauVDX42+hqpA45ANPvzBoxmuBV7KSqyfKjd7/SfsxSUGO2QzQRfJ9+CsSk
         OkWZe4Tw6ugTh+AIaKlY6t10pSh9Tzn3Ake8KSh0EeOLR5zPOneWTr13G6ZsO5czK+Zr
         YEVoPpzM/T/NxAipHoiuIvqy/i9OATy7XOW1saQwHVrmTtE6425hmtlMB/SkHa2jq6rS
         uf/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xe+AVgBxTyf+OZQz1ialQAtlqBXCVa6rMwAYMTGCjMs=;
        b=R3tHm3DucIvx4jmw685JTSS9V/nYSZq6V2khn2FPRFx/ur1HdnBl4aG9z3jm0SSmHC
         ej35zUPXrkfAScOyYBtXy3ToQddMaEqXXvZpEkH5TZjrD8Yx4tRyGdiz9YNk9kRV/67Z
         4S5UAhTZk913pIpIbIYwsHBrPCjzg93V0H3r8WIVo4HD88v+GNBQ92JAn9UGUhth3iGX
         bLHfUGAUTha5S0MqgkSq5kOIeynGlQv12EQhOre1GIhpTDh7LsTcYWf5HsRYDTtn0VRA
         CPWbUMXwmIzw/6hKGaEzP627g0gKv429rNw9bq9YcycpLgoDq1wAuQFb+ze9UA0BH+V1
         jEPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Wz3kuq+T;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xe+AVgBxTyf+OZQz1ialQAtlqBXCVa6rMwAYMTGCjMs=;
        b=sOsVN+Kf/IEMgoTdgZD/H50z/1v+/nGuGiLUne5dQdvEX0J2rpHN1VucA3LQ5+s2yh
         9iU/Ugf8iRFbA1Aiipdkv4s3JKnOyk2hNgwlY0Ahn5YmLGjGMiFUTe7ZxdEC4XEMweCH
         WYku1+rcP0I7pr8cyO81vpCgk5kTSUFJgJN7TNiC8jtifs80OmLsSoB/R9j8f6QpyX8d
         0T6inrdo3MnwNB9ZQk7rmjnDOTx3CWk3B0Wxi06TkN4JGbNA+08MmQ+dZmiXjTNB264m
         LiR2sOGia9/m6A3pqYfIwHLs/JsOm3a0z6I6DDByX5Ks9cucOrUMYjFe/94W8wfbdeCM
         UtlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xe+AVgBxTyf+OZQz1ialQAtlqBXCVa6rMwAYMTGCjMs=;
        b=IwAhDV6Hf/e7KMSGkwYefZDsnhihg2CxL8udpo53T3edOGSTux2idP4sCQZ1ph4Ds7
         /ajVdgUs5/6rz86jzkauj+/Ij3cGYCKEBXOCoR9TKC9un+O77WMJo/ZfXPLF20QNoYKy
         JatHDrARITNdqnQ0QjgGQPQWRcv/IVi+4hFBlwFcCkoveFnBcoSaAZLXVDZ3Q69oNjoQ
         fMQ024I8ZX0e06PWYIJDU1SGdkcNMoyBm8IbHVNmphFo3LTS0tNY3YCH1nlBpg7AUVGg
         BsuQAUA6EdpYqE0kZkdmGexFiRUuvvgz4Krq0X50IJZxIz35KblDFHcPyMamLCABQbGp
         3jyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301QMCdS5FMGhJLLAET0apQzcROUrmbpz9a5Z4fqA6VK1LQdTg1
	wvH8i4jSxMxfBvGsZKcuX50=
X-Google-Smtp-Source: ABdhPJxiLa5HSZfB2u9WTdT165tZvYefTazmQjZtccTD2sxVHZgudlfd103XiJg5StR4jgTH5CiCCg==
X-Received: by 2002:a05:6214:12a2:: with SMTP id w2mr12296043qvu.27.1629340941681;
        Wed, 18 Aug 2021 19:42:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:4118:: with SMTP id kc24ls1171846qvb.11.gmail; Wed,
 18 Aug 2021 19:42:21 -0700 (PDT)
X-Received: by 2002:a0c:e7cd:: with SMTP id c13mr12385120qvo.37.1629340941256;
        Wed, 18 Aug 2021 19:42:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629340941; cv=none;
        d=google.com; s=arc-20160816;
        b=voJ9xr4AGl3dj+ZBUWxSsvGw22MnuW9Hbzc+NTTjYL0EJtnhbFCDH9YoxHflwP4qjY
         9nDPPqX0TBz1vTeRMwtgoMBGY2mf0yo/3OBPXiOQsPxYzZCIavg0OZnn6lDD6rNdvYsl
         h5wIIaR/aedOSVpJQY+hrDDNOJNHgbQFMToCAPV3OEPMQLC8heRZHEpWIWjeusyeU5wK
         lE+qDDh8AKzgHIbGHHsGqxIg5tDGWfSWYa4+ZinaZ9yJLhDinjznWYmkKsbkMjty48fI
         0cisxq881we4EEK6EJwuaqhR6wVf7anwh1j8DlFnkhBSmk6wuszD/UuGOoD4EsjtzcSE
         nAlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kTQ3kRPj8CF2wk5bsK7dVYrKndPpuEnS1MQvOqgpp64=;
        b=Gu8JTfdVwnZ+mwjN9C+5vZXXzmi0bWzaDEzmRJXlmFAHStRgbTN54kfMH1c+KWDR/m
         gEndqQn2zKcoYN56U6tZ/h6ruLHWU0OzXP30hhOxoFpLC8qzqiuD8nr17onL/Y+or6py
         EYk86tGKzRJDssHoZC6VUZ4IevGD7R6CDta1DMNx1kPAfAPFbShw78e7+XIkfYzOS4X1
         CjpJKQQMBf8jsKgVA3I9p4zAnGR6dCsNcb9ERaXdgu22VYN9+GTRw02S1iluvARm8UTL
         K4bS6A9SZnhhNIPEDVEbWviQQ7zbUjJbzU2dXYkkOkMDqD8EtWQD7dVZ/YJ2mYPNzxpd
         jwqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Wz3kuq+T;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id n78si108078qkn.1.2021.08.18.19.42.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 19:42:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Received: by mail-pf1-x42e.google.com with SMTP id i21so4107638pfd.8
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 19:42:21 -0700 (PDT)
X-Received: by 2002:a05:6a00:2309:b0:3e1:e727:ec68 with SMTP id h9-20020a056a00230900b003e1e727ec68mr12339527pfh.26.1629340940413;
        Wed, 18 Aug 2021 19:42:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c196sm1330861pga.92.2021.08.18.19.42.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 19:42:19 -0700 (PDT)
Date: Wed, 18 Aug 2021 19:42:18 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>,
	linux-kernel@vger.kernel.org,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 06/13] kbuild: merge vmlinux_link() between the ordinary
 link and Clang LTO
Message-ID: <202108181940.896CA4311@keescook>
References: <20210819005744.644908-1-masahiroy@kernel.org>
 <20210819005744.644908-7-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210819005744.644908-7-masahiroy@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Wz3kuq+T;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e
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

On Thu, Aug 19, 2021 at 09:57:37AM +0900, Masahiro Yamada wrote:
> When Clang LTO is enabled, vmlinux_link() reuses vmlinux.o instead of
> linking ${KBUILD_VMLINUX_OBJS} and ${KBUILD_VMLINUX_LIBS} again.
> 
> That is the only difference here, so merge the similar code.

Oh excellent! I had tried to get this merged before and was not happy
with anything I constructed. This is much cleaner. Nice! (I think I
didn't realize there could be an empty --start-group/--end-group with
no side-effects.)

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  scripts/link-vmlinux.sh | 30 ++++++++++++++----------------
>  1 file changed, 14 insertions(+), 16 deletions(-)
> 
> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index 36ef7b37fc5d..a6c4d0bce3ba 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -154,12 +154,23 @@ vmlinux_link()
>  	local objects
>  	local strip_debug
>  	local map_option
> +	local objs
> +	local libs
>  
>  	info LD ${output}
>  
>  	# skip output file argument
>  	shift
>  
> +	if [ -n "${CONFIG_LTO_CLANG}" ]; then
> +		# Use vmlinux.o instead of performing the slow LTO link again.
> +		objs=vmlinux.o
> +		libs=
> +	else
> +		objs="${KBUILD_VMLINUX_OBJS}"
> +		libs="${KBUILD_VMLINUX_LIBS}"
> +	fi
> +
>  	# The kallsyms linking does not need debug symbols included.
>  	if [ "$output" != "${output#.tmp_vmlinux.kallsyms}" ] ; then
>  		strip_debug=-Wl,--strip-debug
> @@ -170,22 +181,9 @@ vmlinux_link()
>  	fi
>  
>  	if [ "${SRCARCH}" != "um" ]; then
> -		if [ -n "${CONFIG_LTO_CLANG}" ]; then
> -			# Use vmlinux.o instead of performing the slow LTO
> -			# link again.
> -			objects="--whole-archive		\
> -				vmlinux.o 			\
> -				--no-whole-archive		\
> -				${@}"
> -		else
> -			objects="--whole-archive		\
> -				${KBUILD_VMLINUX_OBJS}		\
> -				--no-whole-archive		\
> -				--start-group			\
> -				${KBUILD_VMLINUX_LIBS}		\
> -				--end-group			\
> -				${@}"
> -		fi
> +		objects="--whole-archive ${objs} --no-whole-archive	\
> +			 --start-group ${libs} --end-group		\
> +			 $@"
>  
>  		${LD} ${KBUILD_LDFLAGS} ${LDFLAGS_vmlinux}	\
>  			${strip_debug#-Wl,}			\
> -- 
> 2.30.2
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108181940.896CA4311%40keescook.
