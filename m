Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBPMR4WCAMGQEUMN6IJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D7A379168
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 16:52:47 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id l25-20020a6357190000b02901f6df0d646esf10426833pgb.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 07:52:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620658366; cv=pass;
        d=google.com; s=arc-20160816;
        b=X+tbsL7LBlflgQAZi502zEHvuzBscMcoAL+s+oJLKjp8mOZFU2sYzni4sn3/YW7Bbk
         OusTg6tF5c17uFNrkE9YcpeCn9JeDpIDCgG5bQdv3ZTK0H1N7FZ7VJUKTocuI++iNif0
         h7PUFSEEnubf13CoVVDZkUExwiaZVfm18yB2/SdfDfza8GFwsvwP90UDzVP16rVEcyQn
         1YBkLknDw/1b7VV10tX4H6otpsU0JRi6vVYl9thyEksQMaLkr9MZ0NrlkGw48254wGpt
         /qp0LwaY1TQGffJE0ZCchhY0CM1oadAN0qetqDvYzpysEB6VlmKGM8SR34tumQ1cVRh2
         Yd/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jWThw9NDoJZYumEe64R0r/WCypiBPjvbpYcr87mSMfs=;
        b=wthVGAPu8evX+Dt58zqJ2mqZF8b4WyyANBFnHMtFkXe1610iiLEZHbPbKBUQdmJEzB
         /EtnBC9TehMBXw6VXURoMXkw/W/47QjyY200YVOyWVJ+9LFv/jgDSH5BAX93Z5CMH23d
         A4kuuucRfJ7dUDJK+LYap3GKSzffLGp0Ceff4uXtLaaWQ7OmjDnZ9CSveE5Dna7CN1bW
         Bgk0J99T4fRt7SL0e+TfepB4M2nKfR+W7G/7tv2xHWluctUL8hAW+wuF2m5Nd9bps48e
         IXVzudoWV8cE3p/tMbuoVH4bESfDLd738yRq94A8yL7XEVwlMazZPsRXe9ZeZ1ITDWHw
         AX0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=CywxahPH;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jWThw9NDoJZYumEe64R0r/WCypiBPjvbpYcr87mSMfs=;
        b=p2Gz7gXSMs7Y/siW0VLm4ugU7ngvlolGbnPZe3N6Voa3m/4PERzKCAL0N6+jjgvCW3
         8bpslHPZmiGXqWH+HFu7fsD59Ldaw3YI1XBMYRxRk2XGpPyFZ4ueFIuk+TCIQ13a+UeB
         DdPfUjOwrA2YhOs1x+cGVh8pMBpOV6hyfJ1LvG5nbwzIdvkuknhcCk8NaRCnl27IBdPg
         7BKK+n/gMTEqd3LtaFEQs1J/kFqIu2MmQHDNESePXfyUO6Upv+UTNFGRu2DKWbSeJktZ
         AvrtLu+oVc1ZGkmgfABETWGgxs4YWh1d05QvqlgedoomA0X5C7sh50iOGwr5xHOXgotQ
         KNeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jWThw9NDoJZYumEe64R0r/WCypiBPjvbpYcr87mSMfs=;
        b=sUhG0QN+1FNEWiL7k78BfOqLYWWouazFTDum4IPjpn8rnuaQIod9DBtC2r98PT90vA
         kYlx4w4Bmnq49Gz1jwczmPGmH4SKTPrEeRLv9eZhl946/883YPPHN+SABwMFai8Jyuuj
         nPqXQjjlUbIRn2c5N7kcosgYpLvESjmqsgQQ04/7xkarIG6vMmVrBXvdy9q2hfSLbTlg
         Nu/Q4BY3VJqjoE0Q8Gn1j+0dkpYaP7erVpngNOrvSPkQVhnsyARVbISb/IOdhbuBkxoc
         RClAk5tnSdeeYgqitjErqsL1e9LCGnmZJAmYd/RaYoCjelxjnLIyvma9IvgRZQPL5BXL
         hpOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532M0b3Eyi0fVC3mnibJ5DnbroYhpIXW0j0ac5KoV5HtW4s1EYVf
	ZKaaDkHeVH6H5fw3pazRxR8=
