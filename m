Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR5GWODAMGQEFYKR4PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0163AD0F4
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 19:09:28 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id w3-20020ac80ec30000b029024e8c2383c1sf7959771qti.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 10:09:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624036167; cv=pass;
        d=google.com; s=arc-20160816;
        b=m/kGaVaiyLhROFeRlRrf6tX4Kc6bq8Vbj5VFkWTOi4aZkWOcRS0/G5OqDMAbkUWvbj
         Lq0TeP86wnJRyDo/KHZ0QUzAugXqxrtim1Q8BuevgAWUHK5+N7WFlvhtdbo3+FFRL4tH
         GxLNy5LjuNeGbOWYwNhzXmpfQRsiiv2nwl8Iz18QVlhwfheM2P2IoiSHjSWJX5b4IwEp
         eJlCDqMSpsXaggdKWU2wtM8A1aZDjgggnhBDeVeDERXXFeOxImWyCf7ULLCSWGhIpxzI
         a+xgza1Gs8eAhMyU9b/FtvELOwGAQ++AhN4eGiNidYiT6qmS0JLEqIKtLj7KwWgzdsFe
         PXQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=EetvJJCGBaIpmw0cybQofJvXa/zmk9+Z6MJ2gf7Jla0=;
        b=PaOh5TP9hPhgO0m7cD7/E0s1DJo1KXOGVv+LV7Te4Bt2OaLHrX2nyJisSikcDxrOqk
         yy32RrAzO3V0DK5s80Aa6By4/XjCjQ5/rtLWJaaijkklJ+WixMOrOXjslkauZFKJkNno
         OLmnbfAUut/tGPoOk2CjNksUfdnt/PhVWuU5jDKvr5qVYWfqm+8TSk9NAK6axwHoW/yP
         klu2J+fR/nwS5xpudBvfefFzgMOLcdmaEdkVlq5MRs8Bo1xJkAbdbhXN58bccLJ3d/IF
         v/xr30i8IRep0/EYbYRXqqxJoNEYRH7sgt3A6AI4kZybyhm9czUbp9oqww8pPou9k/gq
         /vKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nL6qFK0A;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EetvJJCGBaIpmw0cybQofJvXa/zmk9+Z6MJ2gf7Jla0=;
        b=VXsuEUsAeoXj5fypv/is0MsH0bYiAGGruiOY+CBsamAKnJXTzKbMZp9gCqGcQ5UcXT
         qxF8gRQw8YCAaTMcwtoR5nSsCB6W3BnDYSJmGuTKW4IlUOhDZJqvzu7RIshcKvWBrL1O
         1AYJc8xKswpIE695KH48WlvoRMHwt3FBhVRbZc+ojsdrK615jgqhylz03yuQtcxN4JBW
         pmc7wSZBVvWbaV9UVL+Fm0ODBezp0byKKe8I6n4FeA1fv+jURVAWiTQL+3k4E81j8OYK
         JzvpEMm+pV6ZG+NZYOhXrvnD4hxh6Eqx/Xr+NMGAsNpspNc7fT99FIBK/I5q+yeyMjVt
         HdyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EetvJJCGBaIpmw0cybQofJvXa/zmk9+Z6MJ2gf7Jla0=;
        b=Qq5xGxvQvnXOK/11qyftSv8ryBwF3Xzu5tsl6PR2Hh3gfBtVLoer5S4yzzTFfEwhli
         EbaxAi0ai9mGKwp06qq/ys0tYlm3vHWuU9dtVUVNjOJ72Ov456pOdfuDPKRQMDtUAsRG
         uTYEP6nFZzcGBfn3U7FGQgti4JTUIGrUI5z5zsVbRwuiEqW+UQVWRops4QN8Ln2h4BDw
         l9/lrZH7uJFCj6FD54unYyzaDSYIlQlKuCOcIHXoQuVp8WKBzMbJl8uztYmn6cmn+Idp
         YamY2GL9DUAXCXy16Kuey1nI9Hrn3xPZYWwoCGPAJfLJqVGybU7sjCVeOcDK7AtpULG+
         qoBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZEugUVIgrL4zPr7iY+jeTFC2gMrkNJG7lBJQuQBcdgrww6cQi
	T3Wi1alAMzJ48kzjv9mErec=
