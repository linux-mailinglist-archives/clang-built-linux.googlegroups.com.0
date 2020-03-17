Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBQUNYXZQKGQE6QX2OSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3712D1890C6
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 22:53:08 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id f206sf9710094qke.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 14:53:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584481987; cv=pass;
        d=google.com; s=arc-20160816;
        b=BfWmxd/XJU4Jfv9wiDSDDBHg3k9xizblC40jcI2xNkmog2/cw5Y3uB+FH5hhEIPRT4
         Xs9A0iVOyJWd/2xUX4oZq9EeOiErnN3msJ3SZN9EbFCjMglO7AmiK7AZnZXAZUfz7t8D
         4UP0Typ58pmB3zcAiim/jvVESQe/slDftTqRJf1VQ5wWTYkVDpRuHbx1hsRoa9TkSdm7
         KzV9cSCDFhYs8aFRgSTYbV6W3FbT+nHjjVWDYNi5wuPKGv+qH1Ar3va59F3VagEhZRWP
         lZjkznCD6GftPdc9QgQd6ESbJX2+40WxhE2TvzFOl343luWzBL2lLy8sK42aXw+MPm+s
         agsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=+PPhQuUsjfDR1ajfAFYZdaethnuaO2KHAeANhAJCdYo=;
        b=fLzZbezCyn3YSVc45GhcN9VtLD9SIUrJlkyKg+FJjHOMHOHpEsffLq8FWeHCfIaf3m
         WfE+26giqnldVu3Vl0GNlntd5w/UftFFlNb0GHacTYJJbbiU4fmMZ1WfZihr5bwkavtf
         735eUo255IVCeNcsv0VPqkoBrWih3q8wY+/9pBiqd5jT/0b1iqorWVXUKDnantpWeZ9g
         P3KGygreIcorkVo+IYgovP7pwND3hWv53kBr+E+UYIc7n5E0DyfaLK/eda25yySqmYvd
         FUtJa5FwXPQBfUMbwvkRg9cnXCmjLpscNYXEV+qN0yzvfHW+7Qn6sXqVGUPz95Vnr4xL
         ahRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=j9izuxAJ;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+PPhQuUsjfDR1ajfAFYZdaethnuaO2KHAeANhAJCdYo=;
        b=fpI32t5QlFyR7cgucKO48VUt7DKSjEWtNnzZ8LgSDe5yJ/7GSq2nF4r5S9VY+GdcG+
         osS7/DwLXkSMsm8nDT7ehe2pXW0WUf4OKbEBn8dkOm+/0JU2vXJ4ngqrWyxNsa/VMUqM
         CvSSb7NNJCocZTEZWgf/tKkY8Y0uaHdiOtiR96TOOTu01YdYNhjO1XB35CTGIlyFGO3b
         rEkdIu0Z8F9e58NrB7jV7UNGSKIAjzUKpPXPGFgqPLqlk8BeEB/I6Gio09hDwOeqa9xn
         25Jm76ovXM+byJgwDyFrV8JhImjWf/x1Fv0qJLWEavffWsNUPn+aiYQ19Nt973FHKL9i
         De/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+PPhQuUsjfDR1ajfAFYZdaethnuaO2KHAeANhAJCdYo=;
        b=iXiST2f3hQdDXDYJZGYhtOlgylFcbllN+ij+8vxoYDBF33wdfc7SRInRAouiS77SyX
         0UZ3X4pX+r9MN4QdL2NyhrD92mYPxfzLPRGTxEaPfk3+s1dKjMBAdHmC4F/KlOfZHpU1
         xl5JgfOeh8Xxp2ANwAimDJCR/Cz0WWxZpJavAdW4jZMeZeiH24MqNsq+LoHhKjKMSTL+
         NLn1+um5ZBv8W1vdyqWa3E9GZA92mzZkZ4Om1mVr/6Uc8Xsf1yx00eTLW9A6XvHFdVkp
         h4mU7jHVWr61aot1W5hRt8edkXg3UbgWjgQ5XPQBT2aKxHWd0HFPCerzL1vHFLd0RIB7
         HFhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0b7GZ/9Nqa6ZlyX4dZgbI8lnACS5cuxVZnfWD2m3Y2/7emKiM3
	98FSI92qa4yllhrPaEHLxH8=
X-Google-Smtp-Source: ADFU+vsYDk0B3EGNcqcVnYl4ABsbsnu7Ruddn+sv+yPFkdkdCNo3ByQIw3ldT6XiL2uf5MAdLTvV1Q==
X-Received: by 2002:a25:ec12:: with SMTP id j18mr1274483ybh.422.1584481987110;
        Tue, 17 Mar 2020 14:53:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3454:: with SMTP id b81ls3573204yba.8.gmail; Tue, 17 Mar
 2020 14:53:06 -0700 (PDT)
