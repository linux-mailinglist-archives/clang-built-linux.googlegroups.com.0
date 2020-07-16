Return-Path: <clang-built-linux+bncBD26TVH6RINBB5OHX34AKGQEP77AKNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id A098D22190B
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 02:48:55 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id c15sf3439408plz.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 17:48:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594860534; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cxoh5+L+gBzNoTgqZHXslIErYiiYDGczO0/rAQD7M9F7iCCKL9xPWuDK88n8OVS6wC
         ZzdGp+OoD+Oz/fZMhwtkCGeuucaUNiTUC8/RdF2mncY5uZKBLQMgKTUsz593F0YaQYML
         RjrcPQ/xLxnO8aR8+z0gz+jxfnD9bN44SttV4m3TteKVSpvZfBK/b8eHrJEWPtMstpCa
         mQvuObobpZlYhcn+B8hPpjA8Ikg7oqP6k7BmHir0pYVLZ+fiOpEM3hUFZbCJJB7j4lvK
         YLvxoy5gSUksjxu6gcY8pBUruPcN1twVXxskExe1wzjnFufGfm9cZjHMSwyuY9Yzg74J
         QfRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=zjupEyCMIx9Avt39syu4o4iRtRlzLSohm1D7CkipMos=;
        b=ed/4VZRJHdTvKJAbaNZWafqGod+4Ypfcx5T02RpT99xEinkrM4kCQml/U9UJozkng7
         zPmBFmmRtnmy98anJMPpYuqwtYNFV9Qj34BIilT59EW/GVO9E8BZ/RPJxLIhC0fK2lef
         gu491es/K9XoRMP1Xl1YWwPNTZwm++KpzX6CdiretvvYtQbl60oiJZ2jJUu3mx26h9cV
         i1we3bQv2FZ/8RS8IbyLjnd3oDkcQgsN03TyFP+PZK+8C9Mt8YjlehrZyS77pRL8fjIN
         hiiLf+b4Xwj65i8FvL8QJRUfTI5HlUw2HNDMFthLFHhSdJ8VISS7kG/yZ4AHxlf14zqe
         5XwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zjupEyCMIx9Avt39syu4o4iRtRlzLSohm1D7CkipMos=;
        b=bmIyR4ovkEgA7QvFRM8K6xIQ8am+y3fFKlc7qVn80srsaOUIeGILJswQfpBhHuJz1x
         YuExB6OBnQvC8cur08cQs3RpFFZPImhyobZU8m8GiWhhpAUPGX5C1Cyt3U5Pnnml+9yQ
         Pen95M8ibGd4dcAxmSNKdk3mJZI0jsned4tXa60tpYt561Zsw+TYJjahFV5twmBLIAzp
         M/0b3kPz1InUAWD/igHjBtTNrcwOOunOsKFL+aAe4W+d9T3jVWQZ4R7SpPozokoLwrm7
         XqOJMQtstp9jrtCEyvy7DSlv6cvcTwzhofnA1uF10Fz6v86OvrdvYU2WjMjM8lmiU/rv
         OpTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zjupEyCMIx9Avt39syu4o4iRtRlzLSohm1D7CkipMos=;
        b=R1+XkLZpYV5qgdBSUS22ULM6s5lt+cWC345Y+8BrganyEHqnOO58yyCMeDMx2opTk2
         uo3dlWOkTyZnV3R36uqADK3SrGp9Yt6Gzjsdph/kYpc2UoMo+okBWJ6oWykG58nf8rrL
         Z1jb273a+3uieKv6SdGlsnufJRfdmn2xnqJQHpsj3vcK0cu1JWZQBLLXl9ZcVaVu5PWs
         bsBZHqCbjIFubG7rinFGd5/KIM6HYlTnsxewzZ7rJTRR47/4V6ctF+b2npSFuTN09zKv
         5KRs/A4BI2Wrh7yIfKKCLTYQI9fHVKbNG/zOKayim1zTfKzHmWvFqS2BwdJeV/UrDhT6
         4y0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530d0Rg/hxNTkj3Say8KRIZPVlQB4W6LxDkV5vohiroaMBMYJQ/9
	kxa76uelXdFdtpI1k187zjw=
