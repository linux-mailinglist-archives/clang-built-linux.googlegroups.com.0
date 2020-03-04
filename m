Return-Path: <clang-built-linux+bncBAABB2UG7XZAKGQERK4FTYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id B91FB178A6E
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Mar 2020 06:58:03 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id o14sf460416otp.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Mar 2020 21:58:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583301482; cv=pass;
        d=google.com; s=arc-20160816;
        b=WOJUobp7FeCZmb09C8VSFub0Tkf9pxGAbdRR6/uPYvugOPESxATPK5LahezPzqyNv3
         Ihs/Go6KZY1r3CDD7ZkjFijFhrduvMCd3KWpJAmkeL3ZLzD7JcRYfVfmTGpJKqaudgFc
         aWBpBaupOKd0NLDmHdZsPv1Y85I3LHru5kmTi4WA1omXsC6Xgv5llsmu0qdniYCJk/M0
         eHOInEKjnL9ZNGdrWI+cLwrCx4qTeasm486ZkVQouIealK06L7sPFgV5VhxH8U8CrS86
         u0dg9uih4apMo/d3pBwHVd+UB7kQsl9P7fJc9nT561ZHryhyIQi5vUjyhEDExMNq5IHZ
         B/Rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:in-reply-to
         :content-disposition:mime-version:references:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=y9hbWnhO7zZT8lTi01GII8JAi7inZCTOIHTp3ao0d1o=;
        b=nQ1n6kB/e7/SH2SS4UhW5nhqHcAnzn2YSZrJsWtbXgrzBlijl+O2YSPiwg6ZvONPOJ
         BmtbimGDr6AzNj+kXx7EhXkwHQcLHL8ViQPOnG3SgbxT9psHjvjKnpzKdMwh+bZPyv4/
         0i7MBV5XUCWuPgCmCvuXA4RfwCSZpHe92FG4bOjeqC+QwGtDPULbC2ILYiFxJQdD0D7S
         /Yn4yUPOASiAoGf95uua/oSl7nk13eVkfHZL+g5Xp4lT/Em1YICaeeRTTCpuRIQfRpRQ
         J1A2rndIXxRPXa/aZh6tfRDrhC6pR0F0sNey9HKOKQ4R9gbgUzL18PIXTdQLZiZ1GqbY
         wcFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rppt@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=rppt@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y9hbWnhO7zZT8lTi01GII8JAi7inZCTOIHTp3ao0d1o=;
        b=GEy2R+pBHD9rFXPMImTAolF3dc1+p3sYrKRd/uRi4+J6ppEX2we9CJ7UsdIB39RUcA
         CSPewxacbsmwEEad5Fi42irm0gZTl1aG/cpZ6RltxCFUSc9OuoSk0ZRyp8B151xHUY9T
         d4oVJyC01JH5+xzBtfpPFhvnnELxrYPQVKlyQTjGNGE179lLjNM0pbZWpNPD5Mp/CP31
         ewqT945p3Ar/rKkbcskEfzdVECr8X09vjCHinWr/BQNwNQYPgOoeAnwXy3VkMSAlbKo0
         IKmGd50KniSKPsNEY/Kazer/3nyl7Wl18niPnBwakqXBrxyA3Jay1jYB4bsXiuqigJxO
         3Rdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=y9hbWnhO7zZT8lTi01GII8JAi7inZCTOIHTp3ao0d1o=;
        b=K0pZicBkaP4S8z4GNhIqs+AOscDvqJkLHsYL7by4aUOmW/cxPkHk74W8n/D2djO+h6
         4gLuITOTI4cDfNO6LuDcz90CYPJgPxE8h+Mnk74yhVSoijxIGVVucKvn5oR6ztOGQjCc
         uOgtilWtgk+OSY7mirueNECpU5iS8hyfow/mHuOOHubFCh0iTD3HTqwDE5nhv5IkvpQP
         1qFCCLjj0tYMiqoj09lLLtpgaYA1KKjhlnyU805O6CVCoRDN4E1YH1jecJ2OZKN7L4Gm
         AY9D691WxwvbyRF6HukkL/XJvROnxHMmng+QLk8g/xWIHymIBpTZrQ4K05JtaMTZmNsg
         +1oQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2cV6Ecfdw1o//uNBdkxVaGwBiwKwbfqNeFmwW/OR0+r7cftpUH
	9KQBuLiC5qUSzn1BNzPNQT8=
