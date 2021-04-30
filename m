Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBI6OV6CAMGQEGPWSNVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BF336F905
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 13:16:53 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id g21-20020ac858150000b02901ba6163708bsf19242152qtg.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 04:16:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619781412; cv=pass;
        d=google.com; s=arc-20160816;
        b=DBJ6xgU9lVGhrHQGh49eCEFBNQSIqhJe7NU7zQs5EWpJfq0XiukBWgW89CQ4DSTdad
         y42heUVbNIebS3V+Eqa/maRlrtNLfFw1UH/dZKr2vJQVILnun+4MROz6QwpAU4TRW88H
         /yIfnJU7pO03BIyIL1O+/KbcKr9mCVvE4SZ16LDwWrtDUBLLFaUlJ2qpuVuc8W6k5CzG
         uyPNKAHu9sY29u1crWCO96GkN74HikowxA0SfOLbdBcFy2A05D9Gww25jGXw62yuuWd9
         6tGHeNIEfNtETt9mlyN1qulRbi1Ki9JS1Sw6oNY9RhAQ+5dqEo6TPgsZq6Q4KaRdDlus
         HXtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=4C0ZNrMU0/aukIk1pFIRULj3IV5+ijaMQ+IUsnqOs8k=;
        b=J9ev+Ra6LdJXLP8W4RhMNXBzAwqkPR177OceTYh8MbbYPgRcbEM+W1qbbS1DiNbIvu
         C49iWkSOjLL+3hNB48/50GUFICu+lD6bxK2SN3PBav5ygYBO3cicHhHyWVfO6BqVQiW0
         IsAEmAHPe4HbWeuUlphz23fsjWlmjRxx+MsG/03umjxRI3GpoSL+OO8HeOn7AXvnFLSs
         DMj+Z/vFDRJ1k8M8uP5Gb9HglmQ3yonczAMVMOKRQT4qwsiUq1Y2zQL1ncVdW262ON1K
         KDO5ZjNKfqxH8IkNllUReOJ76/zjTWkIhLXPoP8Ac0qZvQslT17N2kkfnCGXocLtEaKS
         fRAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=BNfwknSm;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4C0ZNrMU0/aukIk1pFIRULj3IV5+ijaMQ+IUsnqOs8k=;
        b=avDMdWq61wdE/aMyDVJfZmVfkN4f6eAdrZKTEopPYlWrdZLiZhzQPZe9BFFlh44BoJ
         bC4vzCadU9hqV7AEPoY7jANI+fxNiYTWvQbvBqNEX4M4kSEzpqoCFp5+R7wXRTQMRmBf
         S2pb5cdDFAQNrlrCKhXbKZOAoy6+Xsx4y2dcJpPaNYmZnOOpNmbCNGOZhwf/cKsm5lig
         EEzz2occHvADuuyay7mmw6FHA3uqOpNwTsn3lFB6lUrTC3ccvR2RqkOmD3XRvmtIWkpJ
         4muKkoZ55/WU5ljfhpNUOS8iO+4epS2rfn2i2S/UaoJUPz3/4xiScRVNv/+GTBS1ZKnK
         s/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4C0ZNrMU0/aukIk1pFIRULj3IV5+ijaMQ+IUsnqOs8k=;
        b=b2KEFVhbpN6NMzo3ACmF3HNqGfSnrzt8Fkthi+EBrfeRr92+sJiNEmGyW9fgQ/6AnH
         dtb63N3v1VCffCRNh9BO3oPilT0Fxr5j+xCO6BS82KTXcQFdt+vuJn3+LBaynyHnSPaq
         r7xNVGxfu0sOywhIETeNSjD1XfxjIIoUmoBtE0VkB3SYG6j4dTHBAO2g3A7kFmBA4cgs
         Ubm80FYBjJH8mz+OPjhRkEwmu2mqKAZUUEusbxLKhl25jSm5Jjd+d9sCVtIzdQgqOh1v
         4CGhOrpAzQTXkGAn5LYnAlYFioIGEX69qwXK9oUpaLelSXmyc/JF3qPDNAysT98pZwaL
         5xkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532muAyDyiBmBxxlSMz1FObKS2mtrXDX6qyqMBXy3pXlFS/TSnGm
	m2M+ZY9EDQzMpVLN3XAQZrI=
X-Google-Smtp-Source: ABdhPJxkkGJ1coIWY4rdK+sTL19FmG8fpr1Qc75L86+eLqhTcZQKPmBhSDC8VXmGD/F+P01sWkgzOQ==
X-Received: by 2002:ac8:548c:: with SMTP id h12mr4144590qtq.272.1619781412041;
        Fri, 30 Apr 2021 04:16:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f28a:: with SMTP id k10ls1829170qvl.3.gmail; Fri, 30 Apr
 2021 04:16:51 -0700 (PDT)
