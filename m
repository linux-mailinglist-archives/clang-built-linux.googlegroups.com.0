Return-Path: <clang-built-linux+bncBDRZXY4CYYORBFVPX6CQMGQE46QXXLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 391903934DB
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 19:32:08 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id h23-20020a17090aa897b029015cc61ef388sf1001876pjq.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 10:32:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622136726; cv=pass;
        d=google.com; s=arc-20160816;
        b=wK6BR6jgGgJsYf62HKZYDQr/0NQdBd7JoRSb+RwGN+KxwYL6h2wx93EPEXpqz+cqnB
         sN2WuZF1XCjsNZKtBIbpcp8Pr+eQ39GuCxyj8xLmb+iDDov5mSVa9NEw7ZXmXB0VqNLw
         UVxV1UX5q/UfL6zffrwvn8w4XqSgYl8theldsWt4U26C/ZyneSCRM314FVeJqBDfHtYc
         +y3MNaewdHyzEvTFp5UJzIZGPp2r4hwpuIEbhx/rgjlh/SCN5bgY++OKxQ4Ioyile+1V
         SKNzLU3WScB41GtfV/uEE3Vtn89y6l48UVIRaeKf0TMOTuCvOo/To1TLpWNXv+RJpMRj
         9h+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=6dw1lauPQHO0qwZ7kNyf88GO6OsrZRD50HVjh6Zv+IY=;
        b=StMOwsu1Cl/BaoR1iWziljTjrjl+Vmof073JE065nAhQST5g7JzFLwjIYJWdTkWKgp
         lYGWhNE7ngOOZuzUsnsf2XA48b1UvhRLwVjTYhwOviPtUpwp8ibf8CvN0eMz9/F6mF+t
         ZMaIb1DtiYd0DQR1XuSB+BQ4hFmyReosR7xc1KGgQkpOvZpZCis8Ki7O/5A+2St4q/6M
         M/jzF4N62VqmShMC0Vn0FVOFDV+xObYKJJFapsA0qaRV4U4kZpWd1t5YE7+luyJwoING
         R2X6zM3g/xf4AXtrfIyoYGibyx6z9xrGhtWHzv+RTeT1E8Ka5fGdXpa+GClQRJo05smf
         0JFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=J7Aqgg6q;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6dw1lauPQHO0qwZ7kNyf88GO6OsrZRD50HVjh6Zv+IY=;
        b=C/tJT5JjbXLpNHqvS4IkxCKTFbgUVZ/n7/mPH5GHEA+/R5B/nT05DB3dSI6IgEBmqu
         fNo+hAGTCKjgxAfWsumxdBWhtKSJeF6zLxBT2b3gt1myWUva8QLUjoB18GB1Dt9nE9Vt
         buQbVi4Hq9Dhvladz/eHmwBaF0acM3q4wXfWVThTBNQWc11uh/JG2MwsCPyvoCSpzMnm
         CPEyE2zX6b+vUaYgKS4bi98BDqGbkzUjMLVmLSeLVeppy8yVmKgISJLPQiFDFqOaHaka
         rFtjx2M1PFA+IuakxfL5uKFoM3z74PWBpe7bUfLP023fWoQW2fpuuOA4/fBI8QHuwyeC
         w3UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6dw1lauPQHO0qwZ7kNyf88GO6OsrZRD50HVjh6Zv+IY=;
        b=Im9tvCaRPVPvtiekCvb7KaewzD+lnMo+pU4aY/H2fxt11V93fqjPVSAQGmfA7L5Yj+
         1uzJ3CnDpRmgxKExR5puaFmGuU0qSZJSLtPGF3mRjF/nRG6GG5gGEtF9nA7qu6ifwxEI
         4AHFEnesSIW6tZeIUY9oeqS02DXe8hgmZTBdoEjS+v5SSyUdUyPS9gajtIr1q6mptUhV
         6F8yzvsFbVAwUYZLHUxHtzXUgwljgkFABjNOvM+QiGIcnn6cS6Ju2FUWg+hfh6nS3EV2
         rfIMKEugkeMRGtVJ+CrcbIjgqaREFcGsPIhBuf0CjwhVb5iAZ1tUUsBeXIiCcewytbQW
         dSKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fMEhcRvv1rxic4sbZFSKsZBtOm9eX7HcScs8pEQmvMMo96OIL
	wpYoZdnmxHZsAmbexzaapuo=
X-Google-Smtp-Source: ABdhPJzi0vL7cqstMYqfNmGdTiNTRsAfxUjTm8wJjdzSqENSBHL9Sy5EwiH/IF1/OcfO97LsyDswvA==
X-Received: by 2002:a17:903:208a:b029:ef:9465:ad10 with SMTP id d10-20020a170903208ab02900ef9465ad10mr4150584plc.53.1622136726766;
        Thu, 27 May 2021 10:32:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b185:: with SMTP id s5ls2096407plr.3.gmail; Thu, 27
 May 2021 10:32:06 -0700 (PDT)
