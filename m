Return-Path: <clang-built-linux+bncBDLIXLMFVAERB4GC5GCAMGQE2X2UM6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id AF19C37A4F1
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 12:50:25 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id a144-20020acafc960000b02901ee0759f5f3sf87481oii.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 03:50:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620730224; cv=pass;
        d=google.com; s=arc-20160816;
        b=vYqx++yHjBfM5HZtTak61MU10OLdtSA4jAeB0JGcxhfRwM0/6Z+3SzYdiJw8fJ1Kz0
         jk/1SXmcX0ODwLl1G1qL/xu6JCp+n39ZfN6gg/qYqE9/66SMcxsLntRdC2V9jjUl5S6C
         qU+BFlhmeAiaeXEwhoIkngMQovEqOVDmyhLSFX4yNYVf/GypdBMZo4Gp+dCD8H6t53yk
         p09E1XTvuGcaCvhIJ9Deslb4oMgESP/Yw6Ouw2jJvF/V+D/YRAmKvE/Sxk/kGXYRHe/2
         ksukqKrinNbfOCp6DaQlJu1FFSrLyamQucHaJTPrHxtZnPPyJtNvVzbEh6ZdC6JQQypD
         YYEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:content-id
         :mime-version:subject:cc:to:references:in-reply-to:from:organization
         :sender:dkim-signature;
        bh=GQYhcBi2WLsmwh3MqdnjBMa2cMNvjgvkWFTGNXWRcLo=;
        b=q6+6GjheAnr3JIafw1co04F/krh7MMGM4Kk3aBN15EVS0aL73jtS2pC34k1/AfiZmn
         worOVI0H2er+FGX/nHLoCWYWVUc1NuQyJmNnYhkgnQAIy2y9h5wSDYVcNYYvYNGm9LX4
         Zza03xuQFeEG2tgDREy8hIpncPHR2INXvQ0Z9rGX9/JemEaWajbElV26sBgAHEugK/wp
         3PZCjWwMculg0geAzVvS/VMkyABBC61jBTOcSEE2SnkxQtq0iGzJIrJbhfNoPFYxDIBR
         PfF++MFC/CC7mpsfBPOzLhRTB0r5K8/ofYjdj3IvrHCGuXfCM+lKtLAtUw5wG3aPytt2
         Ykeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AhJkTE3c;
       spf=pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:organization:from:in-reply-to:references:to:cc:subject
         :mime-version:content-id:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GQYhcBi2WLsmwh3MqdnjBMa2cMNvjgvkWFTGNXWRcLo=;
        b=rRjghzNegVKQB5WAQwF05Dctn8HcPPmX/AhI9zDbUoUHYoVqUwDefL2cPKyZZS0ID3
         YhQ/0yobXv8ogteqvqPrhLjP0BT21cHWzRZieKeF2Bq8rhWWxzsA9p34qfeT1SshFWv/
         hwUdlx0Py0AxrZkR88ivj5NTp/P224Z+Q2h0MdZ3Nj0Ocja53fgX7kWFH9R1W1LNjXcv
         2qt8yIAh6tgbUBWdY5CAEE22bFFbgCCsiHzD0crWKiK5I8zX5JjoBMMQ3i1Q/Y/tE8ZE
         n+do7BAQOrC47YmvSq2KaUeFs1IhRIpUdKuPsLRvYUizVg75mHYNMx7Erfmlfb/staaX
         XhoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:organization:from:in-reply-to:references
         :to:cc:subject:mime-version:content-id:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GQYhcBi2WLsmwh3MqdnjBMa2cMNvjgvkWFTGNXWRcLo=;
        b=Con5H/2vwBVmSv9/ixEQ+rCdHwo/UJBZJt2fCzKrPolJwWamEVaxmW7yrbTmnsZUZD
         nUY9yRBoc1ChVh07HPyOnEyHNaVJX+WxCKhlg88W5ISHo8sphvTJJy7gALhhbLsUjmMb
         R17Aw3jHZUKUpZq/F14ZwftHfH2UGrSq83PR0wPDC8pB4SZb6gzm7cjjg7sl0GF9fAjM
         xm1sz/yMUXtjzidjcvfwz1KO8qGo4X5TtF+1TnplD52MO/iYJ3caz1iXmzouK4cAZvho
         j79TR2EsyQYqNUhHNtGER0YGzliW3D/Md3PwYaIgUiQHXrRtKz0mrJ9BPCfJClnM1IuF
         fBTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533W9MnkW7tGG8h+gL+3L6hap6gDYY2/GHtyoXwxuaIy/YIE4eMG
	N9NzK28D1FRPzdtuXgoQME8=
