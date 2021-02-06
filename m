Return-Path: <clang-built-linux+bncBC6JD5V23ENBB4HT7GAAMGQENSPZACI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCFB311CD4
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 12:13:53 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id t202sf5240859oot.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Feb 2021 03:13:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612610032; cv=pass;
        d=google.com; s=arc-20160816;
        b=scFgITkT+2AA8P2t7NV5Bg8a4hEEyODLVp1mvD9lBgGxHPNV8oYX8xbREzFQeDX4lL
         NMmEVrxj3Em37rU0iIM66mVSOCg/vfC70rz0hEK0+GmGD6IM3TcR9iXkRz0YcojkX8G/
         gn/Q03Uvs7eqys27Z46qxIKlZDsP0W+IgZb+w6pVT+zWTi+4998IKxh/YGqTLAa6DZqt
         3pQEsx0onw665ZuJ3/blrq3fW9vCL4GR7qGa/bTHGFIMtx9P6y9ZLJSGa7xoQmrxaLTm
         8LTZnZ+A3YNlm3m2ZKbaiD1r2bFKa7FJ3E3BQpS/Faowxv/YCxtd6/Vc4nNjpHOotpT4
         vobQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=i82xI65/GsrDd9IR+o5P5aj+WyRmTncAR467EXD2rzE=;
        b=RmX9WND/VidrJuU7m/Ci00e2nPxG5j8cJ7bhHjCsWYzTK4f34lQNV1KiCbAYsZDuas
         +E6lzzyZdyP1ZfsZFY8B8g1+C8RlNrpTFLSA7vwh5YsOMDmvcqCKJMzZXo+TsSV4g0fy
         HeIJahN0cT7whC75L5t/x8tRk0DkWoyY4vL2T6DjQUBob2pSjr5QYAjI+2MVPv/lIjpG
         +Edh8Z0069+CFzyLBB8i+TArSbNJ6xaesdHfDKwNUa9DzmdyantouHAX4rJMDgoVeq3y
         XphgrFhZFfe4wFK+NrbgmwSRQw1zJ+QUnLAIpurXpH6YyBH0Pl41bgD8hnMh2fHBll99
         zesA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NrB9TV7N;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i82xI65/GsrDd9IR+o5P5aj+WyRmTncAR467EXD2rzE=;
        b=aHz5lPYU7yDcKf+LdmhIwzOSdX5qvn0zKtxd4IdvFDZWCqoJYcpL20WAam4D9ycA47
         q8JoSIU0MtG2oU0ok0lQ9uL8cAwQlaZBMzQkFByNYX4V+YrqpuMlCUHkNudSljvJanpE
         GDfAczCK8mopoCdEshRixPsaXQrfVqHo+4mlzxFTfiMrt4lhLPHBvXpPiRW5PMkOEB49
         y1G6OrsZH7DB8r2OoAuDMkEEvg1o8likE/yznC6ugC3Mt8hMlXwflGsaCewcs3R4OVLa
         dY4Vb7Wlfo+vXtYlWfu7uZP2yMtvmA/+Rgbxe1LjRHAse93C7cWXSpAa+CfClssoiYCw
         I0Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i82xI65/GsrDd9IR+o5P5aj+WyRmTncAR467EXD2rzE=;
        b=FMipVDdz6fhcEm85z27amb7r+0vTyCM13XgQ5/WeSRi7l/s2i0/k8vnuMrMj79z6+c
         az9FXcDBuLw0OyMqfGGRkhpQ07agak1ObhoW8wC1+9vGdI6Tf4rbApJGTB83SXCefw2d
         sKZIYlN2A24yLOXdCbHrNbSfZudAfgL5FmcoGZkzyTEpsvlpA6zmDmxeKtPosMV29vrR
         iq8eFvjqsDqH2WDRhhihFBUd3V9fKxgfkSztOQYJFtSv4U4g8TuHcGOLcz4MIU/sA4rg
         henEb9UM364kzePmlSYLvQzgqT19IkcIWxKVGbiM4lnLCEPQbU+VjleX6UNR2tlTvDWc
         VwXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rjzS5twDVB5xmmQnBPFVIQtywX4Yy2BFSfTcH1aDQ0kHuGciB
	vnjfmrxMznJCEqtN/aAfEa8=
