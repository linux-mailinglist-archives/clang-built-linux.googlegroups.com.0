Return-Path: <clang-built-linux+bncBAABBZHAYDVQKGQEH2TRVKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id D63E9A9568
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:45:09 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id g1sf180361pfo.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:45:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567633508; cv=pass;
        d=google.com; s=arc-20160816;
        b=y5EtvgURcZ+kttaIrVqSDGOMNN2Kh0Lad5XcDH2p+QxuR1SmzBOqhGvtOU6ItqyPRU
         cePG8vc9eas8mGxmDrzmo16GG6i+vJRB0O8Uc+qaJB2LMnSsh1vdrLFXYmpRq9eintRd
         kQoc3nsgWV7b3gr1XP1IuvNhM15IYujjQAeigCIsLD3qLsCXgd8YSsuIjy/qCg7z0wlp
         oPcOJUFotuyvlTJtZ8jpvyXZHDnhnDtrM2BNbcMZhwmOnFJFhZBrSncPN5LAgNcyW/JF
         gkafSnwmVlOWyj8AAcYVeNTTV+1zL1H2i2GWbANxc5o6j1h+TqcTB4GR5TCPUSfkAesN
         BDhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kblD9HScFTUqjIG8cS3cNraxq+zO1L0GgsLBWiDjuMk=;
        b=LxEiOlZ9WUqWcVNnpvE6taXqa76Sib/FLAiwe6NPEVCkS9QG+rcOhA864YoWZqUZQh
         BOQpuYnheY/ocwyrU0aRx3enJgjX5O1hSurAS9zP2LLDyOEddikT15oqZEKDhNIue7j8
         kmtJLIpTj5JXjfA2wc3woYKKywtZ7Pth2btua2oKp0wXzp+yGKtz+P79cVDy+Nol6J3P
         x4Y3AqNK/b9hBjDBeNcZ7UlC9/rO1kLtLXZDmORm+iHDCMjVbSAyBLjccu3l3Yno+Q7O
         cE03eqaaEm/uukjRcAPyLnuwGBylhIIGJcAmAdo1LbKvONn4eo7PyIoCha6yr8TvbPj5
         ppmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of prvs=0150c9895f=steve.wahl@hpe.com designates 148.163.143.35 as permitted sender) smtp.mailfrom="prvs=0150c9895f=steve.wahl@hpe.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hpe.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kblD9HScFTUqjIG8cS3cNraxq+zO1L0GgsLBWiDjuMk=;
        b=DbiTWGXsVjGlyNBVPRrgp75oAJNIGlv1czaFc29DaFcrIknSJyUVRMqtrWZwgnRtRz
         CRFEcBmqrYyhlpGgs1cPoZRtXjy9dZKWDWc+Fz4Aq2Azu6MMORr7lxpbPNQryQRKr845
         y1ymclwjqvjjWN8iMG4bB6w92Po9BjfPw7RPloj1F8vyfH0Jb6rWsNpOw+Y1ytLvdoGM
         lz89b67UaNanoDIYEpnPlyuU4qxGTAvPBjdZbf0R+cUHTpfzSZKsEmMcC4apNPxp7gSv
         SSgn6hFqrA3nclWlSv0tEDypRVxxvkHWG1lqVB/vBdeBuHfJWD9gkYE9NuezNRvdSy16
         KHrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kblD9HScFTUqjIG8cS3cNraxq+zO1L0GgsLBWiDjuMk=;
        b=NF4sXyyoc1m+W411onL0TIkQubYNb28V0aRgnzV+OFmFOWHmjMGGaIC0H4M4v+e3XY
         LasHdgGrYnzGD1zuaUJiyytQ+GQgWUEjGcxgWDnOZbtqroaG5zSj28USPDEFJYC8+HXE
         7guj72bag7dc+o2jv9PKjQLT9WnsfSO3x/3Ct/SWKNj3IIR1gBDdQqeiNOFhPo/tJlqG
         mBkChF+Ibpv523SRUis4IeDyXy77cLC+98ZfZ9/PKxT9tEYWOXilA0YD9pouq3I4CrK5
         Tfhd70B0I8UsUg17IVdkWbIBz6mhRc5OY18NycoKHiB1GMmutK5tnk8jKqz6oANfCc88
         kCbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU3DpbfOfK2IXYiyQAc+oonmpHeuwWLrVey9Hww8onvCXmeENq5
	j4UeJBdm6TdvlchqopBNpcw=
