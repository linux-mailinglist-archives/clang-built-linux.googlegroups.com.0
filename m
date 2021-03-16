Return-Path: <clang-built-linux+bncBDE5LFWXQAIRBZVQYGBAMGQE336JX4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D5B33CE5E
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 08:04:07 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id k19sf17209654ook.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 00:04:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615878246; cv=pass;
        d=google.com; s=arc-20160816;
        b=o7BE7VfG9JRHR9Kioq2rCxS7wyEbQCh4rhq6kYxBdnaxRoFjbabCOl8nUALWbDhamr
         RTIHo7sDLvBD8ojWz1FnqoSvRpmZX4sSGLcnUreUlQY1ileHB/D4BBwh50VPzUL2HVpH
         8mr9V1NqKdD22OQkkbHIUnE0Xf/qbUbIL3XhX5PPMOrE2jrvDBxIcb99JI4ViyJQ8epK
         K6NVG7/94lMEVvF0zzN75eqDMUTM3WNubZSTYxzyBfC0kvK08X4A+523WXr7DDwA6LhA
         xcYC+For+EUmjXJ7iKnesHvHhdaH7hpwK5LSlxectEPw7uHyWGs+gF/1SPjV8bfOOEQZ
         QSZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lygGQVw74rsPkKQMiCmYIn4uAMDywBG5zcwdy6k4fEY=;
        b=Fm5bGHMQJkga1/KnXrWekaB33HnMr4HDNFcvrMQP2HPyBnlirZsaPUzhnS31YSAS86
         OY9qjkrUmhyrwcYJdXlJBkoHtrZA2+kJ1e4yxpPqSZNcKbTAHwQvhQevGb+nmEW5Nm0h
         tOKHvJq/9Cjfz8EtZmJ9+rz7HWlvstoH9vibOn6vkO0CwnuyXCmsr7OMnhM+E95LG3bd
         n9/51uMDtbXQ6EnCdJw8N2miPgN2UqaxG2W6yZ3fjxzeEQw7DGeTjeA5zN6ArhqDadMM
         2Ui6e/kDU7jgJxZBHGiw0s0Zi5UDEutgkDeyOLW02NEk8Ti6SkeFI5OrYLSukRbPMo0M
         be+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=SBpZan8Z;
       spf=pass (google.com: domain of rppt@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=rppt@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lygGQVw74rsPkKQMiCmYIn4uAMDywBG5zcwdy6k4fEY=;
        b=XBSPtwUYBWoz46NHgKXJwLz31DvuSJwJEO/t1GznHfbaUCuitodu/S8sqQ4R0dkp1o
         1RI4Xfoh1A1LxSuNhu2TJ1gRS/paF6flphLvEz4AP+hMoC24NmgUXEGtEt4ofW6ONeJW
         TakdZV7SAvcnWxSJkMRZ3r9lFyt/SYjPc8ifmcBvHWeSzlZ4YMn74q6NgmudFClQHkyq
         I5tZiu3qXs/rp+0RuExLCIqJN39AovY8CUQkB/MufW46SpjwcBuPbEomfg1gSuU+aOyB
         mUKah661YZBHkHlTQKHfBsRCdLrkgoKS3pKDP1TsLUxlFG4+h/ZwjLOHhnmqoodBTGqI
         IUBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lygGQVw74rsPkKQMiCmYIn4uAMDywBG5zcwdy6k4fEY=;
        b=jvIxPprq8vnzwZPlU47bO2t8+l9Qg9aXQFvY19KI0XQOker6SijwyiSxV80gE941qn
         6H2BGiHxnrmeqkP6aMOQQHXn6qrnCsx91S6yPOBQJlsqtp+tPyCtFlDWj+GD20ojB+EI
         ZPc0N0QhmAtD05kil0aGojo9zeMoMV2ipTmNUnO24yxVhqGv40AhlT+Fl7QxBcBcx9pc
         c2DZKR9LHSkxTKeM1yCrQQQQ+ejVxKmhRbnfDIsPBu52FLn4twlRj16Gt9wqFCjdw0/U
         0IQnCUsQoPJYKFgqdWCfsI0HJHDGs0ezZulYcIkG3POWohH5U+RoPbwnr3rOcazMX9NH
         fvdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fuUEpHK3PeuFpzaLcFhpRE112iZgo95PyeFgcGhC/sAg8Hei+
	bMttoLcUSnk9tmdDs01w8Wk=
X-Google-Smtp-Source: ABdhPJyYX+F1GDbL8TNQFOdl+xZv3KBk6pis8b3nX/6hmkzHdj0KV/lTI20VFpixhFuB5p19/q3Now==
X-Received: by 2002:a4a:b302:: with SMTP id m2mr2466474ooo.59.1615878246168;
        Tue, 16 Mar 2021 00:04:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:aad0:: with SMTP id t199ls4595221oie.7.gmail; Tue, 16
 Mar 2021 00:04:05 -0700 (PDT)
X-Received: by 2002:aca:c38e:: with SMTP id t136mr2373758oif.135.1615878245850;
        Tue, 16 Mar 2021 00:04:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615878245; cv=none;
        d=google.com; s=arc-20160816;
        b=L4a+ucfnoPPSExXwJkO22g0ar0lVkPYirUifLMWZI62pXdSC7C5YY8cm4JCRW9NMkI
         87S7F/RcLE6VSwi0Wv2bN49WIFK/A8gL2SRl4zV2P3QD7vfe9Er1Upccp/bXqcVUGpM1
         GLuChy21cs5Z0oU0eRfuuzxrfvHA6XuP2Gxp7D8nOqsWcw+4hgf2B28DInHMm51q8E5c
         nkzNigxZY/SXGeix0+VwW4MpUx8CZptW8bk9EAflnsQxV19MRCVD/qEr9XFxjqdcpvLL
         XOn0jqak0ycF9sZ76gWMwXgC1aPClMSyxN+rmdqDdeSUnqbLEZb8bZQhJSc6QAoPsfJQ
         4S0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+v4+oo99lYmkSGGgW/Q+P5qZ1gw/VuyyQrJqKexrzvk=;
        b=xWtaXMvIUCXYMvXDRnTZyRRCTixT25Lkn0ENKTf+Lm1PgX29e/+ZHcIgWPM349r3IF
         DIUcKU2EB7k1DkdhZJ1qNQxjqoO4dCvqUL9WiLX7cZ4KlI2A5fPnsEKhK8Gwrn8j62go
         hKd498wLYMw7k+zxltT28Bs42InZ2Dgf/i7/uiTw5UMKuoNZfdnfPGleoWLeFHAvR0GM
         qkFbJmIPnYgpGBUSPfX886Gylpz0PWejSA8OnfTK1+9tnzhmQKpxnu8WtgXlErdobnfr
         uQ1U1wE/tulk51rNmgxoPuY5EPfIY7qxf76hTVyj70FWAx47MYpTbm2GU7JZQDcnaHu7
         x0mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=SBpZan8Z;
       spf=pass (google.com: domain of rppt@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=rppt@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id h187si998898oib.1.2021.03.16.00.04.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Mar 2021 00:04:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 12G72XXM119941;
	Tue, 16 Mar 2021 03:04:03 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 37ap2t2qjm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 16 Mar 2021 03:04:02 -0400
Received: from m0098421.ppops.net (m0098421.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 12G73C9l121473;
	Tue, 16 Mar 2021 03:04:02 -0400
Received: from ppma05fra.de.ibm.com (6c.4a.5195.ip4.static.sl-reverse.com [149.81.74.108])
	by mx0a-001b2d01.pphosted.com with ESMTP id 37ap2t2qgy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 16 Mar 2021 03:04:02 -0400
Received: from pps.filterd (ppma05fra.de.ibm.com [127.0.0.1])
	by ppma05fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 12G7407N011575;
	Tue, 16 Mar 2021 07:04:00 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
	by ppma05fra.de.ibm.com with ESMTP id 378n189bqx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 16 Mar 2021 07:04:00 +0000
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com [9.149.105.61])
	by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 12G73vp641943384
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 16 Mar 2021 07:03:58 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D93B611C05E;
	Tue, 16 Mar 2021 07:03:57 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id F076511C04C;
	Tue, 16 Mar 2021 07:03:56 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.145.58.148])
	by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Tue, 16 Mar 2021 07:03:56 +0000 (GMT)
