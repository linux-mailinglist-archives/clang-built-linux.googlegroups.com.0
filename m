Return-Path: <clang-built-linux+bncBDLPBG4DUEARBZUBX34AKGQEJYEKVPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 482F52217A8
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 00:19:20 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id p3sf1706179ota.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 15:19:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594851559; cv=pass;
        d=google.com; s=arc-20160816;
        b=Iy3SsTD/ZNy1/Uk90W7fMOm6MduAp4YkWVNeXnzZ2V1BJpir21TH+H7Z3zDmDHMDop
         hkAhBqS5+os5kxIkWGNqtFijcomVgXkyjrJLz12GuMFoM7jDFyzR7ltTDxOjY9rk1yOK
         fLHX+XANMLVk6VFlK6Y6GPNx+AVHXrgJOj6/6TMnhe6QfSDJkNqHkBrl7IwGuoobD/Kw
         l1iVpqoOTNLwSnPV005LabHlK88/c04Y5sq77oEZ6OLJm1W7h51jkgoYMcWwep6TB3vf
         65Q4jn1DKRk05dOIIZvY6tYsr3kwIHd//GCF/Dij+fnXOXnvrzepRiPhd7uBlqT6ORJB
         pTFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ETqGbOiFn/oU6gyWnNZjNONCCQZvjJqpT+pdKZ3EYaY=;
        b=saNOoFVgu4RH6Qgn1iY153t7bzgwVCNZS/+SjOzk+ANw6wY/RkiB19aF9JLxxJn46Y
         hbN0KaxqXKzLVVJyi7iOQ3vfjQ+1FsdwjjxtYmPVHHmhwXOzJHzx/SEqkOkuOszB42oP
         7kfN+RrpjTwkY7YXKGo7niBCiO4PNCYs7FRAI2lveE9bIzCNDYxmNML33SXjGvFi7ZWx
         3G+FCSB4ecR+x0w4isr/aYkjDLfgQVk2WNSkc+WMk+n63sJkND5+dCwrvtIYpjJujNL5
         NJmxLLsXIRy4yG+lJkrrVIdogs0IKjiVfSvvCnVeNkKn7ZXOH8hNiKItxvuYtSNWqpFo
         tknA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LP9YnNKB;
       spf=pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ETqGbOiFn/oU6gyWnNZjNONCCQZvjJqpT+pdKZ3EYaY=;
        b=YU8Lo5xSHw5Qa7SEfiFI3bOMsrNJYqcJe9Ah/500hHKRQvQQz0HQ/nz6Dc19TvdWxp
         TvfqLLxZSKmKwi0vjlYlIEEoDgTaizd0KB4mrey2RIbPN7lRh70qqOfo617IzpCHoi/G
         7qChJeVMs2KXHW8HxJ9qRTMljk7nS5BU8oqEnmGalS9LZirKUXN7BvcevDVSFPNJX+Ki
         w7XA42Qqf6Q+xuSi3hqI8jid9UZD7LvC9n2B2osPaCKpwDm0hzGba6TsSqHp0P6cmarE
         NZwnoPG4RjKONN23qTuJMwVhueMUK+uf7LFWZlilsbJbK1tYUDL7jL4dGRrrLWdLeFVU
         /DVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ETqGbOiFn/oU6gyWnNZjNONCCQZvjJqpT+pdKZ3EYaY=;
        b=tVUnOF+jcKyJ2m35iBmYW8EkvcWdCreg9yjxz9BswBUCr2MjXv/OF4R+2xpdrrUNUF
         xF+S4X4ScOfathKQx52rITpedwS8L2i1PhXOqBLowlaAeaF+9b0nIgz3tZP7TC44Bzvg
         7XbUMxdbEWQncoJH55MWP31O745RlKfacHhYmTyNcVuYOJRoCAQh9F7Nw3inLexA48cH
         tWsMyDyeT3qEQgRfrRFtylCsCbw1usrC5hYPrJVJoMHrUbMW5s2t4StcFvlS3NykooS7
         gjBcCo1zLqBrEbjKWCvMhDVd1f3iiA73Zb6NgELZpKjNqOu1lHRYtF5azumnG7gh+Tsx
         jp+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gRHjMpFudKf6e9An49e+P7ZpbWzjbzIq1T4qAybbFgrOlBW5a
	f/zyRA5VZi4TyI83sRaYyOU=
