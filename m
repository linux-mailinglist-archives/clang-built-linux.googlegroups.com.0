Return-Path: <clang-built-linux+bncBD26TVH6RINBB2EJQ2BQMGQE5JV3I6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id C38C934C522
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 09:42:33 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id u5sf5079426plg.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 00:42:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617003752; cv=pass;
        d=google.com; s=arc-20160816;
        b=EkJageGkYzQMZQeA8kG/6Mk+VSOxoI79OrD6gI2DRrXeCTxiF+2+yrZbib2PxNGYpV
         lp4BQYz8TihYpudr4DIXLQEVoN2TX9yUn3ALDzKIGIxkjhgeY+uf/C2zl/vIBaUly27u
         Et5GbAoVxGpErdAudoIIEBwyeW/qgerPvRnPNUZv3J7KGKi/+l0FNo9edaoDLcF2YkaL
         Au+dsqBlH31jltZvwIi7MMzYshn7p+NMZYDnH74jrSJ3jv0ghlElDMi6ClS8owN1DzV2
         iRXRgU26t+xvyaRJ6k3uQKi63tCOG11KOJotthAiitJIEiBIKEyPkfMDIy02txZXmXl9
         50cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=aA0ACDABkOgOlGgUuPI8dN8kQIuwPXcQWSnJt9vs5Nw=;
        b=Xvf9DjTXzV3BnhBxArw/0Oirbo+vE2E48LCHjXv6w0HC0n1y6TMmUIa15eTB8yW9yr
         kvt3aoKvAEdIEff9px3h3NFh1n0w38meknnWhv8r1ktGAFfB0Pzs+qP8nKoM3kfF44P/
         IA0pkfzIoAc9qOf8ZJIBD2xcWMuRbBkxYa0aV7TD59UhiO0l3p26dWom274thJQeiQmE
         E/dPNnVfP9L7GTGIAfDtVQEVraJMdW1Pk7dlRSlRDv7MzzMxawfTplLUvSbQu/jKDQXV
         nDIIda4Be37/vf0QLy3fuRps+PM/FKSvdSm6iTYJBTIATqZvFeDzG+8nUF+dwQvRy5Lj
         K4tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aA0ACDABkOgOlGgUuPI8dN8kQIuwPXcQWSnJt9vs5Nw=;
        b=tg4A0WQWqYIGfxlnQwmwPR88x9lm+lktx5lC/mrLMvMTW3wsF/duOEXSdUX1BufkGv
         HffWwfadkrbR4J86BmXRdlq4E60PKZ8rmuoqPYWAk425cRS7yo0f7jZbOo4CCcNTtjZZ
         CnUmpGoGsc35ACBHohLxJRtiFq4bSn5uOnRmCpB7Ru5Q+Q8ORDdlIJ+QJ4mkpzHvmwKH
         lE/fItT+SBAqztFFr8fkH4FCLaqnB9aCqp7T1A93te3325p5S/cYGIvbh0VWzBJvFwgU
         All9XoedMqeVmROm+sHy6xAwYYJdFMiPwCDq8BII/njTcTQ2ChA4OMTjzDynOEQztkqV
         w/6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aA0ACDABkOgOlGgUuPI8dN8kQIuwPXcQWSnJt9vs5Nw=;
        b=l0bDBZcJZjeu3JlPHdpz3cgMBmPWkrjcd5P+0KdZZOfwW5tjMV/16Y2+FdUjxoqqvB
         oc+R88QzH+MimuQgUKegQA1CKookqRnlK/qoUamYOo3tktc5yIfjCDA5J9YXxzAytIa1
         CWcnPA7iN+51yf9OhDp8GCRQw9WSHSxr8tCGs6I5w9EhgqZQO64JmNQZPLUhl/YO3nAv
         cxtd0+QPoJq770/JxFBQiD4H6P9TObfSuhw20Mh7zA567rqCEdk1JqOZLyo+zd64EVzY
         XlKqkutkXS0hif8oFPwfJ3bFVzoilrODM/uO8YC5BbNBRP4EKcKGY0VmNgWO0opRbMsp
         ET2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530PZVW7GW1o8+A32vwxPmyEjOhdQC6MYZ7AkrQP4eQGVostV7t6
	6IneT7Ee5AIODhjhBij8Gzk=
X-Google-Smtp-Source: ABdhPJyVXyKKeOpr5kGC0GJhntW6u+meNdE5f1/RavgFf9LPvd1I9fHPYXWtYwTrzI4Iw4BefY593w==
X-Received: by 2002:a63:5416:: with SMTP id i22mr23467061pgb.43.1617003752285;
        Mon, 29 Mar 2021 00:42:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1382:: with SMTP id i2ls7711946pja.1.canary-gmail;
 Mon, 29 Mar 2021 00:42:31 -0700 (PDT)
