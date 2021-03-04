Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQW3QGBAMGQELDSQIGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE8632CBC9
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 06:18:59 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id t15sf6921451oon.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 21:18:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614835138; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZWErONAsFofav9NZhxg04l4FwK6YQC6/PWoAwNUSseKPKVCKeHzKFxk+Gq2FmTFIt9
         lIjz0KNXveaIKSrN6CDnStXk8k5Yyi4s4Fmc8LOESkugMuakBXfIOFquII3CTLwiHuQs
         pLF8zPV+dszpSh7aWVKuiC1ZAT9+GW2n3Ei5V4JpAhPtzZJHodh2l2mQZ85IzofzMydI
         TP9NtnwNIaQzao+vf5dn27cQjsZ7AjLs5DIwVV0KkKq+2CuWC2Gej6qFI/VWGSG11dWb
         xiFtsCDGBtR2oo1emuKOIJAI7yaaI3Jl5rxRNz1SuQa/7+RvUL7T5PyCMYVmVbGqFymR
         1H9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=GN8brZx5O7T7ZByTllEYJ3ejM+d/ayJtyw9er8rzdHI=;
        b=tZb1kyiJbcuZ8W8uHdnIqofU5sxT6lvSw330qAVeMo+PsshgB20HjV+hct0I33zySJ
         9Fz9aZpkxmlgMC+AsTXVyn/7dDZb0UXnHD6AdwoLQ+5OvElP48rUIL8YbHyKSBTy2vET
         h4tkM6gvvhkkWHWa8ix9TAYSK9SrJNx9YD+EcWIPd8BQ69pY64ZEoXaw4cDZCjrH2e5y
         5sZDKU9xlRYT2IqQgLlByQknoInUhB/dDEOy7FL7Zs3lUbV4gRC02a9ZExaiwXf/c+kT
         w7cs4g3O8gzSlJldt7HFc4yl8YxOyhMz/vJcGWwbsaAxGMCsozj+yiUOM2y/vwkK2rZk
         2g2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cfhmrj4+;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GN8brZx5O7T7ZByTllEYJ3ejM+d/ayJtyw9er8rzdHI=;
        b=iuMNHJvak8+uZQGR7MPcAP3ZBcfPd3KxsNXr180Umf3lPhAX2T+c0fCxfCmRMdFYv0
         GpzyUrzTjSURTs5bmoNwIwZpThh0CUx89hyDg5z9ePQQ2RUQQisb+ryh03yQWz9OE00J
         ben43vtsuSHAjD5zQCPToUoSGW8sjPw/x9IV9I/jVJ6AYy4e4TGogTGkAXUVXAQjBprA
         oidkjBbr+eR8u47ylUAbbMF73quGO+D7fBUJRQFUs9byKsNt3Hwgh5egcom7E564p22F
         Gf5jLEl473GTyqK82CbadbGDOg1Ka0wBvvsvA4igIwcpV/POk4YyISlehXnmLf8n0r6r
         k6SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GN8brZx5O7T7ZByTllEYJ3ejM+d/ayJtyw9er8rzdHI=;
        b=pB51JXPgsT3qm6OoX+1SXcEVnHKKpNEnGQZxcHvpAJ4gvEPOUzBG3CiWIM+s++Jdk/
         7O/Arqg+LQs1FvJJVT7/j0oTdRf95uOw06WpKR9FzsIoM8H2NeNyKv1goq/90HKNsv6T
         IHxcEmbzRyQs0fUTuK8i20QRGQOHnDkBPzRab9ckNccGyjseWKd4+C2e9SGjIG3xQdeU
         j4TrxnId9edS7v5B/Q/NX2n7EhThpXF7Z2DY5KVSoE37xGU36vts0TjVkq7OzGGxqiDz
         2ZFFIRK2LcvF5tZaDsOscKQ+CdPFSvTS9lwkIH4N45+EkeInFpjG10bOJcXr35i3/fcJ
         fgyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kGEMMuqJiWy/RJh6aw1uWtUjPx1rmvyU0Mh4hghVSNIau54+n
	Fy8PjAUgBXb3Nx1sa5xU9o8=
X-Google-Smtp-Source: ABdhPJwA19a/zfmH9bnkrVJgl2juo2wKJglfqYqC0q2h7lmdNF40ouTM9N2ehhqxeLu3z3afT+R+lA==
X-Received: by 2002:a05:6830:16d6:: with SMTP id l22mr2108187otr.121.1614835138463;
        Wed, 03 Mar 2021 21:18:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1156:: with SMTP id u22ls1225932oiu.6.gmail; Wed,
 03 Mar 2021 21:18:58 -0800 (PST)