X-Google-Smtp-Source: ADFU+vuaYBaq8Gzr9UgpadFSWvfq9F10UurMPzTd9CRcap47w61oOr/W4uUSVMbC/Fezw2V+quWX2Q==
X-Received: by 2002:aca:1913:: with SMTP id l19mr651213oii.47.1583301482695;
        Tue, 03 Mar 2020 21:58:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6082:: with SMTP id m2ls264628otj.8.gmail; Tue, 03 Mar
 2020 21:58:02 -0800 (PST)
X-Received: by 2002:a05:6830:1d69:: with SMTP id l9mr1157414oti.192.1583301482344;
        Tue, 03 Mar 2020 21:58:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583301482; cv=none;
        d=google.com; s=arc-20160816;
        b=ZNcQyv8fToB9mR7kIcRGbk7aGmSULZxuhqH/ZpLa9vFMaT4OKO6/p3N/ZUCHq6em3I
         I2dYqNXRUz752rIS1RbGZP5nwYspti1zgJ76qWELUcHk8yXsaEHxbkfF6vY2V21+n1H6
         YlWrrogAr+8WmbV9FkbOXIIYTFybe9ZHKKahPjeE+3eL6UKGGoIzpCIzODrZH6RT4Phr
         TzqYtDVo5icv9L2K/JIFHswQLjObnxXDEZKoJfJuDgRu1Xpso0I5Knt5g7LVkaVqaNmJ
         Pg0Jbh6oftqyasj0bG72COOXjExZgdxQMfVVIb595/RvOfMPqDeHhVXeAP01VyfTOUTI
         m0wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:content-disposition:mime-version:references
         :subject:cc:to:from:date;
        bh=3kE3YIGBU5P8Y2itHjEiBOcFzWEN4wc09IBnQy+/wQg=;
        b=G1qbNp77M45T2kOKvv2beH+rYbv2Wd1LFok9TDFPX++4G64Wbsh8N8i7lJVG3laZaB
         4JC6DQtHMmy+dfZBKm5TOT+54GpP8ZtxXG1XW36VD6tMuimqxtdETKec+8rkw1DPlfL5
         pn+YzSKHZpWb8vIE1GEqE0OENRBuvy5l6eC1o2vYA2j8jz6p1x7KB8CUOvEv5od/gpur
         y6YSUa2HyxQj0F+7msm250Wecw0FoiZKobsvc52a6Tze4ziaydvzyJCYs4Do2UOXBQFZ
         Iqhq3MzS2fWfkBLMWswfS/tOydzUzuXNohF70hRj0Kl7UpLKCk+Ik5LAnnoxix6b2ox4
         6oqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rppt@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=rppt@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id g15si55595otq.1.2020.03.03.21.58.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2020 21:58:02 -0800 (PST)
Received-SPF: pass (google.com: domain of rppt@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0245uIuH181958
	for <clang-built-linux@googlegroups.com>; Wed, 4 Mar 2020 00:58:01 -0500
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2yfmg23nn4-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Wed, 04 Mar 2020 00:58:00 -0500
Received: from localhost
	by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <clang-built-linux@googlegroups.com> from <rppt@linux.ibm.com>;
	Wed, 4 Mar 2020 05:57:58 -0000
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
	by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
	Wed, 4 Mar 2020 05:57:54 -0000
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com [9.149.105.62])
	by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 0245vsjc58654736
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 4 Mar 2020 05:57:54 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id DD2ECAE06E;
	Wed,  4 Mar 2020 05:57:53 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 56277AE074;
	Wed,  4 Mar 2020 05:57:53 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.8.115])
	by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Wed,  4 Mar 2020 05:57:53 +0000 (GMT)
