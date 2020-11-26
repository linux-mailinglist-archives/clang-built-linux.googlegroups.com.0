Return-Path: <clang-built-linux+bncBAABBWMR7T6QKGQEXOQQV5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8732C4CC1
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 02:46:03 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id bf9sf442002plb.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 17:46:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606355161; cv=pass;
        d=google.com; s=arc-20160816;
        b=t1640FkVu3FDTrdyhED7u3RylP+L8NiVaK76gWpMSEQCfbpp7FbYPOTlK5RDvZ2NT0
         hpQ/MC5z5iQqTED+0h7uw4eaf5/j5+efSFH8zX+1A2BYcVTt7KKny+QMqp6jLOQ/NXgq
         auf+M4ALjG80wbPvKhKiloWuouzpc/W8l+/qohzzIs+Ppac24TbIeyDF+Zy6sSnVUxBL
         UzEOycyCfRQGJn73rTsDieCeg+d6UKvDRz/i4Eu+rRO4wc0fuHuDo9YOjOhYHGsCrJOW
         RyVx0kgt92mib01Mk/lxDxTbvYL4neJ/IFcaKnHJkrTcLCGprgoQGqKEkT6O+7EyYF6m
         7HPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=IDM9cLC+OfzfoWV4HSm0NropBLHYZUBIo32OJBbKUp8=;
        b=gcqsxn0yreD0855ILTpmY/+L/NobhjGop5keJubsQgFHJX3DqFKzxsobRo3j1Qri1v
         bHOFnOo/IMVYjKAVajY6BD5cGC80icGfCixoIDfPexMKqcDT4xA3lAU81NLzvFDguniw
         UbCXlp1NRK5H5UQvgl7WjvSrdDbZjrLEQfnbynH4+mGysYvJZQ740PlYY1rXu/2pj//L
         Y3V9gUsisOxbvphi0MTvgmG40//gn1bTvivrsMfGAFrjU/asPqQ6S//DLyPgSy3TSTGT
         ZHqFWik+ktP/WSMnysQH3i9+zH5C5hUuCP46iWTJVlSOBko/sUI+kGK1aqgjXNXcO/4j
         mPZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of song.bao.hua@hisilicon.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=song.bao.hua@hisilicon.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IDM9cLC+OfzfoWV4HSm0NropBLHYZUBIo32OJBbKUp8=;
        b=GGx5MUyhQKAaWyhPqfE7Iq44Z6vbApiBcYNTw3PiObiCoCPQ0+qAdPwTJb3Px8byuH
         VJnzpaq+npSAI9yzn79QBX4j5/O7Aq0RB2ao3aBoFSc9Yr/J0if7PapSKYs8a1vIBfou
         qnjKHQfQSX9r9Q85egtlLx7P2ZjI1f1r+k/luuISxHmIWr1RRU9jwSYT7Jm2t5WUfKRa
         ENiJWvgF/c2KE5Tg3gYz++MQAam4WIexbs1q2NtHcHqUsjm68G/+XXJUEu4hI8PQ2kPy
         blqIqVJlLLOzTQ+9wyLP8C0vAl01XN8emeZsq4MiQK3baxxEpiX6KnESJyWrKzpU5plF
         tPrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IDM9cLC+OfzfoWV4HSm0NropBLHYZUBIo32OJBbKUp8=;
        b=OOrlAa6w37TvrcPW+jB4RBrHqwr7LI7wFRoOJ5ILDZeUgmscCOJtqH7YQTbqq1v4tu
         35KCwbEc7PJagVb9Pss7yuumEakYPnE/4H2PltacV3oEXfm2jQCsPzOskJGRAIeYITnt
         tfVVjj8dOREKKNqwmZbg3MwxH7kkZM+f22z4xcy45Mz9ym7uK2BkLXJIMhcAtgDwOkot
         41cfKcdkMXJ+QkG2N3Nn3lXnGvXFKi8fIfLJSHwLv+Fy1YGbIo7avlB1YKCe0Cxh8sa6
         AsDK64tsbRsquQPsCY5owWNK0/86ZBHPgGDl9QWRywE/tXTL8RBngTp6K1Zs6/bzjbG2
         EmoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xAsNJ3ze42C06Gu5cJ8yQjAgR7GaoHRTVg7C6XsqDSKW7LPn3
	slSj3e+OhoNwqNw1KHZ0B3I=
X-Google-Smtp-Source: ABdhPJyRuBcMnjiWyUbGNkCpprlXQ2XQOCbqbS5lYKB5PUX6HLuZfyJEkxxgxWwWgo3qeZmwOxGQsg==
X-Received: by 2002:a17:902:7:b029:d8:f370:de91 with SMTP id 7-20020a1709020007b02900d8f370de91mr740116pla.80.1606355161825;
        Wed, 25 Nov 2020 17:46:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b23:: with SMTP id 35ls212358pgl.11.gmail; Wed, 25 Nov
 2020 17:46:01 -0800 (PST)
