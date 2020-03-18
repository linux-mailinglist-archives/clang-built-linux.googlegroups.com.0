Return-Path: <clang-built-linux+bncBDY3NC743AGBB6MIZLZQKGQEC5SXHGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFAD18A3C0
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 21:28:42 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id h191sf19248306pfe.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 13:28:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584563321; cv=pass;
        d=google.com; s=arc-20160816;
        b=afU/aD5jqLGVPLqt3613M+YbCSFipLGJeaQUrCO4JqEEbOClynJSLnENdjmmK7VdIg
         2e2jITMB8lqzHAdOGw0AThff4hQKlAtHJetHXfla1CUQzxQAiew0aTrDRUnWzvIXzc/Z
         vezNUUsiTw4XYhnGoGgb4uS6/bpgz1AVdLtrryQr75QwvPAvdTetXHQr3aD+NQdCQRre
         pGmjXPS8DkgYK7tv+Zn0nZ+1+uAnnSWh8r64bp9YlBL4Fpz0QobM/KKW0Zo+5XA2j1RO
         0N5gMdN496scb9YxkbBP/odrSJ5KHN5crhxXAOFMtp5BvHm+PhvZzqo6vOjlgV175V9B
         z1+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=VA/hiANBQFKFg41+1LDu75hD9u0Yxb2otqzxp3P1t5M=;
        b=i8ciqObkBTknsCRUtL8Qanb/NrVFn4IpAN7qMdq+WfVphV6MKuxLqjDxzXdV9QMVlN
         LGet59HnON9KanjQqxkhRNndqolcW29zGwCC7bfKD+3sNToS8X5/C/3l6f3pMdiZ+2Dp
         89oHRcWV6R6PDGoXEWoWR7AKPmBuPOavL49Xa+gj1P0TI1MX9QuEcl45vMLZ8Rqg/oXc
         tklgezDjUg94K4EaMSG8Z04wT8bV8olWGFlm9GzMBAocN60739PB7aIslPCJ1MG22ShX
         jnRr6RfhsbJVPIWfFXTZoUcckS3Ry4cHzjMTjreDUeMTeIGPU/MIZQ6a3lqsyM7OFdyz
         BJ2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.125 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VA/hiANBQFKFg41+1LDu75hD9u0Yxb2otqzxp3P1t5M=;
        b=aRDaPF2P9UyrrWAqUU4D3YqwEJlhk19VwzwHd+DqPlBK+4h3LFpeJ/vfmQbzBkT9cf
         00yL8VwRbz7/UmbetLj/qm6/U3opZOeCnjgG0D/exDzxTPlaaxpYGiK4LgZlFjlJFV4U
         rVfl6kQPYdI6KppqP7ebtguZYoVZunJVVEoDdNHnKS3jbd1Bu/B8gFNCB1XymwDmtkDI
         N5rsaigMVwHBrg5ksW0MDaWGBCI0rJkB76lJAif5b3iviKJyyJ28H2NGLU3KNLGeysPx
         Yys4Qw8wp48W2MJwMG46npUsmPm5VQP0akME0Fae9NRgdzJZcxnofrTJEdQuqM6kfTic
         Zn6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VA/hiANBQFKFg41+1LDu75hD9u0Yxb2otqzxp3P1t5M=;
        b=p9PNuDKFKXkGAMnf/eVYoc8e8r4RcP9jncVDG2eb6AMJaFeA60NY5hXWaUtobgIAjS
         xJqk/pTLpeZhRvaZSlr/nfYaPXojWd8Pk1AC+O4M579TZ2YsF7u4Efukjq1iSnYEdzDn
         uBe9BT2zhetdbLFLTQp/NEXBOib8W4M0WESslnn8lLUW1lp4dvWiJYz/FhfgnNHWMTZ3
         uk4kFzDxYmSNFObZCOPfLj0PUM4aIsOn214oe6AxAbcAeIHsk3LLA2CywOiB7rzOnzyE
         rptWjqP8y26xT6QBkyhk3Iq3n1WkDADk4+aAFki1cZF8xGwPo1YHs08X/P8EhfGTx56M
         LT+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1vGLMNjm3k/em2+BsdInyluHeEb3Ma+JjrX/LeYrjEM9YUFF2u
	NbMc2PiBfvSkeMEKWCeQyk0=
X-Google-Smtp-Source: ADFU+vv93SUyhrGXX5VxfaFaAKx7VaRcL4st40nXixpX/HWvihimxQiNO13Q4591LvuyWX8zXGpeow==
X-Received: by 2002:a65:68ce:: with SMTP id k14mr6571559pgt.417.1584563321303;
        Wed, 18 Mar 2020 13:28:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9911:: with SMTP id z17ls6427269pff.5.gmail; Wed, 18 Mar
 2020 13:28:40 -0700 (PDT)
