Return-Path: <clang-built-linux+bncBDTY5EWUQMEBB3HG5PUQKGQEKTVPUGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 64242765E9
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 14:34:56 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id q9sf32850950pgv.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 05:34:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564144495; cv=pass;
        d=google.com; s=arc-20160816;
        b=qfca+G4eLHjhIr8hL9FC/on+couxJte+hI6qXy/Qo6BoqxWvL3A/EHN/GbKyxKnKyk
         tcULw+vI/38fakxYXVwIpA8qIRDEy08vGvaNTaCmFwR4yZ2++Vc3Nr4PjgyJ0lv5XO0h
         XPfmtDKVY9Arf/N/UIEOoKdXYaKKaD/hr2mFm2vyL4ZVVbbciaRW3UM8i6Sx+9QbFtfo
         RKQU+CHHiBh364wrEG9MQiURzEhyUKd+ipyWEn4SNnQpsxP725obw7AtaKSxsok/Bvvw
         wyBC/ARcxMOydF+PQFlrgeQpI0BiNBaRiyDnGEAm0iMTnqDOxnxTInJsbx59e6MphL97
         fi0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:organization:in-reply-to
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=WYI0TvV9DTx4R8MPqn+MjS4E9x4mra7l+XLKCAcrHFw=;
        b=YjW56GHSUNFMracxI0DWqAPCya8oEgOVLrutvOccI5AFrYlDFarCl/0wz0moHyY5qH
         GWr4D7V7sC2dHkHg9qhhVe2szDYtT1RTBSq2fj/ORg3goo/X1ljPR64STtWoxekMHjBD
         jrlg+Un+ogRdkcjivWeG93aZIxXcq3U1F9XeIT9hCaVpnGYZ0O29SFYnAMkn2jHKHiuz
         /I4HgC5/sScQp70mmbeP2DCAOQdIoADxyNh9Vp0wNJqnwPnT9htc1BwYgfj24nqzHMVk
         KGZsCuJh8YM4ILGwIO6rD+rq7nan5NdwavC7MWeVXiF4eh8xtrf3GEFaRgrkMKr2hGj2
         xR/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:organization:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WYI0TvV9DTx4R8MPqn+MjS4E9x4mra7l+XLKCAcrHFw=;
        b=nij/xtenay5gU28aJWLeMKMPU62JCKTZSe57LqGL0/SSNTQZhyn9Rbs2Xs/mDB2oFL
         JmVtn1oR+XoeXout8wIZ9UM2ZVzpO+VMujlzIf6cxVAqjK/czzH8ZtlMmIpUxC1IsjgC
         Cgs4GXatvh5N9T+3toOn3ma639UBFfgebI6teXycZWlg6X6ZX0sasKNdmjNJSn/Xyer/
         3kwM3L5NbT0UsHoDSBvWEANyZnc460uEFv1JEEHsnuk5AfGhy+4YGv4DLjKc4sceG8wQ
         Eftm4AUbjrMpTgPevDNklI4/fceY4v5A+z167zruoDdooL3WAm3gwWHHatRRWe0XMGAN
         FHYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:organization
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WYI0TvV9DTx4R8MPqn+MjS4E9x4mra7l+XLKCAcrHFw=;
        b=qhADUUbGYeFNvSbdgnxnoqkQxwJMff10qRIV4b0lNbi7Sh1NBAacZK4vw14jHc9KWP
         jvGQf+bX7N8oTPkfUAau29f/kcxD5vQJRa5K5j9StGF9+xczmE0mlXqmAUPQr1o1G8E+
         7yeV4qNFuFb8RDBSFvO51TG0awuhbCwBhSdA5Kzhmeu72n9qnIWfSGVPrTw0Fl0VOTk4
         ndPF5Pcmc295Vo2UVgIq5yPlcsiMmHN0hr0wpDVxrI/nj2uiavSzvG3VMNCeFLv+DHua
         xSFmBahauDxwI9AGc9qkl522uvFcnbVANemhAzuuqHRgNcN9gx6xNyqPfvP5+24hpl2V
         CVQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX65aLboPWLfJVXymWa1qcI0ZttM9t+WvomHpz9ga2HjGkGH4IE
	AacCyByNd3oOBLnSjP9SYhM=
X-Google-Smtp-Source: APXvYqxSHlRsittC2et9bxxhQJv9nfhfKSDdxXg8yqyrPfXwLu4wUocy9b2N2jJ+Z1/3E34xdUWgEA==
X-Received: by 2002:a65:52ca:: with SMTP id z10mr41052287pgp.424.1564144492796;
        Fri, 26 Jul 2019 05:34:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5ec4:: with SMTP id s187ls10372351pfb.1.gmail; Fri, 26
 Jul 2019 05:34:52 -0700 (PDT)
