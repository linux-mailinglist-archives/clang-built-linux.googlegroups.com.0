Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB7NYQLYQKGQE2FWTLLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C75213E759
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:25:19 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id b4sf9067179plr.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:25:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579195518; cv=pass;
        d=google.com; s=arc-20160816;
        b=akYO4rS7B1DInOQ6Fy7f5SZ3jQpNq/tQGhu3FexdDeiAug40pglqSAl62nTpWoTVeo
         sDjgQVaoY+4gabiktDGaYBxLqGM/71bPpewx5BRfA8I1YbBNMEK+X6tgZI9bXtMLez0j
         6RPKDQgX8Ajd9ZG+2ZvK1FtyPtmKKWdOFKWEebf5qlvaS9xyiWQBMRi+6LpvswDTkZTI
         3BJmObPsNieJB/8v5ckXPObdSgsfjjb0TPffwaAstCt1ekG4wWUaE1c0PyQEZ90YQqFO
         g/IghD9qzx93T1eY486a6QSBLHzaV93KwWfb/+CamLDKdUwMtOQBu0RYdZPLbf3iyza8
         gVrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4De5GuAqI6RHqCA9vy/GHP9OP9mIrhHYmwU/b7YzgXg=;
        b=GtE1OdzdB7NdPZ9KybpDOkU0bApfa3hcQe/XOlacY9IR/gSTh96KOHG1zR4lMhDqBP
         4LdyU0xzGrAgmWkJrBKW56jxckXn9imSd22/k4h/gn8FL5ZNy1cimovGq9gFoHo16e7o
         ygarMFKHRhjsnm+N6O9D6QGpQlbeWXskl39vkdfjO4XcJrwqLCcPiZphyZz0BYfWN473
         g8pOMEYpYVWt2DCfgKmw+3JpFQV48VweYa0Fh/XNAokBGOEYhkUvcdhUIkaUpoKBIJ5x
         uq1QSp/tVKINagzBl+9I5pE0zHN1fyQ8gLP3h2bqMuojpMcoMUu8vsHBsnwZ1zvIxWeO
         eE8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EaTNr8OM;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4De5GuAqI6RHqCA9vy/GHP9OP9mIrhHYmwU/b7YzgXg=;
        b=j8VXwGerWbz0NrPgceO6RLDcB5sAfPDOvLbwOGHmIxSzo7nGkrff6xMuwN4zY+K8qK
         sslny6WBvO5IcH0hQQ42cawJBR/VGjEaINM4unyQkupSSQFtL229VRICGhCb4uUmdkQ2
         FifN6E9xJk2pXnmciXTJ+RHn7efPU3Zx3uB71dcvNSO61d2restu8LHxk3mtV6bQVTjm
         nK75yysakROHO/KS1YXEkKJyfVGkFig/QWGtLPeAS82cOmSyD/Xi839rd6IEIVJx4VXc
         S8zmVJmoCnBSH8ctVGWiojq9NAJvVKTkUtXYCOVkkba1M9dutA1AYTpBOl1naLKVExbb
         6qHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4De5GuAqI6RHqCA9vy/GHP9OP9mIrhHYmwU/b7YzgXg=;
        b=chNFVsGfQWyHXHk3FjlX5T2uQj9Qzi+kS3207XBSYrp6NJhI+Vreq+LzRfpEvaWyoh
         v9fYVdElGnoybBR2+eGlZian+dBkEaD47yZLWcYA92wrBM89XczCew/adao90udATUMU
         QC/V3PyFukSAR5WWnhYMoJadFz4jpISWGTXAJmZbRTON3Tduj2S6Fva7FwTQqmb2ABdG
         JR6tn26AldFSujjU545FT0eGmpfWUv9UosTsl2Of6exKo3Ojt1hRYTnEkdR0uMEMgNKQ
         a6YIHcgljb2eKgkwRqCYUM/yTdbUuNw0z6uoraQu8g2fP0zZsf3bwhLEV8PiGDd9rM24
         FLsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXkBv1SEMYw6yDVPw8orF5h3za5FCDxJ9VlHZyDFu3vn0AUtDH7
	sTrlS6SuX54aITAdfnvDZBU=
