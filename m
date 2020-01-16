Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBROGQPYQKGQE6GYCY2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F3413FC2B
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 23:27:19 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id l25sf14648844qtu.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:27:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579213637; cv=pass;
        d=google.com; s=arc-20160816;
        b=vih05osy16OCSesQiYfRK2v1VhFriHvOkZlX/fskdhQR0N27WisSTGC3aX/fePXQgi
         bXKVuPpW0PUZ9s0Z1PP/hvbJC91BEzjYT77IKetbWpLhRvUpq8F/qiPQIUcc5ndf2idJ
         vcqoLSg1p3smfk0XydC0Qv2xIX6APNjJH+bXSq2Mgms0i4d+KP3xC6YXaJpWJ1vJ9uZ0
         yndJJM2tUAd5PQVxYXjKjwuSN1R2lp7flfToPNzMZhtSRw8xZ01fp8gJF2AUrvCE5IrN
         l/JHjGoQv1gS1xSpfHOS44fxWcSpqNkzbwwaCUpv2gyf8Lpx9879liuZHsfxjQVGk8SJ
         wmMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=insBHvH31uVjOnErFnFhbA7/jesnWiLOOMrBddhDR7w=;
        b=CXVltfWsaXfu1RxtqW2xPT8xsf/SEOfRjNEPjFdwqIr3XWMSyXwylw60PFFGhcn6Ay
         UpjWqlbPZ2Gxss5knuGUnqZT46KXqE4V4PhUXE7qMm3/Tow+K8JNoNO/tOOoQ14kgr2c
         v+og6v/P7ZGiv3d6EjKv4lN9JsieEikyYmD3Oi8oKuLfDai/ldqO3TIrNMy+VJikZ6wT
         xWGibTSRtpltQnY47y9m1MnJ9ZFtWVRMyOs9s7nyKvht36Qbld6udZWn//px2H6GnJ1g
         RqJQspeliMUdVhH1C6nKGW4s1b5TthJtTG2DeEI5PUbeXJeb6ODvQSn4NEHDYB3VxZM8
         rOyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tQJWWE+a;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=insBHvH31uVjOnErFnFhbA7/jesnWiLOOMrBddhDR7w=;
        b=EFcvQZA7PPhezs1yVtYT4dXbL4zXYcFJXhwiuD3ZeWjfMJnOee0joyE1q5yEW6c75G
         j8HuY0qEYDxtpRsRh9deFksib7Db1oesDl/Nm9vAGbV+ajJYwW93q3SIizOf/zQDKm/G
         TmnXfojhYw9IZ/BSgBtR4QqHpcLSlNCze6DPn6DkXe66xQ54uubzwhtTPWFlOAEPoZkc
         pVxSULcr6aat/mLeYUq6T3Xa9GYjatgxmedq2IkGacUy6xIMz4qL8dfTdam0ARKDcnj7
         PnQqd683CgcfAJCGVaim7WX+LT/Vq8cWhmTpSowp7QwvEW/PhaIqmyUy7mcRpty51+HH
         e3vw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=insBHvH31uVjOnErFnFhbA7/jesnWiLOOMrBddhDR7w=;
        b=tGzRAD17HTxgIzsGzRGkZgFM1bwLOxeybgOynrSGDRHTfAY2RoLDqCGQcf0OdsV0OX
         fpRXK942L5YNmyauWJOVxm8pRR3LmTK1qnaZx38o849uwDJh5lNkqFOmaVjb5HpRBMRk
         Y2VYq0MbcQlmpL/flRyX6fLHlb3LFINfiTZWr+49deLZ0vX9y0B6SEGoBNXtKUn73yEo
         /l3cJ6t3JFnEsSwMEzzMUXXcZ3LsRca/IKT9njvhoktcfJq1Wi3WcMSA+hf8VpKZWPuH
         PrzFcClz/51bvsjyB5+XUS+l/oLDCdvlp+MgIzv3CGsCONaTxsrbxPpqER7ywvVtLgC9
         17bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=insBHvH31uVjOnErFnFhbA7/jesnWiLOOMrBddhDR7w=;
        b=m42LcGGocgkNeQNWpAPL0FzxQyuq3ok0EwFjs5ods2xgq9kFuMff9bzUNUyVorbRYa
         KgcbVhbkMWdZmwSTrVuvgwN1Sjng3sdad6XaRMaRiWHOU2w7RFE6cBT4WKibmWLaW8Nb
         uayz2mnd/msORfj6Nrme5Kqv3n9hKjHqJ5J5p/KgwVr7uvVMSPmjHkyKdZhFXIvynMNk
         KFBPwXXnIBwkehaT0HVGJNuX8p0x40ulVjH7wlOH/oBd1+1chwgx+zv4sMXiHBxa/tTJ
         dstsXjF1U1ZIzxTolXiF5jV2DxykNQGTAeP9YdiizrWgYRnbdLG5AG1BaRJQspSAYy1G
         5Jfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVjHeoLF56nGArU7UoKlbDOjeZiyoE/ES3Xme7EZN7BLTgGo8uX
	s/2vgl6lkhDNxhdN2bPTFFQ=
