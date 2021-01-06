Return-Path: <clang-built-linux+bncBDLIXLMFVAERBA7M277QKGQEMRCMXHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB662EC27D
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 18:40:20 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id x134sf1906917vkd.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 09:40:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609954819; cv=pass;
        d=google.com; s=arc-20160816;
        b=AGY/ff7p+nxKKHSZfu0oYwrkBNfcU4dc1ma4pEMtBGCkXX5iLSKXNSpjaAdmWiPWzK
         MElrI2H5X7b4IGIxrffoAslHWsgdMplYm4N+YouYs7G6duGm2yV0SsJIEeRb05h/57eb
         9JVw6MV9oa2WP9X5D2P9kcrYVqRLRNeBjkRqzgcVluWiJWHBtFRRbbaKK0lD5JDXJKpW
         KefAUYqwZ7cJRH/TP9h6X0CCMnidi7Mm85zjs5SGVt2H2PxudTdOlzLESwLqJnivXc6j
         oWnTTZRPAJHeuLbkfJXYSpRNLKYqlZx0rswQA3DSTkCCK+0ANR1jQNKWf45Yx9OlfgfR
         1cDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:content-id
         :mime-version:subject:cc:to:references:in-reply-to:from:organization
         :sender:dkim-signature;
        bh=mIZqOARvhz0rEQ38HkxvJWACiHBFihf7qUZF0NMh3W8=;
        b=V5GX1XNCesB2m2NsG6s1y7DNQGSQ8cnVPAbzxbhMOxX5dggmPiAL6KWnBoL8zHIonA
         BZhrEj7AGPk/ghUos8fwlo19+ejLlmaawSVwIXEbccCPVPb30WDNr3wQ1ZogygGdJngn
         IAvYL+F13I+QqEvn/Lj3QV9pUiGvQanZeug7B4V/p8IMQrfVTiYgdlcOZgXH0OBlp84S
         MMpdacQwhar+qQZEnoiml8m1cqf05DS+DZyzRttApu8c7z1BhCSzWAk8NLMf5/FKEAp/
         Y7s0uGPRVM14yJSr2sNSwg5Aui9yo6Z6b8IPfbDYjfj1syh8Z3VoqAsciSmGEwvq5yYV
         aIHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VwQhzur4;
       spf=pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:organization:from:in-reply-to:references:to:cc:subject
         :mime-version:content-id:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mIZqOARvhz0rEQ38HkxvJWACiHBFihf7qUZF0NMh3W8=;
        b=VLxDNHBQjez+VloIMZKkqhH/mR8HhXiQkCUWykUvgKvuJwNM0RHw7lKilRg83d6Dog
         jdHBtk0jE24cxGlFnHpNAbk5p8oWVTacCn4kHY1+gEZVpCRxX2QndX55tFMUIAYjDSUb
         QWs9dFa8LiwBpEesVR+gm6LedPwcCYGEZS88lreKZpCdCJfpoUFuZtuAT0TGrkTnr3He
         KijhtTpVKoS592z3RiM+8nIQd/zHx0PDjrwYpXiJeq7KJ4aem9bPwKWrGsNBUg/lF/wd
         pP34VZDY08aXNlE6J/llH7OoWYSIvKZyWgq4V7uQptNq5VGWIP7e6c0mEN58l3kjnzP1
         qdUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:organization:from:in-reply-to:references
         :to:cc:subject:mime-version:content-id:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mIZqOARvhz0rEQ38HkxvJWACiHBFihf7qUZF0NMh3W8=;
        b=QGg49PL2niWaMt7zNGpsAw6lhK5m5QDuhpDknHUCK5vGopoYfq/BQr5HcQixjFAvyT
         tCwNj00l3kryQ0oyqZIdgLJVfdMMb8PfDbRwZPwI9ud/hiNr9/PDvjl1MjxGt26Rk53S
         zH4nOJQzBIYOALLuv1R4HZ83eAGbzqokaWrGAySS62YuzE/Qhz+DA+LWszIW2qN4DwSy
         B3RYY9YT30WhMiMajds5oDJxEoLgjFM/iEa4r4hCoTnidQUJ75QKfKsuQUifraRZedN+
         jKSXTvPyOwh5Qs8XS33dEu4wDTtSdktYik129AfNQ/MCBhf5AmxZPWvvqUqTF65xSiSW
         hFnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lDjsA7X3fb5F1wYag2I+vbGEPVpMWvinN2sn80nxdXYf7JFD2
	hVDwmwKtsDabji1lOhCzzWw=
X-Google-Smtp-Source: ABdhPJy9B6670cr/iGvOdaS6XZxWHbkNme4yuvvjixdd3d2stIZy65pSQz1BzZgOsQOJnFQTIO9OjQ==
X-Received: by 2002:a1f:aa4b:: with SMTP id t72mr4431917vke.4.1609954819752;
        Wed, 06 Jan 2021 09:40:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:320c:: with SMTP id y12ls516079vsy.4.gmail; Wed, 06 Jan
 2021 09:40:19 -0800 (PST)
