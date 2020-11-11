Return-Path: <clang-built-linux+bncBCQ6FHMJVICRBSEOV76QKGQE5VVMI6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 865152AEF4C
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 12:13:13 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id p3sf1011369plq.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 03:13:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605093192; cv=pass;
        d=google.com; s=arc-20160816;
        b=WFG9Y/UGzo8isYhALB7Wj9xoFCi8akS5NKWNzh8ON8wnp+P9Lny/55qSomkn/fM05Y
         yntZFciAhed3KpKzUMcLfAT7F+54n3+TR4d9TzeBKLSDvasUdKfjoN/D9MnvGSvlS7hL
         Q9DDFGW4cQBQsddv6f22KlYP2LNoI6/PKDb21qgfZWpqPqr+iFFWcwZxxe9F7jbbZApr
         yUdSD+Bd8whUOctYlqBtZ/oF1Lpp97C9ilW3H155qMVALeExGD6UEk/mCnsOAthQidWC
         AgR8F9tUpY//qp73aYaTFcsThNNufnwc4F2dyV2W0xLtO4rafKdWL5aVIi9jXYzpgOOc
         rMTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=rbxhrwCjF5lXQADK7Tgs3Ry9N4wpiBrNsUlv/LKpsnw=;
        b=c1q0mGh3ecWq0iGNXptTPcnq4OqxjwwWHP2XlMSjdhWNARsw/2U0tMY9opUd2rKqzh
         mRaRxukCxXuZJNZ+1iYAhWWatNkGQkKte0EwQUGhcnuM+DVjM1bDKvOET4dwgQr83SPK
         kjuVdhHmvh0Pg1MGGMUqJdaFrb7bqQiWIftIIZdF28C0RatXDl+hTZdrU7HXCtWAnYmQ
         2qEJP2T7j7GxzBiIbIEXllbBmjvrvUoMAgyfeYH81vx31nj40aqxainm3kjDNh6ynU4v
         P7QNgXoux2OTd3y45izsAfk47AhCLHFHSK5f4BkTI9uqAG6WDU19aNefWM6yytVBtoF+
         q61g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=WSivZMUu;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rbxhrwCjF5lXQADK7Tgs3Ry9N4wpiBrNsUlv/LKpsnw=;
        b=MOxMQXSFrcue63IKJPSfC77NR9HYZZJlLG63uTq8e5bJY3QMWArpjwyOTJT18iYsUp
         ufeLhcmKwsFcwLnqcC+EQWnpS/GK4Krkmjo79ZXYL7NN3F626YZCEcn45n/0a2jiI6Qc
         QM7GY1uxoQwgK2AcxBcXskR0MXw8suzPGXquJZ5oukZtPADdzevQfNgvWIjgAsurVdz1
         l23cuy4ubxCUJiAbezKC/1gP0+/NYoQE8KA7CmQ5+elIp4Je+f04K/Q+9N1fgaUkOMZC
         Z1dTrdC4PTexG0rZ26AfXuC0e0FTHfpHoaAPZOY6XMA6Qq7iCdmafXyseeDhDY1+6tbW
         2NiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rbxhrwCjF5lXQADK7Tgs3Ry9N4wpiBrNsUlv/LKpsnw=;
        b=TY7ec4STjrX5xQRXAwUQZ034kMUg5/LZHYcjGNgFsRRVK7m3bgp+KsQDbYwMIVVeau
         HChmN+5cVD2Cm6tsOLztrWQP2mar0jYaW0yTqNuYgUnY/199cyIFPeunW6ws6BSWub3m
         b269Lf8ar30s2nGLvEmJQfYtHJngbMAQMIpZE+S7GZe/DdY9kwatHIs5wv5nN1LszC/Z
         VQy1dZe4MHPeMJk5zfU7K+zgpmpRpV3LBUg+OX0MFEjT0fTsYkJiSv/LWtsjuHoGM8zI
         BVwAED3metl+t6rU31G/L9Ov7g3d5SDoqHYSyDdhmxINVwvOm/LgkMHZ0y9ECmYOLsGa
         7SZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MHldXlyc7Tgztp4xBdG+UcyZh9hFqtFOCl1s9CZBhIqtEHcH8
	UlQPkCkzg1S3Hf0XiHt+Rtw=
