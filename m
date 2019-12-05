Return-Path: <clang-built-linux+bncBDYNJBOFRECBB2GBUXXQKGQE4L7BDOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D08A1147DE
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Dec 2019 20:56:25 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id y18sf1279294ljj.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Dec 2019 11:56:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575575784; cv=pass;
        d=google.com; s=arc-20160816;
        b=AHfxPSyL9opcrWIVN9kRYcL/sqN1zdLvVZSlfuyLAwD39aCydsBuAhzimFspAl0FjV
         2ZBGcGm8yi1yjgB+zQiQMR+KR46RJfnsSpqNucC+WCrvixDpDpAgPFbxKLV1oViOYAp/
         TBpgHR8G42pUMMbG6CuKEye+vkz817N/1UaHQ/pxgBbe/mjFUGc7TK1leJNH1wwe+HH6
         Up1Lz6cKsjJCbNgWeG/1kyMcpseoSev3gHvtiCDWorrH8wZyoWa4kwRQArmaV3lg8nqG
         dgnWcLfAqlcYiC31SG9o9BgleT4quQL6RX5kEoyPOEmKHlpjo8HM1mw7WntMiwvN89a2
         /Qdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=utzpex9J1RoDj4KjJ7i25+6pHBHyiJUlJ1GquR37IPI=;
        b=XXkp/lTd4vtyxd+wMhRRmUlYSJmUeo1gr09SNq8ozCqivTQfIgnvsCrDC8OaC45c8B
         dVbHg+fOk+IHsjb7fiQp4+eKZ+ncwuIumbL2sV6nlDfInOSnuWnCyIjWOHXpaiv7i/DO
         vnzl+jyaX/83YIusMznxPTeCedi8q74W7fflzT6V/XEI/zY6N8MUbVpVrHn/azTfcDXz
         gnO3G9ad2JWwjYCTDvFdIco8aP3o9LFjt38m/29A+S9RZU4BH7+RZzzzQiUdOkVAa2yj
         nUD2ra78oDpgRMxfYlBXfv+Nk30Lzx7gDcSdV6df+hhSKZxRI0vExA8ARBufWG91ejCy
         zX8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=pSf+YekZ;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=utzpex9J1RoDj4KjJ7i25+6pHBHyiJUlJ1GquR37IPI=;
        b=AIBnzST086pfCQ4vzi8vxpsv7iT/xFmjuXlwGhC2DVJjADBXCeVnuUk4yVptXK6i1a
         qi94goC1F6LgDKR4E715pVGuvkmRe3ClE9EdWJefKtCF9XCLm0Bu5MexNqlazCMZvVnP
         9CUsvuiQiGtmLMN+BXNc2UhItpdAsUN0KZHZ8MoQJ/hlZ7cj4gEZ/Mc2JnLZ9eQN8rEc
         mZx43nFLN29PPXLfglqqBlElngshvpvjh1FHNorvnoBXqTg7RW5GJqbFvUw9uRthCXGI
         fgyO6U38LvhPDqVadU2sq/TBhA+meJGs/1GmCSGgSagrAGXfno+5tQyRQNx5kv/JH8PO
         3JcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=utzpex9J1RoDj4KjJ7i25+6pHBHyiJUlJ1GquR37IPI=;
        b=e1Sq8a/Yt4CQlZ5dfVeIXo2x9VpzGF05+BovyqLZjY+Khs1A7vSDjgUP0llo9dNxWf
         hC1XcGoVo4QPMhmpN4yGvNIIxt/ujW8Os4Sf3MF8nmdq3oyOPanO55daqZ3WIOu2GCc6
         NXs4ZNlkyZMxIkDXXsAYv4uGxrzZwK2srHSZWJDN9s9R6NfFJ7Zxlc9ryWXNNq02+131
         DHQ+DU7Garu7s1xQs3gy+h6lBwXnyYJzW48yaj7UNjCUc7DxJtDdPFS/I6xqEDRZZowX
         mLXoAs9+iUclDaxe9Ii33mWRISDjqJkg3UklkK3lnmrwZT/HnnGLz7CjEao2UAl0i56U
         w98Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVFme6QiRJJO4FwbdVGHuMnDaX//aZAB30s1rtrS7tWFABupVuj
	HpUnSpaBf+0BO7liqX3dJjk=
X-Google-Smtp-Source: APXvYqztgOrwJVL64mD4hsCNH0qnVYmgpcZGurqsUaoXhMkH07rytE3ymBa4/lRN+YMGtTNSJwd9Ow==
X-Received: by 2002:a2e:3312:: with SMTP id d18mr6706924ljc.222.1575575784620;
        Thu, 05 Dec 2019 11:56:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9756:: with SMTP id f22ls657094ljj.0.gmail; Thu, 05 Dec
 2019 11:56:24 -0800 (PST)
