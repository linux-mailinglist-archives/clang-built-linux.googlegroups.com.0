Return-Path: <clang-built-linux+bncBDG4DXNHV4CRBBOZ2CJQMGQELQ36UQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7828551C9CB
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 21:59:01 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id h6-20020a7bc926000000b0039470bcb9easf556734wml.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 12:59:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651780741; cv=pass;
        d=google.com; s=arc-20160816;
        b=wWQVbf44jzpZ78uw4GgnCroMZrilwl4y5QahZ0zNE608HBy7xxXDSi2JnJxddnLQXz
         83HVWxqqhsB9U9YzZijcXSuLrx5yQs2OhW47pHFovF02qimmPIzesKuUO1KTwNQ4HD+E
         Ufjvr88oecN0fZs58IysM/BE8KN0oAM8R9X+a7WQ3xC5jsKK4j35/+3BOjNCmPTw6Kst
         8EAuwEjfNrxIyw7mlTrkI393NyIzuPS+LUYKcwcqzVjmMJzu91C3qfibN1A5xQESyblC
         CwiuD3q2613ptmLGMa8lppJVpisfdi4ddPq2exmuN+nwKOKg4H8m+GYPKjLzsgwCmq/y
         XAGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=khnh/ru9AN8g+8ADImhXfuXyTGJhrQ91ORFk3d4+uVs=;
        b=YNHwZYICPKsK/TmdJESNCyrgqK7d/UFL/dx/rMK8bt2nayUtco+WacxNnINinUx2ii
         xVnOVIiQyqvRKpfLWDexISyKTXwN9wmzQFd5QwL9aLMN3G9Ch9FuOi0AL59FVb8q382y
         6fPmAHeHzQ5IA+fu2nFyk4XTOqfI/SBqZ6DJ3Bd0weoManwJh/eP9ZYvPr+G7ULa4lNP
         1+lu9iilLNfVSXKV/cSucT/Aex9o5DKX3wbaO5ZWnt+QKZpZsSSkLpRAH/E2zIYjtb/M
         AL38miBg9bR2XiLryiyhoxOVgrNGM+2P+xgEQXl+ihF5hyTOW1RLIjAFTKEayUwYP/6h
         jRLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b=H4igcJXN;
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 212.227.17.10 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=khnh/ru9AN8g+8ADImhXfuXyTGJhrQ91ORFk3d4+uVs=;
        b=luP+njJ7tevbytBtpkJkYdPiltt8+30/LAUVdb3zztPCFIp/mkuDXRzinqKhzrnSgU
         R/tPC/2HYD36umKu2cyJrDicNhhIEEWSI6+4uyT7O9krEJUQr6x68Pyj5ysDRuj6t3vK
         0UFWXt0g4hCI37iwrZnW/mBBSuYULm+aTlwsc97qo0zz+OdCH9cKwzjBeNKz2z9A8qrL
         qQaJxzKjYPFmnl4bNynD7zmcWKGMDGYQEMJ2qzX7tP1Q0zU8sOB4cbiG4eHTwnfLS/Nh
         /8sEFm3kmhu4C67xcNdklMKxO7iFvDOXrUUUmtqrDN++3z0XpoOBLQ7aF3Kt7j4iZZC8
         6hBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=khnh/ru9AN8g+8ADImhXfuXyTGJhrQ91ORFk3d4+uVs=;
        b=ECGoV1lEje/Y6uGoGrqTXVSFtEZkbmaal5HDBL6D8GhH6+csbBDtyBVppoVSXq9LYx
         8K+b+CAuXo5Txx4oPLONIKe74b8FjJJfJf+HOgj6KcwDXZwc2JFtheKLkM6SksozsawY
         xbXB8O3Ky32hTx+EaEXr+/qb/0figmZZIdQfbFKmw+moFNW5XyVFQVL/oBGPlumRji43
         VTGKFfP62FCokWRub1eA6xiKU30d9CAUk+vJ2b2u90AS+snemRjpTMU5dxlOWFWjb1XB
         bsp0OIXFbThiRN/JF+zxoRphGhXwZsGmuystzN1z/KYM6WECqLqrHkWkM4t6l7UVdJQ5
         rVCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jIJw1rSRYDbwPd/+s8wr5k+TnQJ5+ylBqZvsk7qZg6vQani4B
	BimZsgmyoQTcDASp5EXlWI0=