X-Received: by 2002:aca:ba43:: with SMTP id k64mr1813838oif.140.1614835138096;
        Wed, 03 Mar 2021 21:18:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614835138; cv=none;
        d=google.com; s=arc-20160816;
        b=utWVDlLA56KEFX+BwG7Bp/mZnf9iqVYvOOun/n26czNPdP3niO7c1ytJd1f0kQWzfK
         zGA7OZVXlU8XlXNTL1rtx7psmNi6DpzO8ZRJqZDxqP8fz71QrfumsQZTGBww+L3Wgd5G
         r021gvYlD6rgFuZrl6a5DogkVmTEEYAuSOBlhn/DERs2oXRKfDFy62etATJQ3Of39l/Y
         3eUnffV4LZCUGxE/v/GAMtW7LcXBbtvwRv57P8aSmIim3I2xUdANJIjvmlZBBxHmvuiQ
         of4LOhLldvixgOmGaUazvmOKFiQIAypGM8Z/bdAUJF0poyfatHsHhB+VnkSXoFn8Oo1n
         POAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=en0KpVrwC/nthRbafbg21u1PrVXS63VIb1LgHZTVyEI=;
        b=K/iNNSimJ+FmFwlMvUV1yMYAwGVdqv/EJmzOTSrhXWg6tsW358rttvgTLrPmy00JSY
         BTje2VMG1oCIpEUGPNeYW12OYZLrxi5/WzfYB6WtUK+HqBee/TckV2gfntQrA2XSkAuJ
         zlHn3GEFoAALx005GlsJDcrEp14gWgRjioIs7zG2H9LyTM+btFi+VqgdZ1n+u/ReVbl5
         P7NUtX2Q+8GyUCJoIstoPueExARjMOxfO2a8779Xs63hJXCzgB/S7bAnfVCYq1u6LT+D
         1OJFVyaXGCTMMS51rybdb0GItrdKtofWFTkG+XXOJe175UPDxOFzn4YLjpaFBvME4XHb
         hj9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cfhmrj4+;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j1si2261700oob.0.2021.03.03.21.18.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 21:18:58 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DAA6964EE1;
	Thu,  4 Mar 2021 05:18:55 +0000 (UTC)
Date: Wed, 3 Mar 2021 22:18:52 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Tiezhu Yang <yangtiezhu@loongson.cn>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Xuefeng Li <lixuefeng@loongson.cn>
Subject: Re: [PATCH] MIPS: Add comment about CONFIG_MIPS32_O32 in
 loongson3_defconfig when build with Clang
Message-ID: <20210304051852.6gf7ry26n3fct3ud@archlinux-ax161>
References: <1614820544-10686-1-git-send-email-yangtiezhu@loongson.cn>
 <20210304020244.pza6xd4ixziysrom@archlinux-ax161>
 <958c5df5-76aa-9161-9519-07a03ee864a0@loongson.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <958c5df5-76aa-9161-9519-07a03ee864a0@loongson.cn>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cfhmrj4+;       spf=pass
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

On Thu, Mar 04, 2021 at 11:48:09AM +0800, Tiezhu Yang wrote:
> On 03/04/2021 10:02 AM, Nathan Chancellor wrote:
> > On Thu, Mar 04, 2021 at 09:15:44AM +0800, Tiezhu Yang wrote:
> > > When build kernel with Clang [1]:
> > > 
> > > $ make CC=clang loongson3_defconfig
> > > $ make CC=clang
> 
> [snip]
> 
> > I think this might be a better solution. I know that I personally never
> > read defconfig files if a build fails.
> > 
> > If CONFIG_MIPS32_O32 is broken with clang and the MIPS backend
> > maintainer has said that it will not be supported due to lack of
> > resources, then the config should not even be selectable in my opinion.
> > 
> > Cheers,
> > Nathan
> > 
> > diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> > index d89efba3d8a4..ed35318a759d 100644
> > --- a/arch/mips/Kconfig
> > +++ b/arch/mips/Kconfig
> > @@ -3315,6 +3315,8 @@ config SYSVIPC_COMPAT
> >   config MIPS32_O32
> >   	bool "Kernel support for o32 binaries"
> >   	depends on 64BIT
> > +	# https://bugs.llvm.org/show_bug.cgi?id=38063
> > +	depends on $(success,$(CC) $(CLANG_FLAGS) -march=mips64 -o32 -c -x c /dev/null -o /dev/null)
> >   	select ARCH_WANT_OLD_COMPAT_IPC
> >   	select COMPAT
> >   	select MIPS32_COMPAT
> 
> Hi Nathan,
> 
> Thank you very much for your reply and suggestion, maybe the following
> change is simple, clear and better? If yes, I will send v2 later.

Hi Tiezhu,

I think that the change is simpler but better is subjective. I tend to
prefer tests like mine so that it is not dependent on someone going "oh
hey, this LLVM bug has been fixed so we can turn this config on!".
Instead, the config will just turn on automatically as soon as that bug
is fixed.

However, in this particular case, it does not seem like that will happen
unless someone steps but there have been times where an independent
party will implement some change that benefits them and nobody notices
for a while. Plus, I periodically grep the tree for CC_IS_CLANG to see
if there are any configuration options that can be re-enabled..

Regardless, if Thomas is happy with the below change, so am I, as it
will allow us to test more 64-bit MIPS configurations. I can add an ack
or review at that point in time.

Cheers,
Nathan

> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 3a38d27..f6ba59f 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -3318,6 +3318,8 @@ config SYSVIPC_COMPAT
>  config MIPS32_O32
>         bool "Kernel support for o32 binaries"
>         depends on 64BIT
> +       # https://bugs.llvm.org/show_bug.cgi?id=38063
> +       depends on !CC_IS_CLANG
>         select ARCH_WANT_OLD_COMPAT_IPC
>         select COMPAT
>         select MIPS32_COMPAT
> 
> Thanks,
> Tiezhu
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210304051852.6gf7ry26n3fct3ud%40archlinux-ax161.
