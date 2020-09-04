Return-Path: <clang-built-linux+bncBC27X66SWQMBBQEEZL5AKGQEE5QCELI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB4325E14E
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 20:06:57 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id 139sf4003780qkl.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Sep 2020 11:06:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599242816; cv=pass;
        d=google.com; s=arc-20160816;
        b=A0ca9OW3MMnLnMwBs35TAsdfdb30IL0TK4bSBoqsCTQ2DZYcTSD0JbLN5vXFRUc6NP
         O4klk2Ss6l7PjLA2AIexw2aOF3IsSKe2VhIksI775dNA0aQh4SyDN3UESm1xurvkkoX4
         ykGj3RRB1HjgFak9a974yIx/Vdd1yhwgbkVwYgNYjUjSbqlWk1/nbJUH3COJx6ExtRyR
         NoYuycwi1dNzIcVXmaNIKpi8GBL6lpXN9otbBDoNYbxCseuqIy/YrYpxyXOoRwHJLRpc
         Jlhl7Dg6teaWpngcHPYjFmUla6vPggckS1gr2G2baQE6rC+lW7TLTkHwlt4sdwATRYXr
         ClnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=JEPGEVqGqucLZMYHuQa+RBB5Wmqis1jeAgdPk5CHoHk=;
        b=H65hXzINcyvMcCor4SifjkYmg/l04PvJrH53NcnJa4riAPp4nq9IQc2p/q/Eh8iaIs
         lShNIl5n/oY7X2Ac0LkRiUaC8DRnTS1ic9w8tW2BUXwhcAQsywEoTyQ4yDfH9vsU8CQp
         hEZJcvv8tjBbdqre+hVm7/FRR2xzTUk4+Wr26mTkM2m4q9kkWOirpu6pUHZwfc9RrS7W
         xX4mND2JfXtUeucJqjUH90Ejv29CYnvcVaro+SMHbkU2s5Oaj18qGPOHzIYeRhL4HnTX
         ikDG2ZRzn/8H/ySbOO34a6J+dQk3BBfsKafWzNTdnofKO1l4OdYS49VyxqnyWOWvzxng
         K+Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="cofsMJe/";
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JEPGEVqGqucLZMYHuQa+RBB5Wmqis1jeAgdPk5CHoHk=;
        b=JScVXce7Nbx3btuDEpzNAMI7btoQBRIDUWSeodML0RbF5PX48d+3YkIslhKA+CH/Q3
         lMQDS3zBXdgZ27H0h6IJTbMX3QY/fOCEhYZyAmQefRHbv+Ay8lWpdvLtkTQ4vjDah10z
         K0H1C2bAwnA+I/luX6/TC0IA2uhfnXUT13CNP92YFXjgQKfhUyB60aDW7IbeUpCctYXL
         E05/Hsy703X1c8yhzyasm7ZswA1NrnzLaQOr+Hhr7BRSC2YQ0sMKClwRCa4eUFAegTSp
         DN84roQRdVqksT/cNHLXsDLAxk+oOsRtxpAeBS1SuPyromXkKforqLCZZ5ki+Y8OVe1Z
         bg0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JEPGEVqGqucLZMYHuQa+RBB5Wmqis1jeAgdPk5CHoHk=;
        b=d53nqI59KNAvvxgO9AFw02JrhTQ03FkokGpAFQDqEprhILxcbbfU8PAJf4oiMDZo0Z
         YHjNY/ih/OuThR/s7AjBhxVXPi7ZC4pdeJoK7F+42DuV7adCgbepJf2/cgYlHI4u97e3
         QRpoIGhUhDoTWetcyiskaBg1y529oOv3HU7Sgrun1CoSRaSbHpVHbRJc2SPPqdg23HfA
         Ltb1ApqctOhPAUwAk37emBNWVgPhbTqZdYzptaB/l5QOhjzaUNOQZiQ/qCXdJ3c7+HQJ
         SMpFlzEuL5aSY+A36x5Vq0I9MHxGTwuHxUw+nFuACJv2zrmVti8SoSRKKV1wkh32PKCa
         66rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jTJYDNC9a8eTEvjxns4u1jjxCjwHCeUtSQgJFCOURzLjKaCA2
	XKz5qkhFx72nXAV/p18Dm0o=
X-Google-Smtp-Source: ABdhPJwqm2gvlWvjC8iTunEIJFIH6FN3YAc9b0YF5kmv3KbKtJlkPm9IKRmvpQvMpm+hp/UorB8WxA==
X-Received: by 2002:aed:2414:: with SMTP id r20mr9980408qtc.304.1599242816260;
        Fri, 04 Sep 2020 11:06:56 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4ea4:: with SMTP id ed4ls2383212qvb.11.gmail; Fri, 04
 Sep 2020 11:06:55 -0700 (PDT)
