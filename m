Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBO4EVP3QKGQEYPNTXNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4431FDCE5
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:24:12 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id x187sf1062632vke.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:24:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443451; cv=pass;
        d=google.com; s=arc-20160816;
        b=DFDG7WpYNpcYvVPrjP63HFZyLfX41JqeCR0u56EHu0eV6MYaMDBv64Py5Ur2kV63x1
         ukrcYFcDsHeSPhYHaSaIfQY0z/gXJ3n5GWX+z7ZDEcZwPOFQyNATwDsnCRVhAF5vn6lC
         EwAQOWyO/TJA2fROSVjQH3lrF2JXlhrE60okSd/StQLcyOhUav2Psk/de+V3OeyKqjuE
         3GY6vt1ozmZK2mQBJuXuZXCmJP70o57+zfjFt8uXZ46Z6tA+fFIyCZkoaA2fFxQ9CZfq
         sp3IGSReZij2KdAoH5REc+pt1/LsXLOEjQdU8D56zgu001k9LN525JwdN+OvX4trJ4TM
         LWAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=OcgoDsuudVINYV1a+8Cl7nxQSHuWcSmjP3eCCM/FBZY=;
        b=grdoSRs7Thux1F/lX+NrBYhuC1XUZ5mKJHAAVpMAKXzhhvg4nWlx49qetgaUClaxiN
         cN/ZZoq7ft1wHkfahaAl3pERuXVhCOM/2kMEAaZ75uAkRnh68eX8r7SEoaWjv4Ht0bB4
         nYWKQbatRdhLLjIKgZFXQo6rZgGiRs0CXW/+S/tWBOLPc+Z+5yrZgR9OVYr77YXTwXfT
         uuRhmqGynZ+xU/Yy7t6lWJBX50j8NHZS/2GgvOXM3+pUWVubp0VDqe8NG62PaRFtZ4US
         eoHdBdeMbtVZWQ/25UUKA68PpBnHWLfwdcgEbG4CXVFKZWvpylULHO1BBmgl9yxm7XE1
         HxYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GBNbbqGD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OcgoDsuudVINYV1a+8Cl7nxQSHuWcSmjP3eCCM/FBZY=;
        b=H4RRamoXkU85e1dzbSjTuCiIlCzLArTslAcRc+ElruZGuqRq4h6JUZiGL0B6vqa1Be
         OKENX46fz1MLv9wjrcwQtVyWPETPoMuoByqWz18TWcDfY3tOMVvOcvrl6TIracmp7XXi
         Vp46PnF1AFgXZXvj6ujwT1apfHp19IlFvJAn4BYn9lARMdGaNnp+gRABBRvUR2guIk/Z
         pdL0yuWTRsvvPqYmGuL3Nr1JKNqi+LSdZSE++ViB7Qiaviv+ioA+RxRViW/EkFdh/oOY
         HAwUDbVtXjgQcPbOyuw/cPmc8ikGAz9I+lJA66G/KJeAJcmLeMIDZr+i0YIZm+3fW8Ph
         YVpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OcgoDsuudVINYV1a+8Cl7nxQSHuWcSmjP3eCCM/FBZY=;
        b=cpwyXS7mRZowfCZuegyi5DQYjAX7XbBxtLtoUVjEJVFzY7+TnKh9K0SpWlrQurnEn8
         ES2sXc/WbTA3SRfgZQasm29PTj3K+untwEwn+TjuzsyaZaksf1z71T9U8NH66NVgylql
         ClEuP7we37FktzPrtnlS6OISVXLT1Bin1aVARjyc/Cjm+7A6vF4SkpuWN7W0rXKQvMda
         jkuWjgIW96zmQ7MGZLtHXTtvgwIlnkET1LsHQwjNbwOEH8LroOEsfLw/8hyZgWpeAUzX
         XsT8Kl5qLSq2aPA6778ujrtbqRlrtA7HzeqnHMs8ylyZPLiKqPDrr40E97e6V0PFw/jq
         jaMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339/beP3Avn7Fsk04FrI84rMttxGgMS7AETozaimjCT3MKb9+j9
	wzzphaKknFolLB0lKidVYWM=
X-Google-Smtp-Source: ABdhPJxonIKvwmOkalkE/2JreKd7FYUYklJ3RpjeiUEBzabxmvyEjXcQ30OH7C8N20ieM14lmSgFLg==
X-Received: by 2002:a1f:2c0d:: with SMTP id s13mr1755692vks.9.1592443451199;
        Wed, 17 Jun 2020 18:24:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:74c8:: with SMTP id f8ls286235uaq.1.gmail; Wed, 17 Jun
 2020 18:24:10 -0700 (PDT)
X-Received: by 2002:a9f:2e09:: with SMTP id t9mr1342725uaj.118.1592443450827;
        Wed, 17 Jun 2020 18:24:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443450; cv=none;
        d=google.com; s=arc-20160816;
        b=E204WHeEpXHurlKithvYkTQ0x99fkUSPiB6uIiJOSMh3XzEm9I+9SAcG05P/r/C1Xt
         DcY58zajx6U/1Qyc2rNLdxyOeyzQ8UQm/xL3SqSEagchzzrtuYj4USQEtEOicesYczyq
         iVd2udaqesMhu+2Ho+GABDdVmosRexFbSQ4qNoQCVWUpvJ6H84DAD4sSudaneTdC4x/O
         oFiQmI1Ku6qPhWDfRwCXOiEZjK2gEJQMGNw1vanh7ii2KrQNYZNtuj3DpW4LF8+nZw/x
         Y/mExJQhLrg15SDnAQf9rcT0OLmbdh1xokTlLH35Jl5NHBxVXx3uqSeBGL0Bum2OoIix
         PqKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3S5i5oTGVCWzldRrADH1Y5uamNwgqYM/VOwzFi6ZP9g=;
        b=MzXFU8K/eroBSB05zmwnjjO8KY7VLiEUt2lO6YphMS2tzzo1hU06JXSWwVjxY0zr4/
         olXMVbV7efRQ0hw08SCavabZKGT8QZYP8QX5h/YXs2MHU0C9ovD2w2EpmV50GchvDVdL
         FzBn9daQ4wi/QL0ygqiWLJlcYPjeBGnz80IQr92A1G/k5xXaiIZ33/51f+GLeMMgSzEq
         Znl5Bvw6WMS4O6WuEMrz5Bt5gN9eZUgxBpuNT0JrgFcmcmYA7lJ+/cqBL+imiS8aVJOS
         mWh/UPZgBV2CvTyhT/DXhRDNX5wN8FaXfgpBvbEFDuX2wEv7lhjEe6tLf0EbTx0mVP0N
         9KnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GBNbbqGD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y7si120820vko.5.2020.06.17.18.24.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:24:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 09DD1221EE;
	Thu, 18 Jun 2020 01:24:08 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	clang-built-linux@googlegroups.com,
	David Teigland <teigland@redhat.com>,
	Sasha Levin <sashal@kernel.org>,
	cluster-devel@redhat.com
Subject: [PATCH AUTOSEL 4.19 085/172] dlm: remove BUG() before panic()
Date: Wed, 17 Jun 2020 21:20:51 -0400
Message-Id: <20200618012218.607130-85-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GBNbbqGD;       spf=pass
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
index 748e8d59e611..cb287df13a7a 100644
--- a/fs/dlm/dlm_internal.h
+++ b/fs/dlm/dlm_internal.h
@@ -99,7 +99,6 @@ do { \
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618012218.607130-85-sashal%40kernel.org.