X-Google-Smtp-Source: ABdhPJznEqkBq8gQdQdf6KXjy2ULJvVfNEJRDWbPLlUk3SZpboQRWciraTwLOFc7UvxUIKPASqTalA==
X-Received: by 2002:a17:902:bf0c:b029:d8:86aa:eb4e with SMTP id bi12-20020a170902bf0cb02900d886aaeb4emr8394157plb.82.1605093192183;
        Wed, 11 Nov 2020 03:13:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5621:: with SMTP id k33ls1982084pgb.2.gmail; Wed, 11 Nov
 2020 03:13:11 -0800 (PST)
X-Received: by 2002:a62:32c5:0:b029:158:7361:58d3 with SMTP id y188-20020a6232c50000b0290158736158d3mr22930207pfy.75.1605093191496;
        Wed, 11 Nov 2020 03:13:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605093191; cv=none;
        d=google.com; s=arc-20160816;
        b=zVwWQShSUG5NcDxvpzaR+iy2fIPDvcUBgVzsgFaTu2W2UnEtOEzNf+a0sYyit0NwbA
         xCDZLm8uH0Prf33/1kio7zbEtwa9EvhLFcPNBytnKBOhiIaCflryIp0fAgBKPu6N2q2i
         NSjM7KDvLcS4Uf5iJafPL2ZpPbhQWyfNqcmkt9aPDUg2G/OGSLCDANEpT0GbGpG77DTy
         SE34QnKKrdxbWQB0TiRQCibgF1ehuKQhA13sO7wQGrBnCRrKhuEZINB2B64T5N8PMiBW
         GXFFQZxQn//2QswsJAhk3MnzNpuBqPF/whuSs2m9ZgYjSmobC0DWIp1+/zlBRMxMXDz0
         mO3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=7fX0wCRD+z6b4405sfGPd1LyAHgmfBmk9+KaubkLG/Y=;
        b=UTM+p8Xtnd45WDdRRtraOQfNefwG+54mmo6kS5of8uYEq0wqsSOnXXobZBNSutE8Ig
         Qt2XDQnkNY36qRADZDlOvloEL/h9PPs3UCV+LU8rzum2XZVbLAyzZ+zvGz7HAAAr2IHG
         K8ha+b4A+zwkTh3888S91fxmalFKQZ2pmNu56xkdBihWI4mddhVKx4cZ7jnpbwbs3nGR
         YyyJMUWqULZ/iyrIlRjj/vaau6pywYg4fqX+2KyxSeMnb/CZG/6hK+Gk2NzMvCM1+NYS
         xHukfodMjLh1fmJJYLYVMhX87xOYDgqoPwgOgaGvCLJWR/SUs2knMai1v9zqPcBdGRWM
         ct6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=WSivZMUu;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id f189si103642pgc.4.2020.11.11.03.13.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2020 03:13:11 -0800 (PST)
Received-SPF: pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4CWMXV5mSTz9sSs;
	Wed, 11 Nov 2020 22:12:58 +1100 (AEDT)
Date: Wed, 11 Nov 2020 22:12:54 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Christoph Hellwig <hch@lst.de>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>, Nick Desaulniers
 <ndesaulniers@google.com>, akpm@linux-foundation.org,
 dan.j.williams@intel.com, daniel@ffwll.ch, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-nvdimm@lists.01.org, Heiko Carstens
 <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 clang-built-linux@googlegroups.com, Linux-Next Mailing List
 <linux-next@vger.kernel.org>
Subject: Re: [PATCH 2/2] mm: simplify follow_pte{,pmd}
Message-ID: <20201111221254.7f6a3658@canb.auug.org.au>
In-Reply-To: <20201111082842.GA23677@lst.de>
References: <20201029101432.47011-3-hch@lst.de>
	<20201111022122.1039505-1-ndesaulniers@google.com>
	<20201111081800.GA23492@lst.de>
	<673267d5-93f5-7278-7a9d-a7b35ede6d48@de.ibm.com>
	<20201111082842.GA23677@lst.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/Mc_NX=GVNozxrVPRgbb7NWp";
 protocol="application/pgp-signature"; micalg=pgp-sha256