X-Received: by 2002:a17:902:eac3:b029:e6:f010:6ecb with SMTP id p3-20020a170902eac3b02900e6f0106ecbmr27337443pld.37.1617003751686;
        Mon, 29 Mar 2021 00:42:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617003751; cv=none;
        d=google.com; s=arc-20160816;
        b=dpfO8SrUI2uWl4YzjfMLJXh9p8dHevZbXiD+CafF/ngevqhOEMMhC81p2Z5bHKStpQ
         7I23nKVc5BMACdeYQGTDIOWcfAi6inLUW0ecLkSTj4mbB4zzB+ZlPOIsWO+Mi3j53ymU
         tr7l1hSkzp2CUvcy+CNvzoEi796P0P7Wof3e30XpR2ZL2mxc/cuoJzBLo26PzxQ73hbJ
         eov5wiiuu9yt9kV/Z3X+PVUMk/66H7EhtJwl9XZqjvgVO/tkpnmvug4t/twtPgzhTscz
         3b8+BxmdSDgwdNhC1ELz3cZe8kijtCMLEDOme6MCeZGEakUkaNE+v6rup7rc2WDxDZw+
         V38w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=czyQIuXpx14QetOS32bpYmZw4tRR6w+du8FM3Xr2fKs=;
        b=mQWAAqZsksq/UJalL9g+1MRlIs8Pd+h+lcXTBgrdSgCL5Ds+Jv7Na4Ee4FKpl+sXXF
         BWFPBb1nfmCbjdSpdHaiXV0yibupjs2IIwGLGr29ZH4lFlceMt5wa7an4sm5iNONEkEn
         cMZoyfWiwD5tF99Cvo1UauL4N5cdkfEmU3F5kFfuNP+CPZXiQSDlixOG5zun10uBvs16
         ySDY3naIvcv6khnPwHXnW0LRByF0i+dmB67aUqQXUj9aHMCpC0dkOws80FsgVKiU0gLV
         FSCc0gLZmDxJ4a6yUzTLuBLK6AR5spMkPQafiHEPYdt3yiwYnHOwm2e51YdX3j+T0bFY
         aj9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id c3si1059392pls.0.2021.03.29.00.42.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Mar 2021 00:42:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: eD73apI7Xf/UrGaxWNDNthXkUAeZwsH3TG9gkDDKs8hcAcIW4F1FEujDdATGBNJFScGiFb0Jb6
 q7CqisUAsoFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9937"; a="188231556"
X-IronPort-AV: E=Sophos;i="5.81,287,1610438400"; 
   d="scan'208";a="188231556"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2021 00:42:28 -0700
IronPort-SDR: +bj0GNmaDCIDQpC/lE/D6oIyk0dxw6sNBfn5iHu2X2lW/pusr6wPPtsC/IszM9sLDhzvm+pw80
 Hp5BDIdcyAAg==
X-IronPort-AV: E=Sophos;i="5.81,287,1610438400"; 
   d="scan'208";a="417548286"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2021 00:42:24 -0700
Subject: Re: [kbuild-all] Re: [PATCH] riscv: Use $(LD) instead of $(CC) to
 link vDSO
To: Nathan Chancellor <nathan@kernel.org>, kernel test robot <lkp@intel.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210325215156.1986901-1-nathan@kernel.org>
 <202103262325.9ejJuOqf-lkp@intel.com>
 <20210326235839.zgfvmtfxrb3hy6i4@archlinux-ax161>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <39afa2f7-c925-c1dd-669a-6c019b11cbdf@intel.com>
Date: Mon, 29 Mar 2021 15:41:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20210326235839.zgfvmtfxrb3hy6i4@archlinux-ax161>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as
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

Hi Nathan,

On 3/27/21 7:58 AM, Nathan Chancellor wrote:
> On Sat, Mar 27, 2021 at 12:05:34AM +0800, kernel test robot wrote:
>> Hi Nathan,
>>
>> I love your patch! Yet something to improve:
>>
>> [auto build test ERROR on linus/master]
>> [also build test ERROR on v5.12-rc4 next-20210326]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>>
>> url:    https://github.com/0day-ci/linux/commits/Nathan-Chancellor/riscv-Use-LD-instead-of-CC-to-link-vDSO/20210326-055421
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 002322402dafd846c424ffa9240a937f49b48c42
>> config: riscv-randconfig-r032-20210326 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f490a5969bd52c8a48586f134ff8f02ccbb295b3)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install riscv cross compiling tool for clang build
>>          # apt-get install binutils-riscv64-linux-gnu
>>          # https://github.com/0day-ci/linux/commit/dfdcaf93f40f0d15ffc3f25128442c1688e612d6
>>          git remote add linux-review https://github.com/0day-ci/linux
>>          git fetch --no-tags linux-review Nathan-Chancellor/riscv-Use-LD-instead-of-CC-to-link-vDSO/20210326-055421
>>          git checkout dfdcaf93f40f0d15ffc3f25128442c1688e612d6
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv
> For the record, I tried to use this script to reproduce but it has a
> couple of bugs:
>
> 1. It does not download the right version of clang. This report says
> that it is clang-13 but the one that the script downloaded is clang-12.
>
> 2. It does not download it to the right location. The script expects
> ~/0day/clang-latest but it is downloaded to ~/0day/clang it seems. I
> symlinked it to get around it.

Sorry for the inconvenience, we'll fix both asap.

Best Regards,
Rong Chen

>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> riscv64-linux-gnu-objcopy: 'arch/riscv/kernel/vdso/vdso.so.dbg': No such file
> This error only occurs because of errors before it that are not shown
> due to a denylist:
>
> ld.lld: error: arch/riscv/kernel/vdso/rt_sigreturn.o:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
> ld.lld: error: arch/riscv/kernel/vdso/getcpu.o:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
> ld.lld: error: arch/riscv/kernel/vdso/flush_icache.o:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>
> My patch only adds another occurrence of this error because we move from
> $(CC)'s default linker (in clang's case, ld.bfd) to $(LD), which in the
> case of 0day appears to be ld.lld. ld.lld should not be used with RISC-V
> in its current form due to errors of this nature, which happen without
> my patch as well:
>
> https://github.com/ClangBuiltLinux/linux/issues/1020
>
> Linker relaxation in ld.lld for RISC-V is an ongoing debate/process.
> Please give RISC-V the current treatment as s390 with ld.lld for the
> time being to get meaningful reports. We will reach out once that issue
> has been resolved.
>
> TL;DR: Patch exposes existing issue with LD=ld.lld that would have
> happened without it in different areas, the report can be ignored.
>
> Cheers!
> Nathan
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/39afa2f7-c925-c1dd-669a-6c019b11cbdf%40intel.com.
