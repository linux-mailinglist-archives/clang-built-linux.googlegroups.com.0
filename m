Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIWW533QKGQEXZKFIAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id B43CC20FE8A
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 23:14:11 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id l19sf6171166vsp.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 14:14:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593551650; cv=pass;
        d=google.com; s=arc-20160816;
        b=TZhByxg04t4o+B1gqvp0T+GN4Ik/AigWpML7fHgmWyk199mxyX2Otoe9woTq6bUmzA
         AljIqnB9odcPJdcwQIlQgWXaieTVbP76F/5+y6V3RzsnEJYk+Djhz5Ro4f/6JGYbOn4M
         WHp9qNL72vhc2WPAVOm1VdpN8PjEqGcxjw2hXWPI8k2eOjxkFJl1AwmO1bP4OZyOYGQE
         IZoSpbAdsWaE28uZt6hsiFUEqp+BTATBmX/JAFEEA72L60oK7V7mOpBuinsuxNMaQc5T
         D5EN1fHXmUO6C39TAX6eUKp/StsOtDZR3yDlgRlekgEXiqVVW/Npbk0P6DajcrcBVaeo
         raSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=BvrW4NUzKT7/H94Bs2VC3fuYmrQXwIw4I7Jc9teZmCY=;
        b=ryuEzixLM4wzcHB4lh21DHGvDyn73367SyX9reD+G2N/RDL0Ixli/x2FrOXzYIE2ex
         Sa6v1VjI8y+PiJtGxMWAPPRfBanQmh1iiAgny9NVmJ3aJC0H0xBKPqYyvONKwUkUnXdD
         auDkpzk0vhF5Rs0dIK7UFzVvEwPMS7sv2rtj8KNKoo0jIECmrQm87shwDvpFRCg33wvc
         l+v7ZHpfpauj4gxy6FpwIl8OoKUWPVqq7Mz7ucQn4/6KHuC8ORS6sjqfhz5vZMiQjVY0
         +O80A1mWIsSrjZIqWdwShYlVrN3vcL2usobjm0xsA2DVYGoszCPttnNldmf+Ssj8oaJ5
         IaXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="H7H4y/Ld";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BvrW4NUzKT7/H94Bs2VC3fuYmrQXwIw4I7Jc9teZmCY=;
        b=tHyNLnBzPSUvBVUvVyo6cIn7pxJCOnw9HW9SMnbiawAm8ETmHfaoqWEMppzViWRR6i
         HSzf4aId2P6+EBh6iyRYFkRd8r95+NL+Tzn+j7b2y7EDDsGxK4S78ZYUvHOxWNm0/7Kd
         HQqP25esRJXElJbG/zQNypAJS7GNCsukJgtihYLjl2QhZAXSJgfbP6otntBjSZ50ajmD
         omud6EWarzpXJOxiyk1xwOFNvMMshXKhtBGAZbTr+1DMlV9aYXCPvwVVf4aKv1FUCuAa
         Ktv5OSW0Jpv0CT3SH5qvWybCdlcmcnqO0Vj1PTZ6kPF+wW7msMSnV0zPzDbw1UsY5ytv
         UwZg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BvrW4NUzKT7/H94Bs2VC3fuYmrQXwIw4I7Jc9teZmCY=;
        b=CsYnTjeM/+Vo6kwk5v6sto3IS9A63hBLb0biKbIdF90sQnrDfonAZyF/tEnx89SSH0
         NOwHA2lrmjEmkA4wPQ1fL5rdC0M6+6BljGV0I1fkRPXu+fIbknL5Z8C20fUpyG6uhDll
         Gk8CCLHcrUpV+52kSE4grRUaVtrnrtn0Q/hr1vkQ1l2i6ETuBLDG4f7trbK+JUBfyEh3
         8IcQvMWmfMjLz8uOT2iPtt0kiKFL9PxA/wOlh7U2w6RMfVzF7WNzSYO+eLYFcriEoHD/
         j4vWkPNJIIR+tvSqbmxGScGGakpiZDidRHEDaWgqGZWVFpVPY27MgrIKxdSeT5FtJcr0
         JelA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BvrW4NUzKT7/H94Bs2VC3fuYmrQXwIw4I7Jc9teZmCY=;
        b=l/XycpEGyEZ9xyPjJb29ehBegJQOCNbLIQr2gvMkTNsAciNfzAUAB9xHwkrdgkAbIJ
         mjxZ/QD8xmLcYgJ2cyzBH97ftELe3pYTubkl/Q9NbGMCnNWMVuKb7W39SdzC50TEb0TK
         V9m2/oQtCGn6KbR2/21/0ByAJeyBdgD8ELgtcJkemw+SDFcQZ6rcGHoNT30LauOAomi+
         KrYTeWB00SQHL2F+V+fQC5ji2PHyMIgnIVsOl2cnN7GJoc1L/CuwsOt+OCU5ImWI7QMl
         lfTv0nAFhJUy40+EvVn2Bio7yPeAMPWBqQQZPM/dpthilFOtrbW4TVuoTXUBzjL51E8U
         m2LA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328wtP+HLj6BPE7dwg8Bje8DfKAj8mCnYx9dX1Jf2W6KDlDRX+G
	IibgzCYnUuEcpkAN/bVyPN4=