X-Google-Smtp-Source: ABdhPJyamS666NEO2972PopgSyeOyv9/0U0gH7y8Wqe29I247yNTZgUf3qVNUdt5dPQ9E/cwLD0fyQ==
X-Received: by 2002:aca:c64a:: with SMTP id w71mr3168675oif.44.1620730224570;
        Tue, 11 May 2021 03:50:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d487:: with SMTP id l129ls4981190oig.11.gmail; Tue, 11
 May 2021 03:50:24 -0700 (PDT)
X-Received: by 2002:aca:b605:: with SMTP id g5mr1186252oif.127.1620730224156;
        Tue, 11 May 2021 03:50:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620730224; cv=none;
        d=google.com; s=arc-20160816;
        b=mNP13ggWmvoAWdlCu/Z+NYPlkjMEKkYjxZz4G5UCW558lQUBTPW9sJOoIRZKC6SwC4
         3+yHNMluyJGCbwSRLwTG5uMxAlugtvhg+1fF1nICzJlOJNk3lXAYisZ+UEe4vVX1Cr0z
         mQV1TKVtjHhMGrihAMiIs404AkWhCH0SNOx9i7BvbgWM5Tl1ksyu9nVtiRd+pconUqOj
         zpL4HGZYLtSWAhjyQdH2Hi0xo7w7VW1c6Rg8/9wIJoHHsrkCfzAEHZcvD0ok5OBOHZ5B
         CJtG6CbK5p0aPaaKJ0nyu3OJJBFNO/Fyz1nZnbTUqWAtzfZHhiSPpWujz3cH2xoVSkFo
         4U1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:content-id:mime-version:subject:cc:to:references
         :in-reply-to:from:organization:dkim-signature;
        bh=pDKfMCSmDrYbYLb3RYYkSWVBebsV7OFYV2lkS/seTjY=;
        b=AytXU4aJvinyX7apjhrKyYJBn+22k7oGsCAov1LbEW4437sibKutRgI55VCnX42L6a
         73ZreVEQomRaLhlmAak699tyHTEOI9v0N5UppKQQ6Z2Rs2nyOzWssMMTon0qGN3jLDrM
         Fh4qXYs3gw+RexZcxilbRuhg9jsVyvI4vm34RNGcGlLQUxfzp2E2MUA7RcPY+ERbEeUb
         eKD6GZie9kyVkF7S8WmSU35NTknFUnZvcqQ46GF8kGDjysr0EilufhZzN1QiG0wXZH50
         18SXCjsGAR4r1ppiRpsiSjvXJgEr2QlYPXSh0lT3qzN2KvXe8+M41Ag1jqwRKRaTWd2q
         H/og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AhJkTE3c;
       spf=pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id n10si1101923oib.3.2021.05.11.03.50.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 03:50:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-235-k5-U_UGNPKSvNGkjgNC1IQ-1; Tue, 11 May 2021 06:50:19 -0400
X-MC-Unique: k5-U_UGNPKSvNGkjgNC1IQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 765F6107ACCA;
	Tue, 11 May 2021 10:50:17 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.3])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4E850189A5;
	Tue, 11 May 2021 10:50:15 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
	Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
	Kingdom.
	Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1620467481-110575-1-git-send-email-yang.lee@linux.alibaba.com>
References: <1620467481-110575-1-git-send-email-yang.lee@linux.alibaba.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: dhowells@redhat.com, jarkko@kernel.org, jmorris@namei.org,
    serge@hallyn.com, nathan@kernel.org, ndesaulniers@google.com,
    keyrings@vger.kernel.org, linux-security-module@vger.kernel.org,
    linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Keys: Remove redundant initialization of cred
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-ID: <2499882.1620730214.1@warthog.procyon.org.uk>
Date: Tue, 11 May 2021 11:50:14 +0100
Message-ID: <2499883.1620730214@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: dhowells@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=AhJkTE3c;
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

Yang Li <yang.lee@linux.alibaba.com> wrote:

> -	const struct cred *cred = current_cred();
> +	const struct cred *cred;

Good catch, but it's probably the wrong fix.

In that function, there is:

	const struct cred *cred = current_cred();
	...
	cred = get_current_cred();
	keyring = keyring_alloc(desc, cred->fsuid, cred->fsgid, cred, ...);
	put_cred(cred);
	...
	sprintf(uid_str, "%d", from_kuid(&init_user_ns, cred->fsuid));
	...

So we get the creds again, but with a ref, and then drop after calling
keyring_alloc()... and then access cred again, which is dodgy - but we get
away with it because cred is still pinned by our task_struct.

I think what is actually needed is to remove the get_current_cred() and the
put_cred() calls, in which case, you want this:

	Fixes: d84f4f992cbd ("CRED: Inaugurate COW credentials")

David

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2499883.1620730214%40warthog.procyon.org.uk.
