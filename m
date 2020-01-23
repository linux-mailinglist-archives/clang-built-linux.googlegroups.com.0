Return-Path: <clang-built-linux+bncBCPILY4NUAFBBQFLU7YQKGQEJ2I47RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A668146F71
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 18:20:02 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id l8sf2114625pje.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 09:20:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579800000; cv=pass;
        d=google.com; s=arc-20160816;
        b=S2OnpYz2bHZgpxv3PB5zus/txy0IhRRdPSoFx9w6rrw6esouVc7b7QDxPGTUHCk89N
         jtMKRUofaQMN0YeKQIIX8pG9iKctwOJw1eKobTI/8R7BOrqP+EqC3W93sSJtPDkurip7
         5Mxxh7qmuZiE2JnIfF0ORmMcYusdbhRg6pulnGU10dWt4JCbn560ZKCAAYM9G/8WUJk/
         4hzm+buTTQK8OqEbTH8QKsYT5/vhzVTkXunjZsplHTXf/gwKxn+3bpMOXgsuZaqPInai
         hEaEwyG8PY5uBybu6yQk1KM+b45V3KmT80EBbBwvuYsqltGOW/l9nEfdh658XL3p0lU1
         R9vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=EBKKjNjszzU66EffmaSyl4x9bmfYl7yK8m1R/8L+Lxg=;
        b=t+55YSuhA1aNSA1aTycPRxs+zQIJfz4mzyrae4QHk64rdfGHSeTCFJqfq4TLt179x3
         di/F8pU6M746YqwXI7ToGQ468WdDl6iUXdGbqTEXN20KktR/zECgQQOfMhZe/u3x6RIv
         +fHfN8o07jdJXf5b9pUS9HjtX6vVFPUyDmWH7qZ9gggzV4//3sZSst48+gwHZtT7pVhk
         TdZgoPj32rhXQK5DB4eA2j21W29/oNUoGf4sZEXeoZF+UVlQkw4bgRBDLIZC+f6A6D/a
         pvH7GAjTnb8GTFdDMaygrBbIbCX54WFL4IDvQ1USsM7jvARkZAXRv8WROY1Wq+zAZmHE
         Boxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gxWGYdJM;
       spf=pass (google.com: domain of longman@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=longman@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EBKKjNjszzU66EffmaSyl4x9bmfYl7yK8m1R/8L+Lxg=;
        b=fI/3U73GFUTvmLkU6Am5m/9kp8VkUdQrRsr9sZAqubBYA7IvhSTTJZk2byE1+pJ9LJ
         LmHHm0Cpvx6KmDMse1yvn7NMV5Z3TOpYu6ACjNUyBfZ1ThLklYSwC7UFBZssnFMk1hlb
         7vEnVO+LFOPa23/YjxRTCDHOdZbhfqibvzrDwYxnvSigiS2XZslKcUqli8Il58x1/1AA
         HnASuAteI2MY0Du8qTLRKgltNg8aQdWQHItP5AgfnLSHJkwINFZ/ZbXXe24esvO6fcSq
         ipXvvP7hv1JIHf30aHBCfjCsu5Ri8DRz+EnSEOvG0mlmwY8mjiqxkg+/F4EViNH5C7nX
         XJKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EBKKjNjszzU66EffmaSyl4x9bmfYl7yK8m1R/8L+Lxg=;
        b=WtjaMXiDs7dH+jaqnGMLIOnvvx/CHxznnPR1I0JzX1xhx9XNrfw6GbDirRjo3Q6hwA
         VmoslgLoFeA0HuUlcZrhqieE0gmJSVH2ELOR3QMYNG2iQ/QUstVEULTo9P5CfrbdvwbL
         1D752YAHz/wlflZO95poUs+9JIxY0/pvQDBuZGvtsjx5RYFppMZEB9PnFoTPqrGwymZh
         ZfXzQ2zAX6UUxBUgrCduey4FcdnUpgRdyvCWLBUOpgyF3JhhOf9auwHjhRCKY2U5rnNA
         Wbm6em6WjRPig3N3B3bK1imEI4RMBp3nXMp8krTGwVM9Y/sogUnZa8YLi7+XcZE6GLUw
         FzQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUeLFFwkmam3g0Ta2zvGLwES+GILDBvuJfUX0LisnFj19XL8o1p
	0hZfjLjW5EuF9VJ8JiJ0dd8=
X-Google-Smtp-Source: APXvYqzeTyn+KlI/LJ2mdchsIwW5XLLExDuCuEGeWSQtZ8PzbrCjedpX2MQ0nJB73ErlsgwQshcpPw==
X-Received: by 2002:a63:fe43:: with SMTP id x3mr5246017pgj.119.1579800000482;
        Thu, 23 Jan 2020 09:20:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3ae2:: with SMTP id b89ls1837585pjc.2.canary-gmail;
 Thu, 23 Jan 2020 09:20:00 -0800 (PST)
X-Received: by 2002:a17:902:6904:: with SMTP id j4mr17955901plk.88.1579799999965;
        Thu, 23 Jan 2020 09:19:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579799999; cv=none;
        d=google.com; s=arc-20160816;
        b=QMvCghGLO9dvyVgWL/+5D8rMjnxrCdEy8lb46WNHg/xLoz9aMGOrwDTCl/FO9/C6BI
         FhdQhWNPY1BQfOHIkkbqOWB5mxUXrwXMbWZrAZyRjL0rq42U1ktudvDxBeUp9IbCxBT7
         0i+yw6Bm23rsz1pXhbyzkJQweJQG60E4bfbcrBzgW4H/0KFq9GG1HN3PKT//WWmcewPd
         fb+5LuKvJ2XKMewFNsMQHT10dgzfPxInTI38g7+M5lxAwugrWy5L+krqX+EtIo3Hd/Ma
         5+ff40GlPCMQdbdhWA7o4vlAxktJT26yHW6fmuMzBDIH0v2njJVgFxQJotg07tAFTCI/
         /XAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=2gQFOE3eZCJDYvBNgH30Kf453Z08E1vS+GpfLhJCCns=;
        b=Qwl09YaJG3ZbiPClGEUhE2O5JKjdg56QZQ8ZyCxvgcwK0LJuW/Fv+PqHrvrjVDRCYH
         UhA45axMZp1N7gaY6T68cUVoUODp+O0XYJ2/aRQ1s983c8yCaC+9wlcqQfwIxcwEDHpm
         +NNVTDQm8bTT9NM2V2Z9DevGS1ndm/QT+u9ceY/eWSjFPoIWLJ3mrfMKC2f6XdENPNBX
         DjWnDjHMNfh6UfxxHVMObvgZW02oqxX4rhYpCEaCoHRBGaO6NVQg6dQ6LihBOuuuo6Jd
         x7THtoIf70od/Pd8ikxOxr3Lboi23j6QJPOMFMnq3Xy30z/4sZ9IrSfOnRQ3YshzOTFT
         QBhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gxWGYdJM;
       spf=pass (google.com: domain of longman@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=longman@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id o9si138223pfp.0.2020.01.23.09.19.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jan 2020 09:19:59 -0800 (PST)
Received-SPF: pass (google.com: domain of longman@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-87-Nj5iUlfuN1GS-F4u-sFSkw-1; Thu, 23 Jan 2020 12:11:05 -0500
X-MC-Unique: Nj5iUlfuN1GS-F4u-sFSkw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 64AA618B6396;
	Thu, 23 Jan 2020 17:11:04 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8B4CB8CCE3;
	Thu, 23 Jan 2020 17:11:03 +0000 (UTC)
Subject: Re: [PATCH -next] arm64/spinlock: fix a -Wunused-function warning
To: Qian Cai <cai@lca.pw>, peterz@infradead.org
Cc: will@kernel.org, mingo@redhat.com, catalin.marinas@arm.com,
 clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200123162945.7705-1-cai@lca.pw>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <2fe3a534-feb6-490c-71c6-208607e6cdf6@redhat.com>
Date: Thu, 23 Jan 2020 12:11:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200123162945.7705-1-cai@lca.pw>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: longman@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=gxWGYdJM;
       spf=pass (google.com: domain of longman@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=longman@redhat.com;
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

On 1/23/20 11:29 AM, Qian Cai wrote:
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
> Since vcpu_is_preempted() had already been defined in
> include/linux/sched.h as false, just comment out the redundant macro, so
> it can still be served for the documentation purpose.
>
> Fixes: f5bfdc8e3947 ("locking/osq: Use optimized spinning loop for arm64"=
)
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
>  arch/arm64/include/asm/spinlock.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/include/asm/spinlock.h b/arch/arm64/include/asm/s=
pinlock.h
> index 102404dc1e13..b05f82e8ba19 100644
> --- a/arch/arm64/include/asm/spinlock.h
> +++ b/arch/arm64/include/asm/spinlock.h
> @@ -17,7 +17,8 @@
>   *
>   * See:
>   * https://lore.kernel.org/lkml/20200110100612.GC2827@hirez.programming.=
kicks-ass.net
> + *
> + * #define vcpu_is_preempted(cpu)	false
>   */
> -#define vcpu_is_preempted(cpu)	false
> =20
>  #endif /* __ASM_SPINLOCK_H */

Does adding a __maybe_unused tag help to prevent the warning? Like

diff --git a/kernel/locking/osq_lock.c b/kernel/locking/osq_lock.c
index 6ef600aa0f47..0722655af34f 100644
--- a/kernel/locking/osq_lock.c
+++ b/kernel/locking/osq_lock.c
@@ -22,7 +22,7 @@ static inline int encode_cpu(int cpu_nr)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return cpu_nr + 1;
=C2=A0}
=C2=A0
-static inline int node_cpu(struct optimistic_spin_node *node)
+static inline int __maybe_unused node_cpu(struct optimistic_spin_node
*node)
=C2=A0{
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return node->cpu - 1;
=C2=A0}

Cheers,
Longman

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/2fe3a534-feb6-490c-71c6-208607e6cdf6%40redhat.com.
