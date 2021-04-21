Return-Path: <clang-built-linux+bncBCV4DH5YZYMBB4UTQCCAMGQESY6DBIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEB43669CA
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 13:18:12 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id d130-20020a621d880000b02901fb88abc171sf10615231pfd.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 04:18:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619003891; cv=pass;
        d=google.com; s=arc-20160816;
        b=xi2QcQb9nHPuufF5e9aO3WIDI/NxH6I6urswq2yRb1+16Dov3OtLFFeWvv0VTlOpWo
         UEpc8n4BEWGm8z2l9u8NKE7AJ6FRHnbglBx+bT2Jlf/Qqo5y/9kclkzm8GsWLzjHZprG
         7ybqguNScxngrbRMM0shedtmMMgO99IpLYiq9AqusWh4PFbcCnIm/934J1Ppjz//XXpb
         +loieDQr1A7+IPktAPkpjZT3+Dl7wa7T2Zryp+Eqn6b/U5G0I1Gph2t7iYMH9LQbfvvA
         3elIyVpiqZOUMqd1XUuh8EWqQIdVQi7LVCcqSHL1S80RIsuGPAkTqUrcftPZ6ogLn6Fi
         ZZUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vMGeGt4O7kpeAyCeu4NeVnsQ0235iQv8Hwi1DLU64pQ=;
        b=WLj2cCzV+zjL3H4W7M+AgpHsPoMr4m5JQuPtAfxUIWYaLFLupkAkVAWYkZNaIrdv8y
         goXnyE0LxUKrgkcY7WMDnGm3x2ikj0WljiVYgWGiQYDEwUjKy/eZ6Yr12jIz1nLUrs0u
         iYWsvMN1H4AudBD9P8jcGNDpHJ4Jy0R6Bz/TNUA53htWRlrvy3dorCwuxSmGmldn1Ni/
         s9tyVtgveQFtP7zmI5agJiRQLuq1hJSJGEDex3hU+vhuDLyNxAA25EtKvRStWtImpJSv
         Yn32Vj93c6TsKmRojmLM+2hthxrCB80V4hb4KxmF47A8rHYWxqPnepwapT/myPoMUeY1
         FGIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=pWt3kfNL;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vMGeGt4O7kpeAyCeu4NeVnsQ0235iQv8Hwi1DLU64pQ=;
        b=mvaTt/sKjqwngkYHAYC7NlEs4BqKvge00WfbbVnxc43VNby2R01kM/rk1/PURpNGNr
         bzLVfi+p/62u+WSh9X9QJNmgVaUBVEeVmdOIfg9h8oep24QUjAuanetjO1JBl55j2Mv7
         Fh1OhWWbFG/fC8Cis26ZB4S1N/Hf3faIHSWH/GVDVpEFMi1sK68NrK0RL7z/WU/7JO1v
         k+oFA5zngIXKpbgEUT5hhzlqNqFvW72ykFO4s0RQqn2KPSub/MgkIYR5Sfr7gcXKgzCb
         BzD2sG8MkHbsAXRZIr69MoOL5+6CqfCuWaUkYi58N9JdsNXyoVDJveR7FG1zsm3mRAqP
         0POw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vMGeGt4O7kpeAyCeu4NeVnsQ0235iQv8Hwi1DLU64pQ=;
        b=mScfhZPJVpI7B45UlffzGp85PgyQdd/00jCOYKdYUt5qNRwA+fjbIiPkokFxkttn/i
         F8Kl93m1KQi0q8hpJr2I+nNR77BR00CMcVnRJ8Ingd2+aGO2RElv6gzrPW//dGd4JP6o
         NSv2EoZoHd9XcsX2mb78xiu0EVnvJu+Sxoc7TcynFOaIp66FnZXFdwNGGnv3y9qyBYXp
         J0F69LAhDhmBhMwoIMecxlC53C2henz+VHzevaEVsBFcbJtW/vvLdSDQ9BUj/He27rV4
         9mWuth+t/WESdtT6ptahgCl1DWFdFB3+jIMK3hfCoTJV8timktrU28MK++na63iYzmfh
         3G1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533WBf8FYuuD6SqJ+lgSWydqBc1GJ5wJlLONZ5Vp/uRKN2g9vzDV
	H9jwYeptPj/yxK+OKve8ilc=
X-Google-Smtp-Source: ABdhPJxD3MZvQbxoBevZc80YfS3Gx8Lhhmih54Ox4J+4odqR2w7wdMSkTMGd+IKE8IN7QazB0+bMBA==
X-Received: by 2002:a63:1556:: with SMTP id 22mr21739171pgv.142.1619003890920;
        Wed, 21 Apr 2021 04:18:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c70c:: with SMTP id o12ls1299143pjt.3.canary-gmail;
 Wed, 21 Apr 2021 04:18:10 -0700 (PDT)
