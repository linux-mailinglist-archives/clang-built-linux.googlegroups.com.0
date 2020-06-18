Return-Path: <clang-built-linux+bncBAABBG4ZVT3QKGQEDPUMIJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 003211FEB9D
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 08:41:32 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id ge4sf3257650pjb.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 23:41:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592462491; cv=pass;
        d=google.com; s=arc-20160816;
        b=fyBFZlEDdNP3quFBBkYJ0f+RyduB6caKlfWRhUHt8JP2j1PXtZICJcoJYzW6j8wRlM
         9QgByK5M0zb4nvfXd2KhFF6Sk1gsrhlgYz1nIR6oHY43OO1ID/yrZaPjxwe+ubvnahYu
         +sl+ITz0Gdl2lYcHNyeHGuSfFkn7v4BQp7jrHBLxfplqngnIyeYBskNfjKG8Y2X3EQyT
         fI6MqZfPVkiwnOP/IKPKwBwuNyUKOShoA6tsohVDOUsZ9WU5n2YXeCODSMGX25UvJILd
         Z2SfOIQEqAVL/Fzmoy96sW3jDjIA/udqxMadvMqPBs6L92N74s9HszrPdVgJSJQvkJ+9
         7XGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:references:cc
         :to:from:subject:sender:dkim-signature;
        bh=MdVYqT+8a8C05tNQMTHRzYtQSNfDIo8nDvdULjqugHk=;
        b=NWlAfEWLkVOUByB9runOgfoRAFS7fWsd83Y1mqwtSPtU7D1VIuBgfuEBXmehI+b7D+
         rVWHdfzyw05dpeUNpExeB7RKjviMb53/KgnZd+Hpu353xgqUDawIEmcFeuQOTxULT1aJ
         WoLKBdcVlL5usuSqQA9QtWifX9e4sTgaKXmiPi/pfmZwIS+DujIhnO31OWodUTROfYqn
         fm+FDXAsQfGNG8fdhlLvEX+AxdNS6vx9TEK5xfPlciQai/E72gckeyE2pRF6jqhegBZm
         WYb8JNMlpMHkZzYsRuuww4V0uxyuUa+RHU1SqlqIe3SXwzjoZaNbbMvU89vWy0NM2lap
         Kvmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=nixiaoming@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MdVYqT+8a8C05tNQMTHRzYtQSNfDIo8nDvdULjqugHk=;
        b=LQUO0t2J7NdOXek8WLCJHVE7y5NxhC5YRjLh2vCSxD6ca03aPTR82sFGYW8YJvTiuM
         uhRFatwv2B4o08U0voiM6p7MEAuQ6KZ1w/FUbPBR0Vl2xDxe9UqgCBD4Wp6oS6iEig//
         fwcy3UP1VLHHaMEtxUqoiBZ1GEcO8VIzcOuXauQ9qbG4H4kOYUKDdGWkvqexjd5SH4j+
         P/lkjxhKCRtB+hLekOCGtlpBkb7k3e1PunuSWboYFG8W3JmvrI2e7rt9BjEjH5qyfOe1
         9itTWqy6LMUwK/dlnJ0SrlEsQ99mbsJ6sFYZpLSNjkQCN4DJj2hGcz6oMFLDA/ex6amc
         tZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MdVYqT+8a8C05tNQMTHRzYtQSNfDIo8nDvdULjqugHk=;
        b=MmIT3b+W7jN6NTvsdNvs4ShmprPi5fmnP2zuqC+CsxzaQPPDXZsPf77KWP7SKIJLGx
         HD9Kk9IO2yIgF8roGrQZUxvjBo3Sw6ThYVDB5q2/LcsPMoqm7sjti61XIXJRssnO3lvf
         hiXXPJ0maxKo1wdyzj1vi1wrly9hi1T3h/B7weJ1qqIdxOYtYKUaJmsyy6aoxj946gIS
         I92QTKdm5M8xzI7W2x1jMvawsqj/QXxNrFzqkkGVj1H/zM9gvqu458BTT6M1D/EyK7xU
         /Q9nn+nmrpnvq16P9W9Ae3F0pTCf3RtvL1deqcmRs1o2PVVIKIJLq4YW0KrSArfzbI8e
         sIgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MFTP9gkWCug/emMN5FMsJAxU86Kx5BHe509as2DhmRWB+cjdO
	/2xqUSKyRomRzE/5VGq3Y6E=
