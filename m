Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4FP6DXAKGQECDV6NEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B5E109340
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 19:05:38 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id q125sf10125749qka.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 10:05:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574705137; cv=pass;
        d=google.com; s=arc-20160816;
        b=lX8K6jI0mXiYvGFkiI136E5Yi7XSN0RThM8jyEyFYxzOZmpLTEOxH2jUQeBRhHh74B
         Qi+OVMe9w++X9DVNvd3yASho+EXnp/z5Z+Z48xxbCQlR7F7NGwjvFLPmEmPlVhbWUA/U
         ydkOrBsdzmh/sRLzkcWN7l1mDT/2rZ+L4V5tHEyHQvQX0ntgRbJCo/Mi9ileIP5tdo9a
         pjtSZMevodcj8JahrBcnyK4VDlhs3I9HueYyeww1sc/K78YiXIJau1TUX39k2vyOxDzQ
         fvb5dlUX7dTn+6sDVqdsRsHx9LLjjhXbJi65r8KL035eP+amwFxHOsK1a+wpza5/+pib
         Oetg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=8npTV4X5AWOh4635DLXdfRi57H4nUZFJBEjzyMGf7q8=;
        b=K5DJzQM4lkMMd9+ap9/y9WrvATTkGeeKZbKRB/9F3efAmmJvf1U8lYsDW54xp/EMnt
         GfDEfnFYhbWDL31RxQZf40CipeqfHfLfuOs7/cWueonLxoJb85MOyNV71TQ7Ia/fnyVj
         mWTvWr30k0JJaRVtUs5XiXBQA8tbIG0CCed2V5lCDrUqwxyYiOHR91kF75ropU9cdec3
         XBBWD+dDJL3vv8ebJ6PYbJT6834/KXtf+0cUDuDMDMO+vbR63r/+urqbndkCz7UR80nM
         y4EmntoBOLiQa/22pHO/9PvnEHkJ4JGm6Ph2pkf4nMikNZIJMq3x8ssaqJhvocploynX
         Rd4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YvpQNPY2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8npTV4X5AWOh4635DLXdfRi57H4nUZFJBEjzyMGf7q8=;
        b=EfLSGJtgZ7Ok62GmVh8dGY8Q3yJcBNaaDj6LvTZuFPw4fG5C96bTH6CNscQekdI31C
         rYMJUj7EN1Q8BFD3CSeCl2yZRl8Ldje7gME1DGBgKtNa/xAwvpzfgZanla5vFGimhZh6
         g40CluiLwoXHPFq8Js7z5aZyBhM+CLOOqNt38tY/B7Ov720Lmie8cxHfQcgZ5EMGjhm6
         b43s8i2SSvKeLzynmWDnK12tKvFyuRY9aPF1oAFQK6Ry89GfdGDWKvsAq/kfR15ASFNF
         eETDLVW4YIpBOt6wjBn0fja3o/p6wvCmpLDJOjDCsmWo+Tbp3fPogjwWzvawafRbQ0Dl
         urkQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8npTV4X5AWOh4635DLXdfRi57H4nUZFJBEjzyMGf7q8=;
        b=UhJquxhxKVMYmDDzd3HZFYixtb4C5g2tSZd4FL4GWJQ+mMt6xi73qH37G77Tmvu7VC
         TlI4PZN5p/6ynrXGwDMrbiAFiUQIevJiEx6rT9Tm2gGbip0ClOxUkmjHJktNmisAEbgR
         ZOFSTHxn/IQ/4IIjHTi0OHTCL6DDGW6wGpEXNZsnfYE5PvzI4WA46dagK2edZCzBo1ag
         tSjpnRU7KyrpqhratSJNCLsxUcanMeNifFvjyKDkgU4gGYSaN3uKoytkHjVYEHY43qNx
         OpcPRJsoEjqLoACvys1TCoVRkTXjajQAKRVwQpIfIVe+Kr+RFhFskHYUPYfsQtfrDt7n
         BxpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8npTV4X5AWOh4635DLXdfRi57H4nUZFJBEjzyMGf7q8=;
        b=aGZWpk+kZuIRkf8VS8Hggwx0fhmbLbOJzqMiDc0CglrF+f0ULuvGYLf8r/1q+TCOi/
         N/E7p3Srriizjpjo42SRmMZhxACjcZjStpmBblr+jxsgReL5ewuYL8acQXKpd0OEAcJJ
         2oFUvs+JoPlsFLFYoDyDdpjdkAlPSckEQiy982t9xyo9Eb0JmRee55351kZ0Kg2lIONi
         Ajmc9eMKOMPCq9U/8pjIyJS8H6bExD/5+i0S7JYZ1uexQ06/g3dEgOE+nHAhdYdZUsue
         djznLbPqMqBF3mrD6B0PHQRaPy//dBF+ixLghMkxzpVQwhTHjQ9154ji0Mwuxw7eMcZy
         ayTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUiTcgtzBGEDzDzgT6YkLRBGu4/1JPLeVqgT2yKFiYTmr5/+6qE
	NGkkNSYzs0Wu/O8AGX2TP2o=
