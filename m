Return-Path: <clang-built-linux+bncBCINLKMVUUKRBV6YQ7YQKGQET75XXFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E28140FC1
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 18:18:16 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id g28sf15742937qkl.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 09:18:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579281495; cv=pass;
        d=google.com; s=arc-20160816;
        b=DRpmtLAkq+Fd026EbEGv0KVN0ja2f7S/AGrOUkarKWsSGDfsVFIwGPMCOYXL6RZV++
         JZi57QRx4kSKLZ5xex6LmrcIxDbLq5BIcjCUJJl/1G/2PbbAAiDBLutu2MHu2IjdAN7/
         Wrulbk0r2ILscyiiBBnbZWIdmewMq7v2rNiJy9OpQCe8lTR+ca2k6Yg+0TYnrlBZnmG0
         Nv8NyvuTzYYlwt8rNPOBHr5KIX97MfUQ+zH3TwNvV8LtPRe3VIdqQ+DkYuzTPOSDZHUb
         VzjoEztkm+hjJt4k96q2QqLTEotNza5G5pfgkWfIbyaGAWbzxkIUkGTYD0gAiu0fVayv
         MpIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=ltngzYu6FKHUdHZEdjLMGtJpmQt8hIDdbW27WnpB7RA=;
        b=JWq4ZCsglQNIY7ux7oEAplFQfRCf6p6wqzyI4bkIBhuYbBq/2RVKiwwglHItExnw1m
         R+zO9YQPkaBLcdVkDywwSf/fjRk0LfiVWzciDfvd3GJgZT1BA0N1IE9JyWhv3JByB1Hx
         JXN54gmBCYSMeVS4IB+sFI60cDbIPAEFKliOu6aijH3uBQfaUEnE7kxHcGwb4gNrZFWW
         7AnQrNTIZkCXUWVwAJtBGBdapzmpA8NZ35pu+S4ncYqxHZ6aKoEEDmWBT4CMLanDShg1
         dkZJTpBb7tMbgdX2XJ8zrSKbWIERGNq/RDHjs7Ppl56yhxDRm/Un3BklXzzBALLwGdvA
         4deg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dennis.dalessandro@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=dennis.dalessandro@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ltngzYu6FKHUdHZEdjLMGtJpmQt8hIDdbW27WnpB7RA=;
        b=WCWuTlqGcUKbJ/KuFYvco8IE8pwaQ36Z84uH/ebR/t7744n4aseTwraS/COajgmHWQ
         GK3SRe5bIKD7waaVHe7Y0NSrSI5Yxk2xBvoTvNpYzPXT3SoxGuhM+P66Itlmz4bdZBHb
         LCPKmpgBSiRFwRuWjr3mIs+S5b0WA867m3bmGtdLxvqL1XMJ/a5NxRj2TuOy1fLFohK2
         0Vd43VNACQz8LSfFf/0DeiOxO5lv70fnKEyw3e23NE19tqQHfqoCNGOiLhz2DX/gc2Uf
         Sad3LFqo06re/mTDVOC7XVx1O/IcKq4EDW4LZ9U6uOYhioBVkRAgrRf6Pmk/2DznCeBa
         9eWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ltngzYu6FKHUdHZEdjLMGtJpmQt8hIDdbW27WnpB7RA=;
        b=ejVVrpAiL9hFK1DrK2SwZIPr5bcwUIMR+QAuLl1ELtyNv0mBUhiXHZ0ggFvZpHPcsD
         ziEW8sjp5vsXxL1iAvApXgkgb1WC49O0vYzQoLgJQZpq54Hr9CJYPmhg4nSH3xcHGotj
         BIRFpCojPQMpGBX+bbalATDgkRx1n4ssk817R3hHtz1ZuGl9iNC0Ku4ON6t4F/esLuNo
         Zxaje1YmqmFQ375OIWUFKqjRV00nPs6kWB6F49EVH1zXtvsLlf/5HeuMH4zA3GtMHiBV
         v2gNJ7nmBsAmODiYPHp918nU++wnMozr8Uacs6PB9Lu50uuMUln8G+1QNkFqnzK7q8ZM
         obsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAViaSWsRHHpjSil9auhJ6FP4IXIDZkeGDkCUfQW9xTeaWxIdno1
	bR/Zx0JaNfZqSk01jjeoDqE=