X-Google-Smtp-Source: ABdhPJxupfhH+XKB1qmOTiQfOl5T12hy0zai66JfY5+dFWxOLWTJ/Km/Fb27WuGoShSuFF+0R3ylbA==
X-Received: by 2002:a25:7ec4:: with SMTP id z187mr14541205ybc.136.1624036167736;
        Fri, 18 Jun 2021 10:09:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:874d:: with SMTP id e13ls5499748ybn.0.gmail; Fri, 18 Jun
 2021 10:09:27 -0700 (PDT)
X-Received: by 2002:a25:6c8a:: with SMTP id h132mr14507257ybc.422.1624036167060;
        Fri, 18 Jun 2021 10:09:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624036167; cv=none;
        d=google.com; s=arc-20160816;
        b=0ElpiXYm+OYhlkspjLvr6bwY/N6kcPC4PmukoUpqcYzFFUc+YDIEmTFmyTo1M86ZKN
         8o9RAu+D2YOmbE5dZ23jEPxgYjQhNqomy0LbbiqH7kTVlijA/zVUJyGQy1upel5WzRu3
         YBGPfN2fzWvtaKxGNF52paVOAKltwNAdrT4Ps0NM+F2qFPHu6/KODH/XeQV2FbM3VsT2
         FzbTBR/LYGxK7jiyvWdvDuUY1i3qO9oGy4UuHwokP9nEumBhrtPfz7Xw0warBoJYrnIa
         Vy6cQXqhr8MjM/ww2LJoC28aHnQJ1sLJCZyJSNuDon2jH62zG8ScePhna+qt4Za2E7IM
         D57g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=eDhIN7SMS1GXjgUjseWd8+VlA5JHsRNGsmg0dpOiAIg=;
        b=RumJvzutxtlv1qovWAmoxP6CXL/8KcVa2SW3KxIzkP+bXNIHSKhOWaAsNw8XxIUX0z
         o7/+FLw1MQn6arqPtVMFJ+9B2qC4a5aikXofrGfMjiVacl377K/p+AgDgGHlqDffkPz0
         7Gyu0CqkTMoBBs8r2GYfPNRqD9qawwOdYX2qG9Cbj1QPzVlbL01S08xS3jHS2i4gEASx
         tKCbpwgesBNS9GLDhY7FkmXnYzxWLnApR2FVzbnj6waL9t8rUtJwfo5RmZzE4DfBlJ5e
         0HuG+SYFpAowvJKkK7rvUyzSRZutkciQRZSSVo7EH6wTonMZrKXE9Z2jqGgn28VQ47oR
         l2QQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nL6qFK0A;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e184si285154ybf.0.2021.06.18.10.09.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Jun 2021 10:09:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 91D47610C7;
	Fri, 18 Jun 2021 17:09:25 +0000 (UTC)
Subject: Re: [linux-next:master 9419/10007]
 drivers/mtd/nand/raw/arasan-nand-controller.c:1453:33: warning: shift count
 >= width of type
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Linux Memory Management List <linux-mm@kvack.org>
References: <202106161802.0TPrXeZY-lkp@intel.com>
 <20210618094651.2a767516@xps13>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <6c5d6e01-1530-acc2-9737-491bda391ddf@kernel.org>
Date: Fri, 18 Jun 2021 10:09:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210618094651.2a767516@xps13>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nL6qFK0A;       spf=pass
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

