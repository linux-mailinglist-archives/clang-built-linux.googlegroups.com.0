Return-Path: <clang-built-linux+bncBCNODNHUQUJBBDVKRT6QKGQER5FNTWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DD72A6F3D
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 21:54:39 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id c4sf21775ioi.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 12:54:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604523279; cv=pass;
        d=google.com; s=arc-20160816;
        b=f8Rr8qz1GafDYqf6j/bj1hnCswFkG+jqp40u+MHWW34O7a8P9+8db8SqEvX6xNLfEy
         G88gn7xqDszEbJjp124rC8U3wiQLtCWORwrVGXZrz0llShrBetqum0lVPPd1RURViCwH
         CHFS6pReePpfDD9U6vStvDeIUZRzqhpkyJNIO7/argw9yq60KP55YduHctvao8lAHjzh
         tg1NaQVdoviEN8r43pdaYn6zhwHbFKOrMpa5rEk37AA4PZXVmenab5506/ZvJTr69bpk
         mTIJh8I0WYXEpciW/iEbKR9lbJ1x0RUuWlNUajKDsC0UMbm3ybNrUppPLQjeuNLOvFZ3
         E9MQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=VxaSydGG+Gwct7qpiCALv3Y1Zys74Gc/B8fPy/OesEQ=;
        b=HZ0d1QlW4AyLCsAYU7BDhks158IaEc1MT9E626qOrtzrQqt8B1PO8hiK1NHofCpDXM
         C55iKEm6i4cXuf16pq6zBXtlFud7qRiH3jXJz4sLNd9JeFSjOIX2k3GAoWaVCRpGk4nf
         yfB9SWiihcVNrtjXYMnD1M+ss0uP7a7yrGA4UiFfZpVB6swI5fqLtrPdU9kIir254y5o
         qp3KqB9OglJsY13sdZedpVjXzoEAzPAKBBdMJAGsyGeTMvDqY8mlUctthLriBf+rbu1h
         EdxpEqGn10hrpOQQ+vebyhthUlUBUApOuiP2+AqmTHuv+aNvbzHUjM+8XrWW3N0GCDkt
         zdBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mi+nN8QI;
       spf=pass (google.com: domain of 3dhwjxwkkamc5n4n8n0nxt11tyr.p1z@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3DhWjXwkKAMc5n4n8n0nxt11tyr.p1z@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VxaSydGG+Gwct7qpiCALv3Y1Zys74Gc/B8fPy/OesEQ=;
        b=pbp5wkcbNltViFEDt6Es5p+2Fk5gUVBZXS2o7UHHbgxLkP2igDe6TxNQ58Oq5kSBj4
         ShgadsCQQznKT8mT3kSaFy5PlyLCmrJ4itcfnzfHIqGEcoFsgRL5uX5BF6wHioSjQ+gU
         t8tdPlZv91/6dR5T3rIe+4L9zbNvatORCh+2uNGnZxzwPCX/Hibuoi/SHYoA/1y9EPC0
         ipI+5l47t9Z56AJZzgpTECmCof2EfUZOTBZ1oyFMM/TObwLa1yW4JqzphrXQ+UlR0DLe
         a/Ka8gi/9HAG6JHTSBsc3RDTZrXCiQZ5TZl9Mkg74FRAoHPWrTobsl39tKVZG9spU+71
         uj3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VxaSydGG+Gwct7qpiCALv3Y1Zys74Gc/B8fPy/OesEQ=;
        b=rqGdFpvUH2NyVXOpOo+mjY3qdo4dGVw9nDTbu5k/DbKXh9laY+KSO3ovTT/CqtPwgr
         NaINbN4XxChtECKklV1OAETw8kBZF1GL5Zz1xBs541KOI/8TFgkC9qcj8GVzXKNItwrW
         y+eIPz8yi9sG69O88gpflLl7W+VLp7CDCKMVaxsHxD47VO3Q7n8M04ilw6rvJamCGibM
         ylXT8dvAmUSYUzzRFjzCK2TRPsfydEI0/E0uUaisXcX/A85OmzhkeoETqq7znJpUzv/7
         jrQrlcN5FWd2BH+nvxLBetncErB/5rFszPN9qM6xf1pfHUnopP0QiqWNgkC3UOQN0Jwy
         gGNg==
X-Gm-Message-State: AOAM5303V5VxOsQeNkjpiHCK06zk+KRVT/k11c5iYo1tsRpIqnDjiSnK
	FQrTt/aIQ7iV0eL6f8iJWnM=
X-Google-Smtp-Source: ABdhPJyxvS1h22fSNI1nNCpdd0J+8RI6fily4CYnrgIDzRNi65JBoNrdno4T0lTnOMxllFmk8OSV/Q==
X-Received: by 2002:a6b:fe11:: with SMTP id x17mr19128170ioh.192.1604523278980;
        Wed, 04 Nov 2020 12:54:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8c86:: with SMTP id g6ls538647ion.0.gmail; Wed, 04 Nov
 2020 12:54:38 -0800 (PST)
X-Received: by 2002:a5d:9284:: with SMTP id s4mr9531620iom.165.1604523278545;
        Wed, 04 Nov 2020 12:54:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604523278; cv=none;
        d=google.com; s=arc-20160816;
        b=r8AXAMU/yNk/LjwycetO4AqIwjo+Gf3NOJzg2Xqtx+EPO+kc0MQO1rus/7J4GheM/3
         Ap3+rOFC0ptgqYbxIA9pM2RcE/ghDfm4l8mX0qhGVpD8ZBkjaS+tF+Ol6sdxAPVrAcBW
         zXNS5/B8VoociAB3L56zHnlMzAkQFd7px0mQOnysN8NaavrhfshqHQrtmtPGEprixQ4L
         4N5uFKgwhsgU1fguVzsI1tI90P0Qs0qoAvTEkVewLfpwsUxLslXG3DB0uS8gvv/LregN
         oIkLUazD+2aujgueIQHwbXq3XXFqIMQ+SrZvjC7SFtGCdUm3nJTE56Eb7Ep+I50mMC4V
         Gk9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=ydU8MqNb5ODaxL3+Z2DSyH1qiAoSfviF3VEkdiIDKBY=;
        b=YssPiCHsTHtn5SUe3jLVB6eKfi9ZiCR+FWPMzLikFYbnTVxVFrfdZvdvM7idA5vCl8
         5K0vgo8YYRIMK9fz0rLDXPY0SLt/OF9oAu1H8tNQcS//rc4gL/r+6gYps96NziNKJELl
         QsvBxC5yhPfMAuNGreJzJFtlNTGorHnPzHc5dn0gd4XA4GiffuihiCBDijcEVjAOJqDX
         QF98HVzXYCedYPE7NNslLH5jV3lCdcEvTT7dLqhWlb8UtnQsOl+dfy+0dLOgX+GxPyDv
         WwhiKthlSPVIjspRhDMocaCE/jnRM7llKv1jf5tIeQNgyTsS4aV5na0UED4TZBEOSDkV
         m6QA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mi+nN8QI;
       spf=pass (google.com: domain of 3dhwjxwkkamc5n4n8n0nxt11tyr.p1z@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3DhWjXwkKAMc5n4n8n0nxt11tyr.p1z@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id h8si208623iog.4.2020.11.04.12.54.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 12:54:38 -0800 (PST)
Received-SPF: pass (google.com: domain of 3dhwjxwkkamc5n4n8n0nxt11tyr.p1z@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id a184so44325ybg.10
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 12:54:38 -0800 (PST)
Sender: "saravanak via sendgmr" <saravanak@saravanak.san.corp.google.com>
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:7220:84ff:fe09:fedc])
 (user=saravanak job=sendgmr) by 2002:a25:8709:: with SMTP id
 a9mr36737716ybl.208.1604523278064; Wed, 04 Nov 2020 12:54:38 -0800 (PST)
Date: Wed,  4 Nov 2020 12:54:31 -0800
In-Reply-To: <20201104205431.3795207-1-saravanak@google.com>
Message-Id: <20201104205431.3795207-2-saravanak@google.com>
Mime-Version: 1.0
References: <20201104205431.3795207-1-saravanak@google.com>
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH v1 2/2] spi: Populate fwnode in of_register_spi_device()
From: "'Saravana Kannan' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Mark Brown <broonie@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, Cheng-Jui.Wang@mediatek.com, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	clang-built-linux@googlegroups.com, Daniel Mentz <danielmentz@google.com>, 
	linux-spi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: saravanak@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Mi+nN8QI;       spf=pass
 (google.com: domain of 3dhwjxwkkamc5n4n8n0nxt11tyr.p1z@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3DhWjXwkKAMc5n4n8n0nxt11tyr.p1z@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Saravana Kannan <saravanak@google.com>
Reply-To: Saravana Kannan <saravanak@google.com>
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

From: Daniel Mentz <danielmentz@google.com>

This allows the fw_devlink feature to work for spi devices
too.  This avoids unnecessary probe deferrals related to spi devices and
improves suspend/resume ordering for spi devices when fw_devlink=on.

Signed-off-by: Daniel Mentz <danielmentz@google.com>
[saravanak: Minor commit text cleanup]
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/spi/spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 0cab239d8e7f..d533aa939cca 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -2037,6 +2037,7 @@ of_register_spi_device(struct spi_controller *ctlr, struct device_node *nc)
 	/* Store a pointer to the node in the device structure */
 	of_node_get(nc);
 	spi->dev.of_node = nc;
+	spi->dev.fwnode = of_fwnode_handle(nc);
 
 	/* Register the new device */
 	rc = spi_add_device(spi);
-- 
2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104205431.3795207-2-saravanak%40google.com.
