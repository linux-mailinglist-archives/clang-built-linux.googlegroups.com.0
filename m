Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBPER4WCAMGQESHVVZWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 834BD379166
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 16:52:46 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id j91-20020a17090a1464b0290155d0a238desf11307771pja.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 07:52:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620658365; cv=pass;
        d=google.com; s=arc-20160816;
        b=lH9MbCdpOz7AnANSgIK2oSsnu8Ceaa2RoxH9alCfNgX6V6O/Sia3L5DrmKGuHoEbwB
         beigK9lwqx0+8L6T8Ud9QaFJwM3+zsuz551HjW7M+5etrYwB1mvFkY4Jt5iPLsk0JPSS
         rEfvDH6rEGqLDQe9Bn9BSb/E4wojC3InVGzjznpcCtc5Tbp3bha+Wx6FKbXGdO9acd6U
         6ZMv/ga6axAAzlK/67zp5DyJ26G4CVfgfbJWe7t0ozG3wMAcD+0VtyyrlhK4YQHS878c
         IsVBGfu1eVPCWuWQUpxiVz3Qj2pIGXkVMW3XW6A2+Ji4gH/EVR4p9arv89l/qidQgvWp
         St8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=UVZOj68BS6D7dYbEQiKf9FJaBGX69NtWj1xXAwavH4g=;
        b=UeJgxCeX4xvtpoBqnX/IIYbl0Ki8jbdjdYBw82bRo8OkXFvQcQQA4pt8oxAARnomCp
         31RCquijytQ1Heunl6WSfWQ57omHToo3gIQhPV8CASzJQ6m4RaaGdThL1ReltavV1GD9
         Re7a4/p4Tk8aUWqVX9wd+PInHxw31dw/iKBLRaiMpqzvRbpMISNwDud+FSAyPtq/BUSU
         KwnKzjKrkz4Sxn6xS9pByYmxGuZesorD0EabZEQ74mwYB/EorEz/nGwgK5w8nnZUtLJ0
         YwwZ7ds6LcTNZtR7X1Lmodp8r9whQnB7K2uNG3zvZDdMQzRwuBl1IhlhOeono/ac5fFy
         SwDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=NjMws1Y9;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UVZOj68BS6D7dYbEQiKf9FJaBGX69NtWj1xXAwavH4g=;
        b=jT7lF1uH6e08hylac9Yu6sGR+kfCuPcuc8gTvlkNNAnzWrI+z8/pDMdEyoLLitQ/pi
         /BGMvyEJMhHImh0WeGVdXVrQ2R/7QqvPbIo7ibB+LF+seRtfRzZxT4PGR66C0bsbRHc5
         N/6bnfe58Ber4tzoCE58C9MgJtcW1kuoZL3qg6S98aaA0nLm56SIEeYqa2bNVVQIuysR
         EtpA8KdpitRWdM3zcWzjpl81RALQcyayMWAlhHLL/tNKtK9gaHmmESmK/sIYGld/2mdC
         7ptqHMRKqWAqQTM6Nxlonl4jrFhE0pxAN5GJmta+BeG5ffMMMGKpfoqgKep/VSNll3bX
         vkrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UVZOj68BS6D7dYbEQiKf9FJaBGX69NtWj1xXAwavH4g=;
        b=QP2U7WRrfjq+xDN5fl4+kVnNqhy5Eva3WOmvNSfheH0DV57I0FO0hgL6J81xbaczDi
         MxlsLet1ib1NbbvxPVl5jEhchCbWSF7WLRgoHZBl38ZqBhgZejeuCaiog1UvbgB9Zlmg
         CtsmEQYA/NTX4wrNBxlY3us0iFkI9Lv6BbNKI3dfCgIxd/293aPLeD86KkXDB0W+BWm/
         reHsvKUaI0fAZ9WdAS+I4u1XviWEk/CBSDAdDUO/pqbq37VdhoL/ltsAEj3I0IMd1Uu+
         UrVU5mNYX2Vt2B7gJ4holE9SPPXt3w2LmaoILPX55JV2f1RkEzCdzHdgWn3ghqsRnfup
         rSow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jAVZzGy6blyCswvUq0G8z8M+jgTHA9DL3ociZD9YYovef+QDU
	CUxpOSL6UO7BmXH7VAWb1fA=
X-Google-Smtp-Source: ABdhPJw3T+pkVO/Sk0EoaikPzUk1RRYN15EQR/oVxLry5cN2fNPde37BIkp4N1N1+aUuDvUKdMNFtA==
X-Received: by 2002:a17:902:9b83:b029:ef:4dd5:beab with SMTP id y3-20020a1709029b83b02900ef4dd5beabmr770200plp.76.1620658364828;
        Mon, 10 May 2021 07:52:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:860c:: with SMTP id f12ls7606373plo.5.gmail; Mon, 10
 May 2021 07:52:44 -0700 (PDT)