On 6/18/2021 12:46 AM, Miquel Raynal wrote:
> Hello,
> 
> kernel test robot <lkp@intel.com> wrote on Wed, 16 Jun 2021 18:33:22
> +0800:
> 
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>> head:   19ae1f2bd9c091059f80646604ccef8a1e614f57
>> commit: 236fd3e0427070413e7059dc3c52c3f9c89f7cc0 [9419/10007] Merge remote-tracking branch 'nand/nand/next'
>> config: riscv-randconfig-r013-20210615 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install riscv cross compiling tool for clang build
>>          # apt-get install binutils-riscv64-linux-gnu
>>          # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=236fd3e0427070413e7059dc3c52c3f9c89f7cc0
>>          git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>>          git fetch --no-tags linux-next master
>>          git checkout 236fd3e0427070413e7059dc3c52c3f9c89f7cc0
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>     In file included from drivers/mtd/nand/raw/arasan-nand-controller.c:17:
>>     In file included from include/linux/dma-mapping.h:10:
>>     In file included from include/linux/scatterlist.h:8:
>>     In file included from include/linux/mm.h:33:
>>     In file included from include/linux/pgtable.h:6:
>>     arch/riscv/include/asm/pgtable.h:521:9: error: implicit declaration of function 'pfn_pmd' [-Werror,-Wimplicit-function-declaration]
>>             return pfn_pmd(page_to_pfn(page), prot);
>>                    ^
>>     arch/riscv/include/asm/pgtable.h:521:9: note: did you mean 'pfn_pgd'?
>>     arch/riscv/include/asm/pgtable.h:222:21: note: 'pfn_pgd' declared here
>>     static inline pgd_t pfn_pgd(unsigned long pfn, pgprot_t prot)
>>                         ^
>>     arch/riscv/include/asm/pgtable.h:521:17: error: implicit declaration of function 'page_to_section' [-Werror,-Wimplicit-function-declaration]
>>             return pfn_pmd(page_to_pfn(page), prot);
>>                            ^
>>     include/asm-generic/memory_model.h:81:21: note: expanded from macro 'page_to_pfn'
>>     #define page_to_pfn __page_to_pfn
>>                         ^
>>     include/asm-generic/memory_model.h:64:14: note: expanded from macro '__page_to_pfn'
>>             int __sec = page_to_section(__pg);                      \
>>                         ^
>>     arch/riscv/include/asm/pgtable.h:521:17: note: did you mean '__nr_to_section'?
>>     include/asm-generic/memory_model.h:81:21: note: expanded from macro 'page_to_pfn'
>>     #define page_to_pfn __page_to_pfn
>>                         ^
>>     include/asm-generic/memory_model.h:64:14: note: expanded from macro '__page_to_pfn'
>>             int __sec = page_to_section(__pg);                      \
>>                         ^
>>     include/linux/mmzone.h:1314:35: note: '__nr_to_section' declared here
>>     static inline struct mem_section *__nr_to_section(unsigned long nr)
>>                                       ^
>>     In file included from drivers/mtd/nand/raw/arasan-nand-controller.c:17:
>>     In file included from include/linux/dma-mapping.h:10:
>>     In file included from include/linux/scatterlist.h:8:
>>     In file included from include/linux/mm.h:33:
>>     In file included from include/linux/pgtable.h:6:
>>     arch/riscv/include/asm/pgtable.h:521:9: error: returning 'int' from a function with incompatible result type 'pmd_t'
>>             return pfn_pmd(page_to_pfn(page), prot);
>>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     In file included from drivers/mtd/nand/raw/arasan-nand-controller.c:17:
>>     In file included from include/linux/dma-mapping.h:10:
>>     In file included from include/linux/scatterlist.h:8:
>>     include/linux/mm.h:1552:29: error: static declaration of 'page_to_section' follows non-static declaration
>>     static inline unsigned long page_to_section(const struct page *page)
>>                                 ^
>>     arch/riscv/include/asm/pgtable.h:521:17: note: previous implicit declaration is here
>>             return pfn_pmd(page_to_pfn(page), prot);
>>                            ^
>>     include/asm-generic/memory_model.h:81:21: note: expanded from macro 'page_to_pfn'
>>     #define page_to_pfn __page_to_pfn
>>                         ^
>>     include/asm-generic/memory_model.h:64:14: note: expanded from macro '__page_to_pfn'
>>             int __sec = page_to_section(__pg);                      \
>>                         ^
>>>> drivers/mtd/nand/raw/arasan-nand-controller.c:1453:33: warning: shift count >= width of type [-Wshift-count-overflow]
>>             ret = dma_set_mask(&pdev->dev, DMA_BIT_MASK(64));
>>                                            ^~~~~~~~~~~~~~~~
>>     include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
>>     #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
>>                                                          ^ ~~~
>>     1 warning and 4 errors generated.
> 
> I'm not sure to understand what the proper fix here. I am also unable
> to reproduce the warning with the above steps.
> 

I think this warning shows up because of the other errors that are 
present in the build log. I do not think there is anything for you to do 
about this warning.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6c5d6e01-1530-acc2-9737-491bda391ddf%40kernel.org.
