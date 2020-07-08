Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZ66ST4AKGQERBP3SCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id BE25B217D08
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jul 2020 04:28:56 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id b25sf6555380uaj.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jul 2020 19:28:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594175335; cv=pass;
        d=google.com; s=arc-20160816;
        b=UiDKuSjHNkaCRXqT6QunJo5I8KmF+2TYBVfTkHSqr0w4QbjtmaTER3eIykn8eezszb
         Zvh4A/yTDK22O4mKPE62eF0nhCezDDT4j3cvpOVZdv8kkxAYwYCX6mbpZsxDNwx1RPum
         RHsMLB5xTYNFbUgSYFcuNd8V4wtGEhS29bjep3zEFrD8RUPS4VOM9WapsSpotYUFbJjh
         mmJf1BGVHwS/VxvdLq5jHMmqrTRbQqRkkJmb5YtNqBR7tPvwKMhNVy0ROTlC47RtNy2b
         KuCejBb1xdds1d0h2wXbcLMXO/mHN9oCeqOMuyKDd8XcyMQ9boYitS9yKf2RiAr2+PA3
         9ZHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=dAwK+TzEl2/EzRLn72VTVn4jxxwdGi+OXSiuDiiV+4c=;
        b=fnLgTyF05XMVmRAKAojbG+yJx4QZElXo76Ip8DnTUbbPPkPdlGpUkuMBo4f7YH8Ono
         AdQdoeTl0B8BnuU1zFATEfCwjggKMF/dDoU5JwydF9aFMKYUINQ69ImwRtCoi4sO4+oN
         FhACJkkjnm6LMODQQW52Hg0rSa/3l+u4E96DBH9T8XIG6tjjPsCdQYzeXLO5mIhQVn5b
         QwLfwAKsKLTL5x2KdTCRlwR8HRKG4pzvhlRDLz1oXnUMiV1IvzlrF/IJBrB7ogyJr2o9
         d2ngd1wNe1E6jgEYyuMctVAmpQWXS1/l49hzSdaOmbLWgA/viNNDnIHi++oBKIOdYsfz
         KsBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dAwK+TzEl2/EzRLn72VTVn4jxxwdGi+OXSiuDiiV+4c=;
        b=ifZaKwZEDVVb1QSGDke5w7GGAKA1c8cGJdN0AOsWMkLMoZ0y9dxDWGyZ3hGozvExC2
         dRmNsSUC8W+IpwLNkLj8KMXPZyfFOOTsWTF7Gi6JsR5JwTAvA+BxNKWwIlDYmv6yuzN8
         JDoARZQgcW3b07UDQ4Aoju2+wlbVn1ageZTu2FdPpEaJYvhCBiHIfflj8Ib5yFbnSvPb
         8sQ8wzCZNz0PSnUfrbeOg9h4IJMyrpm6RMGYTTdo3+bVRTg83mgDlZ8B1Z0yqhIJG2Ng
         z44GX3WENojvHHCgPrRpm1c88QePi+v53drYGcFycjpEG0mpBCI52/L1WHCbhwgL86wL
         mVMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dAwK+TzEl2/EzRLn72VTVn4jxxwdGi+OXSiuDiiV+4c=;
        b=G7SFSyAE30xpJbTOIMesau65kM8m1ObRGrIaRGn7/KeKjNQjqBde3p8iPRpUKL7SgQ
         cOSKw6b5VBPuZHvbZeArYJXp+X3/8KHryQR857fJdNjnv9V1QvRWg4YpGhUD4kuD7Wcd
         IAZJ/u5MpUBtp583ZG0wVJydWDUXNQmV6upYi4lNjktqUZcjc8SpZosULnyR106DwTAE
         0g7k6dtkpT0CJpgMWXhSnwy7rfs3JQldEFAKXSQNiWBhGIQbvKZl3UXjdikplMwiWlIP
         vXrabhSFiDQhdLaPsQ1azVfBUO/Ma4mmKDucAlqFlNlMZiWqJXxXlCMyYlxSZW341bDz
         lQdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wSdyPP/e7N6gGVfOcU3x4thiWPQkGsIA5a+IjbyigWqMBuxjg
	UjDDkpLEz2XBWFSxtIhhAsY=
