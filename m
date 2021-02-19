Return-Path: <clang-built-linux+bncBDIPNKNR44ORBOX5XSAQMGQE3FWHYUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 407DD31F478
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 05:29:48 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id f52sf1477224otf.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Feb 2021 20:29:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613708987; cv=pass;
        d=google.com; s=arc-20160816;
        b=pBnUCSfid2YBDdFtuN70dhfEeGA4I5YBaG4EgZSrv23mWBXfVEuoNfeRVp/02xjlOv
         DMssqEe7RjhrC/uwRuA52lTktEjzcu7Colj49MxbZ79uSMwto0xFRjn3TuQUwJO8Mj0q
         ebel0MTIBX+lg9E2MPUDFxb95Bvk2HU94tNKWbBathZ/ozmrAY/5d+SPVVueUbjSFQiF
         kOP49varYao5qmwEVlQVzBuGPP2eXJ0IpomvrPjIxtIyYqqhIzCoBfYbd0l1Yr8XXBuP
         bQ/scjjcpbnjuEgOxrX4LMSTlAMcLTXa+SYZ4BEpJ+cu7NC2MNqJLLcOFFCdKOIuFoNV
         ARnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2cQicGKmrDVy7f3+M4YC+LIpRxTjrLn9CbMcXVRrEes=;
        b=j5+iPqITM2doDwbNMqgp3tIDCaFV7xwHqCuAhi1RKQPLFuGsl7+l/B7a1Yoee8mW78
         xx1Wdt545L86EfPiM1/gQD3TnAmRRjhefgylrC6RIMvyGee/kJFwKFL+zPThgrELt0yy
         h5mjNIqMalvQLOIYCgYlcm+nJHszp302OVwdqHlPKboQxZciIWSjTVjiBJwfVdGdDtRX
         cPT3L6QSx3v3RoDQ9gEOH4m6+wYwfKLIOkO4bTOLn54S95SscgzURSnzWZrJbq9gao29
         K8X1AfI0f8YKMDxYlV5fblWf4RlclgEwRJ2l6xDQZFf9cojEXUWoqQ30inen72vvQYZj
         s0SA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=hixsgKwa;
       spf=pass (google.com: domain of apopple@nvidia.com designates 216.228.121.143 as permitted sender) smtp.mailfrom=apopple@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2cQicGKmrDVy7f3+M4YC+LIpRxTjrLn9CbMcXVRrEes=;
        b=bU0DQpwyFDgnEbqOipIktOYp+4VEymtcAkBG3ZjEEr0UPXaBp5mex2kZqYiQg3y016
         KeGgzMEDTd5N9WUUKuY1cH4m50cZeu4tE3Fam8/AJgJProeIDB8cH/NBI2FapUqzRF8b
         hZSXB4kUYW4XOMiW0dEoTxAQPDtYQ3fPjTmoKNQ+cALL6K3mjL7w8rbNsdwtSUygSDaB
         35MMrTSnkOLbWaHjWKS8HUbZ2lz+DWNxe8HifwHpTvEpKecfIEhI7KQ5FLik9DfR9pig
         um8wBLVSqNqp0z6RFXubIj0q/LYaUyK4QgVuofR8UFXPDydv2PTldGejJih3/dy1Mkej
         uOaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2cQicGKmrDVy7f3+M4YC+LIpRxTjrLn9CbMcXVRrEes=;
        b=iQ3sUUJxVx//8MU4KB/lFQHsAHHyyuLFuU5uMQYNMLTee2T7e6o7FzJ/fXPix7BZ2j
         0tzqFM4Wz1wtK3ekUg2qaem0+GPDBLcgtbt81LFKO/Dn01tes9ixTlU4947JLgizfzuW
         rtZIXljKStO5Xvp3sl+A6ATn0UJ2SYWEENO3eRheSd060R6/GxHaEQahEJoYnHTXqnOM
         J/Kx5yvvXb1PZVqk23a2xdB1PQlCGnQ5WPYwfDetpO/K9LY0yQ8xl0h5l51O3abMK8hl
         e8uSvFZmGg7hdHD0/mMY8yBeWJvmHEMU+jtvvQPn6HMNNf5G22kq+D0s1k+v72ftKQ/V
         MJpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530PhFFs0mkxeC1VyOUVAftriMKdXNe9CVVuKcnSufnXh/2PdCQE
	VsTqQE6eiE7BbvEj7/Dw0bc=
X-Google-Smtp-Source: ABdhPJwxfF9tmlilLlbpPzBS+SprZzUyZt9JEdP5DezuacH/bj0HzJqOgEL/CJKYrDH3yRf+OMuzEw==
X-Received: by 2002:a4a:d8d8:: with SMTP id c24mr4410121oov.14.1613708986827;
        Thu, 18 Feb 2021 20:29:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e751:: with SMTP id n17ls32894oov.10.gmail; Thu, 18 Feb
 2021 20:29:46 -0800 (PST)
