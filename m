Return-Path: <clang-built-linux+bncBDCJRFVDTYIBBOF4374AKGQEGCSB72Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 220382290F8
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 08:35:38 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id e4sf743011qtd.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 23:35:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595399737; cv=pass;
        d=google.com; s=arc-20160816;
        b=bVkZi8grsRetITa64VUkZMJcxLtRJVT3AbHfa54zHmd6MvgsKMiwJmtO9JPzFNviDG
         SsZkI5pl8RpEpAS1K5MOL905a3XNiIPS4WHgEeJev+ZEsDEqEom+fNhxpZMuHRKPVPtS
         /cLGMGvG5wYXsg8VztugT/lK1s5peLDrFPAg2hUJ8zgEFWD6NBitQjscAJEkDRCBRUrL
         UnqclRQgDrRn9MWbmyUGCdAGlnObew0zyJngV3a/E7W/sGhoODOq/T3CnHObLNRZ2jy3
         l2EEOe5QgKuW9zYl0FSLENtWkjJW7d3WIQcVUO1O6NJtMBchQTxse1w/vZ93Uhki0oD7
         ybtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:ironport-sdr:dkim-signature;
        bh=MG0nEvsDr5nXcKjuwswtvj9BxAdinm9X81cNugJfP/A=;
        b=Rzh74lc5dj5eG3UL/UXsv4exWVKVAS/jE/nGJRYkXZTEpBA6v3roPGRRf9whSaLuCT
         M/wZfkCcFyDk/C5aoaJrwyU99iic27oJp99INWiSB5iuMb6BudnRBJ+A4NCZLo528uub
         uUGuMxbkOS3UTilR2EcqfG9/mSbzLFUFpWo1Oxdf4gDs9n7z/wOVuymUZ8A3boAJd6A2
         wFX3/9IAB4ovWcE2ODUmaymzxiCOlR14bkhfUYCkGLXDu+23cHcK+FnJoSwuecUBqG2w
         D/66+DtS+oerTvz60hhNiLr0apQxMBfdK17br1Dshc41FUYw7tFuWhqA5wGyajH7fuSE
         AQmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=vITlG2wK;
       spf=pass (google.com: domain of prvs=4651482d7=galpress@amazon.com designates 207.171.184.29 as permitted sender) smtp.mailfrom="prvs=4651482d7=galpress@amazon.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amazon.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MG0nEvsDr5nXcKjuwswtvj9BxAdinm9X81cNugJfP/A=;
        b=FKNinZmCm0ZpsjuvoIGTCr3sSgmOOS17CeoSIMDIcgTX6HOqLhhDi8EXeJWf8VBwSj
         DMbSBAK4O9efgvPlcWDs8oXY5g2muzXUtZRVjp/vXX6hIcDOGREN48HUMOJBD0Vlm9IJ
         q4wSI+pTHqJENxXe6vyR/OcP3n9EHMZnb9sXr7CiszjjlB8d+ZhxT+BXv8N/fAmsQCSU
         oJ6jyklk7NTTA9ZW1PYp644W3HVJFH223ucKEEKIoQyMbRuBBT6/zMcLAJCakyzDUPO3
         0YpgB/Ii/oONs5FK+xU8yFlj9LFX8m8ZT2ko5OsvIhD04JHLkSRCtTLOBLNAkIVAxZLG
         OIYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MG0nEvsDr5nXcKjuwswtvj9BxAdinm9X81cNugJfP/A=;
        b=c2MKzRrewzfgGg6nbN18CbJf3SSVHaiU5W9vncF/WEF2ixiqU+Cs0hvPR8AOoBW8vd
         Q9CVZivMGx24e1P3evjBdM2z/It0B5Yj7I/Uh+l2fUqCOnfe/iwk1eEEGoNHk1EZ4qXp
         fn74tZdRp29lmEEN1HXVBK/YOHxw4oFqmDd6OGWyP6NqQVHf7wzqSAoRUeZXGUBJKZFi
         maiPBaRwLmWN4H6lcj53+n72ztpNk+nEV8AZCZYac9RfRmlYcO048lO5kx7sqm/juqp0
         S2nXA1poOYDznDabi4ttAIosQgDkz5LScC7rjn/vXuLIC8KmQlm9oGo5HxjPydRG/1OP
         imBg==