X-Google-Smtp-Source: APXvYqyPef1fH3t5PO84yVOlE5E60cB8QU5sO94+65HHOoCTJtTYDoWQxfk4mqidm1OTCaJALrNJMw==
X-Received: by 2002:a37:a642:: with SMTP id p63mr31568474qke.85.1579213637608;
        Thu, 16 Jan 2020 14:27:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1021:: with SMTP id k1ls4472485qvr.4.gmail; Thu, 16
 Jan 2020 14:27:17 -0800 (PST)
X-Received: by 2002:ad4:45b1:: with SMTP id y17mr4864824qvu.245.1579213637268;
        Thu, 16 Jan 2020 14:27:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579213637; cv=none;
        d=google.com; s=arc-20160816;
        b=02qfetm+ghGLVM973z28QP761vr63FeoK6gpe9TusNDhGPzz+HYLa0VIIYpf+mjDC1
         eVHRBkmwsJDAdbfWPiOCiPB8KsMSJ+dApVuYjAMIESq2NIlUYpDyiAzMn7uNRXoSab8Z
         1XXpMoDhLb+c7nkNJhmv9Rzck6pm0SVSTe+5wX8u85kUdEJ3JEBYl7cX2FG2JOxaTJO9
         YZH1X0rSYn01b+mbLAEocsr1eldgvdcjn8SOR2n77jaDZNKXV4JSnLV6O+jSg/5PbcZF
         WjQJDZiz8jJR81Rkt1urGC12s1sy83OvqGKSgBsHSedzLgujul/QOZ5Xgq3lFoIt9CC1
         Z8oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=iSl/iz8q5qsynSrNKHIQvHUN+GEAmInTpvYEYnskbhI=;
        b=hhg2KDKQmxHsy01yRGCHP2KwCd149lAopmOiYpr5vFfulJIYOc9xxUCIq3RwSfYD1m
         dn+WnChBQVpoVC5EFJTdkhhc4XZGyz6ndNkVlaBc5kBkOcFWFD9L9F3xH0tDHaRit1a1
         JY0R0q17fzcSmj2MdXRSAqABib8zM6KeAL4TXdSuMt7zbFV3eDY1eIPVTdJj6lI0jV4o
         /KhGNCG7Odif/eMAPRMIzJSE/TIZpiXbbT44E+6+1PnGi/0wMDVKy+A9mGmmQhrGfdIw
         0jU9URh0zKeoIFwlPUWJW1kpG3mxsfs/BAco02pOh5N/6nn/XnUTPC7I72UIgd3BQr47
         3Ddw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tQJWWE+a;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id o36si1096838qto.4.2020.01.16.14.27.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 14:27:17 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id m2so16063128otq.3
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 14:27:17 -0800 (PST)
X-Received: by 2002:a05:6830:128e:: with SMTP id z14mr3883578otp.184.1579213636587;
        Thu, 16 Jan 2020 14:27:16 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id i12sm8216172otk.11.2020.01.16.14.27.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 14:27:16 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mike Marciniszyn <mike.marciniszyn@intel.com>,
	Dennis Dalessandro <dennis.dalessandro@intel.com>,
	Doug Ledford <dledford@redhat.com>,
	Jason Gunthorpe <jgg@ziepe.ca>
Cc: linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] IB/hfi1: Fix logical condition in msix_request_irq
Date: Thu, 16 Jan 2020 15:26:58 -0700
Message-Id: <20200116222658.5285-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tQJWWE+a;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

drivers/infiniband/hw/hfi1/msix.c:136:22: warning: overlapping
comparisons always evaluate to false [-Wtautological-overlap-compare]
        if (type < IRQ_SDMA && type >= IRQ_OTHER)
            ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~
1 warning generated.

It is impossible for something to be less than 0 (IRQ_SDMA) and greater
than or equal to 3 (IRQ_OTHER) at the same time. A logical OR should
have been used to keep the same logic as before.

Link: https://github.com/ClangBuiltLinux/linux/issues/841
Fixes: 13d2a8384bd9 ("IB/hfi1: Decouple IRQ name from type")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/infiniband/hw/hfi1/msix.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/infiniband/hw/hfi1/msix.c b/drivers/infiniband/hw/hfi1/msix.c
index 4a620cf80588..db82db497b2c 100644
--- a/drivers/infiniband/hw/hfi1/msix.c
+++ b/drivers/infiniband/hw/hfi1/msix.c
@@ -133,7 +133,7 @@ static int msix_request_irq(struct hfi1_devdata *dd, void *arg,
 	if (nr == dd->msix_info.max_requested)
 		return -ENOSPC;
 
-	if (type < IRQ_SDMA && type >= IRQ_OTHER)
+	if (type < IRQ_SDMA || type >= IRQ_OTHER)
 		return -EINVAL;
 
 	irq = pci_irq_vector(dd->pcidev, nr);
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116222658.5285-1-natechancellor%40gmail.com.