X-Received: by 2002:a17:90a:744e:: with SMTP id o14mr15837264pjk.96.1620658364225;
        Mon, 10 May 2021 07:52:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620658364; cv=none;
        d=google.com; s=arc-20160816;
        b=dSAi1cJXAhBHAnxueU7TdL1DuEgx0/LSZ1pdqYbms1F4cbjHYyYi3LnctZFKt1Gd0P
         EjdDNLWX+LR3BuwSrPgzn7KjWb/rbxzXJe6RdzOvow/FcKP4orMW0xaS9V5VQgUgfN8t
         KHaFhzqb6u45tcVz8XtfPwMt5cnSgNB1J8ErXLLoo3ti9n9U00XTvty6mbBN7udTUU8k
         /2buIAxCvKD7qwKjAb1q+nF7qetZK64jp7xmaiUPfOWo/0smVgZ78mrH+ZHL94hjg/+4
         YKK4fQ+GGRvmY5nbCZhMSLODjeSjTZdoSNO4LNbxuwvTGKmHBS7bcb28SR5kS5vRr9yu
         6nuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=dY5rHenPOQ56zgTRtVvd0ws/b24uJv2FPl1M84JdB3I=;
        b=J0MR11ybHV2Mzgy4ccFZ5u1C5+YpEmqbq4680aveFwJjs3xYQympi01IJ4/I3M7bah
         44DG5L+VKErGbdzR9rqqM7Jl2YOuPNkNu6MYYeux3L3uwONYAa4tRCIfuNUa3IejelfZ
         aMkU8E2xCi1UOyjLtu+ZigpcVQp51BSXaCZuElI29kzAR+pa3JPWVmRWmg/cK5+hyAMC
         Vv/q1Z2F8JNXvHCjU361zo/FkCiZzoqpuOpOdGZuKbHfIl9e72vQcFvumaTluSJpmbGH
         o2tSi7DdSqz9aA4pDzKrmCBYhhknYNLkKe9ICpVHs9tdti66YwBNBRLgPppEzBO6lpxj
         pEMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=NjMws1Y9;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id a10si1374265pgv.3.2021.05.10.07.52.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 07:52:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14AEXqH2030941;
	Mon, 10 May 2021 10:52:40 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38f5ytjbph-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 10:52:40 -0400
Received: from m0098399.ppops.net (m0098399.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 14AEXpIJ030871;
	Mon, 10 May 2021 10:52:39 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com [169.51.49.99])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38f5ytjbnk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 10:52:39 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
	by ppma04ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 14AElnun002962;
	Mon, 10 May 2021 14:52:37 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
	by ppma04ams.nl.ibm.com with ESMTP id 38dj9891r1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 14:52:37 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 14AEqYeK65274364
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 14:52:34 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A88B85204F;
	Mon, 10 May 2021 14:52:34 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id 4E88652050;
	Mon, 10 May 2021 14:52:34 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v6 0/3] asm-generic/io.h: Silence -Wnull-pointer-arithmetic warning on PCI_IOBASE
Date: Mon, 10 May 2021 16:52:31 +0200
Message-Id: <20210510145234.594814-1-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: mjhb6J1DiHtD0UWPGo4ogLSab9rjyQv4
X-Proofpoint-GUID: 2Nm1GNL2tf4tx1Rr4qUiX2WRhPVnoUcl
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-10_09:2021-05-10,2021-05-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 impostorscore=0 mlxscore=0 spamscore=0 suspectscore=0 bulkscore=0
 adultscore=0 clxscore=1015 malwarescore=0 mlxlogscore=748
 priorityscore=1501 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2104190000 definitions=main-2105100105
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=NjMws1Y9;       spf=pass (google.com:
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

This is version 6 of my attempt to get rid of a clang
-Wnull-pointer-arithmetic warning for the use of PCI_IOBASE in
asm-generic/io.h and fix the NULL pointer access it points out.

This was originally found on s390 but should apply to all platforms
leaving PCI_IOBASE undefined while making use of the inb() and friends
helpers from asm-generic/io.h.

This applies cleanly and was compile tested on top of v5.12 for the
previously broken ARC, nds32, h8300 and risc-v architecture. It also
applies cleanly on v5.13-rc1 for which I boot tested it on s390.

I did boot test this only on x86_64 and s390x the former implements
inb() et al itself while the latter would emit a WARN_ONCE() but no
drivers use inb().

Thanks,
Niklas

Changes sinve v5:
- memset() the buffer in insb()/insw()/insl() in the WARN_ONCE() case
  to prevent use of uninitialized data (Arnd)

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
 include/asm-generic/io.h    | 68 ++++++++++++++++++++++++++++++++++---
 3 files changed, 75 insertions(+), 6 deletions(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210510145234.594814-1-schnelle%40linux.ibm.com.