X-Google-Smtp-Source: ABdhPJyePJaxHQZbngoBPRSU4OvuGBLRB2DTEgTTTVKWMiOyius59IK9bVGxxeHBsGe5m8LPFFkX8g==
X-Received: by 2002:a4a:4cc1:: with SMTP id a184mr1383553oob.62.1594851559034;
        Wed, 15 Jul 2020 15:19:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:18c5:: with SMTP id v5ls304467ote.10.gmail; Wed, 15
 Jul 2020 15:19:18 -0700 (PDT)
X-Received: by 2002:a05:6830:1e55:: with SMTP id e21mr1814564otj.318.1594851558604;
        Wed, 15 Jul 2020 15:19:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594851558; cv=none;
        d=google.com; s=arc-20160816;
        b=H55TtExc05l+dl9QxmCSZA0c2tikA00kMHXpbbcAwebfOkmprQwag55TXKjbDfbhqW
         wOzSmEPtO8EAm2dxpdBOVa6d7BIv/c8+d+F7lp3DmUYNe1d7756fFFSfIzQzGdgNgK7y
         xZ47r8gPVSr417q4wpqvS02BIJuCeZGxX8G7efS8fNyGijCJmqcSSKeUZK/0u7zTQr1W
         nsqrfKwsQwZGKVgbQnhDJduld9aLNU08D2kPRHA76hVVzwaR8qkUUc8JGRMDabV0VeT5
         PRjOSeQblM18Ifdcak3hpFORFeAVQEoKVj2nefNkErQiwd3val/pm/xpNL0QsrnOSecv
         al8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uamVRmBnq/LyIAwWR9vTRtXE6KJjN16bes8FQWmt5qc=;
        b=d4qLi7KFnJiB/2mWiELpsjhvpIv+4qcTjElf6Wq24b3daYKS9o4ACAk5GlQxtvd4h2
         lQItkjXzg6klUeBlQs9q/dx1Ju4wSFK7gGVLRLUeJ36hIQHaIOLWtOIOiNSv4ot1kHrp
         vnI3xaP7g7rPe364nN90FdyExFwjncC55qZ3Im2hbyHTKma9gR58a7FArdk3V3tD9Nsq
         EhGFCEtBrKvAhrXf5wBNX9afV1cM2hFVKxcFLiIN2KPPaFEAUZ8LJIKHzYqYMtAsrrCj
         r/9yIxxCjo/NYioNH3g2rJkxgTebY6J+s3n/Fnfeox4oMyd/Lw+kEgZvIaqqJBeUPpZN
         x1uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LP9YnNKB;
       spf=pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id j2si166012otr.0.2020.07.15.15.19.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 15:19:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id e64so3937561iof.12
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 15:19:18 -0700 (PDT)
X-Received: by 2002:a5d:8853:: with SMTP id t19mr1496520ios.73.1594851558125;
 Wed, 15 Jul 2020 15:19:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200707213112.928383-7-mathieu.poirier@linaro.org> <202007150455.m7mLaFaF%lkp@intel.com>
In-Reply-To: <202007150455.m7mLaFaF%lkp@intel.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 15 Jul 2020 16:19:07 -0600
Message-ID: <CANLsYkwWe_zfpafBKNF10BEqV4w1tHTjrTOPUca36LkTD+Nu=Q@mail.gmail.com>
Subject: Re: [PATCH v5 06/11] remoteproc: stm32: Properly set co-processor
 state when attaching