X-Google-Smtp-Source: ABdhPJxsejYiqIH8ullVuji+U0nmMYDnWYhiFkLNBX9dMD6dfQCvhOFvGby4BKW3V8DH0g0QDimUfg==
X-Received: by 2002:a67:330a:: with SMTP id z10mr27043442vsz.33.1594175335546;
        Tue, 07 Jul 2020 19:28:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:b604:: with SMTP id d4ls7068vsm.4.gmail; Tue, 07 Jul
 2020 19:28:55 -0700 (PDT)
X-Received: by 2002:a67:8cc7:: with SMTP id o190mr41628034vsd.168.1594175334954;
        Tue, 07 Jul 2020 19:28:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594175334; cv=none;
        d=google.com; s=arc-20160816;
        b=hwEFsXuwMg9Phpw3Br8yA+fCtTf3/CK1Sg1Z7JFYZeZK7je4paW13dW4ERiQRuX2FB
         VT5n2OO13w1XrsniRz7oLVL+0v1FdMcLuqCXwMXOQoIPi0T721azPdrawba11gySmBqu
         s7q+hnAdkKMzmFtF+ftkqS5T0z3OPwaa2hpWps13WJCt4xxg8n1uaiNlLryjiasfwAB7
         2jsGkD526yHz0WFHAI5thbChBG4Jc2x6KIwAe4aWqURye+0wDF3x16HbBkpY9TA14Liz
         +qBGCWHBuAVbNlLjVkyPAmbo5r0NLn6GDedTkV6MmiJSBwbE3D//EgJOw5R2BuZ6mgG/
         rbCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=4Uc/f1qzAYGc82DqPVEtTbqYktz0txZSFYleHMQOP8g=;
        b=rS9gAQaZ/6a1z2Vdw2k/NPGGKKZ3yfPEcCQk+QHUoOGCyAalexxiaaE1wtzRZuvsZ/
         WSZZVrfWHZ5hcWVAyTCEl+r0HNSkfY0YqR+rxHM3AeRvQ6auIX5tDg369uS2HT5Yv5H6
         W0OUZTk2x3Ood3ZiYH0OqkXirod4P+XFAnMa/x4c5JFRE3Cjbd0jkjKPpEI4NpdAmKB/
         HpJT6vKafUOmT4+uK0o961RS5lASKDUNhqS0pAoaFBGIcdNDY60INDsyp/omxNTKiqOA
         nmohEv6UKtk6AjBaAQOB9e8sPSqd5KzuQxjaHs0HOitPZ23TWmyIo36vcoYRCl7lS0ow
         337g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id e10si138535vkp.4.2020.07.07.19.28.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jul 2020 19:28:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: hn7C9UPKu7pMTaYO9u1nUSLE11KyfKxMiSqPX87PcJku0+Ib/de6z05pg+x8tPU5ZZWrx8ce6c
 BjdiBanXLMlw==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="135962635"
X-IronPort-AV: E=Sophos;i="5.75,326,1589266800"; 
   d="gz'50?scan'50,208,50";a="135962635"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2020 19:28:52 -0700
IronPort-SDR: bOAD1+xEx2uaD28ssPCV6/exDsfxKfRYr7gXGFJO/IZL9RTIkKRsL1OaL5jP2gIFI31x22tnrj
 XwL7g3XHUfVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,326,1589266800"; 
   d="gz'50?scan'50,208,50";a="283646967"
Received: from lkp-server01.sh.intel.com (HELO f2047cb89c8e) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 07 Jul 2020 19:28:49 -0700
Received: from kbuild by f2047cb89c8e with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jszpJ-0000UY-3L; Wed, 08 Jul 2020 02:28:49 +0000
Date: Wed, 8 Jul 2020 10:27:50 +0800
From: kernel test robot <lkp@intel.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: [linux-next:master 2646/5954] include/linux/sched/topology.h:237:9:
 error: implicit declaration of function 'cpu_logical_map'
