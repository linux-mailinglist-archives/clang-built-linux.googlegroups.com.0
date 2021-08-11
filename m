Return-Path: <clang-built-linux+bncBDV2D5O34IDRBREDZWEAMGQEIRW4GFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id E538C3E88C2
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 05:19:33 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id b15-20020a170902d50fb029012d51b0ed75sf489486plg.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 20:19:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628651972; cv=pass;
        d=google.com; s=arc-20160816;
        b=YaIhXgDnAJWoKu0BTOU4eGQ1Qp/07ucyDGYPxuJtmd3OdURnXCdm/pJWzqKIHluCEu
         3UCfRpKw2j/RkqawyRciIcacrNVWEAAM1DNQVr8lQ7z5LRcKQ9uNOS8j17e4X2TCBcL+
         l5B3twgXFymiUq4hhLo2efTopmEuq4k8NTpQ/H9niFtPv696M2PWikBB2CdEERORaYcp
         /8MUndcj7/XBkQgLKZsAK9l4+BJpW3U4HZg7lvBlF78uGiGjZFVg1bTy4T6PX8ih1alV
         GkiTVAdLF5ulvrqzM2O0NZENDvbBjemrEaKbd0ogJAcyxmo743Ws1EP8GJuEMM6BsDq6
         KuNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=3u4wtG1XJJmwgPO1DCZrQc+Fc9G5E2DPKiE9px9dpHU=;
        b=vKXPIq6LhGl2O4uWBWVw4u2Nmf2qEXPtkPhVayhmUMwmD6vloDbtZT4gopZMJT2GIE
         C08C+gXsGtLvUrIlKkf8h4SyaODV0+vzWqbuxlMgD6o/H0AK6+fMYJBUm7Bp7aFimu/g
         mDxooT9CaKBVacoVzvdculWOGolABUW6aFRKZoXy93oUyP0WXBJHuTtHXvBdm/z7R2BO
         zqDoXlyE0EDCCBnCmHJwbhqFKyRIIg4mvfEmGHDBfksbA2jAWbl9ls7k8CN7ekDpVBd2
         663ZWW2SkFfAxOpOsm1iM+jcy4PWmw1bjtWhTxY68izlRdeK66bXTTUc6l7ydQsEQXhV
         M9tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=yScrgdsQ;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3u4wtG1XJJmwgPO1DCZrQc+Fc9G5E2DPKiE9px9dpHU=;
        b=oBgHL3+7w2XsL5azubrTw0nbeAVzwjZ2eHEp6kYM/RQx2+CltWQnD5b/UTVZ2EZLg4
         15KujeQaW7322Qm4qX+5lI6a++bcCSFdVny35Nllkw4wpDfMBqjSWi/OtAYexX/lUHK8
         hBwrNzPkaPhk7i1JnSk33o5EKbsr+ufqGglzqvBI2cUizl9PCjyA7UJtIz2l6e63VLWv
         NcR7G4fHj9y30XahWNjrJFf+XnYHSDr/PXQya1c+D4ZLtrqvDiW2OaRkTLFEuoQjaUe6
         6Ip3/eDwdmUBLYcRkrab1m0QyiH5b9I95zh9R5HD+v9PLCGq1/GLwA+X/1b2A/FA+ioc
         mwyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3u4wtG1XJJmwgPO1DCZrQc+Fc9G5E2DPKiE9px9dpHU=;
        b=opxBwOB7exzDEqLZ1R2MmsFmZrzvmiv7xLc/STX0+2fybCtL0Aq4W3KAAswYEbsvD+
         FjZHP7fbwsgMefhrKi/QXKTxhFKZTTYp01XYc23sMHttCqVKgPlIJqL9nWbwKC02w5rl
         HbX20W7gg9cMHkFHUhcf0ZbLNnNlS3NUcWVVWgctSpxj+4j6lplLnKABEMwsmf70Tgj6
         FVoq1OViXTGVF8HZXNa4QHIuo/isQFmi7M5otFaXhd2woTzq0NPcpcu/4HVxJhNMvITd
         /OFkjSuJkHM0Al4WsYBwMm/mP7FT7jDTl6fLyHojJS5VHSAi5ZvCjH81zrdtiZpuaSbh
         H28g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532znUUgZzpbhK0MT6uunn51tyF7ABbUfRlQbAOWc83w/53SDBg5
	n2qi4JlkFyMCvQE3KeoOlqA=
X-Google-Smtp-Source: ABdhPJwf/Po2bsXPiqhChTruhOeCrKX4YisC0WqGUuR44b0teI9i/lR0eBJvgQEPSFnxWHkPL4lbqw==
X-Received: by 2002:aa7:84d2:0:b029:3c9:3c91:c096 with SMTP id x18-20020aa784d20000b02903c93c91c096mr20092010pfn.26.1628651972153;
        Tue, 10 Aug 2021 20:19:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:520c:: with SMTP id o12ls406213pgp.6.gmail; Tue, 10 Aug
 2021 20:19:31 -0700 (PDT)
