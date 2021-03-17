Return-Path: <clang-built-linux+bncBCRKFI7J2AJRBU6KYWBAMGQE6QG2MAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B7333E6A3
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Mar 2021 03:11:33 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id 20sf3566749plg.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 19:11:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615947092; cv=pass;
        d=google.com; s=arc-20160816;
        b=wWQ3edX6hKDAoEVKMX+sYTGDqSlqOKDlyqKShGMhxdK9YPFuTprfpNjykea4U7IE6O
         0hm9N0SCWWTUalxGO8rkeOHm3TY5e585DFiqdk2NyAAxNHhs98PdEg3bvSg59SNCVCnN
         mBSCDK0H5DqdbCDUg7X7ny6VGks+5lJfQ34vy7TJ1PGjtCE3Nvk2yqnLPGSA9qScO0xu
         CzVWYogmYGSGZ0IsLD32cYEGm4Du3xci70kXMvCm5IWR/f0/AbG3eyTYJj5/9UEbT3qx
         azwzqQYinwMeb8wSUY3Hi7PchKug/lpO3zKVxO2uuL9AoYN3oIOZfzj2eIdBy5SXozVX
         +m0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=fEzynpgRnpYIE/Wzk1o5Lkm1qB9nK5OjOjt/1hH/0WI=;
        b=HFR9JZkqEtWHwVxqAeiiwE2BHi03Kooh8n45WLHDPMptD+SMnc+PcbgDekfY8g8t4g
         qmnXvcmLkebkN7bV6DJ6tmsOl/+VreYn9gzvVeXbUF1ff20MxYV1qipNfcMTr0fI+ZWn
         6LKq8QOonYg5L1Snn4SVlpUsziVd45NsZyFxF7izg5NuaGtHZaaFWSPbiQVWNlZBzKxJ
         Zg+5tet9V09ccQ2lUiwKVzo1fgESIrKursL3pC60etSJtyvfjpN+bUVhourViq80j41b
         F6scpADqtpTioTcWXAX6YQakm5zyowpEHVY/8yA4DWfJRRz/vRqTaL4x2gQUc9fEC14n
         DUGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wangkefeng.wang@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=wangkefeng.wang@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fEzynpgRnpYIE/Wzk1o5Lkm1qB9nK5OjOjt/1hH/0WI=;
        b=J1bwxblL3DfdIjkxMBwOgr58xPQOvvjme9Tc9ckhREJdfwUXmbsso2ZV6jG6DTs+4s
         IJZxoYieCfeWfkl9VJnqrkVmvEtGuYBjCM7qNkriF3GyCmy3ebWnYoWMHMysr3k+ADMJ
         mXkqyPIf20lUgSJdUMmO1vMix2hhQoNbtN1KS5KBcvgQIFtHpD0a1RaZ2QP74tbI09hD
         5AjyzYX4L51nQBo7AvzT/pAxPS6q0pPF2p3XGsQxXsxg15kwXdVcgsdrqz1vagv4rWYP
         zEA7WWj0ZARPtBIALemyN32J4VIp9tfYbOk3ZY06VXuIRpw+SCF0iCsDXo7iPzWvfTT3
         sELw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fEzynpgRnpYIE/Wzk1o5Lkm1qB9nK5OjOjt/1hH/0WI=;
        b=OuVU+I2X7ZrHCeA4/SeYRhIwRtlWVPu6X0ebUQdLllW7q6ouXkXEma3ROK7LDMkm+z
         iE0XBRSshuVxR+OEOs7D/+eOiq+IOAFlNdWz4yQRPBgjSg7bLDEqCb33FKMih/pHZeo7
         vRKm7vhLjjm2i4sIYeokO4gmKO6ebddkCQrxQw1CyX7p7zxrhNLYH/4Vs+Ep9na9gmCb
         L7JAesU/PPF5ATdm5HC4/FzFIWW3wuEo3qdPy/Rdd0YVGefA+hR5M9magNz4RcGg+R2+
         PfSqcXOmr4GN8gIjDidLHfKmNi4pV7DRsbHuJGu0/vfjac5Uop/KaetEh3fhH6e5W2z6
         h13w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NJxejgehiLMjxImIeMI2g+X4OQ11w4oKyLY/k0bp1sE0lfC3F
	4EHgNXjRy1ivcKrS5E7h9k0=
