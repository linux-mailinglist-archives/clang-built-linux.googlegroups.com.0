Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBGO75D5AKGQEBP2QIYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBE226477C
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 15:52:26 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id w82sf1526192vkd.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 06:52:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599745946; cv=pass;
        d=google.com; s=arc-20160816;
        b=a+XxFPd4RwR/LZ3EwbJlXlz5kah2mCkRR4ihvY9lYTk7it517cjQ1sCqeZ9M4gU2q4
         CeNyaUzCzKmXqBThB5W87k8gzYj+OlvJ5+WLu7KpVF2TBEb0QmaJAFu3j7Ysv53bhemT
         MkIWYs+PQXvqwZZuq30Qzr8m4u8rq47e20nsSEXlp9x1U9jTQ0lXvf3kfyyFFtPhGEBL
         YBGvdnxiraM6jUDERvRtGbcBi5kg53CZu0qIRagUel2RFXXipeCEnVXJDXpM+uuW6MpQ
         arhAT/Q7GOW0GjocXfIXtTA3ps4I24hDGm9gRVjsMQT60xk7hbwUlwdcpG2uXifroClq
         s3Fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=kmmZyQGf+D82jBq+gSh0b6B60w8cWgEMYbMEfqIFnCs=;
        b=ZmKmHgCZYACfcqE0fRcNMTSqOyaekm7zQTRVSk7269hyYbTKVncW0R1PxMqmdKrhtl
         BZ+mqIZVFqMno1IPBgQHxU4xoDbomgW8kmY6Z7gOIrIx9KcwXJrOXCdIXoPN4w6XYFcJ
         50kqL2YBzjqNFgmcq9JNocI+jg0YrnIo2fprFyzPBIOmtDySzDUJPuWa1LqpSJnEIyXJ
         9w0DMcAOtGevDL+Z6kb/+1XDMcrm/C+b3Jd6g0nSwG36Yo5CgL7XLKG3JWBJuuHxMi1J
         4Ej3NkUK4DQcZaY8IkMzkp+qkyMDWPjBeFUAFvXHSMhKtn1Wcl3tLrKqAjxjdszbWlcA
         /lCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JyBBb5kL;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kmmZyQGf+D82jBq+gSh0b6B60w8cWgEMYbMEfqIFnCs=;
        b=Ry+65vRuBjHvIAWKoRnBeiXXVbGvqM9QdeGTwmRV+uS6mj3tALPYyKVHip3DYn4HGo
         SevV+I37P6QqmVxwJS1DE4s0BsLnd+lZNFhg77Otn3Vx4M8gnhVcK4zAZeMGI+jIL9VX
         WpevKKRyxKtlbt67/I/FbXFdmUN6NRDpoG4Ru0EVbKKpWluhbZOUjSBLyjRTxIXQAL8W
         Lz/pSMb/UgyGyt2yT4qYiGw1MBJCds2mBzPNwTiANS1xrdANAa7zWm/fZBLRyFDpye8r
         Q2UdKIwVFEn5x3mJmeTcjINmnQpr4KGu14FwZ2LZXQmBvj3u0UTOaAiV9XQyEAsWYb2Z
         cK/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kmmZyQGf+D82jBq+gSh0b6B60w8cWgEMYbMEfqIFnCs=;
        b=SmqD+1Wgph+WBVPS/Q1j+j9NdNU8kUFFfHk+YXKPXOYG2/vWfMIvttPuQUVtADllSG
         rgQ8Q87hg+rJMG8G2p5UIvghx2prlQ9kYPRDWPFuiajumSKO25UW4hWSI3LevBp8bUCt
         fjZUgrAa84OOMEuTnq0Tt5p1KWKiKdkcB1iT+DWbsikTjvv1M+DrLhIqt78NSscKilt5
         GUhad+qFICMyBrvPlUqijvxQV/VKc9YKm5VU5ZOYV9PI2sH4aiIMMYlOzUKBxbPe9KPO
         8zoICsfSVsNJGlWxw8b0fNeYut1hNG+axujLG+wiL55EDwqZx/ap/h9tVqwqbYqijTqK
         MzIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fiqlTamhdM5vNBFh82ufppiyB4T/HQlhmtjBoI8iBI9qrsVMb
	1BbIe5UvkWq3ssniXvS4+hs=