X-Google-Smtp-Source: APXvYqzcgik9DAR9SkXCFRzoI4W/j7SC9LAPCvJgMtuAG/iYktC8zPLYotaFIx15IXjzDlkJjHft4g==
X-Received: by 2002:ae9:e417:: with SMTP id q23mr10354313qkc.406.1574705136713;
        Mon, 25 Nov 2019 10:05:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:bfc3:: with SMTP id p186ls2623983qkf.13.gmail; Mon, 25
 Nov 2019 10:05:36 -0800 (PST)
X-Received: by 2002:a37:4884:: with SMTP id v126mr27895049qka.45.1574705136333;
        Mon, 25 Nov 2019 10:05:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574705136; cv=none;
        d=google.com; s=arc-20160816;
        b=lcM5A5GJPSm84lZEaAlFsW6AcuNtw48IKEhaKYdY5nWoQOCfjD1v3rTU9aBNYtynWc
         enT6i9JBVNIfkqaFPrCyqlXXgvjfAtLZkTcYF5PXqHMkoz63pcA5aFs3r+mJDob0brNn
         xHxXk5WPWmkr9o2Pu5i5TrF88wtqRWoEz13xkFzaae9gWikLOjlJ7gHGnG6cVVgaO8D0
         JNm6Y1xMmEum1SDn6ECKhE1gzqINTOpsJCikHpGKevQqDaadWSvs1LHtm9zN+3f6q+67
         aQpRmZaW8daRFde7qbehI2bn+HbKC+CGA2OCOODxXUDx6AOZPz/EbmcF790eHEuSrzuT
         mMrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=YBdhcJv7EPWzC0U3Son1T228OG6Uoh2G8SPlgWg+9Fg=;
        b=gHJeNPLka1InLZKpHmeD14WWpaRg9YbQNsOSEih4TRGW0jOqFcJfCGtV//UORxg2oC
         TUaOGfB404KTyNZXyE8UEbFY2ptFtiMpRcB39cz5wRJK3OoH0tPi8tL+J6AkmI4/e+s4
         VwlPso3GTpOh+onnMGQcXoNY0D5O6WsbBTNjsr7x0xUyZ7vVp3FxyI9q5WCPO9htH+Hr
         IYJan+yu/VNNHauA+cmR2ESwMY5rC+kUzM+Thr1WXA5H+XHxkUVHZdrkzqThOFaafYkK
         CpIGIpzZrvIzLpD5rutfbIOpP1rdId+p1wUOsP7+RLOXVjE/mVWiSYN3J+nNzOoGyvPT
         OyKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YvpQNPY2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id j40si344082qtj.4.2019.11.25.10.05.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2019 10:05:36 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id 94so13431563oty.8
        for <clang-built-linux@googlegroups.com>; Mon, 25 Nov 2019 10:05:36 -0800 (PST)
X-Received: by 2002:a9d:6294:: with SMTP id x20mr19946476otk.31.1574705135450;
        Mon, 25 Nov 2019 10:05:35 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::7])
        by smtp.gmail.com with ESMTPSA id 4sm2635116otc.77.2019.11.25.10.05.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Nov 2019 10:05:34 -0800 (PST)
Date: Mon, 25 Nov 2019 11:05:33 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] PCI/IOV: Fix memory leak in pci_iov_add_virtfn()
Message-ID: <20191125180533.GA39319@ubuntu-x2-xlarge-x86>
References: <201911250733.0d9MdX9e%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201911250733.0d9MdX9e%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YvpQNPY2;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Nov 25, 2019 at 07:20:46AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191122193138.19278-1-navid.emamdoost@gmail.com>
> References: <20191122193138.19278-1-navid.emamdoost@gmail.com>
> TO: Navid Emamdoost <navid.emamdoost@gmail.com>
> CC: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, emamd001@umn.edu, Navid Emamdoost <navid.emamdoost@gmail.com>, emamd001@umn.edu, Navid Emamdoost <navid.emamdoost@gmail.com>
> CC: emamd001@umn.edu, Navid Emamdoost <navid.emamdoost@gmail.com>
> 
> Hi Navid,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on pci/next]
> [also build test WARNING on v5.4-rc8 next-20191122]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Navid-Emamdoost/PCI-IOV-Fix-memory-leak-in-pci_iov_add_virtfn/20191125-020946
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git next
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 844d97f650a2d716e63e3be903c32a82f2f817b1)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/pci/iov.c:204:1: warning: unused label 'failed1' [-Wunused-label]
>    failed1:
>    ^~~~~~~~
>    1 warning generated.

Reported on the mailing list:

https://lore.kernel.org/lkml/20191125180448.GA39139@ubuntu-x2-xlarge-x86/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191125180533.GA39319%40ubuntu-x2-xlarge-x86.
