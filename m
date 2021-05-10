Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBOPG4OCAMGQENQGVPWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 9768A377E7D
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 10:47:54 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id f7-20020a9d5e870000b02902f479dba730sf1695994otl.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 01:47:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620636473; cv=pass;
        d=google.com; s=arc-20160816;
        b=BYaTjIYrvDy6KeIOoTlJaChE1b6thxCFHFnqSp+4F0omRm6vC3LTWu8BjQ2NZl9Bnr
         1cPSifUF6zMB6BJJY6Xw0GpXfbSja1wHVEyv0OvaDPC8PgDac64rlkPg8Bn2hJMIIiOY
         rYFOFKSZSQKc/q0YIFdobUX61ZZxEXeFfYHrPMfP5FtDrZ+5wRoSjlGkre6S/JayKaZ0
         lImdtHKyL3Yr3ov1ovXBATBi+uOQDe4WDeDU9obV3mC71q+sVC1u94QP0jGdMGphtgqn
         E6h0xZLFW8RfNhOwTgAzPpnfT7CcYONr2nH8TXDKNuWywARhdJktuJmztptCdp7Wv3/G
         1GKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XrAtGttpREWjwWGgw2bSXfmg/h8Tlqc/pI7CICRnB3Y=;
        b=NL8lAeDtntIoN5bXz+TgHdefQpM1gVIpyhq2tiaKlF5npvrUi4WqYyZRluIN7JJILt
         zHBRM58LbQPiy9+uxfXnaLLO91mpdNpFNgkyUmiXqZhqUGnUtpFpJtpQaTWdWE1eiv6Q
         /iOmivMy7clzbqZscPmdWVBWnSN2ddY2Tici1eaA+S1JHjYYBTBWJTYg+WPqHnJW8iPZ
         gPuThUaSMiASnxV6OquqvTL9V0ujghk5clmvQFSth7FS+K3EbahwdJ4wIEpjOHNSg32c
         EGa5aL91X8u/SdJBCo+AfHhhswswuP4EMoH7HPJ6spJHoBKnCdP0ehsMypw/oVTSdfMC
         wZjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=ORnm0lLU;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XrAtGttpREWjwWGgw2bSXfmg/h8Tlqc/pI7CICRnB3Y=;
        b=pD/dPzbbPgylupChufwuIwK53ZkGZbxkkyvdiwa91BpVltlaiUXqgWwvMMr2mJoDpL
         A1tM0mv9NAnmcDVh5XHr6fu/fBlnbmbvThXTmNTVgdXvevWIaWxBYseY6w9elXwhPWr0
         hn2paMOWsrSnuWW/EOgr9d8vAt7JlxwuE4FbU8nNBhovWz2rmWdWmiMZxpADkaUzUVSY
         j4YHZagvLiVTbfc86GLo7Le6AEC+ZLaUJ5bCgPyZhMXQ62cT3GuI7KSgwPl4k+N6zwPX
         u5yuCsFtZRCY2lfE3mJGR8uNebmaLIcZuXNfQXGf0SoXNbiYQCbR8actGnEWi4ik1uEb
         p4GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XrAtGttpREWjwWGgw2bSXfmg/h8Tlqc/pI7CICRnB3Y=;
        b=qmdNPHAyX1iUwmoDqtkDLVZmwHhYFSWqKPoXE0wHW8CW2gHiucp/EsiuhY5MhTNvJa
         Qx2Z2qDo+Ra5E/fh+zhlbPcpOjat/m2X3U3KDj3O5fNMsz4hJvEzLDsorKzCWe8PkbXJ
         az+9rK4agL5f0O07/G8WIL3qGBhYf4s9/i56f9XSswJh0CakChzfITbTBmij3MtdkLlQ
         ibrgTaKKcDqP8kpIjWSPZxfvDneoM6y1VfSoriJoUzOMNRgaWJPx2Pmy+q4Kz0aglUY/
         ETm6PDNIYDx1prU5uaSdIUGOTOCZAiu9koBczlGrDwfd9GT1ZYNm87ayaZ5kl8C1ZETs
         3rBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333z6Q9++W3gUD3bOTUzsuKHsZtuqoad+f76GXhnsxsXrl30Izy
	9E/KGOPBTZhsEDx1aDoGY+o=
X-Google-Smtp-Source: ABdhPJwFq96E4868gTfbRKX5EXqY2LknrWK61t8I+6YoWeitp+ZS2JNqmBhdrw6sL1iK1M2J1A/t0w==
X-Received: by 2002:a4a:4ac7:: with SMTP id k190mr17851644oob.9.1620636473516;
        Mon, 10 May 2021 01:47:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c08:: with SMTP id o8ls3909925otk.0.gmail; Mon, 10 May
 2021 01:47:53 -0700 (PDT)
