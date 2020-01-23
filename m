Return-Path: <clang-built-linux+bncBCPILY4NUAFBBF4CVDYQKGQEIJLEWLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDCB147287
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 21:24:56 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id c67sf1633738pje.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 12:24:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579811095; cv=pass;
        d=google.com; s=arc-20160816;
        b=iAHZLLxxs9ND7s3fJ7xuOkarrnHpMMdhlhZ0ZzPWnJJbsdcBRJEkyjensb4lRazhMM
         Aw5XQLdD+j5TT13MaK15n8fW4zT24XWXOTXdK8M/XqofcI9Njk1yKwKbKQWNc90M6G8p
         F8QI9JuZ7/SrgxD//j6OZ/D+xC68bN8H/3WTCgXC8tk4GHpqROdbLP0wxEJAGevmt+qf
         ITIDt4L7rwThAXJiiug63P0U/+wxpiqGjRxRZ+wLFyQgIxIUm1mH+DUqbMAqSUX30cyM
         Dz6mVBwcoP+fp70/MtXGCGf3GCxInBMNc5v9PDXty0+/wy7BD/LTGMpc/EZT3xk5dmko
         nXFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=w+luaLC8SdqEdvY48mkN37Gruwjg6YVn2RpKlIGTiTY=;
        b=1LFBEFdjM3fvc8j6FzEeEzXlg/pkzhY+UFP+kud4dHTzC1GIK+d98E5Dz7IJLIHGIb
         MdI6DJaaMHVQYryg+J2gta1SZzKVZUnvEd196YjCzcKnoWBZyrn8cwYV3tacHWUcZvh5
         zrr9izgHIZYX5UtZKOKCeUMM+dnU6pMKayslxWz4rIO+UBWNcJIr2JMF5sINZwY8n8EM
         HctVBWtZwAjC3yNUu79HRZbvm2ogH/uaId5pzEN9MiKQ8ZHPT8WRebbsuhMOM3DA1Quq
         ueueuOXyANMa+J0paBbdA5WjNk4elWMdSScueVUFjsoOwURqe2g7a+wip35MVN+it2kR
         gNaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UBJgIX8T;
       spf=pass (google.com: domain of longman@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=longman@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w+luaLC8SdqEdvY48mkN37Gruwjg6YVn2RpKlIGTiTY=;
        b=RoV2EEmXNs/9CIYcqLQl0OXVsiVfvfth2hkj0Jrd3CtgvxS9Djvf0LR2HxnUwjpk8G
         QQT+yo65U1Em+C7CqBswgr0VfKo9X7lGpPoZ64aGuavw5T2TJpFKUIW1qCRU8n8ZXhhE
         C8EKr3svttnjx48Bo48RuYvpZtr+m28YgWDWdXueKpVhr7KY7cmJwoAHkoU7WuU0ypL0
         MzuHLvv9kS18BuBJZs26r6NcCVokC5KYhwqtpq78VP4V0w4ZY5Gbp0woaIianVOQVzKm
         VZIQACAPB3GdJ4qvCc6TnPgDfdqJibDRvjoQCy/jrm1VQnL2V7WSUYB5DqIdc+sBMde9
         GVCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w+luaLC8SdqEdvY48mkN37Gruwjg6YVn2RpKlIGTiTY=;
        b=j/QneXXQ598soKsr9d1kAZdztv5b6/fyea4m0xLtcW1plY6Tjbr29q6aLTYrt9Ts38
         btS4EaYYjYlMIGtqNJDJULSsgsMl9u3L3MeKUwL+Dy8W7NaOgOsDcrHWBFYEkNw7hBeO
         BWuyQTh5rz3jZV/7eNf7vI8Hz3wUep+2lFBQK2/pAIrjEJANMpTspIRoO5N9CnW4PfeE
         KDS1y4VijjFDBsgCRmnVwdqB1wmQ1UK5ywZ1Gxtb+e0AeBNkLcJ37gbHoVAr32yD2WZO
         hQNWKqtRXdjISrVDRUoZ8VZuPdqA4MwCbnRjfYci/0ZNtdMMgB2FbDVYqyC31xDgbheB
         IUUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWMKbaNyTRLguLCk9veOL5NZnpMAnExherZCnnuce/9TB/8ej9y
	OpGc1n8ir/awfqJ6o1RMSLI=
X-Google-Smtp-Source: APXvYqxndr9HQqN3XY3P/5w7gOsIH60ZvReYeavc9/NsY5x7//R5Rl2cKo5JNfyeCKL9E0iwxgL26A==
X-Received: by 2002:a65:66ce:: with SMTP id c14mr172792pgw.262.1579811095369;
        Thu, 23 Jan 2020 12:24:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:28f:: with SMTP id az15ls3529pjb.3.gmail; Thu, 23
 Jan 2020 12:24:55 -0800 (PST)
X-Received: by 2002:a17:902:7088:: with SMTP id z8mr18408446plk.6.1579811094967;
        Thu, 23 Jan 2020 12:24:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579811094; cv=none;
        d=google.com; s=arc-20160816;
        b=BuP9BNNIQr2sek8ocRrcBaO7Qmbpthc/OdLpojRCuTzs6cm8yPEgmONpXjUzkbttqn
         uUH1N5Zf4SJqPU1aLfkI5z+oKk64ZR0OGwn0cl14GfSqrAbk6I9PHCDQktBP9JBWFt2u
         N69ZWG4FnUND/ic4KVzfU2aDOnY80lzIMLzB10KaT93nsY7ZktsEmKfBqotgqoGSGahk
         YuS/c08afNkBOVBJlWH+WorUSd9aqTeIJXH67y+xO/Yqj6ijGDUSqntUh6PrADiPnNMt
         FJq2tcZ8y4zO5FJcuC9j1Hl6ckXIkX5/pTmCVeIjKp3gUHGFXyF5lPxCzAcYtggKqzVG
         ujEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=1SjjdO8NbXcvcs7b4lE6Oq279Dfr2cX6WVtlzprN+W0=;
        b=vVUZxi5ZwlITNeKjYvLeX5xYKyPoomySpltgnlKEzRMtrxolH1d0WjQ2dgt5145FUG
         d+s6Kwv3c2h/Fc15TCX6IHU4/oVHWplX/rVs6C+hFoJJl3JdqVyunRlXCEbCCOdVMkkk
         VcBE4jM605kgBFY43c4MsGNT5Aiq/1mG5A4Ua6/U0YlAOGihyWhOy4aIXJ/YAiEWjLbs
         rVaZjCFWWq4Nb8hhgZC5zG9EUprN49zZayb73HL/oC6iGRrXYAsTA7IH/nUBBT/K8J3Q
         9kXSINJwCwJ8Y2fioI6VeQ792Og4n/p/Tj4qctJZ2x40Oui2/JGFc+/M1a7P3Y5IfmkL
         sy5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UBJgIX8T;
       spf=pass (google.com: domain of longman@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=longman@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id r18si176286pfc.2.2020.01.23.12.24.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jan 2020 12:24:54 -0800 (PST)
Received-SPF: pass (google.com: domain of longman@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-IWS83qy2NVClpQhaZAYd0A-1; Thu, 23 Jan 2020 15:24:47 -0500
X-MC-Unique: IWS83qy2NVClpQhaZAYd0A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8B25F800D53;
	Thu, 23 Jan 2020 20:24:45 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 11E6B5DA8B;
	Thu, 23 Jan 2020 20:24:43 +0000 (UTC)
Subject: Re: [PATCH -next v2] arm64/spinlock: fix a -Wunused-function warning
To: Qian Cai <cai@lca.pw>, peterz@infradead.org
Cc: will@kernel.org, mingo@redhat.com, catalin.marinas@arm.com,
 clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200123202051.8106-1-cai@lca.pw>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <b068ae77-7681-a885-e2ba-6894aab67189@redhat.com>
Date: Thu, 23 Jan 2020 15:24:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200123202051.8106-1-cai@lca.pw>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: longman@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=UBJgIX8T;
       spf=pass (google.com: domain of longman@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=longman@redhat.com;
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

On 1/23/20 3:20 PM, Qian Cai wrote:
> The commit f5bfdc8e3947 ("locking/osq: Use optimized spinning loop for
> arm64") introduced a warning from Clang because vcpu_is_preempted() is
> compiled away,
>
> kernel/locking/osq_lock.c:25:19: warning: unused function 'node_cpu'
> [-Wunused-function]
> static inline int node_cpu(struct optimistic_spin_node *node)
>                   ^
> 1 warning generated.
>
> Fix it by converting vcpu_is_preempted() to a static inline function.
>
> Fixes: f5bfdc8e3947 ("locking/osq: Use optimized spinning loop for arm64")
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
>
> v2: convert vcpu_is_preempted() to a static inline function.
>
>  arch/arm64/include/asm/spinlock.h | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/include/asm/spinlock.h b/arch/arm64/include/asm/spinlock.h
> index 102404dc1e13..9083d6992603 100644
> --- a/arch/arm64/include/asm/spinlock.h
> +++ b/arch/arm64/include/asm/spinlock.h
> @@ -18,6 +18,10 @@
>   * See:
>   * https://lore.kernel.org/lkml/20200110100612.GC2827@hirez.programming.kicks-ass.net
>   */
> -#define vcpu_is_preempted(cpu)	false
> +#define vcpu_is_preempted vcpu_is_preempted
> +static inline bool vcpu_is_preempted(int cpu)
> +{
> +	return false;
> +}
>  
>  #endif /* __ASM_SPINLOCK_H */

Acked-by: Waiman Long <longman@redhat.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b068ae77-7681-a885-e2ba-6894aab67189%40redhat.com.
