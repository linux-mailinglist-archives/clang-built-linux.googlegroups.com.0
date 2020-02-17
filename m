Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB67VVPZAKGQEK5Y52UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E526161C67
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 21:43:40 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id m8sf11662029qta.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 12:43:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581972219; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ry13XVMO/+nQzgVWUpYlQBDFWPChkCIbebfdiwffA90MT4tsTC+/iQ/tnSFrgeytjf
         JLaJNkXtzuUNMBsAdMRpHi20VEnAGDtoaUrgAOj814HpA/vQUowBgMZwwzhhBjWk8rrj
         ncN3/sWzhH9t7/XpS8eTpMK5XgTaxT0tgnp1oF2Ll2qVqFgTv+Atb3BjmdA+EiDIeUeo
         RZQNLuNqDUSVCd92ZX5Tlatx/l2j6BqSo04pNBtd7dNcMbFU1K4cVCeYchDDEy1MQ4LJ
         S5QoPzPVe6O6Z85gtbY2eViR/RqF8lvmk5hDuSvY5nTuseMKHx4ez6HsSLjVsZXCEdx5
         z51Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=I/WTETaNDKFxXSS6VK9ON7iA12/CGUV++k9xA88QB6w=;
        b=Zlmf/j3egNaOgt/IiVajOJdQgUJjWWLfr+ugELNLr4gftI9aOu7PQVm0V078Ek3PHH
         RBwlG9JGorTWoz34J9fnDhvvWqy03GvyNpo+AL5fqG4XbJolBGhlwX1i5Q2qNEUXIh1d
         RxGJW504Kkyg3Ftbmk85LUR7nBQgqGHqTBVFQ1m1ojGnW7plocvQ9tWu2hOG6L6KxNkp
         2Nz2spp4wldR6R6Wdg62V6l8nJgj/Ms6/el3vwAYNJTa4yaOX7UpgJPVOZr6hsfgfhTa
         NAfEJ/OZ1+6Jtv5OtcIHI1wy4+MoWwZMzBHBDiv/1vuxe5UzvCoLfWgIHe9G59ksonJ4
         hyzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NSM1P5Sb;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I/WTETaNDKFxXSS6VK9ON7iA12/CGUV++k9xA88QB6w=;
        b=FT9CF4B21oxodu9+DRJ0lvp7nKbQdy3PRzdBURWFrrwWhlEQf4bRQq3HWWQ7LSsoqk
         JfX5kcpr9KrYUoXLvSxa/UC4wLmtHSQmJ0z7m5nadZ8eUQHLG9y7DQ9UzzVy3z2hDTsO
         AU6U6j1RpJXh9a+ogWC+wYeJHvgvJaAgMrMpFHwvhwYqBSVGzrb9V+QDJ7A5GN5Xa8A/
         vsa9ArvXnFqo7LIAJFF6eDXxOKaygi9/RkHF1okgGvzpH/1hSrpRcY9wlISFQ7dIDalq
         RXtev6zfH7OZ697W47z9e6Az7wbkLIRNXFiPRb+lkVb1TIsbhvpNUP9C2siN2aBa1RUn
         gq+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I/WTETaNDKFxXSS6VK9ON7iA12/CGUV++k9xA88QB6w=;
        b=bEtmVCu06gusGx7iLFYcvX18sr9N160EhHprBlVXJ9gExc+p+VzSrI2sBr0aUadEGa
         Nw5hV8y2ccDwlJgmNVWfSqpO/UgUU9LyJVHZxaaqDFWX0iJ9csasAx/UHX65ELG7jO+t
         82fbhaQK5BCoeS4pX0Qd7eRQZu+QQbuWf0FD4Nh4k1ytWivel6GCRK2XwZIeXMYBgzs9
         6jv5xpu8FFx2UbZWq2YogFATMZxnUTxrhuQtGA24AoCfZHb8fypnjfA26gWIBL/uSZMP
         7qNGWZ7HlIPkAlBdIrQHum/OIL5k02HasNqf+YmQBEpMObJ+1o5Cwz7FjhvCpj19gId0
         eduA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I/WTETaNDKFxXSS6VK9ON7iA12/CGUV++k9xA88QB6w=;
        b=rzWJGsHM5rXQtwyj1UEJbXUb8hbwdIobpqhFMqmx7eEoZeCuRAwXN8x8Nq5YxcBhNy
         IrDd72I7kcPWjToQL8DH3ODCSaMNljsBRAFfl8ihmzOw7xd3zhCTDFrM5j/aMoCAo3DL
         lXEVJ/C7ChysHXyg1dO4LrwHGqalsSB5hwDuUouPkNAdgAX8V2z1lx24nl10x4A8HcLx
         XC3xulK0WCk1cGvE4+mkEYUdE9fuLIB3SelHikXw8nl9mzVgC9z+Q3ULdO0mHaSi+mdq
         WVw1EnuGVgZYdHQbJwMLuYEhG1oncDjSOM+wc9Mft8E+6SuLZq/rN24qtnJIanDNtr45
         AgRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVqEVPss2DOdgiEKOnHtYaP7rHPGGS3UAlcqDdqRUTCbu3wLBA/
	EbqM6bNERZ40JWzsbBbhM2o=
