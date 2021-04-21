Return-Path: <clang-built-linux+bncBCV4DH5YZYMBB4MTQCCAMGQEM6HYXMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A79853669C8
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 13:18:10 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id s186-20020a1f5ec30000b02901cfa330b3f9sf6649425vkb.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 04:18:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619003889; cv=pass;
        d=google.com; s=arc-20160816;
        b=YMGGyFM7bWDKqeNx6FNcsozOekH0+/qp2awDTPJ4hXgzpr+D24UFTtJcHU+VXemYGS
         J/aALhn6lCI+x+tNF+/kgPSflXbmV4Z+Vfwk236uwgti/CUikvRIWu4blz6oCAK0OUiU
         fOfV/VACRRCgQiHUFYhOu5DhGMP5eTbvjk3Bixy01aCHf8iRr6lvrf136LJdTRsV74Rr
         DGmNQ1zqyw/25hfpZU3Xe0PFsxvx0A7Z+g85qJDlNOcaCArbLIxHQWaIcWJ888J3I9ll
         lIsN4Xs53X58rlwDjhRSQKpYKEQerUYu5DJIHaYscH2TqeKJfHMKR2CWgWj4efeEPvRD
         7DWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=XrpXkgeAxONWWvU+3xPA8UAphThlQm5boMRNfUx8D84=;
        b=xxrNIc+pmSkqWawxey2JK0MLzyFegj168fNRC5TCOlH3Y/l6PxiKctRn/C7C6v7xql
         WnEpSwZSJo5JFSE3rLhEtteG0buxGCJ5rrN88mEnRoK4DonEJKUpPC6RDILh/e1DoEdk
         3D5C6tzm8OVFNXM2mnJ3vsgWMPTxGrc5LAiHso7TNWAyURUtJRwhbGlkbV0GMeX2rWV4
         z0vSHhtz8rOesMjrEpp3JRkhilq/5XCOnU83bmgGKA4rrwM4zbAcijGLo1D8gp/yleWJ
         YKfrqRcngTp6RKnf0B2NXY981vbPursDDIUjJB3Uxb+vziC9Ch7Nkj3mOzkIFZnhVzf7
         7Qgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=YUKvfRbx;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XrpXkgeAxONWWvU+3xPA8UAphThlQm5boMRNfUx8D84=;
        b=pXqmrny/EgV7moKHUWNTNRJZZ0ny3ksWHdiXbmNfd1efA8pwY3o4LmZcqNgulMr9TA
         sgaJkDNQIkBbWhXWAWehZRTY2MpH4xSpA57AKIqyj+1Sa93405PB9VHbihA9HwHhqvVg
         qw4RqFkbt+HSKA7MHv3X8WkW2TIO2ukB9PFAWTl1N4FkEeOeUC3JRilOH4SPacK0bhEV
         GXWa0pLCB93e3SgZYFlulDTqUHZ2BoaworR1+VjMFfSC/pKd2KWm19flu4nkj0cfOOBF
         6XXMRKIiWB1Ov4ZcxCaHillirfGynXm5+bZHhj3wCtlIR2+pozgmDGhYOqRQCp1PpIxJ
         kKWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XrpXkgeAxONWWvU+3xPA8UAphThlQm5boMRNfUx8D84=;
        b=nr8plMYGu/Eye+8je801v9mfX5nnKJQ+aWqMpmRYlbft35nd5y+fVoypUfoO81kNMf
         +s4fV/pp78hMoWxpt0DcHa6TZk1S3ZKGrmf2oGXHmpoCa1uZ9hqU0ILZGXy8804VzBbQ
         EZX18ZzDyhVHyJL1UlwnpbxxuJFy/Dp63Hbte0/QE13T/5n7oDWa2GBE5xAHi1c2iwm4
         /CAFnXkeTbCvFylzK2LiX3kwKeyvsdH3swhz30Ew9NACTI+PlhOsRMYdZIoognegJQYy
         xw6KfnG37D38imXfRJZRs8k/f9ibpLCzAa8PM3oQaocbwhZLLwlW8eBkJkX08roW0mva
         pbIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530s7rMMh9lAEMBTJ6OPcny4nJgfIPN73YVl6PJHKSpf9S0JWgPr
	MSuSYoR5nwZxBgMvYbF91K0=
X-Google-Smtp-Source: ABdhPJxNeiom7UPCPHm/hdhP4f+xqx2KFD/oa9yixi3ULZ1CuznG42Opi132QFNESP3PkS6qXH/5sw==
X-Received: by 2002:a67:7c93:: with SMTP id x141mr20169601vsc.60.1619003889718;
        Wed, 21 Apr 2021 04:18:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fa8c:: with SMTP id f12ls310075vsq.5.gmail; Wed, 21 Apr
 2021 04:18:09 -0700 (PDT)
