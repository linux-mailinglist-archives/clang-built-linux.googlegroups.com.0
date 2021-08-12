Return-Path: <clang-built-linux+bncBD26TVH6RINBBSFJ2OEAMGQE5I5DNWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 0760D3EA00A
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 09:59:06 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id g12-20020a1709026b4cb029012c0d2e483csf3229260plt.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 00:59:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628755144; cv=pass;
        d=google.com; s=arc-20160816;
        b=TYC50M8vzFeeaF9ygLQYYmo3X2GUdqjmFboO+aMc0/6wn9QSuEzwzH7g462bzI302y
         tMatUQ+0SVpQ9KBGGvR9Y7Pit14QE0Kbk2asBA+odg/4vh/jf2MINN75INDWQSIjQhGK
         z/QfDX35Far1gMHJ30JZJIL7hslSpzgZEIMb+CbfdbAMbz76m1qz6+nWdzTdLjPbUlnY
         jPrNPcDlZQFleCLsRVxX6g10znKrlmr5uJaRhi0JA848f0u/1hGmXkOeB362LjjMlJHI
         lpNDMmjIcl3zAl6fW9P5cKJicb8w0Pg8cW1kPmF+7dpcj8nJjeLpPa5eB11o/Qj7CeNw
         2JBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=0Cm38SvoLpMsjxeE7gN0bYHJE3biLpCH6yGXaDzO0G4=;
        b=X99sUEJKlNO4nVYJKfLR0WvFV0G7jDL+eaTLUlX20IC/ZFH3olrv73j1nL5A4TZCeB
         MskDz0hAlXv33QjNwUQLvDesPGNsIYTZGB42IxxBxvnC/xNOWCZOe5kaY6vsE5gPgeMT
         OHF37c7PCFQ3JwlmjbzRoe377T70GvGNmpGX1QRREkl4fhl6hoH+gDEsCB6r76kdiJOc
         ysZk0Tx4HaYgWsaDFUKbKlzQ0BQdqqetjTihi/Qos5OdRqds2r2ZZuGV72t3EqQo3XVi
         pgESfvxzMbEhUKv0tZ7uIF40YwyAjVgv9sPfobLpNRqmq5+S8yhy4u5/Batjg6ulD2lm
         o5qQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0Cm38SvoLpMsjxeE7gN0bYHJE3biLpCH6yGXaDzO0G4=;
        b=ndWKeZcjteHO9bkg1J3ZSNFGU8whAAQui6V7upU5meUBPeiSwLqL03kNOpjQE0ShWf
         6Pqx6uyWbepwYJxkGShiIe19aYoQp4AONMuEAefFUEEJDlLa3z69f1NMAwepv7ikC0Ru
         k9CP9w7h5k5q9fdkHJAhq4GNd4fCWD2jlDM7RCYOwVZ8MeuJFbhx6dQR79Z97pBisrku
         rMS2fYv9PCG8iO0YZ5qzerQHl/nTnOmAsCtRxZJuuJ3JCQ8D3L/KNYu34VS5+T5nrkBn
         toNC/fM3WYlNBrCroCTLHyVyp0WhrUhwjv2FH4ZO7f+R+3PNHGDVzm5bIGGPCN0wtXs+
         RxkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0Cm38SvoLpMsjxeE7gN0bYHJE3biLpCH6yGXaDzO0G4=;
        b=R896c11LaGiFXBG+uuelB/jKr4MuQVw4W1UF66Zv/JlrseT/P7sJnYPn+2NsC68OjD
         k1MDdIdVaM/cnFUnPF2vfKLv+dVcEj20JNN+xk7vbR3imTYdtBZONfi45rczURvbbpZ7
         DHeljF5wTY/1IMFs27XrPBY+gT/qH+H+2wO2kgiFUBp3BFo3pkoQCx8NaR18FpR24kEO
         gTvsHE9SzGbArkPU3xvmPivUiYsbG29XywaoIaQrvbNh6QUFN1PlRm4UQmSXSBBDd1EZ
         R/rLb/Bi4ES+iIu2Pz5FR4OHbGWgsMACjDkiCnty7a9/paZsZe21VSzmx0/wHNYjELll
         fYkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Qdf2Z4w74Xn/T+bqRl45QRHBu2PpkPDTDxc/hnUt2Nj2xxOhG
	Tnm3pIreByD3Vun2F3MYVhU=
X-Google-Smtp-Source: ABdhPJwHYs7SoG+EbxM+9C2gnD/hbzOQwQV/vVyN3d2AqifKq0jxAM+LRz+2s62/UpcXWOO/RabU2g==
X-Received: by 2002:a17:90a:9285:: with SMTP id n5mr3028700pjo.29.1628755144756;
        Thu, 12 Aug 2021 00:59:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4e24:: with SMTP id c36ls1196247pgb.5.gmail; Thu, 12 Aug
 2021 00:59:04 -0700 (PDT)
