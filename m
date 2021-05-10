Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBG7J4OCAMGQEM3KLXRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 58175377EA5
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 10:53:49 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id w1-20020a6bd6010000b029042308b21fb9sf9929068ioa.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 01:53:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620636828; cv=pass;
        d=google.com; s=arc-20160816;
        b=X0OVSm3rQLVb1+KYV/2yPSsZkW4uxylVyJBfBVbWP/gVeKVc8+b+M/ZWbUNDpKNh/d
         85dm8zjxnY/2r+Ovbhurfr1UXwLsHsd5o9d7rxy4IELkqjVlzIGCkgRo4ofir2jBsosL
         Zn00ohQK1kRvkDj7ng4VEfLe0n5kiFO/5SGH/4yWnrFjvDjfAFo8+L+qlY00fqNK55KU
         OJSGPA1TL2EJgn6bWcS7FDhC4ArNth3qpBxE6Blm7WAxdalpkhktCNaNZCEMRJMMFv4e
         wrze3Gb5F7mvzyL00ri8/oo1por0si/KmMwjmhAFa6WvRh4DQt8pDaH7p9bJ76rt4ahc
         Kp8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=vWDmN1Obdd1cfe26duUwK/xIyo1FDyRJ1sXvjxe0iNM=;
        b=sZ5refADO9xXeC/zeZPcNVZQwtNvd8YAzh6x6e/EBkGdZXs/rcUfI+vwv/Cv2WlR4A
         Hh8q5SzLN19TfW5tOaBJ668HgDk8AWNXvVl+ZwZumNQ9RKcpE9lLYGB7rYAYIeWwvPVU
         37HWIeVtGaQpAJyxXymvX7Oo+5MzNyfqveHwPJjjDrjQl6S56OKwyKhkXpoYznO4gus3
         jl0dIe3pjnodkbt50JOp1NhurgfFE4y4NMvqIIM8Qrg4sLIxezzXZZMfNbGTVNKxGeY4
         e4i1iKchD2oFmd3yg44JVG0ZQ4MZo3a7vNAMly7mnUtRJost3Gtccnz5bdy/ckelWwoS
         XLGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="qB/vdMLH";
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vWDmN1Obdd1cfe26duUwK/xIyo1FDyRJ1sXvjxe0iNM=;
        b=GqIL2ckgV+YoHhnv85dx2p+1HPDlJcQooEbApQ5Rg5wqoN/mWueDKWUHwV3FVYNmTN
         2apg/gdsWuC6sBKZgw/4ndrDam5MZcnvDTykCF3KjFdIQH/Ki7nQW9Tem5bs1cnRfV8w
         s153hJR8UcYrP0z4e/fzqjwzY4j18UaFWBCKgK053LYFPKlR7hmlEtqgeNEnKm89zwVz
         NceGNDiuzk0U7kMTycCKF4V6iRDDN6fGB9ZbTg4asgCgCx5gTzdHeZIErJ1ivsm9P9BZ
         ONaeg93p3VvIRkNPiHyNRpGQS8Ek2KmxNOaD+xHWK7GvQ+YS3QGywCTZhSDMyUEijw/I
         j7aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vWDmN1Obdd1cfe26duUwK/xIyo1FDyRJ1sXvjxe0iNM=;
        b=sRA+yBVOy/NHabwYkCBCVYRZgZRXD2EP9U1SEu1b3YWsAJgcwiA+5SJY0npIUzlUnT
         tq+eazbNL2J96kEawnpW7yB6QjeS2yQ0ih9zxtyiEAKqj/JyN5rW8ynn9Ppq2t1SAV+n
         x66Efl0x4eFdnJ5GxSAHSc2IUfzkpPNEJIXuyNM9vjbrH44fFGSwaUju58UwcH+AIuy8
         X9AkZ7WUf1dB2AdHl0nHMkSart6N+sThJ7FxTXge/t0+JHxuQ3Q7WJZ2Uk7fhprjBICR
         fcyHG2v1gokomZd23UOsKv4v48pLGRE/yHxG5iwuHNgYcICtbZ8K3g0vTJxIHevAMbQl
         ZO6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zLRRxMpdJYn59/4pRyrI8lTzjUBu7tWGqi9j5ohlnYdUx7oPM
	DjChewLCtw8wlPvjmb/vNeE=
