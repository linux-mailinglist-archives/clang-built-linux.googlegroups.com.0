Return-Path: <clang-built-linux+bncBCV4DH5YZYMBB47G4CBQMGQECU3RBKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B42236098B
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 14:37:09 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id b34-20020ab014250000b02901eb696c5fbasf488917uae.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 05:37:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618490228; cv=pass;
        d=google.com; s=arc-20160816;
        b=XLhmhDSlYJEAXCtPUuPBO/ZTFeLe29mXMT6RCAD0i2VivP4jivpc3IEZ8HqKudRdK7
         0JcxEwCnssr5+Ghix35eMKKzAS5LFUK7s/lCZmNh7WfuYwasda+d4xUuQMTRpZMw7K6W
         xbfSxtdhDclCckQIYcfwzl5YvCBR4GVgM3eHMOSTwfdPHit54PnYrJb9Hxc67cAZcvmT
         wmK+FIwIwHWyVxNFjrb/NdS8tTPSZAMETSqsVw05HplLeiQo4i0/czhhRhc8X+d7oA1B
         0qsALZXXg9ZF2kSJ6UgRHcdoZeg3QX5LdGq3d6730CdNDmI0V2URYnSKsqM0E0+1+LcZ
         GF8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=uYo7+OTc7A5dTBn8i14f5yIdMBh+gusJG34QTkLuvuM=;
        b=IRtveubVDjT3hGQXYQJgLo9tZiU5MaOSGvJaMCnAhRzV/cH/McAi06aXlqArU5F8g+
         8K1xrK3FB1etbmwjISJdGgjAyqy20PpTjvE9dZUEAgZWSbzSG1FOGoobvt2TstV+vCM9
         ref+JsmvSs4GzuAKKvs1guXVbkXqPOrX0svPNU4DNhv4QCFmzUcF9RnpaJU0Y3xad19s
         OIgXyGzhMTCQbzwBdTY4U1yI2YeEanhYYx8tOzKlhPIDYBNU2uGkkCXpgcugvP0HggAX
         sOdSy4Ztfc3mn6K3Zg3hbeZTFlatQcbyMbqLkXysoxeiP44iN1fS3zxEa0HclZCoCUhv
         FnQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Zm9k8iMT;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uYo7+OTc7A5dTBn8i14f5yIdMBh+gusJG34QTkLuvuM=;
        b=Wp8FeNBan94ShKUcjVWDvThk/EdFpBmp1ZbcWLb0mepvZcDJhDV7O23K+Ifd+Mj++m
         RbVHxKz5jLKCmS3GK70gFhPzi/OlwfdQfTu640hokpXeW2On1C8UEbun+CLxRbFSybrT
         9vKlVXFHgIkAk4SxuGGqhFsa2eMpQwZVNsjJUxasRXIP1lSORZxyHlYhsnkMBIMtrLke
         rV4TYt35X/z1sj6suc4FRGJUgKx6o2hYmk/puJbnYf20F+FvQIv17uSGz7lrDl62K9/5
         bmxWBFC0SMsRz0s/7sFzDafBxbsebb0XThk1by9DcSbZrq6vxknnqkl2P0GbnHms/feN
         43tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uYo7+OTc7A5dTBn8i14f5yIdMBh+gusJG34QTkLuvuM=;
        b=NwzN+FVWR7fhTY9VOAYKptai/4HAHKdqCJR/L+WQ6MGolQqQTd2a5Onm+KFfvkKrCx
         9aiszNalkyo8inEjSWExREYq9l2oinLc2u8p8Q7RBGTFF7LKRLClsNyywrSSjGx6sE0/
         b6h19pO/tIPmFurnaMb6MXuN3jQxYREWx38W+lU5octmjj1CePhsRmoh/t2+Q7b8tyJC
         sdZ71Wvfo8Uz8tQvUyQlQDWjwhH8pqGMTnN8s0ZPfdUVQs4ZGTW26bJmuk1Cnjktcebe
         Xtyg2nmECVwtJZmVR5rCE9vsjC1XrgYb5BY2mF2OKMa/EmvMnrBsXqi7/KLXyfFN/HIn
         2KtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rj9ypAhIVsKmY0l4bbgkbrSoMe2PX67a1NNB7YxWiW/WuRsZN
	pPrmaqKsBxSyPc6ctfbBq/I=
X-Google-Smtp-Source: ABdhPJyNR1EpkDxODO404dh+8EykXIiPVhc7y1hWaW0UfjFRYxp/Rlmu+6lHNj+gFr/N3WFae756+A==
X-Received: by 2002:a9f:24c7:: with SMTP id 65mr1452186uar.119.1618490228099;
        Thu, 15 Apr 2021 05:37:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7550:: with SMTP id k16ls472397uaq.11.gmail; Thu, 15 Apr
 2021 05:37:07 -0700 (PDT)