Message-ID: <202007081044.aVN7MH37%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FL5UXtIhxfXey3p5"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   5b2a702f85b3285fcde0309aadacc13a36c70fc7
commit: 1bc138c622959979eb547be2d3bbc6442a5c80b0 [2646/5954] PM / EM: add support for other devices than CPUs in Energy Model
config: mips-randconfig-r012-20200707 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 02946de3802d3bc65bc9f2eb9b8d4969b5a7add8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        git checkout 1bc138c622959979eb547be2d3bbc6442a5c80b0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:74:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:15:
   include/linux/llist.h:222:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&head->first, NULL);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:119:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(raw_smp_processor_id());
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:176:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(cpu);
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:210:25: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpumask_of_node(cpu_to_node(cpu));
                                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from arch/mips/kernel/asm-offsets.c:15:
   In file included from include/linux/mm.h:32:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   cmpxchg64(&buddy->pte, 0, _PAGE_GLOBAL);
                   ^
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:15:
   In file included from include/linux/mm.h:32:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:11:
   In file included from include/linux/node.h:18:
   In file included from include/linux/device.h:16:
   In file included from include/linux/energy_model.h:10:
>> include/linux/sched/topology.h:237:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(task_cpu(p));
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
   include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return cmpxchg(&vcpu->mode, IN_GUEST_MODE, EXITING_GUEST_MODE);
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
   include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   arch/mips/kernel/asm-offsets.c:26:6: warning: no previous prototype for function 'output_ptreg_defines' [-Wmissing-prototypes]
   void output_ptreg_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:26:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_ptreg_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:78:6: warning: no previous prototype for function 'output_task_defines' [-Wmissing-prototypes]
   void output_task_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:78:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_task_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:93:6: warning: no previous prototype for function 'output_thread_info_defines' [-Wmissing-prototypes]
   void output_thread_info_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:93:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_info_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:110:6: warning: no previous prototype for function 'output_thread_defines' [-Wmissing-prototypes]
   void output_thread_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:110:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:181:6: warning: no previous prototype for function 'output_mm_defines' [-Wmissing-prototypes]
   void output_mm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:181:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_mm_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:242:6: warning: no previous prototype for function 'output_sc_defines' [-Wmissing-prototypes]
   void output_sc_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:242:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_sc_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:255:6: warning: no previous prototype for function 'output_signal_defined' [-Wmissing-prototypes]
   void output_signal_defined(void)
        ^
   arch/mips/kernel/asm-offsets.c:255:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_signal_defined(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:334:6: warning: no previous prototype for function 'output_pm_defines' [-Wmissing-prototypes]
   void output_pm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:334:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_pm_defines(void)
   ^
   static 
   22 warnings and 4 errors generated.
   make[2]: *** [scripts/Makefile.build:114: arch/mips/kernel/asm-offsets.s] Error 1
   make[2]: Target 'missing-syscalls' not remade because of errors.
   make[1]: *** [arch/mips/Makefile:397: archprepare] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.

vim +/cpu_logical_map +237 include/linux/sched/topology.h

36a0df85d2e85e Thara Gopinath 2020-02-21  234  
ee6a3d19f15b9b Ingo Molnar    2017-02-06  235  static inline int task_node(const struct task_struct *p)
ee6a3d19f15b9b Ingo Molnar    2017-02-06  236  {
ee6a3d19f15b9b Ingo Molnar    2017-02-06 @237  	return cpu_to_node(task_cpu(p));
ee6a3d19f15b9b Ingo Molnar    2017-02-06  238  }
ee6a3d19f15b9b Ingo Molnar    2017-02-06  239  

:::::: The code at line 237 was first introduced by commit
:::::: ee6a3d19f15b9b10075481088b8d4537f286d7b4 sched/headers: Remove the <linux/topology.h> include from <linux/sched.h>

:::::: TO: Ingo Molnar <mingo@kernel.org>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007081044.aVN7MH37%25lkp%40intel.com.

--FL5UXtIhxfXey3p5
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
zG/DKBP+AXioMVUuuwEA

--FL5UXtIhxfXey3p5--
