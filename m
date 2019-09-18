Return-Path: <clang-built-linux+bncBCROLYV75ECRBZGKRLWAKGQEHNKYHXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DCBB6F05
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 23:45:10 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id t19sf823761pgh.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 14:45:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568843109; cv=pass;
        d=google.com; s=arc-20160816;
        b=cV3uUXww4IRzNHu/9f9syPEEYbUqcBu+ZE2x27UFX7c1CqTKrcKdwiSA+5/nQ97XY8
         tWqbyC7peWtOKazu/5Orawqb0DBc8xFnAbOAQqqr24/wCsHrwZx+DTgZ0jI0YQC3Iriz
         Bmpf+GAsV+qKILGMkXW2YmQGpXlDP3FL8NriXdIYxlupDSgER8mK9L/9CaNfVTnscVVa
         tPZLo159wv/7O7UxsnzQW8UCr3QoOIjZNTgGN6Pk3M1Pz4nIdpfZBJ6qHPdPoPRZQq6x
         ia4975J5l3oBIitWM6Fla53gG+04/uW5TUcLKlnxur6gmrHhVDropKNmxuvmxmUhFMWk
         xveg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=cFnTCGEDfy3BSnbm0Bt0i8G1dCcxLL6LVAsNolOtzQs=;
        b=Nru+rdpeKoJpPgW8CshgQ0pcGmHk0VXp0VFK1q223huSQ99Dnc9CK1jF+NNtnk8bpQ
         2PxTMhI2dqDgUOR9Hr0vZ8KUk6MmIWPp37GG0kVoQHKsHvmBBxmmZz0NErObuqNFUMaA
         3RtdECgll4qikU1A3h6hp0IoJLnUbub21nbE2b8lMmgpXMp8aEfn81IdpSD3L7Xd8T3J
         vMjclTW3v253IkWLOwie3VVL6oCs9rRYUfrgGaBvRIlDlpvRoKXlnj2XPdLloXXaHt1v
         LAGc61EFWTzvZCSQQN7yUD4gklaRn8wYbjhnWQ0tvJUrll5ujYEIhnv1H65jxF0ViCwA
         u5sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ira.weiny@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=ira.weiny@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cFnTCGEDfy3BSnbm0Bt0i8G1dCcxLL6LVAsNolOtzQs=;
        b=nkDPyqaM4Cit9UA3+TdnGVzW/YIbUhbdf42xzs6ad+rP+BV6gzaei20ZUo1A0Jdt/l
         8AaNA2XQuz/pHjlBqCD2QRounC+prTuJa951bcKSDKhFA+uVUsBN6g/hfFZFhCL0jcD8
         s98DR2TQLYCUCsfChmdXlrmtZvBnFkAU9buDeRDwYXpLDY7mbsWcwSeP6eNYFlVQdCoI
         GhaMfdkMJt+N/wyjsRSrRqfcBj9j0wM/0rBlEtQh9GAJ+t3ydGwINUxDpjCMsbSvWFgg
         1zoBhKpnFBsQdZ/POn8GWauaVKRuJUK0GD6lH1yZYoDB0g2xOHfn5Z5Ktuwkaq0Bkcvs
         sQGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cFnTCGEDfy3BSnbm0Bt0i8G1dCcxLL6LVAsNolOtzQs=;
        b=AtcX+lwMJG0HeqWZpAU3Y4oJr/ooxqkef8/VCgcWb6fGZuvAFJmuxJuEOPm0iuyKdp
         /t9P1u8SWSjNcMlbqCp2mHwigSjzC6O4Iw8cKCA4Qs6aycaYib+nfyww2oz/FAJRooll
         UWug41WS/R3QOTy9qY7qx1mMUQk3WpOrRqzVeSLEsU2gYkqpDeClNBKUsk/AszwUYEvO
         DqGOvJAJDNV2151JTEFCnH7n+6z5RkFbIVWZ8U2mV9kM4kuIyOqpkhHj1L6NNVtb0J6C
         JnW2oLodL75yZdpu8p9iMl/22AsYap61tbo6k/lTMwE7YKRVz0J+rTS+CS9vDCfgKKnF
         RPzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWmL9TEr+3hbEjRusB1SKh3ILIAlZTLOn68FVpzubKdgmp627pg
	hCtlnWdgfrrKOnr63UB42bU=
X-Google-Smtp-Source: APXvYqx3EZXRsnP54Not9zEJN1fjlPFK5Kw2gcZ4Pkr26iUjZ92lskgMezZMViKMeXCfJN3QOUjJhw==
X-Received: by 2002:a65:6802:: with SMTP id l2mr5912253pgt.33.1568843108915;
        Wed, 18 Sep 2019 14:45:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1359:: with SMTP id 25ls197790pgt.7.gmail; Wed, 18 Sep
 2019 14:45:08 -0700 (PDT)