X-Google-Smtp-Source: APXvYqxxQ+kesuxWqEJAFGV84/iXGco9c+9P28cn1ew+PLgopx366M0P6macRqp8+2l+FGfp0g1i7w==
X-Received: by 2002:a17:902:a98a:: with SMTP id bh10mr7037166plb.213.1567633508578;
        Wed, 04 Sep 2019 14:45:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:90:: with SMTP id 138ls42192pga.1.gmail; Wed, 04 Sep
 2019 14:45:08 -0700 (PDT)
X-Received: by 2002:a63:c118:: with SMTP id w24mr210735pgf.347.1567633508293;
        Wed, 04 Sep 2019 14:45:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567633508; cv=none;
        d=google.com; s=arc-20160816;
        b=Vszn8FIzY0CxPt2Tn3Oxfh6CH5FXAqXiKlV/sdvEdJU5+P+x0DkWYypdo/hcOOYGh7
         CY40+aWxu+LXc8+Eq67IdDE0VGWEF+cJjfGxYWoZPLFJWGzhj4vEUOTLbVe0WDW+6y6E
         oeBfil4TeAB/sXBW5bZuO9QPlzlIOoNB9i59bbDc9pezcVZModdj6/CB8Aln6y1pmxC4
         3X6Uhc9Z4WJPI8A2biEKndyxUTvBb1pvzx78eSszy9XL+TgixN4bl9fLAgGFdzEvQRRu
         lme1ZWkRqd/X6vfapKA2JrzbA6/Z88LtfRojAct41DLxGqQ6FsX8Vyit9/SORnxQqVAv
         F6aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=CGk92/XiALVDSI/TCG3PcKLWXM0KIjgpv0jB5CwcFO0=;
        b=NDcp9mNV0kAsGesXuKx7RNtz7ohm2PZkaQxMzPXVYqMYxYgc0uOkZ7E7tjaFKH3A36
         5s5a8AG6zquvk11rRI6KT/7arFI5MmS/1AFhYQfIVkHSRZzEgfLhmtXCAoHLeVqDzNwK
         5pSP/0YNghAvudmQlVOTdm/P6wRqR+wOhk0qSjewPCw5ob9rMaP3j6ixdTnOQ+AvXYpb
         fe+eEE5ZAZCQp3Lw+P2lexcIIb5pXJgQCU7X/dLl8+61V94UATR/DS5lo+5A53Sg9wlA
         TLYdFnvks4BvtwabUE5INUN2r4IFCCpdG3bN1lRbg8ih3fDCgXerhbUrR4DN2v6p5I/F
         6O+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of prvs=0150c9895f=steve.wahl@hpe.com designates 148.163.143.35 as permitted sender) smtp.mailfrom="prvs=0150c9895f=steve.wahl@hpe.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hpe.com
Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com. [148.163.143.35])
        by gmr-mx.google.com with ESMTPS id w72si23766pfd.2.2019.09.04.14.45.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:45:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=0150c9895f=steve.wahl@hpe.com designates 148.163.143.35 as permitted sender) client-ip=148.163.143.35;
Received: from pps.filterd (m0134425.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x84LfFJb011536;
	Wed, 4 Sep 2019 21:45:06 GMT
Received: from g2t2353.austin.hpe.com (g2t2353.austin.hpe.com [15.233.44.26])
	by mx0b-002e3701.pphosted.com with ESMTP id 2utf2aaxg3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Sep 2019 21:45:06 +0000
Received: from g2t2360.austin.hpecorp.net (g2t2360.austin.hpecorp.net [16.196.225.135])
	by g2t2353.austin.hpe.com (Postfix) with ESMTP id 9D1EA89;
	Wed,  4 Sep 2019 21:45:05 +0000 (UTC)
Received: from swahl-linux (swahl-linux.americas.hpqcorp.net [10.33.153.21])
	by g2t2360.austin.hpecorp.net (Postfix) with ESMTP id 462FD36;
	Wed,  4 Sep 2019 21:45:05 +0000 (UTC)
Date: Wed, 4 Sep 2019 16:45:05 -0500
From: Steve Wahl <steve.wahl@hpe.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, vaibhavrustagi@google.com,
        russ.anderson@hpe.com, dimitri.sivanich@hpe.com, mike.travis@hpe.com
Subject: [PATCH 1/1] x86/purgatory: Change compiler flags to avoid relocation
 errors.
Message-ID: <20190904214505.GA15093@swahl-linux>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-04_05:2019-09-04,2019-09-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 mlxscore=0 adultscore=0
 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1011 mlxlogscore=503
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1909040211
X-Original-Sender: steve.wahl@hpe.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of prvs=0150c9895f=steve.wahl@hpe.com designates
 148.163.143.35 as permitted sender) smtp.mailfrom="prvs=0150c9895f=steve.wahl@hpe.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hpe.com
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