X-Received: by 2002:ab0:1002:: with SMTP id f2mr1522582uab.65.1618490227619;
        Thu, 15 Apr 2021 05:37:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618490227; cv=none;
        d=google.com; s=arc-20160816;
        b=mAoge/uv3ZgrxDmnNfpCNepRH58uwEXstoyhd6S4KsqhBHJt0XnSr3mmINdHkxeLqP
         Ep/WPMsKbtx4FkCqc2rzoHgC0f0YMz8a9F23krmJEX+Zy/yVQBbsKZts2SmR4hjDXqgw
         ALDkXhXqlF4SpdhQiI4RNTM8hfNFMuldTPRgSWbcVqxunVf0XfMNcBmtFP0oMpHN9S60
         fQso+CIl5yOvWNJgFvauDgKGds23wgijiOD5AskKcid1e5Go8F67ifA1VB1hm+p+p+1p
         gTRIpnm0mu46Y+nTLX79257dv3Skz7MgN0sYPWKwpgs4R6Ta5uWtWdw9/BOJtNYx5Lfc
         r9tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=35aH+7ZEjyiIRl+fbi2ev6X/dKK7r0bhA8aw3QX7gpM=;
        b=uFu1+PcBYx/4wKfW7Un/kgspvt6rAcNkJgqSSOVX/61nBI+avGOBzfV8nfsLB4UN1f
         vxAVMrv8jecdLg9uuHN5V0OmARGuf5FxGloZ9NpNt0OBiDsiDxzvq9DzWml5RhdkAEmm
         oTIlfjB0M/Uwmqu92E5w5exypWyYsHNpausdUmgoTCYn2Gp30ExXbPppCe8KQtArLl0e
         qJB4HxwzsD5dES2LLVC1nmaTIzbeF8TSxNCLuog/pclbxordxLeRYqVXaKpQzbSzlbuJ
         T/wsRRi+jGVSBiVC3Usea6UqFe9Q+lAhKUwno7/ZUmI3YL+7GHnNtFYVhZiCv3tVUCpK
         LI4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Zm9k8iMT;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id o198si204103vkc.1.2021.04.15.05.37.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 05:37:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0127361.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13FCXbPR178254;
	Thu, 15 Apr 2021 08:37:06 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 37xbq3xute-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Apr 2021 08:37:05 -0400
Received: from m0127361.ppops.net (m0127361.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13FCaGY7188244;
	Thu, 15 Apr 2021 08:37:05 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 37xbq3xurp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Apr 2021 08:37:05 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13FCYcEj028994;
	Thu, 15 Apr 2021 12:37:03 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
	by ppma03ams.nl.ibm.com with ESMTP id 37u3n8bvhf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Apr 2021 12:37:02 +0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13FCacaY32768304
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 15 Apr 2021 12:36:38 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A536CA405F;
	Thu, 15 Apr 2021 12:37:00 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 54CB0A4054;
	Thu, 15 Apr 2021 12:37:00 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Thu, 15 Apr 2021 12:37:00 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org
Subject: [PATCH v2 0/2] asm-generic/io.h: Silence -Wnull-pointer-arithmetic warning on PCI_IOBASE
Date: Thu, 15 Apr 2021 14:36:58 +0200
Message-Id: <20210415123700.3030728-1-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: wKHVCLoTjndQ_uHcBBZKapqs8xZtEkJ4
X-Proofpoint-GUID: LB4OIAlqeZZhhjLeW-V2s3eD50fS1_aD
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-15_04:2021-04-15,2021-04-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 mlxlogscore=795 phishscore=0
 spamscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104150084
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=Zm9k8iMT;       spf=pass (google.com:
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

This is version 2 of my attempt to get rid of a clang -Wnull-pointer-arithmetic
warning for the use of PCI_IOBASE in asm-generic/io.h. This was originally
found on s390 but should apply to all platforms leaving PCI_IOBASE undefined
while making use of the inb() and friends helpers from asm-generic/io.h.

Thanks,
Niklas

Changes since v1:
- Added patch to explicitly set PCI_IOBASE to 0 on sparc as suggested by Arnd
  Bergmann
- Instead of working around the warning with a uintptr_t PCI_IOBASE make inb()
  and friends explicitly WARN_ONCE() and return 0xff... (Arnd)

Niklas Schnelle (2):
  sparc: explicitly set PCI_IOBASE to 0
  asm-generic/io.h: Silence -Wnull-pointer-arithmetic warning on
    PCI_IOBASE

 arch/sparc/include/asm/io.h |  4 +++
 include/asm-generic/io.h    | 55 ++++++++++++++++++++++++++++++++++---
 2 files changed, 55 insertions(+), 4 deletions(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210415123700.3030728-1-schnelle%40linux.ibm.com.
