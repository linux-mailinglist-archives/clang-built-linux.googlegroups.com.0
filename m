Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBVNSXWIQMGQEJVZRB5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E974D87A8
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Mar 2022 16:03:50 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id bf20-20020a2eaa14000000b0024634b36cdasf6610735ljb.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Mar 2022 08:03:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1647270229; cv=pass;
        d=google.com; s=arc-20160816;
        b=pzYNZpIdpCczgiXi8MBzSCd2kHnDb3caVPUUbHh2C2cWzYaeHLPCsPC7k3CSNjwjTm
         RxRM0O6ETy0EVQUsPc8aXOe3DuKAxs0o7tf4B0zUkLIkkOhHa0qEo9FqjOh0zjr019nN
         QXgkrQEgXT2DIcdZwdLyABeJLRwWH7SSSs7NozEdx3ff0uxm9CrnKiqA2q/KZboMEj5D
         nY9NsiHtBRPzse2oYog9m23GMlDEt+wr6uEczyDjFgcfsHA6gpWq0VzKmGqhZ9t3njKy
         Dstuhpv/ziJ9xCkLuWo4+g24bq3fx16tThk5aPQXqZIqgTr64+rRXEb7DWujfBfrKvay
         3pkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=KYktCY02K64DRzduoBUgBuaxEo2LWUM/RZ4j01zK28M=;
        b=MnW7OaZs+oIsirGeAQVMlMx/S5DUdebye50SjGnl2XOtPpjO/vmwNgDURMLM1gYpyv
         CDNCHkgDhoXlLuHPlqNybykw/Pv/UskDBuiGc5G5Z+xm7AYPtyFTUbFAHRhgW2uqJMGz
         WyNq8BFIme0He6izshhuq+yUh5mH4OrYuW7hwUyJXSf8g/6K/BZm3GkWqHvpao5reoD5
         CeMnIJNFp+mZPZ3yWpw1+YA0QhnbsryTLUIUXAOIQD/uCX/45J6g1+f+ncd1T2fSnigd
         fyFWKmJRsSJP6n1rqVSbjOIU1hC6pkadCvjhkY8uHQfDtNate8Es5+8m8VrtXixPRNK+
         QUKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=qfRD3pKD;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KYktCY02K64DRzduoBUgBuaxEo2LWUM/RZ4j01zK28M=;
        b=WYJg8UJvfhdjVf9fsKtBd1SM3VT+UvlOcDCffhGMXaZLQ7R25ZA5vkQzdHyg8V2k/O
         r2uxm1ZzSl4wq2bnIi33LMuAmbFmsVCd9DoxJeF6EPOZz2Scu/DqjehKHj4OJ8DA6Yhe
         a606x1YkfZRxVcYBMAjcjtOyAdmjSV3sc8nCDkKUFZ/egt18TMKFnLgPeGxfleTLEjGM
         mhM4PNN1otC7IZcAsVzv3htcq1gL06QK2605lD0Y3b9D1lqx7ulRuwU41Ov6nb0eZ7YZ
         6H6SqjP4fyMGZE0MgXtimer34Bs1BQ54Q04MKrGIWq9N+ky/kqoohGq1Zz41mn8Ns+0C
         SMzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KYktCY02K64DRzduoBUgBuaxEo2LWUM/RZ4j01zK28M=;
        b=ifd+831xt4bOSl6GSfRqa1nEYrekbsbe5Jzvq3f7dQOB9I3GkVpocWdhV+vOu8cFSZ
         +qKx7uwcb08H+cHCYPUL6OVXQw3cAWy6lYSBe83zyTqmo7mWAAQkjsFHcvzX6xjpjU3D
         V+Pcqo9Zb3CiLc1Z3oBhd7sCD35Gmwl7k0VlRjCC66L4rLm1et58+ErKN2UyKqTlPoQw
         aXFCPXHhbwaOpaV11AnvlsTHBRyo9js6R1o8c0hGCgMRmV6CQAMz1mDiQX84+Q81IYTX
         YUyJxvn5lF/I9qbm/wkVpJNvVpKs5v2CyYBK/w+KhpIT/zKEltcX4+loc6ZtMNBg/qCi
         XMyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KYktCY02K64DRzduoBUgBuaxEo2LWUM/RZ4j01zK28M=;
        b=TwKoekvuk02VB4gxQmu2rziPB/nW8KhJDOP+DiZ1j86eviLFtOGWD2/RmM+WHz7TXq
         R5K5XzU7GbX6i5M9VzSD8EsG2d7sPgmn8NOr6jqkcUB0xt8KnhGwsfuzr7lPjY3ALgko
         pp9qEGzuI46W2rMdsZJEZHiRkLYxGjii/VddLLLK3cKW9Q/DJOTGCpUqkayDKw96B0lt
         STsrUmgPT8JLx3M2BWTbQLXF3EiVCaLVhS5Eu3jDSpzgvBWJOcdWGRcuysZYNqWePBJx
         8O7D5fi1I00/+c7xnmSP0mvdD0DF/oWHgOc9DPMWxiPynM6GCguPW7JwI5RiGCcIp4wp
         V9Ng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Guhg6gfn2lC2+5f8Y0PZHhaX1otr/tass+pLyrxsoKNvzhDpq
	mycv75rgCEMBikUY7MhWz2o=