X-Received: by 2002:a63:385e:: with SMTP id h30mr597805pgn.181.1606355161043;
        Wed, 25 Nov 2020 17:46:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606355161; cv=none;
        d=google.com; s=arc-20160816;
        b=LZzhwa0exz2z2mfq7SLH4vjLpaJphzINo2bLHBnFh3+IdRzZnsP/XgwbK8bB5jf/82
         OhPK+v8OqW0idU/RSyzQuQRMUSO9GuKQof0qELPPi9l1CT8PzCoZtQJFxZUmz3oLdZMz
         OLB4fyG0DEylHmrzGw4SWjqvIGb1s+wLbgGiPfig5u/iHyhx0h+adS6/2fZ8P/4mU+a4
         onyisDps538IY5PPIJ5JrWV7ISpsYQx1SeCwRrAj0e2D+L7UVi+fgQqiRNFObc1meJFT
         7+tXsCw0awnk3EjQI/waVn5gY/XBxcnKS+oA22xNG2/4bdVMsF+o1sH661Co7o0N+YHc
         iXaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=GilvStDGO2qHcrjKoW0OAF0hv+AgHWYgbYPKUT4ZBbI=;
        b=c/eHTTSiPCaO1avMDN/LMqgoPRBo5EThV6UIvwbOJ5dtWMTTub2b6B/OEgBV9SDScY
         VAQu19oItGLkUYqKqi5yqk9OP/xrhxN20C88szbrHlWGXIjo1QrPeSHYtGsx3BsdIYS/
         SGSiADtYHkPQh9P5F3Xoe1JxoicMm2u2OjfINKdUyEMPtABtMACa0kUDy9I4MrIoc+Ph
         vOHJkI9PrQMbWlVtJqf+7y7TGfpI2Z/8Io8pIRx7Liku/IbIZ2Fr0Ceu90hAr5nRsTIG
         ZrY0ztmWjEb4ej+srxrE5a1cKvVlnU2EZQae8ZnpKEgAUfOrxmumg/BWHaeETnj76CT8
         uKcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of song.bao.hua@hisilicon.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=song.bao.hua@hisilicon.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id mg17si406156pjb.2.2020.11.25.17.46.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Nov 2020 17:46:00 -0800 (PST)
Received-SPF: pass (google.com: domain of song.bao.hua@hisilicon.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from DGGEMM406-HUB.china.huawei.com (unknown [172.30.72.53])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4ChLDd3ZhdzVhZH;
	Thu, 26 Nov 2020 09:45:21 +0800 (CST)
Received: from dggemi711-chm.china.huawei.com (10.3.20.110) by
 DGGEMM406-HUB.china.huawei.com (10.3.20.214) with Microsoft SMTP Server (TLS)
 id 14.3.487.0; Thu, 26 Nov 2020 09:45:57 +0800
Received: from dggemi761-chm.china.huawei.com (10.1.198.147) by
 dggemi711-chm.china.huawei.com (10.3.20.110) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1913.5; Thu, 26 Nov 2020 09:45:57 +0800
Received: from dggemi761-chm.china.huawei.com ([10.9.49.202]) by
 dggemi761-chm.china.huawei.com ([10.9.49.202]) with mapi id 15.01.1913.007;
 Thu, 26 Nov 2020 09:45:58 +0800
From: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
To: kernel test robot <lkp@intel.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Linux Memory Management List <linux-mm@kvack.org>, Christoph Hellwig
	<hch@lst.de>
Subject: RE: [linux-next:master 7654/8449] kernel/dma/map_benchmark.c:195:37:
 warning: variable 'argp' is uninitialized when used within its own
 initialization
Thread-Topic: [linux-next:master 7654/8449] kernel/dma/map_benchmark.c:195:37:
 warning: variable 'argp' is uninitialized when used within its own
 initialization
Thread-Index: AQHWw5Vrnnx30Td6AUa2oHuhUQt+wKnZozqg
Date: Thu, 26 Nov 2020 01:45:57 +0000
Message-ID: <6ec5a78ad8cd428dbbf023c9b3126c54@hisilicon.com>
References: <202011260953.1BHKhZHc-lkp@intel.com>
In-Reply-To: <202011260953.1BHKhZHc-lkp@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.126.202.201]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: song.bao.hua@hisilicon.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of song.bao.hua@hisilicon.com designates 45.249.212.187
 as permitted sender) smtp.mailfrom=song.bao.hua@hisilicon.com
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



> -----Original Message-----
> From: kernel test robot [mailto:lkp@intel.com]
> Sent: Thursday, November 26, 2020 2:42 PM
> To: Song Bao Hua (Barry Song) <song.bao.hua@hisilicon.com>
> Cc: kbuild-all@lists.01.org; clang-built-linux@googlegroups.com; Linux
> Memory Management List <linux-mm@kvack.org>; Christoph Hellwig
> <hch@lst.de>
> Subject: [linux-next:master 7654/8449] kernel/dma/map_benchmark.c:195:37:
> warning: variable 'argp' is uninitialized when used within its own initialization

A fix is here:

https://lore.kernel.org/linux-iommu/20201125135535.1880307-1-colin.king@canonical.com/

> 
Thanks
Barry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6ec5a78ad8cd428dbbf023c9b3126c54%40hisilicon.com.
