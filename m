Return-Path: <clang-built-linux+bncBAABBOWEYP5AKGQEXH6R7RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB3225C108
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 14:31:56 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id 48sf367227uai.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 05:31:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599136315; cv=pass;
        d=google.com; s=arc-20160816;
        b=tg9cRZvmX1NgDNknhp+G7I/e5Jjvwfq5J/A7GurrZnj3nEWJPUTiWlvQ570vEWKruF
         I39CXjIhKImWsHl3UqZag9y9umIlChKLq0lKrAY+UJOARL2DitHoa1+cSoVm+DjAHYFJ
         K0yLfmdrBw9N+lpBCoE4mUpp3tDfuVWONhSZH0U67rXz8Ok8l5NsI6fnNvTQ7Q7LcoG6
         OjObGe+3zhccyCgbDd22FIGCcLjn63Byk6JcHdji1cgCVsxCRfxHZUcYuqgqZFBTuP7h
         rVJ5mRrtM+avOBVeO7YMBuUEViTXqWX3NbYSVJqFGxCWQp/vdZ3+0HJQhW53Ns5vvo6S
         wMjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=AYR4I/LyIE9oGco1pVCG4sa3t1Efy9JiDBNmc1o3jW4=;
        b=E4afY+Ovj4Tq96e2Ltg3Ojmu7QAUp3jZqzG3DWXcHVhxmF3jwWSZlO/RSuzMJNaSC0
         QBNZ43JTtsjXWNaJVXM+Ay+HpY8kVYqtbVa/Zz7RSV6IHjr8pWkGo2OrzJH6/PltVrYF
         JB5sm9BSFfy5ftXOFlXH0vDII3Wr+8XSanyeSEqLPMcoN6LCT+EvjoYgx0iegG0jeH3w
         MliJOud4hibbvon3n00YwSoIzlM9CLuLaOgPs5ljUc71bJ3E/FSH8a62bVAuOmikcozw
         GEbtHG0YRAQPp/ekdzRg0e7n3mnYNDlxP2ojn2PQNymvNdneBrMnBAJuzA6ipw+wNl4K
         WR0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=JlFHWlfA;
       spf=pass (google.com: domain of joao.m.martins@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=joao.m.martins@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AYR4I/LyIE9oGco1pVCG4sa3t1Efy9JiDBNmc1o3jW4=;
        b=ZtangpCXv+UCXl6hZ7ewoxHfZE+k523VHfyxoeARE/62sP9/uQESmFRLpQkfFu8KUR
         3fHZh/8xuabGofTlOuM6a+0iz2G601ysrM4AZ9CO4McdKWaxifNZ9nbtsY/vKQAO3CuD
         NgfzV50/EkgLHxGpSgq6ONzvIx4OSdlzbEZvNX/A367Gw52f6hPRR5wrVbg0tUUdKFpR
         6hs52BctOpbp6QYIL1u7t9siUcTlH9LUabfW1dvsVDJdPS8g6IdBdl/cO9xN1K/yd/Sb
         MRHBBHv881eK16dYylCDyT+UypihZlGu/oUPQO3OPqb0GucDRYDDkdsUVpR6rgcbZozW
         tHcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AYR4I/LyIE9oGco1pVCG4sa3t1Efy9JiDBNmc1o3jW4=;
        b=LO0tmOLMMgkIGSOdm5orhW/0OsLpr/+LynxZ7njtb1RJsdAqD6i/hPBQckUwzq3I6t
         plKYH3dPbigbwh8iRFIqTdbM3zYVmRJpIi99ZK/Bk3CO9GI+r73dx7JXCNGu14JtnNMe
         0t3hnDsrL5Ozxvhfy1GGSkO0G72aFVV8t2v5JIJjlFDkmvT27qcvoOz2RHvb0BjR01GA
         mOfvAzKTwE8uiQO/PAD7yEF7gX0B5MbYEsEuxWf6D0eLqsLliCkowVr3F320LZEhq8Qo
         2ggpRFv7tGK1JvLoipWLBccDx7tWYOsDzrO+TvRYC1l3co08etyg/gjMuAMxo78O2178
         SfNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mf0+tBLRhKud7LM+VERzyLaUFdtc/o6PUZNKq9hFmDtJaoh99
	g3CpOwaLpSat1GRJYdOUT/Q=
X-Google-Smtp-Source: ABdhPJyedK6IogQufwPNQluAI0mnf+YI5Xt5Lvnr4qLB6c8UYjsvbpHnzxdddFLF+rX1t9r9pvNRRA==
X-Received: by 2002:a1f:320b:: with SMTP id y11mr1020109vky.0.1599136314965;
        Thu, 03 Sep 2020 05:31:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2bd7:: with SMTP id s23ls437567uar.8.gmail; Thu, 03 Sep
 2020 05:31:54 -0700 (PDT)
X-Received: by 2002:ab0:1421:: with SMTP id b30mr850172uae.56.1599136314582;
        Thu, 03 Sep 2020 05:31:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599136314; cv=none;
        d=google.com; s=arc-20160816;
        b=OX/dwBdllczSMI7Ty9xSrGro9Qr6PdAccQBeH3N8hc/2OoJJN+xl7Zf/BIII6Od2Fz
         iR1MIBCxhhOUVXOdzn5CUkezHS9mzp6uC4FpgT1gBIu9faKX0oAUZvuP0kSl+qz2pDhu
         KuOJZeIp02vx2d75ZskktLFtKeKNCM8AxOp3rnDCdlzAqdzVqu4J458oyHDjs34ujGwE
         BjNPuSjZDErhxU0BO6VxNH8+1839GTPo8did2gddXYpoyOw1ZQxUXjLbnulCJFluyLz2
         4tByxv3uf7Digyrz6p10M9Ko/5GhQ7uWO5m6s1swWww6Ma+fkLLhiIy2FwX6likVnNx6
         Gndg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject:dkim-signature;
        bh=IXQNFELdkYR2eAPKHBVjeF0MWzPUgwo4S7sqI8fsmcs=;
        b=qvDwzxEN6O/h9dJUtkFNPVt8mJd5bzB3m/SG4+nCgRwqA5dGZezKq+9Q9Jje3w0bIo
         iiN2gWmLWVBZYuARyf34Jeu9dWMKwwWy7ATQwU3kyc9LsI3fJ8dVyyTpWE00TiuiRJXS
         o5JdoC+qbn4W0gKKFS82RWE5xal4UQvP8WEgyM801Z090pPgqCBipkY6lcA1RuTZyHdr
         IBr4JyWEpvJOHJM/8gEe+/3zPfyMP69ezJctEtXdzlE2ftWGLV4g3tFxkniqNpBYImIx
         XsAkt1/4CxDWvaLrbdVQz49sYQZWWckH23zlIsnNseiNLME/ZKOEOp6XmLOiBBkk9dg2
         ucXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=JlFHWlfA;
       spf=pass (google.com: domain of joao.m.martins@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=joao.m.martins@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id k78si158483vkk.3.2020.09.03.05.31.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Sep 2020 05:31:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of joao.m.martins@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 083CTBPw158727;
	Thu, 3 Sep 2020 12:31:53 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2130.oracle.com with ESMTP id 337eer8faa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 03 Sep 2020 12:31:53 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 083CUw0C163649;
	Thu, 3 Sep 2020 12:31:52 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3020.oracle.com with ESMTP id 3380x9twgw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 03 Sep 2020 12:31:52 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 083CVo80029259;
	Thu, 3 Sep 2020 12:31:51 GMT
Received: from [10.175.217.242] (/10.175.217.242)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 03 Sep 2020 05:31:50 -0700
Subject: Re: [linux-next:master 2890/4758] ld.lld: error: undefined symbol:
 phys_to_target_node
To: Andrew Morton <akpm@linux-foundation.org>,
        Vishal Verma <vishal.l.verma@intel.com>
Cc: kernel test robot <lkp@intel.com>,
        Dan Williams
 <dan.j.williams@intel.com>, kbuild-all@lists.01.org,
        clang-built-linux@googlegroups.com,
        Linux Memory Management List <linux-mm@kvack.org>
References: <202009031338.VZC7AOSw%lkp@intel.com>
From: Joao Martins <joao.m.martins@oracle.com>
Message-ID: <aaae71a7-4846-f5cc-5acf-cf05fdb1f2dc@oracle.com>
Date: Thu, 3 Sep 2020 13:31:47 +0100
MIME-Version: 1.0
In-Reply-To: <202009031338.VZC7AOSw%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9732 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 phishscore=0
 mlxlogscore=999 adultscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009030116
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9732 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 adultscore=0 spamscore=0 mlxscore=0
 phishscore=0 impostorscore=0 mlxlogscore=999 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009030116
X-Original-Sender: joao.m.martins@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=JlFHWlfA;
       spf=pass (google.com: domain of joao.m.martins@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=joao.m.martins@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 9/3/20 6:49 AM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   4442749a203151a319a5bb8d0b983b84253a6931
> commit: bd295a352cfa24e5110a53f978edb48b7c21ff8f [2890/4758] ACPI: HMAT: attach a device for each soft-reserved range
> config: x86_64-randconfig-a002-20200902 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 224d8153b53b16cf535ea1a55afdfe1ec5b1374f)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout bd295a352cfa24e5110a53f978edb48b7c21ff8f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> ld.lld: error: undefined symbol: phys_to_target_node
>    >>> referenced by device.c:84 (drivers/dax/hmem/device.c:84)
>    >>>               dax/hmem/device.o:(hmem_register_one) in archive drivers/built-in.a
> 
This would require the proposed fix below the scissors mark.

I had reported this failure before, but it needed an adjustment so I'm re-sending it.

--------------------------->8----------------------------

From 622c1297b7d76a319b07a29192fe9bfe5c2b6b7c Mon Sep 17 00:00:00 2001
From: Joao Martins <joao.m.martins@oracle.com>
Date: Tue, 1 Sep 2020 08:06:35 -0400
Subject: [PATCH] device-dax: Require NUMA_KEEP_MEMINFO for
 phys_to_target_node()

phys_to_target_node() and memory_add_physaddr_to_nid() are only defined
with both CONFIG_NUMA=y and CONFIG_MEMORY_HOTPLUG=y.  Oherwise we see:

drivers/dax/hmem/device.o: in function `hmem_register_one':
drivers/dax/hmem/device.c:85: undefined reference to `phys_to_target_node'

lkp also reports such build failures:

ld.lld: error: undefined symbol: phys_to_target_node

X86 is a special case in which both can be defined without depending on
MEMORY_HOTPLUG=y. The other case is powerpc (for
memory_add_physaddr_to_nid) but like ARM64 dependencies, the
arch-specific override requires CONFIG_NUMA and CONFIG_MEMORY_HOTPLUG.

In all cases this ends up depending on CONFIG_NUMA_KEEP_MEMINFO to
signal the presence of phys_to_target_node() which is what
CONFIG_DEV_DAX_HMEM_DEVICES should depend on. Additionally, the X86
arch-override is not selected unless X86_PMEM_LEGACY=y. So on
CONFIG_DEV_DAX_HMEM we select CONFIG_NUMA_KEEP_INFO ourselves if both
NUMA and X86 are set.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Joao Martins <joao.m.martins@oracle.com>
---
 drivers/dax/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/dax/Kconfig b/drivers/dax/Kconfig
index a66dff78f298..567428e10b7b 100644
--- a/drivers/dax/Kconfig
+++ b/drivers/dax/Kconfig
@@ -35,6 +35,7 @@ config DEV_DAX_PMEM
 config DEV_DAX_HMEM
        tristate "HMEM DAX: direct access to 'specific purpose' memory"
        depends on EFI_SOFT_RESERVE
+       select NUMA_KEEP_MEMINFO if (NUMA && X86)
        default DEV_DAX
        help
          EFI 2.8 platforms, and others, may advertise 'specific purpose'
@@ -49,6 +50,7 @@ config DEV_DAX_HMEM
          Say M if unsure.

 config DEV_DAX_HMEM_DEVICES
+       depends on NUMA_KEEP_MEMINFO # for phys_to_target_node()
        depends on DEV_DAX_HMEM && DAX=y
        def_bool y

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/aaae71a7-4846-f5cc-5acf-cf05fdb1f2dc%40oracle.com.
