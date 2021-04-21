Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBB4OQGCAMGQEOY36L5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A56366F4D
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 17:38:48 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id v3-20020a05690204c3b02904e65b70792dsf16433291ybs.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 08:38:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619019527; cv=pass;
        d=google.com; s=arc-20160816;
        b=KFtS/vGQUj/TQf4Se2h8CDnJRq9R/uOqAN1A9DjibbeEiBMxGs2lhndNjNwP77HFL0
         vnqoet1ewIwoh+t5eUId4nNjzPSQLIRD/1NhsplXDwscYRvOxwi/mVQBj832shNdFTyP
         LiL6lSpuuRfDfP5lWzVd6Huvp/0YOqcZ6ff33YgrTA6lzc7a0cn2Vo/SjnACbb/AP96x
         +EfOGgsjQx+NwC/iQXHMxIf55yHorsfmLrKbPW6wkIzP5vnDBE0vuJ/zZUoZM3b/YA6R
         lQo7dGQ5mS1oBOxXIse7HQsgS8gDmyXneELWjY5bjiZHd/U6jEZDmY3pSvtinr+a2yeT
         NPfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=y/tM4sKn+0qUp3WjaxqEMFfjUzmrC1Az/PP1Q91E2yA=;
        b=ZioT6kbRZcf9b+bZdB/iYwidGkPEK2bmr/GHQPfsr5dvGaaXZrsDcgV0CYj86ay6Bc
         LQq8RvMNbrOFa4IKcTzvpYEd8EaE2SpWZFNunA4aRHDG3azwrppQ34okbqKGM75THG6K
         OewlSz21KzZIti3xpHzfC3Y8xQ7nmtaSbcHfcUZ64djWd+q1kb7498jmso3OfX+U5h3B
         L0NjognNiwGKAKsMRr+HMnK8Td68Zzm/xJXkcK3zkEsvSM/19fi4t/gq3791n0lGLjh6
         cyeJVyQsS+PNCpRna/pIP8J5ceL0jgS1yWqVHsbhmYoCBa7Uu9qg9mf5ZvKbsbpOJ7Ob
         H62Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=bSN3D6ZK;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y/tM4sKn+0qUp3WjaxqEMFfjUzmrC1Az/PP1Q91E2yA=;
        b=nIQvITFiUsWMDeS4m/FQCqk5L7vXxN7oE+2w1y25Xi3t6CsEwftG8D0DXzWFE8iJre
         1idHtSeio1jET8WbDdGFmnQjdhuUKGInvv4ArwYybeN3/qS8AnHpD54RzCkX2chZVlqA
         DJ0I5UxlF9FIMVehLQOdwo2Iko9pxRdCfmaFAnE3RET14WPbcv5NWOoBC7NYoe2mrQo5
         wIbPiMk2XiBIVCjn740MN+yfj3suvpf3NW7X3j0XHK3oCxA5dlLujlvxaoA6xvtjhxT5
         wSFLn4Jf+xC+Mr69zb+xS3pbcStYpL1ynDfKpaC/dNi3O/JeBbj2qdBvkR/MxbUUV/Tg
         yATg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y/tM4sKn+0qUp3WjaxqEMFfjUzmrC1Az/PP1Q91E2yA=;
        b=QcMJKQKRf6034v7ibqJemYs8YdMTdj1WJKzIBr4OHEuDf/EkjGbNTU3rmPhLUPTgUG
         Ovr1nL7Ssje2/ee7wo5SN6BT+oOQJ0rPmeAVo4oPSfGThAUYpPhuLC/jPVJvf/H4BxRZ
         BndLERAZYAKxOewUu2eLxRpQv3kTqMuuTUGXB3wzyGifvJvc39lVHettTR999P24iTJT
         HS3mRuppivw5bLAiV92W/J5maAVrmArtCjspzs2P/3Qk13xAN/Sd5UmAIdGS4lAaZR7s
         TLiP2Oy6PERLJ4iJsvGVqLTapfOqcY6KBkGhOw4njHGD6i7lXAEN44rsxqs6PsKkpbdi
         EbqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SOqDuzPWWhXd/CaOdjo2hLCJzhpFWTOsSK3Nmi4mHpf43u/Bz
	ClgbHpd29T8yvEZiX4T+a8U=
X-Google-Smtp-Source: ABdhPJwRLeE/bhaBt6kdRrlnfaN6sYSWJVEZqyXtgxEvozBWAkj73ZIYPetsn4L3OMS2TH2GB0aUTg==
X-Received: by 2002:a25:ab53:: with SMTP id u77mr5606247ybi.48.1619019527546;
        Wed, 21 Apr 2021 08:38:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bac5:: with SMTP id a5ls1203222ybk.11.gmail; Wed, 21 Apr
 2021 08:38:47 -0700 (PDT)
