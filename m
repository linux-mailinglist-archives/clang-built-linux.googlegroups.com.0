Return-Path: <clang-built-linux+bncBC32535MUICBBZW5YOBAMGQETZHT42A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF4A33DB31
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 18:46:15 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id o206sf10224305vka.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 10:46:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615916774; cv=pass;
        d=google.com; s=arc-20160816;
        b=j76z1PqZWIuVVpH10+0t75mxaopcG5TwPHoC+vigBnDkXpb/TQNywlNq3chGPZRw1d
         qWdnhCN1NNI/m/zhu0DQjBPrDnqVdRcazFwqobwKD8Asb+kwIZS8xQSlv345rOXTF8MF
         d41FcRIHLyPKbX4eeSmzlzHCdMg99MrP1EzbSOpu25bvr9wEnMKRFNeNtOytWDjK6kMf
         fm0x31+f87fefShZ2Sk30ZsT7VwopkACcwSHg0qEC/mjfYSe3eHdM+dgd9i2nlYrqEYs
         xpysZAfa36l8dJW/K6fjdovCqHIpNqAxRDLQfxYPXJ0OZs07PWO3I9xMKfRaGW6qMTuC
         ny8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=j7jXhLETqz+exSCZtpN6C65G8S17VK+cGmxkz4Thr4o=;
        b=yRpbK/HI4rt+8Sb7Pauz6ON+K2uAos4JrEh4pSxKdhQVIyyApD+BIYmlwmNcyjqwRd
         jDqwIqQCeQh0Dqt9lXR/ScEZYJWzd9tZ6dW+G4EQVOTXRS/PwNbJlLLHbcPPbqp1l2GL
         eOp3chRYDVlzmvAieYNUI6o4NHQSiaU6C1Eb3G0thlJhDOsjfcdKPflHwmtnQXv8YwYl
         359fhhUogBxu1Zv6uL8teyy66FxAPpbP9OlRn7YSy6LNW2BkSd9h0YB1PsvfUomynfdN
         K4T3fAimnqJpboKSt2Ilvt3IK6sr1k1gtHwowqeOtyGyr1GPi/9uzp4MdYWYV6wPo+vP
         69fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Dj3POwKl;
       spf=pass (google.com: domain of david@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j7jXhLETqz+exSCZtpN6C65G8S17VK+cGmxkz4Thr4o=;
        b=hg5sqzAIOwTK/YegYcfc9ILEehpIGstXICYDX7KEplSMUOJTMrrFPwgw1l1hz5tgGx
         Td36qCoptP2HiS4ae6d1NtOy7rJVPrk5JQMAhsOK3/6azsYc3vtNnLM2Lp9qVS2lr/Me
         VKFdSf9DkYn0DF1wSir/SSrHmy98htSQIkAMyun7PcOWAbSOjJKCCtiWWBG1kV6DvFMB
         8pEbMI0x5hCr0Kl6ztEjpeVAqBMhdEaCAUgj0NU3Rkbjt4u/zwJWDUgneKVp0AWiVznv
         WHM1Biqy83YsBeoTajbmref81DjQ2Aq/Xo1Wn8FLsXQB/CfzzOkhu6UQJs+Kef4+ywqG
         K4bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j7jXhLETqz+exSCZtpN6C65G8S17VK+cGmxkz4Thr4o=;
        b=nuHJc0Qp2wGN9ssRLYbkbvG3HG6WlOZAV8YyFnpt3urnpbjoSZK1+u3RKbzysSwOWg
         OnRpAfDmaqk87Q3AQZfv0TXDaF9/MMEwdSzC5tdqpt3CqvCJWRnzm4k8ZBlCFuVhpRQx
         v22JuLZx3oEdRUsjSRd8ylWktFXSOA1ikS5cUDeu03qCF+KBVWuC5LNa2gcbdqksnASZ
         TSxyxuyUjFtfQtWzmS3yj347737jaJXxnBl3YG+vUJnk1v5CBn8YXyhr1oNQW414gy2e
         NTNoXzd5mSMuz9hLztkBnqEZZj7avpjhBL3z+dY1w9oUisxw0y+4PU6BMXNNPTbLJnO5
         05WQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Ftfb2lpBxAxE/S01dflMQfc7Tie5AjYvZAUrKvcQUWES7jxQD
	T6Vyr4diy7jujW3kv4Qqams=
X-Google-Smtp-Source: ABdhPJwxtqnstTxpXE7StptaE5fYoJ/3SIOEl0n5VKDDAeWVfXy6T6Vn0ZGY1wQ9lDgT19eVMbgnsQ==
X-Received: by 2002:ab0:3b91:: with SMTP id p17mr167335uaw.132.1615916774340;
        Tue, 16 Mar 2021 10:46:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6243:: with SMTP id w64ls2577008vsb.0.gmail; Tue, 16 Mar
 2021 10:46:13 -0700 (PDT)
X-Received: by 2002:a67:eacd:: with SMTP id s13mr833562vso.3.1615916773817;
        Tue, 16 Mar 2021 10:46:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615916773; cv=none;
        d=google.com; s=arc-20160816;
        b=NjoKucsDYGQiqfWj92sF9cYa7KrrXzPXkauxpdakTCzrK3xnTRCcXaUF1jpRn0BF9U
         0I764j/XSthqlxOb1Za+pE4ZxJenPUA+Ek9OaK7oFumP1NPDZFJ23fw73HDc2BHHcIzQ
         2ezYAhpdyGrMdxccZVP/ZP/uEaR1gxXi9r79UBayuR1B13iTIIq3oeq1wKjx5tV2TDpD
         UIrs97682NdbsEjx1r9vd+ImPPqohzxbkqqM5r/eZzzrvVA1gtDe019TnxZwuiE7jPnM
         2ajo6tl1hhJWygx1qxlgSGnP10CSnAOKxVOZvLUNxqPCVZZE5qkwu2PHsC5A4oeSQO22
         M8Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=n0Rc9AlR5VZpjh6F9+qzo94812lXmZf2NLEz1UriYA8=;
        b=dyssHI08N+yGOdG0QlLBnHGpC485mTeATDWSfu9HvZR5gUyOWQ4OHbGvUQRyKx04Fv
         Le2W29ogEZVzcdsVcjndwXpAXTCdO0LlN5Lw1e9+dI2B8oh9XSDvtyyfoaWHlVKt3jZu
         rKkRpsWMlu5EGsaIC7qiRyV/MVYQ2rH8yv6U/VDyAUKcTs+frDwCikuP5mmh7jr0PDEp
         V0CeR1YJitr6JbOxgR8PUXef2SMZ3bY0JbI42UTcTvJ9dLf/dHWGkU8ltFqr6Iw2bGtK
         6NxfoYxemV882oC1JBIkKxyVTTYmIz2IiyR68FXCS8yMHn4nrWEsTqrSxPAkIuVb7wC4
         cUKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Dj3POwKl;
       spf=pass (google.com: domain of david@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id n3si1208139uad.0.2021.03.16.10.46.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Mar 2021 10:46:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of david@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-279-nWhwtQY0MxqdtWFpKlBVrg-1; Tue, 16 Mar 2021 13:46:09 -0400
X-MC-Unique: nWhwtQY0MxqdtWFpKlBVrg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 508B4192D78B;
	Tue, 16 Mar 2021 17:46:07 +0000 (UTC)
Received: from [10.36.114.203] (ovpn-114-203.ams2.redhat.com [10.36.114.203])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B328A5D9C0;
	Tue, 16 Mar 2021 17:46:04 +0000 (UTC)
Subject: Re: [PATCH] memblock: fix section mismatch warning again
To: Mike Rapoport <rppt@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Mike Rapoport <rppt@linux.ibm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 kernel test robot <lkp@intel.com>
References: <20210316171347.14084-1-rppt@kernel.org>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <f47fe1eb-aecf-d12c-ae30-76331227f9dc@redhat.com>
Date: Tue, 16 Mar 2021 18:46:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210316171347.14084-1-rppt@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: david@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Dj3POwKl;
       spf=pass (google.com: domain of david@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=david@redhat.com;
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

On 16.03.21 18:13, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> Commit 34dc2efb39a2 ("memblock: fix section mismatch warning") marked
> memblock_bottom_up() and memblock_set_bottom_up() as __init, but they could
> be referenced from non-init functions like memblock_find_in_range_node() on
> architectures that enable CONFIG_ARCH_KEEP_MEMBLOCK.
> 
> For such builds kernel test robot reports:
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
>>> WARNING: modpost: vmlinux.o(.text+0x74fea4): Section mismatch in reference from the function memblock_find_in_range_node() to the function .init.text:memblock_bottom_up()
> The function memblock_find_in_range_node() references
> the function __init memblock_bottom_up().
> This is often because memblock_find_in_range_node lacks a __init
> annotation or the annotation of memblock_bottom_up is wrong.
> 
> Replace __init annotations with __init_memblock annotations so that the
> appropriate section will be selected depending on
> CONFIG_ARCH_KEEP_MEMBLOCK.
> 
> Link: https://lore.kernel.org/lkml/202103160133.UzhgY0wt-lkp@intel.com
> Fixes: 34dc2efb39a2 ("memblock: fix section mismatch warning")
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> ---
> 
> @Andrew, please let me know if you'd prefer this merged via memblock tree.
> 
>   include/linux/memblock.h | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/memblock.h b/include/linux/memblock.h
> index d13e3cd938b4..5984fff3f175 100644
> --- a/include/linux/memblock.h
> +++ b/include/linux/memblock.h
> @@ -460,7 +460,7 @@ static inline void memblock_free_late(phys_addr_t base, phys_addr_t size)
>   /*
>    * Set the allocation direction to bottom-up or top-down.
>    */
> -static inline __init void memblock_set_bottom_up(bool enable)
> +static inline __init_memblock void memblock_set_bottom_up(bool enable)
>   {
>   	memblock.bottom_up = enable;
>   }
> @@ -470,7 +470,7 @@ static inline __init void memblock_set_bottom_up(bool enable)
>    * if this is true, that said, memblock will allocate memory
>    * in bottom-up direction.
>    */
> -static inline __init bool memblock_bottom_up(void)
> +static inline __init_memblock bool memblock_bottom_up(void)
>   {
>   	return memblock.bottom_up;
>   }
> 

Reviewed-by: David Hildenbrand <david@redhat.com>

-- 
Thanks,

David / dhildenb

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f47fe1eb-aecf-d12c-ae30-76331227f9dc%40redhat.com.