X-Received: by 2002:a4a:4581:: with SMTP id y123mr5624636ooa.61.1613708986347;
        Thu, 18 Feb 2021 20:29:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613708986; cv=none;
        d=google.com; s=arc-20160816;
        b=RBXPfA6RY3h0vp/JJ9oDswtBxYEk6+0D8xA7m9uY9Z3JSVvpmc+FYN56jLYk2OTYLU
         7nAOU8t88KFjvW0g5NTDJPx2PRC8gJ2HEvI1Yfi+aJmrvM1b06T5S8x7tGQnA2+jD7mT
         sFfhrLT4M+F+5RMptM6IoJu66DfWiKk8qY16B3FKUe1ALt5SGLQUBNM2wqp6va+anFfW
         1X2GuU6jmNsIbI9Ce7jZTKT3vzQBTFvfb0NHVeiUpTERPa5xofzcrQWe8puELXNdR1I6
         AecEctD+MOulStZjpu85n+KrGOppp5W7G8RApFPEm017oLeQ51wNkYpAntk/KbTX2ulJ
         a0Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from;
        bh=4RazHhYqMl6rmlDW/rVNtyCfznld0Neua58X8WgGEoM=;
        b=cjZ0hjPE0iQA1Ln7uBaXIHvOH81ctYBRRgvYX4F84cRhbrlzXvPYVAr3A87S8IKnnr
         wpDsZGobZhMQiDIpfkyXfaCUJXP15j6kKO7kYoB3TzLEPeTz7MoI4G/ont1kp7qGt3MZ
         6L6Mrp+3S+IkthXj1QXp9kpHAQovzwQo/V0VZ5cSl9Gzu7G4y+8QGxXx+Q9Q36JmXMIS
         S27PomOdsEExxwYb66cG3m2b9be96FGlSzrY4ptc2+0HeSLKsadySRY9LGbljsQzW1WV
         gYD6nchJGdOuNYSFksVot7u0xPAczk6puAlN+5fJOjFT6iMaFaHJnGU1yNpWuW9+CW4d
         BzoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=hixsgKwa;
       spf=pass (google.com: domain of apopple@nvidia.com designates 216.228.121.143 as permitted sender) smtp.mailfrom=apopple@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqnvemgate24.nvidia.com (hqnvemgate24.nvidia.com. [216.228.121.143])
        by gmr-mx.google.com with ESMTPS id n19si722840oic.5.2021.02.18.20.29.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2021 20:29:46 -0800 (PST)
Received-SPF: pass (google.com: domain of apopple@nvidia.com designates 216.228.121.143 as permitted sender) client-ip=216.228.121.143;
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate24.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
	id <B602f3eb90000>; Thu, 18 Feb 2021 20:29:45 -0800
