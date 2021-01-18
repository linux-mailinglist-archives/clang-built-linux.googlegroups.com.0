Return-Path: <clang-built-linux+bncBDE5LFWXQAIRBXEFSWAAMGQECAAKSRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 379FB2F9B05
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 09:12:13 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id h17sf1105225uar.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 00:12:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610957532; cv=pass;
        d=google.com; s=arc-20160816;
        b=YUdY836YnKNz+dJlBNsLktzbb6cR1+IEA37Mk1mPahZ/eg3NgDHRACpb0DjeZ72atR
         UtaZopocTqezQ34hUhO43pyWoeAoLv3lT14FRdcLrBN/fiN+SD1sxAyQ2EqqPpyB4Dg9
         ysyYC3SGH0nifZ9KlIau3x6s2tB/9ozYTt1ccR8lUIERNW+uGfFHPauQzC+vbCABibvM
         IDGObKlAJggD50L/VjPK/tRwHpLKUs9xUTHl5bOR36gzHy2PwE2qxA6szKhXHi38UCpF
         OpzpRdYosG+JHKcbBMIG+AKi04DqBLiONm4lIa+EwQGiyBn4fZcF3fIeKNfzeb/znfEk
         j9bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=eKIXqwLO08uasWbOvhLmajlrO8GvEfX+YekBEB4Ff0c=;
        b=rfCLGdJao6TqFC7kSjOfC4HkGtQHlJZv5UUCtxGIjJ8ysh45caSy4JAxvApN5uAgzX
         8FX41gL6ij9I73k4UafUI7X61KJVdJvnyKzuYZYunhxTJKCz1oGrcbJmjmiWgy4Viv2z
         LTGlsB06GzmT8cmvgnZHpoggt+V1S++CLQ0SQhl8JlaZlhRtdKZmWupFMXEv7tyXTB4n
         w9MkAi7gJwAwx5Vc24XXjvMazeIzahlyhrc/dSRbBaBbTpAjWIOoxWcm1X+o3TLSkLIQ
         fKfNlK47jbcl1qgzcx/f1vfuQWyoL6ELsCglb5G92O9Ax80bQvNdOhDtFs9cE79JF4EY
         vFxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=j8q3GgRj;
       spf=pass (google.com: domain of rppt@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=rppt@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eKIXqwLO08uasWbOvhLmajlrO8GvEfX+YekBEB4Ff0c=;
        b=lX1ejFpx2P1tbZf3qtRfSruyh+kBE9MHXew1RJ1deoo26K0SHgX8pXOx3RH3r+k20G
         GvpOrfhxQxMznVjrvrVmwrfxtnWSmjaG12qLjHk+W5DDVVV4jm3NDmC3QsBjIgZtYH/d
         LubbcFyJPQjUMGzNJ3TWaEiCbJXIO89DWHikNZELbaNIX/HqtcBo0cJiw1cZYmzaR5zB
         FvDJJAy5ugQJQxbqnQt/H7+OoNTyfBTn23kh/VPzN0H3U772/V2pl3CJ0BAiVVj5QFBh
         LEdKdZ1Ro8GrvAzkL8Lrh4O52G/QEYC2QEOV83zKYJuS6L2TzuoXzx34YN5WK8yFH89R
         p1iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eKIXqwLO08uasWbOvhLmajlrO8GvEfX+YekBEB4Ff0c=;
        b=AKWiNoQTebOmqkF1gq7SIqY4s4oo55c96glqU5hwwVMZ57CHfLKAU4+MeV149X3e2a
         ppHP8Fx3ZB5PPcGHpSzxVC3+29JUdRB2AbGN+AN6A1VGUQZmP8KM49V2TeHKmsE7xXJa
         mw//CloutpKQ1nDr3TmW6ZYJ5mhs3Vzwc0lAcsnNaWQLWle9qthc+XHgA/ylyUltegwt
         nVIeFLGBupbQgdNqa7LVwcUwe1h3bJYQA4GH+hMJuSgqhNHRasOvi5HHbGjYHnBbn74o
         nZLaTWL8ZgfrBlI9huaQDvjWWnefBtGkd0S1EWDxnw1VQOj18eMRf+hhmWg1ztCRFcPm
         Ydhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GLTh8I99FRscPXlAvk0DwIAMwBamvjh4VstAPbQHKhcOPLMZ+
	s89EKG1o7VRaUaPJSm7HPRQ=
X-Google-Smtp-Source: ABdhPJxszeRYRGeHmf9HJ4GYqFFQDbGM43v1kYT5BiLU6qEjtEox5lK93XfuDtUyZFEQWSuwFy6xKg==
X-Received: by 2002:a67:edc9:: with SMTP id e9mr16621733vsp.20.1610957532302;
        Mon, 18 Jan 2021 00:12:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:8d06:: with SMTP id p6ls949631vkd.7.gmail; Mon, 18 Jan
 2021 00:12:11 -0800 (PST)
X-Received: by 2002:a1f:fc84:: with SMTP id a126mr17333607vki.23.1610957531897;
        Mon, 18 Jan 2021 00:12:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610957531; cv=none;
        d=google.com; s=arc-20160816;
        b=j7UlyiMMXDvj6OF1NagNLV4EuQW7H/pHW4RQnEkQjys4GDMTdFaEdUJNRIHeS0SMcw
         N18LAlHVEkRc4MdGu10dAuwaW7284+a1ZZAb9QTYhvwNaW8TVwHGTmxmazAYLkG+TX+H
         vnrfOsQrBfEcT3L940GeIqv+8nWirMSGr16D8Qm/LNbAVoQ+188JWvrefOq/v62rqUsj
         +NjWxcWSjPeIyn0ctg3AgoWpWPbjeIEgT7dpor5uF+YmN9r0Hnk3Oo7gh0WSMtPzKCGi
         hi1a+P1BgtNBqfzMv4e16MMa/O0icUcsuYCXxSN72YEj33z2flLMzoOS4lLV4NoUyuzn
         YOzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gA33kknnvb+2xQbZdpY1UpRRsa/1QqPLwys19TZrPzg=;
        b=0HeWMInoIkLiIV7xutlwJJm3s/wuLpaCto/me6/HEsx9eYFSyWxqzgZFWmBaOTGIZx
         GJ12+bPS9CrAfFrAnimG1tS1n5Z9yvOv/5hbVwEG086DygcUTxZZiHK3QhMcunnj4j32
         gPQwD53i/dALng6eonuDahPrAfBAhQGvoRAVZORwtObGG1sudUSIhhcIeQJjwLlJQsll
         9oklPH9D5rfU9E6vz5oppaoHnLKVlfeI7r6bGUZTDmElIFF7X+PIUe7ERxZVBG7fvHPy
         7va1AygeZvq8pLH/0WR6k4k4ffPOUUBdGBECvb0w3TM4A1mNgujrpNeqbmA+UJk3rH41
         vI2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=j8q3GgRj;
       spf=pass (google.com: domain of rppt@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=rppt@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id q11si236343ual.1.2021.01.18.00.12.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jan 2021 00:12:11 -0800 (PST)
Received-SPF: pass (google.com: domain of rppt@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 10I821bR158092;
	Mon, 18 Jan 2021 03:12:11 -0500
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0b-001b2d01.pphosted.com with ESMTP id 3654ve2pt9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Jan 2021 03:12:11 -0500
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 10I87PwA019566;
	Mon, 18 Jan 2021 08:12:09 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
	by ppma03ams.nl.ibm.com with ESMTP id 363qs7htbt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Jan 2021 08:12:09 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com [9.149.105.59])
	by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 10I8C70Q31457602
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 18 Jan 2021 08:12:07 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D6AC1A40B1;
	Mon, 18 Jan 2021 08:12:06 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 245EEA40CF;
	Mon, 18 Jan 2021 08:12:05 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.145.59.198])
	by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Mon, 18 Jan 2021 08:12:04 +0000 (GMT)