To: kernel test robot <lkp@intel.com>
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Bjorn Andersson <bjorn.andersson@linaro.org>, 
	Loic PALLARDY <loic.pallardy@st.com>, Arnaud POULIQUEN <arnaud.pouliquen@st.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>, 
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	linux-remoteproc <linux-remoteproc@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mathieu.poirier@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=LP9YnNKB;       spf=pass
 (google.com: domain of mathieu.poirier@linaro.org designates
 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
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

Hi Robot,

On Tue, 14 Jul 2020 at 14:31, kernel test robot <lkp@intel.com> wrote:
>
> Hi Mathieu,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on linux/master]
> [also build test ERROR on linus/master v5.8-rc5 next-20200714]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use  as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Mathieu-Poirier/remoteproc-stm32-Add-support-for-attaching-to-M4/20200708-053515
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 9ebcfadb0610322ac537dd7aa5d9cbc2b2894c68
> config: arm-randconfig-r011-20200714 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 02946de3802d3bc65bc9f2eb9b8d4969b5a7add8)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/remoteproc/stm32_rproc.c:697:18: error: use of undeclared identifier 'RPROC_DETACHED'
>                    rproc->state = RPROC_DETACHED;
>                                   ^
>    1 error generated.

This patchset depends on this one [1], something that is clearly
stated in the cover letter.  Compiling this set on top of [1]
generates no error.

[1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=318275

>
> vim +/RPROC_DETACHED +697 drivers/remoteproc/stm32_rproc.c
>
>    661
>    662
>    663  static int stm32_rproc_probe(struct platform_device *pdev)
>    664  {
>    665          struct device *dev = &pdev->dev;
>    666          struct stm32_rproc *ddata;
>    667          struct device_node *np = dev->of_node;
>    668          struct rproc *rproc;
>    669          unsigned int state;
>    670          int ret;
>    671
>    672          ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(32));
>    673          if (ret)
>    674                  return ret;
>    675
>    676          rproc = rproc_alloc(dev, np->name, &st_rproc_ops, NULL, sizeof(*ddata));
>    677          if (!rproc)
>    678                  return -ENOMEM;
>    679
>    680          ddata = rproc->priv;
>    681
>    682          rproc_coredump_set_elf_info(rproc, ELFCLASS32, EM_NONE);
>    683
>    684          ret = stm32_rproc_parse_dt(pdev, ddata, &rproc->auto_boot);
>    685          if (ret)
>    686                  goto free_rproc;
>    687
>    688          ret = stm32_rproc_of_memory_translations(pdev, ddata);
>    689          if (ret)
>    690                  goto free_rproc;
>    691
>    692          ret = stm32_rproc_get_m4_status(ddata, &state);
>    693          if (ret)
>    694                  goto free_rproc;
>    695
>    696          if (state == M4_STATE_CRUN)
>  > 697                  rproc->state = RPROC_DETACHED;
>    698
>    699          rproc->has_iommu = false;
>    700          ddata->workqueue = create_workqueue(dev_name(dev));
>    701          if (!ddata->workqueue) {
>    702                  dev_err(dev, "cannot create workqueue\n");
>    703                  ret = -ENOMEM;
>    704                  goto free_rproc;
>    705          }
>    706
>    707          platform_set_drvdata(pdev, rproc);
>    708
>    709          ret = stm32_rproc_request_mbox(rproc);
>    710          if (ret)
>    711                  goto free_wkq;
>    712
>    713          ret = rproc_add(rproc);
>    714          if (ret)
>    715                  goto free_mb;
>    716
>    717          return 0;
>    718
>    719  free_mb:
>    720          stm32_rproc_free_mbox(rproc);
>    721  free_wkq:
>    722          destroy_workqueue(ddata->workqueue);
>    723  free_rproc:
>    724          if (device_may_wakeup(dev)) {
>    725                  dev_pm_clear_wake_irq(dev);
>    726                  device_init_wakeup(dev, false);
>    727          }
>    728          rproc_free(rproc);
>    729          return ret;
>    730  }
>    731
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANLsYkwWe_zfpafBKNF10BEqV4w1tHTjrTOPUca36LkTD%2BNu%3DQ%40mail.gmail.com.