X-Google-Smtp-Source: ABdhPJygTD7a6FclfSEYqaBxdLQ4gt0eTUL5MjtT0j9B6Eb9eECKXp2zHbZiWKRZDPSMliq7i0LA7g==
X-Received: by 2002:a5d:614c:0:b0:20a:e4cd:f7c2 with SMTP id y12-20020a5d614c000000b0020ae4cdf7c2mr22113974wrt.382.1651780741234;
        Thu, 05 May 2022 12:59:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f950:0:b0:205:dbf5:72d8 with SMTP id q16-20020adff950000000b00205dbf572d8ls1875614wrr.0.gmail;
 Thu, 05 May 2022 12:59:00 -0700 (PDT)
X-Received: by 2002:a5d:48c7:0:b0:20a:c72d:279b with SMTP id p7-20020a5d48c7000000b0020ac72d279bmr22693314wrs.379.1651780740194;
        Thu, 05 May 2022 12:59:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651780740; cv=none;
        d=google.com; s=arc-20160816;
        b=jpka7tzkEY6jV1xqCZqepQlQGeHuQTfdtOzmlIUtF3psQFCk5wg59NXmOUG4+CqIIP
         /PFB2rt2lYqjF2F/ssT6FjzBRSMzWnZ3385W043qCLmvSJXXevnQTXmrhnFEsXnUor9I
         LGKjwSor9Ndng80Mq6z4lqkQJHfMeG/b2UsRM81++ZCVmoswU42vrxqNF99LmjHYNj3J
         ObQRXXJjTRoyN+4njpTr8Ya/jKTmU3KMqASDuNo9EJq0nfyWdy78B+ATtlXPSQBVLCM1
         6bqB51Y2vj8CMzaN07VDbjNnLq12HVGudyH8A/otjFENDwHKIltkyBSVqy6/n5jjPSEM
         oM/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=L+0TXcICodNMV0c0553J+vO6wCkAr6Y9AW6qrSwGa7c=;
        b=wAO/CvCWe1/8ArOXYfqfnpeh/0+5I/IKDswA8si0jx8I2Tqc+WpTQlfd7hntZePVRT
         SyMVmGLneRofft5Sh55QRWjDP97vrB+QX5VE13Rx/5/dr34hzXCR6rmRnuZWYPEHt4R0
         NsXaVYOLU2RKHBsgmlG3dqyiVhhiDRYa+htbA4cO3mPR1QxSaIFCVBwUJ5vBjW8YNCcs
         +sRFbAPMa3EDntv8GgNW0S3T2dbcS6QB+XGn0VMetn3h23O8z+1VjfS0W/3UEGhLmocu
         xRY1l/Cv79TltYuU+JtelaBIYgCjyn39ZHfqpWoKXTsjjweRlQ1jEgCucBmwOwXfvgE2
         35eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b=H4igcJXN;
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 212.227.17.10 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id bh26-20020a05600c3d1a00b00393e98f67a1si160649wmb.1.2022.05.05.12.58.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 12:58:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nicolas@fjasle.eu designates 212.227.17.10 as permitted sender) client-ip=212.227.17.10;
Received: from leknes.fjasle.eu ([46.142.98.182]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N3Kc8-1nwE5E2FiE-010Ok2; Thu, 05 May 2022 21:58:54 +0200
Received: by leknes.fjasle.eu (Postfix, from userid 1000)
	id D902E3C088; Thu,  5 May 2022 21:58:52 +0200 (CEST)
Date: Thu, 5 May 2022 21:58:52 +0200
From: Nicolas Schier <nicolas@fjasle.eu>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	linuxppc-dev@lists.ozlabs.org, linux-um@lists.infradead.org,
	linux-s390@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v3 03/15] modpost: merge
 add_{intree_flag,retpoline,staging_flag} to add_header
Message-ID: <YnQsfA8kHDDpnBcU@fjasle.eu>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
 <20220505072244.1155033-4-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220505072244.1155033-4-masahiroy@kernel.org>
