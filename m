Return-Path: <clang-built-linux+bncBDLIXLMFVAERBEOO3D7QKGQENIDIBYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C032EC585
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 22:09:38 +0100 (CET)
Received: by mail-ua1-x940.google.com with SMTP id v5sf1261651uap.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 13:09:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609967377; cv=pass;
        d=google.com; s=arc-20160816;
        b=ge/gbR9g2SxCMCjRSiKWwuA9+ElBFL5q5P7uLAAHmuMRQsuAptSgl9X387VfTTh4EC
         qITWfaoJnqgPcix/fq//vJJg/dCJvCNLqydtaQw8b9c7V+a2NwL8MLMUtcnpT46XT745
         8zk8WxkXDsPClYS+ok/63T+bk0B45JPoJa2wUvMtB2aUpHq+dORATKvSh1VQV77Q0We5
         O9+uDJ1o1UprEOC+tRs70lh7q9FIZkTwSf8Z3oVbvsrftdB16L5nhme5DOz0QIfend0v
         5AQEu5DkHXAAOIYIRRDRPbb4hNPwZnnFrXjKzmEO6LMMF7lXmhsPWaedC7Wa76IglQiS
         AqUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:content-id
         :mime-version:subject:cc:to:references:in-reply-to:from:organization
         :sender:dkim-signature;
        bh=2j5iTdSYIHstFA3m7N2xuut+A48six2iggjWI1grzg4=;
        b=AfTUW7nwcasAknDC4ROBXE1Mn8dRVCdNUAJYYrvOuWs+Q3IocmFlUhp0LtYm1tb1km
         Dvn/UKbq6agfTY6F1qO5W0gEmaIAyrWHOD/4y3pqhwDlBIz3ix6mHQ5QLdDxOMgBTIAC
         e1HcUAwsOv1yWakZ0sGtCZGxX1a4aZ7gRdS7W3cJaJQu2SfF1AqPZPDpm/bMPNHNtDt/
         rmzz/yOsPEbQCkZ8iuGG/T+yJ5dZl5K2QTQqYVT1VbuOokpzzlhsinQShyrdXpVsuP+e
         rI0mRvNOpP6DbNFUgr2KCoUzITtTFXkbAcUG2UmhBZOA7PCeX/YoATNlkC0SzLYxQDVW
         Y3vQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KFJHUUzk;
       spf=pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:organization:from:in-reply-to:references:to:cc:subject
         :mime-version:content-id:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2j5iTdSYIHstFA3m7N2xuut+A48six2iggjWI1grzg4=;
        b=g52LdgHpHIyLSRSgC5KCwGcT30sVbTI+L8sUD7zRMh/bZ1ydCVLS+bUEnGRAD7o9xs
         LXnOyoyv0mDQugSKZJuxlhNOA7qR32VW7E5R2VjLhqXFY3pLZRaGqLxUNn+tzAqimIcv
         LqnlTAqQs1IEc1dGuLaykWIoH3HbCUKWj7Zq5iVLn488NPArhSjsKx4op0SU6Vjk9EZz
         +QHR7Nf/d1uGAJgZv6ZuKpeoqY3gxW3rRZMbrOEFX9mx+WPYKrFTD1RCR1F7CcrDi5tI
         9qPnYQA76ttxvDxSO0kCIMfLmgsuitz6UUc5XXxfngJOUgr3U8QNalV1mp63zEN+a+BR
         f/hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:organization:from:in-reply-to:references
         :to:cc:subject:mime-version:content-id:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2j5iTdSYIHstFA3m7N2xuut+A48six2iggjWI1grzg4=;
        b=Db2GKExVjM3COIWbAgEyeZAHWbuRmp/jL9ONkxKeNpt+Op4KGcD7IIQG70W+av5xk0
         uKEu3srBGoqhPyreNTOiz/9oGTnI7D11NN0+KN3ILm1yhnyv/JS6DZDqOnAi3u8gnTw5
         GAvMKeJqW8nqdSK9IfJmpCH1EN+csGs34tVgjfk+sB6yMCU6R54TLaiLbCedbjb++ef+
         kPh/B3Av8LxabV62c0pSusWue077/lulhXtCN8QPeeE5rW7zV2lhuNQThJpdbUlv2ASG
         QoaLLa2VQRR6axwrfoPh5n96i8iz4rdXEsAT11mHxPhMe8Pj7qUF1ALrFZ6Gn+mpNYeH
         PN5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Typ8qdqsugeka5vMw2+gJN/bSEidxKF3bW7RG+DE2UXmPS6oA
	JsD6CX5IaKjWdKRZOqp6qak=