X-Gm-Message-State: AOAM530NyUQjZwH+26cUuRUqDmlnODXkfBjVIzS7xzgiTetIRn3n1eok
	Tyeen06Ut0Sr8pxJOWFgCdA=
X-Google-Smtp-Source: ABdhPJxDD7QcaP+2kMQXPdVP2pJYgAofTIx7Y4irO7k4ym4HAKrY2syKwUzBtV6IHnR2hyxsOM0F4w==
X-Received: by 2002:ac8:170a:: with SMTP id w10mr33613176qtj.392.1595399736976;
        Tue, 21 Jul 2020 23:35:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:36a2:: with SMTP id a31ls498067qtc.5.gmail; Tue, 21 Jul
 2020 23:35:36 -0700 (PDT)
X-Received: by 2002:ac8:6743:: with SMTP id n3mr9463162qtp.7.1595399736691;
        Tue, 21 Jul 2020 23:35:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595399736; cv=none;
        d=google.com; s=arc-20160816;
        b=vl9kUM1ygG/fTb2EORLYASWvEUk/L3FM5CGhaHcJpYQOq4DoXHlYtGYDf6sySnC1ie
         PBq8N6e4vRn5eesbb05iwEApK8p39M/bl3E3OM1S/VEttIqOiArwLXm6Sln9AVKCGRae
         eOUm5PM6cazekp1cLzHr/gVPUrAeLSOyXaqNapsAE2xvG2jq9nXM653mSJzYpM9KA5Ot
         SJH4pGfD1l/k69iIGm5L8/OvrNyAdg91ZjJlA50CsZxvEDACVQNE1xPB2sUS39qL1boH
         4GUSpaVK5QfOBxpytbvB7jfhVJRNGv8D1LOdZpzLxaaxO6VgcOmX+RRJi9GWWVG4JGV/
         WWyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:dkim-signature;
        bh=sMxTKggyWW8akj3924gWlhwqkiklVYYmiv4urtdv+wo=;
        b=jo38dyyRLSQ6I5iEWizaEFk+9kyYVB/cDI/w6NSn7QyltImsu9SqtKyLCzA7N8gutG
         h5iUck4SiTGVn0Op3u7jQd7WeMtk1k8ezkmc/yy4tg1iOG6w3TLEGfURfORbK+6TB4RK
         uM9SjlND8/RWXKgnaHF6DIkz7v5TWE79kGZdKVgLEsFRRvNPAqNAQtuaNscOXS4sEmvA
         RbShi2s+434eGS4Z5o8NpdpECEHqiIfgcRmWdsR/4HVnKhNnCtiJFB6tqrRM/qmP46xf
         A9ER30y/1cQDe63mso7KajvUtSxRKaANQ28q48M5NgU2E3Dj+BsnZsQSt3jx+is98vGu
         O5IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=vITlG2wK;
       spf=pass (google.com: domain of prvs=4651482d7=galpress@amazon.com designates 207.171.184.29 as permitted sender) smtp.mailfrom="prvs=4651482d7=galpress@amazon.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amazon.com
Received: from smtp-fw-9102.amazon.com (smtp-fw-9102.amazon.com. [207.171.184.29])
        by gmr-mx.google.com with ESMTPS id q14si1225882qtn.4.2020.07.21.23.35.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jul 2020 23:35:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=4651482d7=galpress@amazon.com designates 207.171.184.29 as permitted sender) client-ip=207.171.184.29;
IronPort-SDR: Pt9iILhiR4vjuxu9uONwgxjswT3NHnjg1zJClWspXQIkcHyNJ/13+39orUBIarRsw63n5M5dLy
 MK2/JhIu82WQ==
X-IronPort-AV: E=Sophos;i="5.75,381,1589241600"; 
   d="scan'208";a="61810427"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO email-inbound-relay-1d-f273de60.us-east-1.amazon.com) ([10.47.23.38])
  by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP; 22 Jul 2020 06:35:29 +0000
