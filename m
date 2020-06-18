Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBKECVP3QKGQEZXIBL6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B041FDC6C
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:19:37 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id n15sf1912859oov.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:19:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443176; cv=pass;
        d=google.com; s=arc-20160816;
        b=SFvn8CU8kKQHChbJD9+XSol2l+RvDWZzVY46rZTJQ5S8znK5npMt4p7I4gXGtKnc23
         +4nJwZ3RjtE3EjS6R3hR7kv+t/Za3d0c5tI7/zMthxBWcloZUHlwH5+tFvcg6jM5c0Gi
         oA7toSx68DHwzGH8+Abxntqz33NyBOrWiAB4/HbIepSkaxPCJd2e/NNaA4RtPIRaFQGk
         IGbFki6o+C9yOR5ZypyKLuuR7wVbghXQZhXhIa/QfQJ6a3jAJNeblcPRexoAJ8FZaNHL
         nVrB7bPYvqRb3OpUOj1IIH7wb+7jOf0CH/yxwL3fGO8WpEJ1b12YjVcg/y3jVeIqmqFy
         PoDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=70xsmnZSzXjT0f9QctdP3youNSSmQFbUNt4f/pFdPpU=;
        b=eCKJqCN/e1IvL8Ye5oDwL2JApRXZuvwbHSthgDpUGodqmnSektn1uglokQGA7x395W
         bvbztFGddw8ni9ZQp9k139woUVOFPYHgapSxSvXaxilpvPpCgJMDsGquMy71bTd22yBd
         WJf2O1dSBmH9NPPhy7DqSCi4efsrHFnX+kpqGMLNCJwwTVciIcQz/ACT/YHGKjQA/sdH
         VOYLhqT3RSM3bF+sEQy6nRQ4ExvZQnMDNYR7OPzVzTKkzmwgzxCjBJH6q1xhnoWjGRFN
         V4irBBL3fXRCGTjt7Fg/ZNe+rrvlytrb/KvVg2+QXugpyxFpgd5DCTgfGHbkp3mEVzte
         nRJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dIfLcKj6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=70xsmnZSzXjT0f9QctdP3youNSSmQFbUNt4f/pFdPpU=;
        b=B7prynMOGzfjsVoCLoIEThpngd1cJAmE06Fbehl2OwpZJ5S3c9lupX2rKm0nb686v8
         67bnCtv76T5UujF+NkbsalEqC08d8oeWx/7BSaRcDxz19CBxK8yiByoNDaMVB4eGyQZ3
         NVto3+EV1e29p3vVuO3UlM5cE3J0K5Oo4aYpWyjezKZMGg9cVqETywGfS/U6j3BqCzhA
         hhibnLFv79KeXmiH02c0SLU9ka/agFcxYRyL6kKE0DQxQOHzunSx8Iv6sJ050zFYHpf1
         nOIbRPoeLwsayx7pBQrDYjguHDOH/my4PKxS3X/y2XMekUQXRRI+v/Nq578OB/epCB8G
         UVfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=70xsmnZSzXjT0f9QctdP3youNSSmQFbUNt4f/pFdPpU=;
        b=uNl+j8vR2bm2hY8lE54FrlU/h7olhJ4EJaF+4BEU91ilT52d/olKZNyPMMBlAZXrvI
         45yj4dnXrAufqr0orf9Omn+AvZ78U1LK4tIFXgnBGmiJkL7W/yIqP+8hyoRFPERozT1S
         e3qreRd2qO707maV0qV3C8WXQjVlS8BCjPmVxsZItcyQEGEtt3PQQ15qBYGK4P/822Vv
         I1LwRjTRC/Kr3TOGPIkK5HiSNAr70/maUNpF3J6TFRGmaW0oU1silKeO4nqy9Tv+nq8H
         q70YpiccE50NMlftbYKktbsaMfncP+9eB7uEPWunOlODNUQh2A0ne13QzW25/nC6Bob+
         iUZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xAOQPsy0MuZqOVw6MvQAg1ZmYyazV/Yf7R03onJs9W+s6puCy
	vvjDZTZtfYJBlC3qxtHm+I0=
