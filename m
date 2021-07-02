Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB2HN7ODAMGQEKQ6P2LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A05B3B9FBE
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 13:22:18 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id d22-20020a056a0024d6b0290304cbae6fdcsf6057374pfv.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Jul 2021 04:22:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625224936; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ac2OfPTErG8fXbSX0mXi97ChcsdrYh37ICQMugqYiP0W7bCbGtOuVirzmJ6y34HysL
         dkQLHDhYyJ7WlDcyEeQ8P8UNb6jRm5uZdDkejKSLDNTrbunnCkqqsE4Ip1qSU9OxriBt
         3b/e9xWaj3NZ/IyIITg+rdmmcR/4tN55qrkYS92jeNJDNfkuYHa6UmDQCAYngRr4HpVW
         zveSYXqgL5CALU6H0WvaWKJ20TnX4TkW57Zi0+MVA8inoZk8u1wIeitq/fZNvN0hYxGV
         lpPd0Bf0w/E6r0lOUTsi6SW4lboAsqZ8IyYCdNzUCJ6NxLBfwRxeZdYqhP1yxE5Z2l5j
         bOBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Cf1zXGwqrZBegemYAD0Fi+DsO35IoIBMpKKYvLV6uUg=;
        b=XgF7XibqPCeA396vzQ5JJcyfgcWOcNxxJPgt86fpYDwDD2Ey2nS75WTnrDhusWIxu4
         +DrAXDY2dc7Ijsa3X0ABs19fntDZikconkbY7qERPYcoECcJQi+hx75S/eh8Ih+9lsts
         etnbs7mYpIXq6qRKCdzLAPJ/yWtvyRI4D9Q5tToSdc6F2k8hrZb0RVBKPEGlxgaBVGoS
         VBtE3z/ws5JJBptEAeo7IFtdmr31uqQMxpfNFbL3t3yv5PJE2AHpgMyif2seaYX4E/UB
         RHo4vov9+C8ypc3hERZa4DYo8g9W7QK9iXRM1nD86NyLZbtVnePZEfdA8vHbOLybaQE0
         A4FQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TGiQKFEp;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Cf1zXGwqrZBegemYAD0Fi+DsO35IoIBMpKKYvLV6uUg=;
        b=LyHnGD8faRUelBqxJiTuXTqzhng+MliUWLxBGcEKXzuOlh8Kq4Tkkad3O2RHLwbT/1
         +v5K6OmsjAPehodOTZdIrY3InX+AydgFCU+gVbI+jAsoo5z3jO+weFmaZWr7zPspltvz
         ybNRy4YV9iw4UiyKgxfHLcrdYJ/FWv8fin8EpOEoWetD9OQjWczAslEMWB5RW+Mso6qi
         yKeWuLRHByPFUW2BhmCS1eu8xByKQ7Tfh7W5zkZWXf3FrR8r463m+voKA7EQ0ZNBQzlh
         W2bKF2uhpdzzOjkzcLuuPGMiyJz+xBAgP5CED7LXQfOdI1pXLZruZ046sakKt+AHlH7C
         i+pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Cf1zXGwqrZBegemYAD0Fi+DsO35IoIBMpKKYvLV6uUg=;
        b=Wm7wxKoRzrmQYonDWD9IPR+e8uByLRPO+hkBmYe4FY4o7HrkwyDTzDPmphipJ9vqAT
         YmUN81hlTvIVTb9N8ypTUDJnKAox7XPd4eNy5G4PhTawyaAVucPyeMw8cDaY9Gm2hd+M
         TOjl8uMM79Y/aCZPhQphzx81cLKRoXYNgQFwCZ03qQRWuRwXyqHMg0zSsbmqYG2UzBeK
         DQYNKm4ZfpHb2821wjGJItT7t5nhWxlo766n6hNO8c07EzSNqSGZRqU+XQ+GqAiMxGp5
         hnQlXZzVVVeo3cg2ldWMiu1RENSfQC6QJteRCo+E/K2Q/jNpSm0QtQGh9TFHZ9FDm5e/
         h5nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ihFgJHA7o0jduNH34QR7iBUqMcRnc5CG7TKoNEfIZh943h5kn
	QJ/GFpCFwMeb/YgeLnY0RTI=
X-Google-Smtp-Source: ABdhPJzqDdBHHYhS0eMbieEN1uXPQM1oQMrwUuDbUY3ja6l/XQNvhvt3NauBA8j3p6oyLtYvaC4ZKw==
X-Received: by 2002:a17:90a:6605:: with SMTP id l5mr4455797pjj.168.1625224936669;
        Fri, 02 Jul 2021 04:22:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d505:: with SMTP id b5ls1790494plg.0.gmail; Fri, 02
 Jul 2021 04:22:16 -0700 (PDT)