X-Received: by 2002:a63:1020:: with SMTP id f32mr61845071pgl.203.1564144492321;
        Fri, 26 Jul 2019 05:34:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564144492; cv=none;
        d=google.com; s=arc-20160816;
        b=ZV3PKn6Q8UYmdFN7r8/YEMJ7sGuOQibIPqOdo/wTml0FPj2oHpg5qWNAOv6FgXDRuF
         ByebhVECILoQHamydI8IkDxKyHBeM4Qh4nK0uLWBLvopVK7WEhxoDyjGtANKrgYZ3Don
         wBykJKJsMkBd9kyf9UFCgQlRbwTWzDnk+YypiGBR5Qp72SAbmkgLYfSQldH90VlkBEys
         ggOi03Xc/mfGd3bt26VZo5vgGWw+g+0M9qpG+m8m+b/wK1DavtA0H20WD3eHFQgyFGD4
         uSWMQo1eBR1IuWPFlv7aBoAQo3eisruf5MLur/SPpo20y8eoGwPx3l2hiFNxHhjypjKe
         IhuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date;
        bh=Xc4u51GdQPoJg+Upw0/nEaaPgruEO4qy6mkoX6dk8Zs=;
        b=egqCld+CahLfU0lzBgaHGCwZAi32dZn+P3ZUDKk+fl+6VQ2SGa4KSAYzP8d0WELaC2
         2i5v162jcjH/VtG5qE6Y01/QynSlHx6jVlYHS7FoKWFhoICYaVcKJAhxjsz7DprsebJ8
         fo3SlcYLujueHMd3Eg6Zlmg7QL+l7J17uL5E+B4BKeEfYitMzRskM9q7iFhx3RgmMbEC
         vsLxVLCfv5XJR0lPE7tMeboaFeoCd0+tw7l5EuxyQjVDty+E2kb6IZl1GlFbbqJxcNP2
         jeriMXfAPBaCS7L2Lpuq8IX5ehERM9dU2qbeQOZqEuRS+lPxe5lS2iyY7ktQ3hd5mkrd
         epqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id d67si1779803pgc.1.2019.07.26.05.34.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 26 Jul 2019 05:34:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gondolin.me.apana.org.au ([192.168.0.6] helo=gondolin.hengli.com.au)
	by fornost.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
	id 1hqzQg-0003wt-T7; Fri, 26 Jul 2019 22:34:35 +1000
Received: from herbert by gondolin.hengli.com.au with local (Exim 4.80)
	(envelope-from <herbert@gondor.apana.org.au>)
	id 1hqzQa-0002BM-72; Fri, 26 Jul 2019 22:34:28 +1000
Date: Fri, 26 Jul 2019 22:34:28 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Arnd Bergmann <arnd@arndb.de>
Cc: thomas.lendacky@amd.com, gary.hook@amd.com, davem@davemloft.net,
	arnd@arndb.de, linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] crypto: ccp - Reduce maximum stack usage
Message-ID: <20190726123428.GA8381@gondor.apana.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190712085937.4157934-1-arnd@arndb.de>
Organization: Core
X-Newsgroups: apana.lists.os.linux.cryptoapi,apana.lists.os.linux.kernel
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

Arnd Bergmann <arnd@arndb.de> wrote:
> Each of the operations in ccp_run_cmd() needs several hundred
> bytes of kernel stack. Depending on the inlining, these may
> need separate stack slots that add up to more than the warning
> limit, as shown in this clang based build:
> 
> drivers/crypto/ccp/ccp-ops.c:871:12: error: stack frame size of 1164 bytes in function 'ccp_run_aes_cmd' [-Werror,-Wframe-larger-than=]
> static int ccp_run_aes_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
> 
> The problem may also happen when there is no warning, e.g. in the
> ccp_run_cmd()->ccp_run_aes_cmd()->ccp_run_aes_gcm_cmd() call chain with
> over 2000 bytes.
> 
> Mark each individual function as 'noinline_for_stack' to prevent
> this from happening, and move the calls to the two special cases for aes
> into the top-level function. This will keep the actual combined stack
> usage to the mimimum: 828 bytes for ccp_run_aes_gcm_cmd() and
> at most 524 bytes for each of the other cases.
> 
> Fixes: 63b945091a07 ("crypto: ccp - CCP device driver and interface support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> drivers/crypto/ccp/ccp-ops.c | 52 +++++++++++++++++++++---------------
> 1 file changed, 31 insertions(+), 21 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726123428.GA8381%40gondor.apana.org.au.
