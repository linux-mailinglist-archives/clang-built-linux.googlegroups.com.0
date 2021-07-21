Return-Path: <clang-built-linux+bncBD7YZQWS6IOBBGVN4KDQMGQECN2PKNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFAF3D1965
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 23:50:19 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id q6-20020a05620a05a6b02903b8bd8b612esf2605247qkq.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 14:50:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626904218; cv=pass;
        d=google.com; s=arc-20160816;
        b=G2OYTzBe9BtveR6KsGj72uknD4G6XqJwogSVEMGMNZp3M7+oiSo7o0x3em7/A5FTRA
         1mEGn/w0lHMzsRtB3gyQot3PgYh8QhWKpRf/lllE/n0mT9BO7muZUGtEuh3Z3ANgZZ8E
         hler+EcYg8HoA5FNTARER2LZqQz8lCkiyLriklzKJ7TVL3QOdreReIVJoPbGjQJZ3Uig
         +MEx+dc0D2PffZw97sC5pu+ZIMurkz4sZSX6v3hVc7lY/ITPxruUYDnT4zD3wIZ2vmSc
         aiZ7uqVpQYASqx0jE6CZTG3tFFACcHjf0TQRJlXAH4vsdsDlWqaf/pcZUqhJ+T//d8Xs
         daWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xz65SibjwTXD7+YxIi+hgodosjC9g5eZJHL30Ack010=;
        b=hCLo+TcjyxZRKYNgkQyNUWHtaYfCMz0xr25zLtq/ihEQ4f0d3eUNa9FGmK2fdhrBVV
         Nttl/AleV3VRbabsam7+2e0W4PjK/mmvXhVr2e/3OhNkFxwTqAvc4dAVOFWbqkojoXdA
         GE+k5tCDFFcc+6UIbiYm6hdOcXTF1G8Uhj9vfmWZEnyxCNBp0cFTIVCzm+GRJu0TTydm
         VteLI0+u12jP03lxmaPwnBmSNv7MNmneyolyKB3zOcP+wuh+maDKhGWHXnQsiGMAxAjO
         pTnezgIVM5tqLrCRu2/a5rImSAcyic5RvDB9YQY7gV2EWHq/MQ/wpgqBkeYVZwucJquv
         etUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YJgSCIEh;
       spf=pass (google.com: domain of peterx@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=peterx@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xz65SibjwTXD7+YxIi+hgodosjC9g5eZJHL30Ack010=;
        b=iNHGnPCCMrfxiKGqzZADUALI62Fd+wQjStdrd5wH3JujvfpnXsqVeoFx2hQuP6LpDT
         V4HgR3p4qt6s9mxqzCCyn2XvOiLTBxOM8AdRDBAcjff5PDjUgokgaE1hTaWZvt0hy50D
         sJmB1WMbZw+Anm3gLHDYZfLvvXwwgXYAPCCBSriGeZKcMA6JS71LIlmIgcRRrSqwckke
         MANltFKu4nEX5E2MyVO5Vi6uq1OZjpKO7DBaeNKoXXt63YjxRpvlwgzuhfoNUN46JxMq
         Dw5S/ljq5EQ/LXsvLkrkMSuO5AWttLztQsi+SsWKOuvl8senJ2w1a5uwEFDsPboOAec0
         olkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xz65SibjwTXD7+YxIi+hgodosjC9g5eZJHL30Ack010=;
        b=LEUjXwnMAbe+9thQas1idA+YdXm3DN/IXlzGmSUnerMox7no5sseezDGDyVcCkGonF
         X4H6+Qkwr6yh4tPjZgVJeraE5tlgCxWP5HRbOAcnkJU7N0PAYaDa13aGoCczXv6VFEgf
         tjSwE44yq0W78GHgbz2wm4q0OCJ7QBZ74+drsqT2NAhjqlyEZK4I3m4hJ9hdKUfvzpjG
         Cu+GBu60jRPcd8dvRWk0LxiehERVVndDDlyPkW5ziCWFItdpfhZc2L5cS+sOmimcWk/U
         A0aHX6Bc0bBmAV/ZZOCCWHx5qfsYdKeucTvvD3Ysl36/aulkhRdsZlX3PGQ+GioRBCkO
         a2Tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533AQuwq1BvrOlXBkU1vLhfkzYDQm/ixk4i8dnzLfiF9b02P1diB
	23FhGkjx8UR8BymaiciiJXg=
X-Google-Smtp-Source: ABdhPJwpewUy9LDuegjO1B7n4PD4IPTBkNR1RKWYPiEYga8KlHjwO17xO+Z7YEUHcDlwbgrVKSTILg==
X-Received: by 2002:a05:622a:1350:: with SMTP id w16mr19564781qtk.182.1626904218426;
        Wed, 21 Jul 2021 14:50:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4cc8:: with SMTP id l8ls1991226qtv.5.gmail; Wed, 21 Jul
 2021 14:50:17 -0700 (PDT)
X-Received: by 2002:ac8:528f:: with SMTP id s15mr32228701qtn.282.1626904217871;
        Wed, 21 Jul 2021 14:50:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626904217; cv=none;
        d=google.com; s=arc-20160816;
        b=W9YcbhwhH9HIY1mvmfKNXQeHzpfd1kLAU30nOf0wpUZRgKuxaBls5avGtqxdq0dAAs
         q73lCaRqH0yvVI0Hs4jHkD9xjS775H/jrRJ0Y/Ok1gPy63UZyN+HbVBO/GTgVVo2Hetm
         OXp7vyE3YqFI/tPNJQW8Vqyr7Hj/eB56qeEqxe6w5bCWuxCmFsNN1Wi/1VaLuCe8WEf4
         vzZoc5Kn1ilx9UG2LyKuIiQxN1rW/cxF5oqBRfoLH0MwShQuvm65bC5UEEDy1NazFrSQ
         cievSizgDxA8jvqOtRDVbcU/3xIZq/HDAPozcGGDy6HmO3yIwn/YHrz8X4y7nftrFM5S
         azIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mPmN8sJkfymkPUXPwPH3Wq9PCWu/VANbjmJ5RH7HOTE=;
        b=UGfHVd7rXgDjxqt5LouKIfQCjQoOqzrXvFEOLvTCLcYqer25xknXBTdTAHybmc/rLc
         GOyy015UKgjM50PyKjySfSoFsU2SGePCjW54RBRHWL2lS7D/y/gt1E3ruMYSC+sEjbhU
         zzSyPSFY2D88lnl/CvxPNWyRm5utLZTHVee2z+JKPmOrX4FSa8XYZ9iw6pzS8iXsz9Fa
         yJelgNE9kY2wem+pUwiu5TvqXLE2LlmSzmBPHzcKh91qoO4Yrbr6FrV1z6Xyw1IeBvto
         ba8eI7A6hiYT5/cqB44OlqJzyGJ1oYCrYU68p3KtwmKuYZHsDZKODLkWBx8NmuolxfRA
         xVxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YJgSCIEh;
       spf=pass (google.com: domain of peterx@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=peterx@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id bi21si857199qkb.3.2021.07.21.14.50.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Jul 2021 14:50:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of peterx@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-151-nHnfXQwWOyK4u7xCYQXZpA-1; Wed, 21 Jul 2021 17:50:14 -0400
X-MC-Unique: nHnfXQwWOyK4u7xCYQXZpA-1
Received: by mail-qt1-f200.google.com with SMTP id t6-20020ac80dc60000b029024e988e8277so2252432qti.23
        for <clang-built-linux@googlegroups.com>; Wed, 21 Jul 2021 14:50:14 -0700 (PDT)
X-Received: by 2002:a05:620a:e14:: with SMTP id y20mr36949603qkm.335.1626904213902;
        Wed, 21 Jul 2021 14:50:13 -0700 (PDT)
X-Received: by 2002:a05:620a:e14:: with SMTP id y20mr36949586qkm.335.1626904213646;
        Wed, 21 Jul 2021 14:50:13 -0700 (PDT)
Received: from t490s (bras-base-toroon474qw-grc-65-184-144-111-238.dsl.bell.ca. [184.144.111.238])
        by smtp.gmail.com with ESMTPSA id c16sm9607474qtv.32.2021.07.21.14.50.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jul 2021 14:50:12 -0700 (PDT)
Date: Wed, 21 Jul 2021 17:50:11 -0400
From: Peter Xu <peterx@redhat.com>
To: kernel test robot <lkp@intel.com>
Cc: linux-kernel@vger.kernel.org, linux-mm@kvack.org,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Axel Rasmussen <axelrasmussen@google.com>,
	Nadav Amit <nadav.amit@gmail.com>,
	Jerome Glisse <jglisse@redhat.com>,
	"Kirill A . Shutemov" <kirill@shutemov.name>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Alistair Popple <apopple@nvidia.com>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v5 17/26] hugetlb/userfaultfd: Hook page faults for uffd
 write protection
Message-ID: <YPiWk1ip4rWFe/eN@t490s>
References: <20210715201622.211762-1-peterx@redhat.com>
 <202107202342.QQMFPRAI-lkp@intel.com>
MIME-Version: 1.0
In-Reply-To: <202107202342.QQMFPRAI-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: peterx@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=YJgSCIEh;
       spf=pass (google.com: domain of peterx@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=peterx@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Jul 20, 2021 at 11:37:36PM +0800, kernel test robot wrote:
> config: s390-randconfig-r023-20210716 (attached as .config)

[...]

> >> mm/hugetlb.c:5063:29: error: implicit declaration of function 'huge_pte_uffd_wp' [-Werror,-Wimplicit-function-declaration]
>            if (userfaultfd_wp(vma) && huge_pte_uffd_wp(huge_ptep_get(ptep)) &&
>                                       ^
>    12 warnings and 1 error generated.

I remember I raised this question once on why s390 redefines a lot of huge pte
operations on its own even if they're defined the same in generic hugetlb.h..
I think there was a plan to rework that but definitely not landed yet.

Will sqaush below into the patch "mm/hugetlb: Introduce huge pte version of
uffd-wp helpers":

---8<---
diff --git a/arch/s390/include/asm/hugetlb.h b/arch/s390/include/asm/hugetlb.h
index 60f9241e5e4a..19c4b4431d27 100644
--- a/arch/s390/include/asm/hugetlb.h
+++ b/arch/s390/include/asm/hugetlb.h
@@ -115,6 +115,21 @@ static inline pte_t huge_pte_modify(pte_t pte, pgprot_t newprot)
        return pte_modify(pte, newprot);
 }
 
+static inline pte_t huge_pte_mkuffd_wp(pte_t pte)
+{
+       return pte;
+}
+
+static inline pte_t huge_pte_clear_uffd_wp(pte_t pte)
+{
+       return pte;
+}
+
+static inline int huge_pte_uffd_wp(pte_t pte)
+{
+       return 0;
+}
+
 static inline bool gigantic_page_runtime_supported(void)
 {
        return true;
---8<---

Thanks,

-- 
Peter Xu

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YPiWk1ip4rWFe/eN%40t490s.