X-Received: by 2002:a2e:99d0:: with SMTP id l16mr6713288ljj.1.1575575783990;
        Thu, 05 Dec 2019 11:56:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575575783; cv=none;
        d=google.com; s=arc-20160816;
        b=Agb9+I1/WCJHyuPGzycqFxbM3zf2QMAU1gCCfvcXhT0V/hIr9AhX02xMT44DJ3Trpg
         hshlsTWgXYiickhCHeXJ2e6iOAg97ogEZXaJ6CJDI0BWgM9kcTUCjc8A9xTbkv525ol7
         2NVNSGvbmGwScaIxNI36aaRmGzt+idazKJnr4aLbipuI5jvZ+VSwx95963PRN3ptkfEP
         Oy5nHdxV6DUXZL5qpQKhFZpmyWKcfXxXjLPqTrlqGfonNJy522HHX4z5ru05DvFuR7nN
         02mR8j2/4NxPxqz4VKLeKYee6jfTq/w5QQxIRYC3+rLl0qZsqhOqdrBW1FKAAuJx5Q+N
         0HlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=56BtY7V0nMuLLfGI73vQ+8qOZ3+h8+glVLesVGMpNlA=;
        b=s7OnuVQRgNJeVG3tsnG06SY7BaokXgTz79ztJKc7vilKn4A09o1Sxd2sOgyiyzrju1
         8Ou78Zt1g4ivyVdOY5dQBfy1qGuqiJ3EuPUrufF/CeKDxppbRAG1Q3BI5EmOP7wdlSB1
         ghb8+tDRGUgzWY466bBhus4RzD23ChUEyHAYYpVLiFASUUDtZE+16HbLodpUB+2S+OaL
         Pvl3BEt97MRUNBI6pSeWmSXTnLYP1+hxDafUz3kmwpZXt+5Ls9nC/sr7NgXAKjV2ANGR
         WyFKA7J5eaMzrd5KQ21ao91F4IZHu/vDCadK0eOtFtnvBbPO9YO0VXO+I4YAjavpFlyq
         Dz3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=pSf+YekZ;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x5si354904ljh.5.2019.12.05.11.56.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2019 11:56:23 -0800 (PST)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id d16so5060440wre.10
        for <clang-built-linux@googlegroups.com>; Thu, 05 Dec 2019 11:56:23 -0800 (PST)
X-Received: by 2002:a5d:46c1:: with SMTP id g1mr11702215wrs.200.1575575783196;
 Thu, 05 Dec 2019 11:56:23 -0800 (PST)
MIME-Version: 1.0
References: <201912060234.8XYvgYSn%lkp@intel.com> <CAKwvOdkQqipt82KmnmLO4Ns=5VdsCq2Ma_M=OA6c2E8oZTJBtw@mail.gmail.com>
 <20191205195059.GC32742@smile.fi.intel.com>
In-Reply-To: <20191205195059.GC32742@smile.fi.intel.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 5 Dec 2019 19:56:19 +0000
Message-ID: <CAKv+Gu9aLY4TVbL72zzxpeFmu=hO-ncqkAVcOuyedgHQ4FiL_A@mail.gmail.com>
Subject: Re: [efi:urgent 6/6] drivers/firmware/efi/earlycon.c:33:10: warning:
 incompatible pointer to integer conversion returning 'void *' from a function
 with result type 'int'
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Ard Biesheuvel <ardb@kernel.org>, kbuild@lists.01.org, 
	kbuild test robot <lkp@intel.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild-all@lists.01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=pSf+YekZ;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Thu, 5 Dec 2019 at 19:51, Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Thu, Dec 05, 2019 at 11:12:34AM -0800, Nick Desaulniers wrote:
> > + Andy, looks legit. should be `return 0`.
>
> Thanks, Ard promised to fix this.
> Dunno what happen here.
>

Yeah, this is outdated already, and fixed in the latest version.


> > On Thu, Dec 5, 2019 at 10:39 AM kbuild test robot <lkp@intel.com> wrote:
> > >
> > > CC: kbuild-all@lists.01.org
> > > CC: linux-efi@vger.kernel.org
> > > TO: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > > CC: Ard Biesheuvel <ardb@kernel.org>
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git urgent
> > > head:   93afe6258b5ae6bd32981f5249f7b0c1a32cde01
> > > commit: 93afe6258b5ae6bd32981f5249f7b0c1a32cde01 [6/6] efi/earlycon: Remap entire framebuffer after page initialization
> > > config: arm64-defconfig (attached as .config)
> > > compiler: clang version 10.0.0 (git://gitmirror/llvm_project d6cbc9528d46d30416a6f9cd6c8570b704a0bd33)
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         git checkout 93afe6258b5ae6bd32981f5249f7b0c1a32cde01
> > >         # save the attached .config to linux build tree
> > >         make.cross ARCH=arm64
> > >
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> drivers/firmware/efi/earlycon.c:33:10: warning: incompatible pointer to integer conversion returning 'void *' from a function with result type 'int' [-Wint-conversion]
> > >                    return NULL;
> > >                           ^~~~
> > >    include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
> > >    #define NULL ((void *)0)
> > >                 ^~~~~~~~~~~
> > >    1 warning generated.
> > >
> > > vim +33 drivers/firmware/efi/earlycon.c
> > >
> > >     22
> > >     23  /*
> > >     24   * efi earlycon needs to use early_memremap() to map the framebuffer.
> > >     25   * But early_memremap() is not usable for 'earlycon=efifb keep_bootcon',
> > >     26   * memremap() should be used instead. memremap() will be available after
> > >     27   * paging_init() which is earlier than initcall callbacks. Thus adding this
> > >     28   * early initcall function early_efi_map_fb() to map the whole efi framebuffer.
> > >     29   */
> > >     30  static int __init early_efi_map_fb(void)
> > >     31  {
> > >     32          if (!fb_base || !fb_size)
> > >   > 33                  return NULL;
> > >     34
> > >     35          if (pgprot_val(fb_prot) == pgprot_val(PAGE_KERNEL))
> > >     36                  efi_fb = memremap(fb_base, fb_size, MEMREMAP_WB);
> > >     37          else
> > >     38                  efi_fb = memremap(fb_base, fb_size, MEMREMAP_WC);
> > >     39
> > >     40          return efi_fb ? 0 : -ENOMEM;
> > >     41  }
> > >     42  early_initcall(early_efi_map_fb);
> > >     43
> > >
> > > ---
> > > 0-DAY kernel test infrastructure                 Open Source Technology Center
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu9aLY4TVbL72zzxpeFmu%3DhO-ncqkAVcOuyedgHQ4FiL_A%40mail.gmail.com.
