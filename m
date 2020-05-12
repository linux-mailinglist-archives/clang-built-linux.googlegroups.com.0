Return-Path: <clang-built-linux+bncBAABBOWR5H2QKGQEGPNNVWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 636361CF140
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 11:13:30 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id f2sf6646012wrm.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 02:13:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589274810; cv=pass;
        d=google.com; s=arc-20160816;
        b=j6ENrJhEzv7cNQUbP8eQ4ix0vyL/cJRimHQp7NyhiWa0LBqWZkv9YjJ8K+dli2gMiL
         wMPtYurRQ7E5vUxuHe6BJ+dWBOmFNcHH8iKR/1G+2kVLSOvP963m5w17eZhnmtGd0EqJ
         hFN5jxeREvLl6/m+Lwegtg3x06i5wXXSf+z2Ur6rg45Sgm6RoHzZnsavXHKbOs7FICte
         vH/x8IbwCZhtu0TUr0BzboXu40HPfH24Ecf2ABCXIhIQa9ZgXjkHk+um/Z/j0hI3m1pH
         t9OgF8AsX+2tiadpUh79EQ0bYzjGIdZz1uT02W7GP15wXmRj74BoQp4U3zsFJFyM3hHz
         VhqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=uXDeB52g7lGkFmok9ceUvqk5WDrHtXiFQ64iIba02Fc=;
        b=Ts3UTBc3NZB3DSL9T/vovyVuHUBvnPbZi9097DDsl3txvG/qtFMUB7p6RGfdYzLFkb
         wCAsk9bZLmx7ciCc6VEW9fV+/DCBC/eSi10iV43Nb5ebVKbv2Kr9sRjoyE9HzoSjMb7E
         axPzrN+Qqo9tm7oB7VfTMuvzrxkzsC6A4GScgERJAxlaQfi8Pbltkck3ch7m3XIYcjln
         uIVe++gt5enG1qq04UyPbu7bjupzHrtlLlKojNldHcxw2rFIj9ycs+Rrdz/4XOyLsYvg
         bJTPqCIxI+qGspBqy3Eb5G7olerxpBBPtNccwnuQw7gZXYC6qe+tyjAA5dCJO3ERVzof
         Dxtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uXDeB52g7lGkFmok9ceUvqk5WDrHtXiFQ64iIba02Fc=;
        b=D4JQHhVhyKM7iDtXnTHQKbGwPQS9pxafu0hxeJhNTmRu3lVgsth1EfutmLHPSVG/gt
         KfSUHWZyuHycu3pJkXCLDf+YEhcCYnK3o4jslrQdzAE1UVPX/DA3JPeiGcxgNWLoqeLZ
         ac8+IcUFMhSKn4rRyBMTzn9iWZSHpwjCZIrngLHS3E3RKhqB29h5eRYR6K4TYdpUetx0
         wy8VkNuHXJVmj4+Vxh40sz8NxFEKg0o2n2dZH0/8RawCZ6sf8htRt+pTIev6idIpg6lm
         MulOBuIrQq/rP4dvbYTq+HsnSqsz6a0rzy36/CFPm+RE+lyzyualnZkmHg6l9rm8LfGg
         wJTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uXDeB52g7lGkFmok9ceUvqk5WDrHtXiFQ64iIba02Fc=;
        b=sJ7bqYkHYT8qzdxa4yO6PCi0KpD7VKCIEGz2aWJmMcQAYsXUgDmO8hnamVOQUWjyZd
         gwjDdj4ocB1lXSvB5vxyBIT6fPSWSpm3o+flQN4igmJhz05wnSjwNPNhS4JfWs/8H3iM
         RWZqmLmNlPXXK1uF4eiKpLmmBulffb2Gdn1HGeWvK0BnWao86WbJCHMec4ZC8TOgZR5f
         5Iy57pO2H7G6v4SFNYmZgPBSl8RAiZVXlbkmuVTD11afIjSo3XMjTdwM93j+UJXkcTd9
         w1wDmhGUuB9yCxHQ2HO2sssbjyxP845KpoQJpPpZD8D/NrGvu3p16d3Y9kgETtYbo0fM
         8/2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY5pxY89XIikJzD6wIN/t6s2HZmJZB926SINXnrVuqxCOLiG+Wu
	eZd+uV7XbEb36gNDuf1q7p0=
X-Google-Smtp-Source: APiQypLmzuwHUr2FuT8xVciKupLNguSSQpV+BBZ6H8SvrGi8I05lgp+MJtVf9wuZzTXi60z9xqMC8g==
X-Received: by 2002:a05:600c:255:: with SMTP id 21mr21531430wmj.154.1589274810175;
        Tue, 12 May 2020 02:13:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9544:: with SMTP id 62ls8156800wrs.1.gmail; Tue, 12 May
 2020 02:13:29 -0700 (PDT)