X-Google-Smtp-Source: ABdhPJzuTAKtTVklCK1SFDkX/Gy7rvgSzSQA3Fbf9K/0bXqIJnmy8xbXE71W5QDuOEfHxtvtXWdIhQ==
X-Received: by 2002:a02:9505:: with SMTP id y5mr20438062jah.27.1620636827918;
        Mon, 10 May 2021 01:53:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f02:: with SMTP id x2ls3453172ilj.6.gmail; Mon, 10
 May 2021 01:53:47 -0700 (PDT)
X-Received: by 2002:a05:6e02:1b0f:: with SMTP id i15mr2192675ilv.164.1620636827571;
        Mon, 10 May 2021 01:53:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620636827; cv=none;
        d=google.com; s=arc-20160816;
        b=LR6TszFPJZavozXhx5XMtropvt1KZpRVDP2zgm7dpP/zqVbHG5ro5HNLr9WZCiYNXn
         DNl1JbptFdDGoznbTZjPJ/mI8HAun181/0VrWpG9d/HNt9x/90FkNkwhdmr6cyUVfnTD
         QJOpe63WZUWZ6lvAdIyw1O/Ged69Y6tiC3dg62zkezenXQZ0nNZxDPHHJuEsVCj3uw9e
         wugtHpiVF2Eoa5xzQxmhhbCG/Cal87AVmyjz9LV10zob8R/W6D5iL9Adv2aidj2B8CZa
         K+1TCXIs/QQ5KNgrpQSj/YwWbMSQ++KowA8NZQQz6stfKZcU1Xp+cbDVt5JKb8TX49zA
         CdwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=6fFPdOHxtkUTM7Jw0a26ZGpUOLJ0x+XNGqYwRDW5zLc=;
        b=z3k+K6FtWvrUeFrEdpbidmqKPlsV9IF9QpEiDiulbsiVuBl7Ra7Ce5YgMHNKLaPm/S
         5ivOzKMDBIZZsJ98R4dU2ePGjjnnucdVeH2LgV16XUGTt1tOl2hKQII2fUVSwR6LtSbv
         KB7lc6dw4lq53Xt4vfIfkxaZpuxsOFJZnq0kczm3Qjd8y0yJaI8kqwbNzt8i9L8wslto
         f4z3Pdo7K39BKBPhQBayX0iGj/crgUhyuHmYEIS1wVlKwsqGGi9JTRhwNzZO7wUODflv
         W/7pUmgzDr/gQz3/fIiU0buisbhwmM5S+py/w15x48k4ysn7WmIsgoypMBjPFm3PGlCT
         SmlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="qB/vdMLH";
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id o3si1539014ilt.5.2021.05.10.01.53.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 01:53:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14A8XsrS191808;
	Mon, 10 May 2021 04:53:44 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38f19a0qqq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 04:53:44 -0400
Received: from m0098421.ppops.net (m0098421.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 14A8YEa7195724;
	Mon, 10 May 2021 04:53:44 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38f19a0qq1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 04:53:44 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 14A8qbQE032233;
	Mon, 10 May 2021 08:53:42 GMT
Received: from b06cxnps3075.portsmouth.uk.ibm.com (d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
	by ppma03ams.nl.ibm.com with ESMTP id 38dj988snn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 08:53:42 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 14A8rdUv29884706
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 08:53:40 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D1D3E5204F;
	Mon, 10 May 2021 08:53:39 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id 7F46D52051;
	Mon, 10 May 2021 08:53:39 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v5 0/3] asm-generic/io.h: Silence -Wnull-pointer-arithmetic warning on PCI_IOBASE
Date: Mon, 10 May 2021 10:53:36 +0200
Message-Id: <20210510085339.1857696-1-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: xXMyFMxMyqBBSOV-lgo2PQozxcUhUnUn
X-Proofpoint-ORIG-GUID: LmKaNdj7E8eXOr6W-uEcpZMInnDmFIGb
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-10_04:2021-05-10,2021-05-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 impostorscore=0 spamscore=0 bulkscore=0
 mlxlogscore=670 adultscore=0 lowpriorityscore=0 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105100061
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b="qB/vdMLH";       spf=pass
 (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as
 permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210510085339.1857696-1-schnelle%40linux.ibm.com.
