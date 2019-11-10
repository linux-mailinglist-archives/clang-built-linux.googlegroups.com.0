Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBRPSTXXAKGQE44YZP6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 17768F626E
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 03:43:19 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id v138sf8604860ywc.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 18:43:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573353798; cv=pass;
        d=google.com; s=arc-20160816;
        b=GoG8S6wGXURuHc9BN+L2QwGuuE31fUINlesZFrp/TZhvuxnnXO7sof74xeTv2a886+
         ll7wE7ijpOx+GDBicGCrxSwURJXgFuRvHkbGU8w3s8ge3hWGfogGskyx08W2DB1KZKj2
         91HLEGCxSZOFKXniG7gzMjygr/ES25IMlXrRqWZSTJzMA9arrzps7RaoCZ3ALdyTLy5F
         JHWKMF97bDqxJZ9pxie5orNulBlbsEwZW4gFQtqoSxq8m5LG8kQVPHUjWF3JIbwYGcZF
         vGzkUlJwEUS3NxfoDExvl05Xy4qd+42QzSkwipEdFiKAow0+1aEhOT4lpipGoQRsSskO
         4nqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/uDlY7voqWpK5RJsTOAtlVCyW5t/vkM0lC2+T1wgEB4=;
        b=Uie1BrGgM4mnqqurwYxtKKcyTT3NPDvGpkeV3vVoBZZxSnumSZYl/J4bHvaqiBmxgN
         mcVvZVnZBHzKqe5tTJ07ugi5zW2GHBB03xUfCPQlBa6jNZqzXcnuZ6ubvCAzGtZeC7ED
         73Y1CrRrmfLXZIJ5O9W8TInnh075j+i3W8Q76FQh8YiI7wYXV3wXYQXhHv5gN6hxRNA1
         45a7TUCI3c6RlMGcTOSdHDV5gDOOoZan+eiRcP2MGvAEw1on0ye31WxiD8ALiFtY9tiA
         UKhlTi6C0OtVd1a5YwwCeufw16xuJ8ZUvuWW0RADtBZp40vzmRKfapJDGuJuUNcl9HQ2
         72tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="JYdv/Cip";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/uDlY7voqWpK5RJsTOAtlVCyW5t/vkM0lC2+T1wgEB4=;
        b=hGVR7kM3UZVkw4NY29OH1Lvw/upXVv0EKlLFIktjJ5rD3epvKyeuI9H1AiqG7QGlDx
         K/yDnvl49/5GGwuDm7bHz5VbTIHNueZRlDiKwMoXbyGQRUoKLNgkXOGE+JawbBmyvi+D
         Hzo4gKDLjrDKJ8dD9KdoGPDfk3l5+h29rs1PB+OBCcMuvFV8YBMIP5lMl86MUtIJi7Cs
         chKg6e4vPFKeV7C4zHiQpUMgkQg6dFn1t4hD24TrxOigTsMxlK1iPTOs2DLfXkQjiYx5
         531l7BZi5I1JTvpyzaEyjHnU7wBouzz5lqv32+XU7YODv2yF3WaAimjY1c0bryrM2NZi
         c9ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/uDlY7voqWpK5RJsTOAtlVCyW5t/vkM0lC2+T1wgEB4=;
        b=aLl8QOg4e4j7K02tNxpzh/X799rtRiZZoZFcofOdVSE2ODNAJFdV/0y1e9ZwortPRP
         lVcbBY0v/+PnrfrrI2Uq/rR1TeKuY3quAPoCddgx60tyX2c75eQ+Brh2HQMnHJuPNmN6
         2hgC7YZ3Q5DOdQVPMPd37W2uff6YZsw7zDkV0yNTkVoctigxAyBUWOq2MhvnM7GK3ns0
         nqQMnxkxpjQC2g17nvGy8aBf+afbW5jl0xRK6TCZneNisvtfo8XJMgjUm14qcUA8GhUa
         4aIwoxj4VL0KOWBC5QKAcJttQtlBYK9xDpi+1ljD7fEN4vRJwnFYiMrNpofjDmxW37JE
         ecRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUsmZdMM4WatjRDSPzWfvObmUMYc5UT3JqPrjFwSCMtrFabV6qC
	AGNl4GDezLkBKOKNgbU+Qxs=
