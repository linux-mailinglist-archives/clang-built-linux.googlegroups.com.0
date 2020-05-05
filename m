Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBSXDYX2QKGQE6USPJPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 595541C57BA
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:01:47 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id l6sf658901lfk.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:01:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588687307; cv=pass;
        d=google.com; s=arc-20160816;
        b=r/k/CYEiqxBUIwkWYYtC/sEL7ps4yIXqybGOFKq8uQaq1UFa6YM7sv07F3/zjV1A7C
         4p6Fx8HmsOTnFR+igh3IL4UkMyVIqDW4H9kpHmHAcl/tD63kdB+r6QKXECc2/kgiympX
         MshMzu0mELi1+4WKHPMC3fqaimVFrm3EtroZfYqakKx1yqY/ZPnpG1rvmcLtwUSlPNDR
         Q6QIVukN2Ji3FtwQrHRQp+bfjJIN8FN0odPlM8lCKd8TpgXwXWKrQOL64PwwJLAq7NcB
         icaXcdSuowL6d9ZXRV5015m+AE1m9s3NcRsQVAPKrtCz94Th4jr/omwII0aY/VZleaw3
         cp/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Zvw3K0+/4VI/KEE4oioqu2OMTRBCLl0azuDtYYFqDQM=;
        b=gG8b8fiD0Fiw9OjeeWaISLb0suHKMX/W15qcIAYVcMdJVCUgp9yC9ieR8n6SNHDkWf
         /SkO773Cbu9zrNS3ZpUTgd+Ytcodbe0bHK1vEztIAaXCx+ByLLMEaIK6w4XKicuZgAtm
         /bLxMiwIFFnpHwEU6eB9b0l5I+9cjyMyAxfIAPTZQCJKF2v5vLOyfR9qj0vOohw0gO8L
         wuYhJHT1JD2Jdlklm2hvifow0BhabnFI2NfZZxGpaqyNx5pVzmxKP69il/hURJKblDDD
         QgSu1FYOV7fEK8V4DGdmZntYHiV0xbE4cgfP1g3I32+UKuMQVGvpuF1v3+e+ocI+yaWQ
         /xyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zvw3K0+/4VI/KEE4oioqu2OMTRBCLl0azuDtYYFqDQM=;
        b=MByRLxqdpyLoxmEPbZCZ+lG94H90VD67/HXUfU4o64iSth+0SZGg7JFtubl+G8ssP8
         HwA7dDwY4xUzTpzRSmKKa3jOQdny9JzwdH41YUqocfmguEDTjzOx+lgSlV5/AZDyrN2p
         D96hOV2UpUGL5sxB7hgZiGoA6Hp8mkcxTdiDNBrYA2YcWNYKjIpqxfIr5qO+5FVetyA4
         E0sJcrJBiiMiRfj/tVm7akbyp395esJ3rdyoi6DNvwDgK+OR0Fm57pttGLhRFKVC7T/Q
         G+soW7AapP6ODkKaAJKbKY/X5pPrzkbCYj14rAvKqEs28uKifH/KmDCYpHjsehotAPrR
         NXpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Zvw3K0+/4VI/KEE4oioqu2OMTRBCLl0azuDtYYFqDQM=;
        b=MHZ07JKzv5DCRbvauAhz8tWzwis7h895m7C34VOOHNKntrFS5MIolrNn1c2izIp3HN
         IsFuPI9H1UBKI5WlxlYCfxADs+W9m/xEfjLK9Be0KrlLW8pgQU2gq25iwPmcd4mweg7G
         3w9gYYa0EqdPuh0UGasAJbpp+EnyzUqqsY3kltfWiU0672mFQeU0j+QroBqZj3jl1jEM
         GRBJ4YoiAKZKppfjpZBSGiqmk0tlKYCrFH9pvtpMia5mgK1551QGdbCECl4j6PJJotR4
         p5PXC4wNG/Zrl4Tp7qY+zqLqZdUNBK6O1i2zeQlb7A1nPPbUPyOoIXd+owUYTBrWHvDV
         K9KQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY9V6pACrcbVyqucbaIygyFhezBt0pxO2jguxrRmNzrViMW/XVC
	jvDvtKCG9qhAQT06iwl1Crc=
X-Google-Smtp-Source: APiQypLLp8Kzw/SojHfLiAhSXl51+lG6JWTCeDrAISceKU2cZaaajTkvGVOCuGnHT02BrsLvXu+luQ==
X-Received: by 2002:a19:c85:: with SMTP id 127mr1251482lfm.189.1588687306854;
        Tue, 05 May 2020 07:01:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:2002:: with SMTP id s2ls371051ljo.3.gmail; Tue, 05
 May 2020 07:01:46 -0700 (PDT)
