Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBEUAXH6QKGQEI7HJX4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id A81572B16FB
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 09:13:06 +0100 (CET)
Received: by mail-ej1-x63e.google.com with SMTP id g2sf3424906ejj.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 00:13:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605255186; cv=pass;
        d=google.com; s=arc-20160816;
        b=UGUGICgBLdFEd/h8n/F1EcrPO0yrOvjtW96LP/LmBZaiDixzuo7D6WVTCp/KyIhY/b
         szz9fyDzfVrKfyk2MCBCBuBH9aGdwLHIN4lFQl/lfcyjoDLHRV2z23UmOlzAC7RrcnAB
         VsO3rXAv3eo7EvVdo3nrGWr7XDrjjLTZec+il1ooOVwrR+mfR+XEkWm/9U3lwo3i9/UT
         R7+y7Fqdzer8OQBCvgBqRzzNZ3JOpWACx7SLJ85yPwWn+Fqc9zAK6kOA3S5A9eeMTt6e
         8Lbzfe2WN7nWaSQOLT7Q4hrmRII2M0dfuDHxcJLg1Q5e7Mp1GLQsnUC0oyQV0ZhALYWF
         MsnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=jSCMs5ciLkchANPurXD7UL7nMs92izfjetn9HIXPM2Q=;
        b=Hryoxun0Op14uS+4tv0UNmp0manNs+m1ls0J0NgZICRlGnLpmEzjDOidVy668Ex4rw
         s83SoEx8t0exwXcn5VvESEV4l8uGYyYcjOnFsRsI1GbGAiLU6OSVFqWoy5lWKsmFxOe2
         WjWK8rPovXSwrrG2HxpMLJ0EZTCKWhZlfO+TUlO8zN8pHUGO0OJQhEUotG1RCA/x3gvd
         3s+MkuSr7qenRsasxoPiPsH8lrZg0I1wLymV2k4Hx2f0X4oLwgDes3w11rIygif46nbw
         TTjZAbvmWPfT1yHmURx0kVGPn3vIl5JMQCe2QLRP5PNtYEkGYHj/zXHQA3pKZ/vimhzo
         uBKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a0MVam7p;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jSCMs5ciLkchANPurXD7UL7nMs92izfjetn9HIXPM2Q=;
        b=CKGMZBzxVBG21XjdPGSW1X/3POBYdFKxX55AsfVejlxvtRo3C5ZuWV/9QE+0bMO96G
         ObaTQtFFzRyS+HhEk0KfITKs/9Vk3vDf5Z6StcYinXMdyqbHB67Nz5MOIUx1JA5jDvH1
         D6yW0vF4PP9n1D7CVTJH0it4Ve2bXIr+pAh7mAV8eRAqSx9NmMriMLf/GH0uBKXOtOPd
         VVau9GKv5QYGgvrYVLJzgkyJvErXgldv11dHAXhnZj1BDmSpvnVJsYhyowMCpg13g/c4
         kJDBdJvIpe1nF6o370iY9FfoFSopHkR4Wba+U1F8tXjcCurWgzecwS6EkGqXEfA855r9
         vK/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jSCMs5ciLkchANPurXD7UL7nMs92izfjetn9HIXPM2Q=;
        b=rrpLAETYjqUi+nTp59+siXN/BzG+QMdoJccTq2aHJ75etdNm/PeVxxKjk9ykyCAST3
         OVE/PFXt+ijwh2iW5Qvq7s/sFTSfBg10zV6LdijWMGyPRYXjp4mRkPMv1uyHBN/4Svoj
         S6wF3uabw6Abun1R05zPUv6vjG+wO8gYeH+nyoErrrTHC34yE/1i1FF8PCQHmTf9Rn4i
         HUDJp6kbiRoFWKRd5bIGsf/q2OHL3YuEqeGGq1lm+YUfaqrz/ITf5IIFR21keT5Tszdz
         tg6Yx37ol6bxJVxRvGHOHy6b+f07f4YiN8FLh1MfHp+f3e1CgO0tNgwS2qp841cX0FCv
         eEog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jSCMs5ciLkchANPurXD7UL7nMs92izfjetn9HIXPM2Q=;
        b=MRWQkXJZb15hCtDyj82nDcAv03c07oFSnjUSYw3mGjnZE0/1ptjMk8D53HhcqHw49o
         G79ubDMmX8n7do/cts4dAVnR/a/YIEQWTSrGk5FwUyzvyb+MHXZzjIKxNfqSkA+4qVu1
         6ddd9eIqlB1/vV5X+ozkX2wTGglNK9z4RXzxKwF1HzGOlLy9sKCTVNgVdKLNHNacblvu
         7baS43/gXD1ficxxJPulKLuDmFHIdw8b+aEkPJ9pTa8JElHLK2h38lpBxwJ5hmoTA3Wa
         dxX+55DP7/8efG/MpLn/mABS/njq36HUZPCFmy8KV4WChQtmA/O3YLTd2Ebfr6UnP3Vx
         rQ+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ix4q/0iCD8Tc2StX6sCv/SCrSb8Z5J0J3YzwL/ldxQYy0Zpey
	abvTWuzzqIoyd9SGdQXaaCk=
