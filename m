Return-Path: <clang-built-linux+bncBC4MX6WW7QIBB346WGDAMGQEM6FVNFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF443AC534
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 09:46:56 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id t8-20020a05651c2048b029012eb794d268sf4510564ljo.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 00:46:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624002416; cv=pass;
        d=google.com; s=arc-20160816;
        b=yi7YMhHZgpjyJs5ChRIjnJ9DLsBU7qfNp6jsHUjTKSci07qPqsmpbJbMBTrLjW9Sti
         Pgy7ae8mHwwo4YhAhKF2sgDlziuafX0Bd98jrucXqJ5xvQcxuUyx5jheZcgpNC1si2BT
         yh6PJdtFOOv+vkL71aZTEr52f/Gb+9vh2FjshZuozgsJEJ0gGqzfRXUSQvh2xTvtpYh2
         QrttqzgqGS2gosK+b9m3n8ffRVoOP2QyTQ/2kKLrv2xKPFR5Ry7VuSBV3Kw9ZwAY9a8s
         AMGjS9lZy6ck4Yv0guVXCiW6mohiR7j8+t8c8E4wKL0jHvzlm/l46BNVxy6ZFhj5lRak
         wyLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:organization:references:in-reply-to:message-id:subject
         :cc:to:from:date:sender:dkim-signature;
        bh=aLVpGhywraMkAz0Qs7cQNuJTM5LTIGo3uNwWhl4oadE=;
        b=LQcP7i8KFvMiqC+wZ9z3UgMhtZWRPXOH47O2GtVvtMf80lj5vv7vYwzTEgbvlDFkl0
         mvBjd5mLbX0IF2z/fIi6zlERD4daS/VlfzZpmQNFuJYpWLMJYBQXgVa+x2SskvH9INOP
         90I7uLWloC8Q+Fh7RjVqfZFgq10bZeLogIPxeuP8nSmwTiUbY2m6ZPWLLbgmFA2l88Wk
         b4ZL7vj55LoiHaLur/xY1AEs5CWgSWRzMZ6EPHDwhGYOwTRbPdyosxZN1/wsg4MGrXUL
         BGNQK4h8kNARvcgZVdL88aiIR+AjlyMP75Y6wQB5wrRltGkD9Aw5dZ6xkF76NmQnyX5D
         DdCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.183.194 as permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aLVpGhywraMkAz0Qs7cQNuJTM5LTIGo3uNwWhl4oadE=;
        b=ZwIvZOXtA5qSluf7+N7tpPcC4+v3Ck8wk5M33Y2zFt1cNqWNmd5rrsb3fOQFkaE4Qf
         wb9qauhFrECQrClNFJw7KwobX+BFX5qZx5bownrqOcYb1NUIfUugAiLtyplmLM77buV+
         N9zB740Il3cMTEJQ9j0KuRvBXH55i2Z/KBIEtJRNEYJUiua3XGjvEh69XoR7tOokaBM9
         QHXDPPNrANJuOLDr/3rqqZk3MFsv8yHjkRPqrMVBOCIFvRFEPD93A8sNpNVS+xw1kf6f
         0nCnX5ZQyvx5TraBoQxDrxy3Rk/swBzo0Sb/tQiGZ8mtwDcbrPqyCArISz10tsuWYIvz
         03Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aLVpGhywraMkAz0Qs7cQNuJTM5LTIGo3uNwWhl4oadE=;
        b=ii2jZGlpLmiF39KghfjkBIq7NTtD1uziZPZEom0sBc9n+KQSVKovQapNihjJEqHgEa
         hHheXMcUf+YEqrjciO7ouDniKKoQ+uA2E0PoktZpdO9b3VM30IDN2q6ia/HgCFMGYq+O
         hSLDkJR5QBKZ/jy1402jSLo8qQ7RNUbl0E3zozNMKCEdczGxijl/YLgwMvm3XMbDFBkz
         /zOnJiNgQCm26TTXlwY2QaHeIp2lVwHstmH8xdEfjM+iawB2gUMdkQLfRPGwuD+bqcFl
         B1kKY7qelZELVK4GHWiD6ihx+bT36X6jxZa5+ieffBpy/x4GGQ0NfgRu517nrpMPr+h+
         Q7YQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Uuxs+moEwJR+FLQtuBCy86ITsnlWp8QVYWo25sV6ueJJMRCKE
	ngTu8xHRwyJx5tPs4ZuuzWg=
