Return-Path: <clang-built-linux+bncBAABBBEUVX3QKGQELJ4ZCGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5936D1FF02D
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 13:03:35 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id o21sf2545276ooo.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 04:03:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592478214; cv=pass;
        d=google.com; s=arc-20160816;
        b=BvFDmCzF3M6UfpUKPnw/R3AM75AerqdfpYDhDVT2KGjr4bmjFV6UU2EANMu5Xv/8TM
         PS/3yQ/Dm9GyrYrroyrihlUctcokElzgVRuiLsXQNPX+7PVZvOGVWg5arnX+dZ4I3sB6
         KzcbzhxPUIX9DD4YRppkuAIY2cnWJwWteEOSbqO+oJyt5ZEbveD7ZTH/kV/z7x32+lTO
         c7+KvAESdjzCp+fwIdYnHi6Mz5a7Ggw8Uc7YaM/mqs4aLMAkLDKhAgi7LNwicFidyhF3
         B+uedqMunB1fyMNDcrk+gPUYrYtICeJmLP0gJgZT2i6VzQiIkYsyXVFu1p1xDOPsLD2n
         +3pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=oE26gK+aYGIs3Syhd+2nJ3ew//en+imQA6XofTfcCWQ=;
        b=OcpaGM49Lt/zuVAvslXsx4fi3oUm/SdbLO/jTIPhSnHHr/4fiqO9WG8Z+DzdYljRQO
         o+Sjtkkde5JWUWFg8VXa3aQM/0PevmBSXk6DPw9f55mhevpHB2X9t6ZRmvOOeHwV3x3M
         TVcrGT8Jqxm5O32uanVcD3ue94czjzMKAGI4FH2+bVvNMhGKQMAE6NdPMfPOjvwpJV7Q
         Wvw/s3RwhJ0y3oi+qXFBgGoaSLxGsPZfozZQfh8pJ7xOnXpjjN8vAQH/odWEc0HPwQ9r
         3a/saH+r3SN6Fj4Rg7cBYR1d4tnrEZk7/Tv6kNmk/aX/N54mPh8iSVDyB85KqHTTmEeC
         bY7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=nixiaoming@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oE26gK+aYGIs3Syhd+2nJ3ew//en+imQA6XofTfcCWQ=;
        b=HtsDWWHaSWfSgRHNiwmMpp6Rl6Atz8VhuSRbLVw0VXlD1duyhw2LH+IHkm7MiqCRex
         XSBEzMDS/r7o+64g9QZpIJit1A4ttcGcBJAiBC6zltKPkkdkTf/kQY6JYueFDf6QdYZ2
         0YlG7i29QxIzAXdWJ43n5JFriI69exbrF52R8IQ3/FoV00UtWlg339WeA6Cpn+OuvU+d
         3U3/CDN0kjLckJYFOCBJ+0fiBibZlPfGifuNhtZOOigh5Ap0hK0TWik9ZpypU9dRhTsS
         gaTZqbeoZfJkpvGPEDb7uqLQdMe8uO8Iie4DbUCDb+fUmic8hVDBiE9DT2EekWpX/bCl
         +d1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oE26gK+aYGIs3Syhd+2nJ3ew//en+imQA6XofTfcCWQ=;
        b=Y5g784KFO3tF8H+cHqpZN7WKx23qRxU36O76ySeC2RdtFh0B0g74/maDDoNapGuFpX
         ntNP3plKB+3GaMwPPK0UGXSTr/4rIZe9xf0sdq6TO8y06eJUUf0G2yRYIl/Ahpsysdbs
         BfU4WVxhZ2+efvT+IuIjcD3prHz/uOXSyHaxBSZCq+E5QqCMSx5KatpSz5IE/l8/bRXu
         NnAPlu11Dt+Yo8lGpVGwh8Rz92J1vEU0ItjPcg7a/Ttyz5R6IvcFQ/EGHuc/gd3/JbSG
         vMC15YhJzd+dK1AQYFy7yREd/e3woh4ICp9AqrnhhQ2THvIjOwJn09jzZJ/vdp0Pd5qq
         k/cA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/Cxjsr7E4yzIj0J1tpieUvMIAe3zzWA/hIetQ96IGoHfzIkAm
	3AKqYjaVPxlsZAFuqzmlyLY=