Date: Tue, 16 Mar 2021 09:03:54 +0200
From: Mike Rapoport <rppt@linux.ibm.com>
To: kernel test robot <lkp@intel.com>
Cc: Arnd Bergmann <arnd@arndb.de>, kbuild-all@lists.01.org,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        David Hildenbrand <david@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: WARNING: modpost: vmlinux.o(.text+0x74fea4): Section mismatch in
 reference from the function memblock_find_in_range_node() to the function
 .init.text:memblock_bottom_up()
Message-ID: <YFBYWjtWJrnGyiVp@linux.ibm.com>
References: <202103160133.UzhgY0wt-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202103160133.UzhgY0wt-lkp@intel.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-15_15:2021-03-15,2021-03-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=999 lowpriorityscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 spamscore=0 mlxscore=0 phishscore=0 clxscore=1011
 impostorscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2103160046
X-Original-Sender: rppt@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=SBpZan8Z;       spf=pass (google.com:
 domain of rppt@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=rppt@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

On Tue, Mar 16, 2021 at 01:23:08AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   1e28eed17697bcf343c6743f0028cc3b5dd88bf0
> commit: 34dc2efb39a231280fd6696a59bbe712bf3c5c4a memblock: fix section mismatch warning
> date:   2 days ago
> config: arm64-randconfig-r013-20210315 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a28facba1ccdc957f386b7753f4958307f1bfde8)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=34dc2efb39a231280fd6696a59bbe712bf3c5c4a
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 34dc2efb39a231280fd6696a59bbe712bf3c5c4a
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> WARNING: modpost: vmlinux.o(.text+0x74fea4): Section mismatch in reference from the function memblock_find_in_range_node() to the function .init.text:memblock_bottom_up()
> The function memblock_find_in_range_node() references
> the function __init memblock_bottom_up().
> This is often because memblock_find_in_range_node lacks a __init
> annotation or the annotation of memblock_bottom_up is wrong.

I don't have clang-13 setup handy so I could not check, but I think this
should be the fix:

diff --git a/include/linux/memblock.h b/include/linux/memblock.h
index d13e3cd938b4..5984fff3f175 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -460,7 +460,7 @@ static inline void memblock_free_late(phys_addr_t base, phys_addr_t size)
 /*
  * Set the allocation direction to bottom-up or top-down.
  */
-static inline __init void memblock_set_bottom_up(bool enable)
+static inline __init_memblock void memblock_set_bottom_up(bool enable)
 {
 	memblock.bottom_up = enable;
 }
@@ -470,7 +470,7 @@ static inline __init void memblock_set_bottom_up(bool enable)
  * if this is true, that said, memblock will allocate memory
  * in bottom-up direction.
  */
-static inline __init bool memblock_bottom_up(void)
+static inline __init_memblock bool memblock_bottom_up(void)
 {
 	return memblock.bottom_up;
 }

 
-- 
Sincerely yours,
Mike.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFBYWjtWJrnGyiVp%40linux.ibm.com.
