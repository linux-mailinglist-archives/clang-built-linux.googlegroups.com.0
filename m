Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKVV5SEAMGQEM4EXO4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id CE81F3EE431
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 04:10:51 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id s4-20020a259004000000b005947575ac53sf4377907ybl.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 19:10:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629166250; cv=pass;
        d=google.com; s=arc-20160816;
        b=pEczocceFeshLMRXVtXfxjGS0iHZ50iv+boIWgUJ1IFc+IsVsUxe5I6V6kee6mBgtW
         AnS8BCjt3BiZhYx1Id2r6Y3r0crThE7R3hy06tx7vKnIOy259+LtJ4fpbxGkS8GtHFRv
         sakAzcs4T+oxb72WpdjLVgjh+CNg+O6mCE8FXbCmKaPe8T55XSLzd27V/H2P1wj59q1o
         8dFnQ1IWM8pQ+RTy1WBTP249x82neyL7TW8CehGi8EfE1DyhIe2IyxRspVwgZHRUpTGM
         3pBVOnrjCVcBJi5oA6Uv89AYzGlXYXS3i/ZtjhmcNosf36kpYzIac299UpMtgVliA5Z+
         9SIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=/WNLZZRe+tGaB8E8yEc8+ro5FO8SI+4jL4TDUI1Ve8w=;
        b=wL05WyweZBIaKMM2Pba0cDI2pa7zc+d/kjN18vSpuTKTT61Du4bRoe8wc9vI/jROjx
         Xcb5C8VyiN0DOld2Q3QBaYNW2OOy7ZOTVg4plz81Uf12aUExD9NjycUOiaaDWB7JANGU
         feGpoB9z4TFnh3DmLL/1kGNwCPM7dVsM/LVYOyFyqUPEB+YgsHC4/uy+4Ss0lOFDqlZe
         fzDqF9CxetmyhtNoxUlSEgtv0hp73LVvJmRlLt2b58TCS0cX0jveKPAdzD68METxbgQj
         VRZ3AhY/JvRZEPdpUCLeEAqEjcuAeccCESCavgjINP0ZE3PZLOU7LijM69T8TjBcs6mP
         qdFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="b/pXkgSB";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/WNLZZRe+tGaB8E8yEc8+ro5FO8SI+4jL4TDUI1Ve8w=;
        b=BD0gXduzoeRxkOzou8Yz15b3AUPyI+TPfy4of7zzwRdlDjSjZeROpKZ/8jMbZ0bURl
         qsTKHAf0kgTQNrPFdkmhq+2d7Mt07K3lrplzyj7ug/QJURRC+Oce2th2V8TFZued8R8R
         jz4bDT6yF4I9tCvi9wJHthjleGvj0NLMD9b6TVMVEfghnEKLcVcU/0rYkNFINaDS+NG1
         DU77mqyriP0JadwXOj8QWdYbMpMSfMK/+dDE/c74T0sifYBQQrgYe8OgLUG6e8RltuPA
         LHzxZj0jG+LOLB+nNrH2W/qOxiNYqtKqGGdi3Wa+OTuR385eTcbcHQYpCGMM3pEMQHnb
         2YAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/WNLZZRe+tGaB8E8yEc8+ro5FO8SI+4jL4TDUI1Ve8w=;
        b=FiGAwqUcRDqay6XFArFdjoBbKGICCxtwCysyZih7vutlmGw/KjrJ62J/rbstBCGWlx
         RbdbJnge1GJ2TRcLvLlDMY3Bawlm7v3anCrezit3b1BKV0qHcnY9xP77+EIQkghQk+w7
         Ul3PYm43o8eXHaCj15i/WN7YU8EkbhAQLzilxwfxb/LS1yozLT5eADAac47OdDVlm/et
         bEd9WcgAfG4hpfQwBxkk1SiUXhuLqYbNmYuJ0MyyQ65sv5hjEToBLy7gnY6+IBod7lJs
         yNEUfizQyg5eoms8bOnKtsm1oRMOx99Ccwr4A7TmwEY+UcF5Sfsaikak+13fHmwAHGPz
         LG7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308USZAenAIPBwqZixIOd01tz4q529tPvHzieJmpJXRLSStvdgK
	kj7tiqnihyKLIpUGR58uqcw=
X-Google-Smtp-Source: ABdhPJwETKjm/XkpdIeBuFusYi8JpzNhSf3k2aRJ/FhTqIfZxf9ByZHitOYQEREtHNfDF20tJWpXEw==
X-Received: by 2002:a25:cf91:: with SMTP id f139mr1465400ybg.292.1629166250783;
        Mon, 16 Aug 2021 19:10:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls351314ybc.2.gmail; Mon, 16 Aug
 2021 19:10:50 -0700 (PDT)
