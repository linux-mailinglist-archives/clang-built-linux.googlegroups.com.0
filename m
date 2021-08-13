Return-Path: <clang-built-linux+bncBDV2D5O34IDRBJ4X3KEAMGQEP3NAK5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0D73EB772
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 17:11:36 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id dl8-20020ad44e08000000b0035f1f1b9cefsf103037qvb.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 08:11:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628867495; cv=pass;
        d=google.com; s=arc-20160816;
        b=MurzlZ9TfHes5fyWh4e4PvtBgPQEzvUo8dLX1K/pr4OzhRqBZZp0hs5gxyidIkAnNj
         QvVvt5luZaBd2Wno4+xu6w2qWveB/VZj28SkDtCayXVqDd9OGL6nPPsBuzPNUvNye+dm
         keKj6JBG/b4phEXHArfn7PFeLGnG2Xj2wpffVBllz4EGH5aBRBrpNe1/rbUVzYRCSTIm
         A/DDkQtNzM7Ae2AAy++Fj7Ouz41M3CCTt9hGe2eminU4hrBKaiIhK6K3k4tWrrGXoyyQ
         if4j0H6Q2HFznAWya1WunJtwr7AtNI92b3p0tFKiOuOv4ExHxmW/WSYF6EmghkUEOh8f
         5Xkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=lRELu6+HmzFlw952S2oBHmLne3pe9QswCgzZnNpSLV0=;
        b=BCFWDrk8xuvHPdno7eyqYWXTGK8SBkIh0WYF51Aw2d7ciAdGZwm+r/+NoTkF1yqfMK
         1JLiLZ1JZ9N/cPoXHj25+sgfDx9kSIff6GG/a5tpPHKtzM0IGn5ARtSfvhwF1/wZxYZa
         dDifAi8+vCwS6zTcQMwec3gUVlUamm+K7hOSWFyepgDeY5JfKW/bY+KgZx6Q9mHnqu18
         Wqim4fRtcbHRLaPS9s4uHKuj/NJSArfWWiylKUv6y+E3wyKKEd2NBgROEMAhdO1vI0JV
         6sb0LqOBY0inY7PaenMD8mneLQNpMlzUuvMIBU6dzu6dKo2cjdqqOWdTgK09wA7LdQs0
         5G0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=3yXkaLZv;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lRELu6+HmzFlw952S2oBHmLne3pe9QswCgzZnNpSLV0=;
        b=UmYnr0fSC0BsdHBJ8/HVZ+p0o/BAGg7tskF1uuHRHJRx+rRe/2CDVHIXbCq7ydAlPj
         Gg6bxvs4T50nixuF0nxPemb9CxY6VjT9DKT9x0nqYsrFW7Yqveur4D8NfiJGOYi7+KQi
         6eHui8PbbMO0+KGEeGohy+ZXSjqyXKkD88CJT6QbCA2VgC+TsMGjLiLa0qutnljEm5TU
         MAH7QqSFH9k2Rrln6zP/lCu3aNQsWjdkIQtNRCLFFZK3HNg/Mm7FDuJtp4TKmG/I74lE
         JCPJ/TeR9sKljZOktBOIEsV/1suv8k2PNPoASxehQDwJ7pa6G2zq6qHVAhm1SlmlVjoY
         Nk+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lRELu6+HmzFlw952S2oBHmLne3pe9QswCgzZnNpSLV0=;
        b=eEIQyYe5L3QRL/CB5I+zoHV7baTzhYAfkg0LpaL/FbNzC4bEJTIjGJuqqMuAjIjiEN
         eyUNKDL/rX8xnxw3mo0XMNeJXIESU8FeO6Ck+QD1ke3KG0chfThLueYwQwoS8lEKA759
         Lj1q2NFKbGxXONoRSL44tvh6XIz0EsGIs37lCQpGvq22J5UPMCh5SbLFNNb8D6mnS+2x
         7fhcRnpgkm1fCbbuOR/pnWGBbwkzTR3XtFhwW5DzBBTGEhC6MofC+wePeMLTDHQ8j0vw
         hVTbz6orHQoC1Pn26iN6Dj4JdBKu2S8r97PHTS0VN/WD/VZGVr9LUUr1nTjISndEgkXt
         p2qw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Ec6FAOMllzYkwzcJF/lgcbiSLOTiuaFaJXCqDJ2VcNQV/EmDI
	sSwb6ouL6BYF5pHd4lyzI6o=
X-Google-Smtp-Source: ABdhPJxXQ3asH1KtxhXt+gBWx2D90Rvz5fv2SkcZn8ERUrFy7gxNfO/2BtOlaOhQue/5239DxP6GiQ==
X-Received: by 2002:ad4:584d:: with SMTP id de13mr3015454qvb.51.1628867495541;
        Fri, 13 Aug 2021 08:11:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:57b:: with SMTP id p27ls928369qkp.10.gmail; Fri, 13
 Aug 2021 08:11:35 -0700 (PDT)