X-Received: by 2002:a9d:7593:: with SMTP id s19mr20845410otk.268.1620636473162;
        Mon, 10 May 2021 01:47:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620636473; cv=none;
        d=google.com; s=arc-20160816;
        b=dWd5/aPPEGrgijx0/raUfeTToy7W0IJ8fcRNG6/pEfTxdZc7peRKcIlPJzqt1sKcof
         u8Gj2+E9E8COL5wIjLVX1B2sdG686mlgvht7WlcztvK3L/ksa6IIvrIQWV5quaMpvL53
         2NNpON45A7GyYPL9Sck0ECjiPRdYu+XqoZuyHZYHxacAUF8fBmEOc9JWK4KTgAkzdjqO
         Bhnbmaq7mmQ1Pt/l3lWFFSHcr6tRZh6kJhCk7wd3Lr2552sSfsnyyP9KTJAwfqXlx2JR
         vEMzf3sAwoVGntcuCa7FZmlusuD4cMrAJ+PhMIbJm9bmdxjqK7TIKw5U8OatmXcOdhET
         BO/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=evXVASPNHYxBuNpGpwUb76ljx34WoISjJiXB/0dEjGk=;
        b=ex3SYhZ4/34nurB7TNc2h9l8HxWDis5/tiQJ6VebyKb8V2WIOPytOZcKwT8daEXciw
         tI37UPR8mwGFDfDvP1syDJwciLhyT8kanHqIcW6QBjKcLgPoErrRPMGdjRILWZ/eDvFs
         AE/5O5SdndgegvyYyTq45a06SHu7RMQU7l4/VTWnLCwRg8D7pd5ynvwibfCB6TanZjsC
         2B7lrOS86dTaGLnRIfFFv67yzTHKAAAST+tjzp2IEbhhmlk+LFapuNX86/pSDpxdOpF/
         I4MzZhUyPteltynnkxhiCbm2treffFYKBGGKl04wGlCJZa7xlSJUInL1+K2EH6p6g38v
         Vy/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=ORnm0lLU;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id c9si537869ots.4.2021.05.10.01.47.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 01:47:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14A8Y5Jw092729;
	Mon, 10 May 2021 04:47:50 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 38f156ru71-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 04:47:49 -0400
Received: from m0098419.ppops.net (m0098419.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 14A8h31t128637;
	Mon, 10 May 2021 04:47:49 -0400
Received: from ppma06ams.nl.ibm.com (66.31.33a9.ip4.static.sl-reverse.com [169.51.49.102])
	by mx0b-001b2d01.pphosted.com with ESMTP id 38f156ru6j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 04:47:49 -0400
Received: from pps.filterd (ppma06ams.nl.ibm.com [127.0.0.1])
	by ppma06ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 14A8g7hA014602;
	Mon, 10 May 2021 08:47:47 GMT
Received: from b06cxnps3075.portsmouth.uk.ibm.com (d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
	by ppma06ams.nl.ibm.com with ESMTP id 38dhwh8skc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 08:47:47 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com [9.149.105.58])
	by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 14A8ljAw29884800
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 08:47:45 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 39B934C044;
	Mon, 10 May 2021 08:47:45 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id CAA344C04A;
	Mon, 10 May 2021 08:47:44 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Mon, 10 May 2021 08:47:44 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v5--cover-letter 2/3] risc-v: Use generic io.h helpers for nommu
Date: Mon, 10 May 2021 10:47:42 +0200
Message-Id: <20210510084743.1850777-3-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210510084743.1850777-1-schnelle@linux.ibm.com>
References: <20210510084743.1850777-1-schnelle@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: mv9os6CnoMAOgvLf5XHalhXFL_P_nZND
X-Proofpoint-ORIG-GUID: I0yuNbIY3BzKJLWW9ZbQ3sjB9fNQbOwV
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-10_04:2021-05-10,2021-05-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 mlxlogscore=967 priorityscore=1501 bulkscore=0 spamscore=0 impostorscore=0
 mlxscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2105100061
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=ORnm0lLU;       spf=pass (google.com:
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

From: Niklas Schnelle <niklas@komani.de>

Without MMU support PCI_IOBASE is left undefined because PCI_IO_END is
VMEMMAP_START. Nevertheless the in*()/out*() helper macros are left
defined with uses of PCI_IOBASE.

At the moment this only compiles because asm-generic/io.h defines
PCI_IOBASE as 0 if it is undefined and so at macro expansion PCI_IOBASE
is defined. This leads to compilation errors when asm-generic/io.h is
changed to leave PCI_IOBASE undefined.  More importantly it is currently
broken at runtime, as accessing a fixed I/O port number of an ISA device
on NOMMU RISC-V would turn into a NULL pointer dereference.

Instead only define the in*()/out*() helper macros with MMU support and
fall back to the asm-generic/io.h helper stubs otherwise.

Signed-off-by: Niklas Schnelle <niklas@komani.de>
---
 arch/riscv/include/asm/io.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
index c025a746a148..31a8b98c0f13 100644
--- a/arch/riscv/include/asm/io.h
+++ b/arch/riscv/include/asm/io.h
@@ -23,12 +23,12 @@
 #include <asm/mmio.h>
 
 /*
- *  I/O port access constants.
+ *  I/O port access constants. Without MMU support leave PCI_IOBASE undefined
+ *  and fall back to generic stubs for I/O access routines.
  */
 #ifdef CONFIG_MMU
 #define IO_SPACE_LIMIT		(PCI_IO_SIZE - 1)
 #define PCI_IOBASE		((void __iomem *)PCI_IO_START)
-#endif /* CONFIG_MMU */
 
 /*
  * Emulation routines for the port-mapped IO space used by some PCI drivers.
@@ -145,6 +145,7 @@ __io_writes_outs(writes, u64, q, __io_bw(), __io_aw())
 __io_writes_outs(outs, u64, q, __io_pbr(), __io_paw())
 #define outsq(addr, buffer, count) __outsq((void __iomem *)addr, buffer, count)
 #endif
+#endif /* CONFIG_MMU */
 
 #include <asm-generic/io.h>
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210510084743.1850777-3-schnelle%40linux.ibm.com.