X-Received: by 2002:a05:6214:b27:: with SMTP id w7mr4780570qvj.18.1619781411583;
        Fri, 30 Apr 2021 04:16:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619781411; cv=none;
        d=google.com; s=arc-20160816;
        b=aarTFF2kQR5/jawlsiyxk1OK6U9IeU1SBiCFMrkvnIFQX42oql+0wOwRYdCf7drPt4
         bU/Zcz/rIWwTn6odIhGTuKIw7Ecqrr9Upnxd8+oxL52EH+RfamqwXR8trMXojn06CLvR
         DkwSGpi0IPXsvtucVJJcGjufXPZ8uMOmZ/BzmkjLwWPjMujBN+NikhIcpatcoymjxDXH
         2zVZ0pvDxkBLTDxwXxbuxPIDsNDnsPiEjFP269Rw92ozIwc2bpWJvZIxNm0r9yw7300n
         9cZx6D22wMOIkoXQdD64Ua07xb3FDX93mqD0xmi9YBNUbPIJxogz8y/M3WaF990M+TLL
         HGNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=X7H6Thm5vVvEdOzIMF99WmtzE3yIxl5XgPZmIRQQpSM=;
        b=oRcvkKHCpB/WXdsGM9K3pefsr4icmvh8qy/I7c2mLKBSp5mkj0d0bm66qVYn3cHXUj
         UdSPt4OtlPS+hyeslEvA6bo5M9wh/PyMlFLuSGw/wZ0K1b8u67S3Pgt9gngZck3QWNJF
         QUqrkVoC4af24mXVXXdd9S1Rh1Nneum/eWCBRO178hMxWVkhWHl5YqLuF0ciuP+xy+l/
         enDPpsS7+WMDCO/AKIvDXSGO38VxfGxC+OjnEN12KK7+N+bKSU8xSrLfGJ95q4wArrfl
         XXweaS0OBsWbIv4TFtx+XqUkX13zK2GvIY3zTsW4S40USh0e1l4z48dlcaH7h6Bzg5ZB
         cKpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=BNfwknSm;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id t65si89152qke.7.2021.04.30.04.16.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Apr 2021 04:16:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13UB3H4M016527;
	Fri, 30 Apr 2021 07:16:47 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 388drswy1k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Apr 2021 07:16:47 -0400
Received: from m0187473.ppops.net (m0187473.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13UBDd8B052160;
	Fri, 30 Apr 2021 07:16:46 -0400
Received: from ppma01fra.de.ibm.com (46.49.7a9f.ip4.static.sl-reverse.com [159.122.73.70])
	by mx0a-001b2d01.pphosted.com with ESMTP id 388drswy0h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Apr 2021 07:16:46 -0400
Received: from pps.filterd (ppma01fra.de.ibm.com [127.0.0.1])
	by ppma01fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13UBCsJJ010967;
	Fri, 30 Apr 2021 11:16:44 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
	by ppma01fra.de.ibm.com with ESMTP id 384ay81q8s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Apr 2021 11:16:44 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com [9.149.105.59])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13UBGf4C45809994
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 30 Apr 2021 11:16:42 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D2843A4057;
	Fri, 30 Apr 2021 11:16:41 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7DF82A4040;
	Fri, 30 Apr 2021 11:16:41 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Fri, 30 Apr 2021 11:16:41 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v4 0/3] asm-generic/io.h: Silence -Wnull-pointer-arithmetic warning on PCI_IOBASE
Date: Fri, 30 Apr 2021 13:16:38 +0200
Message-Id: <20210430111641.1911207-1-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: xRR3TU8l-97YDHOxFoi3RsZeyFN6kn-G
X-Proofpoint-GUID: RZlDyf6cM3uzqma3gwaEolsaHKGd2vpX
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-30_06:2021-04-30,2021-04-30 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 impostorscore=0 mlxscore=0 bulkscore=0 spamscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=729 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2104060000 definitions=main-2104300080
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=BNfwknSm;       spf=pass (google.com:
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

From: Niklas Schnelle <niklas@komani.de>

Hi,

This is version 4 of my attempt to get rid of a clang
-Wnull-pointer-arithmetic warning for the use of PCI_IOBASE in
asm-generic/io.h. This was originally found on s390 but should apply to
all platforms leaving PCI_IOBASE undefined while making use of the inb()
and friends helpers from asm-generic/io.h.

This applies cleanly and was compile tested on top of v5.12 for the
previously broken ARC, nds32, h8300 and risc-v architecture

I did boot test this only on x86_64 and s390x the former implements
inb() itself while the latter would emit a WARN_ONCE() but no drivers
use inb().

Thanks,
Niklas

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
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210430111641.1911207-1-schnelle%40linux.ibm.com.