X-Google-Smtp-Source: ABdhPJwTotQ3ph4MHCgzh78WE/9XOcaft7WE6p08rhSO9S2d6RXW2ekeyC3H6dkPcnFzZ7pmD207BA==
X-Received: by 2002:a05:6402:144f:: with SMTP id d15mr1331646edx.300.1605255186458;
        Fri, 13 Nov 2020 00:13:06 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:b246:: with SMTP id o64ls3643966edd.2.gmail; Fri, 13 Nov
 2020 00:13:05 -0800 (PST)
X-Received: by 2002:a05:6402:1a33:: with SMTP id be19mr1317074edb.47.1605255185431;
        Fri, 13 Nov 2020 00:13:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605255185; cv=none;
        d=google.com; s=arc-20160816;
        b=OgIW4An6PftiP3e86lmtsFU9d8tiYzcVLPxXG2kLAP+Db5KlqtFQ4+H5wiNmsD6LYk
         aNg+A4/k58UxE6V7OiIYN6YOKKQOa49aSZzyX5xT5o2qT7EB0ny9XgFyWNchkTD6puju
         qoQ1ISxxYsFCQkVJy15m9rLfRUuWq++BDw+d8P5U4lDrFKnkGPuRlBGcYANLoJDSmQ3y
         Rn/7ChJAuZbPBL9EnihTUsIf+jpXiFQ16UWUruY97LogCsdFA9JDPSU8XfNozebMKD34
         Bc7eWkxwyWas3V1SPeYL/DMQftF691CgN0sG7EfR3J9we65xsJAs1p3l5HwzryZ1ngJJ
         /dXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=UjUFjlo+lUVXh8aCv+mLF8td/QwZTXfYmMYnlYnHUQY=;
        b=fqN/aMMUbfr0/C3ujMtvUuZn2jRFnbsVnFhfAnMGt+6BSql4sFQVdrUkc4WYXL3cgY
         AVyOWXx0oFuv9Bajs2k5raFRLqqYStUcnTKN55qNKNJde3jqCCQJfdScLw4H2r4f8EHL
         C4eJCGpqjBw3ojSd4Lct+WLPofGTKfwFkIcyfrhjIoWdSgm8Ac7sN6kug+N10YOgqSmi
         WKNqa13hNA0dpBQD6rcwajrU5ECbGDc/nCTgl7ZorO0PeO966Jn1IJ9OR88JxfOXbAa1
         iHGn0rPhiYhCJI6WrOmhq3q6VeU/fuosnIaqOoC6S+fDb512Jm9+J5umAa1aXHWSBDPC
         Dtog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a0MVam7p;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id v21si165225edd.4.2020.11.13.00.13.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 00:13:05 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Received: by mail-ej1-x642.google.com with SMTP id s25so12050917ejy.6
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 00:13:05 -0800 (PST)
X-Received: by 2002:a17:906:3d1:: with SMTP id c17mr838007eja.187.1605255185182;
        Fri, 13 Nov 2020 00:13:05 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2de6:6700:5d16:c2b3:483:ff70])
        by smtp.gmail.com with ESMTPSA id n25sm3075936ejd.114.2020.11.13.00.13.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 00:13:04 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Maciej Sosnowski <maciej.sosnowski@intel.com>,
	Vinod Koul <vkoul@kernel.org>,
	Dan Williams <dan.j.williams@intel.com>,
	dmaengine@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] dmaengine: ioatdma: remove unused function missed during dma_v2 removal
Date: Fri, 13 Nov 2020 09:12:48 +0100
Message-Id: <20201113081248.26416-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=a0MVam7p;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642
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

Commit 7f832645d0e5 ("dmaengine: ioatdma: remove ioatdma v2 registration")
missed to remove dca2_tag_map_valid() during its removal. Hence, since
then, dca2_tag_map_valid() is unused and make CC=clang W=1 warns:

  drivers/dma/ioat/dca.c:44:19:
    warning: unused function 'dca2_tag_map_valid' [-Wunused-function]

So, remove this unused function and get rid of a -Wused-function warning.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201112

Maciej, please ack.

Vinod, Dan, please pick this minor non-urgent clean-up patch.

 drivers/dma/ioat/dca.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/dma/ioat/dca.c b/drivers/dma/ioat/dca.c
index 0be385587c4c..289c59ed74b9 100644
--- a/drivers/dma/ioat/dca.c
+++ b/drivers/dma/ioat/dca.c
@@ -40,16 +40,6 @@
 #define DCA2_TAG_MAP_BYTE3 0x82
 #define DCA2_TAG_MAP_BYTE4 0x82
 
-/* verify if tag map matches expected values */
-static inline int dca2_tag_map_valid(u8 *tag_map)
-{
-	return ((tag_map[0] == DCA2_TAG_MAP_BYTE0) &&
-		(tag_map[1] == DCA2_TAG_MAP_BYTE1) &&
-		(tag_map[2] == DCA2_TAG_MAP_BYTE2) &&
-		(tag_map[3] == DCA2_TAG_MAP_BYTE3) &&
-		(tag_map[4] == DCA2_TAG_MAP_BYTE4));
-}
-
 /*
  * "Legacy" DCA systems do not implement the DCA register set in the
  * I/OAT device.  Software needs direct support for their tag mappings.
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113081248.26416-1-lukas.bulwahn%40gmail.com.
