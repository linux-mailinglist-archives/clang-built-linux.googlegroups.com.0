Return-Path: <clang-built-linux+bncBAABBIWTZ74AKGQE4KULYAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9390C224FED
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jul 2020 08:35:15 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id 128sf5671211vkt.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 23:35:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595140514; cv=pass;
        d=google.com; s=arc-20160816;
        b=MHs3deLpCxoYgTfmLU7LVvs9qP66dFr6KdZrjY18Isw7Nu+HxK/B+7Vz495quQ4LtE
         mtLq2thtEVyK4ie9URRYPeHhCuxaY/x0L4JRajYg5xq5lNcyGojvqqz+rw16CF0OY8pG
         QXoaqaIYdU656zO19IJvZa1rr/N/KOUtKLlqxNmiPppp+CRjprCCQib6dG46PaKeWxw1
         leQPfIqIkf9Ebsqy1jP9QxJk/gszj3yHwS1bNdzasUbHRXiPq8nQZHFwlK4dX8JpZCTZ
         LOjgFYMEFV0WpxpQ1BxdXBXSd6LGqn3pAPu8g2nw5o6BTqHPIVC0/F+dXGvrN0YdyDCp
         l/6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=K11G34csH2GCGhMSFgJoiNPRBRe/UIQ2XC1evQsLrRg=;
        b=JXv2tQP1t3VmtBuQAx4VroXVfG7tzcvDYiSkLGVYTlbASKGUjsRMlmMbCOcVYh/pJu
         K3QDo+42VZWBhAaHZALBfxncKD96Rj9lye8PituYRQl6KO9gbG1QO1kRN+XEOakjeR7g
         osZtDWYNuWMRnOdfPP9/vV8Zis17BZT1Q10LW52PvCaVImF7TK3zwhWUfyskePEwwUlB
         uy8Mvyb8e6A6vbWElFTDkPJgI/zHricYX8KhVL+NQQi0DBeba3fmQbboP0cy1rBWyeXj
         A5o0dA585McOfDuwtLI9cVg6p31dlEoIdCZgYr1KK+tk3FfFSDAhTyqAD6XtdxwUZPNO
         40tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of aneesh.kumar@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=aneesh.kumar@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K11G34csH2GCGhMSFgJoiNPRBRe/UIQ2XC1evQsLrRg=;
        b=VsLmrisqFBhP+CeZrg2zH3pb/ojrQC7drW9jmujJZ699C3YYwnHaetGJjprQxGVs6F
         /OOL1L9F4hlNArtLE8ejARxnawlhkP2/1xPhf0Z0yjUrUelwZZR4SfraW1HAumGDlauV
         0hnJ9D471qHqwUg0QjqXvWyfaM1JsTCl7XaqwxmnDruprMJHX90/iUbnq9cwJ/UBG7xF
         un1oyNOSoJSunGLwlRUA8wFTN0oJBjemCNBepLJvYMbdK9KKa8GOYMae0+/shbRXhdP3
         s8EXpwHD1t7dO1s4+zpYywaR4slAPHZ/da6fifyj5NvkJM18GPp62MuuJ78g2Ps1S6dU
         jbww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K11G34csH2GCGhMSFgJoiNPRBRe/UIQ2XC1evQsLrRg=;
        b=rkhPNlIS9rb+77CR42AauB66nk5YqhcpvnyxatcuLb365TdUWADE+/v+mYTRwasPY6
         zKTN66RZ5D6/AnW1//YOTN+DYX/KFisY94MsKlmKsYJTF2A9UBBgTmryvEGcy5kDcRLS
         otYcRiVdA9VFRExoQ0a2SEucR4uzGohnCidf6gY7PPx8Rb3waM3FXebvlnynxChME5Pz
         6lhhnSNVDfdl5JkQiI926gr3823Zk2To+dZSutXvobI38uRWzobzD6D45jaMKjjisA7A
         u/7GmxYtpxD0oJckJGH1Scw6OTp+Jq3VeB9BvxeIpplkOxIhtZzsJ2YavQEyNI+7wPfb
         UbBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+y3s1KQ80KiaQw6xFV21vIKbiVp1JZj9q57jMjwgnzx4Y28Es
	/qFcIo4JmsoKauOvaLTFzHc=
X-Google-Smtp-Source: ABdhPJxpsRzkul8oqhaYj+MsqLnMXOaejk9SVgQdMECJJ1ph6X8J+q6aV90UArWvPVrjxG1O1w4zFg==
X-Received: by 2002:ac5:c189:: with SMTP id z9mr12592807vkb.79.1595140514455;
        Sat, 18 Jul 2020 23:35:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5515:: with SMTP id t21ls224158uaa.1.gmail; Sat, 18 Jul
 2020 23:35:14 -0700 (PDT)