X-Google-Smtp-Source: APXvYqzGKVqhi7ey8p0hyPQS+fpAEHlATcvPegKyslCA8kZqnfztBPF4wcc0mNf1ENzETutj3yL9kw==
X-Received: by 2002:a05:6214:707:: with SMTP id b7mr13701861qvz.97.1581972219118;
        Mon, 17 Feb 2020 12:43:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:72c4:: with SMTP id o4ls4057740qtp.10.gmail; Mon, 17 Feb
 2020 12:43:38 -0800 (PST)
X-Received: by 2002:ac8:130c:: with SMTP id e12mr14699288qtj.233.1581972218766;
        Mon, 17 Feb 2020 12:43:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581972218; cv=none;
        d=google.com; s=arc-20160816;
        b=VYiUIm781PXBCRBm0G1jInGEFFF12pz62q5+tCX/8A8PkqQU/yEjT8ec+XbtMj/3zi
         gxodcXxNyIDld1JUpWFH++UhIW43RVszdYHoIL9TIidEt6pSiPudlagfoYeoBB54FiHD
         B6e4mGZZmOxkJIQl4H8qrPTuLlMwbEgsQRwdWT+wPS9Qq8Jct7XSoY07azwNd3wK5EDo
         S5JTA3qCtQ8F8BktJ6o6yZIcD9jCEbOlyYoi5DHH5fX29IsZeNCW1ZD82ZuMGFSCHGkq
         9KZ9Jh48mOKke/OKAif3JUgsQnHStNaZysoIK6uLBI4cCKJU7GTymDSecfHSOuwhHofk
         uWmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=mt8KEiHVFXt+VI7oyaRToYaExGUPicwbfI4j6wwtPQE=;
        b=CbUSpUI9hCsOBMrZZypwKyFCNtPZftWVr+kUC3El22JF5FARZnh7vzzNpXJwBdhmyK
         hqcgs2Lud8etzEyI1tQSYcxYItFC5PXUxgLN6gVQjUJjtn62BbU0FBEyDqkv6hep/RnI
         jJ9d2WCKby4jilupeHi0eI/Zjpm8DUuDF5xMsKSU9YkyhU0Jr9HpUSv0/jS6I2+Zn+Il
         dk5L3yjw+ONLUNf3ppPvKYOIfd1+SyVxw3dpoYcE+uXFp/8tWp8ARz0uR/4iOU3VCsBO
         1fyd2qCbzSymzsT/ZyZ+NOCSN8vIVM0mW1M5cbAOZnW6mGwFW487CA6JzYksN4aycACL
         RGdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NSM1P5Sb;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id s25si83502qtc.0.2020.02.17.12.43.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2020 12:43:38 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id c16so17966992oic.3
        for <clang-built-linux@googlegroups.com>; Mon, 17 Feb 2020 12:43:38 -0800 (PST)
X-Received: by 2002:aca:530e:: with SMTP id h14mr505712oib.105.1581972218092;
        Mon, 17 Feb 2020 12:43:38 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id w20sm545592otj.21.2020.02.17.12.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2020 12:43:37 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Doug Ledford <dledford@redhat.com>,
	Jason Gunthorpe <jgg@ziepe.ca>
Cc: Leon Romanovsky <leon@kernel.org>,
	linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] RDMA/core: Fix use of logical OR in get_new_pps
Date: Mon, 17 Feb 2020 13:43:18 -0700
Message-Id: <20200217204318.13609-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NSM1P5Sb;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

../drivers/infiniband/core/security.c:351:41: warning: converting the
enum constant to a boolean [-Wint-in-bool-context]
        if (!(qp_attr_mask & (IB_QP_PKEY_INDEX || IB_QP_PORT)) && qp_pps) {
                                               ^
1 warning generated.

A bitwise OR should have been used instead.

Fixes: 1dd017882e01 ("RDMA/core: Fix protection fault in get_pkey_idx_qp_list")
Link: https://github.com/ClangBuiltLinux/linux/issues/889
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/infiniband/core/security.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/infiniband/core/security.c b/drivers/infiniband/core/security.c
index 2b4d80393bd0..b9a36ea244d4 100644
--- a/drivers/infiniband/core/security.c
+++ b/drivers/infiniband/core/security.c
@@ -348,7 +348,7 @@ static struct ib_ports_pkeys *get_new_pps(const struct ib_qp *qp,
 	if ((qp_attr_mask & IB_QP_PKEY_INDEX) && (qp_attr_mask & IB_QP_PORT))
 		new_pps->main.state = IB_PORT_PKEY_VALID;
 
-	if (!(qp_attr_mask & (IB_QP_PKEY_INDEX || IB_QP_PORT)) && qp_pps) {
+	if (!(qp_attr_mask & (IB_QP_PKEY_INDEX | IB_QP_PORT)) && qp_pps) {
 		new_pps->main.port_num = qp_pps->main.port_num;
 		new_pps->main.pkey_index = qp_pps->main.pkey_index;
 		if (qp_pps->main.state != IB_PORT_PKEY_NOT_VALID)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200217204318.13609-1-natechancellor%40gmail.com.