X-Original-Sender: sfr@canb.auug.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@canb.auug.org.au header.s=201702 header.b=WSivZMUu;       spf=pass
 (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as
 permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
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

--Sig_/Mc_NX=GVNozxrVPRgbb7NWp
Content-Type: text/plain; charset="UTF-8"

Hi Christoph,

On Wed, 11 Nov 2020 09:28:42 +0100 Christoph Hellwig <hch@lst.de> wrote:
>
> On Wed, Nov 11, 2020 at 09:26:20AM +0100, Christian Borntraeger wrote:
> > 
> > On 11.11.20 09:18, Christoph Hellwig wrote:  
> > > On Tue, Nov 10, 2020 at 06:21:22PM -0800, Nick Desaulniers wrote:  
> > >> Sorry, I think this patch may be causing a regression for us for s390?
> > >> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/432129279#L768
> > >>
> > >> (via https://lore.kernel.org/linux-mm/20201029101432.47011-3-hch@lst.de)  
> > > 
> > > Hmm, the call to follow_pte_pmd in the s390 code does not actually exist
> > > in my tree.  
> > 
> > This is a mid-air collision in linux-next between
> > 
> > b2ff5796a934 ("mm: simplify follow_pte{,pmd}")
> > a67a88b0b8de ("s390/pci: remove races against pte updates")  
> 
> Ah.  The fixup is trivial: just s/follow_pte_pmd/follow_pte/.

ok, so tomorrow I will add the following to the merge of the
akpm-current tree:

From: Stephen Rothwell <sfr@canb.auug.org.au>
Date: Wed, 11 Nov 2020 22:08:32 +1100
Subject: [PATCH] merge fix for "s390/pci: remove races against pte updates"

Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
---
 arch/s390/pci/pci_mmio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/s390/pci/pci_mmio.c b/arch/s390/pci/pci_mmio.c
index 1a6adbc68ee8..4a4993837413 100644
--- a/arch/s390/pci/pci_mmio.c
+++ b/arch/s390/pci/pci_mmio.c
@@ -173,7 +173,7 @@ SYSCALL_DEFINE3(s390_pci_mmio_write, unsigned long, mmio_addr,
 	if (!(vma->vm_flags & VM_WRITE))
 		goto out_unlock_mmap;
 
-	ret = follow_pte_pmd(vma->vm_mm, mmio_addr, NULL, &ptep, NULL, &ptl);
+	ret = follow_pte(vma->vm_mm, mmio_addr, NULL, &ptep, NULL, &ptl);
 	if (ret)
 		goto out_unlock_mmap;
 
@@ -317,7 +317,7 @@ SYSCALL_DEFINE3(s390_pci_mmio_read, unsigned long, mmio_addr,
 	if (!(vma->vm_flags & VM_WRITE))
 		goto out_unlock_mmap;
 
-	ret = follow_pte_pmd(vma->vm_mm, mmio_addr, NULL, &ptep, NULL, &ptl);
+	ret = follow_pte(vma->vm_mm, mmio_addr, NULL, &ptep, NULL, &ptl);
 	if (ret)
 		goto out_unlock_mmap;
 
-- 
2.29.2

-- 
Cheers,
Stephen Rothwell

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201111221254.7f6a3658%40canb.auug.org.au.

--Sig_/Mc_NX=GVNozxrVPRgbb7NWp
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl+rxzYACgkQAVBC80lX
0GzxoggAnTSbP2MvHm/AvrWkgYxvOlLSLXdQ/ImkKzdhpKhThkA1ncXWZFIvTgHc
46Y9TwSWR1HQOm/f/jyDe0qAIJP0857bxOHXTlFvY/3FSDv+WZc/2pSf1v5zAZnG
edhdutlXgBgCqwhnux5ooDQUqwjwqiom+evJLaLtWzRAopB3QoLWA4vjk3KQ4HPa
Z30h1i+dcqrXCDfbELftpAIDBZ7S0OWZakJzDPWKAYHlz4cbV/BhkDRf9rpb0i+I
c/tpAnopxEVSWx1JCooiR7ZC2y/kXNl18K+Y83xy8bJdAmaR1jCSqlZsHDdBnpU3
k/JOL0denkdXvrOMB7V3apBHpRJ8iQ==
=AA7r
-----END PGP SIGNATURE-----

--Sig_/Mc_NX=GVNozxrVPRgbb7NWp--