X-Received: by 2002:a05:620a:1909:: with SMTP id bj9mr2566547qkb.435.1628867495003;
        Fri, 13 Aug 2021 08:11:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628867495; cv=none;
        d=google.com; s=arc-20160816;
        b=glpbYCo7LZ1c3CbixgHf3y5EzmqPUvqh2EiApnqbj6ZXjVk1+txjprTjJv9Re+ijvN
         nAqDMCmJoQq/VsbCGDp7qvOYy72TKunQyWOViDnJIRd+mz9QZG/twhgWtY94FCqa2+io
         3ffA19DgOcoyNIVtB4ZTkOGdCSEAGqCKXo/RF3PLxjtuDEqmnJiRUPFvUOZrKclWQEXh
         cBTxKqVoSSRZUWKNPipdbtG9cdwS4HhYQXR8+7rEPW8wARNulH0iIp+iJ93duLgKORaW
         QY3QIF1I8wKOo20jjkxRpYdEQUHekQHgnkhOO8+9KV6BKyWCw8iZpNYj9fIlpPgFH4Uf
         yCcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=p67Ofyq4VTWuxUbSULjdsrUDt9m7Z7Au2Rp1QiwAyI8=;
        b=QhtuwnTCL1qETa4/s4hn8GAri6J4OZqAcU5WfGBPMNL7ponOA65z+3i03u7F0iS452
         8I4B38Cpt5psVHuZ/WucDv5j1aenntfTMxP4YRH7CzTi3y6SMx7PpOJogRrKMr9v5Uy7
         0sL/EcCbqefjp8ICMJ+QTb/+IMG09qL2eMJ0tjBwy6lLAf1lvGtkgulXlUspWrtOjzsx
         kFi7dJ/JfSKWneDCebyQTeBZ8GHGh2sJ6qZiPu6wDLYh16OsVQhMg3JzMGS1jXcQlVzP
         LLtyhweDKtgUtDjYGKuOrABT3pIZnw7YVB6z4MmCrcc0PmvBlzu4UFbLT0DFolvwM/kX
         y3TQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=3yXkaLZv;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id m4si80719qkn.1.2021.08.13.08.11.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 08:11:32 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from [2601:1c0:6280:3f0::aa0b]
	by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEYqH-00CuJy-Hc; Fri, 13 Aug 2021 15:11:29 +0000
Subject: Re: Error: kernelrelease not valid - run 'make prepare' to update it
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: kernel test robot <lkp@intel.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 kbuild-all@lists.01.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nathan Chancellor <nathan@kernel.org>
References: <202108111155.RvN9J3Hs-lkp@intel.com>
 <5ec75ad9-a861-4402-9c16-ae7cb0aaeaba@infradead.org>
 <CAK7LNATk21qWbgWORfmCLPD3Cieon-fwtuLtFhgOo1XORWJT6g@mail.gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <cd21ef08-1c4a-d039-d861-cd1c5e6eba02@infradead.org>
Date: Fri, 13 Aug 2021 08:11:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAK7LNATk21qWbgWORfmCLPD3Cieon-fwtuLtFhgOo1XORWJT6g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=3yXkaLZv;
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

On 8/13/21 3:18 AM, Masahiro Yamada wrote:
> On Wed, Aug 11, 2021 at 12:19 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>>
>> On 8/10/21 8:16 PM, kernel test robot wrote:
>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>>> head:   9e723c5380c6e14fb91a8b6950563d040674afdb
>>> commit: ba64beb17493a4bfec563100c86a462a15926f24 kbuild: check the minimum assembler version in Kconfig
>>> date:   4 months ago
>>> config: riscv-randconfig-r025-20210810 (attached as .config)
>>> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d39ebdae674c8efc84ebe8dc32716ec353220530)
>>> reproduce (this is a W=1 build):
>>>           wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>           chmod +x ~/bin/make.cross
>>>           # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ba64beb17493a4bfec563100c86a462a15926f24
>>>           git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>>           git fetch --no-tags linus master
>>>           git checkout ba64beb17493a4bfec563100c86a462a15926f24
>>>           # save the attached .config to linux build tree
>>>           mkdir build_dir
>>>           COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=riscv prepare
>>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>>>
>>> All errors (new ones prefixed by >>):
>>>
>>>>> Error: kernelrelease not valid - run 'make prepare' to update it
>>> --
>>>      clang --target=riscv64-linux-gnu -no-integrated-as --prefix=riscv64-linux-gnu- -Werror=unknown-warning-option: unknown assembler invoked
>>>      scripts/Kconfig.include:50: Sorry, this assembler is not supported.
>>>      make[3]: *** [scripts/kconfig/Makefile:63: syncconfig] Error 1
>>>      make[2]: *** [Makefile:617: syncconfig] Error 2
>>>      make[1]: *** [Makefile:726: include/config/auto.conf.cmd] Error 2
>>>      make[1]: Failed to remake makefile 'include/config/auto.conf.cmd'.
>>>      make[1]: Failed to remake makefile 'include/config/auto.conf'.
>>>>> Error: kernelrelease not valid - run 'make prepare' to update it
>>>      make[1]: Target 'prepare' not remade because of errors.
>>>      make: *** [Makefile:215: __sub-make] Error 2
>>>      make: Target 'prepare' not remade because of errors.
>>
>> Yes, I have noticed this one and a few other ('static') make targets that
>> should not need a .config file. I have a note to myself to ask about these,
>> so thanks for bringing it up.
> 
> 
> I think it is unrelated.
> 
> 
> 
> The 0-day bot has already shown the real reason
> of the error:
> 
>     clang --target=riscv64-linux-gnu -no-integrated-as
> --prefix=riscv64-linux-gnu- -Werror=unknown-warning-option: unknown
> assembler invoked
>     scripts/Kconfig.include:50: Sorry, this assembler is not supported.
> 
> 
> 
> 
> This happens when the proper toolchains are not found.
> 
> That is, make.cross passed CROSS_COMPILE=riscv64-linux-gnu-
> to the make command line, but riscv64-linux-gnu binutils
> are not installed on the system.
> 
> 
> 
> Without installing binutils-riscv64-linux-gnu,
> I can see a similar error log.

Hi,

Thanks for the detailed info. I get it.

-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cd21ef08-1c4a-d039-d861-cd1c5e6eba02%40infradead.org.
