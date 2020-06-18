Return-Path: <clang-built-linux+bncBAABBXGIVP3QKGQENOP2AUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C081FE9A1
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 05:49:49 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id d23sf2080151ooh.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 20:49:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592452188; cv=pass;
        d=google.com; s=arc-20160816;
        b=XhDYIYR7/WL+R9I9xJQdBYMTNXVpBRBA9KST43ucyfGYS3scalYbyOKJ+8eXIaKms4
         dV2Wl2ZljwX4W5n6nDh/UnslttEtNPZU0CcXWNmPS91FE5hyM7l92g7HMMoUPoFBdKci
         EXgtYvRZeD6CV2yRHqKdIFLFZdzz+/O/r3Bq+9ofcDOOcsvGmxvFpayoQ5OkRDVdzsth
         H0RuXLf0rPmH6CxKBS4EgYh3maYoYIJ/oYZFWYs5fGMo+YnaFgAWkMkwGHUA9vdlVm6a
         yplGE0/x+ssTNOTxXvrZVBdhIPMXOV/FWMMQ6fVEa68SR8HEXvmU2uxa8brWo3Qlqa4R
         5hOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=A4RxfP2ZJDB0ohrpRezXKzutWYHqGSl12/SqFWgMO+0=;
        b=bYmywZyTWtG+dKu7loG0VO4SnnDmDNe6ZmUdy1VYZ/M1Y+FobkK6MnBNucCN7a56VL
         IcdH46K21dZfcOkkR0OwDbka6ejpTEJhxRMz5sSM83UHgEHsERlegjjuZGjYZWYQL4y4
         HxfimzEpbgT3Ur/CjQWm3n0eGWKPF5HeMrwnnulrkbCU4HlLUC22oEhb1H2Hrr4JdDqA
         5hAIdG4ETEPB6SkWfcIRSRhiY9RSoBOo9EYh+wse+/GFiteABms/TQUiBJVebZSwhwXv
         7Gb3J1ZeQ8aXN3LrTRkm6woItzPDelw25+wd0cGkdnOp+AOMqBrt3+XmvRxIv2tx/xDH
         BIwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=nixiaoming@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A4RxfP2ZJDB0ohrpRezXKzutWYHqGSl12/SqFWgMO+0=;
        b=cbZA1Bw/zPxMg6ym/efa9oJwBO3r7WGyUZegvk/fQnk5pXDe0DtUQ/P6g5ek6ZwRAi
         HRHhNZKrPHhLe3RWasCEmYBx58diK8QFz8REbDbwl+jwzdmyqlX80+uWO17pTsHWg40U
         3K1ox7EkCrTC5j2+OsDFTSwUd0Xayx6flUw89q/GFFyM/eyinmbxQlI+xq1Zt6dLH2Nj
         lIuy1xgMBDIbaUxQKFYa2bSgyYl8y3k5RqSMaUsxmD9kdUoZpG4E60Tm3pBeFYqXv5cI
         IEFF9MwGmca3zEQeGkYr1VcD345Z/HWdwIzmnxus47O+vFlSFzw6nRUKoNI2UNdVjKEC
         rQyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A4RxfP2ZJDB0ohrpRezXKzutWYHqGSl12/SqFWgMO+0=;
        b=bm6746lz2t2HQ2OnCVL8yI14qkQ7gsaRanANd35VN007t0LHG2oQAK30Zwjfap75/s
         L26wA4mrxpuetARQhrByn9alXX8eg15ozOFN2MC49fNr7DNxaWNb3v5vP5NScq6vOi0U
         JmXNr+msqXJfBm5TJrmCPO7ZkMYiNk10VXxKSnmzWSKvJT/8eyfFjBzMSgBGrS8LSeCN
         olsSkojdtv0rvp+hRu+8wPsFqr+FiqxaKZj+qaWK4KE5o0IpDNNxj8YIjG47yh0lC+aH
         hBch8GHXS8zr/dCRvMJKx+OTypJ8AKZNbTP/3aZLJz6jake7Ftgg41TmDRub1jUxW8Ru
         1LAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531czUv8iemhKrAtVNAB9lBQgPF/aYnGmgACnp59BdujK6VL9xOL
	WQA+ElCDA/5kG8YE+Voc3C4=
X-Google-Smtp-Source: ABdhPJzUANXATQAqSU+laazg9BAdnQRAzQvCCc2UMHU20HM5Todk7iz+dpOVkO2oNQ93O/+aBk8ujw==
X-Received: by 2002:a4a:a20b:: with SMTP id m11mr2367757ool.20.1592452188355;
        Wed, 17 Jun 2020 20:49:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2116:: with SMTP id i22ls1003633otc.1.gmail; Wed,
 17 Jun 2020 20:49:48 -0700 (PDT)