X-Google-Smtp-Source: ABdhPJx1+lH+hzIXlIqOTKhfNPD/sYzRoxCs05PQCyWOE7jEDG7XKHKE+jrD04M2Q2NTYHgTx98naA==
X-Received: by 2002:a67:fa47:: with SMTP id j7mr4986609vsq.6.1609967377445;
        Wed, 06 Jan 2021 13:09:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cd24:: with SMTP id a4ls252336vkm.5.gmail; Wed, 06 Jan
 2021 13:09:37 -0800 (PST)
X-Received: by 2002:a1f:4595:: with SMTP id s143mr5552425vka.6.1609967377037;
        Wed, 06 Jan 2021 13:09:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609967377; cv=none;
        d=google.com; s=arc-20160816;
        b=OL76JkqiAPF3vMTt63r0pMJPdJKog+405cnY1Puxc5MKzdBobY/dQKk6IDQLZcqQbZ
         AT3hMDaLOHXemNYVdYWYI3qWzgfcYzllg7sIGX+hcpbJpUoqfZiLcHvu+/WkCCGrQKMp
         cNX8ar49jjz6r60R2UYFp2MAfmzM/IssPR9Vni+SeZkOX8XBGowGoiFoJMLp0Sd8blxw
         zF+E7ZeS464fRHDrF1e6glORXy0G/gB7VbdPyxI10SIzHba5e4Ajh3DG5AM9riZmyxGO
         KQFP53ypaEWz21bO68PnHP5FB8VSzb8f9aN//ahBwLk1y81MOX+ooud5oyiAjlNW6DyK
         jznw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:content-transfer-encoding:content-id:mime-version
         :subject:cc:to:references:in-reply-to:from:organization
         :dkim-signature;
        bh=VKVUOawYF30jYDz4k0cRErL4TxXYOHoXtZs0psgjgU8=;
        b=XgnPkNxElLhRM4NZjtyNnAKwlCg+cN7wcTIHXtba23kS1a0ravpwQ6q7jtyffi9oar
         UlLsi2GeU3Gdh48HDltYuoO2u9if+IlfpqCWB1Ils2CgcG/AgHcrK2P1b8UrbqgBvWdd
         rj1z0yC8aRQnVGXaoC9NQuYQdz2Gms05P8HAKdj0lPuRD2LQZw4VOMxhyRKCnv8NhSOA
         r5nY6oT8z5gb43SA3TTyBC+3LD+eG9GxDb6s4VItt00qF2V7J0wq4r+thUwWKli3I2KM
         EcHFmpH22s8KM905yqNYb2UlquLHRnPu5MXUvJtuwixAIIGgFKhl3v2i2yqZ/0S59klz
         yKpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KFJHUUzk;
       spf=pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id v23si352658uap.1.2021.01.06.13.09.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 13:09:36 -0800 (PST)
Received-SPF: pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-187--sLbtU6GPVWn4laxrJ3vSQ-1; Wed, 06 Jan 2021 16:09:33 -0500
X-MC-Unique: -sLbtU6GPVWn4laxrJ3vSQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 286DA195D560;
	Wed,  6 Jan 2021 21:09:31 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-8.rdu2.redhat.com [10.10.112.8])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4CA6A5C26D;
	Wed,  6 Jan 2021 21:09:29 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
	Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
	Kingdom.
	Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <07564e3e-35d4-c5d4-fc1a-8a0e8659604e@redhat.com>
References: <07564e3e-35d4-c5d4-fc1a-8a0e8659604e@redhat.com> <f02bdada-355c-97cd-bc32-f84516ddd93f@redhat.com> <548097.1609952225@warthog.procyon.org.uk> <c2cc898d-171a-25da-c565-48f57d407777@redhat.com> <20201229173916.1459499-1-trix@redhat.com> <259549.1609764646@warthog.procyon.org.uk> <675150.1609954812@warthog.procyon.org.uk> <697467.1609962267@warthog.procyon.org.uk>
To: Tom Rix <trix@redhat.com>
Cc: dhowells@redhat.com, davem@davemloft.net, kuba@kernel.org,
    natechancellor@gmail.com, ndesaulniers@google.com,
    linux-afs@lists.infradead.org, netdev@vger.kernel.org,
    linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] rxrpc: fix handling of an unsupported token type in rxrpc_read()
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-ID: <706520.1609967368.1@warthog.procyon.org.uk>
Date: Wed, 06 Jan 2021 21:09:28 +0000
Message-ID: <706521.1609967368@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: dhowells@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=KFJHUUzk;
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

Tom Rix <trix@redhat.com> wrote:

> On 1/6/21 11:44 AM, David Howells wrote:
> > Tom Rix <trix@redhat.com> wrote:
> >
> >> These two loops iterate over the same data, i believe returning here is all
> >> that is needed.
> > But if the first loop is made to support a new type, but the second loop is
> > missed, it will then likely oops.  Besides, the compiler should optimise both
> > paths together.
> 
> You are right, I was only considering the existing cases.

Thanks.  Can I put that down as a Reviewed-by?

David

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/706521.1609967368%40warthog.procyon.org.uk.