X-Received: by 2002:ab0:6550:: with SMTP id x16mr12521691uap.17.1595140514178;
        Sat, 18 Jul 2020 23:35:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595140514; cv=none;
        d=google.com; s=arc-20160816;
        b=DdZ4y+0OJZyoIUnUEbSNc8QhB0cXbL0UsSkY2mz+mGR9KigkZkPgOclTg06WE86zXS
         TvAchPyItSDM3BTkb2P2/44P36Ie4XMPzsXPXby55PJ0OyN0cz44R4N2Tgk6+cEVcI/f
         2k/L5FcnXRRUXfPIMoJiF2vfFRrge4ZgpY9053rvqlGwOzdEW6lJktkC6Gzax1rG7UBH
         bESsmhVxxstqjE97N5X+h/CSxk99vppPb0ZHVmYwYID82Y/UOEeYOgz/i0t1X6VhJRDw
         ntAfY33LUQzKpts40kdTwArKVs2Lrx8Juqp8NHgAPyBEwA4LCaBOh/d+ExAve+bru+gk
         mRjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=flJqFbYhYZ9IeHFO4nqYKlP54VA1AZBDt1KbJjZ1qv0=;
        b=m2QJqX1xKMXgZKe9ASiZQ+bSyOaeQS/svU8a/Zy4mozoE96HNCbeNWee/U3OJBwO4R
         zzXsJtIu+H3xjicq9y+1qaru47+8KlaB/pyhdpgiTRB+kBsVSUKumTIJ13uOSHkAmGv5
         E8Hd3l9O567LUwOTfPfPtmqfYO1rq+pSe9qMlj8b4nQ6c0tEVuvDk8N7WJ9RDd0g4tKY
         K4JacH/JZu9jZhyx3MSmjNDJ/mFz41dNlEN74Tl7FxTEv9Hhh8AHv61YX/Ff+FR3GZwx
         PmiL+UTItsqAnmjjjP4pDFnKYE+OYSZ0IC/nuY4jQXgXcHWsVKtchitW97zDfQ61mkwi
         EZ0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of aneesh.kumar@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=aneesh.kumar@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id s143si408617vke.4.2020.07.18.23.35.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Jul 2020 23:35:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of aneesh.kumar@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 06J6WiId004874;
	Sun, 19 Jul 2020 02:35:07 -0400
Received: from ppma01wdc.us.ibm.com (fd.55.37a9.ip4.static.sl-reverse.com [169.55.85.253])
	by mx0a-001b2d01.pphosted.com with ESMTP id 32bwmjtyq6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 19 Jul 2020 02:35:07 -0400
Received: from pps.filterd (ppma01wdc.us.ibm.com [127.0.0.1])
	by ppma01wdc.us.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 06J6JRZ5018676;
	Sun, 19 Jul 2020 06:35:06 GMT
Received: from b01cxnp22034.gho.pok.ibm.com (b01cxnp22034.gho.pok.ibm.com [9.57.198.24])
	by ppma01wdc.us.ibm.com with ESMTP id 32brq87ssn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 19 Jul 2020 06:35:06 +0000
Received: from b01ledav004.gho.pok.ibm.com (b01ledav004.gho.pok.ibm.com [9.57.199.109])
	by b01cxnp22034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 06J6Z5rc12255606
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sun, 19 Jul 2020 06:35:05 GMT
Received: from b01ledav004.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id CDD57112064;
	Sun, 19 Jul 2020 06:35:05 +0000 (GMT)
Received: from b01ledav004.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 1D878112062;
	Sun, 19 Jul 2020 06:35:04 +0000 (GMT)
Received: from skywalker.linux.ibm.com (unknown [9.85.75.204])
	by b01ledav004.gho.pok.ibm.com (Postfix) with ESMTP;
	Sun, 19 Jul 2020 06:35:03 +0000 (GMT)
X-Mailer: emacs 27.0.91 (via feedmail 11-beta-1 I)
From: "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
        linuxppc-dev@lists.ozlabs.org, Michael Ellerman <mpe@ellerman.id.au>,
        Bharata B Rao <bharata@linux.ibm.com>
Subject: Re: [powerpc:next-test 103/106]
 arch/powerpc/mm/book3s64/radix_pgtable.c:513:21: error: use of undeclared
 identifier 'SECTION_SIZE_BITS'