X-Google-Smtp-Source: ABdhPJw0sWGVtN6Egvka3CcVDEdqb+cIBJS4kiJURzkPfIzTk0yMirEF9IAmGy5JMLP3t+ysMXOykg==
X-Received: by 2002:a63:9247:: with SMTP id s7mr2095052pgn.355.1594860533910;
        Wed, 15 Jul 2020 17:48:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:54c:: with SMTP id 70ls1436235plf.2.gmail; Wed, 15
 Jul 2020 17:48:53 -0700 (PDT)
X-Received: by 2002:a17:90a:d304:: with SMTP id p4mr2390280pju.153.1594860533475;
        Wed, 15 Jul 2020 17:48:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594860533; cv=none;
        d=google.com; s=arc-20160816;
        b=qVrH0YtsIrpzsPfTsDz8puvGlJwlSj/iYCLQFgFNkp1xsBA1TAY3BSesk37D2xd6Dz
         SRmRVghQFa2XfFoHOr9YWOE0ceNpUPjEMaOpF/4PwO268R5Y3EwS+Sztw9BMHRAVEfW6
         6Soz1g0ljuBl71ilynSq8ZspfXk4FvwebEGGCevft7tDrLp9RUn4A6vAwasuWmQDzV2U
         sp55kHss7nUFMWyymdMaS8+Q/9wEDf+TP4EtLGPQsvT+O/vahLdDz6jBMSGj3CP9fKxj
         UAzqT8DgBrdCw7l9Y6UGLHKp9tTLRcYfj23Eepu3dus5yRVqR0TVmDDnAdsvfdLF7N6q
         ob0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=h/vQtgOINf86VaU2LKU8bSILDYYbhgZZPoVggH2vejc=;
        b=EK7Tq4Y/TNAjU2+ZCxyLeFuuAxM+Tx4YGCC9hmTuUh2cldxUcgzXUGvlcthgmW6pK1
         hmU2LR3ge+FpQ0jbrt5pr15If+BJwjySAj0waHa1rEFkU2yg6z0ApCz/YGCEkL0zQy7h
         evTpi3IXQSXD8NctmThxykpZqAwTK+Y5BpHKSEmK/sfJ4HWNjf1UjVnLdHDlH+CYQq9S
         vKJCsSCJ6dOE5pPo+mLvwmZyKCclPAj/cWuPkQC/kPcaWXkt5rbPHZNQJ0Krfjya2I6i
         iUmd1FcsovX8ONo7B40DCBnNNh3+wvrXQn+1HQAg3viOT1Op7471a1luKpnGwEvVNEld
         ANRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id cp21si207691pjb.3.2020.07.15.17.48.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jul 2020 17:48:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: t59KQPIxHgNnXO4srBdYcIESOlEpO+x+C2ctTaD2nz64snXen4iNhmhf7B5rQFGOJR0mDHNUU8
 c4l8t8xYNEKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="137425569"
X-IronPort-AV: E=Sophos;i="5.75,357,1589266800"; 
   d="scan'208";a="137425569"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2020 17:48:52 -0700
IronPort-SDR: Cd6FiDqz4Iz5Y9Hl5wdbZkTLPfSQzmi5prl7GFa7fzLtH6E0hPpx9b9EnMEboJ4Ee7RxEeAjej
 WeNfA149Bxfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,357,1589266800"; 
   d="scan'208";a="485918696"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.3]) ([10.239.13.3])
  by fmsmga006.fm.intel.com with ESMTP; 15 Jul 2020 17:48:50 -0700
Subject: Re: [kbuild-all] Re: [PATCH v5 06/11] remoteproc: stm32: Properly set
 co-processor state when attaching
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 kernel test robot <lkp@intel.com>
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Loic PALLARDY <loic.pallardy@st.com>,
 Arnaud POULIQUEN <arnaud.pouliquen@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com
References: <20200707213112.928383-7-mathieu.poirier@linaro.org>
 <202007150455.m7mLaFaF%lkp@intel.com>
 <CANLsYkwWe_zfpafBKNF10BEqV4w1tHTjrTOPUca36LkTD+Nu=Q@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <c74cd2d3-6f7b-6781-2edb-eb1944ae8def@intel.com>