X-Google-Smtp-Source: ABdhPJyUikmuUNrx7BHZ0MydjJyVFAPHcRcMmILSWWALlPDYnTwhnCV7It9Lut00GwZ6IB9gOHKLWA==
X-Received: by 2002:a17:902:a58a:b029:e4:6db1:656 with SMTP id az10-20020a170902a58ab02900e46db10656mr2141474plb.84.1615947091982;
        Tue, 16 Mar 2021 19:11:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ef0b:: with SMTP id u11ls8192303pgh.4.gmail; Tue, 16 Mar
 2021 19:11:31 -0700 (PDT)
X-Received: by 2002:a63:2213:: with SMTP id i19mr615944pgi.242.1615947091454;
        Tue, 16 Mar 2021 19:11:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615947091; cv=none;
        d=google.com; s=arc-20160816;
        b=glWgrHLYN9J1xPx0RBl7GQqa/hIxMgD4gvwrB54CWfyL+WEdZSHS/rLQT5xjIwrhEC
         1Rwondm/g+40SgWDG0esuJhy1vlb3i08I1s85PSziqniuSwdmk0sF9ln+rl2xKiDAECr
         S4A05n0ZPTxRZf4gW47blvJA1zXXSYN9YbVWot9ujCMOYgfPC/7Ty7fv5Cu+jCb4x9Ym
         mpeuFeU+BMcxZlsZxel+jdxRMvvKwSBmjKtQ2TDcxrPZDoIGK+HgdKcNhrT29s2y+WsP
         3yfxqkQL5HxJ0GrqW/0NyfxAlqbhoMLBpsSGn3FGmbIFXdjigUCSGANCG4pTDiOlpQwg
         V4Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=41NkrIMH8PjY3pAH1ykcGqo7RjzYg+CP39kjwIN/ng4=;
        b=u63r2XX0GCd0K2hYtdYhYEtRxLf8C6YgVzN5rKioJbDQ6ME/uz6sGp5v0Q7DRGs4Jd
         qTfWp1yB450ptir4yOCBtXlStsA4ys/pvIofLZBBQ0MxweJ8d8rPyKklA6mPi1AagLH6
         9xWY9xKI1EmygN2ZaOyi4wCjquYHIzQwyp9i23cWOkp7lzCPdEmYb7A5IHAMsx+laVBW
         0iEwN/f1PPWS2VCH/Flmcb5VdllMo2ORnJpj6ukGORz4iVjTInZHVuaPNzsZVWSAW3/g
         Pi+oTthcegsRjfDZVKeM+UTP6JX9BV26qNPm/bSpcId4lWCDcKK1fZ7W5QrLJ9N8FalT
         8A8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wangkefeng.wang@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=wangkefeng.wang@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id h92si71524pjd.2.2021.03.16.19.11.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Mar 2021 19:11:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of wangkefeng.wang@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4F0YWN0WkXzrXbG;
	Wed, 17 Mar 2021 10:09:36 +0800 (CST)
Received: from [10.174.177.244] (10.174.177.244) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.498.0; Wed, 17 Mar 2021 10:11:23 +0800
Subject: Re: [PATCH] mm: Move mem_init_print_info() into mm_init()
To: kernel test robot <lkp@intel.com>, <linux-kernel@vger.kernel.org>,
	"Andrew Morton" <akpm@linux-foundation.org>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>, "Linux
 Memory Management List" <linux-mm@kvack.org>, Russell King
	<linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, "Richard
 Henderson" <rth@twiddle.net>, Guo Ren <guoren@kernel.org>, Yoshinori Sato
	<ysato@users.sourceforge.jp>, Huacai Chen <chenhuacai@kernel.org>, Jonas Bonn
	<jonas@southpole.se>
References: <20210316142637.92193-1-wangkefeng.wang@huawei.com>
 <202103170114.Lj9LzUvl-lkp@intel.com>
From: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <8642c3ec-dd71-d947-9512-2d5e545204d0@huawei.com>
Date: Wed, 17 Mar 2021 10:11:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <202103170114.Lj9LzUvl-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.174.177.244]
X-CFilter-Loop: Reflected
X-Original-Sender: wangkefeng.wang@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wangkefeng.wang@huawei.com designates 45.249.212.191
 as permitted sender) smtp.mailfrom=wangkefeng.wang@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
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

please use v2, sorry for the wrong version.

