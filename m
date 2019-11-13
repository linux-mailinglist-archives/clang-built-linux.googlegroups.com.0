Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBTODVXXAKGQEDPKU2XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 725ACFA0B6
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:52:14 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id y17sf518991ila.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:52:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573609933; cv=pass;
        d=google.com; s=arc-20160816;
        b=MIQpTxxKCbz4nDGPkAji6o/00XFZpd3Iq/LBnuL2rqRozRBRZSjE0XYQH+rW+gH1+X
         VAJvuWCa7+1jzBLE8JwioZsnqfLjMvMhOyB4shreu1CYjQHaoOkallmUXBZJCh0GwxRM
         fbY0zkbWevEtMVKLH/SIxIZQBUoWQWg3dguM97hrmfQAX8iyHca/VJwKimPZVBTRXVAc
         XDl5S7cXew/GYNzBGhJ+UJYxGoXfxVKkRWeiITVmurogMtnLSG1zQSXhETZBMyJw1kgk
         lbCHgXFBelK+q01+yMTxm3gyZBecobwz5iLDFHENfqyNrlrqNeJMqmOdq5w1oiiZmXmM
         togA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ZNgx2RLf7QjJPkyb3+WWGXiigXCGtHpobnNsdz8DINA=;
        b=d6fMr6PoskVyx64NRxHQatGC2YmmZRVoVqQrGWfIdHcYNgVsDk2Uc+fxXe5U1aw9h6
         /JenAey5B453dstlJW+8ZYeh7uEIfVZF6vZcKA+d4WdyJ/vtps1yTsT5KgvgMvgy845n
         CJAjEjBubg7/PpePGKm6Li7sBasiuuirD49kq2Qtpb6WVW02H+jptFfmG63Sbss9gvgW
         p0++RWIGai0+kcB89zZgB+/CJIDpkTJqALwDP6xk23oylUNkGxIur+z/dHDGQKpREtBF
         zb6224pT/2221lSq/fCbwRzJGMzsKVWPGbRpX9RsiJ84ARBQRyYbOuaZb5R0Tocn2wTv
         +HjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YvP0o1UL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZNgx2RLf7QjJPkyb3+WWGXiigXCGtHpobnNsdz8DINA=;
        b=rLJm/hVb0Gfk/iE3K7trsaAqblX1MwVKLsT3Z52ux8Eu+L62sXQ6ZwtF9zBwsITQrK
         lS9YjOZwbk0m3U/ZcHmpcQ4ZiX6Oj15+GjuVcKoGPij9kFL6s+4WRE5FAjT9tbCe4hNs
         FEz5DWOWDN7MX2L0bEK46cYi7aRkqH1AGwy2RzxXHAsLAuFvjrop9uF1p6NczjgzXgVe
         5jJ6s+WRlu/eFnXHRY5eZDBqRLfdcFFppac/1xOub2FAyubRuakUJkqc6LHRpjCZ+R/E
         yLzdzeB7l2tlQJV7ZvGBE1d5fApB+dRd0F47uhc2uQYeOOgrTYaygLrSemBOzevUeZXs
         u53A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZNgx2RLf7QjJPkyb3+WWGXiigXCGtHpobnNsdz8DINA=;
        b=AtdZpEWZ8bNICX8xBZj9c4O/tAFZCl8KTBQ0UHYamalYclGx0mLFDLz/qyVw03dOfN
         DIHup0jblEnre7MLsFoz1g+m6UzUJBpoWBID8h1GuHQZo+aD94StvluTDGY7nyfJudEE
         57XisIu+xAeWfdRkrhJb70KlTMyBs7QBGLu8rHar7BObqtIySCv0CanOoGMAfm2XrwLb
         kjV3Y4DZ9nxvbetLasfVAmD2+iFV0V7it6ZcNkIiZxtGAA+9zb9U7LLMdrKP6pLR9cNA
         GDy3AmtKBr3RF0q0tFEQkoLE5h2ACZcNzVfWP51/lE+Zhx0SlzhNWmb9/XZzNe24eOtY
         9TKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVbRYDSlwIps8ZByfqVM7wCS5snM6oRfzdhGKWwwzZw0eXOoewa
	YRJIThew3pjzks+59dU/xeI=
X-Google-Smtp-Source: APXvYqyahStvnPge3oCA4hh+yPMteLNvCETTwI2EmOuSSR7MxtrhNbqTcaWG7bdTvidYLlJlniEuyA==
X-Received: by 2002:a92:d58e:: with SMTP id a14mr1118725iln.4.1573609933340;
        Tue, 12 Nov 2019 17:52:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:b89a:: with SMTP id p26ls59952jam.9.gmail; Tue, 12 Nov
 2019 17:52:12 -0800 (PST)
