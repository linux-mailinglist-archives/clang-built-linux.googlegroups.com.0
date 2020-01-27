Return-Path: <clang-built-linux+bncBCZLJOMFV4FRBYVNXXYQKGQEX5GWQGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5011114ABAF
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 22:32:20 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id f75sf8609657ybg.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 13:32:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580160739; cv=pass;
        d=google.com; s=arc-20160816;
        b=ILTTaFuoTByCvod/j3FxJceJE74x7W6jNlBluJ/ELNC6rkXNV1Lmpt5sixYD6tQMfT
         cbmVe/DzF5QojXaQYD09HrZDa3UtqLIpd5vPKz0gHKVwAhoN+L3v+FGBlwPC57CAWepS
         iPUSPy9TU1IEv178zivay3buNr/+heRilSWdfo1Msgf7foUHjOUwtmncTgItAgy3eIKV
         iRgu+6hxHy216YVZssnvAcfIAS/SLgf6AliNN5EUdpMgLZsSJ0ZLYdKrOdZDM1XKOQkT
         faPC/pcnP9IrIDK4wCxniwm37rrUEFrkXQNNdy0RU8xOQPCLsqzIv9PIDncuTLc6h83C
         Jfkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=SeSGA5c4ih4Mg5hoejbhtBZ2faMLqVHdU+x/w2so5Wc=;
        b=wEZdAcKiSY667FfY97WOdi6zJX2bgEF3vXtOta3q0wsTQw770+VEfSRUrEY+VLcRD3
         EYfcaVRlzdBQsNovEZr385DBTfBzCI8Yne84yCn6RAEnlpuB8ulFaM8ojYk/sPT3IH0K
         17c3opJiOtituVGoi7qT+g1Ol90rf40OD+Te7svNZ1gr2uYkj+Qisit8l306TUielhp9
         tb2jeSP+/4w+HmVeLXReyYLJw+spr7yZmC1pP7n2NPRUlkNfthN8R02mVBtKd08hQw1e
         zQpTnWqZjxyzDwOgB07XfJsHcM7q54mjJEzRdgm4C6LVxJRioWWQ/yrUNx9EndzU+iVb
         eToA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b="jH/aWVkD";
       spf=pass (google.com: domain of jhubbard@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=jhubbard@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SeSGA5c4ih4Mg5hoejbhtBZ2faMLqVHdU+x/w2so5Wc=;
        b=Cqrn87bN7NciTnvhIMO3B+vjXvD0eRQMCTQ/sGlMrUzPEQ93CuhM0KKtZM6n0n4x2C
         XX2Q6Rf+geQweo4JXGKO18R8DWHtGkdf1lOqkFLSCv4EF0GBspQ/HQM24kq+6xhPPFIh
         un46ccBOpdpQDmzr4KaXjm41q6YtbXuwGaOFfhcFbfck1UyPh+4jW7rPvEi282XPXlc1
         MAhmWhkAPASqXnCxXneVoTFkB3i7jc/2A5UT86yjyQvFnJWH0xvuhP8l8Lr7xow+giAF
         Hig97xTqXRwCbf0gZ/75h+HH67k68h4Juf6J2y4svW5IYjbA/VKMeeh3VcJFeML3HgDZ
         7g3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SeSGA5c4ih4Mg5hoejbhtBZ2faMLqVHdU+x/w2so5Wc=;
        b=THg3oRyQlZlJxKm9sVgcpK3sQW5vLPYaFIR/Ka3ZJdXecbA6zhVfPOkVVMBpNpbju0
         P8LsANv4ZjzooEr72UkCIl76DdV9mP3889efIIWDbAvlaMsJyY6rF+j0Afdlr8DvEJVG
         4aVKERFRrsQIF3fhSwEhlzaehahUgVVywHTzezpXyjYlzoSlyxVXoxhjOdSPdhjvYaDE
         rrD5EMAR06BK7TGD8P09n9qyMIvxmbYk2hIMK0xlkurMZidQ2TgH6z0g1sNZXmqKESEI
         4AKm1jdSr3cnQ0LvkD6K3e8Anm62iQ9f9gi2seaxmEKOJsezk7x8jOEmjuJ7SzRjhNLE
         SBCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXWTKN211SjVJWau6zdl3s8qPPmq7sNd22/bJi/0qfQV62WwNKM
	F7jYt9HygOIQOw/XipmGCaQ=
X-Google-Smtp-Source: APXvYqxM/snu6An6GcICf57SW409sVmiYEcmVsOiMmKV7sXhuosIPtoNZHI1VxrI+AQXob5P6AGHnA==
X-Received: by 2002:a25:384f:: with SMTP id f76mr15343781yba.9.1580160739052;
        Mon, 27 Jan 2020 13:32:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2c58:: with SMTP id s85ls2355845ybs.3.gmail; Mon, 27 Jan
 2020 13:32:18 -0800 (PST)
X-Received: by 2002:a25:d394:: with SMTP id e142mr14859199ybf.177.1580160738709;
        Mon, 27 Jan 2020 13:32:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580160738; cv=none;
        d=google.com; s=arc-20160816;
        b=eYzJj38gclRI4urKXjh+wuOO1TPEiG6C5aAivFQaTARSupYA6eZkf9hmSbN01++YD8
         DiiCmc+vZUzCK3XL0AS6iFZwZ4JSfK49wTnzYiMMrS/xLNNof7QIlMWC3yyO6wJCIaDk
         WGGP6kgfz5mnHdRTz5pFNdnrOP/XV0NgS5J2ESZCUxs/meccidg4pWFLAIV9mUInNJa8
         lkjyQVp/xoKDOI4489e3tRnMpDtLIb0C77xKKCnIV237JZ3m5m/Mb3Edcs7QfX2BbjUX
         h+llMjWBnBtlSYYhb80vMZYYCoRY23HIyrI/HW8vQJC63PplGBTBVr/UJCSMvg6F5qOD
         ZIxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:content-transfer-encoding:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject;
        bh=LhTJ1/tn6kZiofE+Kr6/Zk0ukPrusIeEJQXQNfI3D4E=;
        b=O147IzqjdQ1VkKt5au7JsF4hpPE743dlgskKze9wxffd3jbUrlu70ahGqc8rc6WS3N
         PszUGL5qC+OOqk7QOGhHCdOE1RmpGI6MoJiuPJnF33TQL+MjOWJSljLWXAvzwR4aoaPR
         TNDzAr4OJ3oy8OaASM61yS3wQSDhcFcCtQh0stnfc+FZlXIYcdeMgkLy24EOt1czuI4U
         8FkIagWSh7ZNCeGiZOTqkiJkTpU/Jd1V04mjo1je1lTfTSnxFP7Uh2EIgyCC+9Wb8a/Q
         jICF44PxcS9FrEXIZypRkpDOIjCyiP6lmNq9uqiIR5+hBo4eGVOf9J9GBdXXf6bTcqDE
         tY8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b="jH/aWVkD";
       spf=pass (google.com: domain of jhubbard@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=jhubbard@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqnvemgate26.nvidia.com (hqnvemgate26.nvidia.com. [216.228.121.65])
        by gmr-mx.google.com with ESMTPS id 144si829578ybe.3.2020.01.27.13.32.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jan 2020 13:32:18 -0800 (PST)
Received-SPF: pass (google.com: domain of jhubbard@nvidia.com designates 216.228.121.65 as permitted sender) client-ip=216.228.121.65;
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
	id <B5e2f56ce0000>; Mon, 27 Jan 2020 13:31:58 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
  by hqpgpgate102.nvidia.com (PGP Universal service);
  Mon, 27 Jan 2020 13:32:13 -0800
X-PGP-Universal: processed;
	by hqpgpgate102.nvidia.com on Mon, 27 Jan 2020 13:32:13 -0800
Received: from [10.110.48.28] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 27 Jan
 2020 21:32:12 +0000
Subject: Re: [PATCH 2/3] mm/gup_benchmark: support pin_user_pages() and
 related calls
To: Nathan Chancellor <natechancellor@gmail.com>
CC: Andrew Morton <akpm@linux-foundation.org>, Al Viro
	<viro@zeniv.linux.org.uk>, Christoph Hellwig <hch@infradead.org>, Dan
 Williams <dan.j.williams@intel.com>, Dave Chinner <david@fromorbit.com>, Ira
 Weiny <ira.weiny@intel.com>, Jan Kara <jack@suse.cz>, Jason Gunthorpe
	<jgg@ziepe.ca>, Jonathan Corbet <corbet@lwn.net>,
	=?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>, "Kirill A . Shutemov"
	<kirill@shutemov.name>, Michal Hocko <mhocko@suse.com>, Mike Kravetz
	<mike.kravetz@oracle.com>, Shuah Khan <shuah@kernel.org>, Vlastimil Babka
	<vbabka@suse.cz>, <linux-doc@vger.kernel.org>,
	<linux-fsdevel@vger.kernel.org>, <linux-kselftest@vger.kernel.org>,
	<linux-rdma@vger.kernel.org>, <linux-mm@kvack.org>, LKML
	<linux-kernel@vger.kernel.org>, <clang-built-linux@googlegroups.com>
References: <20200125021115.731629-1-jhubbard@nvidia.com>
 <20200125021115.731629-3-jhubbard@nvidia.com>
 <20200127205247.GA578@Ryzen-7-3700X.localdomain>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <f81fab20-5d01-e782-d45e-c65f3e51beec@nvidia.com>
Date: Mon, 27 Jan 2020 13:32:12 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200127205247.GA578@Ryzen-7-3700X.localdomain>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: jhubbard@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b="jH/aWVkD";       spf=pass
 (google.com: domain of jhubbard@nvidia.com designates 216.228.121.65 as
 permitted sender) smtp.mailfrom=jhubbard@nvidia.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=nvidia.com
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

On 1/27/20 12:52 PM, Nathan Chancellor wrote:
...
>> --- a/mm/gup_benchmark.c
>> +++ b/mm/gup_benchmark.c
>> @@ -8,6 +8,8 @@
>>  #define GUP_FAST_BENCHMARK	_IOWR('g', 1, struct gup_benchmark)
>>  #define GUP_LONGTERM_BENCHMARK	_IOWR('g', 2, struct gup_benchmark)
>>  #define GUP_BENCHMARK		_IOWR('g', 3, struct gup_benchmark)
>> +#define PIN_FAST_BENCHMARK	_IOWR('g', 4, struct gup_benchmark)
>> +#define PIN_BENCHMARK		_IOWR('g', 5, struct gup_benchmark)
>>  
>>  struct gup_benchmark {
>>  	__u64 get_delta_usec;
>> @@ -19,6 +21,47 @@ struct gup_benchmark {
>>  	__u64 expansion[10];	/* For future use */
>>  };
>>  
>> +static void put_back_pages(int cmd, struct page **pages, unsigned long nr_pages)
> 
> We received a Clang build report on this patch because the use of
> PIN_FAST_BENCHMARK and PIN_BENCHMARK in the switch statement below will
> overflow int; this should be unsigned int to match the cmd parameter in
> the ioctls.


Thanks for the report! Yes, that should have been "unsigned int cmd", to match the
one in the ioctls, just as you said.

I'll apply this diff, for the next version of the series:

diff --git a/mm/gup_benchmark.c b/mm/gup_benchmark.c
index 3d5fb765e4e6..7d5573083ab3 100644
--- a/mm/gup_benchmark.c
+++ b/mm/gup_benchmark.c
@@ -21,7 +21,8 @@ struct gup_benchmark {
        __u64 expansion[10];    /* For future use */
 };
 
-static void put_back_pages(int cmd, struct page **pages, unsigned long nr_pages)
+static void put_back_pages(unsigned int cmd, struct page **pages,
+                          unsigned long nr_pages)
 {
        int i;
 
@@ -40,7 +41,7 @@ static void put_back_pages(int cmd, struct page **pages, unsigned long nr_pages)
        }
 }
 
-static void verify_dma_pinned(int cmd, struct page **pages,
+static void verify_dma_pinned(unsigned int cmd, struct page **pages,
                              unsigned long nr_pages)
 {
        int i;



thanks,
-- 
John Hubbard
NVIDIA

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f81fab20-5d01-e782-d45e-c65f3e51beec%40nvidia.com.