X-Received: by 2002:a67:dd95:: with SMTP id i21mr4067833vsk.33.1609954819359;
        Wed, 06 Jan 2021 09:40:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609954819; cv=none;
        d=google.com; s=arc-20160816;
        b=DBXlWgfjvUzQcoufr3jTFmku/g55w3AtGQD+1Cj5UADEkWzoD/l1tvDF0Sc1djseTf
         TRfWUB78OO7X0CtPdyDyYqP6V1ty7DuTT/vg2VJAQWTxuiCADis8IKr9V+32xYNixG/v
         lyVlUx2vxwjgALb2U7Tn/BcHXH1oN7FOOnt6+pDrSb6ID+4WrN2uY8JXdJmio6ZyQz0S
         MKf+7L3RuaTFAt7BXgGweyUi1LBzqOIh35KPImfEczGIy+L+k9sJzehGCg+D2kK9NyMc
         fUCSQkLP9Z7N4SbKUt25FDyl3Bhs4jOngWg9E3KtD/uRdGBBdLlyDqj9nfvvQEsrrzXa
         4IMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:content-transfer-encoding:content-id:mime-version
         :subject:cc:to:references:in-reply-to:from:organization
         :dkim-signature;
        bh=Q1MVJV23rzhHmpdk2zEeUSOCj3KMipI7dPGLT5s4mXo=;
        b=MGKtiSGR6vGmxRt4tAZt2Eq7BtnAoXfgNsmFO3edAjx69ezG58Y3+pyrQRGxR6xbhO
         29v9uUlDr3beYv2CvinKGgzokW5CZ0Kp0wAVbslfrq2iXBkr56GMyv6IreDz5kpv6CdA
         nyewBBLrFv1mCkS/vMgPsikxzAMcQgirLfEiCvIzusnTRwLDdzuzOv5RaOZ211EYo4xq
         oJ4m2HUJTu0JH4qhGWsQnSXGqn7ogrVaA+6E64JqsekFkJEnhCpZp27BDSdtb5iBvtVv
         6OlTSSMl3EEeiTvTf/Ed1965q5Gq7JgQrRHhT/wAectNyDrYQlHf4LPd/Yga3hJSXv9B
         jveA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VwQhzur4;
       spf=pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id h123si258570vkg.0.2021.01.06.09.40.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 09:40:19 -0800 (PST)
Received-SPF: pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-593-b_I-VHIKMvyWMuReIdF9gg-1; Wed, 06 Jan 2021 12:40:17 -0500
X-MC-Unique: b_I-VHIKMvyWMuReIdF9gg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E2BD18C8C00;
	Wed,  6 Jan 2021 17:40:15 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-8.rdu2.redhat.com [10.10.112.8])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8FE5A5B6A2;
	Wed,  6 Jan 2021 17:40:13 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
	Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
	Kingdom.
	Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <548097.1609952225@warthog.procyon.org.uk>
References: <548097.1609952225@warthog.procyon.org.uk> <c2cc898d-171a-25da-c565-48f57d407777@redhat.com> <20201229173916.1459499-1-trix@redhat.com> <259549.1609764646@warthog.procyon.org.uk>
To: Tom Rix <trix@redhat.com>
Cc: dhowells@redhat.com, davem@davemloft.net, kuba@kernel.org,
    natechancellor@gmail.com, ndesaulniers@google.com,
    linux-afs@lists.infradead.org, netdev@vger.kernel.org,
    linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] rxrpc: fix handling of an unsupported token type in rxrpc_read()
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-ID: <675149.1609954812.1@warthog.procyon.org.uk>
Date: Wed, 06 Jan 2021 17:40:12 +0000
Message-ID: <675150.1609954812@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: dhowells@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VwQhzur4;
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

David Howells <dhowells@redhat.com> wrote:

> How about this?
> ...
>     Fix the second loop so that it doesn't encode the size and type of an
>     unsupported token, but rather just ignore it as does the first loop.

Actually, a better way is probably just to error out in this case.  This
should only happen if a new token type is incompletely implemented.

David
---
commit e68ef16f59aa57564761b21e5ecb2ebbd72d1c57
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
    
    Fix this by making both loops log a message and return an error in this
    case.  This should only happen if a new token type is incompletely
    implemented, so it should normally be impossible to trigger this.
    
    Fixes: 9a059cd5ca7d ("rxrpc: Downgrade the BUG() for unsupported token type in rxrpc_read()")
    Reported-by: Tom Rix <trix@redhat.com>
    Signed-off-by: David Howells <dhowells@redhat.com>

diff --git a/net/rxrpc/key.c b/net/rxrpc/key.c
index 9631aa8543b5..8d2073e0e3da 100644
--- a/net/rxrpc/key.c
+++ b/net/rxrpc/key.c
@@ -598,7 +598,7 @@ static long rxrpc_read(const struct key *key,
 		default: /* we have a ticket we can't encode */
 			pr_err("Unsupported key token type (%u)\n",
 			       token->security_index);
-			continue;
+			return -ENOPKG;
 		}
 
 		_debug("token[%u]: toksize=%u", ntoks, toksize);
@@ -674,7 +674,9 @@ static long rxrpc_read(const struct key *key,
 			break;
 
 		default:
-			break;
+			pr_err("Unsupported key token type (%u)\n",
+			       token->security_index);
+			return -ENOPKG;
 		}
 
 		ASSERTCMP((unsigned long)xdr - (unsigned long)oldxdr, ==,

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/675150.1609954812%40warthog.procyon.org.uk.
