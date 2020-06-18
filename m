Return-Path: <clang-built-linux+bncBAABBVHNVX3QKGQEWXUJSVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C3F1FF474
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 16:14:46 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id u16sf4079628pgj.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 07:14:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592489684; cv=pass;
        d=google.com; s=arc-20160816;
        b=mO6jzGwB50VQiHJTxpNnmm06XUDnyepJixW5JtW5LA50CasHWqiikLxywuHA3Fn7yx
         w3OViWIJ5d7tKsOY9LJ30ORygE8C8SHYmroYfe1M98evJw//XHWExjUTYSjurEbukVr6
         FtbKc0pH1XCrwB4mWYDg7Fz00xO/bl5rWRnS0ZjtJ6YTn4bi9pjHJXw8lqqAzfa66jti
         0TOKs4rp6b94MwDmf9x+ZRohmfXKXeStxMVO6d77i8hhCasWNtz3wBVkK4j7zsP2dytQ
         qL1dadqpjj3OqWGYfGqjCt8PXwg+HaC5VqTUVh8+uG9h9S+TABNQiQKQu7yRKm5jPMkL
         757Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=3VBCzrvR78dWyA23Bxhj+Je3ymT/e1feP8OdFx5gUSY=;
        b=fzwv1BDaaj/mNypCM+eepyDqO+Z1EN3WTOCbI8VNS9Y3MuB+B7srfs+dx/9XHdKOPF
         CNCfYmbsVN6YZ9955PBspeNF8qgakq1ECPOG4o9FrAuNTDnUh+YDfjtmrpybcpJm1t2j
         u14j7N8fv0egL/Tx1gFMgoiBXQJoahAWlD/tlu91zRb+39KzVBcqTXI2ZzwnhSyfLD8C
         /RrDO9zZBj9CcVdwi8BUn51zNewrvdj36fP3sGl7PbvW9vjPWzS+e0Yc978K4vEUa1OG
         i4aq9ZBbj6VcFaW8l8k31GMueSU/+shDKeJPQUyHfMJi0xrZZ+3bQS/Vj+0r5iJcJqRJ
         LY4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=nixiaoming@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3VBCzrvR78dWyA23Bxhj+Je3ymT/e1feP8OdFx5gUSY=;
        b=j4wfQjlNtf1PHQUSveRwx+v9+qnlxvxnz5ysZtHPnO/mxwmW5IAy+4NhTxxY8gt0Wn
         DHb/jhCpshmtfzvvknJ34NB8R7LgHnOzqQfaDgaKjyYrZ4ezlK1mH9TfaB6sEEwXHNnW
         JfYlkUunUSaGomTST41XzUuH301LO2JK1YbRnMhriXBSHFqp24N/lV60bhobERRkPINV
         da0zBWQ++v3bR69ullKrBrm8FWecYSCqBGSlPI+UWEMITMCDxlNNhpv5qUVz22fiCJro
         3HcIj5NKKWuL4M4XS4KhFLxrH0ifpVhFisZumqVaxc2vRsFqiUlPQTLLevDTsI25CJLp
         SB2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3VBCzrvR78dWyA23Bxhj+Je3ymT/e1feP8OdFx5gUSY=;
        b=CQ/WUDIidg1d86U9maxkdCyU73F4/Xn5WdZUJD90bcvANOFE7B4Vn/CwcRcsVGIRks
         sklHXWLC3fTL/bl745TXWbtpZjzvHedo6IKy45Sl+uVqLRass96kWzRajAZx3hsMr71y
         GKzN3tGCMCiIPdXze1yyHNaKjhcb3Lk2fLdpIUZTmgwvvO82/Hkd5tbpzjaLnnZlVq81
         rmeqWbv2ezO++wjRtYv4Ru4Dtf9tqP9IQHGNHRDKGGVtLZjZ1LJi9JRGsSveNygr+N+i
         v48ByEXKA3dqmHQL8qLlMXkDtx7XcAa2fscPo+Fc0eexgOywXo1HF9QO70K9sVXrWE5r
         9GZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307Blm/fsJBVeSb1CkfGZ0rCKhWQsIH8og0msiPlPGkXVcYGc/l
	Y/TtYmXe217vJP88UNIg+oY=
X-Google-Smtp-Source: ABdhPJwDjUFeHQkAOrxKu0noGRD0OYK83a89fxYbXigw2L3f7m/icIAkHBz2N/2wo9TgsPCmc/GMPA==
X-Received: by 2002:a17:902:c807:: with SMTP id u7mr4130281plx.16.1592489684506;
        Thu, 18 Jun 2020 07:14:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c70d:: with SMTP id o13ls2480233pjt.0.gmail; Thu, 18
 Jun 2020 07:14:44 -0700 (PDT)
