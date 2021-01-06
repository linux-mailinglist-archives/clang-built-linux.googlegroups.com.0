Return-Path: <clang-built-linux+bncBDLIXLMFVAERBIVG3D7QKGQEL66PMKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 278C12EC41B
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 20:44:35 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id l8sf5807031ybj.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 11:44:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609962274; cv=pass;
        d=google.com; s=arc-20160816;
        b=LNgnvMHPPkZw46jOgooh4JxfcabYi50hZSLMQRCifR7WzcXJuZ/5e/BPqEb+L2Um2k
         vesYkyGVbTxBRdhCsC7DZ8Zc+B2ktJKwjhpcdMQ+4UggbAJG/Mn/kz6ld6zbIMnFLoVG
         a4DT/OuzClK1Sc3c54gpUAdLjAm5LwT0qVTM8z+imzNHGn3qaDI3fZjGb+I8N88BRdcy
         LLNd+9wd0uDo99JGYfHzAg40pDxU+BWTBprb2C5jHhfcWueGoCoer9G5VhkOverZmRYq
         Vpp8SttvRoO1kmq6c5AiSNiirsWkx6tNZDhSUhxxMKGsIYiG16zVBQEJ9EvQWYcCrTid
         keQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:content-id
         :mime-version:subject:cc:to:references:in-reply-to:from:organization
         :sender:dkim-signature;
        bh=9oGUfCpVBT3Sti5WX0DLPV3rGNxc3Y0CbpJuheYGNx8=;
        b=kzQFNcrXjFrg+fe9O2XVAM2GEQFdUTKTC3a4HAszY3fqi7UTHNmitNiz/XyKtVLFgq
         sczUzjZVHwbk1EM+QgWWq1E7Ngqn+GedfscnT2dInZM+7xr3gXUjY95VTOFpTRdwl5sM
         cWIk3QDIietjAl6N3KZTCifh6aZtBic9jwsMP4XtFZUd0tNy1A0NMVNcZMwzGfOYfWFs
         NYqmXJKn4xlf8ZApZIv0GnZWOZ8+91N9KDqQebm9NVacUYjo4O/kARABPRgPev5gqQux
         jwbRIwMnA/i/qkHlbFTzKtkcJT2VE5f9KgvaDT5u+c77OonX7QKPhkwciuGXXw5wjevX
         bmWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=M5XZesfs;
       spf=pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:organization:from:in-reply-to:references:to:cc:subject
         :mime-version:content-id:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9oGUfCpVBT3Sti5WX0DLPV3rGNxc3Y0CbpJuheYGNx8=;
        b=iXCCJesN3WRUvmA5mfBEVvz4V9E6WkVsBzLbSDUwu9FWNvbdK595UyF5sLSpABgSTU
         yFQcyPE0p8MIWF1NGXk2l8j3RfvwY0lrhooh9Fs0l792PYLPgjJyslqeokdc2c+Ntmpy
         Dz1F+k5UfvZ8Xx3FuZpj6f9ccI5XydwZlEPzTyUgy4qQiN4ltJ48XV3Dmj7Pe/ZMxyph
         4Ubk7YAXqsgUXsTygEn831RX3NT4y1vheP6t8ovQ8luBkIKcip+ZyHbkYAuzglC3h8fz
         4KQRUEQe3pHd5uUElxCuonCM8jm7ZP289bCVk2fxcAPX50T7ZEsm0qWkglY4QoB8hDfO
         931Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:organization:from:in-reply-to:references
         :to:cc:subject:mime-version:content-id:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9oGUfCpVBT3Sti5WX0DLPV3rGNxc3Y0CbpJuheYGNx8=;
        b=n7W1yON0gWfHDxa5/Fyf7o6rCvJnjEyFS8P0Ow01O3aIYqA2d7BpuO3V5tZeclL1I4
         wnt5Wxi2mnSTrXLBms6fUclo84YQaoFbifc0v4Vr9yFfmndmYRClbYGbB+DmUx+olJqP
         2CcyCpEhknWlTZAHUnYQ15nAKM88GZCR9qrIb+J2+L3ekpaKqnZcyvWrt//CrvhbZmhk
         kyfpHeUhC2uGe+C7mzsV2yr96EDXOTJWkkyN+1o3tjJr4oo2M9MZUhvJxoU2LYYS6vnl
         Z0CwmIbuQfCAFMeJHjbKlEF1y7jNQngn8Qu7d+7tLJqAwtuw6DeXKYkAmYIiM0IQBxtB
         j5LQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oEwGrXaQaxTArqEUaaysyE+oOZx/Eod6qZo0KBz36iEcO8Xoi
	auIi+2rYvPyOGZfLyUTFcEg=