Date: Wed, 4 Mar 2020 07:57:51 +0200
From: Mike Rapoport <rppt@linux.ibm.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
        clang-built-linux@googlegroups.com,
        Linux Memory Management List <linux-mm@kvack.org>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [linux-next:master 5946/5967] arch/arm64/mm/mmu.c:827:21: error:
 incompatible pointer types passing 'pgd_t *' to parameter of type 'p4d_t *'
References: <202003031105.xcoYRe6W%lkp@intel.com>
 <20200303170314.9a6684e8191250275b1d8bdf@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200303170314.9a6684e8191250275b1d8bdf@linux-foundation.org>
X-TM-AS-GCONF: 00
x-cbid: 20030405-0012-0000-0000-0000038CF8F8
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20030405-0013-0000-0000-000021C9B1FA
Message-Id: <20200304055751.GA6202@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-03-03_08:2020-03-03,2020-03-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=800 clxscore=1011
 lowpriorityscore=0 malwarescore=0 adultscore=0 suspectscore=0
 priorityscore=1501 spamscore=0 mlxscore=0 bulkscore=0 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003040044
X-Original-Sender: rppt@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rppt@linux.ibm.com designates 148.163.156.1 as
 permitted sender) smtp.mailfrom=rppt@linux.ibm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=ibm.com
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