X-Received: by 2002:a63:4a55:: with SMTP id j21mr659807pgl.187.1628651971643;
        Tue, 10 Aug 2021 20:19:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628651971; cv=none;
        d=google.com; s=arc-20160816;
        b=fb0Fgoq1t1JL01p8awMJs9cudjgHFgdFQhdNqDh/vMDM9JM4rQ88kpSykInoBv9uPm
         rjNjznhvnq7yNOcEj7xARN1plz97DFKWsTSEP9IyuBmUJ6NN1/n6qVSA2ZWfS9IWvI0I
         bZl88w2IqOnpftd5SdpquDwyGPYjlQLMxpyd0OaMxGDrNCglKlvgi5culURekk/d4+5l
         kUfujmYX/4dgPbmHY43mujdEBFvtVfC1w/5JNEp2+WuE5oyp6GGIRqOcySFHIIGQVjOr
         Vc6ILwIGLhAFOeKadlJ0ltrESGCTLsx0DXHFlFbkUl79DaUm1eWzFwvXX+oHfVnHpx/A
         b47A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Tl+eS+6QMjkohlSBI4f3Acc4gkhJqzhh4NWop3vmxOA=;
        b=fanRiFGkx6vVCJ2MVYtzc0DyDYg64HyvE2slGZn2fhQvC7nyT3n8X/0ucrV9PevhYY
         7mS5yrywC6CRyXtx9rxFEefCvNlQo9YJmccuPCrzsl7kXm+hGt8P1Y5lt0GO4/EVkww8
         yGCfmm4HWtVYDVhIQeBIkywkIfG1jqCOy70STbocwsxUwZd9885Yf+iSnTVcKMcYozkQ
         mcRQMs9OsDVMLKvaX9tzYCQPMMPrpuAnrbNtB+Ru3OaBibUnIMhOZHs44hoz2DvJ5b3v
         9cams+EaH2PTHkPMYJy+Db9YY5ORksmomF33XVTlrMXTWfekzWcnInaIN3RK2pc9aPV9
         B8lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=yScrgdsQ;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id g3si666913plp.2.2021.08.10.20.19.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Aug 2021 20:19:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from [2601:1c0:6280:3f0:e65e:37ff:febd:ee53]
	by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDem8-005RvP-NM; Wed, 11 Aug 2021 03:19:28 +0000
Subject: Re: Error: kernelrelease not valid - run 'make prepare' to update it
To: kernel test robot <lkp@intel.com>, Masahiro Yamada <masahiroy@kernel.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>
References: <202108111155.RvN9J3Hs-lkp@intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <5ec75ad9-a861-4402-9c16-ae7cb0aaeaba@infradead.org>
Date: Tue, 10 Aug 2021 20:19:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <202108111155.RvN9J3Hs-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=yScrgdsQ;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 8/10/21 8:16 PM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   9e723c5380c6e14fb91a8b6950563d040674afdb
> commit: ba64beb17493a4bfec563100c86a462a15926f24 kbuild: check the minimum assembler version in Kconfig
> date:   4 months ago
> config: riscv-randconfig-r025-20210810 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d39ebdae674c8efc84ebe8dc32716ec353220530)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ba64beb17493a4bfec563100c86a462a15926f24
>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>          git fetch --no-tags linus master
>          git checkout ba64beb17493a4bfec563100c86a462a15926f24
>          # save the attached .config to linux build tree
>          mkdir build_dir
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=riscv prepare
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> Error: kernelrelease not valid - run 'make prepare' to update it
> --
>     clang --target=riscv64-linux-gnu -no-integrated-as --prefix=riscv64-linux-gnu- -Werror=unknown-warning-option: unknown assembler invoked
>     scripts/Kconfig.include:50: Sorry, this assembler is not supported.
>     make[3]: *** [scripts/kconfig/Makefile:63: syncconfig] Error 1
>     make[2]: *** [Makefile:617: syncconfig] Error 2
>     make[1]: *** [Makefile:726: include/config/auto.conf.cmd] Error 2
>     make[1]: Failed to remake makefile 'include/config/auto.conf.cmd'.
>     make[1]: Failed to remake makefile 'include/config/auto.conf'.
>>> Error: kernelrelease not valid - run 'make prepare' to update it
>     make[1]: Target 'prepare' not remade because of errors.
>     make: *** [Makefile:215: __sub-make] Error 2
>     make: Target 'prepare' not remade because of errors.

Yes, I have noticed this one and a few other ('static') make targets that
should not need a .config file. I have a note to myself to ask about these,
so thanks for bringing it up.

-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5ec75ad9-a861-4402-9c16-ae7cb0aaeaba%40infradead.org.
