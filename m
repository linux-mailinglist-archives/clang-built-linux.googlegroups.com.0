Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBOPG4OCAMGQENQGVPWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id DD415377E7F
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 10:47:54 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id e12-20020a67d80c0000b029022a88436f30sf2840700vsj.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 01:47:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620636474; cv=pass;
        d=google.com; s=arc-20160816;
        b=EaRLER38W0YHYEk1qi6y9G77XRZ9+lPtyW3tU61qw44LRQ7tkbd2mvRd5Du0sr46dt
         /oQLDzpVGW6sqv27S0RBemc9LU20IzfnHsixXvQ+AXomKcU6IRpTEzofmkZpNKXF7Gdo
         4S/30ZuX33WSwJtUZNt3yDvkJxYwMN/Ng4rWQlvHA+e5I1vjp1Awm1ppBv69gDkt8jth
         F/582A6SgJxZY/hAKB3j5/93+CzlD6kbMKFCZMmLsP+rwAvEVha+sMrJU5hF7WThA/NJ
         l+/Mn/rbDpnguQ8hCdYoZCqgyGc/ZZUgTUGsxvQtmz3GbNdjpEVKKx9rs2uH47Ju2wBc
         VOQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=2bV8FP3xjiuqNtlvvISUF3yIiIz2tUZxU6eomhsosxI=;
        b=Fvxqk7+J6cg3kz6Kg7kwU7j1ydix0n6eHy+TB7f/7Gj7Olu834Ll6OCraJ1ebXM18A
         gx6V+DIibUbllqxzJAB67PUwo1VLZwTFqEJKI+mQp87CLW8OQW4eL2Nx6p/VvQygotxe
         E6g+CLwWCHEfCSxnbnAY+Gdj1+68tNPwYOdtF9eVCOMGJao8vtINq7ZmPvIa5QogXHBS
         3lSTxcwMCHFV6hiGBYo+m3dzywfaIxBHI6J48vAPZ3IbuEZ6Br+ihDJz1dexlQtx+crS
         hYymPpmDqwARvTCf9K7bfvdxenDTmJpv+zdHDWC+BSiM4dKbJYNmqnYUVmcVzf402R+f
         XYxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=jHXUB2Yd;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2bV8FP3xjiuqNtlvvISUF3yIiIz2tUZxU6eomhsosxI=;
        b=E2sjLK2y9R6fjg5Srf9zB9jn2tVX4ctqe+LeFVwisWJQbckFDuJmI9vWTGF1XzQCLA
         NS51C3Rh/8ywpSgwt9chQCRtveKUeie3l1xUufiJ8FQAFqVzWuswUeU+4bXWVb5/e3z1
         u5OZVd8Q/HNURLIpgOF6PMaBn993Qzi0Ml4dp0J1onU13ILlz5cHMqCvLqjlXzTnfmKL
         GNYRPcoH3Ou9U6JTmQVgtfktc1IKiL242ANbA07Zt6k+rLNTUWpzdMoQIrJ3hdHgpIyI
         pLq+afq0qORVwJsGN3JPbhMC4mSFYwxNAMewsVOqcxETusx0pKPjf7MzCytQ4eweZtbL
         eMSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2bV8FP3xjiuqNtlvvISUF3yIiIz2tUZxU6eomhsosxI=;
        b=kOsLcp3WIj42wsmqwV5Ec2AXlITpWmK7Y0EFYmxzjbiggm/I/tS+2UAq0S4vgE22Jt
         bzkPXii8ZohOnhCZ7KtJuAiebn+P5K3JYy0fk1HB2smKKLcYcP2FHCDBYRdk+jdmQPHQ
         0eY+D+eIh2aP8Tl/uSO+LsbZ8jg3yJOcNcwpW0PYKsoF+8kWXzDzQy06TCvdu3HXN0JC
         f80Fbu+r5Z2jvUBGEcFNcGGQkA+TC1Gji7JXXC3dKdV4hEUAwIF9XJTg3qNbcLyPv1LI
         gW4gzaP90sqhsou1bceTp47PgWWQ4cZ6842BBxJunvcDc6EdN5FZCIG9uCfAOgn79j/k
         RqwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+KTazKb6mzrFIADhrUtm0SiTsebnkgfm3u24DabbhWm95cPND
	fzc3zcDG4+U5V3uR/nwkwOM=
X-Google-Smtp-Source: ABdhPJxqckgnNOAd8LAiTZA29zG7B5C2MLaAmNb6T/xk7y8FqxHUNYB4EFAM0htSeXNUdZ9QFt6qSQ==
X-Received: by 2002:ab0:2892:: with SMTP id s18mr1140498uap.83.1620636474038;
        Mon, 10 May 2021 01:47:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:22c5:: with SMTP id z5ls1392961uam.6.gmail; Mon, 10 May
 2021 01:47:53 -0700 (PDT)