X-Google-Smtp-Source: ABdhPJwI9NW5P3e0aEjmI29dJ1Nmh9mefKxICYdCxndPWZjFabQtnAkdLExGgubXGl59rovlw/1u4Q==
X-Received: by 2002:a67:8882:: with SMTP id k124mr3771442vsd.27.1599745945904;
        Thu, 10 Sep 2020 06:52:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:874b:: with SMTP id j72ls806821vsd.9.gmail; Thu, 10 Sep
 2020 06:52:25 -0700 (PDT)
X-Received: by 2002:a67:f699:: with SMTP id n25mr3706779vso.93.1599745945401;
        Thu, 10 Sep 2020 06:52:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599745945; cv=none;
        d=google.com; s=arc-20160816;
        b=Rrf7QUqb+pwyyZIwLJNRNn1A1MvEvElCv5mfQTvemqXEotWlyGwIRGubvj6itorP6u
         gRpTQkhO1bj4B8CqQjWOUvDwL8Q4k5ZiojBjFj8ExPgrwRAj3znT5DZsCIkBYNGHOfc1
         1YNFFIcobZ5StYP0qf0wBYkSu1ulvx1laUU/rJa5XKnOn8K342Wlys/gvE2+p6sKp2cz
         YHgcpZMq6yJc5WdUnu0PrjtJ3KluRCVogp4GKfAyAa26iBJkgiW8NngymE9eDkJhtOiJ
         4LrjSt+Oqmwu66uOux1iwSnOWyiPfQzsXXhmZVvMI+kA5ummKalEXcNYIG6ckW5qIZHF
         3p0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=wXl8du5fQhGV7mBkLY962W3rgMjpZxKVsM/SEXRS3J8=;
        b=gfAzA375aYahQ9xZ5Qy3ddmmv1ve45HZdmQ7crcwSuQTS7m2m+tBABBQFgb8PAHMgi
         8AisHJxg2ifAj8dL3+F7gz3Pbaah5X80pBAsRtZqCvuJHIQRmCj73TYSpsovASuRgMaX
         6J1eY01GYOdtKc56Jdvo0zXefMwvHM91xq2kjmHJy7a+LHr5gHPaDEjAQmksfMnQxvR+
         jHtZIdxxKyztzEe9+7gj5Ryb+U84OtcenIJdeCmp5yEozkUIzLSocM5jVj4b0aH6JO37
         Ngo08MseYRzXkQ9q21jTVr3PE+N1lBuVH3eMd0LpWiH5CHMNcGgcVXouhG7Ekpe8dNtW
         Ek5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JyBBb5kL;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id s9si430072uar.0.2020.09.10.06.52.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 06:52:25 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 08ADpSIw001308;
	Thu, 10 Sep 2020 22:51:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 08ADpSIw001308
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Ingo Molnar <mingo@redhat.com>, Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] kbuild: remove cc-option test of -fno-merge-all-constants
Date: Thu, 10 Sep 2020 22:51:18 +0900
Message-Id: <20200910135120.3527468-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910135120.3527468-1-masahiroy@kernel.org>
References: <20200910135120.3527468-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=JyBBb5kL;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

The minimal compiler versions, GCC 4.9 and Clang 10 support this flag.

Here is the godbolt:
https://godbolt.org/z/8T4177

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 059b36f2ea53..1b6abecc5cab 100644
--- a/Makefile
+++ b/Makefile
@@ -927,7 +927,7 @@ KBUILD_CFLAGS	+= -fno-strict-overflow
 # clang sets -fmerge-all-constants by default as optimization, but this
 # is non-conforming behavior for C and in fact breaks the kernel, so we
 # need to disable it here generally.
-KBUILD_CFLAGS	+= $(call cc-option,-fno-merge-all-constants)
+KBUILD_CFLAGS	+= -fno-merge-all-constants
 
 # for gcc -fno-merge-all-constants disables everything, but it is fine
 # to have actual conforming behavior enabled.
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200910135120.3527468-2-masahiroy%40kernel.org.
