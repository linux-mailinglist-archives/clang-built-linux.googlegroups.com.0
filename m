Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBJOBQLYQKGQENUTACIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A05313EA24
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:43:02 +0100 (CET)
Received: by mail-ua1-x940.google.com with SMTP id h10sf3368432uab.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:43:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196581; cv=pass;
        d=google.com; s=arc-20160816;
        b=xhvBkPTRU3E7cEbn4T1eZeUa1AYrAUF8iBI2FXvy6efatXB0Sb1cp09htmntlinQHq
         SRbybyZEjGIGpn6NfXysFNGX2GgqSYNufUS8HN2iHCFqscVI/YQxbkY/ycZ5XHCoRoK1
         CKwaerQ0M1dFQ91aJ69MuyKjw70I0CV6ZMNWr2GhOZpQk7Z3e1EJdZejtBUWqoI+qm7f
         c4KVp43sp1YLsoPBZXzErLLKWELkZbWWlHKvzeIFBVP1Ks6ASvTbOtvqjWvTDaTmasYN
         dHB7tdep9u81OxUoaHHJev3SrE0iL8KS/jj2vfDxE9Evs7j/C+9hHTFtVezcSUlQUJfM
         nOig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=j2SvVjw8re6APcygm+221HPokx/4wp8KQw7fNYkhvqg=;
        b=kEw2MJcNuh368ftoXWmWgASiv/GPoM210mJbNmVcP8SVWI1uxOII6hV7CUKCGyNjg6
         4M8cSu+FVLeO/rs05YfUzoqXjlAmY2+3+IAZkGNB/ZNgh3X5p5bz93PNoDvUa+APyHvf
         dhSTxUIesawgWuSQu1imkeYpWghp+Rt9mjmAlL6el4NWkP9n57MMQ6SIzmS9tyoyr/Dk
         xQroNc9Cybm87oo/kdLNiJEpKAssibpZNANc4MF0V5BR9/NXHA8YxyFyePmQE1dClYUc
         wWvML2DrGo6BMfkS0IWcq2IKKwEki7+l7br/SRvlNg9WqU5hhjfU4Iszw1jC9kkUyFRL
         7/Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=h6SwAh7B;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j2SvVjw8re6APcygm+221HPokx/4wp8KQw7fNYkhvqg=;
        b=Lpm6jf7v4uQ11ZsQZkjWIg0IrLY94zUkhnhMPNLYicox8yRef95u2XGAXZvm3YifeB
         AKBCsagy5m7RjwJvXfLGZcXdPepTJDDSjCVnUnAwJGTMX1mEuXFoTnR9CEB9Sh0gGL9X
         qX4yqa6j2rcuDOZyFhMyg2EIlQ7YrNZvzsx0DJb8I4ppp5pO+DGsAuvM3m/H4MaZiREy
         y/NN0Z3expYecWPH2VUPVmBSRecdqQaNbFQ4VF/QE5Zw+gxap9BrFNTJeXd87uXM3lOB
         KdJdWnHt1d90dFAOzgxsNNnMLm4N/Rm5B0ycCS45bi50dvK+qGuccAb1NIQWABHzoPvc
         Yz6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j2SvVjw8re6APcygm+221HPokx/4wp8KQw7fNYkhvqg=;
        b=P9tITiLl6mel40OSKmgw2rhpggxL2hBm+z5AszRe87kdruh7zhjihqMOcCg113aiUK
         VZwgEOO+PU79Lud0pkLX9B9JhhVfCGnv70uljy7GmrE82N8oxhvImCdQ82YLU6vyVKQh
         3slKYT90P1LdQbIXKdZDrj1EyYBKkv9BsrUdqj112gwU+qlLq9b9MEUEyxPU2IXuPh1M
         w553KgPZMm9LO+dJvS99j0IEvxLlqH8bao5z1Urgv4+a8HmjnHaudcX9Qxcsqpt9kDAj
         9n/UiM9EIYAZ8aq59cicDhOv8v+C6gGHsj5sWqVBIzof5NRUXNQqJpVUAt4P7i1fo8e1
         iTeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX+AegNW2ktogvWkG+5IKfjiTPz+4sMepoujjVOEBjV+DAU6UeR
	CGhlgrjiauUnOjIhjyeXSSc=