X-Received: by 2002:a17:90a:4e0b:: with SMTP id n11mr10741181pjh.108.1619003890400;
        Wed, 21 Apr 2021 04:18:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619003890; cv=none;
        d=google.com; s=arc-20160816;
        b=JJGNCa3YFJRw4qwv+qaAbRCf1NGP+qCaMV2+VzUYlBdJyDzgAwfR3SRtCklJwSTvMi
         WmH6KhsmXrWnHfL8HkVrHSUPrGcgRD7EFt1Iqf9R3LY9xzOywZirISzovnzhrLBq3aHO
         JQw7PqTks0KPxWP6thyGHHiQymt7XRAOmWAtr0oLTrPpZekdFpHoazVB3P7F0nJVz0aM
         26GAtJDNzVzPLnRQYO4h7KgnwbM2OR31J1QpSM+IqN/BVzeI3tiQqcHLOeEzWK6orDH+
         mJS1s6MsRbpRKgiWECCoHcs2S3h1rIqxMbHN7T7ZdCagU04BK/ns1nvdcw0dV5WSV4Uo
         PfiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kgfH4z2JHqS2DaO3sLfnOI+7cKnPhbV7F7l0BF2KKFk=;
        b=mJURAp/YMy8otx9CRuaAgPu3rt0PZ2rOxi74GKqJbSvym52QtI/zyC4LxbSfwOxkPr
         fW+wl4mWbe2EFzfxIh8u5LMl30K2jNr1OnynD2oxxR2eRzN2ijsKaPxwvj1JXg010trN
         RaGp1jUoR3zrQmApS+d9AzJ3D5iibLRbZSgSeGqkVA2L88uWwjyQDgEzVjb+KmYHzoBE
         D6tnUFFDQh/AL6Ti0XbWPRYbn4jQhwDSmUEkgAiGPU3PihggugyHYxTvtVTQ5iG+MM4s
         0H40Oh/uIdJhRyx2mcp5E2m0+TwXU7JtKcI1VtNoWvq73paqBPLTv9NUkE0oaj8wB49T
         QO/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=pWt3kfNL;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id e10si158883pfc.0.2021.04.21.04.18.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 04:18:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13LB4trE007856;
	Wed, 21 Apr 2021 07:18:07 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 382j8k9dd1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 07:18:06 -0400
Received: from m0098410.ppops.net (m0098410.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13LBFJZI049804;
	Wed, 21 Apr 2021 07:18:06 -0400
Received: from ppma02fra.de.ibm.com (47.49.7a9f.ip4.static.sl-reverse.com [159.122.73.71])
	by mx0a-001b2d01.pphosted.com with ESMTP id 382j8k9dcb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 07:18:06 -0400
Received: from pps.filterd (ppma02fra.de.ibm.com [127.0.0.1])
	by ppma02fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13LBH9HD018940;
	Wed, 21 Apr 2021 11:18:04 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
	by ppma02fra.de.ibm.com with ESMTP id 37yqa89835-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 11:18:03 +0000
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13LBHcr327721992
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 21 Apr 2021 11:17:38 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5970942047;
	Wed, 21 Apr 2021 11:18:01 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E767F4204B;
	Wed, 21 Apr 2021 11:18:00 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Wed, 21 Apr 2021 11:18:00 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v3 2/3] ARC: io.h: Include asm/bug.h
Date: Wed, 21 Apr 2021 13:17:58 +0200
Message-Id: <20210421111759.2059976-3-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210421111759.2059976-1-schnelle@linux.ibm.com>
References: <20210421111759.2059976-1-schnelle@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: hS4nK5RrHPaMhtTFVGxKNRGcuhOcM0fN
X-Proofpoint-ORIG-GUID: _uoe5l87U2dj3NiYbzSDiVZEH1Ow0-ua
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-21_04:2021-04-21,2021-04-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 impostorscore=0 mlxscore=0 phishscore=0 clxscore=1015 malwarescore=0
 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 mlxlogscore=671 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104210085
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=pWt3kfNL;       spf=pass (google.com:
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

In a future change asm-generic/io.h will make inb() and friends
WARN_ONCE() on systems without I/O port support. This requires
WARN_ONCE() from asm/bug.h to be included so include it in the
arch specific io.h as done by other architectures.

Signed-off-by: Niklas Schnelle <niklas@komani.de>
---
 arch/arc/include/asm/io.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arc/include/asm/io.h b/arch/arc/include/asm/io.h
index 8f777d6441a5..62ce2e486e29 100644
--- a/arch/arc/include/asm/io.h
+++ b/arch/arc/include/asm/io.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 #include <asm/byteorder.h>
+#include <asm/bug.h>
 #include <asm/page.h>
 #include <asm/unaligned.h>
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210421111759.2059976-3-schnelle%40linux.ibm.com.