X-Received: by 2002:a63:6d8e:: with SMTP id i136mr6642073pgc.325.1584563320662;
        Wed, 18 Mar 2020 13:28:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584563320; cv=none;
        d=google.com; s=arc-20160816;
        b=jv3m5yLuo8KTxenIHjuW3qtN6UyphZWIhfKaxA6v77sSFUbHUrPL+lXpkGVcnH5RaO
         irZ1+Wy9DXOnHvXyyX/2Vvzr0cUOrEZbXljJzKHwDXC0hteabV/3F5M8a4MIWQL2D0k5
         yE45O1eXA8KKvvhReWPbRRpjoluSWtFjXcH4Q6iJumFn8ZjJX/12OJAIE2pt69CplpaF
         h2gQiCjEvh7TkpkBSNIas+YStaz5JPvzGF0LN3X6YFa0bHOKRP4cMm5HAvoOY5q3lY2Q
         Lhvs+FKMQMQLE1kzTimZd8VGIUZGOd2gRERuCTW7PCWcA3GolWQvLZcwGINBkSp440VV
         gsKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=eF4vChjkV2jJLHpGZ2gwXMm6aFMxa0b8DPYgHJ7J69Q=;
        b=N9b5j3G2xlj/Rh7WT7FH6Fi4XGn6+ziOURdM//jZrY5ebzuKSa1rciIWdojpXQEGaA
         5mxw9sL4Hh3LIYBvShCD2Rb+G2XiysfDaKE1Y7wuqKP41+YicCGXouM3ihWYb48RydWb
         jmYogPZOQxVWsQRgvFN/sdu1eyL9rYOsNEyEMYXvrEGBDFkEciB+i5XnYaeDg55tWMcq
         wRXpEJ5Inp/yPnjXpLWBSKeBV9pDj+VHnuGd7Mu2zs07txh1fi52WMVmbh7QSuTRqUKt
         orae2kHwDTIoh2ncglg2j7y2pTK7WuTt/pXUp+KWchMWtijpPKFIWg9nWK6UKIniD76n
         epbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.125 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0125.hostedemail.com. [216.40.44.125])
        by gmr-mx.google.com with ESMTPS id k3si7305plt.1.2020.03.18.13.28.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 13:28:40 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.125 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.125;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 34A63100E7B45;
	Wed, 18 Mar 2020 20:28:39 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3871:3872:4321:4605:5007:9592:10004:10400:10848:11473:11657:11658:11914:12043:12048:12296:12297:12438:12555:12683:12740:12760:12895:13069:13311:13357:13439:14110:14659:14721:21080:21451:21627:21990:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: sleep52_2e1ea103be818
X-Filterd-Recvd-Size: 2672
Received: from XPS-9350 (unknown [172.58.30.155])
	(Authenticated sender: joe@perches.com)
	by omf09.hostedemail.com (Postfix) with ESMTPA;
	Wed, 18 Mar 2020 20:28:36 +0000 (UTC)
Message-ID: <3a997f4ee640e607a171a19668f5f5484062116c.camel@perches.com>
Subject: Re: [PATCH] drm/amdgpu: Initialize shadow to false in
 gfx_v9_0_rlcg_wreg
From: Joe Perches <joe@perches.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Alex Deucher
	 <alexander.deucher@amd.com>, Christian =?ISO-8859-1?Q?K=F6nig?=
	 <christian.koenig@amd.com>, "David (ChunMing) Zhou" <David1.Zhou@amd.com>
Cc: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Wed, 18 Mar 2020 13:26:44 -0700
In-Reply-To: <20200318002500.52471-1-natechancellor@gmail.com>
References: <20200318002500.52471-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.125 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Tue, 2020-03-17 at 17:25 -0700, Nathan Chancellor wrote:
> clang warns:
> 
> drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:6: warning: variable 'shadow'
> is used uninitialized whenever 'if' condition is
> false [-Wsometimes-uninitialized]
>         if (offset == grbm_cntl || offset == grbm_idx)
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:757:6: note: uninitialized use
> occurs here
>         if (shadow) {
>             ^~~~~~

Wouldn't it be better to get rid of the shadow variable completely?
---
 drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
index 7bc248..496b9e 100644
--- a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
@@ -735,7 +735,6 @@ void gfx_v9_0_rlcg_wreg(struct amdgpu_device *adev, u32 offset, u32 v)
 	static void *spare_int;
 	static uint32_t grbm_cntl;
 	static uint32_t grbm_idx;
-	bool shadow;
 
 	scratch_reg0 = adev->rmmio + (adev->reg_offset[GC_HWIP][0][mmSCRATCH_REG0_BASE_IDX] + mmSCRATCH_REG0)*4;
 	scratch_reg1 = adev->rmmio + (adev->reg_offset[GC_HWIP][0][mmSCRATCH_REG1_BASE_IDX] + mmSCRATCH_REG1)*4;
@@ -751,10 +750,7 @@ void gfx_v9_0_rlcg_wreg(struct amdgpu_device *adev, u32 offset, u32 v)
 		return;
 	}
 
-	if (offset == grbm_cntl || offset == grbm_idx)
-		shadow = true;
-
-	if (shadow) {
+	if (offset == grbm_cntl || offset == grbm_idx) {
 		if (offset  == grbm_cntl)
 			writel(v, scratch_reg2);
 		else if (offset == grbm_idx)


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3a997f4ee640e607a171a19668f5f5484062116c.camel%40perches.com.