Date: Mon, 18 Jan 2021 10:12:02 +0200
From: Mike Rapoport <rppt@linux.ibm.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
        Linux Memory Management List <linux-mm@kvack.org>,
        Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [linux-next:master 3945/3956] mm/secretmem.c:107:6: error:
 implicit declaration of function 'mlock_future_check'
Message-ID: <20210118081202.GV832698@linux.ibm.com>
References: <202101180834.8JuxblXK-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101180834.8JuxblXK-lkp@intel.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2021-01-18_07:2021-01-15,2021-01-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 adultscore=0
 spamscore=0 impostorscore=0 mlxscore=0 mlxlogscore=999 bulkscore=0
 clxscore=1011 suspectscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101180044
X-Original-Sender: rppt@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=j8q3GgRj;       spf=pass (google.com:
 domain of rppt@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=rppt@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

On Mon, Jan 18, 2021 at 08:44:40AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   b3a3cbdec55b090d22a09f75efb7c7d34cb97f25
> commit: 5577d3803e8c46cfe63791e5fd0cb2c782d4db3b [3945/3956] mm: introduce memfd_secret system call to create "secret" memory areas
> config: riscv-randconfig-r003-20210118 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bfd75bdf3fd62d4f5e7028d4122f9ffa517f2a09)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=5577d3803e8c46cfe63791e5fd0cb2c782d4db3b
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 5577d3803e8c46cfe63791e5fd0cb2c782d4db3b
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
>                                                                                      ^
>    In file included from mm/secretmem.c:14:
>    In file included from include/linux/pagemap.h:11:
>    In file included from include/linux/highmem.h:10:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:17:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
>                                                      ~~~~~~~~~~ ^
> >> mm/secretmem.c:107:6: error: implicit declaration of function 'mlock_future_check' [-Werror,-Wimplicit-function-declaration]
>            if (mlock_future_check(vma->vm_mm, vma->vm_flags | VM_LOCKED, len))
>                ^
>    7 warnings and 1 error generated.
> 
> 
> vim +/mlock_future_check +107 mm/secretmem.c
> 
>     99	
>    100	static int secretmem_mmap(struct file *file, struct vm_area_struct *vma)
>    101	{
>    102		unsigned long len = vma->vm_end - vma->vm_start;
>    103	
>    104		if ((vma->vm_flags & (VM_SHARED | VM_MAYSHARE)) == 0)
>    105			return -EINVAL;
>    106	
>  > 107		if (mlock_future_check(vma->vm_mm, vma->vm_flags | VM_LOCKED, len))
>    108			return -EAGAIN;
>    109	
>    110		vma->vm_ops = &secretmem_vm_ops;
>    111		vma->vm_flags |= VM_LOCKED;
>    112	
>    113		return 0;
>    114	}
>    115	
> 