X-Received: by 2002:adf:f146:: with SMTP id y6mr4203808wro.132.1588687306202;
        Tue, 05 May 2020 07:01:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588687306; cv=none;
        d=google.com; s=arc-20160816;
        b=NAjdTr8qABconWBVuAX2d54GoIwyUtWp/Huo5bFqVNQGGuveEzxt8VsWSHm3KZ0OO1
         SFVEvDZ9zboL1OkHT+uFfK8QCITE5Kkub3ecctKHEe23+lioXbknREtdqwH8tRuXhM6/
         yt1bHk1C8Qs1jrhxojD6lYCRNJgoCaB/g/UnSPA5EpwYCAgXD3eSBAaqdvwJz5GrJfqC
         A6uGUfX0YzjmLGjg7roQMfzDQmuE1CTN0Io9Fj2LByE+/JxIKFWxTLTXT4geKjmUxGNT
         yjofLgRNCcM/wQ2PDsiXNNqHZHGO9J8pO4eCUqcJC17JwwtySEcdSg2A35YqGCYbZmVL
         neWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=YX0He1j+arifPy5MH3GoI1r5n9iuntEzfj0/NJYbAvk=;
        b=MaFN4mxUGs6Nubmf/WW+w2t27fnqvgKww6imFXwX19UjaSyLP77Uh9YUdt2w9qmGtm
         gtAAjKAj+pYsg/Qpby43leq9EMJvvaBbLI0K44T2nc5WYpa3kR/B2c4HgTazkZpag1Dw
         z7O4APYTE0sITtJP/aP6hFx9f5UA2qop5N4EKkeWS2G9fG9Jj1RS0sdPzpPJzrZ56GmF
         WS6BPF04hxWAabsrL60sSekoqpOPQ1yaGDYG9Ywuq6x/+AaZmQFppOVHYwgdgfaw36XW
         tUFnAr0xoK+zxTLDkmIWJ8/huSKokJLZL3238j8U2Cr9V2kfq9e3GaP8o3lBu0uhA1ZN
         Kqwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id h8si97221wro.3.2020.05.05.07.01.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:01:46 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MuDsZ-1jHTUl1QxZ-00uWRX; Tue, 05 May 2020 16:01:38 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Vincenzo Aliberti <vincenzo.aliberti@gmail.com>,
	Brian Norris <computersforpeace@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Richard Fontana <rfontana@redhat.com>,
	linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] mtd: lpddr: fix excessive stack usage with clang
Date: Tue,  5 May 2020 16:01:16 +0200
Message-Id: <20200505140136.263461-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:iaIPMXhwT+Ozi6/EpaDCzPQ6tOZ0YRFJlPmWlpkMXIOGy4GtadE
 2Z+LvOLt48OWBL8tlphxtGjgLmEv5xt9TTGL54IbLKq9dBjrTyohtYUyJgkuQXyGFBJuxzc
 6osWPaVYP906+AjTqqJo7C8bulY+GI4nc8qQYAYy/TF4rtBahP77hmt5uWz15rbdppHrlZ1
 d2CaYJdcLUkSTeHBRS/3Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZKEdyWcVvbU=:zYkDpW+KkqOFvxVL4/YtNm
 9RlRgywDUlI6jWeDBe9CgT6v4zfsrTYQx9nUJBpcgMa1WwlbhNH+MYM8vGwR6zecGtm/xoqH2
 GsLnyQytBgbIyv6dibT0Un4WucwiF1kgU2Dw2cCbkBmHF2tjhxBI1lsyZZcEiBD09JW539gOy
 B2DwwiGt1ARK+9SXIGsEAEh/R4IhX9XWgvR3/35YJc0+0NiOXuEevJPbDmMS8WNwc0iKCO9C5
 6QhAnXFNVGfRuDv5FZGzYGq1d8Yf1MgAJpylYydDSflY3PSaUuIBavOTvq+0YJ+4Uhj/SO49J
 UBhgVHGa/th64j4rCrhZ2puCZZRSXmLFg1gurJYVTVUbMWxbdPeywDtaNPLrkjcuNRPCPbGDs
 vahrHJP9tGpIZDhp3cTatj9www2/VrSG9bezmcdCY3Y6Gjra81B5tzJi+z2tAejKO1bdoA3eI
 e1kEvWTFqJEkgRbRM3yBGP/J8iEEZH65eUbaVpoZk+AGWV4nGA6/ZWhMSlWD7yqcsssVz2ptK
 B7gazvUT31WlAJwYWPU9u7mwAGttdJvPMtZF7g0bblT46ydiDoBAVjVhqi7sZa7slRw+3fZsC
 WRAE6KxqjAB8rH2pGfvGJnmF7UWlfIQdNI1mjjmhWNhm7ICV+BONcVnpj9zM6Xc1kYGTTGl7x
 sJAk9yh9Fs1AaW+O1fOfFjnW2ApxftOdLkAAFVc8y0JbZUhaNykwjJcIwTo/dL10KVPoOT+pO
 shuX5bITpPs9W9S0y3YkJIJTkHW4N90ZNkF2DuTyr5DP1JtiKLCL85NbGDKIEN+S/a35DRqdA
 T2TdfwELWOQHqK+OeflGC5Bo4P0y9AgaidrVeSz5sZp+KV3yWk=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.24 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

