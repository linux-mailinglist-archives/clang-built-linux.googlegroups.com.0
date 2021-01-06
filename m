Return-Path: <clang-built-linux+bncBDLIXLMFVAERB2GX277QKGQEMX2AXJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9232EC18B
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 17:57:14 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id v138sf2032487pfc.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 08:57:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609952233; cv=pass;
        d=google.com; s=arc-20160816;
        b=RihPWy7io19KkcVzGfGbBwHQAY7gWvGD6uaQZoQ0fDCc0rYRyfQeci1dJuyb8yaLd3
         0tf8L6G+IzdXDKlYJfTFbXHj3/fxeHxvF9Im6+QGlEJCCJGj40XlOzsOd6ZvRsQmjUjd
         G3lu/LlSb0VafSRdt9xaToqVGVNwnQJejy8Fsk9cFIkaeJHxOTbNMW+M05CIrJ2JKMJ2
         Fn7eycAHCTOerbZt4UfNXI46MsyhpnbTXnSjxN6IP3mcL1ztaosPFQK8KRIA3MQmTFGq
         Ukx1hCIHAK722Rrgknchy5xiLOYqoEIAfhD5XlK3bydnBw+kySO7NI8WO73RCzENBajA
         uGsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:content-id
         :mime-version:subject:cc:to:references:in-reply-to:from:organization
         :sender:dkim-signature;
        bh=B+SrPAM7V6ZHCiZQmBHro1lTYwXQ9k6YqT5RhYT3B60=;
        b=jxF7GKZvIx1UVHfaTIp0JbYJNhKvumGurkHzYxfHBzSF32Wd8HKDLIJQUYcACe+1qK
         gGITK2A7QZ7o+mp+mU5L07Up1Io+4zIblvnn27iKHt2dMFa8Us8m00Oj7i7zILZHGxcQ
         ZWJa/EKdvexLkrK4jnvCstnqlsFzfNjFjcIa+YUgtP10W5D6x4tnielQ1ikKxFOiS3In
         kkl972FSfQBDXmYMaZAJfeggzffTyhOeR8yvc2LErmhXO97zvLXZdVyea9FmDNAK5P6r
         hX7IxsvFXF9LOE/+NoaHH3nHmy+8TsxnuCRURb5UZcu5qFDyFBvCpfdVlraJxvX9KGZu
         PFiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MF1AIoBJ;
       spf=pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:organization:from:in-reply-to:references:to:cc:subject
         :mime-version:content-id:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B+SrPAM7V6ZHCiZQmBHro1lTYwXQ9k6YqT5RhYT3B60=;
        b=QNibwkbnGk4qsF22+wkYs/w1/c9fyAHfBkJN4HpUGRmhNUcLehSrsLzSxaAcWM2Yaq
         z3d6PoJ3+bgZ/J5XnzdP0XQms24uzuFgGcmCfzW4v+saIuBoioEVJAiISO+CBv/RGfpb
         mjciCgD7GN0y/UOb5B9d+J8QnXmlOCXfMu6tLA/llzQEme99wrf999LkGvvxvt259u+4
         2+Lz6e28nwA4ogdwSi9CRy/wc1IfRmCDLX/iayBda/hDiK5wQ7Qr9OYX+uFIPlumeY4q
         ZzTM8aA/bpSN2KgXJzIx6//a6kof7bCXpuaaQd5p6Z86pZvLbwCbqMPR31P9RaRU/wQq
         QWlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:organization:from:in-reply-to:references
         :to:cc:subject:mime-version:content-id:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B+SrPAM7V6ZHCiZQmBHro1lTYwXQ9k6YqT5RhYT3B60=;
        b=qqFZZl04h3OdzC7ROvXIwUVFMIE2Tpoku3GGEzx3O+m9YzRfd/VDB+3mAXlEzcdU+8
         DwXOn4l3/+tJMMX/eFD/Ul1HUPINKmeslWJ/mLpO13PvkIsCUxmOveHcoDn0S0kn8Pqz
         +s2ShQMiZtrhIHifPKDjWrLrC7x9/mwYkE9RvCyoaQNqQZ4QsUa+CfVgHILGPSEQh9Fd
         gThah99FNxUE58WGull7AmJM8Rn3eCKfZhvVHqQQZ05eE7M2YG/4yHIyWxn4n4Ne0R77
         qXVzgwyCzYwy8Us8KeZxwY6fbMwEvIMGKiqNEUMU7JMDJm1TqR5A+tebzN7evNJJT+t+
         pjJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301Ea2d6Nc1iO1iaNL3TKJluSgCYHSCugtWREoYNhwPwqD6T3vo
	kYt9InwXYS7lSWglnm80CdY=
X-Google-Smtp-Source: ABdhPJwTzn+x5fXTeGisTGXg4zh7UlOZLaARuZNNe7XKuyElCNwJCsc6t1Daz2RCQiA5WqCkK2J/Bg==
X-Received: by 2002:a63:2262:: with SMTP id t34mr5494763pgm.166.1609952232898;
        Wed, 06 Jan 2021 08:57:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d713:: with SMTP id w19ls1727043ply.1.gmail; Wed, 06
 Jan 2021 08:57:12 -0800 (PST)
