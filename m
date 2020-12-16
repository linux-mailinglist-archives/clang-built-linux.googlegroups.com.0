Return-Path: <clang-built-linux+bncBC433LF43MBBBWFV5L7AKGQEJAZR4GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE432DC9AA
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 00:40:10 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id o15sf2454765oov.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Dec 2020 15:40:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608162009; cv=pass;
        d=google.com; s=arc-20160816;
        b=nCotac5A8adVsYyMMrdH3TcNorRCFsk8k4VKCuzU/SXDVFv8FDq4kVHTOUevuDQzmk
         CX0Tz92CjSVkpcZW67ul9LV/Ps8VMbCv5e8ilU0XRDipDS9aU+uZTYlInoqNkJgXRENz
         xcV1YGhMyo08EyystbanA6RoR+pcrmUWctGbto0LrCn4qgEhiI+zElSTilJzbZKda+8P
         N3TV9f11q+89hBImrH75J7t2/6ntnV5qnLxXwF5U3NhLz3j/+KjBFiNaN7Ab9yIhib0u
         h1F3GnAop//PP5ansYMR6mZHBg8yyxASzvvNo6KImFTNUb8HB+Xtd3QeUtNEh3Hyutck
         E2vA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=OYICbCJZfZoPdIib/hmglKv5XNOhvXzHlsnmzllx0Es=;
        b=vYeHPG+9xk0GuC6SVoZMf2cTEbwoz1Gsvx7A8Oqe7YkDH6gCEHTyZghQLHza5jEYRA
         SBMq/4wJd7CvPmeW2PAuuubZ3lKwcYci8Y4uouBwSPF8A/9a4xUAQpuFvYeJEP5eX9HU
         +5Lj1s8gHs5ENKM0tXCsM8shvI2VIiQ6XAMnR+ACgrdFvOUjhF19PRh5EWh6GNmlEHV+
         z1q61h12JUZIEdr6h0Gc6wFzRxHIy9f+mbrnC8vpVMqmRbPXd+/d5gr+AQzV5kPanQWI
         GXxm00z2ouTlgMc129xwrtpANMho3iOzmOVOVqNrCFYhPODN1xGgIp4yhiRvKt2EAunt
         aYMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OYICbCJZfZoPdIib/hmglKv5XNOhvXzHlsnmzllx0Es=;
        b=rB/AmBurjDD5DQHYZnuYXDasdzjiWqHBfLuUgAUtDAlaF75kUpnxXTJYfAmQd9SbXk
         zGRYO/bNKVD+da8nMrOFuJfHMmkyGIgp0ozvYOfA5fIj84mvbn1Xwu033aY3Gux0kcCE
         p4ZJnskHhtDfXoJvQXCzw4IqMCoSpR0iWOzHGBurFqHS+gDwaSgFmBGchNQAWX5kjHC2
         KrfIB2/V6tccu+PGoymOPH4i34o4VSloLSLEgUMn8cey7SxUnpSKOx27mDRrqB4xgKaN
         xGpRA4yvDJ3RoJB+ehPJom99cfNmxI5Loupd2Ylk75u+vQXPfIZBu+M2DfOVTFJFGhuM
         BIyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OYICbCJZfZoPdIib/hmglKv5XNOhvXzHlsnmzllx0Es=;
        b=E82QjCzo+6nhfM+Hwdt60hBmNUrlpsedscapwBFlagGzMnzwNo7y2oAm1lv/qhenHJ
         vU/R91vUlwdgM4yczVNYBODPCGrlJ+nuEBjZChoZKviyVrORZsAfod7+3v9YYXj/m/bS
         nsIfl+q+I20B5c4jd4QpTXlFUE+QsxrMMoiWshI3b8k99aRgdgEwAK/8FttpjMjbnGlE
         uwJl1xuYURhShlcsl518DDnx0Q3fM9KVlFOrc+yz/Cu65qptwZGsklan0EDGBd9+1HSb
         Vbj0LobNPUqdEORXG2PpieNTGL64gmh3HELYmWQEywq8eLi4RFkRr0HpdkKebpG7L8/Y
         vhPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338OI4Zj8BegWYuUDv4TKmO8FENncZFDDobQRkngWNkHx8K2woa
	FBuBP46Uv8jCm9b+uJKT7qA=
X-Google-Smtp-Source: ABdhPJzCai+TFVAlGU2OKGPjwH9XC4ryyQrUSvKh8fmoXeWNw9u1YKGiuNSMkaLTcrOjN4m6DUuZMQ==
X-Received: by 2002:a4a:920b:: with SMTP id f11mr27093684ooh.46.1608162009034;
        Wed, 16 Dec 2020 15:40:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:24b0:: with SMTP id v16ls6821617ots.10.gmail; Wed,
 16 Dec 2020 15:40:08 -0800 (PST)