X-Received: by 2002:a17:902:7004:: with SMTP id y4mr3999268plk.83.1592489684213;
        Thu, 18 Jun 2020 07:14:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592489684; cv=none;
        d=google.com; s=arc-20160816;
        b=D7qFD1MCij6i73lMDWjSot3sHfbQ0DpN881Dw/sLk16pSFeSZWj67rt9HQcHfapwS0
         nMInA7j30w9BSJTgRCnGQz8gFTJCchD+axQpj39VTlRqayrrxy7wzYIxRA1H1WOOLZ0C
         1GQuvsc9zMF4pLWfs9l+Y7ZUljtlPMUMpBg7zRPavOGVrJjN55LqhL5WT062cEslTU0m
         oc0UqU0vUn8zVZQESDPPPl0jXTt5wd3f7lN7y4bBcwQd1kynVs4Ho7Ps0rZO/7bxSGEM
         oZjc1DTxt4FdqSpqqfzvP37hgmTiyGsJA5OWyR5MXD3lksb62S9R4yoZh5y/6JElORiO
         9+fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=PV+9YEYQ/eKJfdzR7sUkO91Ox76B+4A4HwuKeLZ3rjI=;
        b=I8ZWXWQ2VMzaLsuAZuRYXFCZieJWgl5P4a1TCP8Ks7yqw2lsYlliBx0t1x7U11qFLy
         ZpU8jj25Q+F9OVyf0gYD3Tyl5GBZtmCHK0Pw+G90jAFYo1d/b018j3IXOAb4NK3zC5R/
         QHHQwXiHTHnmKyj8yE6oUAAe/FATh8twEgLLWkO5K1PlxueoxgOlkXiQ7jxXiONUfwai
         0l0OCgxuYpsIMAjWSMcNZntwFx7uSkIQpTvSTzFCm82+sY+g+aTyMq5PGaXHeCees+Dc
         w/R2EFLReURjSCUqNQtB3CoWXaGjCghBSasYUdPdzMBZ2Onw1r0+w1bESchbm3gGtt3Z
         a+Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=nixiaoming@huawei.com
Received: from huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id f3si195466pgg.3.2020.06.18.07.14.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jun 2020 07:14:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 00BEE1C7614B9EE3D7A1;
	Thu, 18 Jun 2020 22:14:38 +0800 (CST)
Received: from use12-sp2.huawei.com (10.67.189.174) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Thu, 18 Jun 2020 22:14:29 +0800
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
Subject: [PATCH v2] s390: fix build error for sys_call_table_emu
Date: Thu, 18 Jun 2020 22:14:26 +0800
Message-ID: <20200618141426.16884-1-nixiaoming@huawei.com>
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

According to the guidance of Heiko Carstens, use "-" to fill the empty system call
 Similarly, modify tools/perf/arch/s390/entry/syscalls/syscall.tbl.

Fixes: ("All arch: remove system call sys_sysctl")
Fixes: https://lore.kernel.org/linuxppc-dev/20200616030734.87257-1-nixiaoming@huawei.com/
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Xiaoming Ni <nixiaoming@huawei.com>

changes in v2:
	use "-" to fill the empty system call

v1: https://lore.kernel.org/lkml/20200618110320.104013-1-nixiaoming@huawei.com/
---
 arch/s390/kernel/syscalls/syscall.tbl           | 2 +-
 tools/perf/arch/s390/entry/syscalls/syscall.tbl | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/s390/kernel/syscalls/syscall.tbl b/arch/s390/kernel/syscalls/syscall.tbl
index f17aaf6fe5de..04c34c2ed916 100644
--- a/arch/s390/kernel/syscalls/syscall.tbl
+++ b/arch/s390/kernel/syscalls/syscall.tbl
@@ -138,7 +138,7 @@
 146  common	writev			sys_writev			compat_sys_writev
 147  common	getsid			sys_getsid			sys_getsid
 148  common	fdatasync		sys_fdatasync			sys_fdatasync
-149  common	_sysctl			sys_ni_syscall
+149  common	_sysctl			-				-
 150  common	mlock			sys_mlock			sys_mlock
 151  common	munlock			sys_munlock			sys_munlock
 152  common	mlockall		sys_mlockall			sys_mlockall
diff --git a/tools/perf/arch/s390/entry/syscalls/syscall.tbl b/tools/perf/arch/s390/entry/syscalls/syscall.tbl
index 0193f9b98753..29144b79a49d 100644
--- a/tools/perf/arch/s390/entry/syscalls/syscall.tbl
+++ b/tools/perf/arch/s390/entry/syscalls/syscall.tbl
@@ -138,7 +138,7 @@
 146  common	writev			sys_writev			compat_sys_writev
 147  common	getsid			sys_getsid			sys_getsid
 148  common	fdatasync		sys_fdatasync			sys_fdatasync
-149  common	_sysctl			sys_ni_syscall
+149  common	_sysctl			-				-
 150  common	mlock			sys_mlock			compat_sys_mlock
 151  common	munlock			sys_munlock			compat_sys_munlock
 152  common	mlockall		sys_mlockall			sys_mlockall
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618141426.16884-1-nixiaoming%40huawei.com.