X-Received: by 2002:a17:90b:68e:: with SMTP id m14mr5092124pjz.228.1609952232176;
        Wed, 06 Jan 2021 08:57:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609952232; cv=none;
        d=google.com; s=arc-20160816;
        b=UDGzgb8R3Ec6bNRsUPBtWS+g31yu8dfxIq8SM1y1+fPIwS19x9zr5/YHNYBO6UfBVL
         hX+nmngrkJZpPrnyawiAgYYooYBFJymqia3F4Efe9O6xRZImjxKF73P/WNoSSPNBDNKh
         C787V9uu1yydOGL8s8UftMH9QVrw01ELzM/4Mzr6V4/LA7VmuyLU7wmCquDu7/MwR5gm
         TJ2i1NDxHkIglGjTG8+X+HrB1IzkXgp3YIj9vk1tZOoemk907NflK5rM5/zKW8sahpFk
         y1/9gNxaB0l5N3//TX/TDd50sc0jDvp78fl1zcNy8w5rTZbMXjmTLsKTSC0BCKO//deP
         OOsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:content-transfer-encoding:content-id:mime-version
         :subject:cc:to:references:in-reply-to:from:organization
         :dkim-signature;
        bh=9VLLWEiPKgR359BbzU+UUPOHxLugO8L8LfVhmpzJuXo=;
        b=A/tOlDAIJDJ1B/VCcnNCSm8QOr4YV3shZE5ufMVeM/ttaWZmHDLnUVROo+AWGIUTTv
         yrGn+7U1oFz+b8Nb37OTzLSqdhoMyiTlZc/Bw9+/ODXiJAdUYuIi2NHd/BwD0Sk6N9s4
         9UHXZqSWOeDdc18mlqZPinCnxeSPaEphizlo7/np7GfAXKO1S3oATfdiXAKjt1cYODJx
         CrvSYyURms6qaa1SazzWK83dkdyiHyVs/hYzC0QLmnXtc1YYP64c4JNT5O7pWqIw6Oom
         9tbJ0oLfMiKcZOTeW4sVt2zdKg6uBoZw2j0DIQvQB+1lOJfETvLiC+vwkow3hHY7hRGL
         hSRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MF1AIoBJ;
       spf=pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id mt17si529401pjb.0.2021.01.06.08.57.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 08:57:12 -0800 (PST)
Received-SPF: pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-553-WNuxAZqtPZSOLxYrmOAT0Q-1; Wed, 06 Jan 2021 11:57:09 -0500
X-MC-Unique: WNuxAZqtPZSOLxYrmOAT0Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D6BD6107ACF6;
	Wed,  6 Jan 2021 16:57:07 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-8.rdu2.redhat.com [10.10.112.8])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DBC265C1C4;
	Wed,  6 Jan 2021 16:57:05 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
	Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
	Kingdom.
	Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <c2cc898d-171a-25da-c565-48f57d407777@redhat.com>
References: <c2cc898d-171a-25da-c565-48f57d407777@redhat.com> <20201229173916.1459499-1-trix@redhat.com> <259549.1609764646@warthog.procyon.org.uk>
To: Tom Rix <trix@redhat.com>
Cc: dhowells@redhat.com, davem@davemloft.net, kuba@kernel.org,
    natechancellor@gmail.com, ndesaulniers@google.com,
    linux-afs@lists.infradead.org, netdev@vger.kernel.org,
    linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] rxrpc: fix handling of an unsupported token type in rxrpc_read()
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-ID: <548096.1609952225.1@warthog.procyon.org.uk>
Date: Wed, 06 Jan 2021 16:57:05 +0000
Message-ID: <548097.1609952225@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: dhowells@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=MF1AIoBJ;
       spf=pass (google.com: domain of dhowells@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
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

How about this?

David
---
commit 5d370a9db65a6fae82f09a009430ae40c564b0ef
Author: David Howells <dhowells@redhat.com>
Date:   Wed Jan 6 16:21:40 2021 +0000

    rxrpc: Fix handling of an unsupported token type in rxrpc_read()
    
    Clang static analysis reports the following:
    
    net/rxrpc/key.c:657:11: warning: Assigned value is garbage or undefined
                    toksize = toksizes[tok++];
                            ^ ~~~~~~~~~~~~~~~
    
    rxrpc_read() contains two consecutive loops.  The first loop calculates the
    token sizes and stores the results in toksizes[] and the second one uses
    the array.  When there is an error in identifying the token in the first
    loop, the token is skipped, no change is made to the toksizes[] array.
    When the same error happens in the second loop, the token is not skipped.
    This will cause the toksizes[] array to be out of step and will overrun
    past the calculated sizes.
    
    Fix the second loop so that it doesn't encode the size and type of an
    unsupported token, but rather just ignore it as does the first loop.
    
    Fixes: 9a059cd5ca7d ("rxrpc: Downgrade the BUG() for unsupported token type in rxrpc_read()")
    Reported-by: Tom Rix <trix@redhat.com>
    Signed-off-by: David Howells <dhowells@redhat.com>

diff --git a/net/rxrpc/key.c b/net/rxrpc/key.c
index 9631aa8543b5..c8e298c8d314 100644
--- a/net/rxrpc/key.c
+++ b/net/rxrpc/key.c
@@ -655,12 +655,12 @@ static long rxrpc_read(const struct key *key,
 	tok = 0;
 	for (token = key->payload.data[0]; token; token = token->next) {
 		toksize = toksizes[tok++];
-		ENCODE(toksize);
 		oldxdr = xdr;
-		ENCODE(token->security_index);
 
 		switch (token->security_index) {
 		case RXRPC_SECURITY_RXKAD:
+			ENCODE(toksize);
+			ENCODE(token->security_index);
 			ENCODE(token->kad->vice_id);
 			ENCODE(token->kad->kvno);
 			ENCODE_BYTES(8, token->kad->session_key);

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/548097.1609952225%40warthog.procyon.org.uk.
