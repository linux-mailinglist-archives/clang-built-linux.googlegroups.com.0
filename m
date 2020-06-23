Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBT5EYX3QKGQE66AKCZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E795204636
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 02:52:33 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id w8sf9242112otk.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 17:52:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592873552; cv=pass;
        d=google.com; s=arc-20160816;
        b=N1qMNXLNkW/jgicj9My6D+BAq8p8xFeBrqvM3oWEiK6fSR3aQukT7jKCp8/EEC+2Gd
         I5F0jyZlGIFohqNuI5b47Kg2DFsPwi0Avc6d7CuZ2BMkYU1eOxdnJfvQJHv+F3Jwelry
         L4JuNrDXhaagwYfGONbbr5QC6Jdz3pLuzoT4F00jig0o0F3wjbz2lCg9kr5MsA97W00Z
         UfDSGMrETyEarpRwZsHLRD4be3/D9vocGUYWc3EBfKYlCa6EwnM9VnF1sbMhtfl6Pnu3
         aK+b581qiL/zrZBVMWmeVALyNfj/LiIf0ZgKFJ+DKvJsj3VBclBVKy92JATtLEelEQ3c
         sxYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=tmRic5Mfk5WREXutktbvAFurMeE0aR9ySXpAHUTdvOM=;
        b=N6rD2/6aYSAqlg69lEu1MhG5tvKL4IstxIOnEZRllPsfI6Sw1ZTp+EOThv0htv3bLu
         3L4SJlvmUjjXkplE9bKxDh1KyVAEkOWlXEib9I5gbB5NtqijOMIh9PNlrj/QiPr7TzxF
         ejr+UNhJ8CES6fxNeOCqUREdvJf48LIynfP9V1K8T/1UrmdrqyT63eYdi/lIrEobQN0B
         5eT92vabwgYJhXSJpF9aaOL05M5uvcmwkzaFNVXyi41TAxxZaPWvHjCvl2gIlH1vD7yN
         2p0+Qj5G5bx7gjW1fUOlJHwjQ2Qz2fXjYJ6oUqxQRIW43aWEu7swYmifPE7jqe3oQcP8
         3/Rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OKZq2sNq;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tmRic5Mfk5WREXutktbvAFurMeE0aR9ySXpAHUTdvOM=;
        b=OEpedHAvRzFNUSSOG9imzA2Q3Uae+b1LkvcoBtqYc0zzrYoomK788o1+7fDmIdoBHt
         m4q9AgUvNVJ9DwF24vGHdCcciDXw3mgUJvr2rnSPQdlwulKasITAlidTea2GKyofd4xF
         cvn4Mhafb9d0MoUCTp5GmUYexn64tGtSMC/4RJ7QgUbywMOxtL3Ea5ltf+Q0ObsN/Y23
         xL3Zw5FKk5hyjAkauzoCOTu+8qhy+MVTHcnC5O0YkOdMLVPa9LSvIoFSCtLmnHFbR2Zs
         BfPaxybVMSYzKDNJ+oWyAUJNK6GJsPiBUoTGSQXcBNUDWbLXmzDHXL3xx4HkgWE91MEm
         UZzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tmRic5Mfk5WREXutktbvAFurMeE0aR9ySXpAHUTdvOM=;
        b=LoczXqqr5dkQyfb+ahZidLp3h2whYMXi/AxSViyv+63ujye8GqMxUY1P1ZYe8Mkl7I
         gsWDoVxHdsa4DlH9azaXEpdOH4GkenXF3RI36GM82zv+UVcQTRf4nch0A8leKgsFAZ/n
         vLnTLoCTZMyKAnffc1FYRRoEh8WqtQ1X4qIJEWmvXrAryuXM5V9YTifCLPEDmzSnOUmy
         87xMNgjFswBT35eBG8NYB2xHDAdpkc9+yurVPMbzAc99MidFzuzv/DRzEQnsPSHNElBP
         zG5NlQKlMKJqDy9H92Rp+jCd96tP7uRmePqAr+3EHzF0EQSr0VRA7Rb72AUSMn2IOu5U
         Epjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tmRic5Mfk5WREXutktbvAFurMeE0aR9ySXpAHUTdvOM=;
        b=Awb2D1oT5g5eG48l5ZM8RfWKCABw0XMCrB47erYISZDSK07ihIT6zk6UVv3DeWnnPo
         ITIMnnOmo0qVvoaO7s3Fmw4awuW8wkttgeJ6cfx97gVBal6YRiXlNgk30E3IfvV8yfsM
         PtU0AE0Ksyti4xD/3p2YI3rptrucLZ4xJkTzDL4aJZowNPwhQ6a7EXNGA1kHHFJfaVU/
         qo3JLcNC0TQz8yfOwOecPlOTRMsszw8b4eL7ivMA1Ucr3sc38H074Y9Ik7EXwN5wVhVR
         324pErnF5P5mZGpY4fsS+3QmZeB9S1Y+IKseIPD6zc5i5J0RLXmUof5ZFlkgDb/nGlcC
         Xb9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EoF6MAYpkduN5BATBr7pEWPbTQRpVfrz5wr3INxY0bedLv89e
	rNGhCkbu8ulSvexF4hNd9lY=