X-Received: by 2002:a25:9741:: with SMTP id h1mr1361067ybo.518.1584481986551;
        Tue, 17 Mar 2020 14:53:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584481986; cv=none;
        d=google.com; s=arc-20160816;
        b=ztxFQ2DG3ONqAEOSWlx+jD5B3KS5XG5OOIN5B/KGD9LFrxImjh8JvDoqtPq15IP4F6
         0KwnvaxdkynOv6CjDKgqhggRW3CPWL7Am6FiFM+CNxx16cWr9ncMN2Sl9MHmnxE5HSdh
         Rzg3L2501La7hj7jp7CH9dWqoUFs9GwwsfEXysU9zE5Hbijll5Ye0dQXTSacXAkTL470
         9BLdcC1lOYz3MMWdem+37yM4w9xc7NNxPPOMv9JRfJtzseC7v57ZCf3KpB12NujCp7O0
         0oinRxtZFYd8ve52AnFgQ7g/Tc0rk8oD2/WdpSS57hB5XlJPn11UZ1fNKkEmGmW2gqki
         8/lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Q7x8ot6O7+GnvW4ZiN4KJESmlVq6mFUI8H6xTE7tWNM=;
        b=shsaE2yw+u+Pw/FpkfgT7gSZ7lC/3BSFVplb4/1H5e40opE23gpCVVNyGB52sID90I
         j7+pkOb/mIzb8yepkh/MuzPteNSh+Sw6ifrqyEQecbh/w2aKGERDHET9Ohge1/EV22Bp
         J7QVZLsN6Yc3fSkyiVH9OaEQW6jYeD2lGeoZngLwnzrZw6j8CPenOWJ9QCm+PC+GJSLK
         TTTIY4w+IpOJJY14S9kZFWpf3FHnohrDVuUQ4ghr7oIfZQ9tFZjPKa6lu5RKcp7BvbLJ
         DEkvhlQ33reJaMi+nUlmGC6XUxUrutvz+KcFpFi4nBnCkrkgvRxYDyn0C52yToZXOCkb
         hDYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=j9izuxAJ;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 207si288186ybe.5.2020.03.17.14.53.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 14:53:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F25DB20724;
	Tue, 17 Mar 2020 21:53:01 +0000 (UTC)
Date: Tue, 17 Mar 2020 21:52:57 +0000
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Borislav Petkov <bp@suse.de>, "H.J. Lu" <hjl.tools@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 6/9] arm64/build: Use common DISCARDS in linker script
Message-ID: <20200317215256.GA20788@willie-the-truck>
References: <20200228002244.15240-1-keescook@chromium.org>
 <20200228002244.15240-7-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200228002244.15240-7-keescook@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=j9izuxAJ;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Feb 27, 2020 at 04:22:41PM -0800, Kees Cook wrote:
> Use the common DISCARDS rule for the linker script in an effort to
> regularize the linker script to prepare for warning on orphaned
> sections.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/kernel/vmlinux.lds.S | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> index 497f9675071d..c61d9ab3211c 100644
> --- a/arch/arm64/kernel/vmlinux.lds.S
> +++ b/arch/arm64/kernel/vmlinux.lds.S
> @@ -6,6 +6,7 @@
>   */
>  
>  #define RO_EXCEPTION_TABLE_ALIGN	8
> +#define RUNTIME_DISCARD_EXIT
>  
>  #include <asm-generic/vmlinux.lds.h>
>  #include <asm/cache.h>
> @@ -19,7 +20,6 @@
>  
>  /* .exit.text needed in case of alternative patching */
>  #define ARM_EXIT_KEEP(x)	x
> -#define ARM_EXIT_DISCARD(x)
>  
>  OUTPUT_ARCH(aarch64)
>  ENTRY(_text)
> @@ -94,12 +94,8 @@ SECTIONS
>  	 * matching the same input section name.  There is no documented
>  	 * order of matching.
>  	 */
> +	DISCARDS
>  	/DISCARD/ : {
> -		ARM_EXIT_DISCARD(EXIT_TEXT)
> -		ARM_EXIT_DISCARD(EXIT_DATA)
> -		EXIT_CALL
> -		*(.discard)
> -		*(.discard.*)
>  		*(.interp .dynamic)
>  		*(.dynsym .dynstr .hash .gnu.hash)
>  		*(.eh_frame)

Acked-by: Will Deacon <will@kernel.org>

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317215256.GA20788%40willie-the-truck.