X-Google-Smtp-Source: ABdhPJx45y9/wXhamW7egU46b7YaG8SAVmKH8mvRxVahDXeTyOXt3WNm7okDG6Zrb9jn9CfoAuKpVw==
X-Received: by 2002:a67:b741:: with SMTP id l1mr17110963vsh.180.1593551650653;
        Tue, 30 Jun 2020 14:14:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3085:: with SMTP id l5ls1416631vsb.4.gmail; Tue, 30
 Jun 2020 14:14:10 -0700 (PDT)
X-Received: by 2002:a67:1b85:: with SMTP id b127mr13113106vsb.152.1593551650344;
        Tue, 30 Jun 2020 14:14:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593551650; cv=none;
        d=google.com; s=arc-20160816;
        b=HGZoCV/p4CPE1AS3eNWXKSM0YTnBCxJqIumEe6u0akYbhA7D/x/reJAp8tGM49tcWs
         Mdlv1pZ50Ji0JhOpscE49C2DNBnjt1xbDJvSKw4Z70K5XICFwpq3Xjvrln5KX9uSiOay
         gN4B3p3qBRHXt6SrFAoHTcBwkMboZSUnLCX2CZ3Q3pBsgMMpZeoKHIIr9W7c3ccX9jCp
         wgwAxyl50NmKobr3mz2Qmpn5iflw8umgoS8QTYwK3MeuAe5eeyD2ny9f0r+9C1HRUzC+
         Dx6rHLJm9fjICdjU9JcKNeNt1dSTqLzaFUPuu5rY4J1mklwS5LzeglMO2kfvPmOJ6y3S
         QlTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rrnIKGMCcN3FaQ+YKppUj+YDfioa23faYyjA6ZKxr3M=;
        b=w1UXtTf82tfiZYOBL+EczSBs0i0rk4kXs9zOPnoXQGhwLI7wo7mhibWOd6wDPl4qtq
         dS2D8neCkl2B4LSoT1k84uUz+nQOJvZIgE/n7kwTHfKMwt/0QYWR3yuKcszwyGjpZxNS
         lfnWnVp5nLqnkY3H/QS/raR5G+u1VAS3SYj+YHngFrKO3wlXA/+FAExBlvFwPw0Y4lTs
         cAF9fNoouOGy3nM68+0ZSZeRgJzkhkEBec/YFuncyjU4xC2pFLwaQmH4DLq1MuGGrtXl
         0oUIkvmo9l/hzRYuX/C/HnEfFc7V276LKdkRA3Ewq11Orcq9fYolPquAjV3FcI28XlFC
         nxCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="H7H4y/Ld";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id q20si27268uas.1.2020.06.30.14.14.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 14:14:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id d4so10531478pgk.4
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 14:14:10 -0700 (PDT)
X-Received: by 2002:aa7:8555:: with SMTP id y21mr4532301pfn.75.1593551649467;
        Tue, 30 Jun 2020 14:14:09 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:1000:7a00::1])
        by smtp.gmail.com with ESMTPSA id c30sm3490561pfj.213.2020.06.30.14.14.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 14:14:08 -0700 (PDT)
Date: Tue, 30 Jun 2020 14:14:07 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 1/2] kbuild: fix CONFIG_CC_CAN_LINK(_STATIC) for
 cross-compilation with Clang
Message-ID: <20200630211407.GA4163361@ubuntu-s3-xlarge-x86>
References: <20200630150625.12056-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200630150625.12056-1-masahiroy@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="H7H4y/Ld";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jul 01, 2020 at 12:06:24AM +0900, Masahiro Yamada wrote:
> scripts/cc-can-link.sh tests if the compiler can link userspace
> programs.
> 
> When $(CC) is GCC, it is checked against the target architecture
> because the toolchain prefix is specified as a part of $(CC).
> 
> When $(CC) is Clang, it is checked against the host architecture
> because --target option is missing.
> 
> Pass $(CLANG_FLAGS) to scripts/cc-can-link.sh to evaluate the link
> capability for the target architecture.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> 
> Changes in v2:
>   - New patch
> 
>  init/Kconfig | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/init/Kconfig b/init/Kconfig
> index a46aa8f3174d..d0313e7725fa 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -49,13 +49,13 @@ config CLANG_VERSION
>  
>  config CC_CAN_LINK
>  	bool
> -	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(m64-flag)) if 64BIT
> -	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(m32-flag))
> +	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag)) if 64BIT
> +	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag))
>  
>  config CC_CAN_LINK_STATIC
>  	bool
> -	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) -static $(m64-flag)) if 64BIT
> -	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) -static $(m32-flag))
> +	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) -static $(m64-flag)) if 64BIT
> +	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) -static $(m32-flag))
>  
>  config CC_HAS_ASM_GOTO
>  	def_bool $(success,$(srctree)/scripts/gcc-goto.sh $(CC))
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200630211407.GA4163361%40ubuntu-s3-xlarge-x86.