X-Google-Smtp-Source: ABdhPJyPEQ6Z6N9SEejQBOJi0fPNHrWtp9riNlW1Iilhkk+63RN0eZR2uxiFOQ5ueHqBPht8vLDrZg==
X-Received: by 2002:a63:f042:: with SMTP id s2mr2138243pgj.4.1592462491440;
        Wed, 17 Jun 2020 23:41:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:147:: with SMTP id 65ls1842351plb.9.gmail; Wed, 17
 Jun 2020 23:41:31 -0700 (PDT)
X-Received: by 2002:a17:902:b942:: with SMTP id h2mr2429420pls.163.1592462491082;
        Wed, 17 Jun 2020 23:41:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592462491; cv=none;
        d=google.com; s=arc-20160816;
        b=e6VrXZqYtnT02wDH6kIJ1ytpfAn4kIQlYlMwTVEwYEaBbwd0XIEtT6IVr5NYlAKyJ3
         fsobzS7Y9Lj9OOMkTTsPUs6CK9D+99ZnwD9zapgPXGEnLg196Z6TsGXMRmp3OUBVsGbl
         qOM3AlqlUFGq35ihKytnarlS7SLJvDpDQcHzbBHulCbAdO0DXvJMcYVtJX0MxFj9wNEC
         ob7yvGVng5GYH+PtIP29L49HKG61PphiUy4O9rG3nqAdpNPDNrbN4ygSZx3szI2cv8F2
         p0idbnH4bf33TLNRFxoo2O/Wqk7f8pCPobrOjrBoDRkIBMw+6ASj15bBdaLtDmm4cw8k
         Io2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject;
        bh=7c/hhPLdwhx/8hSuflh/xkkrMN/GIrNhwxJiaYYLhLs=;
        b=sz7lIknQLB5cp4kcgyyG4U2bSF9QV8QDbl0GDhGkpHiax8bSLhEYQmqMGmGM7l8020
         DoGbz6HCeC0HBz9JdILNdbrVRfIwailRhH5PqfcddWiO79L0DIyZHc9zYhfki8YT7Kw5
         Op8RmBOgFVjQ+inKscXHSlFMXyo+00FSfmoeRni4TZXX5/TafyHXg3WQGybKm/9Ba0c+
         Kl0PEj5qFK0TKDHE6Xiy7bmtyS157TA6cucKSy/6HKTtckheDFxFDFt/s4oaDPgJZ8sa
         egEF5S4cR1jdRT8lnFw00eKslys4sTVej4CZsKTK7K8qLfAxuejvlNfLtfQNZAl4w5T/
         p+yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=nixiaoming@huawei.com
Received: from huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id k4si149766pgt.1.2020.06.17.23.41.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 23:41:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 3DF30D20530720F33DD2;
	Thu, 18 Jun 2020 14:41:29 +0800 (CST)
Received: from [127.0.0.1] (10.67.102.197) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Thu, 18 Jun 2020
 14:41:27 +0800
Subject: Re: [PATCH v3] All arch: remove system call sys_sysctl
From: Xiaoming Ni <nixiaoming@huawei.com>
To: kernel test robot <lkp@intel.com>, <rth@twiddle.net>,
	<ink@jurassic.park.msu.ru>, <mattst88@gmail.com>, <linux@armlinux.org.uk>,
	<catalin.marinas@arm.com>, <will@kernel.org>, <tony.luck@intel.com>,
	<fenghua.yu@intel.com>, <geert@linux-m68k.org>, <monstr@monstr.eu>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>
References: <20200616030734.87257-1-nixiaoming@huawei.com>
 <202006180654.jSTYfmWu%lkp@intel.com>
 <33c2ec0d-6050-5c1b-6f84-59f0b3f06404@huawei.com>
Message-ID: <19d7b373-847b-72bd-bdd7-d71d31d0aaf4@huawei.com>
Date: Thu, 18 Jun 2020 14:41:27 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <33c2ec0d-6050-5c1b-6f84-59f0b3f06404@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.67.102.197]
X-CFilter-Loop: Reflected
X-Original-Sender: nixiaoming@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of nixiaoming@huawei.com designates 45.249.212.32 as
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