X-Received: by 2002:a25:bdcf:: with SMTP id g15mr31310192ybk.311.1619019527047;
        Wed, 21 Apr 2021 08:38:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619019527; cv=none;
        d=google.com; s=arc-20160816;
        b=obHpG4QuoJpjsbCsur6EHAapUIRLhmDrlnuLPVmWBqNNgdEanvywDhMzHZizVgEmSD
         7nXfauaIMNUF6Sb5hyxe8Yqv7SBYiWBCxM9FpHy2nua5K1xgIluNzBdE1jEx36O1en0W
         QLKfOdn1aiU4GHz8qICsGJnMIhm+jQfw3M0x7BT/8m7ASWIwlPWbdRY9iHpPwf1C5lHI
         mzrpKAUo4+UXdetLtLBqByEO6nhhs7jIOIsD5pofIW8vqbDGNm/QXOJ4TMuvy8OCcDoT
         qH4HIq1VvxNuwMgnmvIng5dQJX+u6/76o/by7ycJBj706LudCcmGHZTuSHL4rubCqePM
         MbXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=dvgMPHsEW+XqEs095OpZi1BkGHPWycnAP71yEVMNlUg=;
        b=TxklzNBBzkjZhHOY+nvqSijBmOHTfkmpgzN6bLE/Quo/EW5CBUlnc0+udACSleFQTi
         GaKXA2Tcqbh/i3WP5PN5WokvkHSSf1Qg20GoIrBwH1EYxRq6t+y53eNasVrZcBtyQFTZ
         71JhAMkfPXpEmSIf+qx2EFCyITwOLTlZPljPzCDcwUM8gjJCtjKnNVYkb6t2N8yl65Qe
         yILplbS9bZlGX5mKMiBFIeadAqfUhXcma+Xa0FFEAm0lbp+NAfQ/tbi/WfwQoStbajTI
         hMk2FphAs+IvISO96552j/fJnMdSlCzNKFKuQDOUTTcAJFATYE43AS1Jt+pNR34GSLVn
         r91g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=bSN3D6ZK;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id a10si217159ybc.1.2021.04.21.08.38.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 08:38:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13LFXbKm123385;
	Wed, 21 Apr 2021 11:38:43 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 382jrmgntf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 11:38:42 -0400
Received: from m0098393.ppops.net (m0098393.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13LFYFQD125340;
	Wed, 21 Apr 2021 11:38:42 -0400
Received: from ppma04fra.de.ibm.com (6a.4a.5195.ip4.static.sl-reverse.com [149.81.74.106])
	by mx0a-001b2d01.pphosted.com with ESMTP id 382jrmgnse-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 11:38:42 -0400
Received: from pps.filterd (ppma04fra.de.ibm.com [127.0.0.1])
	by ppma04fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13LFIooN009455;
	Wed, 21 Apr 2021 15:38:39 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
	by ppma04fra.de.ibm.com with ESMTP id 380hbf12ba-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 15:38:39 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13LFcbAD46596568
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 21 Apr 2021 15:38:37 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 8ADB15204F;
	Wed, 21 Apr 2021 15:38:37 +0000 (GMT)
Received: from sig-9-145-20-41.uk.ibm.com (unknown [9.145.20.41])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id 021C952050;
	Wed, 21 Apr 2021 15:38:36 +0000 (GMT)
Message-ID: <3b7f73bd9b9b2b0eec39e68df62c1bdecd20afec.camel@linux.ibm.com>
Subject: Re: [PATCH v3 3/3] asm-generic/io.h: Silence
 -Wnull-pointer-arithmetic warning on PCI_IOBASE
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: kernel test robot <lkp@intel.com>, Arnd Bergmann <arnd@arndb.de>,
        Vineet
	Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: kbuild-all@lists.01.org, netdev@vger.kernel.org,
        Nathan Chancellor
	 <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org
Date: Wed, 21 Apr 2021 17:38:36 +0200
In-Reply-To: <202104212319.40Zv8JEe-lkp@intel.com>
References: <20210421111759.2059976-4-schnelle@linux.ibm.com>
	 <202104212319.40Zv8JEe-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-14.el8)
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: jYgAGwHJ6YnjY4PAQvmH6tG437FLqH7-
X-Proofpoint-ORIG-GUID: yDCSwwq4MLiqfVtLjH8PNiGVYt9A4KQI
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-21_05:2021-04-21,2021-04-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 phishscore=0
 suspectscore=0 lowpriorityscore=0 adultscore=0 clxscore=1011 mlxscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104060000
 definitions=main-2104210116
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=bSN3D6ZK;       spf=pass (google.com:
 domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted
 sender) smtp.mailfrom=schnelle@linux.ibm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=ibm.com
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

On Wed, 2021-04-21 at 23:19 +0800, kernel test robot wrote:
> Hi Niklas,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on soc/for-next]
> [also build test ERROR on asm-generic/master v5.12-rc8 next-20210421]
> [cannot apply to arc/for-next sparc-next/master]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Niklas-Schnelle/asm-generic-io-h-Silence-Wnull-pointer-arithmetic-warning-on-PCI_IOBASE/20210421-192025
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git for-next
> config: riscv-nommu_k210_defconfig (attached as .config)
> compiler: riscv64-linux-gcc (GCC) 9.3.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/0day-ci/linux/commit/05bc9b9b640336015712d139ebc42830d12a82da
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Niklas-Schnelle/asm-generic-io-h-Silence-Wnull-pointer-arithmetic-warning-on-PCI_IOBASE/20210421-192025
>         git checkout 05bc9b9b640336015712d139ebc42830d12a82da
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross W=1 ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from arch/riscv/include/asm/clint.h:10,
>                     from arch/riscv/include/asm/timex.h:15,
>                     from include/linux/timex.h:65,
>                     from include/linux/time32.h:13,
>                     from include/linux/time.h:60,
>                     from include/linux/stat.h:19,
>                     from include/linux/module.h:13,
>                     from init/main.c:17:
>    include/asm-generic/io.h: In function 'inb_p':
> > > arch/riscv/include/asm/io.h:55:65: error: 'PCI_IOBASE' undeclared (first use in this function)
>       55 | #define inb(c)  ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })

Interesting, it looks to me like RISC-V sets PCI_IOBASE to 
((void __iomem *)PCI_IO_START) if running with an MMU but leaves it
undefined without an MMU. It does then use its own (broken?) inb/w/l()
macros with PCI_IOBASE 0 from asm-generic/io.h. What a mess ;-(

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3b7f73bd9b9b2b0eec39e68df62c1bdecd20afec.camel%40linux.ibm.com.