X-Received: by 2002:a05:6102:a0b:: with SMTP id t11mr24867364vsa.24.1619003889298;
        Wed, 21 Apr 2021 04:18:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619003889; cv=none;
        d=google.com; s=arc-20160816;
        b=A7czX41LuK+nAJyPqaueQr/fcZ61lU7/UIkMp+WW9SSQOwvCkOElodPi/Ep4XB/0gH
         EDF2eSErjeJmVWe9gDNvzTCv478uBpgGGKN8dS3ajHJSPwi1M9bX7y1SM1TtS+oVr280
         XfswyqpPFSG17YzyWM2DwRb6IrJcr/bUHOMLkDEwnjb+Uw9+9dfVl3/RjA2W9jwecgm7
         iKAgWwNDYMZ6a26KkIzH1+yL2ERNjltKlhkE8CPlNVQDdwL5x66CK+GHVHCuTmYd6gdw
         oGpG476vjWtI9H+fO0bw+HBYMuld+RhmixUjIzHWfHEshG+VnXFd3yNPhnLBD7ZB1e0C
         COpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=jAiMiw2e6+1XZZGZXBMG035KEyr8tjtVKWXIdCM0biQ=;
        b=Z2BL//w4SSq7yK6ZN0vKdTqTmNQnrOEL3VOgiQiNYbKuDeaS+WnfKX8wF2N82QitrJ
         g3dhEo3CswLxz/6wXASKifr71ImGgjG/dwrYSe9RzQNyOUBu5Ao7LP69OX8JO9eHMp9y
         t7OKnj7I3d9Q9nSQYEsLGu8DyJbNdc7VyGhmH+/S+fXWKd45OsZgcPorG91QkhNJXYrU
         wDqXHwCm4Q8CSPRy+axrJwCWSOKTWNgXtVUWlX+g5CsoU8GUjzHKGb6VYrM22jWy8j2R
         vpVDSi4orrmmO7i/ouha4lyOEWg7WuvcgFvnKf/sXyQlagIeJZxTitaTliTZR2sSdl2g
         yo1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=YUKvfRbx;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id t127si104453vkd.2.2021.04.21.04.18.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 04:18:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13LBEZRO050148;
	Wed, 21 Apr 2021 07:18:05 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 382jds14pq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 07:18:05 -0400
Received: from m0098414.ppops.net (m0098414.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13LBG88B056012;
	Wed, 21 Apr 2021 07:18:04 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com [169.51.49.99])
	by mx0b-001b2d01.pphosted.com with ESMTP id 382jds14p3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 07:18:04 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
	by ppma04ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13LBH3ZK018782;
	Wed, 21 Apr 2021 11:18:02 GMT
Received: from b06cxnps3074.portsmouth.uk.ibm.com (d06relay09.portsmouth.uk.ibm.com [9.149.109.194])
	by ppma04ams.nl.ibm.com with ESMTP id 37yqa8j91u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 11:18:02 +0000
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
	by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13LBI0tE24445332
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 21 Apr 2021 11:18:00 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 67DC94203F;
	Wed, 21 Apr 2021 11:18:00 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 0988142045;
	Wed, 21 Apr 2021 11:18:00 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Wed, 21 Apr 2021 11:17:59 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v3 0/3] asm-generic/io.h: Silence -Wnull-pointer-arithmetic warning on PCI_IOBASE
Date: Wed, 21 Apr 2021 13:17:56 +0200
Message-Id: <20210421111759.2059976-1-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: EAQBMOlkNhLPmhmROBdDkmWEOEqTImRJ
X-Proofpoint-ORIG-GUID: M-rChegDgNZIrGrKaOcdNqLCeP0dzNQa
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-21_04:2021-04-21,2021-04-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 clxscore=1011 impostorscore=0 adultscore=0 lowpriorityscore=0 spamscore=0
 malwarescore=0 suspectscore=0 phishscore=0 mlxlogscore=647
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104210085
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=YUKvfRbx;       spf=pass (google.com:
 domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted
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

This is version 3 of my attempt to get rid of a clang -Wnull-pointer-arithmetic
warning for the use of PCI_IOBASE in asm-generic/io.h. This was originally
found on s390 but should apply to all platforms leaving PCI_IOBASE undefined
while making use of the inb() and friends helpers from asm-generic/io.h.

This applies cleanly and was compile tested on top of v5.12-rc8 for the
previously broken ARC and nds32 architectures.

I did boot test this only on x86_64 and s390x the former implements inb()
itself while the latter would emit a WARN_ONCE() but no drivers using inb().

Thanks,
Niklas

Changes since v2:
- Improved comment for SPARC PCI_IOBASE definition as suggested by David Laight
- Added a patch for ARC which is missing the asm/bug.h include for WARN_ONCE()
  (kernel test robot)
- Added ifdefs to ioport_map() and __pci_ioport_map() since apparently at least
  test configs enable CONFIG_HAS_IOPORT_MAP even on architectures which leave
  PCI_IOBASE unset (kernel test robot for nds32 and ARC).

Changes since v1:
- Added patch to explicitly set PCI_IOBASE to 0 on sparc as suggested by Arnd
  Bergmann
- Instead of working around the warning with a uintptr_t PCI_IOBASE make inb()
  and friends explicitly WARN_ONCE() and return 0xff... (Arnd Bergmann)

Niklas Schnelle (3):
  sparc: explicitly set PCI_IOBASE to 0
  ARC: io.h: Include asm/bug.h
  asm-generic/io.h: Silence -Wnull-pointer-arithmetic warning on
    PCI_IOBASE

 arch/arc/include/asm/io.h   |  1 +
 arch/sparc/include/asm/io.h |  8 +++++
 include/asm-generic/io.h    | 64 ++++++++++++++++++++++++++++++++++---
 3 files changed, 69 insertions(+), 4 deletions(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210421111759.2059976-1-schnelle%40linux.ibm.com.