X-Provags-ID: V03:K1:9IUa2J8sJMvk7749DgPeiJiaBu6FL73EwQpRS6B0dgVLx4t442T
 osDTAH9JsajKHG1lcsCY/9daT/X0HMjejOOquvET7hizcj77zh+VoRDgizFgA6ppO3DNYhC
 ZFQG9l9TC1kFRKPb2hox/iIdOgwzdJ8ls3hX24wQeR4DTg1vK/y+O+Ik6M0XZfmHcX9omoG
 nqm6EIfPIJk6jK9uV1jbg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lbwNODae88U=:tAHOR6f0wimj/5peX0H7sJ
 qOXoXweEAyAP3gkzUjCzGoXNLVAif4i5vu22l0XQ4vlCrU99K1sleCBKtx+KfX4bR/9KPzp3h
 wabj/Rt1H64uxoelOJfoHkUEOH2DarMgVRYSv2I/uCbE277VYeXbayYjeOA+YWQ2V7WFkp0be
 fjAtMDa+OWWLkFVc6ObvTIsbeCxCnzaBrpAgIKisgHvnkui2BxKXUSU/2+g8bbX/FUwZBYKIa
 e/s9cgQ6Qdi6i0lpSBUgCBeEGObMuTaoodpnfhBDHMBR2vuqopL+Cul/MCehEy8w3X2llmwcA
 b5zKFLYOrKFlVTZ9yDpYdgbLSNo0ppMB+mHS6Ibx5XJUpo0fA/RU7Jp3OWXNvW//lDanmXHBZ
 SDZ5FjebLti6UbTjb7RKLPdY3om845p009yO0DElLqxY1dq9Shp4oZlVLTCwnqIt6d1p+FNso
 OE2qPMJYSjP6rQr1mS36P+G4xFYdV98rMVzUh0PBNRQlbuqRcATTW3MOBM7HWfiQCBNGyCxpN
 x5oElC04i/ztleBl7z5zL7lzA3kJ5GlPNg3v2nAhTJKcw+90CNxzJYb1TCnHDUPf6bXxNv+jB
 rjKr64REmHqXVO0Fy1gurXWgrHNONJMtFpF1/a29zOprou70jcQEzp8Xy7rF1U1D8not7PUx3
 yRmAEErm1dQbZkB1yBg4kDVsHIFCkJ9W+IQ4GkKsx6PCHfFX96kTuzBXWxEXp05qkHIY=
X-Original-Sender: nicolas@fjasle.eu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fjasle.eu header.s=mail header.b=H4igcJXN;       spf=pass
 (google.com: domain of nicolas@fjasle.eu designates 212.227.17.10 as
 permitted sender) smtp.mailfrom=nicolas@fjasle.eu;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=fjasle.eu
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

On Thu, May 05, 2022 at 04:22:32PM +0900 Masahiro Yamada wrote:
> add_intree_flag(), add_retpoline(), and add_staging_flag() are small
> enough to be merged into add_header().
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
> Changes in v3:
>   - New patch
> 
>  scripts/mod/modpost.c | 25 +++++++------------------
>  1 file changed, 7 insertions(+), 18 deletions(-)
> 
> diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
> index ebd80c77fa03..ae8e4a4dcfd2 100644
> --- a/scripts/mod/modpost.c
> +++ b/scripts/mod/modpost.c
> @@ -2200,25 +2200,17 @@ static void add_header(struct buffer *b, struct module *mod)
>  			      "#endif\n");
>  	buf_printf(b, "\t.arch = MODULE_ARCH_INIT,\n");
>  	buf_printf(b, "};\n");
> -}
>  
> -static void add_intree_flag(struct buffer *b, int is_intree)
> -{
> -	if (is_intree)
> +	if (!external_module)
>  		buf_printf(b, "\nMODULE_INFO(intree, \"Y\");\n");
> -}
>  
> -/* Cannot check for assembler */
> -static void add_retpoline(struct buffer *b)
> -{
> -	buf_printf(b, "\n#ifdef CONFIG_RETPOLINE\n");
> -	buf_printf(b, "MODULE_INFO(retpoline, \"Y\");\n");
> -	buf_printf(b, "#endif\n");
> -}
> +	buf_printf(b,
> +		   "\n"
> +		   "#ifdef CONFIG_RETPOLINE\n"
> +		   "MODULE_INFO(retpoline, \"Y\");\n"
> +		   "#endif\n");
>  
> -static void add_staging_flag(struct buffer *b, const char *name)
> -{
> -	if (strstarts(name, "drivers/staging"))
> +	if (strstarts(mod->name, "drivers/staging"))
>  		buf_printf(b, "\nMODULE_INFO(staging, \"Y\");\n");
>  }
>  
> @@ -2544,9 +2536,6 @@ int main(int argc, char **argv)
>  		check_exports(mod);
>  
>  		add_header(&buf, mod);
> -		add_intree_flag(&buf, !external_module);
> -		add_retpoline(&buf);
> -		add_staging_flag(&buf, mod->name);
>  		add_versions(&buf, mod);
>  		add_depends(&buf, mod);
>  		add_moddevtable(&buf, mod);
> -- 
> 2.32.0

Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YnQsfA8kHDDpnBcU%40fjasle.eu.