X-Google-Smtp-Source: APXvYqxyNn9ZJpRew7Th0rBawh5LjCW1BTXG1Eljt1XtgHxVNehJGbVnPk/RO4Qc4zDaE1uhdXEKww==
X-Received: by 2002:a17:902:ff07:: with SMTP id f7mr39603270plj.12.1579195517926;
        Thu, 16 Jan 2020 09:25:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:80d2:: with SMTP id a18ls6800295pfn.10.gmail; Thu, 16
 Jan 2020 09:25:17 -0800 (PST)
X-Received: by 2002:a63:1f0c:: with SMTP id f12mr41697725pgf.247.1579195517445;
        Thu, 16 Jan 2020 09:25:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579195517; cv=none;
        d=google.com; s=arc-20160816;
        b=nAqUOX9wvGMX4ipgjWhVAgOmMR2cUg5coVLwQgsHpciiSzeOmQS0vaXHJaos+wbRFm
         fHB6tIE5RGbVoo4Ay5Jb1yhna4m0gj1X4lAv4CErGtv8t+5i/mBY9k3z98qqiLBCekAh
         8XO0gDtfN7vlPAkue+8Ug1lGqzkWX3PedlIOjuFA2iGuJvmrFGd0qaOMl6T/OOB3lvCh
         bNInKVlkKYvBg86Tuolign7NUFpRfdAZ5FqXH9vif3MinmaGqsiP+15rk31ABOD+ENDF
         XeQpPSqRlrwr/GP6XZHuwGCJvejenG0m/2xX3/+/cOG7zaiD+mwe2nY4YMUThVwkQ+KY
         CoHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mJgjzTUAa3/t/kGHjabQo3+Olikbk5vMXUh8Uh5DaHE=;
        b=bwKYx3r9H4DyuBKQfiPg8xnzpMs59xUG/FHrcVNNsGuXrr4X1EiCc/tjJMDIpvtXlJ
         osuHjEVY4vvJcCpzpyMjSP/D1BQGpKGm9s8yIbrCGzhF9x3jpBx1NNsqJuOmjOIo3WYb
         sRRTeRsMQi3Ms1LH7I397djRBLQyfBVKqnYIZOI7QTIPY+MuMiLuOpmz5uQl5zX02vvU
         u66zT0cT/7d0a5Y8EE9gufbymRn0u2t8hChI9p21Qy2ZgRk+kZqKTfOs5wx3xzNFmWbI
         3V5qffCYLNUVVWAYARdH4T7GiJoZaIMOl/8c7kI92l5jfBjEKJdttxGZuoN1Fwhl3+su
         bKnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EaTNr8OM;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 65si1113679pfx.5.2020.01.16.09.25.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:25:17 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 160FB246A5;
	Thu, 16 Jan 2020 17:25:16 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nicholas Mc Guire <hofrat@osadl.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	devel@driverdev.osuosl.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 115/371] staging: rtlwifi: Use proper enum for return in halmac_parse_psd_data_88xx
Date: Thu, 16 Jan 2020 12:19:47 -0500
Message-Id: <20200116172403.18149-58-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=EaTNr8OM;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit e8edc32d70a4e09160835792eb5d1af71a0eec14 ]

Clang warns:

drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c:2472:11:
warning: implicit conversion from enumeration type 'enum
halmac_cmd_process_status' to different enumeration type 'enum
halmac_ret_status' [-Wenum-conversion]
                        return HALMAC_CMD_PROCESS_ERROR;
                        ~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~
1 warning generated.

Fix this by using the proper enum for allocation failures,
HALMAC_RET_MALLOC_FAIL, which is used in the rest of this file.

Fixes: e4b08e16b7d9 ("staging: r8822be: check kzalloc return or bail")
Link: https://github.com/ClangBuiltLinux/linux/issues/375
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nicholas Mc Guire <hofrat@osadl.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
index 15091ee587db..65edd14a1147 100644
--- a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
+++ b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
@@ -2495,7 +2495,7 @@ halmac_parse_psd_data_88xx(struct halmac_adapter *halmac_adapter, u8 *c2h_buf,
 	if (!psd_set->data) {
 		psd_set->data = kzalloc(psd_set->data_size, GFP_KERNEL);
 		if (!psd_set->data)
-			return HALMAC_CMD_PROCESS_ERROR;
+			return HALMAC_RET_MALLOC_FAIL;
 	}
 
 	if (segment_id == 0)
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116172403.18149-58-sashal%40kernel.org.
