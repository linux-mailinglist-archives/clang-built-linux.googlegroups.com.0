Return-Path: <clang-built-linux+bncBDCJRFVDTYIBBEFC3P4AKGQEBLVOCJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8FC227ECB
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 13:27:14 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id i9sf14693162ybg.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 04:27:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595330833; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fa4NT78dos1F+EtEA+yae4yIoWSLKpfvKn0uLS9dBPr/F7DadvoptTbe6B99eDblS1
         PfzDbmuM+tdTQgd8brVFio9L8mn0p12Qc8p6M4fgjmHpmLoFqtNFAY1jUVf90aBXX+xr
         EqmXWNjHKNzTZG8FqgdcGmbK0/3eM1iesJf/Ub/kq91o1nl/tr8POBaukYlDZQonPTRl
         GKKphgAli/vgQOLHY/B+4WiOVi9Q5Jj4Ujfkj9EXakONG7f1Sbd2q6GCMvTAaZMTh/2k
         nZQQWsvSPTG7ZsHepaqxizr5yaGeDqMu7DaZxbQeQLZcuCdStgPNRFoClLkc4n0VcnHH
         zD6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:ironport-sdr:dkim-signature;
        bh=zvteHhHdggNMMpx8uh54R26yJr4tyVUBamkU4fLt124=;
        b=I03z6Ub9QdUYgK6QNdAEnOcm/zXsw54aeoOM+ldXuEKZiK+lyL4mOA1hXOc7kF0xyD
         lFWhApAXePzbR905G7ScRIoziVRbRY6lM8IE/L/AFlIyeYv8Cw+zBZRrmxYZCWkp+4fX
         MmbRML1wXSevwo0QmbtKRLiyUL9dhkWa61n+MWtr7+5KWfbxD+HEM1lG9pikOWxVs20O
         7bWQLneNscXnBu/hQeAUjzdDdOQ3LsX6x2t98HF/raT8zQRTcLmpYixMmfnHktIsMuh9
         82GB9y8AkdG7zHOLpSqdG/bZY7jODleU1SqBYiGGohJmIdkCli9iTtaBJxC2SVxHkEkR
         Rcpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=F4SddNW6;
       spf=pass (google.com: domain of prvs=464b7a9d3=galpress@amazon.com designates 207.171.190.10 as permitted sender) smtp.mailfrom="prvs=464b7a9d3=galpress@amazon.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amazon.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zvteHhHdggNMMpx8uh54R26yJr4tyVUBamkU4fLt124=;
        b=TtcIm9KQjw6If0xq/NolbbbbHn0E2Hi8Nte7uOOqHuJpVrDPxlrwQPSNQMzd+7u70u
         GF1WUOJIua480XnE7vpKzPDo71pgUaxtmE53KtCexmYwb1JQGvro33HsWuhx/B1cyKFy
         j4oSg4KzLzKLLmG3fABeHSCL369uALRMIH4zVe2d1sJxNyziiWFLZAZTyUMnhfrxj/vx
         CSrXawGuVrXoKwn2+Ij0lBQixCwR7sHUueOkHxbdkQ4Di1HYpJgeEh7UH5vUWNnLCpar
         94aorJsG/cHw4q6AwEHWIfg4xT/GrCBqFrsSbxgG/DZRTSPMI//2PlK7j3O0DV55Pj9G
         w/yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zvteHhHdggNMMpx8uh54R26yJr4tyVUBamkU4fLt124=;
        b=gLmwJgYtFuuIcDn06ZiS2sN11v/13+LKoaL8enZJAayGj7Mg2AZwFJ/TJRubCSAf6O
         wwfbQ6TxFVq7ukaN+zQJk4aEa1+0xAKQkBxKVE/hRWWzL/I6+aOS9O2yCBhnqj+VZyVB
         sameoPMD45AGTyeM3jULuhjwuXO6wLjh6sFHPJcMUSjFTcaZT3X/X3fD70XLbfVdmhHG
         D+LlbY8IFWLu8tn1LE059Y3brZKl88Zz6/W6fGuKH3tZPyFoCS+/Ii0QUgdMeYYRsL6F
         uO0GkkRua6A+mhqTVRgsmgoFy259on9z/BHjPDhXfF3jNhkP/4/eY4Dw3ys/+70js+LU
         5Oaw==
X-Gm-Message-State: AOAM533snfwZMg/DKuxtVmIgse5wlrjasrikietksshPxFOi575HpJza
	ONplhxtXGlaVg0whVN03jUQ=
X-Google-Smtp-Source: ABdhPJxXC2tH/1FTII7fCeIG4hv6Wk3sG4FbM7unAwYJ31zLUaI3TlVPEHbOfsit1kvSxg3byQLp8A==
X-Received: by 2002:a25:abc5:: with SMTP id v63mr40847146ybi.148.1595330832970;
        Tue, 21 Jul 2020 04:27:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6087:: with SMTP id u129ls1209372ybb.10.gmail; Tue, 21
 Jul 2020 04:27:12 -0700 (PDT)