Received: from EX13MTAUEA002.ant.amazon.com (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
	by email-inbound-relay-1d-f273de60.us-east-1.amazon.com (Postfix) with ESMTPS id 74DA4A23F5;
	Wed, 22 Jul 2020 06:35:26 +0000 (UTC)
Received: from EX13D19EUB003.ant.amazon.com (10.43.166.69) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 22 Jul 2020 06:35:25 +0000
Received: from 8c85908914bf.ant.amazon.com (10.43.160.156) by
 EX13D19EUB003.ant.amazon.com (10.43.166.69) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 22 Jul 2020 06:35:19 +0000
Subject: Re: [PATCH for-next v2 3/4] RDMA/efa: User/kernel compatibility
 handshake mechanism
To: Nick Desaulniers <ndesaulniers@google.com>
CC: kernel test robot <lkp@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, "Doug
 Ledford" <dledford@redhat.com>, <kbuild-all@lists.01.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, <linux-rdma@vger.kernel.org>,
	"Alexander Matushevsky" <matua@amazon.com>, Shadi Ammouri
	<sammouri@amazon.com>, "Yossi Leybovich" <sleybo@amazon.com>
References: <20200720080113.13055-4-galpress@amazon.com>
 <202007210118.fF0Xv5Jy%lkp@intel.com>
 <99314564-cb73-5a25-3583-1afda323d2b3@amazon.com>
 <CAKwvOdns6+LVqLO_aZgXOYi33xskO860=BEU-=Q7c3nGYkHs2A@mail.gmail.com>
From: "'Gal Pressman' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <2567f2dc-90e7-a0ca-e322-f585bda08e42@amazon.com>
Date: Wed, 22 Jul 2020 09:35:14 +0300
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdns6+LVqLO_aZgXOYi33xskO860=BEU-=Q7c3nGYkHs2A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.43.160.156]
X-ClientProxiedBy: EX13D39UWB003.ant.amazon.com (10.43.161.215) To
 EX13D19EUB003.ant.amazon.com (10.43.166.69)
X-Original-Sender: galpress@amazon.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amazon.com header.s=amazon201209 header.b=vITlG2wK;       spf=pass
 (google.com: domain of prvs=4651482d7=galpress@amazon.com designates
 207.171.184.29 as permitted sender) smtp.mailfrom="prvs=4651482d7=galpress@amazon.com";
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

On 21/07/2020 20:10, Nick Desaulniers wrote:
> On Tue, Jul 21, 2020 at 4:27 AM 'Gal Pressman' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
>>
>> On 20/07/2020 20:08, kernel test robot wrote:
>>> Hi Gal,
>>>
>>> I love your patch! Yet something to improve:
>>>
>>> [auto build test ERROR on 5f0b2a6093a4d9aab093964c65083fe801ef1e58]
>>>
>>> url:    https://github.com/0day-ci/linux/commits/Gal-Pressman/Add-support-for-0xefa1-device/20200720-160419
>>> base:    5f0b2a6093a4d9aab093964c65083fe801ef1e58
>>> config: x86_64-allyesconfig (attached as .config)
>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cf1105069648446d58adfb7a6cc590013d6886ba)
>>
>> Uh, looks like I use some gcc specific stuff here.. I guess it's time to start
>> checking clang compilation as well :).
>>
>> Will fix and resubmit.
> 
>>> drivers/infiniband/hw/efa/efa_verbs.c:1539:18: error: invalid application of 'sizeof' to an incomplete type 'struct (anonymous struct at drivers/infiniband/hw/efa/efa_verbs.c:1529:2) []'
>            for (i = 0; i < ARRAY_SIZE(user_comp_handshakes); i++) {
>                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> is user_comp_handshakes forward declared but not defined for an allyesconfig?
> 

I don't think that's the issue here, the real problem is the first error:

>> drivers/infiniband/hw/efa/efa_verbs.c:1533:3: error: function definition is not allowed here
                   DEFINE_COMP_HANDSHAKE(max_tx_batch, EFA_ALLOC_UCONTEXT_CMD_COMP_TX_BATCH),
                   ^
   drivers/infiniband/hw/efa/efa_verbs.c:1520:4: note: expanded from macro 'DEFINE_COMP_HANDSHAKE'
                           DEFINE_GET_DEV_ATTR_FUNC(_attr)                        \
                           ^
   drivers/infiniband/hw/efa/efa_verbs.c:1506:2: note: expanded from macro 'DEFINE_GET_DEV_ATTR_FUNC'


Apparently the braced group (is that how its called?) is supported by gcc, but not clang.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2567f2dc-90e7-a0ca-e322-f585bda08e42%40amazon.com.