On Tue, Mar 03, 2020 at 05:03:14PM -0800, Andrew Morton wrote:
> On Tue, 3 Mar 2020 11:18:12 +0800 kbuild test robot <lkp@intel.com> wrote:
> 
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   b56557c8e5210c25b008da636ef804b228967aa6
> > commit: 87d900aef3e229a891438c88debc533a8a1fa976 [5946/5967] arm/arm64: add support for folded p4d page tables
> > config: arm64-allyesconfig (attached as .config)
> > compiler: clang version 11.0.0 (git://gitmirror/llvm_project 211fb91f1067ecdf7c0b8a019bcf76554d813129)
> > reproduce:
> >         # FIXME the reproduce steps for clang is not ready yet
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):
> 
> (cc Mike & Catalin)
> 
> Did we already fix this? 
> arm-arm64-add-support-for-folded-p4d-page-tables-fix-fix.patch
> (http://lkml.kernel.org/r/20200302174553.GC4166275@arrakis.emea.arm.com)
> seems to be fixing a different issue?
 
It's the same issue.
Besides, Anshuman updated the hot-remove series [1] to include p4d walk, so
it should get fixed in arm64 tree.
 
> > >> arch/arm64/mm/mmu.c:827:21: error: incompatible pointer types passing 'pgd_t *' to parameter of type 'p4d_t *' [-Werror,-Wincompatible-pointer-types]
> >                    pudp = pud_offset(pgdp, addr);
> >                                      ^~~~
> >    include/asm-generic/pgtable-nopud.h:45:40: note: passing argument to parameter 'p4d' here
> >    static inline pud_t *pud_offset(p4d_t *p4d, unsigned long address)
> >                                           ^
> >    arch/arm64/mm/mmu.c:955:21: error: incompatible pointer types passing 'pgd_t *' to parameter of type 'p4d_t *' [-Werror,-Wincompatible-pointer-types]
> >                    pudp = pud_offset(pgdp, addr);
> >                                      ^~~~
> >    include/asm-generic/pgtable-nopud.h:45:40: note: passing argument to parameter 'p4d' here
> >    static inline pud_t *pud_offset(p4d_t *p4d, unsigned long address)
> >                                           ^
> >    arch/arm64/mm/mmu.c:975:20: error: incompatible pointer types passing 'pgd_t *' to parameter of type 'p4d_t *' [-Werror,-Wincompatible-pointer-types]
> >            pudp = pud_offset(pgdp, 0UL);
> >                              ^~~~
> >    include/asm-generic/pgtable-nopud.h:45:40: note: passing argument to parameter 'p4d' here
> >    static inline pud_t *pud_offset(p4d_t *p4d, unsigned long address)
> >                                           ^
> >    3 errors generated.
> > 
> > vim +827 arch/arm64/mm/mmu.c
> > 
> > de323e651df4680 Anshuman Khandual 2020-02-13  818  
> > de323e651df4680 Anshuman Khandual 2020-02-13  819  static void unmap_hotplug_pud_range(pgd_t *pgdp, unsigned long addr,
> > de323e651df4680 Anshuman Khandual 2020-02-13  820  				    unsigned long end, bool free_mapped)
> > de323e651df4680 Anshuman Khandual 2020-02-13  821  {
> > de323e651df4680 Anshuman Khandual 2020-02-13  822  	unsigned long next;
> > de323e651df4680 Anshuman Khandual 2020-02-13  823  	pud_t *pudp, pud;
> > de323e651df4680 Anshuman Khandual 2020-02-13  824  
> > de323e651df4680 Anshuman Khandual 2020-02-13  825  	do {
> > de323e651df4680 Anshuman Khandual 2020-02-13  826  		next = pud_addr_end(addr, end);
> > de323e651df4680 Anshuman Khandual 2020-02-13 @827  		pudp = pud_offset(pgdp, addr);
> > de323e651df4680 Anshuman Khandual 2020-02-13  828  		pud = READ_ONCE(*pudp);
> > de323e651df4680 Anshuman Khandual 2020-02-13  829  		if (pud_none(pud))
> > de323e651df4680 Anshuman Khandual 2020-02-13  830  			continue;
> > de323e651df4680 Anshuman Khandual 2020-02-13  831  
> > de323e651df4680 Anshuman Khandual 2020-02-13  832  		WARN_ON(!pud_present(pud));
> > de323e651df4680 Anshuman Khandual 2020-02-13  833  		if (pud_sect(pud)) {
> > de323e651df4680 Anshuman Khandual 2020-02-13  834  			pud_clear(pudp);
> > de323e651df4680 Anshuman Khandual 2020-02-13  835  
> > de323e651df4680 Anshuman Khandual 2020-02-13  836  			/*
> > de323e651df4680 Anshuman Khandual 2020-02-13  837  			 * One TLBI should be sufficient here as the PUD_SIZE
> > de323e651df4680 Anshuman Khandual 2020-02-13  838  			 * range is mapped with a single block entry.
> > de323e651df4680 Anshuman Khandual 2020-02-13  839  			 */
> > de323e651df4680 Anshuman Khandual 2020-02-13  840  			flush_tlb_kernel_range(addr, addr + PAGE_SIZE);
> > de323e651df4680 Anshuman Khandual 2020-02-13  841  			if (free_mapped)
> > de323e651df4680 Anshuman Khandual 2020-02-13  842  				free_hotplug_page_range(pud_page(pud),
> > de323e651df4680 Anshuman Khandual 2020-02-13  843  							PUD_SIZE);
> > de323e651df4680 Anshuman Khandual 2020-02-13  844  			continue;
> > de323e651df4680 Anshuman Khandual 2020-02-13  845  		}
> > de323e651df4680 Anshuman Khandual 2020-02-13  846  		WARN_ON(!pud_table(pud));
> > de323e651df4680 Anshuman Khandual 2020-02-13  847  		unmap_hotplug_pmd_range(pudp, addr, next, free_mapped);
> > de323e651df4680 Anshuman Khandual 2020-02-13  848  	} while (addr = next, addr < end);
> > de323e651df4680 Anshuman Khandual 2020-02-13  849  }
> > de323e651df4680 Anshuman Khandual 2020-02-13  850  
> > 
> > :::::: The code at line 827 was first introduced by commit
> > :::::: de323e651df46808081eeb17268054f77932a119 arm64/mm: Enable memory hot remove
> > 
> > :::::: TO: Anshuman Khandual <anshuman.khandual@arm.com>
> > :::::: CC: Catalin Marinas <catalin.marinas@arm.com>
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
Sincerely yours,
Mike.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200304055751.GA6202%40linux.ibm.com.