X-Received: by 2002:a62:5884:: with SMTP id m126mr6529160pfb.169.1568843108543;
        Wed, 18 Sep 2019 14:45:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568843108; cv=none;
        d=google.com; s=arc-20160816;
        b=N8P7rKXvQd4I5q+g0/SPnEPDqG4mxbpgIbSXbgteY/MD8pITdm2Cdgp2P+/dga08cS
         QOhyHee0RPVKToIkzdIGOeD56ulRpq88idArG418HE/zXQGAO573Ia7GPH/Z2aHALUEU
         pqYM8vkJFJXOCojgXYFSs/LjuJqjq6hGXzN2EGxpG/DcASDVsx5kZNOXpMIpRKf8K6x6
         3glC6JOo9j2g0NgXqtwwND3f7FKSdep7lep5dBA8I5H/pt820ZmSk2Nyp0PDddRwhsX7
         qChwbaboQeQKE5SN7EYmdaJLdAp8d9Wis16fmQCJHRc0mi6PaBEWFKyFFVejyBxq7bA3
         rPxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=akQuM5sr03RZQ0F7kJY3+66jKxLZnsTpJuQ3RVbF6+c=;
        b=UIhH30rUMUUgbwlYdPG7v1XircHNM7acCcxZBdzt5rsRm53Fv1UC0UBvk5ZXWOVn6r
         7vQVIPLDa/4GSU/i8/lhpMr/mK72MvhUHtUlWFDvwkUp/pnyLb58YU06zcww5qnM7rMo
         GflBIeGE8tcGtQ+SlP7+7i4RtfnGdHiIraTP42CK/7ZJCU66mNfHenbd51cRKVEMPV7/
         sbEP4ux2L0JFdCAxzATldVWqg3yKOQ3+31V1AWXh+uKL7YNXiZBRffd9pqs1ExlfxNOw
         ps7eXEakA8bc0yMvFr8BIx+iin00Jj49V2YS3FKQFgkUZoQY3QvdXUD66bDxQIZEC7dL
         ePKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ira.weiny@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=ira.weiny@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id x2si717784pfq.3.2019.09.18.14.45.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Sep 2019 14:45:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ira.weiny@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Sep 2019 14:45:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; 
   d="scan'208";a="338457730"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.157])
  by orsmga004.jf.intel.com with ESMTP; 18 Sep 2019 14:45:07 -0700
Date: Wed, 18 Sep 2019 14:45:07 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Dan Williams <dan.j.williams@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dave Jiang <dave.jiang@intel.com>,
	Keith Busch <keith.busch@intel.com>,
	Jason Gunthorpe <jgg@mellanox.com>, linux-nvdimm@lists.01.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] libnvdimm/nfit_test: Fix acpi_handle redefinition
Message-ID: <20190918214506.GA20171@iweiny-DESK2.sc.intel.com>
References: <20190918042148.77553-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190918042148.77553-1-natechancellor@gmail.com>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-Original-Sender: ira.weiny@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ira.weiny@intel.com designates 134.134.136.31 as
 permitted sender) smtp.mailfrom=ira.weiny@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Tue, Sep 17, 2019 at 09:21:49PM -0700, Nathan Chancellor wrote:
> After commit 62974fc389b3 ("libnvdimm: Enable unit test infrastructure
> compile checks"), clang warns:
> 
> In file included from
> ../drivers/nvdimm/../../tools/testing/nvdimm/test/iomap.c:15:
> ../drivers/nvdimm/../../tools/testing/nvdimm/test/nfit_test.h:206:15:
> warning: redefinition of typedef 'acpi_handle' is a C11 feature
> [-Wtypedef-redefinition]
> typedef void *acpi_handle;
>               ^
> ../include/acpi/actypes.h:424:15: note: previous definition is here
> typedef void *acpi_handle;      /* Actually a ptr to a NS Node */
>               ^
> 1 warning generated.
> 
> The include chain:
> 
> iomap.c ->
>     linux/acpi.h ->
>         acpi/acpi.h ->
>             acpi/actypes.h
>     nfit_test.h
> 
> Avoid this by including linux/acpi.h in nfit_test.h, which allows us to
> remove both the typedef and the forward declaration of acpi_object.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/660
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Ira Weiny <ira.weiny@intel.com>

> ---
> 
> I know that every maintainer has their own thing with the number of
> includes in each header file; this issue can be solved in a various
> number of ways, I went with the smallest diff stat. Please solve it in a
> different way if you see fit :)
> 
>  tools/testing/nvdimm/test/nfit_test.h | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/tools/testing/nvdimm/test/nfit_test.h b/tools/testing/nvdimm/test/nfit_test.h
> index 448d686da8b1..0bf5640f1f07 100644
> --- a/tools/testing/nvdimm/test/nfit_test.h
> +++ b/tools/testing/nvdimm/test/nfit_test.h
> @@ -4,6 +4,7 @@
>   */
>  #ifndef __NFIT_TEST_H__
>  #define __NFIT_TEST_H__
> +#include <linux/acpi.h>
>  #include <linux/list.h>
>  #include <linux/uuid.h>
>  #include <linux/ioport.h>
> @@ -202,9 +203,6 @@ struct nd_intel_lss {
>  	__u32 status;
>  } __packed;
>  
> -union acpi_object;
> -typedef void *acpi_handle;
> -
>  typedef struct nfit_test_resource *(*nfit_test_lookup_fn)(resource_size_t);
>  typedef union acpi_object *(*nfit_test_evaluate_dsm_fn)(acpi_handle handle,
>  		 const guid_t *guid, u64 rev, u64 func,
> -- 
> 2.23.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190918214506.GA20171%40iweiny-DESK2.sc.intel.com.