X-Google-Smtp-Source: ABdhPJyc8sIthaWuTlyeY5hNE1OJ8btVT3Z8Vt5qzPdLTueMmAKEnFJkwOCjj53X5EhVTkrpDgAIPg==
X-Received: by 2002:a2e:a48b:: with SMTP id h11mr8345937lji.111.1624002415953;
        Fri, 18 Jun 2021 00:46:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b54c:: with SMTP id a12ls2768424ljn.5.gmail; Fri, 18 Jun
 2021 00:46:54 -0700 (PDT)
X-Received: by 2002:a2e:90f:: with SMTP id 15mr8467579ljj.277.1624002414829;
        Fri, 18 Jun 2021 00:46:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624002414; cv=none;
        d=google.com; s=arc-20160816;
        b=ieKjm3nWOnO9lTs6hGPS3vlB4e7xwsKHsbxnz/eZWTPwSdq11zIE0/wshxeCO/VLpw
         5YtM64wUH9UZSAuLX05ZINZON61GMx/VTBNR7UmVWAOheCGfGdPG6qE9nyyaR26s1PJG
         kk0SxG/oG+umemcF/a59nnHqKH+Ki4r9uJl3PzszE7LKnnCnlICdH2q4G7gDKQFaJ9p/
         3QpyQA0XSdjautnvOXY7o25ZLB/O3iwndyP9C3UCrH8Zcuf365fbps+S8CLkb0XrNZfU
         R1JkKCumh0HC00IFBJS4RNLf2W9QxZsF/CgIm3fLbFPieEA63rqIp4hUM3H0nW+etZn/
         zU6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=vAlVN2GZlGiilcXUMb50Y50sWIP3wpTimzkYvtQ3scE=;
        b=d6+NFXk5Mz7khUt9IT1W0qRELzCzxH6mwQ5uRbbSEJN9Qhgf/RLOgAr45GeRG40/mc
         pHsti+/MKepujTQNOm7fubtT1jxkn7PhijWMIawWGbGuXSOJDVXk2sX1VBBImZ7gnhqf
         5+9hjjrNKYMhTmCj9dHnaKkvec54xFoWwhCGJ/x09TSuQpJAy0ceWfaUWUyCHyuGSexd
         D2p2cRwZoL2tYHgIdE0ay+PzgRz1u9FBTl/4mHYmGemOe29kSr5KXYRFaXBClN+FQkGL
         ZExiS76w2Rb2bVrfNP33xl1HKWe4y54nXSulpSQSc7L1jlP0PaliiY6B+i/jFGdLCivm
         P1lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.183.194 as permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net. [217.70.183.194])
        by gmr-mx.google.com with ESMTPS id i12si250201lfc.10.2021.06.18.00.46.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 18 Jun 2021 00:46:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.183.194 as permitted sender) client-ip=217.70.183.194;
Received: (Authenticated sender: miquel.raynal@bootlin.com)
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id A108740006;
	Fri, 18 Jun 2021 07:46:52 +0000 (UTC)
Date: Fri, 18 Jun 2021 09:46:51 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, Linux
 Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 9419/10007]
 drivers/mtd/nand/raw/arasan-nand-controller.c:1453:33: warning: shift count
 >= width of type
Message-ID: <20210618094651.2a767516@xps13>
In-Reply-To: <202106161802.0TPrXeZY-lkp@intel.com>
References: <202106161802.0TPrXeZY-lkp@intel.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: miquel.raynal@bootlin.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of miquel.raynal@bootlin.com designates 217.70.183.194 as
 permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
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

Hello,

