Return-Path: <clang-built-linux+bncBAABBNEKZP6AKGQENVIUJIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC36296E05
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 13:57:42 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id s12sf898162pfu.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 04:57:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603454260; cv=pass;
        d=google.com; s=arc-20160816;
        b=zaGXDsL/LC/+XV7o4wgHfT9+B7l27fq7X084GkLZ87OB63LiXznAlAup7S4jwChUJq
         ATNUnlab/r7uV5UAMDNsqz6hHHXZx47hB3qvHU4cOuOScih4psINlHIHXmlM/oZ3dt+l
         zkOxZOhs/1YfbuCBvwZrG/QslbtUQqIJP8dBbX6inW8aSoCaqIu2R/1315dM1W3xd5Q/
         9hWmSe9BGfNwTThzU0MoRcBelPjU5QryaedCm2FD7cjNHeBFnzw5SwN2ULUf8481HERE
         iDkyl4pekYri5eNunKU/f9A5WHWoVsko2vV1Q/H46lTJ9xW/nqbX3f4R0oUW1hf0apfi
         LK1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=rgfox6lk7eB+PhmwQ84Jfw0uW+RFU47xpz4Z800MCDQ=;
        b=yFa81DIMUmFHWPuhFhgObjAAyDSpIrJfSsG1Z7wP+HxRyGPCbUGerEuzFqJngNYCqk
         hCaV9aVSgur+fIU/v3WOl1rFMuCbRG+o2ovqEGNI/9HU91y36mgEW/r9jSEO5LX9HPpx
         LbqQIuiV2Bn4pDmC7w3XRDNkE/VwGFSers989VFKU/2rrYMHwilHUETeyAslZFB8opM7
         IxN0fCyB+1UaUMad/9/gElRKWUWMF9Msc+pcg4Jn5mmibKw5wK5rVxagcuD2y1Z9/D26
         jOvQ09LzVmr1Jyoxjvci7DZiSGMUfuTptngRecwszWap00qw1nAYQmNf2xZhM0xiI+Wb
         sI8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=KMKukBcc;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rgfox6lk7eB+PhmwQ84Jfw0uW+RFU47xpz4Z800MCDQ=;
        b=nESLaA4FFmpPaVDDwUXvt+0x2HIZdb0/pXhOO3lNneyiLj5td/+v03P1gBgu7kXcoq
         xwA9F5NQBDjmoQoQ8B7b3LEvbAJzyLSn4lZzEYLlAYZgC+v6ICOuU0s9Fb04sZFm9RBl
         UGOLa5qMBOa3ozY4WeSf+VK5VyQC3bmwbLSPUnLn/4dFkatRgwTRk/heaLdoiQxywIgX
         yryVVY+eXnjy0xrnnDIQeTrkAc9pbo6NWhd4OKCBWMcNAsmWHXnMLJ3aHTy0ShMmIxGQ
         yGWrEU2EgcNDO0xsgeiaD3paGic7YBnnCk4zovljw2DA1b5HVmUtvnTBKoqwsjyRy78s
         60AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rgfox6lk7eB+PhmwQ84Jfw0uW+RFU47xpz4Z800MCDQ=;
        b=SKiW1Md/7DLTep1Kv+Sm0cFuCRIF1abY5nJP5yxKBR+HSnErxcI4HF+sGpVVs6kWE9
         RWkC5LbuMQbMoYy+zxYxsbgi7rciLAowz8QAdIFn4YWHJtAJr/zC43FRE973yuMGhtEa
         mgf9zlaOQVOqbHRmZ9ASmgJNEE080LvrhsPWksh8Xd5im/M+6i67auaYatb3MYsqgnr9
         iJzibGf6pv/sy9hvm0HCaawI8oUxMC9hQlwk65d+m+QoUpu3pjcaoPShE6WaePBOC4O+
         BkjINo1gPOvrW2MTajJ4i9t3LsBVM/YP7QeKPg1eGKRXXCaQClVv1w5AqFq/ngixSbG8
         a7cA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bgg1RDgO8cPsSg8Unb2bZ4ewke1sGNvlw8WXfL2glUbzLNIx8
	aIZAkpl5DrL7xodYNpgtuDc=
X-Google-Smtp-Source: ABdhPJx2RdZLA++taREv6BgvuT5sbdxkR1ovdEG9/dWHmYBlbrQeQCwKseUIFpOxX9Khh2C1DCjiaw==
X-Received: by 2002:a17:902:8f82:b029:d4:bf4f:13da with SMTP id z2-20020a1709028f82b02900d4bf4f13damr2095380plo.40.1603454260624;
        Fri, 23 Oct 2020 04:57:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8046:: with SMTP id e6ls886555pjw.3.canary-gmail;
 Fri, 23 Oct 2020 04:57:40 -0700 (PDT)