Received: from nvdebian.localnet (172.20.145.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 19 Feb
 2021 04:29:40 +0000
From: Alistair Popple <apopple@nvidia.com>
To: kernel test robot <lkp@intel.com>
CC: <linux-mm@kvack.org>, <nouveau@lists.freedesktop.org>,
	<bskeggs@redhat.com>, <akpm@linux-foundation.org>, <kbuild-all@lists.01.org>,
	<clang-built-linux@googlegroups.com>, <linux-doc@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <kvm-ppc@vger.kernel.org>,
	<dri-devel@lists.freedesktop.org>, <jhubbard@nvidia.com>,
	<rcampbell@nvidia.com>
Subject: Re: [PATCH v2 1/4] hmm: Device exclusive memory access
Date: Fri, 19 Feb 2021 15:29:38 +1100
Message-ID: <1921856.ipnSDt8Uia@nvdebian>
In-Reply-To: <202102191104.8PwQ82Oi-lkp@intel.com>
References: <20210219020750.16444-2-apopple@nvidia.com> <202102191104.8PwQ82Oi-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [172.20.145.6]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-Original-Sender: apopple@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=hixsgKwa;       spf=pass
 (google.com: domain of apopple@nvidia.com designates 216.228.121.143 as
 permitted sender) smtp.mailfrom=apopple@nvidia.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=nvidia.com
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

Apologies for the noise, looks like I don't have a CONFIG_DEVICE_PRIVATE=n 
build in my tests and missed creating definitions for the new static inline 
functions for that configuration.

I'll wait for some feedback on the overall approach and fix this in a v3.

 - Alistair

On Friday, 19 February 2021 3:04:07 PM AEDT kernel test robot wrote:
> External email: Use caution opening links or attachments
> 
> 
> Hi Alistair,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on kselftest/next]
> [also build test ERROR on linus/master v5.11 next-20210218]
> [cannot apply to hnaz-linux-mm/master]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Alistair-Popple/Add-support-for-SVM-atomics-in-Nouveau/20210219-100858
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kselftest.git next
> config: mips-randconfig-r036-20210218 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 
c9439ca36342fb6013187d0a69aef92736951476)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/
make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         # https://github.com/0day-ci/linux/commit/
bb5444811772d30b2e3bbaa44baeb8a4b3f03cec
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Alistair-Popple/Add-support-for-
SVM-atomics-in-Nouveau/20210219-100858
>         git checkout bb5444811772d30b2e3bbaa44baeb8a4b3f03cec
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All error/warnings (new ones prefixed by >>):
> 
> >> fs/proc/task_mmu.c:521:12: error: implicit declaration of function 
'is_device_exclusive_entry' [-Werror,-Wimplicit-function-declaration]
>                    else if (is_device_exclusive_entry(swpent))
>                             ^
>    fs/proc/task_mmu.c:521:12: note: did you mean 'is_device_private_entry'?
>    include/linux/swapops.h:176:20: note: 'is_device_private_entry' declared 
here
>    static inline bool is_device_private_entry(swp_entry_t entry)
>                       ^
> >> fs/proc/task_mmu.c:522:11: error: implicit declaration of function 
'device_exclusive_entry_to_page' [-Werror,-Wimplicit-function-declaration]
>                            page = device_exclusive_entry_to_page(swpent);
>                                   ^
>    fs/proc/task_mmu.c:522:11: note: did you mean 
'device_private_entry_to_page'?
>    include/linux/swapops.h:191:28: note: 'device_private_entry_to_page' 
declared here
>    static inline struct page *device_private_entry_to_page(swp_entry_t 
entry)
>                               ^
> >> fs/proc/task_mmu.c:522:9: warning: incompatible integer to pointer 
conversion assigning to 'struct page *' from 'int' [-Wint-conversion]
>                            page = device_exclusive_entry_to_page(swpent);
>                                 ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    fs/proc/task_mmu.c:1395:7: error: implicit declaration of function 
'is_device_exclusive_entry' [-Werror,-Wimplicit-function-declaration]
>                    if (is_device_exclusive_entry(entry))
>                        ^
>    fs/proc/task_mmu.c:1396:11: error: implicit declaration of function 
'device_exclusive_entry_to_page' [-Werror,-Wimplicit-function-declaration]
>                            page = device_exclusive_entry_to_page(entry);
>                                   ^
>    fs/proc/task_mmu.c:1396:9: warning: incompatible integer to pointer 
conversion assigning to 'struct page *' from 'int' [-Wint-conversion]
>                            page = device_exclusive_entry_to_page(entry);
>                                 ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    2 warnings and 4 errors generated.
> 
> 
> vim +/is_device_exclusive_entry +521 fs/proc/task_mmu.c
> 
>    490
>    491  static void smaps_pte_entry(pte_t *pte, unsigned long addr,
>    492                  struct mm_walk *walk)
>    493  {
>    494          struct mem_size_stats *mss = walk->private;
>    495          struct vm_area_struct *vma = walk->vma;
>    496          bool locked = !!(vma->vm_flags & VM_LOCKED);
>    497          struct page *page = NULL;
>    498
>    499          if (pte_present(*pte)) {
>    500                  page = vm_normal_page(vma, addr, *pte);
>    501          } else if (is_swap_pte(*pte)) {
>    502                  swp_entry_t swpent = pte_to_swp_entry(*pte);
>    503
>    504                  if (!non_swap_entry(swpent)) {
>    505                          int mapcount;
>    506
>    507                          mss->swap += PAGE_SIZE;
>    508                          mapcount = swp_swapcount(swpent);
>    509                          if (mapcount >= 2) {
>    510                                  u64 pss_delta = (u64)PAGE_SIZE << 
PSS_SHIFT;
>    511
>    512                                  do_div(pss_delta, mapcount);
>    513                                  mss->swap_pss += pss_delta;
>    514                          } else {
>    515                                  mss->swap_pss += (u64)PAGE_SIZE << 
PSS_SHIFT;
>    516                          }
>    517                  } else if (is_migration_entry(swpent))
>    518                          page = migration_entry_to_page(swpent);
>    519                  else if (is_device_private_entry(swpent))
>    520                          page = device_private_entry_to_page(swpent);
>  > 521                  else if (is_device_exclusive_entry(swpent))
>  > 522                          page = 
device_exclusive_entry_to_page(swpent);
>    523          } else if (unlikely(IS_ENABLED(CONFIG_SHMEM) && mss-
>check_shmem_swap
>    524                                                          && 
pte_none(*pte))) {
>    525                  page = xa_load(&vma->vm_file->f_mapping->i_pages,
>    526                                                  
linear_page_index(vma, addr));
>    527                  if (xa_is_value(page))
>    528                          mss->swap += PAGE_SIZE;
>    529                  return;
>    530          }
>    531
>    532          if (!page)
>    533                  return;
>    534
>    535          smaps_account(mss, page, false, pte_young(*pte), 
pte_dirty(*pte), locked);
>    536  }
>    537
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org




-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1921856.ipnSDt8Uia%40nvdebian.
