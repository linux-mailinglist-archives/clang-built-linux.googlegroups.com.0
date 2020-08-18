Return-Path: <clang-built-linux+bncBDS3F25HWMCRBOVK5X4QKGQEJYEOMNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7231D247D2C
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 06:12:43 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id n24sf3314555oic.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 21:12:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597723962; cv=pass;
        d=google.com; s=arc-20160816;
        b=ENs0iUgp9p0YVNvpuZvvoTxWFQ6sZAMJGoHERU598sG4EsKuzINkZ/idHqui7Q290r
         jEZAjG573NlomT7PpTW8WcBFfpLa9y88srDIPbQ0vm0cHVhWx2fhll+LMFWDl4oXEfra
         TzXECqPOKI1ExXOLNygz4kKDH3XYhe8hN6rlQbpcbRuvcS0PmJOceuK7brqwGO1zSkiw
         f4bCzT+dLiafO8/XLp98ynGWDjN32biQrfj1MR15b55cpsWQCpFDFvHKarmiIyQqdPae
         KpvQ7yJZxY5KhnNm8bOeFV0h4Jr0McRe/HEQpJ/hLIntZhvbFjNNnFdlLci316AMmAuO
         497g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=144dDtvEcB39yAdJJJ5vsjrzJ3FFG3tS6s5xqTFRHW8=;
        b=lc60K+ADQanGCAtcbNFpETyxv4D1p13Uin6jyDIh5KGvnx/dbmzmTquTPEsKCTgMxh
         3jiPKIws8vxg+DODBgrT0yz1ZFI9e3lCbuqv2E88WIDAIRKMdtQtLPE3ieu/NxHJhr8D
         gwxj7dQ72RXVbeCIqzJDG9ThAy6iEZLp8NTDS5CRzZen7jlPrrSTDcyh3+hUm8NH4jdG
         NAZW0vnuWThFE6lnBF7H0tMqp9gtoP43mKQrDVd55FgvUUep8S9/HJcJD3yVfa0905z8
         h3+z+HM7ILKL9/sc4flggsRPRLuIjrJ0ao/N6UK8jcd8IZyGCDNCN2eLDTYKE4qpvZw2
         Q5iQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CQFsAJKS;
       spf=pass (google.com: domain of brookebasile@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=brookebasile@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=144dDtvEcB39yAdJJJ5vsjrzJ3FFG3tS6s5xqTFRHW8=;
        b=FyHojgErj6svr96DsBtrFagbXtYWbY6C9P8HeyfTe/8ziRmeOWkG0Frmln64wARR2n
         hRgta363iocaVPWIm+WHqk56zuJhu7zZcE5o4h3xxpoziHicym73j6BgebxTdKvlA1mA
         Q1KkoIMCKwdZh1IVm9M5F1eXLQGmQ1aER5+jzpa7iIdWLCUJ4kXpH/HpE42WF2UD4WV9
         2qk6ExYcNJ19bO0Z1vxDJEHlwMbMMla+Sgi9GitQ0jUg3XXhq8NuWaEWO0/HNhFk4CA9
         vkuOchSam5Gh/L9fiHNKsor1+qsjUMGOaS8KjwXC3ZKy5uFTPOI5YEsm/uD0yHO2kluZ
         FWyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=144dDtvEcB39yAdJJJ5vsjrzJ3FFG3tS6s5xqTFRHW8=;
        b=IWUaRZylljUXNwYIrZyq+/w0d242mr8EN4D+PtDkEBqWlDZ8252Rx1fW53xKYFh7V/
         k+l8yce5+0EZ/lSJ4v2BVsT4zd8YAiQI4NSt6jwd1lgJ8jQYc7P2j2E0ElLwRZpWJRn6
         ZXEWH0bkNVe4sB/9mg6KfziA3tYJATHsAIbKmkcsZgjaRWjTCFJ+loRO/cHiul8M/2+h
         WnDZjN22qRPxc58aZqB6VCT37MC+N3RHzNOyvARKstl/4iWsTOFEL930eIvhR6MZe4Rr
         CMPWMjrGRBBUqdj3JgC4PfEmnCKY6rUjMtR94F0wBvgCtCaA1yCuWWVrWIsLdIjE21KA
         oxCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=144dDtvEcB39yAdJJJ5vsjrzJ3FFG3tS6s5xqTFRHW8=;
        b=GWyVZeC8o7Vd8wURZUwXxvZsEQS5Aig91FOewF23RQPxqjhzZ6axcnERBkZETf9Cu4
         jDgPdS8K7vzLdfzKbOHvZvTanjBzpvhdK92/DhVB5UrrZ9eX4M1gtRJeWBR+edndRgG5
         Aq2+M/fzfBx43Ibo08ndGQL0Ut+0fPD+lf6cTvJNeze1sO/oK5NegQQf6gkCoT5PTf6q
         upJm74TgxsEcNxv01Ht9DolKPWWKycjh0Jn3qTgPhO/pA63kxG5SjBdDXpD/JdTkfkiK
         A84RJW9d0CCAJD7WdjwfefrQ4buLHYIYQE0gTiTKSGF0k4H19t3uOMTs4UOuaXm6N7as
         y25w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HZffdlYkSe6Sxf9QBOB0NuksjBFXmRBzPh38JmqwKf1PRuTpz
	2H1asGkq+z3NrT3mP6MmQ6I=
X-Google-Smtp-Source: ABdhPJyLDhXQ29zI8cAvYm541qWeeDVh4hZkB8xpsdTUvyo2ViDEjnctjaPldhW7zF1zqSmKKD3oYg==
X-Received: by 2002:a9d:3ef:: with SMTP id f102mr13832428otf.98.1597723962075;
        Mon, 17 Aug 2020 21:12:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f4d3:: with SMTP id s202ls3809616oih.0.gmail; Mon, 17
 Aug 2020 21:12:41 -0700 (PDT)
X-Received: by 2002:a05:6808:3c9:: with SMTP id o9mr12036373oie.56.1597723961778;
        Mon, 17 Aug 2020 21:12:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597723961; cv=none;
        d=google.com; s=arc-20160816;
        b=tPPe+bdUWRdLH1MIRI3QP9kNRhr4ZFnxsbwBZecdD0VFIHJwcvg6zj3hfnoZASicoa
         DZQsUFq1rM8XNWchfVY7Umcbm6dAF5NpZLY72KkuvvlzpyVuJNxrBKZDC/ti3eX9Nfym
         M/xChYneeLlZ//xA8Sie0WrFHSo3xqP9/Whl68CGPvpw+j+YuyNNPgsPBEIX09otd6qc
         U1j/jbnC7jIRiGZ17XYMNv9k0S86YBksl6fBvIAL+lvCDkFbmngAD1jLNPLo+MINZcnm
         5ntEH4565b3mmyP/i6Gyq75PccSiAcYapizL8SMwe50BWM+j+GZJBFwStGL1QmWTFYlT
         t+dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=hXLCDfrcY5+egor1E3ATfAy15D+Z8YefF1V4ZEaEKWs=;
        b=Ald8AYRk2tGi45Qp38wdkFgmJaT1JgCg6YfHuEc3jrmj/N6VB1EpWa0Vmt0QyYbAdb
         LxIJuXZwO6nPffdzDKJlWw5hosXFC0AtQalfJ4EOXWIpBza5YrOsfm+d6M/cTi09eqOa
         cgAGblWc6dykN3i9ES8/NKmOGaWswt2+7iwR80TGrRggsZihPre3J/DoqLpVOWhIAt18
         LNeOuP5nYf9G/WaUkwNXx2ZtHWTMXx9AMey/R/KRHB8X+X1fwekZllCeNf7pI33Q7Nle
         DAj0JrXq008EJD00QwQyRPDRcGjmgpX6T9xhHx7n9OgzwjDCHegrIUl+230FoVxWsjR6
         I7lA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CQFsAJKS;
       spf=pass (google.com: domain of brookebasile@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=brookebasile@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id r64si913712oor.2.2020.08.17.21.12.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 21:12:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of brookebasile@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id v22so14237387qtq.8
        for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 21:12:41 -0700 (PDT)
X-Received: by 2002:ac8:4519:: with SMTP id q25mr16754352qtn.29.1597723961327;
        Mon, 17 Aug 2020 21:12:41 -0700 (PDT)
Received: from magi.myfiosgateway.com (pool-173-75-208-99.phlapa.fios.verizon.net. [173.75.208.99])
        by smtp.gmail.com with ESMTPSA id i65sm19592212qkf.126.2020.08.17.21.12.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 21:12:40 -0700 (PDT)
From: Brooke Basile <brookebasile@gmail.com>
To: danil.kipnis@cloud.ionos.com,
	jinpu.wang@cloud.ionos.com,
	axboe@kernel.dk
Cc: linux-block@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Brooke Basile <brookebasile@gmail.com>
Subject: [PATCH] block: rnbd: rnbd-srv: silence uninitialized variable warning
Date: Tue, 18 Aug 2020 00:03:18 -0400
Message-Id: <20200818040317.5926-1-brookebasile@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Original-Sender: brookebasile@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CQFsAJKS;       spf=pass
 (google.com: domain of brookebasile@gmail.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=brookebasile@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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
	drivers/block/rnbd/rnbd-srv.c:150:6: warning: variable 'err' is used
	uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
        	if (IS_ERR(bio)) {
            	^~~~~~~~~~~
	drivers/block/rnbd/rnbd-srv.c:177:9: note: uninitialized use occurs here
		return err;
		^~~
	drivers/block/rnbd/rnbd-srv.c:126:9: note: initialize the variable 'err'
	to silence this warning
        	int err;
               	^
                	= 0

Silence this by replacing `err` with `ret`, returning ret = 0 upon
success.

Signed-off-by: Brooke Basile <brookebasile@gmail.com>
---
 drivers/block/rnbd/rnbd-srv.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/block/rnbd/rnbd-srv.c b/drivers/block/rnbd/rnbd-srv.c
index 0fb94843a495..f515d1a048a9 100644
--- a/drivers/block/rnbd/rnbd-srv.c
+++ b/drivers/block/rnbd/rnbd-srv.c
@@ -123,10 +123,10 @@ static int process_rdma(struct rtrs_srv *sess,
 	struct rnbd_io_private *priv;
 	struct rnbd_srv_sess_dev *sess_dev;
 	u32 dev_id;
-	int err;
 	struct rnbd_dev_blk_io *io;
 	struct bio *bio;
 	short prio;
+	int ret = 0;
 
 	priv = kmalloc(sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -138,7 +138,7 @@ static int process_rdma(struct rtrs_srv *sess,
 	if (IS_ERR(sess_dev)) {
 		pr_err_ratelimited("Got I/O request on session %s for unknown device id %d\n",
 				   srv_sess->sessname, dev_id);
-		err = -ENOTCONN;
+		ret = -ENOTCONN;
 		goto err;
 	}
 
@@ -168,13 +168,13 @@ static int process_rdma(struct rtrs_srv *sess,
 
 	submit_bio(bio);
 
-	return 0;
+	return ret;
 
 sess_dev_put:
 	rnbd_put_sess_dev(sess_dev);
 err:
 	kfree(priv);
-	return err;
+	return ret;
 }
 
 static void destroy_device(struct rnbd_srv_dev *dev)
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818040317.5926-1-brookebasile%40gmail.com.