X-Received: by 2002:a63:e408:: with SMTP id a8mr2793860pgi.184.1628755144148;
        Thu, 12 Aug 2021 00:59:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628755144; cv=none;
        d=google.com; s=arc-20160816;
        b=0LjDVay5jqwoPz/wbl7J0YftOTX7SLZF09dUGtoy8UkgmIsRIuec21wjPnrWYa4S3D
         P7a+GsIMdsfgCKoNEqc0vw3HjDqnJZAFf427E0aWaAl3c2HfoQeoFoaNdVBZCWfj7Rbf
         PySib+lv6Ny9NDklwlzihpX3em12VwC3WkbhgkRuCttQknxPSVLwBlHAgmmBE2PViGc8
         yaYvyxTBCfQntWGGz42obZSkpnmFbX3P4uFhEEbizj1aAj224nFiiGM0o/pbsKyuPjhj
         VqLCAds0wQqXNPQp3niC2ASu63kDzT8JU8+lABJAoxoB/rHRLoRSWCXfU1Q1Jxf2W3Du
         gYuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=SDV/2OMEWBNl9Bz9Tk/cMgYQVMBHMvbp4qdZ0M88ZwQ=;
        b=peRwWEHHis+Xi4xgtjtCKO6zCZ5twtxlJlQAUwWgfBC92E9n1q8AP7SNOFB2oFfnE0
         FQYDSWmBpkQxt6k6Hxyj3NRZ/zPUsInFSIAhrfKzcyButmKDXe+YGAR5WA6/v9dxVBA+
         rDTeUrjK5DfKkGGpfSDAdtlAI164Lob66KPFfdYTMKJUrIvPqheGRyJiNqcydcXbjDyC
         AztHgJwMXsKyeyrEJTG2Bm8MSODcSseiT/l/CZC4rS6xWYTIHL+kBYxGn/Uw2WLSIieg
         K493DseIULkFG4ny4jh5ZpVkIw8Gn3wkL+r38Mbjhh9+/6FcxXU+OttEAnafmvugEIuX
         9Taw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id e1si426993pjs.3.2021.08.12.00.59.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Aug 2021 00:59:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6200,9189,10073"; a="215330210"
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; 
   d="scan'208";a="215330210"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Aug 2021 00:59:03 -0700
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; 
   d="scan'208";a="517343518"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.255.29.191]) ([10.255.29.191])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Aug 2021 00:59:00 -0700
Subject: Re: [kbuild-all] Re: [PATCH v2 1/3] drivers/clocksource/timer-of:
 Remove __init markings
To: Chunyan Zhang <zhang.lyra@gmail.com>, kernel test robot <lkp@intel.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, clang-built-linux@googlegroups.com,
 kbuild-all@lists.01.org, Saravana Kannan <saravanak@google.com>,
 Baolin Wang <baolin.wang7@gmail.com>, Orson Zhai <orsonzhai@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>
References: <20210715065455.392923-2-zhang.lyra@gmail.com>
 <202108011431.Nx7sS0uY-lkp@intel.com>
 <CAAfSe-vY9bkLb7Q2Tn=2ug6pau9VHkfZyvmoQNMqeKmxfquOHg@mail.gmail.com>
From: "Chen, Rong A" <rong.a.chen@intel.com>
Message-ID: <257619cf-5381-3f8b-3f80-2308e2a2cb85@intel.com>
Date: Thu, 12 Aug 2021 15:58:58 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAAfSe-vY9bkLb7Q2Tn=2ug6pau9VHkfZyvmoQNMqeKmxfquOHg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.65 as
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