On 2021/3/17 2:01, kernel test robot wrote:
> Hi Kefeng,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on tip/x86/mm]
> [also build test ERROR on linus/master v5.12-rc3 next-20210316]
> [cannot apply to hnaz-linux-mm/master sparc/master sparc-next/master]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Kefeng-Wang/mm-Move-mem_init_print_info-into-mm_init/20210316-222501
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git a500fc918f7b8dc3dff2e6c74f3e73e856c18248
> config: riscv-randconfig-r031-20210316 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 50c7504a93fdb90c26870db8c8ea7add895c7725)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install riscv cross compiling tool for clang build
>          # apt-get install binutils-riscv64-linux-gnu
>          # https://github.com/0day-ci/linux/commit/0b2c07917fb7f9f87f0e2ecac3a3985155778856
>          git remote add linux-review https://github.com/0day-ci/linux
>          git fetch --no-tags linux-review Kefeng-Wang/mm-Move-mem_init_print_info-into-mm_init/20210316-222501
>          git checkout 0b2c07917fb7f9f87f0e2ecac3a3985155778856
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>     mm/page_alloc.c:3600:15: warning: no previous prototype for function 'should_fail_alloc_page' [-Wmissing-prototypes]
>     noinline bool should_fail_alloc_page(gfp_t gfp_mask, unsigned int order)
>                   ^
>     mm/page_alloc.c:3600:10: note: declare 'static' if the function is not intended to be used outside of this translation unit
>     noinline bool should_fail_alloc_page(gfp_t gfp_mask, unsigned int order)
>              ^
>              static
>>> mm/page_alloc.c:7744:3: error: use of undeclared identifier 'str'
>                     str ? ", " : "", str ? str : "");
>                     ^
>     mm/page_alloc.c:7744:20: error: use of undeclared identifier 'str'
>                     str ? ", " : "", str ? str : "");
>                                      ^
>     mm/page_alloc.c:7744:26: error: use of undeclared identifier 'str'
>                     str ? ", " : "", str ? str : "");
>                                            ^
>     1 warning and 3 errors generated.
>
>
> vim +/str +7744 mm/page_alloc.c
>
> 7ee3d4e8cd5605 Jiang Liu   2013-07-03  7729
> 756a025f000919 Joe Perches 2016-03-17  7730  	pr_info("Memory: %luK/%luK available (%luK kernel code, %luK rwdata, %luK rodata, %luK init, %luK bss, %luK reserved, %luK cma-reserved"
> 7ee3d4e8cd5605 Jiang Liu   2013-07-03  7731  #ifdef	CONFIG_HIGHMEM
> 7ee3d4e8cd5605 Jiang Liu   2013-07-03  7732  		", %luK highmem"
> 7ee3d4e8cd5605 Jiang Liu   2013-07-03  7733  #endif
> 7ee3d4e8cd5605 Jiang Liu   2013-07-03  7734  		"%s%s)\n",
> 756a025f000919 Joe Perches 2016-03-17  7735  		nr_free_pages() << (PAGE_SHIFT - 10),
> 756a025f000919 Joe Perches 2016-03-17  7736  		physpages << (PAGE_SHIFT - 10),
> 7ee3d4e8cd5605 Jiang Liu   2013-07-03  7737  		codesize >> 10, datasize >> 10, rosize >> 10,
> 7ee3d4e8cd5605 Jiang Liu   2013-07-03  7738  		(init_data_size + init_code_size) >> 10, bss_size >> 10,
> ca79b0c211af63 Arun KS     2018-12-28  7739  		(physpages - totalram_pages() - totalcma_pages) << (PAGE_SHIFT - 10),
> e48322abb061d7 Pintu Kumar 2014-12-18  7740  		totalcma_pages << (PAGE_SHIFT - 10),
> 7ee3d4e8cd5605 Jiang Liu   2013-07-03  7741  #ifdef	CONFIG_HIGHMEM
> ca79b0c211af63 Arun KS     2018-12-28  7742  		totalhigh_pages() << (PAGE_SHIFT - 10),
> 7ee3d4e8cd5605 Jiang Liu   2013-07-03  7743  #endif
> 7ee3d4e8cd5605 Jiang Liu   2013-07-03 @7744  		str ? ", " : "", str ? str : "");
> 7ee3d4e8cd5605 Jiang Liu   2013-07-03  7745  }
> 7ee3d4e8cd5605 Jiang Liu   2013-07-03  7746
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8642c3ec-dd71-d947-9512-2d5e545204d0%40huawei.com.