X-Received: by 2002:adf:f7c6:: with SMTP id a6mr13069480wrq.296.1589274809853;
        Tue, 12 May 2020 02:13:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589274809; cv=none;
        d=google.com; s=arc-20160816;
        b=baVcfsBxpcPmAjV3EffUoHgz4II1ucLjOC3nPI2xGkM+WS/4a1a6r9B4J/wp9ns4sO
         bBvm8jEsx0oS6tm5SFodPtqdzc+fNYEiDmDz+hLVQi+5FMzYgnYZLnJly93c0k9+4tVn
         xabqX5L8kHntihQFsSJTtZ3DEqqSlYE0EK7zuM0X2g+IyabylYjcgFvdJNu+xiiqKL2+
         PHxN4yhE0r9GAdE35IAS3cpxbKDMi9I98xRqMWTXsHd3j9QUgkAtDRskebnd9AmDdXDK
         mARmbqTRO0FCWHiw/ZWXb0kTkPsj8h/g3bw714IVZW/OwlbD4z9rv24/z0n4Z3+msjgQ
         a31A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=4b+c1fTMBwQ/jF7DxdkfJXeVefpTtTZ7Ht4HQ0/06UU=;
        b=TvjFKCjuSvEZwItRheZ2GS0IRVLqMqwk2/Ihqjcu4Kez8yCV3l+gVetEGC+o4tiB2F
         MS3z6qNCtpW70TI+CpsCxY5joxOmdX4WSgIXjE1tvZJTcTMeH0C/bx+PV2llU5452wS+
         hSC4JZQruKPk/hfozweUDJ979WShg5OqiXxWocmbBddVO+qzQ3pEf7TJDPYGkPkLTh4X
         DTN39/8qeItMmWk0H63AH9rNMzRN4nzgskd8B+jpSBPA3wSEvPwB/MVLyhoI9sM+9415
         6LoD01I4Aah2ImKCJ8DulUE9Fl1fUwe9xlwJ5vblaf8DA1Dnf/DHiBLxTK80nYOtIOBF
         Hl+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id q17si1358048wmg.1.2020.05.12.02.13.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 May 2020 02:13:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id CFD8EAC6C;
	Tue, 12 May 2020 09:13:31 +0000 (UTC)
Subject: Re: [PATCH 1/2] xen/xenbus: avoid large structs and arrays on the
 stack
To: Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 xen-devel@lists.xenproject.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Cc: Stefano Stabellini <sstabellini@kernel.org>, Arnd Bergmann <arnd@arndb.de>
References: <20200511073151.19043-1-jgross@suse.com>
 <20200511073151.19043-2-jgross@suse.com>
 <965e1d65-3a0c-3a71-ca58-2b5c04f98bce@oracle.com>
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Message-ID: <aa93722b-100a-c750-cf51-bcaf9defbd03@suse.com>
Date: Tue, 12 May 2020 11:13:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <965e1d65-3a0c-3a71-ca58-2b5c04f98bce@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com
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

On 11.05.20 20:01, Boris Ostrovsky wrote:
> On 5/11/20 3:31 AM, Juergen Gross wrote:
>>   
>>   static int xenbus_map_ring_valloc_hvm(struct xenbus_device *dev,
> 
> 
> I wonder whether we can drop valloc/vfree from xenbus_ring_ops' names.

I can do that.

> 
> 
>> +				      struct map_ring_valloc *info,
>>   				      grant_ref_t *gnt_ref,
>>   				      unsigned int nr_grefs,
>>   				      void **vaddr)
>>   {
>> -	struct xenbus_map_node *node;
>> +	struct xenbus_map_node *node = info->node;
>>   	int err;
>>   	void *addr;
>>   	bool leaked = false;
>> -	struct map_ring_valloc_hvm info = {
>> -		.idx = 0,
>> -	};
>>   	unsigned int nr_pages = XENBUS_PAGES(nr_grefs);
>>   
>> -	if (nr_grefs > XENBUS_MAX_RING_GRANTS)
>> -		return -EINVAL;
>> -
>> -	*vaddr = NULL;
>> -
>> -	node = kzalloc(sizeof(*node), GFP_KERNEL);
>> -	if (!node)
>> -		return -ENOMEM;
>> -
>>   	err = alloc_xenballooned_pages(nr_pages, node->hvm.pages);
>>   	if (err)
>>   		goto out_err;
>>   
>>   	gnttab_foreach_grant(node->hvm.pages, nr_grefs,
>>   			     xenbus_map_ring_setup_grant_hvm,
>> -			     &info);
>> +			     info);
>>   
>>   	err = __xenbus_map_ring(dev, gnt_ref, nr_grefs, node->handles,
>> -				info.phys_addrs, GNTMAP_host_map, &leaked);
>> +				info, GNTMAP_host_map, &leaked);
>>   	node->nr_handles = nr_grefs;
>>   
>>   	if (err)
>> @@ -641,11 +654,13 @@ static int xenbus_map_ring_valloc_hvm(struct xenbus_device *dev,
>>   	spin_unlock(&xenbus_valloc_lock);
>>   
>>   	*vaddr = addr;
>> +	info->node = NULL;
> 
> 
> Is this so that xenbus_map_ring_valloc() doesn't free it accidentally?

Yes.


Juergen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/aa93722b-100a-c750-cf51-bcaf9defbd03%40suse.com.