X-Received: by 2002:a17:902:ff0c:b029:11d:3e9e:41ec with SMTP id f12-20020a170902ff0cb029011d3e9e41ecmr4172430plj.1.1625224936017;
        Fri, 02 Jul 2021 04:22:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625224936; cv=none;
        d=google.com; s=arc-20160816;
        b=dPdgjV6E+Iwcw3qgcr4fGrHu9tFbuLpho4sZL/4LpcHojOLXmMJa0skq7iuBor8pn7
         8sELmiWSPeXkr/yON63EbQYAlSUS2qf0Y/dsutlaQonntSJgmgDpzfAR3XyTQXvYSFM0
         Ra2qSXt1/FS/48n7XpkTMP6hqJXaUh2w4U23zlorE5mzkn9oHVRBhZOCdBjuENSSskGz
         EvhYnvpIY3/MoREErANnCWOsNYhco/kKwYY7RlAjCKdUzhnOZTQBReHK/IdowVlOq/1j
         vXUW1VBwR4a/wkRd4N4m7lm9rhDmRLT0Vj7A0MAnFmqlNOOwjp9G+Kzo4eLy8lE/SVJk
         Tc6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=DG3eSkF1Yde14nTW2SIrD9kY9wa3w+P0/81xapomAls=;
        b=IH1ycpMIOKJEqX5CimheR7xAJVgqiDXjsVZ84q3+UOceHD5WJxBvvedQc6VuvaP6iM
         CyPtwpFNXzO6fnDmPdCayO3FZhkv3q8WXp2j/be9cMhKmjP6abOyzZwUQ20z24BFBevp
         lXVS1EiYZkJ/GP+/F7qIj96IrZKSCoKx+TR+fCYVO85gMk5tX4R07cVEt8+TKcQ9DX+h
         NDXx3jEnu327XX9lHdfWcnYvTkbz0jwa4bHJ/eMyCdw7W/NRJTBK8iYYYP6cAEVZc6eV
         4w6u+0eEDCYCzOH1nciH1KSqMp1v8ip+y/+KyBilWEaCjD9bzb0frIvHeROQFYh8qKLN
         JZ3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TGiQKFEp;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d17si191137plr.3.2021.07.02.04.22.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Jul 2021 04:22:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2FDE5613F4;
	Fri,  2 Jul 2021 11:22:14 +0000 (UTC)
Date: Fri, 2 Jul 2021 12:22:10 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arnd Bergmann <arnd@kernel.org>, Fangrui Song <maskray@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
Message-ID: <20210702112210.GA11084@willie-the-truck>
References: <20210701235505.1792711-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210701235505.1792711-1-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=TGiQKFEp;       spf=pass
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

On Thu, Jul 01, 2021 at 04:55:05PM -0700, Nick Desaulniers wrote:
> We get constant feedback that the command line invocation of make is too
> long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> target triple, or is an absolute path outside of $PATH, but it's mostly
> redundant for a given ARCH.
> 
> If CROSS_COMPILE is not set, simply set --target=aarch64-linux for
> CLANG_FLAGS, KBUILD_CFLAGS, and KBUILD_AFLAGS.
> 
> Previously, we'd cross compile via:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linxu-gnu make LLVM=1 LLVM_IAS=1
> Now:
> $ ARCH=arm64 make LLVM=1 LLVM_IAS=1
> 
> We can drop gnu from the triple, but dropping linux from the triple
> produces different .config files for the above invocations for the
> defconfig target.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1399
> Suggested-by: Arnd Bergmann <arnd@kernel.org>
> Suggested-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/arm64/Makefile | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 7bc37d0a1b68..016873fddcc3 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -34,6 +34,17 @@ $(warning LSE atomics not supported by binutils)
>    endif
>  endif
>  
> +ifneq ($(LLVM),)
> +ifneq ($(LLVM_IAS),)
> +ifeq ($(CROSS_COMPILE),)
> +CLANG_TARGET	:=--target=aarch64-linux
> +CLANG_FLAGS	+= $(CLANG_TARGET)
> +KBUILD_CFLAGS	+= $(CLANG_TARGET)
> +KBUILD_AFLAGS	+= $(CLANG_TARGET)

Do we need to do anything extra for the linker here? I can't see how we
avoid picking up the host copy.

> +endif
> +endif
> +endif

Have you tested the compat vDSO with this change? I think we'll just end
up passing two --target options, which is hopefully ok, but thought I'd
better check.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210702112210.GA11084%40willie-the-truck.