X-Received: by 2002:a05:6214:805:: with SMTP id df5mr9059860qvb.78.1599242815844;
        Fri, 04 Sep 2020 11:06:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599242815; cv=none;
        d=google.com; s=arc-20160816;
        b=JgsQDdxCRIbxDKYutp1ULAAmfGKtJ8W4SdtoSqq15+DQjZ2KzF8PV18poETZPTabPn
         srn0bSm8C/Jk96lIyEzizB8X5ByMGLO65PSA8MoZ90wHWserZOvgZ5Lc3+c6cuuwtGAo
         uWD8ncxgh3PrrJW10kWeX4HawvAKUiTNnxeepaVAAjrfmZS9NRJ0IuZVs4H7fVOxZaiI
         OU/Fm9PrvHcY2xpALAblSxi8e+CsVTm5dStB7xSmAvtWs54/Xvi1zpe1P7dhPTFhAjDW
         3XjT/ish5cr00f+S6Qb9jX7Awp9Wv80fXyne0LjlO2SFJoOvcM7SkeWB5FKa5JHeZ3VY
         6qcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZgNkYrXayCXVqunlsQHYlfke0k0uTa2/dq5wz4jdf0U=;
        b=rsttooIWc+kftpi7p8UNqLgzK7fBosHviNm5/yOLdVnjoWtwmWtlxI5Hb+cFvl26xw
         sxKFrU+0aFkyL7/+l2oIJrnPF8IRkJH6GhqMF1lJBgc0+LShTCkCqdtxJYyPQNIabdRu
         GrPBv5XKWMbHzyfgcXvUWk46Hu3K2GbDAmhPznZlN2bYEzCem5WTuWRJSI7GEq2jLDwG
         zVYGSF/u6+eBNyD4RyPrix/EUSIGOMLR7lluJ7ATY07S46V6CHk6jEKuEJMWJwnO2fcs
         DirAQ2G/lRnXcI8GbU1YpA3eTYSUGAFcudYL78j3w8uxq7e4op0yKFW62a3QpXoDZFCM
         KvyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="cofsMJe/";
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id a189si475467qke.3.2020.09.04.11.06.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 11:06:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-350-VHw1KXduPxG0GWFaQij8Xg-1; Fri, 04 Sep 2020 14:06:53 -0400
X-MC-Unique: VHw1KXduPxG0GWFaQij8Xg-1
Received: by mail-qt1-f198.google.com with SMTP id t11so4841408qtn.8
        for <clang-built-linux@googlegroups.com>; Fri, 04 Sep 2020 11:06:53 -0700 (PDT)
X-Received: by 2002:ac8:6141:: with SMTP id d1mr9801727qtm.170.1599242813493;
        Fri, 04 Sep 2020 11:06:53 -0700 (PDT)
X-Received: by 2002:ac8:6141:: with SMTP id d1mr9801702qtm.170.1599242813220;
        Fri, 04 Sep 2020 11:06:53 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id t69sm4879928qka.73.2020.09.04.11.06.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2020 11:06:52 -0700 (PDT)
From: trix@redhat.com
To: syniurge@gmail.com,
	nehal-bakulchandra.shah@amd.com,
	shyam-sundar.s-k@amd.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] i2c: amd_mp2: handle num is 0 input for i2c_amd_xfer
Date: Fri,  4 Sep 2020 11:06:47 -0700
Message-Id: <20200904180647.21080-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0.0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="cofsMJe/";
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

clang static analyzer reports this problem

i2c-amd-mp2-plat.c:174:9: warning: Branch condition evaluates
  to a garbage value
        return err ? err : num;
               ^~~

err is not initialized, it depends on the being set in the
transfer loop which will not happen if num is 0.  Surveying
other master_xfer() implementations show all handle a 0 num.

Because returning 0 is expected, initialize err to 0.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/i2c/busses/i2c-amd-mp2-plat.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-amd-mp2-plat.c b/drivers/i2c/busses/i2c-amd-mp2-plat.c
index 17df9e8845b6..506433bc0ff2 100644
--- a/drivers/i2c/busses/i2c-amd-mp2-plat.c
+++ b/drivers/i2c/busses/i2c-amd-mp2-plat.c
@@ -155,7 +155,7 @@ static int i2c_amd_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
 	struct amd_i2c_dev *i2c_dev = i2c_get_adapdata(adap);
 	int i;
 	struct i2c_msg *pmsg;
-	int err;
+	int err = 0;
 
 	/* the adapter might have been deleted while waiting for the bus lock */
 	if (unlikely(!i2c_dev->common.mp2_dev))
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200904180647.21080-1-trix%40redhat.com.