X-Received: by 2002:a05:6830:1510:: with SMTP id k16mr1970113otp.203.1592452188069;
        Wed, 17 Jun 2020 20:49:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592452188; cv=none;
        d=google.com; s=arc-20160816;
        b=m2QHgEUDY/YaPFxB1FTfbX/rVGcGefn5Z6qlIiQGvSKuHEuybQiXIa384Z/dKgJtki
         1gVnelrp2pOd1qEf1K/5wmrGwUfQGugT/L4RZnR2GHtSPDvSUsus/5sHZ/4UhjhC938M
         jDvFxoxdT/C3EJD1uWkbdYbaOkOhExVOI8SF5pVGTT11Z2d6IxkUBf90ezkD0b8wSBZx
         nNMzRiB0AZo/B2Wp9y7AueHCQBqokIGipNvP0359Ey6phrThpnZl//Ogut5E+FAF5iWF
         lMQ0PGSUiaU9cp29CcRgjWTMJXFCZ8cLPpXpKtcGY/Gwryhb1u+5Ygaqj9m7yfqXjGlM
         tJng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=R4SuVG59fI8Jb/VZkWAlaQcj9dbpgw336eF+JMYU2hM=;
        b=dUEYnB2Z7T1hl6asq/1rpYTn5XJWqYw0ISAIDBgWga+3UmDe6awQEhu+3QyPDlcFmg
         rnxCOPPckLcOSJ06TMrrzixL9bkrW9DqDGIQJplesFRXZYuPpHPPEcmlZumosDgc5gyw
         4q2CEI/zTRw5aRcc6unWRBsJRNHN0XvpIiHCC3Kz4MRJvcfoCW8qz7snGtM/kZLjtZ+b
         2Un/4RjMTwZ/7Y8Mg+MWQ9n+xjW9xuQCSHtaK5JUqVIHZqLWBKbXa7Zwm0bHrR6E6nkC
         BRluQs7UfaqWAtHF5XWsLLK7ANtVKzFK46VlVyLV89lm1OeA4XoCByDrQgN9T8ncTtWH
         k3mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=nixiaoming@huawei.com
Received: from huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id l9si80837oig.0.2020.06.17.20.49.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 20:49:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
	by Forcepoint Email with ESMTP id 992A6387EC464799B3CE;
	Thu, 18 Jun 2020 11:49:45 +0800 (CST)
Received: from [127.0.0.1] (10.67.102.197) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0; Thu, 18 Jun 2020
 11:49:41 +0800
Subject: Re: [PATCH v3] All arch: remove system call sys_sysctl
To: kernel test robot <lkp@intel.com>, <rth@twiddle.net>,
	<ink@jurassic.park.msu.ru>, <mattst88@gmail.com>, <linux@armlinux.org.uk>,
	<catalin.marinas@arm.com>, <will@kernel.org>, <tony.luck@intel.com>,
	<fenghua.yu@intel.com>, <geert@linux-m68k.org>, <monstr@monstr.eu>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>
References: <20200616030734.87257-1-nixiaoming@huawei.com>
 <202006180654.jSTYfmWu%lkp@intel.com>
From: Xiaoming Ni <nixiaoming@huawei.com>
Message-ID: <33c2ec0d-6050-5c1b-6f84-59f0b3f06404@huawei.com>
Date: Thu, 18 Jun 2020 11:49:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <202006180654.jSTYfmWu%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Originating-IP: [10.67.102.197]
X-CFilter-Loop: Reflected
X-Original-Sender: nixiaoming@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of nixiaoming@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=nixiaoming@huawei.com
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

On 2020/6/18 6:33, kernel test robot wrote:
> Hi Xiaoming,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on next-20200616]
> [cannot apply to tip/perf/core arm/for-next tip/x86/asm linus/master v5.8-rc1 v5.7 v5.7-rc7 v5.8-rc1]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Xiaoming-Ni/All-arch-remove-system-call-sys_sysctl/20200616-130918
> base:    27f70ec4fa0e0f419031f1b8d61b1a788244e313
> config: s390-randconfig-r005-20200617 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 487ca07fcc75d52755c9fe2ee05bcb3b6eeeec44)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install s390 cross compiling tool for clang build
>          # apt-get install binutils-s390-linux-gnu
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>, old ones prefixed by <<):
> 
> s390x-linux-gnu-ld: arch/s390/kernel/entry.o: in function `sys_call_table_emu':
>>> (.rodata+0x1288): undefined reference to `__s390_'
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

Sorry, I don't have a s390 compiler locally
Can you help verify the fix patch

Thanks
Xiaoming Ni

----------------
[PATCH] s390: fix build error for sys_call_table_emu

s390x-linux-gnu-ld: arch/s390/kernel/entry.o: in function 
`sys_call_table_emu':
 >> (.rodata+0x1288): undefined reference to `__s390_'

Fixes: 36965c4e82b6bc33 ("All arch: remove system call sys_sysctl")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Xiaoming Ni <nixiaoming@huawei.com>
---
  arch/s390/kernel/syscalls/syscall.tbl | 1 -
  1 file changed, 1 deletion(-)

diff --git a/arch/s390/kernel/syscalls/syscall.tbl 
b/arch/s390/kernel/syscalls/syscall.tbl
index f17aaf6fe5de..bcaf93994e3c 100644
--- a/arch/s390/kernel/syscalls/syscall.tbl
+++ b/arch/s390/kernel/syscalls/syscall.tbl
@@ -138,7 +138,6 @@
  146  common    writev                  sys_writev 
compat_sys_writev
  147  common    getsid                  sys_getsid 
sys_getsid
  148  common    fdatasync               sys_fdatasync 
sys_fdatasync
-149  common    _sysctl                 sys_ni_syscall
  150  common    mlock                   sys_mlock 
sys_mlock
  151  common    munlock                 sys_munlock 
sys_munlock
  152  common    mlockall                sys_mlockall 
sys_mlockall
--
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/33c2ec0d-6050-5c1b-6f84-59f0b3f06404%40huawei.com.