X-Google-Smtp-Source: APXvYqzsYEqeiRz4bY06QNTRgbZFIaaemVRjIAfwxqnKhgIaiLV6oKY8cIlXf96b8cAMrYoKT8MWzQ==
X-Received: by 2002:a25:4144:: with SMTP id o65mr16188073yba.11.1573353797990;
        Sat, 09 Nov 2019 18:43:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:4816:: with SMTP id v22ls2261322ywa.0.gmail; Sat, 09 Nov
 2019 18:43:17 -0800 (PST)
X-Received: by 2002:a81:25d7:: with SMTP id l206mr12469936ywl.36.1573353797580;
        Sat, 09 Nov 2019 18:43:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573353797; cv=none;
        d=google.com; s=arc-20160816;
        b=OpJ3A48AO8jhE7VLgsqIKSL9WQPUTkawXzfhL76wGTl5Qbf9WQGH5oY9Tog4bs1T3T
         tzIlB9hCPwwjokXEdAGNQxPq1L+bVaY1tjNa6P6k1sLxFcORwkdI0xZhlGiX/g9Oh7LV
         lx5xth/eQFIvtUhWNzOLERIhNwBdrypCCQmaGzI7ctqc8sDUS5ObIsuURLPlvGzpqcu8
         YMUh2GUHoONrQyVwZ7jdogqYlxrhln2ZFkTb48JsIaV1MP+ER4dOk6eUhaZCLo4LiPeU
         EoQxraufv5FGXpW0RM2IY3qb7v6nc5SeKLBJ6RWckjb3YBtvqgDdkBrtnx9FTwEpQq2A
         CPcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gQ0f+5Qign8QHPKPAAXX+iOmxBYkV4twniSxTkkCm/I=;
        b=XMM5pNnd+ggp1s3mG9/4Q9eQAShnA0y3zXK8oUOtEaLOIAI9lXNZn+DzK2fDOsqqYQ
         Dju8Y+mRxrir3PBNr5rGakoSYfwAq5wilylMyg/3NqpQA5LhM/UGQNu9EiJYAiGzJUw2
         mZZUUMgrIlZxbacr2VAbvI0fW3Y6IzJjKPqLM7FuFAe3wjDYkrBza+wIxS+6I3K/SO+Y
         NI3NX8q2jLZwiq3OuCf0xk1UFefn3KFbeX3jpfyRTFgzWKM3CaT6q6vgIRVTL33JX4zd
         32fwt/soaJkp5mA5nuIBAhz2u2Wko/MXC2lgluHCDGRwg10L85Z3voVgOSfCCEL6rlpv
         Ts0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="JYdv/Cip";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c5si575994ywn.5.2019.11.09.18.43.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 18:43:17 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9B05B222C4;
	Sun, 10 Nov 2019 02:43:15 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Hans Verkuil <hans.verkuil@cisco.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 095/191] media: davinci: Fix implicit enum conversion warning
Date: Sat,  9 Nov 2019 21:38:37 -0500
Message-Id: <20191110024013.29782-95-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024013.29782-1-sashal@kernel.org>
References: <20191110024013.29782-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="JYdv/Cip";       spf=pass
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

[ Upstream commit 4158757395b300b6eb308fc20b96d1d231484413 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/media/platform/davinci/vpbe_display.c:524:24: warning: implicit
conversion from enumeration type 'enum osd_v_exp_ratio' to different
enumeration type 'enum osd_h_exp_ratio' [-Wenum-conversion]
                        layer_info->h_exp = V_EXP_6_OVER_5;
                                          ~ ^~~~~~~~~~~~~~
1 warning generated.

This appears to be a copy and paste error judging from the couple of
lines directly above this statement and the way that height is handled
in the if block above this one.

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/davinci/vpbe_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/davinci/vpbe_display.c b/drivers/media/platform/davinci/vpbe_display.c
index b0eb3d899eb44..6f82693524331 100644
--- a/drivers/media/platform/davinci/vpbe_display.c
+++ b/drivers/media/platform/davinci/vpbe_display.c
@@ -521,7 +521,7 @@ vpbe_disp_calculate_scale_factor(struct vpbe_display *disp_dev,
 		else if (v_scale == 4)
 			layer_info->v_zoom = ZOOM_X4;
 		if (v_exp)
-			layer_info->h_exp = V_EXP_6_OVER_5;
+			layer_info->v_exp = V_EXP_6_OVER_5;
 	} else {
 		/* no scaling, only cropping. Set display area to crop area */
 		cfg->ysize = expected_ysize;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110024013.29782-95-sashal%40kernel.org.
