Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGHU5X4QKGQE4OYXE3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CFE247EB0
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:50:01 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id 187sf3705584pgb.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 23:50:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597733400; cv=pass;
        d=google.com; s=arc-20160816;
        b=dukRvgovjwe9w624asysuyXuP5lhIZ7C8/2s8pk227M0lQXkPmJ/pBBzvwuEzUljs2
         iEfwbuvg58QdahUBKJ9rr5x1ZZfpvR8AtyOM6l7yCoZzz7rUApyzsQnHjtfyRBN0vr0R
         /S3rHd2ubBz2mvzyw9BCgcoF21atIDkr/NU1vfJvOcyDDFclU6NiSHa7h+BROcwXaDe3
         WTXb0CVbzilC6zQMvlbaW2Zu1S57WenSGZhCjUSXEmGJ+W0GxS4oPItIb2r9VfjW9vCW
         bdVF7UUkdZhSyaeJgaccT/dgul03RJ14PtRRxWaxEo61YevUeKoEZFhBsVO+omv1A+ln
         /1nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=bKBnQ/umybfqQgEiHs1/LMnsQcP22WQdM8vrF0/8/ms=;
        b=AShedjY0OJiyLSYwHFa9PJKrmwalMyqlVBi4cIzznyXN6y0QLxyRLeg2Fn3yZ6yLq+
         6mjz9xPQhvRvmQv9rbqDILCIeblpITyCpnQKA43r26ruiD0HqgXF7rJJfV02j5SZS5pg
         J/r/fbHEQYf+inbwrFbJ8tfaMvfAKoF0EBKZW6HUce/4Si+BkwT4Qvvl7iFBLhU7L9su
         W+JCRlf5JrVmFuv3Xt6Bh5CXTtDVuVFCtEBNv14QRN8fig/BqZgZmB4wWFaqsVZLLFbG
         IxidL/VvisYvR0OdG3LtHFq/0kb1abXSf9swoUPFgIrga44KFu9RZfR4flC5kDY/gtj7
         UPdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sB3c89ME;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bKBnQ/umybfqQgEiHs1/LMnsQcP22WQdM8vrF0/8/ms=;
        b=hMCSOoXgBsmVE7AAmJxDOMXQReK5bm2ToP6a9R9pGKBR+DUTe2BYw3dXJFR6wuWW9U
         2zWhjXXr8hsvuRBCtklA/OVsoOBGA2y5q7TfTWaH8T8OEGGCCDzF2sAg9ErtnWC/uQlm
         9wXy++EEGltV2dGwHrSKmxU0sa9/aahsAX5MADjvN1qZ/NOcM1ZnuI7ZdBuXol6fMx+D
         wd77qMBP7Ei1RTMUjYucZXy9DrIKnAyxneVCsZjAZV2+wmhs8uITqmHIuXPl4Wqo4hz/
         akVgQtwv8XdzcMPe80EJWgUCvQs8qUMmIxz1dRKva+raAeBenRt+utArbYJwcP+WOEQE
         S84w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bKBnQ/umybfqQgEiHs1/LMnsQcP22WQdM8vrF0/8/ms=;
        b=YFFzCfcIgTngisE8e9WxQzCHw4HqYK80oQt7Oj1DYgX7Kp9hehOCJWYVbHUS+s5xB6
         En5EFm9A/AsTA+OybjodM27v5q0hWARORpHWxvB8fAA2kYraXXU2RnPTXG4+FFE1Bfb7
         yQE+E2BQXY5T1nq61qxmhOAvmzL6y24URXEcNkfToXKl6fncM/bsBYhuLXDJZQebBLjx
         T3gydCgNo9kEMn+LNE0ziyx1fea7pr+xl5nDIeshJRsqi+DyVVpC7SVstIqvaQD6TcMM
         pLzxL9sxllQl0tGUEcdCDKlSm625hmUYobhyZsbMBZ3GpvxHQmn0qg1QVMT7rB/FVPMQ
         RtUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bKBnQ/umybfqQgEiHs1/LMnsQcP22WQdM8vrF0/8/ms=;
        b=BBUkTAuhxsTdk7eXT/iB5My6nrAvDOMau3NN8+4tlm+bvaLQJdXZo3d2V0YkLwK7u4
         U6cVExpLloaYEAz60EFcdLOHVEQGR9g5pT75+gM6pqeqMVk0/BnEY2vCeIRCBj3xziOu
         xf8uXYU0avy0DEGv8JznNXr9jB+Bwx2e48lL/au/7nI2SY09aAjsQIngNL/y6dNGSLZH
         xay2BBOzwy24eHadwURmijcwX+3Y4izSg0N3FN3mKfe06/UWFVebJSeE8FCkv3uTcbNx
         S0lHHdjXpbgg+IFgikrRFUXVIfO5sinnCn08X2Z43DB1E00xVXsUdh9g6A9cB2dCbM1F
         vriw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533F6PRLvchfLrN6L2Q5psiokuJlmKhQOJqyKOLnp3P1+px3HZtN
	D32/qFbT44j1VSCP9ZM0chI=
X-Google-Smtp-Source: ABdhPJxNJHWpw2nIe2EapnVc+RC0iM6Odj50aZVc43jTOeqUJjoZh7PJnKKzZT6WAFRwistwr78/gA==
X-Received: by 2002:a17:90b:4c46:: with SMTP id np6mr12322198pjb.201.1597733400481;
        Mon, 17 Aug 2020 23:50:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:130a:: with SMTP id h10ls7929682pja.0.canary-gmail;
 Mon, 17 Aug 2020 23:50:00 -0700 (PDT)