X-Received: by 2002:ab0:1d0f:: with SMTP id j15mr18164604uak.118.1620636473589;
        Mon, 10 May 2021 01:47:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620636473; cv=none;
        d=google.com; s=arc-20160816;
        b=zaOgdq4YdXa6Plf2njFH2Cwoq5ry8yo1gb8sLV3d1mtuSoI/dB3cAyrq74WuAKVWgE
         gXiw/jci5g+qNPUoCWZqDmTsFmaNJ4I6mROyL+/hmM6m2xZ8Guv8rfpQLJCEOx4i0hnO
         0KM+5c/jVO7hmtc9SuUEk/zSXJvcBz3cNTmmgztraUCsselRwZRDS2rqPEaDD9dI31HX
         QHYN2rFjDrdDkAFK3tTlEu71fVCO+BxPNBhfGyk/dzxOTa3wEZ5W/ndHSgCUeFB9T1sd
         2QaiJ3ihGqXUdqyGlD/9PTxcc0iQ1/CJHup5S7sS48BCN5nlaezkgbxV+6UoT5QFElqS
         T4yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=4yO9eZxepSCyEp/8vUMaotEbypsOwfQJcgLtkm5jAsc=;
        b=sUAMa4NUNldONLBJxcna6i/sV4Jw+WRsZ4rndlHA3/uDzj3GR2Ko/voLui0x4YNOxb
         +Pi9+Uv6p1c74KWLp1cMFr7p1KUjCl1Q9D4+8qfRJByr2oJYLkbgKmGrH6+afZLf/sg6
         MfQR8e/vfgaR+kiKLEC2+8+1ZO5Cb7Zs2yRiHLe8VUOrXenNjuxo/XhbZWp4OUcAzN+c
         CyPyELWrWtxN6poByZ8XXbmXjRJutdEZ1uR85Njlge17xuySPfPBUpER32uYlOUl3Ash
         HC5ecBTPlT6QeKsgocpOxtjQ48qy8mnhLFOQA6Zomm0RQafLB4y1sTwQqeuQHfbeQOMU
         oO9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=jHXUB2Yd;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id a1si860067uaq.0.2021.05.10.01.47.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 01:47:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14A8WxRR054354;
	Mon, 10 May 2021 04:47:49 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38exgcnd2r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 04:47:49 -0400
Received: from m0098394.ppops.net (m0098394.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 14A8X9wj054828;
	Mon, 10 May 2021 04:47:49 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38exgcnd20-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 04:47:48 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 14A8gf3i023607;
	Mon, 10 May 2021 08:47:46 GMT
Received: from b06cxnps3074.portsmouth.uk.ibm.com (d06relay09.portsmouth.uk.ibm.com [9.149.109.194])
	by ppma03ams.nl.ibm.com with ESMTP id 38dj988sfy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 08:47:46 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com [9.149.105.58])
	by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 14A8lisr21037452
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 08:47:44 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 44B054C052;
	Mon, 10 May 2021 08:47:44 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D55F44C059;
	Mon, 10 May 2021 08:47:43 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Mon, 10 May 2021 08:47:43 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH 0/3]  asm-generic/io.h: Silence -Wnull-pointer-arithmetic warning on PCI_IOBASE
Date: Mon, 10 May 2021 10:47:40 +0200
Message-Id: <20210510084743.1850777-1-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: NMdOodGgcMvFTQlivDvIFZED_HKrqbO3
X-Proofpoint-GUID: iRZs0VnKc3G77quBi8FWVfDuKQ_XxELi
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-10_02:2021-05-10,2021-05-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 impostorscore=0 clxscore=1015 spamscore=0 mlxlogscore=670
 bulkscore=0 suspectscore=0 mlxscore=0 lowpriorityscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105100061
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=jHXUB2Yd;       spf=pass (google.com:
 domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted
 sender) smtp.mailfrom=schnelle@linux.ibm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=ibm.com
Content-Type: text/plain; charset="UTF-8"
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

Hi,

This is version 5 of my attempt to get rid of a clang
-Wnull-pointer-arithmetic warning for the use of PCI_IOBASE in
asm-generic/io.h. This was originally found on s390 but should apply to
all platforms leaving PCI_IOBASE undefined while making use of the inb()
and friends helpers from asm-generic/io.h.

This applies cleanly and was compile tested on top of v5.12 for the
previously broken ARC, nds32, h8300 and risc-v architecture. It also
applies cleanly on v5.13-rc1 for which I boot tested it on s390.

I did boot test this only on x86_64 and s390x the former implements
inb() itself while the latter would emit a WARN_ONCE() but no drivers
use inb().

Thanks,
Niklas

Changes since v4:
- Added Link to patch 4 (Arnd)
- Improved comment on RISC-V patch mentioning current brokeness (Arnd)

Changes since v3:
- Changed the subject of the last patch to better reflect the actual
  change i.e. the addition of WARN_ONCE() to the helpers not the
  silencing of the clang warning
- Added asm/bug.h to asm-generic/io.h so it doesn't have to be included
  previously by all arches to be available for the WARN_ONCE()
- Added patch for risc-v which defines PCI_IOBASE except when compiled
  for nommu

Changes since v2:
- Improved comment for SPARC PCI_IOBASE definition as suggested
  by David Laight
- Added a patch for ARC which is missing the asm/bug.h include for
  WARN_ONCE() (kernel test robot)
- Added ifdefs to ioport_map() and __pci_ioport_map() since apparently
  at least test configs enable CONFIG_HAS_IOPORT_MAP even on
  architectures which leave PCI_IOBASE unset (kernel test robot for
  nds32 and ARC).

Changes since v1:
- Added patch to explicitly set PCI_IOBASE to 0 on sparc as suggested by
  Arnd Bergmann
- Instead of working around the warning with a uintptr_t PCI_IOBASE make
  inb() and friends explicitly WARN_ONCE() and return 0xff... (Arnd
  Bergmann)

Niklas Schnelle (3):
  sparc: explicitly set PCI_IOBASE to 0
  risc-v: Use generic io.h helpers for nommu
  asm-generic/io.h: warn in inb() and friends with undefined PCI_IOBASE

 arch/riscv/include/asm/io.h |  5 +--
 arch/sparc/include/asm/io.h |  8 +++++
 include/asm-generic/io.h    | 65 ++++++++++++++++++++++++++++++++++---
 3 files changed, 72 insertions(+), 6 deletions(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210510084743.1850777-1-schnelle%40linux.ibm.com.
