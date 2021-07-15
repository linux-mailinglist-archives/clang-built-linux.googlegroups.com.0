Return-Path: <clang-built-linux+bncBD7YZQWS6IOBBA4HYKDQMGQE4OUSG5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C96813CA75C
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 20:50:44 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id o11-20020a056902110bb029055b266be219sf9013554ybu.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 11:50:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626375044; cv=pass;
        d=google.com; s=arc-20160816;
        b=wwjas8cwlBheEkAiXztc2pKTVBPAXuhk1hn3VyLva7IiHm/WsN+tIWZLwqapAT4b2/
         ntfwlvTMpqRqKpS0G8hDvBM0QJk0t1s6T/D1MuBHpWomNeWtDRxarZC5Q6OTImX+EvII
         +3Q3wMMTM0UHnLDhah6fP7Uwzb0FrCC3+Hzv63FMkftSRVcOaU0otx92xjBtaFuZxRDW
         XuE/f2BGL7qfACrbT99Wn/530hqFQZRqmcSlRGTr0h6C7rP2gSUaXwTp28Rs6nmFAf/g
         sFL3mnLSB16FPOglsL4VqGUDKUpX6H/9ON/9VRFgNVgoRuS8qTdEebaZFQIBlpUBEwXx
         WCUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=I2Jg8J8vnGy61eXOAIafyITKfqSM2oTnErkIZCjdtvE=;
        b=Vrv6sIDk3eERAYIq9X+Qyc5QjbFa/R+C9wzxaAs9FWbW+OXJrblaEinqmNHHEFTdIt
         qvnB3vcNsWw03Q9Zgk7BYOcsXwsFs9YsQwUzjcF04Xcu0RudR0rxB4WOID8RaHIIBhHg
         ivT+woLKp19NPCiFncT8rGh4jGy/cj8LjxpZR/f4VuYL7sl+ozuVsvlLLYpxeYufkNJG
         GkuV7KmmCrbpmSYmW6MOs++XuYf3HNpfgKjrwmipNG7vV7rYbP4oGzgnO8ViCZd15Wh5
         PGpoOgB17kx5IlNlakAbJAnBsE4v4HFlDkQl+U1fQsgS9kG7Oo5THPPeGCX+fhx/3/+e
         xurw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=brJNRzkW;
       spf=pass (google.com: domain of peterx@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=peterx@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I2Jg8J8vnGy61eXOAIafyITKfqSM2oTnErkIZCjdtvE=;
        b=DrDQ8jRuuC7gCdPEidLgT5NtzTrTGQZ6Gxy4zqmRNtz2TUCALJdZvqBTsRpJD/8qTD
         M9z44qkbb68aZR1jPh4qg+ABdMXN/ZWd0VsAnDt8cRiefHQQpX0CbzSfNd/y3qHjmS7e
         Z04P67wlEuhn4Q+XFalwHrBaXXYapgvn5d+USf5iE73126Jx1lr01kwbqyAuwHfBjCxQ
         by52s5YY7JJWp/S4d07BTEdKtuIYqP8Y45GyPuIe//uVualmDtmCT6cU9yYn2a11MgpV
         kVicic2rwQx1Nnr+WSILWytnAAjx1H3fqlJmjGGxWffqHEtn45VgfQqiTGYcF2Ip5qO8
         D1gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I2Jg8J8vnGy61eXOAIafyITKfqSM2oTnErkIZCjdtvE=;
        b=EeSnwJgDN1x7xgPbhMk8G7VemIB3fW90P5ErTRVUWjn3PZxhi2iYrber51D4ZSYT54
         Gv7yWAUjxG8uIU0YfSNGYE8VhrVP50wxPnUl4xV0LfWjZF1lOxgEYpEETlxlbh14nyxO
         oRTca6+VDT4DPW0WOxQc4ey7RZfsWFcpDQVO5EOPtgBlEj2NFNOfzBS4uf5S2fbWn3Tt
         vDo85eiHvFC2+zHvH02WhJyqhj7OkXs8Y9m7lSj+ilkG7ETnq0+zwj+WXfHBpIELsVUi
         zjwtEqnbqUoyERpJv+1epOTe7jbk3rHZQvT/HJ2r8qd7oPf00wD6Z/00y5jDuTAGSAyW
         SHbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TroZ2X+u16476zPXjFnZAMYqKw2DDxf87Unhqc8+6j8dz/H8W
	17b7qL3ZTwk2feJVaM/o7Mo=
X-Google-Smtp-Source: ABdhPJxbUfdQpC39q0JjlA6WenWuohjCf/3L+N9E9EFT9lyJetk3/8AfYnMUvC1JuaOtn0YicTuRbw==
X-Received: by 2002:a25:820a:: with SMTP id q10mr7203672ybk.2.1626375043930;
        Thu, 15 Jul 2021 11:50:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4053:: with SMTP id n80ls4543418yba.11.gmail; Thu, 15
 Jul 2021 11:50:43 -0700 (PDT)
X-Received: by 2002:a25:9d0f:: with SMTP id i15mr7169977ybp.311.1626375043500;
        Thu, 15 Jul 2021 11:50:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626375043; cv=none;
        d=google.com; s=arc-20160816;
        b=Mb/B9X71O3afNL/wpAfdfYsb2/uUkbpK5i8II+gKH9so7KxWQ2EjtnkmYQ6ClFAgMc
         ZfkA728PW/pcZW3CM027sE8g+c+c5EdTh8QqyOx1XXb4E3T65TKZBu0KLrhfXFvGnkNV
         kZsDwi7wPT3OsBxw0Gd9KbHc6lNfHdACqOHKe1Yu83Rln0/rr74hhCeBpzeMmzzJjVmQ
         lvJ2HBO2Y69TxzGUXjSyUaGMOmDIPF/qZt8t7RjZ53nJ10Z0Hymx4rgDSHZij/esQ4jB
         f+ezCv9qvUzZAaIE89qS4L7pq3qNl8riH9XRKZX1Ou26BrKvB41mwbct7R1ixnR6q+yX
         bjFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ajo5pEoABKRkdq+bnCfkdDE2HRwtDgm2wvZbZ9VLVZ8=;
        b=B1HqLio5+4WTX+58LsF/z70g8cV0lz92mXnCv2c4t9ffBQzTSlZ/4rYm5pU1wTuMPM
         ONY/uKUN5KdqMrzDToE1thl4khchQa//WAbqyHnrH+vDX8xbe8aPL9kq1gOEVZr/XENV
         48LthCFeJlAr0VVbx8/aIt+gYX8jTd5sUO5ZoNJa2ZOVyuYgg8qcFESrKH7HF0PKTJoz
         HTQp7LsU56wvebOXS5J2/WuRLkx4wUb6zCuSarpNYDf8Ti6cv5PYTLs02h0VMDw4Fg3P
         EFfr/8ZHFS4UysokqfzNDBEsR7XS0Vb+HAN1ivTpqCUHFbNQmwoZCBgKXLKl0xcrUssK
         hKKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=brJNRzkW;
       spf=pass (google.com: domain of peterx@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=peterx@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id r3si956408ybc.1.2021.07.15.11.50.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Jul 2021 11:50:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of peterx@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-540-DF36ze4UOwWoXyDzqEnwKw-1; Thu, 15 Jul 2021 14:50:35 -0400
X-MC-Unique: DF36ze4UOwWoXyDzqEnwKw-1
Received: by mail-qv1-f70.google.com with SMTP id ca6-20020ad456060000b02902ea7953f97fso4789636qvb.22
        for <clang-built-linux@googlegroups.com>; Thu, 15 Jul 2021 11:50:35 -0700 (PDT)
X-Received: by 2002:a37:6516:: with SMTP id z22mr5535729qkb.203.1626375035101;
        Thu, 15 Jul 2021 11:50:35 -0700 (PDT)
X-Received: by 2002:a37:6516:: with SMTP id z22mr5535708qkb.203.1626375034888;
        Thu, 15 Jul 2021 11:50:34 -0700 (PDT)
Received: from t490s (bras-base-toroon474qw-grc-65-184-144-111-238.dsl.bell.ca. [184.144.111.238])
        by smtp.gmail.com with ESMTPSA id o10sm2281394qtv.62.2021.07.15.11.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jul 2021 11:50:34 -0700 (PDT)
Date: Thu, 15 Jul 2021 14:50:33 -0400
From: Peter Xu <peterx@redhat.com>
To: kernel test robot <lkp@intel.com>
Cc: linux-kernel@vger.kernel.org, linux-mm@kvack.org,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Matthew Wilcox <willy@infradead.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Axel Rasmussen <axelrasmussen@google.com>,
	Nadav Amit <nadav.amit@gmail.com>,
	Jerome Glisse <jglisse@redhat.com>
Subject: Re: [PATCH v4 06/26] shmem/userfaultfd: Handle uffd-wp special pte
 in page fault handler
Message-ID: <YPCDeYZxaeV+N5m/@t490s>
References: <20210714222117.47648-7-peterx@redhat.com>
 <202107151452.ClaDCF2a-lkp@intel.com>
MIME-Version: 1.0
In-Reply-To: <202107151452.ClaDCF2a-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: peterx@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=brJNRzkW;
       spf=pass (google.com: domain of peterx@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=peterx@redhat.com;
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

On Thu, Jul 15, 2021 at 02:20:21PM +0800, kernel test robot wrote:
> Hi Peter,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on linus/master]
> [also build test ERROR on v5.14-rc1 next-20210714]
> [cannot apply to hnaz-linux-mm/master asm-generic/master linux/master]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Peter-Xu/userfaultfd-wp-Support-shmem-and-hugetlbfs/20210715-062718
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 8096acd7442e613fad0354fc8dfdb2003cceea0b
> config: x86_64-randconfig-r021-20210714 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 0e49c54a8cbd3e779e5526a5888c683c01cc3c50)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/8b3e70f40b8333a803e642ed5c8cce738985881c
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Peter-Xu/userfaultfd-wp-Support-shmem-and-hugetlbfs/20210715-062718
>         git checkout 8b3e70f40b8333a803e642ed5c8cce738985881c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> mm/memory.c:4167:6: error: implicit declaration of function 'uffd_disable_fault_around' [-Werror,-Wimplicit-function-declaration]
>            if (uffd_disable_fault_around(vmf->vma))
>                ^
>    1 error generated.
> 
> 
> vim +/uffd_disable_fault_around +4167 mm/memory.c
> 
>   4159	
>   4160	/* Return true if we should do read fault-around, false otherwise */
>   4161	static inline bool should_fault_around(struct vm_fault *vmf)
>   4162	{
>   4163		/* No ->map_pages?  No way to fault around... */
>   4164		if (!vmf->vma->vm_ops->map_pages)
>   4165			return false;
>   4166	
> > 4167		if (uffd_disable_fault_around(vmf->vma))
>   4168			return false;
>   4169	
>   4170		return fault_around_bytes >> PAGE_SHIFT > 1;
>   4171	}
>   4172	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Will squash this into the patch:

---8<---
diff --git a/include/linux/userfaultfd_k.h b/include/linux/userfaultfd_k.h
index c4228acd1d80..4382240de7c3 100644
--- a/include/linux/userfaultfd_k.h
+++ b/include/linux/userfaultfd_k.h
@@ -283,6 +283,11 @@ static inline bool pte_swp_uffd_wp_special(pte_t pte)
        return false;
 }
 
+static inline bool uffd_disable_fault_around(struct vm_area_struct *vma)
+{
+       return false;
+}
+
 #endif /* CONFIG_USERFAULTFD */
 
 #endif /* _LINUX_USERFAULTFD_K_H */
---8<---

Thanks,

-- 
Peter Xu

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YPCDeYZxaeV%2BN5m/%40t490s.