X-Google-Smtp-Source: ABdhPJzuAkthsmsuXZ0nLhjGOjwM9aqphJ8Y3B+Xj9HTrKp4iXq3rOTNwXhcu0cu75rKP1zgEPBdGA==
X-Received: by 2002:aca:48d8:: with SMTP id v207mr14988687oia.81.1592873552052;
        Mon, 22 Jun 2020 17:52:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:10da:: with SMTP id z26ls522908oto.2.gmail; Mon, 22
 Jun 2020 17:52:31 -0700 (PDT)
X-Received: by 2002:a9d:12f7:: with SMTP id g110mr16769186otg.79.1592873551737;
        Mon, 22 Jun 2020 17:52:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592873551; cv=none;
        d=google.com; s=arc-20160816;
        b=vAfAQj4oxx2/sZnmnMqYNu2uSBOMAAD+ybFEnW8q8g06MN1Kew0SjsXIg6jmmXS9da
         MeNQP3xqEj6TvBnMSsOOqQrHywDYDjLTh/NmCkmXlzukT5I2OQd7f0UQ4zIAjC9sklVT
         rg6qFWKntQvf70veDPBXGuzxLP7CK8nK+y/X7P7W/VijEUqwmmcilP48tW0p8SMYs2BU
         jEqYXogY3uw/EamqBmlDyGHujLwKAMAkBCmjw9/xcfSZql41ymQiZdO8d7y9g4UBDBm2
         EqBj7QKas1wtPjd+ObVqFOxTyyF61lZ9J9v99/xwkVHbHCE9MDNSbO08xmGuVjOwItmz
         fKDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=E5Itn4032fFev2jN27cnxvdUZFh+vCy6bXA8UGcTnNM=;
        b=FB4zL8Pn8gXzll2pzFSsJPaaNcI+gajMBI3ce3Q1wT3rTagxrAJjbE+VfB34J6ZL5Z
         +v6FbxiIJGzCzg8erNd+7MXvgLUR9GXNNTrW3mczIfCGVNEyx6jS3WkKL2bf/foa6pjP
         kJmVxExvqMAISBjwxV7cXZRR6Z5iNPXXCLQ5WJiQFXYwYOh6ILGeggcUsE/HPUmIV6KW
         p0s16Z6ojh93/TGiVmt7cpmTY87qudG3HmgGqNVBfywcyh5SDzrXcJ3m7Udd9EOTlCb9
         RL3LlAy50+qLdzchZFOBMJgCVrRkzaROYKA33eF6cDbRQuMweHesFampRcyj+86eEMsc
         kRWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OKZq2sNq;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id c26si1102470otn.4.2020.06.22.17.52.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 17:52:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id k15so14875208otp.8
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 17:52:31 -0700 (PDT)
X-Received: by 2002:a9d:38a:: with SMTP id f10mr17175749otf.230.1592873551426;
        Mon, 22 Jun 2020 17:52:31 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id l195sm3629058oib.40.2020.06.22.17.52.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 17:52:30 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mike Marciniszyn <mike.marciniszyn@intel.com>,
	Dennis Dalessandro <dennis.dalessandro@intel.com>,
	Doug Ledford <dledford@redhat.com>,
	Jason Gunthorpe <jgg@ziepe.ca>
Cc: linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] IB/hfi1: Add explicit cast OPA_MTU_8192 to 'enum ib_mtu'
Date: Mon, 22 Jun 2020 17:52:24 -0700
Message-Id: <20200623005224.492239-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OKZq2sNq;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

drivers/infiniband/hw/hfi1/qp.c:198:9: warning: implicit conversion from
enumeration type 'enum opa_mtu' to different enumeration type 'enum
ib_mtu' [-Wenum-conversion]
                mtu = OPA_MTU_8192;
                    ~ ^~~~~~~~~~~~
1 warning generated.

enum opa_mtu extends enum ib_mtu. There are typically two ways to deal
with this:

* Remove the expected types and just use 'int' for all parameters and
  types.

* Explicitly cast the enums between each other.

This driver chooses to do the later so do the same thing here.

Fixes: 6d72344cf6c4 ("IB/ipoib: Increase ipoib Datagram mode MTU's upper limit")
Link: https://github.com/ClangBuiltLinux/linux/issues/1062
Link: https://lore.kernel.org/linux-rdma/20200527040350.GA3118979@ubuntu-s3-xlarge-x86/
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/infiniband/hw/hfi1/qp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/infiniband/hw/hfi1/qp.c b/drivers/infiniband/hw/hfi1/qp.c
index 0c2ae9f7b3e8..2f3d9ce077d3 100644
--- a/drivers/infiniband/hw/hfi1/qp.c
+++ b/drivers/infiniband/hw/hfi1/qp.c
@@ -195,7 +195,7 @@ static inline int verbs_mtu_enum_to_int(struct ib_device *dev, enum ib_mtu mtu)
 {
 	/* Constraining 10KB packets to 8KB packets */
 	if (mtu == (enum ib_mtu)OPA_MTU_10240)
-		mtu = OPA_MTU_8192;
+		mtu = (enum ib_mtu)OPA_MTU_8192;
 	return opa_mtu_enum_to_int((enum opa_mtu)mtu);
 }
 

base-commit: 27f11fea33608cbd321a97cbecfa2ef97dcc1821
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623005224.492239-1-natechancellor%40gmail.com.