Date: Thu, 16 Jul 2020 08:48:22 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CANLsYkwWe_zfpafBKNF10BEqV4w1tHTjrTOPUca36LkTD+Nu=Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.20 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 7/16/20 6:19 AM, Mathieu Poirier wrote:
> Hi Robot,
>
> On Tue, 14 Jul 2020 at 14:31, kernel test robot <lkp@intel.com> wrote:
>> Hi Mathieu,
>>
>> I love your patch! Yet something to improve:
>>
>> [auto build test ERROR on linux/master]
>> [also build test ERROR on linus/master v5.8-rc5 next-20200714]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>> And when submitting patch, we suggest to use  as documented in
>> https://git-scm.com/docs/git-format-patch]
>>
>> url:    https://github.com/0day-ci/linux/commits/Mathieu-Poirier/remoteproc-stm32-Add-support-for-attaching-to-M4/20200708-053515
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 9ebcfadb0610322ac537dd7aa5d9cbc2b2894c68
>> config: arm-randconfig-r011-20200714 (attached as .config)
>> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 02946de3802d3bc65bc9f2eb9b8d4969b5a7add8)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install arm cross compiling tool for clang build
>>          # apt-get install binutils-arm-linux-gnueabi
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> drivers/remoteproc/stm32_rproc.c:697:18: error: use of undeclared identifier 'RPROC_DETACHED'
>>                     rproc->state = RPROC_DETACHED;
>>                                    ^
>>     1 error generated.
> This patchset depends on this one [1], something that is clearly
> stated in the cover letter.  Compiling this set on top of [1]
> generates no error.
>
> [1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=318275

Hi Mathieu,

Thanks for the feedback, the bot can't parse the base which links to another patchset,
and we can get the base commit if using 'git format-patch --base' to submit patch.

Best Regards,
Rong Chen

>
>> vim +/RPROC_DETACHED +697 drivers/remoteproc/stm32_rproc.c
>>
>>     661
>>     662
>>     663  static int stm32_rproc_probe(struct platform_device *pdev)
>>     664  {
>>     665          struct device *dev = &pdev->dev;
>>     666          struct stm32_rproc *ddata;
>>     667          struct device_node *np = dev->of_node;
>>     668          struct rproc *rproc;
>>     669          unsigned int state;
>>     670          int ret;
>>     671
>>     672          ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(32));
>>     673          if (ret)
>>     674                  return ret;
>>     675
>>     676          rproc = rproc_alloc(dev, np->name, &st_rproc_ops, NULL, sizeof(*ddata));
>>     677          if (!rproc)
>>     678                  return -ENOMEM;
>>     679
>>     680          ddata = rproc->priv;
>>     681
>>     682          rproc_coredump_set_elf_info(rproc, ELFCLASS32, EM_NONE);
>>     683
>>     684          ret = stm32_rproc_parse_dt(pdev, ddata, &rproc->auto_boot);
>>     685          if (ret)
>>     686                  goto free_rproc;
>>     687
>>     688          ret = stm32_rproc_of_memory_translations(pdev, ddata);
>>     689          if (ret)
>>     690                  goto free_rproc;
>>     691
>>     692          ret = stm32_rproc_get_m4_status(ddata, &state);
>>     693          if (ret)
>>     694                  goto free_rproc;
>>     695
>>     696          if (state == M4_STATE_CRUN)
>>   > 697                  rproc->state = RPROC_DETACHED;
>>     698
>>     699          rproc->has_iommu = false;
>>     700          ddata->workqueue = create_workqueue(dev_name(dev));
>>     701          if (!ddata->workqueue) {
>>     702                  dev_err(dev, "cannot create workqueue\n");
>>     703                  ret = -ENOMEM;
>>     704                  goto free_rproc;
>>     705          }
>>     706
>>     707          platform_set_drvdata(pdev, rproc);
>>     708
>>     709          ret = stm32_rproc_request_mbox(rproc);
>>     710          if (ret)
>>     711                  goto free_wkq;
>>     712
>>     713          ret = rproc_add(rproc);
>>     714          if (ret)
>>     715                  goto free_mb;
>>     716
>>     717          return 0;
>>     718
>>     719  free_mb:
>>     720          stm32_rproc_free_mbox(rproc);
>>     721  free_wkq:
>>     722          destroy_workqueue(ddata->workqueue);
>>     723  free_rproc:
>>     724          if (device_may_wakeup(dev)) {
>>     725                  dev_pm_clear_wake_irq(dev);
>>     726                  device_init_wakeup(dev, false);
>>     727          }
>>     728          rproc_free(rproc);
>>     729          return ret;
>>     730  }
>>     731
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c74cd2d3-6f7b-6781-2edb-eb1944ae8def%40intel.com.