X-Google-Smtp-Source: ABdhPJyQq8YghAeExCZsYfo53rgtE92KQZEjDSCdUwEAOAVzes5YHKqLE5HUNWCk0uCz4ZH2CsYDVQ==
X-Received: by 2002:aa7:8d0f:0:b029:2a9:7589:e78e with SMTP id j15-20020aa78d0f0000b02902a97589e78emr17429649pfe.74.1620658366009;
        Mon, 10 May 2021 07:52:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f48e:: with SMTP id bx14ls8884121pjb.2.gmail; Mon,
 10 May 2021 07:52:45 -0700 (PDT)
X-Received: by 2002:a17:902:e84f:b029:ee:cd36:80e3 with SMTP id t15-20020a170902e84fb02900eecd3680e3mr24994055plg.70.1620658365504;
        Mon, 10 May 2021 07:52:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620658365; cv=none;
        d=google.com; s=arc-20160816;
        b=aP0MazHjzRDjNoEm583mUOP4sDcENi9nQcW7Q+4qpf9G1ypKsRTLFkwyqEg8b6+W1u
         sMy6PR3WwtA5/Br5IdUoxgsDyuYyJKarzqDxJnLYIvYX12Gp92Q66bcpdfvM6iEEvXHh
         GwFpxtoqnD1WIqMwN0gjbTG6nxMbJCpHLXmW83cEiRmv1XNWa+YHEbYmJZFYsPwogodB
         OdnX3NFlDzRU/ifNh+oUk9/7rTYXJ19ed9VdEP14IbFs7ZmVRNTWrLyUye6npOEpp6hq
         tTjj82ALUctC9KLzd9WBPh0E5ZUJbhqLzr1lGrXUwykWciEDXEUfSN35zZpHTutGjqcC
         ZSzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=evXVASPNHYxBuNpGpwUb76ljx34WoISjJiXB/0dEjGk=;
        b=R7FOIcQicGp2kj9MKamm9Q4nUDdFiPeYxEMpzTWbqYaIHE1X2s3tL9ApFx+QW8sF5H
         YkQEykOLR4xEeOh00HrSQsvtmJJFJapDhfVK4Y1sG3oo/hH3AsZGOpsiTrefd6BCUvMi
         2gEtF/g8eqJ20SuNqaOoaX+whD7mmo5mMgVl6UK/AWHKZxM8cWpD22UX+25uWxJ3r8b0
         J+TqtPUrtJJAo2ZYw0ZrS+4EWpVeEzuc+TA+Yy9e33+df2eq4q1Jrc/ezBE5kcY7+udn
         oV3p1wd3MFv2EqnrGlfUPCGe/WbcR5zYbEjLEzUul9Ai7vTBAQ0PzDvXqZ+YTB4BBGVH
         uPuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=CywxahPH;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id j17si1336869pfc.5.2021.05.10.07.52.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 07:52:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14AEYGDN152049;
	Mon, 10 May 2021 10:52:41 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38f5hrkgxm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 10:52:41 -0400
Received: from m0187473.ppops.net (m0187473.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 14AEZTCn160549;
	Mon, 10 May 2021 10:52:40 -0400
Received: from ppma06fra.de.ibm.com (48.49.7a9f.ip4.static.sl-reverse.com [159.122.73.72])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38f5hrkgwg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 10:52:40 -0400
Received: from pps.filterd (ppma06fra.de.ibm.com [127.0.0.1])
	by ppma06fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 14AEqcsf008088;
	Mon, 10 May 2021 14:52:38 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
	by ppma06fra.de.ibm.com with ESMTP id 38dhwh0jj9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 14:52:38 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 14AEqZb637814716
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 14:52:35 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7315B52050;
	Mon, 10 May 2021 14:52:35 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id 1A86352052;
	Mon, 10 May 2021 14:52:35 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v6 2/3] risc-v: Use generic io.h helpers for nommu
Date: Mon, 10 May 2021 16:52:33 +0200
Message-Id: <20210510145234.594814-3-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210510145234.594814-1-schnelle@linux.ibm.com>
References: <20210510145234.594814-1-schnelle@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: Mwid2JslVMLWhMy2iW_LfXXFE8xVgGtV
X-Proofpoint-ORIG-GUID: v5r8zPtPwPe47b1Uz3I9CxVtJTlTZyPu
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-10_09:2021-05-10,2021-05-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 adultscore=0
 mlxscore=0 malwarescore=0 priorityscore=1501 spamscore=0 impostorscore=0
 suspectscore=0 bulkscore=0 clxscore=1015 mlxlogscore=861
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105100105
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=CywxahPH;       spf=pass (google.com:
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210510145234.594814-3-schnelle%40linux.ibm.com.