X-Received: by 2002:a25:c5d1:: with SMTP id v200mr40381737ybe.146.1595330832614;
        Tue, 21 Jul 2020 04:27:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595330832; cv=none;
        d=google.com; s=arc-20160816;
        b=eFojlTPRlFqLkzPLm6s6OtDxatzScWmkV+2z5RG6Pp4p/KVoO/n+ErLs0Gn1VZ4L0r
         8OCPy21XidDh7H5aA2xV7dXKJVW7QWq6qL8pBXoiZitHUUlOQNaaHVERuVTuoF6ht8rY
         70lgk/zT93u1G6AscRRi0Y873itSO2nf/DK6tAmLqaeCTjyDWLw51rnYu48MTVhjXQlB
         N4V9LC2Izd0nYSPAEmCaBcU//nQlW/gtogxms8vB1bcv3WDKqlt7k4H7HefpHf5fZxlK
         +4GIkgIZcCOcp6lddO4WSWm+qmvjXbsbO0okN0E//m88DvPaV4DGhNCegv0h6JnKKs1O
         n9Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:dkim-signature;
        bh=So9ctermII+g6xlrDJ0EGP5lQZ20ONDcLN7hfkRlRzM=;
        b=gHAyuN3yiPJebvJknxXbOs0LwM9bewgpBY1Pq6esnPz3ZXKBpmFGnghqy+wSMd7taW
         msKMr58eCS2y6CqMUzDaS5e2a02SCVCwW7JUq+2Fb2WtzBHcHRFnQ/gkKpPsKY5t9jql
         //RvOmJsnvnHnK08d7QbQBiB4vSHZiITzCYMXN8lyb/u15ubFdtcverSer7edgEzA5dp
         jk1loxwxAIlF0UpW7JU/6Op6eLOXcIfhLozbL4ix8IHKPLPKQ6v9mgsqk0v63aOq3Frp
         fCX5GM/bF/2djWM2UZtpR+wM3jUVcKHapdhzYTegGc+M837XwK/OJCnj6JLSFDwFHhXt
         wwbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=F4SddNW6;
       spf=pass (google.com: domain of prvs=464b7a9d3=galpress@amazon.com designates 207.171.190.10 as permitted sender) smtp.mailfrom="prvs=464b7a9d3=galpress@amazon.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amazon.com
Received: from smtp-fw-33001.amazon.com (smtp-fw-33001.amazon.com. [207.171.190.10])
        by gmr-mx.google.com with ESMTPS id k2si1300033ybb.0.2020.07.21.04.27.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jul 2020 04:27:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=464b7a9d3=galpress@amazon.com designates 207.171.190.10 as permitted sender) client-ip=207.171.190.10;
IronPort-SDR: lOdakeJDFiW5kkJuHoyUMwZo5Buvus52rNF40CDvqQiXRXUK613mhFhZueSQlB9a5zlVg/WmV7
 YqmwHV0Qcxhw==
X-IronPort-AV: E=Sophos;i="5.75,378,1589241600"; 
   d="scan'208";a="60304178"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO email-inbound-relay-1d-5dd976cd.us-east-1.amazon.com) ([10.47.23.38])
  by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP; 21 Jul 2020 11:27:09 +0000
Received: from EX13MTAUEA002.ant.amazon.com (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
	by email-inbound-relay-1d-5dd976cd.us-east-1.amazon.com (Postfix) with ESMTPS id 42A15A1C0E;
	Tue, 21 Jul 2020 11:27:05 +0000 (UTC)
Received: from EX13D19EUB003.ant.amazon.com (10.43.166.69) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Tue, 21 Jul 2020 11:27:05 +0000
Received: from 8c85908914bf.ant.amazon.com (10.43.162.73) by
 EX13D19EUB003.ant.amazon.com (10.43.166.69) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Tue, 21 Jul 2020 11:27:00 +0000
Subject: Re: [PATCH for-next v2 3/4] RDMA/efa: User/kernel compatibility
 handshake mechanism
To: kernel test robot <lkp@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, "Doug
 Ledford" <dledford@redhat.com>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
	<linux-rdma@vger.kernel.org>, Alexander Matushevsky <matua@amazon.com>,
	"Shadi Ammouri" <sammouri@amazon.com>, Yossi Leybovich <sleybo@amazon.com>
References: <20200720080113.13055-4-galpress@amazon.com>
 <202007210118.fF0Xv5Jy%lkp@intel.com>
From: "'Gal Pressman' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <99314564-cb73-5a25-3583-1afda323d2b3@amazon.com>
Date: Tue, 21 Jul 2020 14:26:55 +0300
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202007210118.fF0Xv5Jy%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.43.162.73]
X-ClientProxiedBy: EX13D11UWB001.ant.amazon.com (10.43.161.53) To
 EX13D19EUB003.ant.amazon.com (10.43.166.69)
X-Original-Sender: galpress@amazon.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amazon.com header.s=amazon201209 header.b=F4SddNW6;       spf=pass
 (google.com: domain of prvs=464b7a9d3=galpress@amazon.com designates
 207.171.190.10 as permitted sender) smtp.mailfrom="prvs=464b7a9d3=galpress@amazon.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amazon.com
X-Original-From: Gal Pressman <galpress@amazon.com>
Reply-To: Gal Pressman <galpress@amazon.com>
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

On 20/07/2020 20:08, kernel test robot wrote:
> Hi Gal,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on 5f0b2a6093a4d9aab093964c65083fe801ef1e58]
> 
> url:    https://github.com/0day-ci/linux/commits/Gal-Pressman/Add-support-for-0xefa1-device/20200720-160419
> base:    5f0b2a6093a4d9aab093964c65083fe801ef1e58
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cf1105069648446d58adfb7a6cc590013d6886ba)

Uh, looks like I use some gcc specific stuff here.. I guess it's time to start
checking clang compilation as well :).

Will fix and resubmit.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/99314564-cb73-5a25-3583-1afda323d2b3%40amazon.com.