X-Received: by 2002:a9d:3ef6:: with SMTP id b109mr22131752otc.288.1608162008647;
        Wed, 16 Dec 2020 15:40:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608162008; cv=none;
        d=google.com; s=arc-20160816;
        b=LJFjp6h19Pp5lpsvXQ9q6ht0AgOYjoOQn1oiVX7Rfqf5gNd54AZlz+oUCFzn63GK+B
         frdexzR7Vy/ZyUhUv3OBMHJbXPlz9Qp1CV2UHW6ag/WiKl/QCR/TFITShmpAcGEBTVSZ
         SKkBkUsnvNt/DB9JAlOE5q6lUFO0D+T6YNPbVMQHn6QGh1Az+DOrikODlbgqvaRNAgNA
         wtAQmuWZn5Ds3PFLtcXc03o7gIwXBSFt8jFjnJF5zdfKq0sSgZ7fH7eRw+mf9HjB4J+k
         8jOACYifU7+aLr62pdKDHuDmTXqHFDXscNvlkxnlkGcSQw1MFtCgrrDJ8GwKhN2gEtUr
         nO6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=hWagUNDcML7eLjwFWUyHEf+BfhI91C5+bVS5pHKzMTU=;
        b=swsfCMCibu7eCAO81V5nu7hF6TR9kK5GjMEqhXYqKiMJiTxMw96PJLLb6x3Bi0OMEl
         18kOv9Z1WLImtAiOPfTOfR8V0S+2QTJUmoyokQQIUdjQYAdnsOcODRTnnKkqfASClBdJ
         AioWiNgebM59Nv5iIUaJ70SkuwsLrCBjTnDpSkDE9SLaYd//FCGzCFsc+fFrnk5iJ2xE
         nrToQFYGlpMm7MHLDnQyGfMUth/0sjI6gFeY7ayOgi2f986c9JtIyxk4eGUOs5yBv9M9
         2ngVzK/+KIg6PejDFfvmPDfJOy5sEYIEPUfjTI/IvvzTjmZmPm/kQEHI0lcC/kqf43iW
         Xb1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
Received: from aposti.net (aposti.net. [89.234.176.197])
        by gmr-mx.google.com with ESMTPS id f7si366097otf.3.2020.12.16.15.40.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Dec 2020 15:40:08 -0800 (PST)
Received-SPF: pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) client-ip=89.234.176.197;
From: Paul Cercueil <paul@crapouillou.net>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	od@zcrc.me,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Paul Cercueil <paul@crapouillou.net>,
	stable@vger.kernel.org
Subject: [PATCH] MIPS: boot: Fix unaligned access with CONFIG_MIPS_RAW_APPENDED_DTB
Date: Wed, 16 Dec 2020 23:39:56 +0000
Message-Id: <20201216233956.280068-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Original-Sender: paul@crapouillou.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as
 permitted sender) smtp.mailfrom=paul@crapouillou.net;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
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

The compressed payload is not necesarily 4-byte aligned, at least when
compiling with Clang. In that case, the 4-byte value appended to the
compressed payload that corresponds to the uncompressed kernel image
size must be read using get_unaligned_le().

This fixes Clang-built kernels not booting on MIPS (tested on a Ingenic
JZ4770 board).

Fixes: b8f54f2cde78 ("MIPS: ZBOOT: copy appended dtb to the end of the kernel")
Cc: <stable@vger.kernel.org> # v4.7
Signed-off-by: Paul Cercueil <paul@crapouillou.net>
---
 arch/mips/boot/compressed/decompress.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/boot/compressed/decompress.c b/arch/mips/boot/compressed/decompress.c
index c61c641674e6..47c07990432b 100644
--- a/arch/mips/boot/compressed/decompress.c
+++ b/arch/mips/boot/compressed/decompress.c
@@ -117,7 +117,7 @@ void decompress_kernel(unsigned long boot_heap_start)
 		dtb_size = fdt_totalsize((void *)&__appended_dtb);
 
 		/* last four bytes is always image size in little endian */
-		image_size = le32_to_cpup((void *)&__image_end - 4);
+		image_size = get_unaligned_le32((void *)&__image_end - 4);
 
 		/* copy dtb to where the booted kernel will expect it */
 		memcpy((void *)VMLINUX_LOAD_ADDRESS_ULL + image_size,
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201216233956.280068-1-paul%40crapouillou.net.