X-Google-Smtp-Source: APXvYqwJKaisSJ9jP4B3hUNsIEoJ5d5VTeKlHQq11WwY1M1inK99CR+WUxyGbEw8XYFlJg811SWZrA==
X-Received: by 2002:ac8:1835:: with SMTP id q50mr8244005qtj.210.1579281495708;
        Fri, 17 Jan 2020 09:18:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4c88:: with SMTP id j8ls5871644qtv.14.gmail; Fri, 17 Jan
 2020 09:18:15 -0800 (PST)
X-Received: by 2002:ac8:835:: with SMTP id u50mr8606047qth.15.1579281495385;
        Fri, 17 Jan 2020 09:18:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579281495; cv=none;
        d=google.com; s=arc-20160816;
        b=qgEs0+4sHGIRlpP5yjj9EwaDj+IIAbqXr7DyEj56Qw8n9sbBToLgZlNobBQDDdoBTM
         rUcVaunLvhMA5j9Dl4M0OQBkuC5NQKqZFBZQOTypGRBKIu9v86pyR217BnvyH7BWsBrR
         zeCIdKgz3mdR282uutygFJX4qmoZQqUSQ7IdmtBGv3h3hbW66tKA5YcMvBEm6jgSHxO5
         0qAg9EBW8msd7d7XMt/w9SCDB0l3ZZUPyW6UG9cz+U6LtACrFMWP3PhCy0R6Vnr0Xsio
         9znErqBLjYVxl/hwFMjuLoSHQvCRmSLpjpsYMbaCQzmW9JFDXQELYBXifYu+L4LfRzW8
         tSNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=8kvPTbc/6MXDPYBshghg27Sov+TGgI0zqs0LA9FesO8=;
        b=GfKdNv2vfFzg7/WRWYrnv5sPxZ6bdYMWqyKBwBRxKNo3dwZXqa5efEuhlJCKZm9Mei
         UJGQNPC2kMv8EfJEpGMg8jMI7as5KMA0n71lqhcSM8v1RD9dRlBVSdIjpLWuJdK0/PZR
         HF9Tielfkd5VNW8NhOYVEIa+NjgR6ICHB1bMw/LVf0ozjRzPmSwF6a3UbMURnNc16IHA
         8INznopSJyVpbf8Ib1H98zmLmEmY5zeg7rmbXWJ/XqNNJLs6XKRmTRHKe2d+6Y2AiKcu
         hiZOKWsH26GlTM0ksNW+cDn+ajRn02TQZLVYoeR1ImfAnvkcMN3mTQV61rQiLWMkFq2s
         K+9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dennis.dalessandro@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=dennis.dalessandro@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id l9si1297906qkg.5.2020.01.17.09.18.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jan 2020 09:18:15 -0800 (PST)
Received-SPF: pass (google.com: domain of dennis.dalessandro@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Jan 2020 09:14:32 -0800
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; 
   d="scan'208";a="214543568"
Received: from ddalessa-mobl.amr.corp.intel.com (HELO [10.254.201.179]) ([10.254.201.179])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Jan 2020 09:14:30 -0800
Subject: Re: [PATCH] IB/hfi1: Fix logical condition in msix_request_irq
To: Nathan Chancellor <natechancellor@gmail.com>,
 Mike Marciniszyn <mike.marciniszyn@intel.com>,
 Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>
Cc: linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200116222658.5285-1-natechancellor@gmail.com>
From: Dennis Dalessandro <dennis.dalessandro@intel.com>
Message-ID: <2fb6f478-4ca5-0f52-a818-20c3d97730c2@intel.com>
Date: Fri, 17 Jan 2020 12:14:29 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200116222658.5285-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: dennis.dalessandro@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dennis.dalessandro@intel.com designates 134.134.136.65
 as permitted sender) smtp.mailfrom=dennis.dalessandro@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On 1/16/2020 5:26 PM, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/infiniband/hw/hfi1/msix.c:136:22: warning: overlapping
> comparisons always evaluate to false [-Wtautological-overlap-compare]
>          if (type < IRQ_SDMA && type >= IRQ_OTHER)
>              ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~
> 1 warning generated.
> 
> It is impossible for something to be less than 0 (IRQ_SDMA) and greater
> than or equal to 3 (IRQ_OTHER) at the same time. A logical OR should
> have been used to keep the same logic as before.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/841
> Fixes: 13d2a8384bd9 ("IB/hfi1: Decouple IRQ name from type")
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Dennis Dalessandro <dennis.dalessandro@intel.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2fb6f478-4ca5-0f52-a818-20c3d97730c2%40intel.com.