X-Google-Smtp-Source: ABdhPJy/h6Q0CIWW1q5fF/bA01dJGQcPghBsMpPLwGXTEa4kSxVzRBz4uZMmVPlQcrWU+Ub6t3+e4w==
X-Received: by 2002:a9d:6e84:: with SMTP id a4mr2823155otr.112.1592478212741;
        Thu, 18 Jun 2020 04:03:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4808:: with SMTP id c8ls1202798otf.7.gmail; Thu, 18 Jun
 2020 04:03:32 -0700 (PDT)
X-Received: by 2002:a9d:34c:: with SMTP id 70mr2979236otv.224.1592478212438;
        Thu, 18 Jun 2020 04:03:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592478212; cv=none;
        d=google.com; s=arc-20160816;
        b=o5up/pvyogWDzjIGwUSi8Q2g6Ti+ftc1wx6H1sTnckc9Y/O3vjhC+SFQVqbR0ZMhd2
         i0k9ABpE+v9JCru1z91bYRvZuO3dxPUIliNxeISgH1Dg3oQBGmfCdCPcGaKqQl7BUjH+
         uOIiWlExCsI1+xlcPax1pV9p1SHFb0isNGML411cNJVz+TAVw14FMOcR8TxlAOIisEum
         0DeYBZ/aMXlNsjPFHf3mH8YpUQS9E/SvJRsNXP96HB3L2Fdx6YuOVu5JMwR/tYjYe1A2
         zCekdCtUAqwphHThlM/lNgJWEo4uekflXgQnf4Dni1pGYwtqWnTC8K0pYcobzrRJHzTv
         1xfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=iuvedTNsyvLzweHDpJE18lgCrqm0meijNufm5+f3Rhc=;
        b=kLDpywR8gi1GL3N3xE6ligZ34LGM3ZT0mykrx1lWkRPliwm3q9627ChdnahjKtkzVi
         XC9O6PNfLpPaLxc9/IC2UMBmN1R2D8k7ffusCQzC0EPbwtwOGITEf2jLNc9TyEhbUBn3
         ny69bbS6r0hONz2oT1SbX5ny3nyiiPHLWKeZZw3hNue/D3ldV5VOWt8OPLBQX5+xyvLh
         9vxJOcWVWRUkS/SL1vIPNwgaoBTEVlanvkgS14FQrdJkmrtgmep6pzprWBRn5f+Nh/sc
         yqhxWlbWQurC7/pgi0/Am257POq0BJSqF+fRhC8AOjen1kv+waIhy8sPIKbs3BvejS4l
         1+Rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=nixiaoming@huawei.com
Received: from huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id y198si92664oie.1.2020.06.18.04.03.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jun 2020 04:03:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
	by Forcepoint Email with ESMTP id D835E7694E38895BBA77;
	Thu, 18 Jun 2020 19:03:29 +0800 (CST)
Received: from use12-sp2.huawei.com (10.67.189.174) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Thu, 18 Jun 2020 19:03:23 +0800
From: Xiaoming Ni <nixiaoming@huawei.com>
To: <acme@kernel.org>, <alexander.shishkin@linux.intel.com>, <arnd@arndb.de>,
	<borntraeger@de.ibm.com>, <catalin.marinas@arm.com>, <christian@brauner.io>,
	<cyphar@cyphar.com>, <dhowells@redhat.com>, <ebiederm@xmission.com>,
	<fenghua.yu@intel.com>, <geert@linux-m68k.org>, <gor@linux.ibm.com>,
	<heiko.carstens@de.ibm.com>, <ink@jurassic.park.msu.ru>, <jolsa@redhat.com>,
	<linux@armlinux.org.uk>, <lkp@intel.com>, <mark.rutland@arm.com>,
	<mattst88@gmail.com>, <minchan@kernel.org>, <mingo@redhat.com>,
	<monstr@monstr.eu>, <namhyung@kernel.org>, <nixiaoming@huawei.com>,
	<peterz@infradead.org>, <rth@twiddle.net>, <sargun@sargun.me>,
	<sfr@canb.auug.org.au>, <tony.luck@intel.com>, <will@kernel.org>,
	<akpm@linux-foundation.org>