The last change to this Makefile caused relocation errors when loading
a kdump kernel.  This change restores the appropriate flags, without
reverting to the former practice of resetting KBUILD_CFLAGS.

Signed-off-by: Steve Wahl <steve.wahl@hpe.com>
---
 arch/x86/purgatory/Makefile | 35 +++++++++++++++++++----------------
 1 file changed, 19 insertions(+), 16 deletions(-)

diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
index 8901a1f89cf5..9f0bfef1f5db 100644
--- a/arch/x86/purgatory/Makefile
+++ b/arch/x86/purgatory/Makefile
@@ -18,37 +18,40 @@ targets += purgatory.ro
 KASAN_SANITIZE	:= n
 KCOV_INSTRUMENT := n
 
+# These are adjustments to the compiler flags used for objects that
+# make up the standalone porgatory.ro
+
+PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel
+PURGATORY_CFLAGS := -mcmodel=large -ffreestanding -fno-zero-initialized-in-bss
+
 # Default KBUILD_CFLAGS can have -pg option set when FTRACE is enabled. That
 # in turn leaves some undefined symbols like __fentry__ in purgatory and not
 # sure how to relocate those.
 ifdef CONFIG_FUNCTION_TRACER
-CFLAGS_REMOVE_sha256.o		+= $(CC_FLAGS_FTRACE)
-CFLAGS_REMOVE_purgatory.o	+= $(CC_FLAGS_FTRACE)
-CFLAGS_REMOVE_string.o		+= $(CC_FLAGS_FTRACE)
-CFLAGS_REMOVE_kexec-purgatory.o	+= $(CC_FLAGS_FTRACE)
+PURGATORY_CFLAGS_REMOVE		+= $(CC_FLAGS_FTRACE)
 endif
 
 ifdef CONFIG_STACKPROTECTOR
-CFLAGS_REMOVE_sha256.o		+= -fstack-protector
-CFLAGS_REMOVE_purgatory.o	+= -fstack-protector
-CFLAGS_REMOVE_string.o		+= -fstack-protector
-CFLAGS_REMOVE_kexec-purgatory.o	+= -fstack-protector
+PURGATORY_CFLAGS_REMOVE		+= -fstack-protector
 endif
 
 ifdef CONFIG_STACKPROTECTOR_STRONG
-CFLAGS_REMOVE_sha256.o		+= -fstack-protector-strong
-CFLAGS_REMOVE_purgatory.o	+= -fstack-protector-strong
-CFLAGS_REMOVE_string.o		+= -fstack-protector-strong
-CFLAGS_REMOVE_kexec-purgatory.o	+= -fstack-protector-strong
+PURGATORY_CFLAGS_REMOVE		+= -fstack-protector-strong
 endif
 
 ifdef CONFIG_RETPOLINE
-CFLAGS_REMOVE_sha256.o		+= $(RETPOLINE_CFLAGS)
-CFLAGS_REMOVE_purgatory.o	+= $(RETPOLINE_CFLAGS)
-CFLAGS_REMOVE_string.o		+= $(RETPOLINE_CFLAGS)
-CFLAGS_REMOVE_kexec-purgatory.o	+= $(RETPOLINE_CFLAGS)
+PURGATORY_CFLAGS_REMOVE		+= $(RETPOLINE_CFLAGS)
 endif
 
+CFLAGS_REMOVE_purgatory.o	+= $(PURGATORY_CFLAGS_REMOVE)
+CFLAGS_purgatory.o		+= $(PURGATORY_CFLAGS)
+
+CFLAGS_REMOVE_sha256.o		+= $(PURGATORY_CFLAGS_REMOVE)
+CFLAGS_sha256.o			+= $(PURGATORY_CFLAGS)
+
+CFLAGS_REMOVE_string.o		+= $(PURGATORY_CFLAGS_REMOVE)
+CFLAGS_string.o			+= $(PURGATORY_CFLAGS)
+
 $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
 		$(call if_changed,ld)
 
-- 
2.12.3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904214505.GA15093%40swahl-linux.