X-Received: by 2002:a02:a38f:: with SMTP id y15mr658902jak.101.1573609932925;
        Tue, 12 Nov 2019 17:52:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573609932; cv=none;
        d=google.com; s=arc-20160816;
        b=d8fS4hDbObbuelbcc2BHom10exK5Ab4dyHgLNI+R3CIjYT+NrYIxU8u3ZqcTLNW2KX
         r/5f8lAzdy4UKLr/i9hNcVR24M19TNOoO8pDZUs3PACRrVzU534ihtBGxvkC5vp0MZLo
         ivRvMePo5dVv0rGh0ZOIk2XDNnbHARYvqKxxydKPiD2xxrCV51u0dsZVE8hWwyeLchk7
         Wkxx4PweK4qqS6X/DaVtORX0drNhcUV+bVRW9p7v0VraP42XPrJZnRPyL6JFBns0RVze
         3YI0dOO6xZby374e4kUGJN0m0CQkWLi15gkxpnGO00CEaX6FXJdX0nFBGGYRnDXyLSv7
         pqyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=t3BG5QpaZ4SjSXak7x3Ir9X6XWY1NQvXI2So92Xf+iA=;
        b=SnkzgeoPCTo6pPLPj3KvWX3waceSCVkwEKa45HV/kz5MCpV791b8LNYPx5sxCW9ZWi
         RNMQxQy+j1826A0fUPCA3xDzvBRCyV1lEw3IYsceHjAOYhld06Cr1Y7a1YpReFBYKZty
         IJZ8vyTIaXzpv9xJTb1FH/YovB3HMjZURPltuQRq7sZcfjOHtxbW8OvA2Bzt2h5P/5lZ
         fnWZiUAagoSUbY+g0gmmPFveU132sqTlSYK5H0DwWI+k0iToZjRArMHEolnWdbjpf8z8
         aq3Ikd1xtWSrJSa5Hk8g0BSlm9N5/nRihSvUKocEtEEEwkktIGEQg4daj0wABpO8dA69
         stuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YvP0o1UL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y205si20340iof.2.2019.11.12.17.52.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:52:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 67B6522478;
	Wed, 13 Nov 2019 01:52:11 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jason Gunthorpe <jgg@mellanox.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-rdma@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 077/209] IB/mlx4: Avoid implicit enumerated type conversion
Date: Tue, 12 Nov 2019 20:48:13 -0500
Message-Id: <20191113015025.9685-77-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=YvP0o1UL;       spf=pass
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

[ Upstream commit b56511c15713ba6c7572e77a41f7ddba9c1053ec ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/infiniband/hw/mlx4/mad.c:1811:41: warning: implicit conversion
from enumeration type 'enum mlx4_ib_qp_flags' to different enumeration
type 'enum ib_qp_create_flags' [-Wenum-conversion]
                qp_init_attr.init_attr.create_flags = MLX4_IB_SRIOV_TUNNEL_QP;
                                                    ~ ^~~~~~~~~~~~~~~~~~~~~~~

drivers/infiniband/hw/mlx4/mad.c:1819:41: warning: implicit conversion
from enumeration type 'enum mlx4_ib_qp_flags' to different enumeration
type 'enum ib_qp_create_flags' [-Wenum-conversion]
                qp_init_attr.init_attr.create_flags = MLX4_IB_SRIOV_SQP;
                                                    ~ ^~~~~~~~~~~~~~~~~

The type mlx4_ib_qp_flags explicitly provides supplemental values to the
type ib_qp_create_flags. Make that clear to Clang by changing the
create_flags type to u32.

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Jason Gunthorpe <jgg@mellanox.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/rdma/ib_verbs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/rdma/ib_verbs.h b/include/rdma/ib_verbs.h
index b7d63c3970d18..decb708b5530f 100644
--- a/include/rdma/ib_verbs.h
+++ b/include/rdma/ib_verbs.h
@@ -1147,7 +1147,7 @@ struct ib_qp_init_attr {
 	struct ib_qp_cap	cap;
 	enum ib_sig_type	sq_sig_type;
 	enum ib_qp_type		qp_type;
-	enum ib_qp_create_flags	create_flags;
+	u32			create_flags;
 
 	/*
 	 * Only needed for special QP types, or when using the RW API.
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-77-sashal%40kernel.org.