On 2020/6/18 11:49, Xiaoming Ni wrote:
> On 2020/6/18 6:33, kernel test robot wrote:
>> Hi Xiaoming,
>>
>> Thank you for the patch! Yet something to improve:
>>
>> [auto build test ERROR on next-20200616]
>> [cannot apply to tip/perf/core arm/for-next tip/x86/asm linus/master=20
>> v5.8-rc1 v5.7 v5.7-rc7 v5.8-rc1]
>> [if your patch is applied to the wrong git tree, please drop us a note=
=20
>> to help
>> improve the system. BTW, we also suggest to use '--base' option to=20
>> specify the
>> base tree in git format-patch, please see=20
>> https://stackoverflow.com/a/37406982]
>>
>> url:   =20
>> https://github.com/0day-ci/linux/commits/Xiaoming-Ni/All-arch-remove-sys=
tem-call-sys_sysctl/20200616-130918=20
>>
>> base:=C2=A0=C2=A0=C2=A0 27f70ec4fa0e0f419031f1b8d61b1a788244e313
>> config: s390-randconfig-r005-20200617 (attached as .config)
>> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project=20
>> 487ca07fcc75d52755c9fe2ee05bcb3b6eeeec44)
>> reproduce (this is a W=3D1 build):
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget=20
>> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross=
=20
>> -O ~/bin/make.cross
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make.cro=
ss
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install s390 cross co=
mpiling tool for clang build
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install binut=
ils-s390-linux-gnu
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached .co=
nfig to linux build tree
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross=20
>> ARCH=3Ds390
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>, old ones prefixed by <<):
>>
>> s390x-linux-gnu-ld: arch/s390/kernel/entry.o: in function=20
>> `sys_call_table_emu':
>>>> (.rodata+0x1288): undefined reference to `__s390_'
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>
>=20
> Sorry, I don't have a s390 compiler locally
> Can you help verify the fix patch
>=20
> Thanks
> Xiaoming Ni
>=20

update patch for tools/perf/arch/s390/entry/syscalls/syscall.tbl

----------------
Subject: [PATCH] s390: fix build error for sys_call_table_emu

s390x-linux-gnu-ld: arch/s390/kernel/entry.o: in function=20
`sys_call_table_emu':
>> (.rodata+0x1288): undefined reference to `__s390_'

Fixes: 36965c4e82b6bc33 ("All arch: remove system call sys_sysctl")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Xiaoming Ni <nixiaoming@huawei.com>
---
  arch/s390/kernel/syscalls/syscall.tbl           | 1 -
  tools/perf/arch/s390/entry/syscalls/syscall.tbl | 1 -
  2 files changed, 2 deletions(-)

diff --git a/arch/s390/kernel/syscalls/syscall.tbl=20
b/arch/s390/kernel/syscalls/syscall.tbl
index f17aaf6fe5de..bcaf93994e3c 100644
--- a/arch/s390/kernel/syscalls/syscall.tbl
+++ b/arch/s390/kernel/syscalls/syscall.tbl
@@ -138,7 +138,6 @@
  146  common    writev                  sys_writev=20
compat_sys_writev
  147  common    getsid                  sys_getsid=20
sys_getsid
  148  common    fdatasync               sys_fdatasync=20
sys_fdatasync
-149  common    _sysctl                 sys_ni_syscall
  150  common    mlock                   sys_mlock=20
sys_mlock
  151  common    munlock                 sys_munlock=20
sys_munlock
  152  common    mlockall                sys_mlockall=20
sys_mlockall
diff --git a/tools/perf/arch/s390/entry/syscalls/syscall.tbl=20
b/tools/perf/arch/s390/entry/syscalls/syscall.tbl
index 0193f9b98753..eb77d0d01d8f 100644
--- a/tools/perf/arch/s390/entry/syscalls/syscall.tbl
+++ b/tools/perf/arch/s390/entry/syscalls/syscall.tbl
@@ -138,7 +138,6 @@
  146  common    writev                  sys_writev=20
compat_sys_writev
  147  common    getsid                  sys_getsid=20
sys_getsid
  148  common    fdatasync               sys_fdatasync=20
sys_fdatasync
-149  common    _sysctl                 sys_ni_syscall
  150  common    mlock                   sys_mlock=20
compat_sys_mlock
  151  common    munlock                 sys_munlock=20
compat_sys_munlock
  152  common    mlockall                sys_mlockall=20
sys_mlockall
--
2.27

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/19d7b373-847b-72bd-bdd7-d71d31d0aaf4%40huawei.com.