X-Received: by 2002:a17:90b:4d05:: with SMTP id mw5mr2225965pjb.9.1603454260124;
        Fri, 23 Oct 2020 04:57:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603454260; cv=none;
        d=google.com; s=arc-20160816;
        b=L0PDG80Jb4toblP3H7DeP4ZZAQ3E05ivseyAuzkEvdlp9RsfYPslzeH1TlbqNQRXUc
         9atNogFfQYWn9M09C8q6bVziSD3xQy9fchVHueHbEFDp6CwWaQKQxH1IaNVqH4xvvDSq
         ngk25bMrU+t/LhtO3MpYRoy51odbU3O86otMtysPtmCi6fFAAWz1GEnUWuhJx1tMbDTL
         nzqhquE3vFYktvzmmFOLgLZGQ6DIxoTNvYZhJaDC0XbqL/rrQgnGkQHAeYCETXDfJHfC
         HR+4+YAzFik5s1atg1CMvvL2fr48W+kAy5P/tBV6NeuDLsFhYHdLQywlz90lYFQ0/uxf
         QmKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=G638WJePebchukAGz5Hbd4aBlR6kAFex/G6+r6vFTNs=;
        b=tAmErqf7jsY2JTDYLuJbxP1j+4olbL5YneJZKoz6XDzDMSGK3UJU37MfdYoLlwjIWi
         pmoj9ef+Tq2Bn5F3+vizPE0Pd0dZgzp5Kbzglm/3VNqOg0ZhMloqd8gVRnJxtT5zaAGb
         MMpR7m6XRqAGwKqQxvjG4pSEXnV6uHc1sCLXEX2SCw+wTGzMVbORPCfuKYdyVb7/KZXA
         iudqjtlRtxSXJxEHP8ZD4m1aszdhwNZxRqFxrSeiemSXOBXKTf24+85oO0HGMagd92yf
         9xXnMmOfWCJMlILXFcAnJc+/jHvm6PeSHchEAyko8xwFplNhAXv7bbm9iwL0hZaZwNlg
         WoTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=KMKukBcc;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id a6si117654pjw.3.2020.10.23.04.57.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2020 04:57:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 09NBhvHR050587;
	Fri, 23 Oct 2020 07:57:39 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 34bxjbrak7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 23 Oct 2020 07:57:39 -0400
Received: from m0098409.ppops.net (m0098409.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 09NBid7A052526;
	Fri, 23 Oct 2020 07:57:39 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 34bxjbrajb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 23 Oct 2020 07:57:38 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 09NBva9p006167;
	Fri, 23 Oct 2020 11:57:36 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
	by ppma03ams.nl.ibm.com with ESMTP id 348d5qwppx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 23 Oct 2020 11:57:36 +0000
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
	by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 09NBvYhl35979592
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 23 Oct 2020 11:57:34 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7699842041;
	Fri, 23 Oct 2020 11:57:34 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id CF5AE42049;
	Fri, 23 Oct 2020 11:57:33 +0000 (GMT)
Received: from localhost (unknown [9.145.183.202])
	by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Fri, 23 Oct 2020 11:57:33 +0000 (GMT)
Date: Fri, 23 Oct 2020 13:57:32 +0200
From: Vasily Gorbik <gor@linux.ibm.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Jonathan Corbet <corbet@lwn.net>, linux-kbuild@vger.kernel.org,
        clang-built-linux@googlegroups.com, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] kbuild: remove unused OBJSIZE
Message-ID: <patch.git-ef02981ce9bc.your-ad-here.call-01603453662-ext-3714@work.hours>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Patchwork-Bot: notify
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.737
 definitions=2020-10-23_04:2020-10-23,2020-10-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 adultscore=0
 impostorscore=0 suspectscore=1 mlxlogscore=999 mlxscore=0
 priorityscore=1501 clxscore=1011 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2010230078
X-Original-Sender: gor@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=KMKukBcc;       spf=pass (google.com:
 domain of gor@linux.ibm.com designates 148.163.156.1 as permitted sender)
 smtp.mailfrom=gor@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

The "size" tool has been solely used by s390 to enforce .bss section usage
restrictions in early startup code. Since commit 980d5f9ab36b ("s390/boot:
enable .bss section for compressed kernel") and commit 2e83e0eb85ca
("s390: clean .bss before running uncompressed kernel") these restrictions
have been lifted for the decompressor and uncompressed kernel and the
size tool is now unused.

Signed-off-by: Vasily Gorbik <gor@linux.ibm.com>
---
 Documentation/kbuild/llvm.rst | 5 ++---
 Makefile                      | 4 +---
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index cf3ca236d2cc..21c847890d03 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -57,9 +57,8 @@ to enable them. ::
 They can be enabled individually. The full list of the parameters: ::
 
 	make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
-	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \
-	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \
-	  HOSTLD=ld.lld
+	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump READELF=llvm-readelf \
+	  HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
 
 Currently, the integrated assembler is disabled by default. You can pass
 ``LLVM_IAS=1`` to enable it.
diff --git a/Makefile b/Makefile
index d35a59f98e83..d2123c2c829a 100644
--- a/Makefile
+++ b/Makefile
@@ -433,7 +433,6 @@ NM		= llvm-nm
 OBJCOPY		= llvm-objcopy
 OBJDUMP		= llvm-objdump
 READELF		= llvm-readelf
-OBJSIZE		= llvm-size
 STRIP		= llvm-strip
 else
 CC		= $(CROSS_COMPILE)gcc
@@ -443,7 +442,6 @@ NM		= $(CROSS_COMPILE)nm
 OBJCOPY		= $(CROSS_COMPILE)objcopy
 OBJDUMP		= $(CROSS_COMPILE)objdump
 READELF		= $(CROSS_COMPILE)readelf
-OBJSIZE		= $(CROSS_COMPILE)size
 STRIP		= $(CROSS_COMPILE)strip
 endif
 PAHOLE		= pahole
@@ -509,7 +507,7 @@ KBUILD_LDFLAGS :=
 CLANG_FLAGS :=
 
 export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
-export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE RESOLVE_BTFIDS LEX YACC AWK INSTALLKERNEL
+export CPP AR NM STRIP OBJCOPY OBJDUMP READELF PAHOLE RESOLVE_BTFIDS LEX YACC AWK INSTALLKERNEL
 export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
 export KGZIP KBZIP2 KLZOP LZMA LZ4 XZ ZSTD
 export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
-- 
2.25.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/patch.git-ef02981ce9bc.your-ad-here.call-01603453662-ext-3714%40work.hours.