The patch vs v5.11-rc3-mmots-2021-01-12-02-00 below should fix this:

From 51b925943bcf65b82d2ba3b30082a0665681585c Mon Sep 17 00:00:00 2001
From: Mike Rapoport <rppt@linux.ibm.com>
Date: Mon, 18 Jan 2021 10:03:29 +0200
Subject: [PATCH] riscv/Kconfig: make direct map manipulation options depend on MMU

ARCH_HAS_SET_DIRECT_MAP and ARCH_HAS_SET_MEMORY configuration options have
no meaning when CONFIG_MMU is disabled and there is no point to enable them
for the nommu case.

Add an explicit dependency on MMU for these options.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/riscv/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 2ef05ef921b5..dd295dba8a8d 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -25,8 +25,8 @@ config RISCV
 	select ARCH_HAS_KCOV
 	select ARCH_HAS_MMIOWB
 	select ARCH_HAS_PTE_SPECIAL
-	select ARCH_HAS_SET_DIRECT_MAP
-	select ARCH_HAS_SET_MEMORY
+	select ARCH_HAS_SET_DIRECT_MAP if MMU
+	select ARCH_HAS_SET_MEMORY if MMU
 	select ARCH_HAS_STRICT_KERNEL_RWX if MMU
 	select ARCH_OPTIONAL_KERNEL_RWX if ARCH_HAS_STRICT_KERNEL_RWX
 	select ARCH_OPTIONAL_KERNEL_RWX_DEFAULT
-- 
2.28.0



-- 
Sincerely yours,
Mike.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210118081202.GV832698%40linux.ibm.com.