X-Google-Smtp-Source: ABdhPJw/rLWgk7Xtzf/AumW27PkbrQisAdCnbF21MAuho2eIkVm0OFou/OdrSfpdT5bhDhSL8yFlHg==
X-Received: by 2002:ac2:53a2:0:b0:448:294e:f3ce with SMTP id j2-20020ac253a2000000b00448294ef3cemr13721647lfh.297.1647270229476;
        Mon, 14 Mar 2022 08:03:49 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7d04:0:b0:249:324d:ebb2 with SMTP id y4-20020a2e7d04000000b00249324debb2ls708278ljc.1.gmail;
 Mon, 14 Mar 2022 08:03:48 -0700 (PDT)
X-Received: by 2002:a05:651c:1403:b0:246:34e0:bc16 with SMTP id u3-20020a05651c140300b0024634e0bc16mr14548377lje.98.1647270228325;
        Mon, 14 Mar 2022 08:03:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1647270228; cv=none;
        d=google.com; s=arc-20160816;
        b=ut/70sm4J0r/mmq5wY0BUDcAO14dMQgVvZF1KjO5k4fYZ8AB0VFHSsP2qqZe5SWAa0
         Ar/qJzmk5KKhNm/ocpvd2Ce1RdIqK+/aeGFywOmDpOZSE+sZTFrtdNkcQfTc2NQnQIFi
         K7HMKB+sFlnQz24FIIqc/NBjQ0xDm1huRmHZ4+TdcPnHxe4YxWLwwzdBKT+PkmfKJKp7
         nuj3BWxE3DdDRlbLJJskkN6xGsJuuX5LZm37XvcGgedcF+vdnb+42qUY4oByjJMRsZVA
         Da91pyD7oWN2rKmWci3piB0j+1nKyEEcfFVRIMrUaLbljyBa6p3sU4cKCC92eRL36s/x
         gMEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=s9afH/O5dsvmhKf0xLBy1pTIXzqvR2poyDjCQitPnEo=;
        b=UzUPfnPZ46Fa+hjZ6oxOlhBbQco/jJkSJFNXPSi1tg6XI2hqpRngMkD/PQIZ1YV0Vg
         CAAsbO6axXZr6p7Sg1IEzfgvoKvgxt3Bc9SHLPG8l/b199hg1H0g7EEhwk5WZIrhm/iI
         2rr0IA8lhc1DIIa9eba29NSB9DBVJzgxbhSYONVpakTTaH8StA//x3i73j+MkaqfwfYG
         eaVT+hJWzQCvkoNspGE89Q5jDihZyRPNsfAqyq7fwd99yFXKgJmWN1Q4KakiOLha0c+T
         /jclZhpGjbARvgyOMdIziNaDOkjbgM+toofcy7jguwlY+u9CRcxAzsEEOT61f0U+0mHg
         ikiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=qfRD3pKD;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id bt12-20020a056512260c00b0044899de4fc3si140411lfb.3.2022.03.14.08.03.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 08:03:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Received: by mail-wr1-x434.google.com with SMTP id j17so24547387wrc.0
        for <clang-built-linux@googlegroups.com>; Mon, 14 Mar 2022 08:03:48 -0700 (PDT)
X-Received: by 2002:a05:6000:1868:b0:203:732f:d657 with SMTP id d8-20020a056000186800b00203732fd657mr16382494wri.664.1647270227888;
        Mon, 14 Mar 2022 08:03:47 -0700 (PDT)
Received: from felia.fritz.box (200116b82624ff0060a4091d550340a9.dip.versatel-1u1.de. [2001:16b8:2624:ff00:60a4:91d:5503:40a9])
        by smtp.gmail.com with ESMTPSA id l25-20020a1c7919000000b0038999b380e9sm14984749wme.38.2022.03.14.08.03.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Mar 2022 08:03:47 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Christoph Hellwig <hch@lst.de>,
	Jens Axboe <axboe@kernel.dk>,
	linux-block@vger.kernel.org
Cc: "James E . J . Bottomley" <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] sr: simplify the local variable initialization in sr_block_open()
Date: Mon, 14 Mar 2022 16:03:21 +0100
Message-Id: <20220314150321.17720-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=qfRD3pKD;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::434
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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

Commit 01d0c698536f ("sr: implement ->free_disk to simplify refcounting")
refactored sr_block_open(), initialized one variable with a duplicate
assignment (probably an unintended copy & paste duplication) and turned one
error case into an early return, which makes the initialization of the
return variable needless.

So, simplify the local variable initialization in sr_block_open() to make
the code a bit more clear.

No functional change. No change in resulting object code.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
Christoph, please ack.

Jens, please pick this minor clean-up on your -next branch on top of the
commit above.

 drivers/scsi/sr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/sr.c b/drivers/scsi/sr.c
index 00142095522a..5ba9df334968 100644
--- a/drivers/scsi/sr.c
+++ b/drivers/scsi/sr.c
@@ -483,9 +483,9 @@ static void sr_revalidate_disk(struct scsi_cd *cd)
 
 static int sr_block_open(struct block_device *bdev, fmode_t mode)
 {
-	struct scsi_cd *cd = cd = scsi_cd(bdev->bd_disk);
+	struct scsi_cd *cd = scsi_cd(bdev->bd_disk);
 	struct scsi_device *sdev = cd->device;
-	int ret = -ENXIO;
+	int ret;
 
 	if (scsi_device_get(cd->device))
 		return -ENXIO;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220314150321.17720-1-lukas.bulwahn%40gmail.com.
