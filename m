Return-Path: <clang-built-linux+bncBCFPF2XH6UDBBRP6QHVAKGQEAOP277Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id C18A77B014
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 19:32:53 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id b14sf32171573wrn.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 10:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jrmt00zvt/1mgdP6FiaLGOHScBNWYvSxkpB4+L1qzd0=;
        b=Qt7qRs9nLcm/XPvur6g7vsmYhS2PsIFyWTegl9bRHjfKZch4j2UKfDeSeyVoBAGJyC
         Hn7XSpUDOC1GjW+BsTsDMZOQ4RyBrDbtZxUBkqlY7AXarh+flH0lISYjdUB748CGbE3k
         gxBAsFKoX4Kt7JiF2UWNift+Kr5k+2JwQLGpFhipMfKc1DuHAY30LE7IzD83BJN+hg7D
         LGQbjCNWfx138YikwsRzdss2GlsOmpxA9HVbdge27cOu4Zj/oQQbBPmh5XU9FR9edWYB
         QHG1rbzQ8D3momvUJZOI86X3epH8+G8CEl4v+q2MpPAxuansMsBxEoWemkdwgri8oMpm
         Kqbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jrmt00zvt/1mgdP6FiaLGOHScBNWYvSxkpB4+L1qzd0=;
        b=rccyf5msPwJi3WAtzIgN0f1Z6XG1wLnitSLKpq/+2+WM4Jnl5Cokxb1RFSaYbyFSFy
         40Lwx+yE3x+pSZTWkQnn153JqyYvwUVnQ8eYmqi7vVrK/amWtpWf1MTB+NtuvRqjrrVy
         eodVAEn1dj99wqO1fwwQiYIFZjwA+YCFz+dW/Smw9sGsLaFQ1ZPAzmliy7bXDqRjWP83
         sf7zNe5WAkqII9V0AUQpW+UsbJSGfv2/TWVSBHgHKoMdZ+9Syq5mq+4KwROQCC55ES6X
         0wLA2bA3nMID36MpI4TYGYv7uP45iu5gSzYMhF8c1KIrEWs2yvZPMFnGfaWoKyqkHHqt
         lt/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX4xM5DOQhHyCt8vZ6XMCBUifzT6+SHHbpcbi1j6i4oC4ndgoVD
	cNvMRTIhG8Ykhhuz/9y5GSo=
X-Google-Smtp-Source: APXvYqw5IqS185jQlKVsrwI7klVGDw0BitELmagiEzQfFfqF7dSNuyPkJqsTXCn/aD1rqKU7ootW0w==
X-Received: by 2002:adf:f812:: with SMTP id s18mr58868917wrp.32.1564507973549;
        Tue, 30 Jul 2019 10:32:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9321:: with SMTP id 30ls19651587wro.1.gmail; Tue, 30 Jul
 2019 10:32:53 -0700 (PDT)
X-Received: by 2002:a5d:4f01:: with SMTP id c1mr47718916wru.43.1564507973019;
        Tue, 30 Jul 2019 10:32:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564507973; cv=none;
        d=google.com; s=arc-20160816;
        b=t+hyZOjAEQUo3RScbcGnGW30fNN4ZRM9tfMEKDp8Bk44vYXGPZq3oWJXUaqzY2+M2M
         fkQdNA4+1wf7k8k4Ixm2DPvRF11xT6m5LzSyBRUICbTvqewSjI0cu5iPQwbfcvIdJYT2
         Vou0+2r7x7FjpEeqhN/CCNXC1iPMWAzS3gv5wUHnRDL1OiyFQ7W9cZsWfEsXsEebgL/y
         HhoBRGwFoPmLgfBPUJay+K9cheRra11y1U/k1NDl2HHS8oc3iIs9r8CiyUd2fvC5u2pv
         UqCbp8y88syW1aFcOLm0elu8iMEYDjx2HFY2sY5sh+uUD37ZVi/Z8o1uF+6Bd//9fUfR
         coLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=jrmt00zvt/1mgdP6FiaLGOHScBNWYvSxkpB4+L1qzd0=;
        b=s5Ftxufm2mQdiXXofZDu10RHtgsZ597YS5WeXEvX9KXILKeiszkVNfBhfPqortGdz+
         FyDU9CQ8elhFxx8U/kO/mHoSG2gtipvE61pJ/gsnQT/xJsgfqzwcQQluk3vqmbqDtGDA
         aGK9S8ab4NLQXOYXb26AkH9UvbQWOQqVHb5MdSxGUxl/sZU7OW3sL714Q0/e0GFEIK6U
         u4/ERJhePn1nBOQ/OUzNBahRV72+nlQIlUg18sdHo+Eb6LuyrrGh9fUSDRdq4y3QUj9m
         vGCn9pYDzY9cLmc6kOrIrpUNGQ89/1KCCJjViLnZYHpdB9QBzJTg2kgjJv+Fa/wdOTfn
         8WAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id u18si3722298wri.5.2019.07.30.10.32.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 10:32:52 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id A7ACA126598EE;
	Tue, 30 Jul 2019 10:32:47 -0700 (PDT)
Date: Tue, 30 Jul 2019 10:32:45 -0700 (PDT)
Message-Id: <20190730.103245.831770564486791326.davem@davemloft.net>
To: dhowells@redhat.com
Cc: netdev@vger.kernel.org, linux-afs@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 arnd@arndb.de, keescook@chromium.org
Subject: Re: [PATCH net-next] rxrpc: Fix -Wframe-larger-than= warnings from
 on-stack crypto
From: David Miller <davem@davemloft.net>
In-Reply-To: <156449861697.10315.4666924841804740487.stgit@warthog.procyon.org.uk>
References: <156449861697.10315.4666924841804740487.stgit@warthog.procyon.org.uk>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Tue, 30 Jul 2019 10:32:48 -0700 (PDT)
X-Original-Sender: davem@davemloft.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess
 record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
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

From: David Howells <dhowells@redhat.com>
Date: Tue, 30 Jul 2019 15:56:57 +0100

> rxkad sometimes triggers a warning about oversized stack frames when
> building with clang for a 32-bit architecture:
> 
> net/rxrpc/rxkad.c:243:12: error: stack frame size of 1088 bytes in function 'rxkad_secure_packet' [-Werror,-Wframe-larger-than=]
> net/rxrpc/rxkad.c:501:12: error: stack frame size of 1088 bytes in function 'rxkad_verify_packet' [-Werror,-Wframe-larger-than=]
> 
> The problem is the combination of SYNC_SKCIPHER_REQUEST_ON_STACK() in
> rxkad_verify_packet()/rxkad_secure_packet() with the relatively large
> scatterlist in rxkad_verify_packet_1()/rxkad_secure_packet_encrypt().
> 
> The warning does not show up when using gcc, which does not inline the
> functions as aggressively, but the problem is still the same.
> 
> Allocate the cipher buffers from the slab instead, caching the allocated
> packet crypto request memory used for DATA packet crypto in the rxrpc_call
> struct.
> 
> Fixes: 17926a79320a ("[AF_RXRPC]: Provide secure RxRPC sockets for use by userspace and kernel both")
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: David Howells <dhowells@redhat.com>
> Acked-by: Arnd Bergmann <arnd@arndb.de>
> cc: Herbert Xu <herbert@gondor.apana.org.au>

Applied.