X-Google-Smtp-Source: ABdhPJwkgoMcpgmpG20Vd9FlB13yWP1rFSlA5FwB7QWWHGrItrtWDZ/2v3KafpRjl2/+6JiFaJHwgA==
X-Received: by 2002:a25:e0c3:: with SMTP id x186mr8676824ybg.431.1609962274229;
        Wed, 06 Jan 2021 11:44:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c802:: with SMTP id y2ls2358687ybf.7.gmail; Wed, 06 Jan
 2021 11:44:33 -0800 (PST)
X-Received: by 2002:a25:7c06:: with SMTP id x6mr8594469ybc.445.1609962273830;
        Wed, 06 Jan 2021 11:44:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609962273; cv=none;
        d=google.com; s=arc-20160816;
        b=qtS9c7FJVGh69Bg6ajR05ksbCjRgXRqUbUz0wiFEpSQJmK0Ivxt0ME651hsVUjduun
         sNE1WWCyphSFotFJ+JSTW/w9iNKakvDft12NLjsuTeQWNew64F6o6OCFU80WMUk5sWYi
         2EN8+fPWyMPMFH2m5D1UH8NPxhRkqZlzEEr1qSprscLYDvA0ZMfzWY8NL8esARJ3qwNV
         8IGI/KT2EC8LctTMsjJdvjrTd+a3vvhfhBpMzrQiyCtxJgGGXYnLh/UMvXh3YL/6A1RX
         XE4+v4jCVZoDqzIKRgAMS7+M8KFmJdMVjHUObXTGgf5heAz5vYFGqnoIGp9jW2AaH4wB
         7vQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:content-id:mime-version:subject:cc:to:references
         :in-reply-to:from:organization:dkim-signature;
        bh=1lr4fQnCHk4FF9AJMacMIxp8d7Bz3v3LWs69ph+6fLo=;
        b=OZsGjXSqp/FMa7u982XWlfDb4JjoPdrajtk2BDZT5m7NPI0DxBVLpiJY8LqXdHvoF9
         4ni2yHvZMrw5VoOhlrr9LrEv6/wHfte1Ca5EQDM3svVR8XLETJrcgLe9F7IwEhvp1Adv
         OrzYAQ9kfL+sDNF/TWqTH7xmZoVo/p3JRyZ48Oj0k75KKvgHGTCOqjABuM6xTL8vExVJ
         ZMMOAEtU+NZhS8k9gk3be2SUPn3ObMK/yvKTEvtXjxn9cCeCiLnSd6viXWeL9nFuCY4T
         E8wQqWQQzka1tfiQF/pg6KqZazvPxGFhgJg/sMt6BHkPIeIvXBLa6JUmT4ClSNMsaJO9
         4l4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=M5XZesfs;
       spf=pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id 23si308989ybc.0.2021.01.06.11.44.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 11:44:33 -0800 (PST)
Received-SPF: pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-101-sX2NYikEPwyWBe0XD4g2og-1; Wed, 06 Jan 2021 14:44:32 -0500
X-MC-Unique: sX2NYikEPwyWBe0XD4g2og-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D98910054FF;
	Wed,  6 Jan 2021 19:44:30 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-8.rdu2.redhat.com [10.10.112.8])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4D54860BFA;
	Wed,  6 Jan 2021 19:44:28 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
	Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
	Kingdom.
	Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <f02bdada-355c-97cd-bc32-f84516ddd93f@redhat.com>
References: <f02bdada-355c-97cd-bc32-f84516ddd93f@redhat.com> <548097.1609952225@warthog.procyon.org.uk> <c2cc898d-171a-25da-c565-48f57d407777@redhat.com> <20201229173916.1459499-1-trix@redhat.com> <259549.1609764646@warthog.procyon.org.uk> <675150.1609954812@warthog.procyon.org.uk>
To: Tom Rix <trix@redhat.com>
Cc: dhowells@redhat.com, davem@davemloft.net, kuba@kernel.org,
    natechancellor@gmail.com, ndesaulniers@google.com,
    linux-afs@lists.infradead.org, netdev@vger.kernel.org,
    linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] rxrpc: fix handling of an unsupported token type in rxrpc_read()
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-ID: <697466.1609962267.1@warthog.procyon.org.uk>
Date: Wed, 06 Jan 2021 19:44:27 +0000
Message-ID: <697467.1609962267@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Original-Sender: dhowells@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=M5XZesfs;
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

> These two loops iterate over the same data, i believe returning here is all
> that is needed.

But if the first loop is made to support a new type, but the second loop is
missed, it will then likely oops.  Besides, the compiler should optimise both
paths together.

David

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/697467.1609962267%40warthog.procyon.org.uk.