X-Received: by 2002:a17:90a:191a:: with SMTP id 26mr6963856pjg.197.1597733399886;
        Mon, 17 Aug 2020 23:49:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597733399; cv=none;
        d=google.com; s=arc-20160816;
        b=laskwtzLOM3vQy6ZEjHg6GGawrop3ryYfMkvIxXXDx2GHqz6EYRHHAl18yivMYC3IO
         CVAfOsDQuGryPO2mZ/g4lDia7qTxUg1Lzs+AIi/+GgmiFULMK4BP3Q2hw2e5y+oTzcJW
         b8sSPozTPSZFI8/r3MT3tJHPtqSLti3LHKQ/gaDPuL2lnDGnf8ZfqTQbmFTfhUfADEMk
         tXtpCscNN94WyE6D6TkUmD7AlD1zfjjxzuGot75zccdifVJVxcqUtRvr+29/9lOusQqw
         mRf8n7adma6jVZ5PBg02ipQy3T9cB7Jmo8FVa37Jow682wE45WGO4x+fZM+3xAvhJcFB
         5FTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/+uWNSSjfEEPF2N6+QLJYLMqb6RlZPSAgW0i5xtsCXU=;
        b=tgc5doDpKNJNUGcdp6Q+Et3nTNz2f6sneqt5/Hdp1cSxhHAxzZOAgrfPFOZIYV4Icr
         visUQq3xCxRKvDbf/nk7XgD+fWWVlbMJEmXPFo5mOxZY0M/eyvSuf0UBkg69SHTJxvN+
         zvjMuE8ajYGy17nNd33NSRnisWH49XUXkvJt/w4yBLgxoIL2E7TfhRQghzPLbZMG+ZZN
         WibUozQ71Gb53iJV4MHU6/U5A40HdwFWjva5C3e0Eqs7o4cZlPqIfMI09XJ2arQoWKam
         MJgpwZN2clgrn2A2T6LOIuDuiztW471Zu1sK5snooyzIsBNnW5iwyYxu06FSJzgPLUFJ
         xr2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sB3c89ME;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id j4si1239470pjd.0.2020.08.17.23.49.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 23:49:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id b2so9042209qvp.9
        for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 23:49:59 -0700 (PDT)
X-Received: by 2002:ad4:4908:: with SMTP id bh8mr18260285qvb.218.1597733398996;
        Mon, 17 Aug 2020 23:49:58 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id d26sm23367032qtc.51.2020.08.17.23.49.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 23:49:58 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Danil Kipnis <danil.kipnis@cloud.ionos.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>
Cc: Jens Axboe <axboe@kernel.dk>,
	Guoqing Jiang <guoqing.jiang@cloud.ionos.com>,
	linux-block@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Brooke Basile <brookebasile@gmail.com>
Subject: [PATCH] block/rnbd: Ensure err is always initialized in process_rdma
Date: Mon, 17 Aug 2020 23:49:25 -0700
Message-Id: <20200818064924.3984068-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <CAMGffE=2m7XOdKS9xG1bNY7MYR2x6AgQm9YZFHm6D4biO860sw@mail.gmail.com>
References: <CAMGffE=2m7XOdKS9xG1bNY7MYR2x6AgQm9YZFHm6D4biO860sw@mail.gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sB3c89ME;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

drivers/block/rnbd/rnbd-srv.c:150:6: warning: variable 'err' is used
uninitialized whenever 'if' condition is true
[-Wsometimes-uninitialized]
        if (IS_ERR(bio)) {
            ^~~~~~~~~~~
drivers/block/rnbd/rnbd-srv.c:177:9: note: uninitialized use occurs here
        return err;
               ^~~
drivers/block/rnbd/rnbd-srv.c:150:2: note: remove the 'if' if its
condition is always false
        if (IS_ERR(bio)) {
        ^~~~~~~~~~~~~~~~~~
drivers/block/rnbd/rnbd-srv.c:126:9: note: initialize the variable 'err'
to silence this warning
        int err;
               ^
                = 0
1 warning generated.

err is indeed uninitialized when this statement is taken. Ensure that it
is assigned the error value of bio before jumping to the error handling
label.

Fixes: 735d77d4fd28 ("rnbd: remove rnbd_dev_submit_io")
Link: https://github.com/ClangBuiltLinux/linux/issues/1134
Reported-by: Brooke Basile <brookebasile@gmail.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/block/rnbd/rnbd-srv.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/block/rnbd/rnbd-srv.c b/drivers/block/rnbd/rnbd-srv.c
index 0fb94843a495..1b71cb2a885d 100644
--- a/drivers/block/rnbd/rnbd-srv.c
+++ b/drivers/block/rnbd/rnbd-srv.c
@@ -148,7 +148,8 @@ static int process_rdma(struct rtrs_srv *sess,
 	/* Generate bio with pages pointing to the rdma buffer */
 	bio = rnbd_bio_map_kern(data, sess_dev->rnbd_dev->ibd_bio_set, datalen, GFP_KERNEL);
 	if (IS_ERR(bio)) {
-		rnbd_srv_err(sess_dev, "Failed to generate bio, err: %ld\n", PTR_ERR(bio));
+		err = PTR_ERR(bio);
+		rnbd_srv_err(sess_dev, "Failed to generate bio, err: %ld\n", err);
 		goto sess_dev_put;
 	}
 
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818064924.3984068-1-natechancellor%40gmail.com.