In-Reply-To: <202007190428.5Q47y2Gy%lkp@intel.com>
References: <202007190428.5Q47y2Gy%lkp@intel.com>
Date: Sun, 19 Jul 2020 12:05:01 +0530
Message-ID: <87zh7w108a.fsf@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-07-18_13:2020-07-17,2020-07-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 priorityscore=1501 phishscore=0 clxscore=1011 mlxscore=0 bulkscore=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 impostorscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007190048
X-Original-Sender: aneesh.kumar@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of aneesh.kumar@linux.ibm.com designates 148.163.156.1 as
 permitted sender) smtp.mailfrom=aneesh.kumar@linux.ibm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

kernel test robot <lkp@intel.com> writes:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git next-test
> head:   5fed3b3e21db21f9a7002426f456fd3a8a8c0772
> commit: 21407f39b9d547da527ad5224c4323e1f62bb514 [103/106] powerpc/mm/radix: Create separate mappings for hot-plugged memory
> config: powerpc-randconfig-r016-20200719 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ed6b578040a85977026c93bf4188f996148f3218)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         git checkout 21407f39b9d547da527ad5224c4323e1f62bb514
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>>> arch/powerpc/mm/book3s64/radix_pgtable.c:513:21: error: use of undeclared identifier 'SECTION_SIZE_BITS'
>                    *mem_block_size = MIN_MEMORY_BLOCK_SIZE;
>                                      ^
>    include/linux/memory.h:24:43: note: expanded from macro 'MIN_MEMORY_BLOCK_SIZE'
>    #define MIN_MEMORY_BLOCK_SIZE     (1UL << SECTION_SIZE_BITS)
>                                              ^
>    arch/powerpc/mm/book3s64/radix_pgtable.c:521:33: error: use of undeclared identifier 'SECTION_SIZE_BITS'
>            unsigned long mem_block_size = MIN_MEMORY_BLOCK_SIZE;
>                                           ^
>    include/linux/memory.h:24:43: note: expanded from macro 'MIN_MEMORY_BLOCK_SIZE'
>    #define MIN_MEMORY_BLOCK_SIZE     (1UL << SECTION_SIZE_BITS)
>                                              ^
>    2 errors generated.
>
> vim +/SECTION_SIZE_BITS +513 arch/powerpc/mm/book3s64/radix_pgtable.c
>
>    494	
>    495	static int __init probe_memory_block_size(unsigned long node, const char *uname, int
>    496						  depth, void *data)
>    497	{
>    498		unsigned long *mem_block_size = (unsigned long *)data;
>    499		const __be64 *prop;
>    500		int len;
>    501	
>    502		if (depth != 1)
>    503			return 0;
>    504	
>    505		if (strcmp(uname, "ibm,dynamic-reconfiguration-memory"))
>    506			return 0;
>    507	
>    508		prop = of_get_flat_dt_prop(node, "ibm,lmb-size", &len);
>    509		if (!prop || len < sizeof(__be64))
>    510			/*
>    511			 * Nothing in the device tree
>    512			 */
>  > 513			*mem_block_size = MIN_MEMORY_BLOCK_SIZE;
>    514		else
>    515			*mem_block_size = be64_to_cpup(prop);
>    516		return 1;
>    517	}
>    518	
>

 arch/powerpc/mm/book3s64/radix_pgtable.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/powerpc/mm/book3s64/radix_pgtable.c b/arch/powerpc/mm/book3s64/radix_pgtable.c
index bba45fc0b7b2..c5bf2ef73c36 100644
--- a/arch/powerpc/mm/book3s64/radix_pgtable.c
+++ b/arch/powerpc/mm/book3s64/radix_pgtable.c
@@ -492,6 +492,7 @@ static int __init radix_dt_scan_page_sizes(unsigned long node,
 	return 1;
 }
 
+#ifdef CONFIG_MEMORY_HOTPLUG
 static int __init probe_memory_block_size(unsigned long node, const char *uname, int
 					  depth, void *data)
 {
@@ -532,6 +533,15 @@ static unsigned long radix_memory_block_size(void)
 	return mem_block_size;
 }
 
+#else   /* CONFIG_MEMORY_HOTPLUG */
+
+static unsigned long radix_memory_block_size(void)
+{
+	return 1UL * 1024 * 1024 * 1024;
+}
+
+#endif /* CONFIG_MEMORY_HOTPLUG */
+
 
 void __init radix__early_init_devtree(void)
 {
-- 
2.26.2


-aneesh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87zh7w108a.fsf%40linux.ibm.com.