kernel test robot <lkp@intel.com> wrote on Wed, 16 Jun 2021 18:33:22
+0800:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.g=
it master
> head:   19ae1f2bd9c091059f80646604ccef8a1e614f57
> commit: 236fd3e0427070413e7059dc3c52c3f9c89f7cc0 [9419/10007] Merge remot=
e-tracking branch 'nand/nand/next'
> config: riscv-randconfig-r013-20210615 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 6472=
0f57bea6a6bf033feef4a5751ab9c0c3b401)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next=
.git/commit/?id=3D236fd3e0427070413e7059dc3c52c3f9c89f7cc0
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/ke=
rnel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 236fd3e0427070413e7059dc3c52c3f9c89f7cc0
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Driscv=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
>    In file included from drivers/mtd/nand/raw/arasan-nand-controller.c:17=
:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:8:
>    In file included from include/linux/mm.h:33:
>    In file included from include/linux/pgtable.h:6:
>    arch/riscv/include/asm/pgtable.h:521:9: error: implicit declaration of=
 function 'pfn_pmd' [-Werror,-Wimplicit-function-declaration]
>            return pfn_pmd(page_to_pfn(page), prot);
>                   ^
>    arch/riscv/include/asm/pgtable.h:521:9: note: did you mean 'pfn_pgd'?
>    arch/riscv/include/asm/pgtable.h:222:21: note: 'pfn_pgd' declared here
>    static inline pgd_t pfn_pgd(unsigned long pfn, pgprot_t prot)
>                        ^
>    arch/riscv/include/asm/pgtable.h:521:17: error: implicit declaration o=
f function 'page_to_section' [-Werror,-Wimplicit-function-declaration]
>            return pfn_pmd(page_to_pfn(page), prot);
>                           ^
>    include/asm-generic/memory_model.h:81:21: note: expanded from macro 'p=
age_to_pfn'
>    #define page_to_pfn __page_to_pfn
>                        ^
>    include/asm-generic/memory_model.h:64:14: note: expanded from macro '_=
_page_to_pfn'
>            int __sec =3D page_to_section(__pg);                      \
>                        ^
>    arch/riscv/include/asm/pgtable.h:521:17: note: did you mean '__nr_to_s=
ection'?
>    include/asm-generic/memory_model.h:81:21: note: expanded from macro 'p=
age_to_pfn'
>    #define page_to_pfn __page_to_pfn
>                        ^
>    include/asm-generic/memory_model.h:64:14: note: expanded from macro '_=
_page_to_pfn'
>            int __sec =3D page_to_section(__pg);                      \
>                        ^
>    include/linux/mmzone.h:1314:35: note: '__nr_to_section' declared here
>    static inline struct mem_section *__nr_to_section(unsigned long nr)
>                                      ^
>    In file included from drivers/mtd/nand/raw/arasan-nand-controller.c:17=
:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:8:
>    In file included from include/linux/mm.h:33:
>    In file included from include/linux/pgtable.h:6:
>    arch/riscv/include/asm/pgtable.h:521:9: error: returning 'int' from a =
function with incompatible result type 'pmd_t'
>            return pfn_pmd(page_to_pfn(page), prot);
>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    In file included from drivers/mtd/nand/raw/arasan-nand-controller.c:17=
:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:8:
>    include/linux/mm.h:1552:29: error: static declaration of 'page_to_sect=
ion' follows non-static declaration
>    static inline unsigned long page_to_section(const struct page *page)
>                                ^
>    arch/riscv/include/asm/pgtable.h:521:17: note: previous implicit decla=
ration is here
>            return pfn_pmd(page_to_pfn(page), prot);
>                           ^
>    include/asm-generic/memory_model.h:81:21: note: expanded from macro 'p=
age_to_pfn'
>    #define page_to_pfn __page_to_pfn
>                        ^
>    include/asm-generic/memory_model.h:64:14: note: expanded from macro '_=
_page_to_pfn'
>            int __sec =3D page_to_section(__pg);                      \
>                        ^
> >> drivers/mtd/nand/raw/arasan-nand-controller.c:1453:33: warning: shift =
count >=3D width of type [-Wshift-count-overflow] =20
>            ret =3D dma_set_mask(&pdev->dev, DMA_BIT_MASK(64));
>                                           ^~~~~~~~~~~~~~~~
>    include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_=
MASK'
>    #define DMA_BIT_MASK(n) (((n) =3D=3D 64) ? ~0ULL : ((1ULL<<(n))-1))
>                                                         ^ ~~~
>    1 warning and 4 errors generated.

I'm not sure to understand what the proper fix here. I am also unable
to reproduce the warning with the above steps.

Thanks,
Miqu=C3=A8l

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210618094651.2a767516%40xps13.