CC: <alex.huangjianhui@huawei.com>, <zhongjubin@huawei.com>,
	<linux-kernel@vger.kernel.org>, <linux-s390@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>, <kbuild-all@lists.01.org>,
	<linux-mm@kvack.org>
Subject: [PATCH] s390: fix build error for sys_call_table_emu
Date: Thu, 18 Jun 2020 19:03:20 +0800
Message-ID: <20200618110320.104013-1-nixiaoming@huawei.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.67.189.174]
X-CFilter-Loop: Reflected
X-Original-Sender: nixiaoming@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of nixiaoming@huawei.com designates 45.249.212.191 as
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

Build error on s390:
	arch/s390/kernel/entry.o: in function `sys_call_table_emu':
	>> (.rodata+0x1288): undefined reference to `__s390_'

In commit ("All arch: remove system call sys_sysctl")
 148  common	fdatasync		sys_fdatasync			sys_fdatasync
-149  common	_sysctl			sys_sysctl			compat_sys_sysctl
+149  common	_sysctl			sys_ni_syscall
 150  common	mlock			sys_mlock			sys_mlock

After the patch is integrated, there is a format error in the generated
arch/s390/include/generated/asm/syscall_table.h:
	SYSCALL(sys_fdatasync, sys_fdatasync)
	SYSCALL(sys_ni_syscall,) /* cause build error */
	SYSCALL(sys_mlock,sys_mlock)

There are holes in the system call number in
 arch/s390/kernel/syscalls/syscall.tbl. When generating syscall_table.h,
these hole numbers will be automatically filled with "NI_SYSCALL".
Therefore, delete the number 149 to fix the current compilation failure.
 Similarly, modify tools/perf/arch/s390/entry/syscalls/syscall.tbl.

Fixes: ("All arch: remove system call sys_sysctl")
Fixes: https://lore.kernel.org/linuxppc-dev/20200616030734.87257-1-nixiaoming@huawei.com/
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Xiaoming Ni <nixiaoming@huawei.com>
---
 arch/s390/kernel/syscalls/syscall.tbl           | 1 -
 tools/perf/arch/s390/entry/syscalls/syscall.tbl | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/s390/kernel/syscalls/syscall.tbl b/arch/s390/kernel/syscalls/syscall.tbl
index f17aaf6fe5de..bcaf93994e3c 100644
--- a/arch/s390/kernel/syscalls/syscall.tbl
+++ b/arch/s390/kernel/syscalls/syscall.tbl
@@ -138,7 +138,6 @@
 146  common	writev			sys_writev			compat_sys_writev
 147  common	getsid			sys_getsid			sys_getsid
 148  common	fdatasync		sys_fdatasync			sys_fdatasync
-149  common	_sysctl			sys_ni_syscall
 150  common	mlock			sys_mlock			sys_mlock
 151  common	munlock			sys_munlock			sys_munlock
 152  common	mlockall		sys_mlockall			sys_mlockall
diff --git a/tools/perf/arch/s390/entry/syscalls/syscall.tbl b/tools/perf/arch/s390/entry/syscalls/syscall.tbl
index 0193f9b98753..eb77d0d01d8f 100644
--- a/tools/perf/arch/s390/entry/syscalls/syscall.tbl
+++ b/tools/perf/arch/s390/entry/syscalls/syscall.tbl
@@ -138,7 +138,6 @@
 146  common	writev			sys_writev			compat_sys_writev
 147  common	getsid			sys_getsid			sys_getsid
 148  common	fdatasync		sys_fdatasync			sys_fdatasync
-149  common	_sysctl			sys_ni_syscall
 150  common	mlock			sys_mlock			compat_sys_mlock
 151  common	munlock			sys_munlock			compat_sys_munlock
 152  common	mlockall		sys_mlockall			sys_mlockall
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618110320.104013-1-nixiaoming%40huawei.com.
