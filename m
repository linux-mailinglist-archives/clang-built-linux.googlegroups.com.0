Return-Path: <clang-built-linux+bncBDU5DXUG4MFRBHET3ODQMGQEQMUQU3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id F168B3CFA0B
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 15:03:24 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id b3-20020a05651c0323b029018ba0baeb6esf11315771ljp.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 06:03:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626786204; cv=pass;
        d=google.com; s=arc-20160816;
        b=MOqs7Su+9Hw6LVdKCEoygfb/8vvPPRmw1T9A+vtVlf04uNjgE+9AgL0V7KZERPqNNv
         w7oqdhmI29x4AleTsf7s/Od01tobD+JuaNzB+saztAuSZm2kBkP2X2+HxvG/YsPKXU6w
         C/4j8O53ghMM4DuRYrH1MP6WPQL0+zOTad6sMjOmXtFwN2quYapEtWyEDYT7MWCGN73B
         9+AfYgVoqkVfowexBs+HTCqYYsr5yoX5HvvsWJGJfyflffwpsKZoJpZgUxk2RV8Kwp2o
         sI9CWUZ1ZJUw+diN13Fc0ERX2QL00edpKUUBd91OxnIgEAnN8rqOwsKcf0InqYu8dh6V
         8/kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=TW2KkW3TyoodV31kP8bkNvQqqjCDE2Y5KCS48jEj1AY=;
        b=rIzw+dxauN4YSzkCNbfNprr7qjrB7uga0ZAGdIv8VXYrynvm0f9lwdUViT92Ob3bHr
         9CyhHMGOKpsSYuyPS3/WEluT2Xg7hwlYzfRtJpry0m0peKxPbwXwHywF4oDkmvqbRbqD
         uPQvZqBLmvC31t55wkAgSAb8VhJF2AI0F7hUyYPb432aqcOj8upN4tH6Z3UzcwAeoT1c
         t2csea5nNcObIFScxjyFOb69itG0L7EsvJ18tQLaolzq1fIhMsoz1Kh8pXhYr4/ULSI/
         rdJrU1uiGCqOFli6wcXIsw0muh+bTrwcCiX1Md8eItP92myf6Ov5P+ylYgqDHeXL1M4g
         xgwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@canonical.com header.s=20210705 header.b=DIklFQHY;
       spf=pass (google.com: domain of colin.king@canonical.com designates 185.125.188.120 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TW2KkW3TyoodV31kP8bkNvQqqjCDE2Y5KCS48jEj1AY=;
        b=SSKeHiB0H9hP6FyMKk4aw5FS3+NYAqjUkWeX1AIb8D0Th4VHSna2snJ2kbDuYi4bxq
         P34dboq/Pz1W7XGUUpE8F2ZnisleTccyyz8L1KUcd24xk5yn/yIU7DU5BS0qC/REsi5z
         el65KHgT0RvOOXADjupps9cikuEEZ0ceMRZ7xcDh2mG3dI9WGB7T5NGuyuZsHLW0V/mT
         mV8aip9ChRAw37uImNSIpdCD0rn1IX5bnZS0tWcsxYQy2IdBjRm5xkRbQJDDuX50ZP07
         P3pcsYO/FZbg/qpPYGs0m7/Func1ppeptK0HANbmI6U1XEiHJcaFR9vxSClsaSnQCFRy
         Wexg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TW2KkW3TyoodV31kP8bkNvQqqjCDE2Y5KCS48jEj1AY=;
        b=sBuoBxz6LEic5Jxr161vke+ZIxs/F5SgW0NPl20e5Efq7PbQ9MvuYZHAtGHvBmtH6X
         zClf3COFpt/8UqvmNsjlJljuUYAVpYoRc+hatlbR80f69Bq/2wEGiI3+szJgB1lwSHcP
         OI6GM6zQ3L09nVyeEPC2U1ewNWTrM4pxIkEFQBKtdy9wBeOjbRliMcjH1pNZYcREmyrv
         7VisZOCLydOQ5pIQp8ucCyPkb72BzIpkwRnRfJh1iJrZ9+zMDiWQTcUbJ+DTH2OOquTl
         Fl32fN4T7Yh4vurslzq5z3OdP78SKwCcW3j8tnadelFaCXPxT2GC++q+33IF2rzJkEfO
         tqBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311KWHlqi/aqkEuqEyZc8WxBEudbXv/K87FKjEOGrbUQK7VUxrh
	y2V+SYmglgwgZkwtVKVMrmk=
X-Google-Smtp-Source: ABdhPJz/1y4SX+k8PSPUBzGY/BXgYL3Th6BF4CdHqJBjUtiafgY0ie6LyPdQZ0OA8hcx1L3XXsslew==
X-Received: by 2002:a19:790a:: with SMTP id u10mr22879005lfc.9.1626786204459;
        Tue, 20 Jul 2021 06:03:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1025:: with SMTP id w5ls4559386ljm.0.gmail; Tue, 20
 Jul 2021 06:03:22 -0700 (PDT)
X-Received: by 2002:a2e:9a09:: with SMTP id o9mr26843925lji.473.1626786201667;
        Tue, 20 Jul 2021 06:03:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626786201; cv=none;
        d=google.com; s=arc-20160816;
        b=M4wu9sHspNieQbPSWNpPWwXim4vDPfp4qaW0L+D/5XTdCwpFCOWCY/0OeZA2NfeK+u
         TMA8V/j50ho9g6Tj5K1mc+HRgUY/5ZE07/lHv09ry2BbdLzYEaVcKoL12qSTsPvd/XGQ
         5B3RdyjwNEt1KFH5jUgNy+ZbQOZnQLuxPcoURPkwCG1eaR3NKlsurzsos+SBjb8PrON7
         yZcUoOKLs5UN8QKGTIyQth5TeOvgqk0lcByElABou7MhZ/4wu9zmfXdLXrOm3n7RaZ+e
         cjDzUD9xKOUuUslGE/t8OT69m8N6zrwgyrLfiTjhR4ngK9nHKs9d0GSIMJ8wF4QQAoHS
         m72Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=PQfJRURFWXwxKi9tGQBBw5EhD752Jp+9489PeReXm7s=;
        b=rU0YlZQFEtTD7QVaXQOvht/lMw7woZa84KiP/XFRbY0v9VxLOWE34jkBebL1AP6YPT
         CeQHS6gOWLlSlRQatQ9VgYHOJrWxpTxvRsIXVerMXxRTbNxB4oOF1ickznkik2Iv8coY
         k/4AkeGGY0uUa3f0VRJWMHEAtdw+fkUG/HdfodK8ZhLAs70k6EonJsUrqj+Oal+xu2Oe
         ES4r9xz8iXrVPXLuc5DDk3RZ8V9hAdnt43IMMR3YnhP8CmK5wgUUjobQB0rc15K413pe
         OgFqs/QkEeAua0GtH6H0obciWxK+FPwgs9tkx3DkQJnNLOC858Q0KELWmxzrLY+h6FBE
         nbew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@canonical.com header.s=20210705 header.b=DIklFQHY;
       spf=pass (google.com: domain of colin.king@canonical.com designates 185.125.188.120 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from smtp-relay-canonical-0.canonical.com (smtp-relay-canonical-0.canonical.com. [185.125.188.120])
        by gmr-mx.google.com with ESMTPS id v1si823226lfg.13.2021.07.20.06.03.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jul 2021 06:03:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of colin.king@canonical.com designates 185.125.188.120 as permitted sender) client-ip=185.125.188.120;
Received: from localhost (1.general.cking.uk.vpn [10.172.193.212])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 5CD2940624;
	Tue, 20 Jul 2021 13:03:11 +0000 (UTC)
From: Colin King <colin.king@canonical.com>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] net: marvell: clean up trigraph warning on ??! string
Date: Tue, 20 Jul 2021 14:03:11 +0100
Message-Id: <20210720130311.59805-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: colin.king@canonical.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@canonical.com header.s=20210705 header.b=DIklFQHY;       spf=pass
 (google.com: domain of colin.king@canonical.com designates 185.125.188.120 as
 permitted sender) smtp.mailfrom=colin.king@canonical.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

The character sequence ??! is a trigraph and causes the following
clang warning:

drivers/net/ethernet/marvell/mvneta.c:2604:39: warning: trigraph ignored [-Wtrigraphs]

Clean this by replacing it with single ?.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/ethernet/marvell/mvneta.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet/marvell/mvneta.c
index 76a7777c746d..fc4dbcc58f5f 100644
--- a/drivers/net/ethernet/marvell/mvneta.c
+++ b/drivers/net/ethernet/marvell/mvneta.c
@@ -2666,7 +2666,7 @@ static int mvneta_tx_tso(struct sk_buff *skb, struct net_device *dev,
 		return 0;
 
 	if (skb_headlen(skb) < (skb_transport_offset(skb) + tcp_hdrlen(skb))) {
-		pr_info("*** Is this even  possible???!?!?\n");
+		pr_info("*** Is this even possible?\n");
 		return 0;
 	}
 
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210720130311.59805-1-colin.king%40canonical.com.
