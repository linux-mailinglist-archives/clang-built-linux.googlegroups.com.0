Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBY55T2MAMGQEGDJRWJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-x1140.google.com (mail-yw1-x1140.google.com [IPv6:2607:f8b0:4864:20::1140])
	by mail.lfdr.de (Postfix) with ESMTPS id BEED95A1663
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Aug 2022 18:10:12 +0200 (CEST)
Received: by mail-yw1-x1140.google.com with SMTP id 00721157ae682-337ed9110c2sf307849427b3.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Aug 2022 09:10:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661443811; cv=pass;
        d=google.com; s=arc-20160816;
        b=UtScLeNFTdMQ8SzxISvdjhHE/ndIQjgDJDd0SGwhr+vetdpY1U4ubna8jyajxzSsiq
         VFWLc4sr1qwx9lLG9eHkpWTxG/W7VAuKuEufEufsIWv00+TD2+OE2mYPB/sZPrblMxu+
         GyHm1H8/q6IOD8/Qj+v7OthmhVjL//Mz0hWnk5/kqK/963UExIWmCLVADkIJsRuOGUJc
         Bm1ZVWQ+z22QEBZgPTVDo0hIEt0HA/riELVsJJ7trfdOZjE1pNq63cAhzDKLnqj7UkQA
         dwdWbhwfxU3shUoOpOKXeAoU1pFtBoXhWqhyYQMVmS1NkkYbTtY6d9KxMxdVmqiH3kEU
         fxAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=IpUO2duE19SHyG4QrZE8zFmWzusMGsHbCQvo2Uj8VQo=;
        b=Hi0Ff0ajllAswS5fsWymfvMKlBAeqMw4kx/w0vpJlVgIrKAejKkxD/V3f5/aob4DsY
         v9bB0RaigdJWR+23XU0PGnCv6WBUFVFaP6YYtz9xN85DnAPMKom7ez41uj4Lxo6KYjPx
         vD8m5Lc12ZAAZjjQzh8VNLzOEtqndlw3iQFb+tpUY+dwSmU4vDRZRQKjSOEZja8u0Lcv
         XffPNajeFpQMWpsRlXR0Q10+zdFyvjRrNzjtMRoIFMxxROqP/0Ieu6dJkOQfbfp7u7RO
         ocqtZeWJqKABK87URkgH/zNO2ueVng+DyzpyijjF5FLCoSk4qI8oMqQzoelIogubxXug
         T5bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aaMwx8JK;
       spf=pass (google.com: domain of nathan@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=IpUO2duE19SHyG4QrZE8zFmWzusMGsHbCQvo2Uj8VQo=;
        b=Bht91gvl83lTPdcYUirQdtcQMlOdQgt7p8yGp7t1bgEFakpoJStcQeQ5Zk0ZGNNTec
         GpluFFusNfH9cGlCluJ6DTYBQWHGe79qQ89x0cmtwueSRYp4/9n94u9OJGHe95Ra/SJt
         YI6ywTp8aNoGfOXH4I3UKWmpZmIvo8dOkq/PlQ5LqtWLGAdbV4RtcJ6499yG9qWHr1Wx
         S0XKXR4EkBUKwMXwvLyf2i0RdfjpBDFAtjwDR2Sq+G8O4xIXFN0xj/pDf77lv+22bhv6
         KifgqeOCe9zLT71MUy2RMR6no5cyLu5YqNMMyMuN5+PKjMzF/XfI/NtSS916DtQ77QkB
         Q5tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=IpUO2duE19SHyG4QrZE8zFmWzusMGsHbCQvo2Uj8VQo=;
        b=YrIXv2lvUGPY5bkYwzXmtRrBTab3ocHC32WFsIbAykEypcRlPj+o0nR8cpsi9V60fw
         Xed2ftwpncjqcAmENGOnlk6o+fUusF9GmI/41/VUxaaYJj0/FAO1YZgHbiQZGU0TqWJ7
         0G14ICokgqLMLyYbIjnlO/+Y3nISJ8vBjmXiE3CGw1CWRVW0Ln9dZCsC24bfXhhPP7On
         YIxT4qvwEK/HDtlKXRGw8jCz7x8oODocw1SdflLRTvB3z2ktMg2yl5a490X7MseZR/aW
         PSkWpF6dyZNG4WCl9uLyKk+XW1q+apOLOrJB8kj2nGHfBaRmFH/3s1pECMsNZn2xMTyL
         dWbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACgBeo0x9HtEntAkK0+sc0Ri2qRFHc2oV46eaDitQ16J3TFQYD1uX25G
	RJ1Zy9q/iXRr3xqfyHpBUAs=
X-Google-Smtp-Source: AA6agR7rQS8FT60HRwOvQhXXGcFla340Kia3FBBQdRsMZvb8DMWA0jlSZLjZYl2+06bhE/nrmR7PCA==
X-Received: by 2002:a05:6902:1248:b0:695:c05f:bd24 with SMTP id t8-20020a056902124800b00695c05fbd24mr4125001ybu.23.1661443811606;
        Thu, 25 Aug 2022 09:10:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:fa02:0:b0:31e:dfc9:3ae7 with SMTP id v2-20020a81fa02000000b0031edfc93ae7ls872799ywm.7.-pod-prod-gmail;
 Thu, 25 Aug 2022 09:10:11 -0700 (PDT)
X-Received: by 2002:a0d:ee01:0:b0:324:d943:19dc with SMTP id x1-20020a0dee01000000b00324d94319dcmr4350624ywe.325.1661443811011;
        Thu, 25 Aug 2022 09:10:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661443811; cv=none;
        d=google.com; s=arc-20160816;
        b=e4cfo6f78HZepFKugoBK8P8hyP0v+3oFKLiAZPduwNSNtJ4ffF4x7UeuhgfrtlFQKs
         WG+ZDIPC9vJzLVSiqlSWkTZW/HdSqL276LcLeP4m5IPjuuZyDRsp+ZCwSlaPFYsnGTaN
         21T1HbBsW3diQ9FMO9aRQFTEzhME5r3fBoUgFu5w0qGyVJgqkBSA3AF2Ut39v4tDEBln
         A/dMYnyPM/GSJGVyZ+2MW4N3pUvJVwscSPliPlqrJKrs+y2WVd3KRMWdP7WuR4zk315r
         BoXkHbVsySm/Xc9h18xxYPX2wGMSSsQUW/aYptlyL9eNRQ4xI/VS6u6szdDAD9imPTNm
         cRiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ms++I9boNJcp08ZZglr6Rl4X3DiiaQr4Ry77/khSHpI=;
        b=mAUkQVRTLIEpCu4oFxxU/kE0+Kj1wW0nAnvGBD4chJvbuvt8ijO4QmPXxNKJV3JAJC
         FhhjuL5UBmw+wuscOk62h3lqJLXCiI7Kpnbo720IOnYIGODWXsGL/OE7QfgsJhggnNok
         m/nhfozf5+k5vJM8cX9uXUCiy67gW9kpVtKQz8ruLaVsdlYPMZV9Pr0Msc22oaUKERzE
         PCynV60CjxVEhsYFQe8gjT79h8dH79vx/XJvNYy3xltJranc1icpMT6MB6H2MBysMVJR
         gfnJoPI8VtcEbuXNHVFd4/qJg8RU90rkDa1VRr6WI4yX5fF4Grogiovt2/xV3XY0Dnxn
         nRxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aaMwx8JK;
       spf=pass (google.com: domain of nathan@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id bw5-20020a05690c078500b0033dca312115si48397ywb.4.2022.08.25.09.10.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Aug 2022 09:10:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8197261B74;
	Thu, 25 Aug 2022 16:10:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC67DC433C1;
	Thu, 25 Aug 2022 16:10:08 +0000 (UTC)
Date: Thu, 25 Aug 2022 09:10:07 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Mike Kravetz <mike.kravetz@oracle.com>, linux-mm <linux-mm@kvack.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	open list <linux-kernel@vger.kernel.org>,
	regressions@lists.linux.dev,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Muchun Song <songmuchun@bytedance.com>,
	Andrea Arcangeli <aarcange@redhat.com>,
	"Aneesh Kumar K.V" <aneesh.kumar@linux.vnet.ibm.com>,
	Axel Rasmussen <axelrasmussen@google.com>,
	David Hildenbrand <david@redhat.com>,
	Davidlohr Bueso <dave@stgolabs.net>,
	James Houghton <jthoughton@google.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Miaohe Lin <linmiaohe@huawei.com>, Michal Hocko <mhocko@suse.com>,
	Mina Almasry <almasrymina@google.com>,
	Naoya Horiguchi <naoya.horiguchi@linux.dev>,
	Pasha Tatashin <pasha.tatashin@soleen.com>,
	Peter Xu <peterx@redhat.com>,
	Prakash Sangappa <prakash.sangappa@oracle.com>,
	llvm@lists.linux.dev
Subject: Re: [next] x86: fs/hugetlbfs/inode.c:673:16: error: variable
 'm_index' is uninitialized when used here [-Werror,-Wuninitialized]
Message-ID: <Ywee393cssPJ07Gr@dev-arch.thelio-3990X>
References: <CA+G9fYsHVdu0toduQqk6vsR8Z8mOVzZ9-_p3O5fjQ5mOpSxsDA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYsHVdu0toduQqk6vsR8Z8mOVzZ9-_p3O5fjQ5mOpSxsDA@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=aaMwx8JK;       spf=pass
 (google.com: domain of nathan@kernel.org designates 2604:1380:4641:c500::1 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Naresh,

On Thu, Aug 25, 2022 at 04:13:30PM +0530, Naresh Kamboju wrote:
> The x86_64 and i386 clang builds failed due to these warnings / errors
> on Linux next-20220825.
> 
> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
> 
> fs/hugetlbfs/inode.c:673:16: error: variable 'm_index' is
> uninitialized when used here [-Werror,-Wuninitialized]
>                                                 m_start, m_index, truncate_op);
>                                                          ^~~~~~~
> fs/hugetlbfs/inode.c:651:26: note: initialize the variable 'm_index'
> to silence this warning
>         pgoff_t m_start, m_index;
>                                 ^
>                                  = 0
> 1 error generated.

Thank you for the report! Commit fcc0d3d00d74 ("hugetlb: handle truncate
racing with page faults") introduced this warning; the Intel folks
caught this as well:

https://lore.kernel.org/202208251012.g1mOhhxy-lkp@intel.com/

As an aside, can you please update your contact for our mailing list to
llvm@lists.linux.dev? We do not use the Google Groups list anymore.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/Ywee393cssPJ07Gr%40dev-arch.thelio-3990X.