On 8/12/2021 2:39 PM, Chunyan Zhang wrote:
> On Sun, 1 Aug 2021 at 14:18, kernel test robot <lkp@intel.com> wrote:
>>
>> Hi Chunyan,
>>
>> I love your patch! Yet something to improve:
>>
>> [auto build test ERROR on tip/timers/core]
>> [also build test ERROR on linux/master linus/master v5.14-rc3 next-20210730]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>>
>> url:    https://github.com/0day-ci/linux/commits/Chunyan-Zhang/Add-module-build-support-for-timer-driver/20210715-145711
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 2d0a9eb23ccfdf11308bec6db0bc007585d919d2
>> config: s390-buildonly-randconfig-r003-20210728 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c49df15c278857adecd12db6bb1cdc96885f7079)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install s390 cross compiling tool for clang build
>>          # apt-get install binutils-s390x-linux-gnu
>>          # https://github.com/0day-ci/linux/commit/8e3c2c4da32affdbca933979110050e564351c84
>>          git remote add linux-review https://github.com/0day-ci/linux
>>          git fetch --no-tags linux-review Chunyan-Zhang/Add-module-build-support-for-timer-driver/20210715-145711
>>          git checkout 8e3c2c4da32affdbca933979110050e564351c84
>>          # save the attached .config to linux build tree
>>          mkdir build_dir
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=s390 SHELL=/bin/bash
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>     s390x-linux-gnu-ld: drivers/tty/ipwireless/main.o: in function `ipwireless_attach':
>>     main.c:(.text+0x21a): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: main.c:(.text+0x270): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: drivers/tty/ipwireless/main.o: in function `ipwireless_detach':
>>     main.c:(.text+0x478): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: main.c:(.text+0x4d4): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: drivers/tty/ipwireless/main.o: in function `ipwireless_probe':
>>     main.c:(.text+0x70c): undefined reference to `ioremap'
>>     s390x-linux-gnu-ld: main.c:(.text+0x83e): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: main.c:(.text+0x8b6): undefined reference to `ioremap'
>>     s390x-linux-gnu-ld: main.c:(.text+0x93a): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: drivers/char/xillybus/xillybus_of.o: in function `xilly_drv_probe':
>>     xillybus_of.c:(.text+0x9a): undefined reference to `devm_platform_ioremap_resource'
>>     s390x-linux-gnu-ld: drivers/net/arcnet/arc-rimi.o: in function `check_mirror':
>>     arc-rimi.c:(.text+0x5c): undefined reference to `ioremap'
>>     s390x-linux-gnu-ld: arc-rimi.c:(.text+0xc2): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: drivers/net/arcnet/arc-rimi.o: in function `arc_rimi_exit':
>>     arc-rimi.c:(.exit.text+0x44): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: drivers/net/arcnet/arc-rimi.o: in function `arcrimi_found':
>>     arc-rimi.c:(.init.text+0x37c): undefined reference to `ioremap'
>>     s390x-linux-gnu-ld: arc-rimi.c:(.init.text+0x3c8): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: arc-rimi.c:(.init.text+0x614): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: arc-rimi.c:(.init.text+0x674): undefined reference to `ioremap'
>>     s390x-linux-gnu-ld: arc-rimi.c:(.init.text+0x6de): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: drivers/net/ethernet/fujitsu/fmvj18x_cs.o: in function `fmvj18x_probe':
>>     fmvj18x_cs.c:(.text+0x756): undefined reference to `ioremap'
>>     s390x-linux-gnu-ld: fmvj18x_cs.c:(.text+0x788): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: fmvj18x_cs.c:(.text+0x7e0): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: drivers/net/ethernet/fujitsu/fmvj18x_cs.o: in function `fmvj18x_detach':
>>     fmvj18x_cs.c:(.text+0xce0): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: drivers/net/ethernet/fujitsu/fmvj18x_cs.o: in function `fmvj18x_get_hwinfo':
>>     fmvj18x_cs.c:(.text+0x27d4): undefined reference to `ioremap'
>>     s390x-linux-gnu-ld: fmvj18x_cs.c:(.text+0x2940): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: drivers/pcmcia/cistpl.o: in function `release_cis_mem':
>>     cistpl.c:(.text+0x9c): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: drivers/pcmcia/cistpl.o: in function `set_cis_map':
>>     cistpl.c:(.text+0x46c): undefined reference to `ioremap'
>>     s390x-linux-gnu-ld: cistpl.c:(.text+0x4a8): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: cistpl.c:(.text+0x4e6): undefined reference to `iounmap'
>>     s390x-linux-gnu-ld: cistpl.c:(.text+0x4f8): undefined reference to `ioremap'
>>     s390x-linux-gnu-ld: drivers/crypto/ccree/cc_driver.o: in function `ccree_probe':
>>     cc_driver.c:(.text+0x5a8): undefined reference to `devm_ioremap_resource'
>>     s390x-linux-gnu-ld: drivers/crypto/ccree/cc_debugfs.o: in function `cc_debugfs_init':
>>     cc_debugfs.c:(.text+0xac): undefined reference to `debugfs_create_regset32'
>>     s390x-linux-gnu-ld: cc_debugfs.c:(.text+0x190): undefined reference to `debugfs_create_regset32'
>>     s390x-linux-gnu-ld: drivers/clocksource/timer-of.o: in function `timer_of_init':
>>     timer-of.c:(.text+0x104): undefined reference to `of_iomap'
>>>> s390x-linux-gnu-ld: timer-of.c:(.text+0x306): undefined reference to `iounmap'
> 
> Seems TIMER_OF should depend on HAS_IOMEM, but this error is not
> related with changes in the above patch?

Hi Chunyan,

Thanks for the feedback, the bot found the error was first found with 
this patch, sometimes it doesn't mean the patch brings the error.

Best Regards,
Rong Chen

> 
> 
>>     s390x-linux-gnu-ld: drivers/clocksource/timer-of.o: in function `timer_of_cleanup':
>>     timer-of.c:(.text+0x5f2): undefined reference to `iounmap'
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/257619cf-5381-3f8b-3f80-2308e2a2cb85%40intel.com.