X-Google-Smtp-Source: ABdhPJyferivQKUHx/Z5BECIJzwlPxgSY1Y0GuR0ywP6lCN33e4RY86Tcb8w9GpLWHa0+HIfgg+yMw==
X-Received: by 2002:aca:f48c:: with SMTP id s134mr1226879oih.57.1592443176552;
        Wed, 17 Jun 2020 18:19:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5788:: with SMTP id l130ls818664oib.2.gmail; Wed, 17 Jun
 2020 18:19:36 -0700 (PDT)
X-Received: by 2002:a54:4f1b:: with SMTP id e27mr1237786oiy.1.1592443175699;
        Wed, 17 Jun 2020 18:19:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443175; cv=none;
        d=google.com; s=arc-20160816;
        b=hesLNSWkbTjpARgDDYLtTxxrFOjiAb0RsHfONn4zRFS9hcb0kShInL6DCtw3PpWMzr
         rJ2T8DP5sOAIILjp9/36LwbbTBhL/yw0jcwLG57vU8Vy3FqY5B1jnQzYizrg2iEXEQZ1
         YAUeTMwxPXedAGMa7wzAtkZROXBQlCCcgvWwuqkko6ihiIY48MgiD9CB0So9R/JHwObL
         HJgVB3C1MHjUVZyMVf0wQoRZ0y6uI+xPs2KmFC/siWLIiIIn5WPgLCThSB6xutFrpeBg
         IdgySAsOvwt0k1LTIb16S/7dsrFKbeXuCswXXXkHAVEg1m+bsdX5R4zrt799o7PFnBGd
         9+PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=L1BBLi+PWpIPs7Y5Vp07PFj2ODQap5sw6q1eALeTQv0=;
        b=p8AbaU6pI2Sw430h7UXNzldURQl5WFxKnsBm06J84un4Zlxt0MolRIINdssYqAXExs
         JJGqCeKlUGkAKimYgDXmCTkO4lOTqMRsgmVrXUNzrLTUXRzu/KcEcg2X0DoN5Z5wb/O0
         Tn+i9a9ONSZyF49jcMrehsst7Ndbx6SzwSbqSonyxiNOrCoNoW+jH5hd7kjxMvTZe3fC
         MMAYPPRfkz5uPYbrmulNhjXadHjc9nuzTlBMtqC3h3cBrTGJncUXAlEcsePWq21i00n+
         3wX35pDVBkL0DUi/mks1mwpZABeqHijPWrYT2nooEJD6cBY6ZYka6cSnxWRlPZNv6ro2
         0TQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dIfLcKj6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a13si95390otl.0.2020.06.17.18.19.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:19:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 168D9221F1;
	Thu, 18 Jun 2020 01:19:34 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	clang-built-linux@googlegroups.com,
	David Teigland <teigland@redhat.com>,
	Sasha Levin <sashal@kernel.org>,
	cluster-devel@redhat.com
Subject: [PATCH AUTOSEL 5.4 138/266] dlm: remove BUG() before panic()
Date: Wed, 17 Jun 2020 21:14:23 -0400
Message-Id: <20200618011631.604574-138-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=dIfLcKj6;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit fe204591cc9480347af7d2d6029b24a62e449486 ]

Building a kernel with clang sometimes fails with an objtool error in dlm:

fs/dlm/lock.o: warning: objtool: revert_lock_pc()+0xbd: can't find jump dest instruction at .text+0xd7fc

The problem is that BUG() never returns and the compiler knows
that anything after it is unreachable, however the panic still
emits some code that does not get fully eliminated.

Having both BUG() and panic() is really pointless as the BUG()
kills the current process and the subsequent panic() never hits.
In most cases, we probably don't really want either and should
replace the DLM_ASSERT() statements with WARN_ON(), as has
been done for some of them.

Remove the BUG() here so the user at least sees the panic message
and we can reliably build randconfig kernels.

Fixes: e7fd41792fc0 ("[DLM] The core of the DLM for GFS2/CLVM")
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: David Teigland <teigland@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/dlm/dlm_internal.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/dlm/dlm_internal.h b/fs/dlm/dlm_internal.h
index 416d9de35679..4311d01b02a8 100644
--- a/fs/dlm/dlm_internal.h
+++ b/fs/dlm/dlm_internal.h
@@ -97,7 +97,6 @@ do { \
                __LINE__, __FILE__, #x, jiffies); \
     {do} \
     printk("\n"); \
-    BUG(); \
     panic("DLM:  Record message above and reboot.\n"); \
   } \
 }
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618011631.604574-138-sashal%40kernel.org.