X-Received: by 2002:a17:90a:4d01:: with SMTP id c1mr10648171pjg.143.1622136726140;
        Thu, 27 May 2021 10:32:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622136726; cv=none;
        d=google.com; s=arc-20160816;
        b=wdtgQKOamCnBk46r5LS8Jt9BAEEDQmXmjUjsPNIr8CtEyNqSPsuebmy+3O2mOap21W
         ZR4FX0f/pd0Eztfzow9CaH04gsvYSb2ekCVQA0h0Y2tIabF6tckZWdfGfYzJ6FJnR5n8
         z+0R0lnfqj2+dXF8pJWDOL7fPI5L4fn//xYM+r/tEpRgxdPqoohLgG4Hs0SuMziYqC+M
         d5+/wzxaoSkGOqr8irpOfYGSJui4vj07lGfI3X8eqBtgLhfF9MmngA26YScPOY1bPuys
         TZOUJv1Uku8FoJxhNpVcSsypLBPB6iU8lbAEU4EFauyp5PBqb1Xjqwg1ErzHyMMgmwtn
         0kjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=GTHTyFpNWBeRU8sqcmht7+gs6EQ48XGfyxwMa7h5zu8=;
        b=G0WYkF6FLGcRRUoGWC8gZshmNNdnrXWfAV5VfVsIghax0Ipw+NquF9Ko5RPzKX51KZ
         6Kjhy/9At8SutxAZYzPYvhZypt5R4ugOtb51qH+az2tCaQ5o/SQpW5KbsL/9yO5o0Zk2
         8n+GSIsWyA5iZh4NLM06AsmIu9Rtmcd/7kse14JwkxDYmwA/uT3u6Q+8tIZ2JH5V2D5H
         PQDtOgMPcID3PLTLFGrSxWaEWqwFluGGV/wtpSI10qQ1maDzOG4NezOZfIL9RtHY3EMp
         wbLbuvPDkXhPa8vsWkoug3HHmsRsV47biAJVWQkxHc7hOQhloLnFCTJ0mhFtmgKOLbfP
         2v8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=J7Aqgg6q;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id f3si314959pjs.3.2021.05.27.10.32.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 May 2021 10:32:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-423-9b7RdsnuOY-3YJloQOTlOg-1; Thu, 27 May 2021 13:32:02 -0400
X-MC-Unique: 9b7RdsnuOY-3YJloQOTlOg-1
Received: by mail-ed1-f69.google.com with SMTP id d4-20020aa7ce040000b029038d1d0524d0so694043edv.3
        for <clang-built-linux@googlegroups.com>; Thu, 27 May 2021 10:32:02 -0700 (PDT)
X-Received: by 2002:a17:906:2ed0:: with SMTP id s16mr5017086eji.543.1622136721160;
        Thu, 27 May 2021 10:32:01 -0700 (PDT)
X-Received: by 2002:a17:906:2ed0:: with SMTP id s16mr5017055eji.543.1622136720957;
        Thu, 27 May 2021 10:32:00 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id gb26sm1398657ejc.25.2021.05.27.10.32.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 May 2021 10:32:00 -0700 (PDT)
Subject: Re: [linux-platform-drivers-x86:review-hans 37/38]
 drivers/platform/x86/firmware_attributes_class.c:16:5: warning: no previous
 prototype for function 'fw_attributes_class_get'
To: kernel test robot <lkp@intel.com>, Mark Pearson <markpearson@lenovo.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <202105272347.ko0CMhYf-lkp@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <5072c1b5-e9a0-321b-fb7d-6c647643b86e@redhat.com>
Date: Thu, 27 May 2021 19:31:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <202105272347.ko0CMhYf-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=J7Aqgg6q;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Hi Mark,

On 5/27/21 5:44 PM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git review-hans
> head:   9972d91cd41540a1890435034b62653c98da4261
> commit: 8535b9dea34f00781758999285cea8ab82bb0a2f [37/38] platform/x86: dell-wmi-sysman: Use firmware_attributes_class helper
> config: x86_64-randconfig-r032-20210527 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 6505c630407c5feec818f0bb1c284f9eeebf2071)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/commit/?id=8535b9dea34f00781758999285cea8ab82bb0a2f
>         git remote add linux-platform-drivers-x86 https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git
>         git fetch --no-tags linux-platform-drivers-x86 review-hans
>         git checkout 8535b9dea34f00781758999285cea8ab82bb0a2f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/platform/x86/firmware_attributes_class.c:16:5: warning: no previous prototype for function 'fw_attributes_class_get' [-Wmissing-prototypes]
>    int fw_attributes_class_get(struct class **fw_attr_class)
>        ^
>    drivers/platform/x86/firmware_attributes_class.c:16:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int fw_attributes_class_get(struct class **fw_attr_class)
>    ^
>    static 
>>> drivers/platform/x86/firmware_attributes_class.c:35:5: warning: no previous prototype for function 'fw_attributes_class_put' [-Wmissing-prototypes]
>    int fw_attributes_class_put(void)
>        ^
>    drivers/platform/x86/firmware_attributes_class.c:35:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int fw_attributes_class_put(void)
>    ^
>    static 
>    2 warnings generated.


Let me decode these arcane warnings for you :)

These warnings are being issues because there is no previous prototype declaration for these functions; and this is caused by drivers/platform/x86/firmware_attributes_class.c missing an:

#include "firmware_attributes_class.h"

If you add that to the discussed v5 of this series then these warning should go away.

Regards,

Hans

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5072c1b5-e9a0-321b-fb7d-6c647643b86e%40redhat.com.