Building lpddr2_nvm with clang can result in a giant stack usage
in one function:

drivers/mtd/lpddr/lpddr2_nvm.c:399:12: error: stack frame size of 1144 bytes in function 'lpddr2_nvm_probe' [-Werror,-Wframe-larger-than=]

The problem is that clang decides to build a copy of the mtd_info
structure on the stack and then do a memcpy() into the actual version. It
shouldn't really do it that way, but it's not strictly a bug either.

As a workaround, use a static const version of the structure to assign
most of the members upfront and then only set the few members that
require runtime knowledge at probe time.

Fixes: 96ba9dd65788 ("mtd: lpddr: add driver for LPDDR2-NVM PCM memories")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/mtd/lpddr/lpddr2_nvm.c | 35 ++++++++++++++++++----------------
 1 file changed, 19 insertions(+), 16 deletions(-)

diff --git a/drivers/mtd/lpddr/lpddr2_nvm.c b/drivers/mtd/lpddr/lpddr2_nvm.c
index 0f1547f09d08..72f5c7b30079 100644
--- a/drivers/mtd/lpddr/lpddr2_nvm.c
+++ b/drivers/mtd/lpddr/lpddr2_nvm.c
@@ -393,6 +393,17 @@ static int lpddr2_nvm_lock(struct mtd_info *mtd, loff_t start_add,
 	return lpddr2_nvm_do_block_op(mtd, start_add, len, LPDDR2_NVM_LOCK);
 }
 
+static const struct mtd_info lpddr2_nvm_mtd_info = {
+	.type		= MTD_RAM,
+	.writesize	= 1,
+	.flags		= (MTD_CAP_NVRAM | MTD_POWERUP_LOCK),
+	._read		= lpddr2_nvm_read,
+	._write		= lpddr2_nvm_write,
+	._erase		= lpddr2_nvm_erase,
+	._unlock	= lpddr2_nvm_unlock,
+	._lock		= lpddr2_nvm_lock,
+};
+
 /*
  * lpddr2_nvm driver probe method
  */
@@ -433,6 +444,7 @@ static int lpddr2_nvm_probe(struct platform_device *pdev)
 		.pfow_base	= OW_BASE_ADDRESS,
 		.fldrv_priv	= pcm_data,
 	};
+
 	if (IS_ERR(map->virt))
 		return PTR_ERR(map->virt);
 
@@ -444,22 +456,13 @@ static int lpddr2_nvm_probe(struct platform_device *pdev)
 		return PTR_ERR(pcm_data->ctl_regs);
 
 	/* Populate mtd_info data structure */
-	*mtd = (struct mtd_info) {
-		.dev		= { .parent = &pdev->dev },
-		.name		= pdev->dev.init_name,
-		.type		= MTD_RAM,
-		.priv		= map,
-		.size		= resource_size(add_range),
-		.erasesize	= ERASE_BLOCKSIZE * pcm_data->bus_width,
-		.writesize	= 1,
-		.writebufsize	= WRITE_BUFFSIZE * pcm_data->bus_width,
-		.flags		= (MTD_CAP_NVRAM | MTD_POWERUP_LOCK),
-		._read		= lpddr2_nvm_read,
-		._write		= lpddr2_nvm_write,
-		._erase		= lpddr2_nvm_erase,
-		._unlock	= lpddr2_nvm_unlock,
-		._lock		= lpddr2_nvm_lock,
-	};
+	*mtd = lpddr2_nvm_mtd_info;
+	mtd->dev.parent		= &pdev->dev;
+	mtd->name		= pdev->dev.init_name;
+	mtd->priv		= map;
+	mtd->size		= resource_size(add_range);
+	mtd->erasesize		= ERASE_BLOCKSIZE * pcm_data->bus_width;
+	mtd->writebufsize	= WRITE_BUFFSIZE * pcm_data->bus_width;
 
 	/* Verify the presence of the device looking for PFOW string */
 	if (!lpddr2_nvm_pfow_present(map)) {
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505140136.263461-1-arnd%40arndb.de.