X-Received: by 2002:a25:b993:: with SMTP id r19mr1432926ybg.445.1629166250258;
        Mon, 16 Aug 2021 19:10:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629166250; cv=none;
        d=google.com; s=arc-20160816;
        b=oPxBZZXzttBGyBmJxXOLslepYcSFKZK7UrRfIDMf9mvZzll3awOGlyOClSXQUPlpZf
         lR7A0nUf2yz+5btSgwq+ptYTqhPfHOqgAB2RLStyQaairBky6UK6qWSpy9zT6ud9j3Xe
         LFOd4rMCFg9Wl05slMGTy5bffyVtk2fYrbKlse6zMB39XuQk0rrMwdlBtXQQY3Z5u/YN
         Mbd8QsfzNn/EZwNRuEIUoBjmQJ2daaH1BjdBwEPlmmVte7PZ2gierJR0Z6SD7O3IIbFh
         mAF7S20CRWn2RzpeAKfAUbkh+GVWF71qBXfVPE5XYQRCUiBQD6k6u+nnG7tg2d4KmMq/
         VVGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=WxXgmzmE2svKizHmWxzeCDQ6c+VMhhDNk+/CUZhdMuk=;
        b=Duzqlgk8hFQWdFCWe6r80lVX8tFqIrjbE+p3ANeBznYJSxJW+ayQVjSHdDkagbMhkp
         ejVn98qeh1TUrKGUXqQZG1f96VHdOcNt/y1vR8jRuMrxW0SWiw/vu7BRridWUjmFztFj
         xcLLZIe1HQuJy7fWnetK+nEs/IN5rWw4swVfias7Dr1lOs6+B7K4R2lJ0028dGifDrd4
         XE0hpJrLprxG2lii7hkh4SuT8fjXpvOoGXyuHJolfsRZmeXuIpyw2ijWqyJRZIYpG0BO
         D5tCvnGO4HIQ9IvcHZ6Lgs0nuwJgBrfOM5zRydFoPpPSI+6aBVtqfKSnKR3opaw6Up+B
         pDRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="b/pXkgSB";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z205si63702ybb.0.2021.08.16.19.10.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 19:10:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id ECE2960F55;
	Tue, 17 Aug 2021 02:10:48 +0000 (UTC)
Subject: Re: [PATCH 7/7] kbuild: remove cc-option-yn, update Docs
To: Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210817002109.2736222-1-ndesaulniers@google.com>
 <20210817002109.2736222-8-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <7994255a-c411-049d-fc09-8b132eb3511c@kernel.org>
Date: Mon, 16 Aug 2021 19:10:48 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210817002109.2736222-8-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="b/pXkgSB";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 8/16/2021 5:21 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> cc-option-yn can be replaced with cc-option. ie.
> Checking for support:
> ifeq ($(call cc-option-yn,$(FLAG)),y)
> becomes:
> ifneq ($(call cc-option,$(FLAG)),)
> 
> Checking for lack of support:
> ifeq ($(call cc-option-yn,$(FLAG)),n)
> becomes:
> ifeq ($(call cc-option,$(FLAG)),)
> 
> This allows us to remove cc-option-yn. Do so and update the docs with
> examples.
> 
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   Documentation/kbuild/makefiles.rst | 22 +++++++++-------------
>   scripts/Makefile.compiler          |  5 -----
>   2 files changed, 9 insertions(+), 18 deletions(-)
> 
> diff --git a/Documentation/kbuild/makefiles.rst b/Documentation/kbuild/makefiles.rst
> index db3af0b45baf..4538c36d8df0 100644
> --- a/Documentation/kbuild/makefiles.rst
> +++ b/Documentation/kbuild/makefiles.rst
> @@ -650,24 +650,20 @@ more details, with real examples.
>   	-march=pentium-mmx if supported by $(CC), otherwise -march=i586.
>   	The second argument to cc-option is optional, and if omitted,
>   	cflags-y will be assigned no value if first option is not supported.
> -	Note: cc-option uses KBUILD_CFLAGS for $(CC) options
> +	Note: cc-option uses KBUILD_CFLAGS for $(CC) options.
>   
> -   cc-option-yn
> -	cc-option-yn is used to check if gcc supports a given option
> -	and return 'y' if supported, otherwise 'n'.
> +	cc-option can be combined with conditionals to perform actions based on tool
> +	support.
>   
>   	Example::
>   
> -		#arch/ppc/Makefile
> -		biarch := $(call cc-option-yn, -m32)
> -		aflags-$(biarch) += -a32
> -		cflags-$(biarch) += -m32
> +		ifneq ($(call cc-option,$(FLAG)),)
> +		# $(FLAG) is supported
>   
> -	In the above example, $(biarch) is set to y if $(CC) supports the -m32
> -	option. When $(biarch) equals 'y', the expanded variables $(aflags-y)
> -	and $(cflags-y) will be assigned the values -a32 and -m32,
> -	respectively.
> -	Note: cc-option-yn uses KBUILD_CFLAGS for $(CC) options
> +	Or::
> +
> +		ifeq ($(call cc-option,$(FLAG)),)
> +		# $(FLAG) is not supported
>   
>       cc-disable-warning
>   	cc-disable-warning checks if gcc supports a given warning and returns
> diff --git a/scripts/Makefile.compiler b/scripts/Makefile.compiler
> index 86ecd2ac874c..c19c0b544c0f 100644
> --- a/scripts/Makefile.compiler
> +++ b/scripts/Makefile.compiler
> @@ -51,11 +51,6 @@ __cc-option = $(call try-run,\
>   cc-option = $(call __cc-option, $(CC),\
>   	$(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS),$(1),$(2))
>   
> -# cc-option-yn
> -# Usage: flag := $(call cc-option-yn,-march=winchip-c6)
> -cc-option-yn = $(call try-run,\
> -	$(CC) -Werror $(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS) $(1) -c -x c /dev/null -o "$$TMP",y,n)
> -
>   # cc-disable-warning
>   # Usage: cflags-y += $(call cc-disable-warning,unused-but-set-variable)
>   cc-disable-warning = $(call try-run,\
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7994255a-c411-049d-fc09-8b132eb3511c%40kernel.org.