X-Google-Smtp-Source: ABdhPJypr3s+Wjb84Z4Nao3+cnlMUxJf54WShl653PlTJqYtCf65Ru+oYm95EDCsEzuP3b5VMvHylw==
X-Received: by 2002:aca:ea0b:: with SMTP id i11mr5793637oih.33.1612610032185;
        Sat, 06 Feb 2021 03:13:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:bb82:: with SMTP id l124ls2754748oif.0.gmail; Sat, 06
 Feb 2021 03:13:51 -0800 (PST)
X-Received: by 2002:aca:db03:: with SMTP id s3mr5367533oig.95.1612610031721;
        Sat, 06 Feb 2021 03:13:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612610031; cv=none;
        d=google.com; s=arc-20160816;
        b=0maQJ0IKOEs8zz/5W3N2WPzETlLPSyMbjV+vkbPxtgvz4/msPDCG222C45rRvdqI0m
         Pez6N5eH1QlwBy5S2dVijkHnO0aO3leMSZgb2sgC3ilcM0Z1xPrB8Wv2Qq/VXbKFfQwb
         eUIRRwwtXVLhiI3IIhUV1bGFhyhmxYqQ8RzWJtcCzmimM8bcSfOrPaoNDv63dgxAh3Ag
         g/+qdz+WXSrdVzwJqqvzEtE3tBc5pxc22RdsqU+dqaGjqLyxCo6rRSHpc+QsYZdJT6F0
         kuCaoUa9/UCdSxs24Ire24ChtWPrvvs/8146X1Lt5CqylGIulHl0tsIAbx4BDKvMucJr
         Fgiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Tq50gq0fkJUCTDXOefWHG83/wN7/sfIc/XO7gcR/nwk=;
        b=NSEKyIHzqyFBqWw+DS72e7cDyg4sa7h4Aw5CQFbGpIh1h2cmOwMVghNQS/X6AvyG4Z
         UyqzJY2mW4vpyExaaCl1HAkF7DgQzPfGEfnhjs47YZyz3OCdf9f29yWa4OALnwjcEP/g
         gY0sBe2ip1St37skgEVSadw7RkZeYfji3o9wT5EV3ORar1LUw+67ycHt4TCCv8zHdBok
         20orKMEM23szhJDzaekjCfy67bQQi+IzzpyDduslLMToz4GgztOcMRJpYSy2kQ8929yp
         Qk1xV64lNLX0801lCCUCfZQYc9bZveJndZpe0PmfqdUZm+16Gw2g7WitX0Y7ksZqBYq0
         E3ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NrB9TV7N;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e206si576502oib.3.2021.02.06.03.13.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Feb 2021 03:13:51 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6D09D64E5E;
	Sat,  6 Feb 2021 11:13:49 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Santosh Shilimkar <ssantosh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: kernel test robot <lkp@intel.com>
Subject: [PATCH] memory: ti-emif-pm: Drop of_match_ptr from of_device_id table
Date: Sat,  6 Feb 2021 12:13:43 +0100
Message-Id: <20210206111343.19273-1-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=NrB9TV7N;       spf=pass
 (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=krzk@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

The driver can match only via the DT table so the table should be always
used and the of_match_ptr does not have any sense (this also allows ACPI
matching via PRP0001, even though it might be not relevant here).  This
fixes compile warning (!CONFIG_OF with clang):

    drivers/memory/ti-emif-pm.c:238:34: warning:
        unused variable 'ti_emif_of_match' [-Wunused-const-variable]

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/memory/ti-emif-pm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/memory/ti-emif-pm.c b/drivers/memory/ti-emif-pm.c
index 6c747c1e98cb..179fec2da56d 100644
--- a/drivers/memory/ti-emif-pm.c
+++ b/drivers/memory/ti-emif-pm.c
@@ -340,7 +340,7 @@ static struct platform_driver ti_emif_driver = {
 	.remove = ti_emif_remove,
 	.driver = {
 		.name = KBUILD_MODNAME,
-		.of_match_table = of_match_ptr(ti_emif_of_match),
+		.of_match_table = ti_emif_of_match,
 		.pm = &ti_emif_pm_ops,
 	},
 };
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210206111343.19273-1-krzk%40kernel.org.