X-Google-Smtp-Source: APXvYqxwcKpNB+QzRu7v+LQ2RnDjvfPj01neNYd7tJpAFXOQmHHNurkGkBsXV9WUlCqOkdZWtGxRSQ==
X-Received: by 2002:a1f:b4cc:: with SMTP id d195mr21181263vkf.82.1579196581550;
        Thu, 16 Jan 2020 09:43:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:201d:: with SMTP id p29ls932656vsr.5.gmail; Thu, 16
 Jan 2020 09:43:01 -0800 (PST)
X-Received: by 2002:a05:6102:402:: with SMTP id d2mr2304338vsq.146.1579196581071;
        Thu, 16 Jan 2020 09:43:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196581; cv=none;
        d=google.com; s=arc-20160816;
        b=et+qURgAhrlwgN4nuWNrh96cQwZHdUg0Jtvisz/B3iWQY4tbEe8jzaGhdf689IZg90
         PFYDrH787MrC+hkAMUad4A8hyISo53MH6/P8vc7oUW8PJ61Fx5XwgWnKL4fXAug74TP7
         QDKaNVFBSpXB8XDeZhzqWqWyz+ISEYos5Um4QbDXIWThfXyK21p3NurrDo/ApXmdDAwI
         R4ab41LunA0NUP4/6Wiz8z4icQUjg+0g1l1FGhRClr7CeeD3RffQp2KuPbYJCM5FU3j7
         gM6T8/nvcKU5dZsef40jtJZVHHfhbg6Y9nLkqKWiB5mJ8U1UN6dzwCPaCzh4hHrZ0SnO
         QBhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bfhVc4i97TSTEG/4y8yiHUjKG8jv/jDViMmXEhQ6EX4=;
        b=zv3Yz65Uwezj78YIo1/9Jr60qwNt/0t6teARVgR005vjznYMsaW6aLYZ8nfwcJoE8G
         m/YeFOol3Tr70RpGpuicVmZn2oh08eGZCSV6KO+H7zu+a0TVKITDTTa2JGx6B7Rhfq0n
         omx7ktsx4H85uMg/EFsc5LgsdDPhTha9meGdIGZbxn9K1f/noPhNDwFhdEhCDeQZ2ySA
         JDn7FWaH+8N1NaYisTLfRKNEmJuNRwt0Si5xVNF29bSh/KuX72HKeCOPmL0Q0DfFTIai
         eQ/R0PWBYdkksU01pt+6OUxAwP2yQbeTnmbbJIa35u/NQy99pP+rN1/Mgfbs9fhD/CR7
         cGJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=h6SwAh7B;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h7si915476vsm.1.2020.01.16.09.43.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:43:01 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 43413246A4;
	Thu, 16 Jan 2020 17:42:59 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Colin Ian King <colin.king@canonical.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 006/174] pcrypt: use format specifier in kobject_add
Date: Thu, 16 Jan 2020 12:40:03 -0500
Message-Id: <20200116174251.24326-6-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116174251.24326-1-sashal@kernel.org>
References: <20200116174251.24326-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=h6SwAh7B;       spf=pass
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

From: Colin Ian King <colin.king@canonical.com>

[ Upstream commit b1e3874c75ab15288f573b3532e507c37e8e7656 ]

Passing string 'name' as the format specifier is potentially hazardous
because name could (although very unlikely to) have a format specifier
embedded in it causing issues when parsing the non-existent arguments
to these.  Follow best practice by using the "%s" format string for
the string 'name'.

Cleans up clang warning:
crypto/pcrypt.c:397:40: warning: format string is not a string literal
(potentially insecure) [-Wformat-security]

Fixes: a3fb1e330dd2 ("pcrypt: Added sysfs interface to pcrypt")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 crypto/pcrypt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/crypto/pcrypt.c b/crypto/pcrypt.c
index f8ec3d4ba4a8..a5718c0a3dc4 100644
--- a/crypto/pcrypt.c
+++ b/crypto/pcrypt.c
@@ -394,7 +394,7 @@ static int pcrypt_sysfs_add(struct padata_instance *pinst, const char *name)
 	int ret;
 
 	pinst->kobj.kset = pcrypt_kset;
-	ret = kobject_add(&pinst->kobj, NULL, name);
+	ret = kobject_add(&pinst->kobj, NULL, "%s", name);
 	if (!ret)
 		kobject_uevent(&pinst->kobj, KOBJ_ADD);
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116174251.24326-6-sashal%40kernel.org.
