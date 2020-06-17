Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNWXUX3QKGQEAEUJRNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 746EC1FC324
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 03:02:48 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id f18sf326885plj.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 18:02:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592355767; cv=pass;
        d=google.com; s=arc-20160816;
        b=CU3bp/zBzyN+Nyhx/GE9BqGcE0s3knyt2lv73KVVadkg4mgbGryyC0VYuHnRYz3GXF
         R6Ru9FtHzFL99qmXXyFyurqk9CEmeGDyfZ5mMXgwBLBCSZl+EZi1nLez5cpv+embA5Hg
         MlUg8jp/yUvakVZuUOPX9QUpo01n79HpGpkCw2zZTx0kNKDDHIKzisI5TzXZqgxt4G4P
         8idxsbmt3AkqzhGmi3huQdX8mCtd9miYvXbAiHADaRZvhRyf6EgTv57H+k1i4HPIKc2y
         gIX1rHUc2yUDjxJPa6oZJQLBukexICVL3nj05Ms2Cu/RCHCIIVUA0di2u+KC5bj74yfi
         Msng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=iwxseZWxHICX2g0S8Gu4Ba00ElcbiFp6DW82PgtBjEE=;
        b=xOxJvOIPXq906kudHIBIOCJuerV8OIm4UBMT71SAuWab6X1E1DEcyTqK74CLp6asK8
         bNoXjsjPVmVSVJwj8aLudzPGb9FXuygRjyuh76ulsNHDOJpor4htuo6bGNXNMNFvF4JK
         mwjVkHuJG2uFeKembt1Y1kLS6v7wMNrmjcq+M20MFb7+kb84Vp+GfO4ekC0RL0nuwI+8
         L89oL8WAkw6DbebyCGxTeoVaPMHpsqhmYeskUutzW12cSHt685d103rfWnwsU4t6ZDoD
         UNrUbO73nkG/pcZABLKZhzTd6vNTqivvIypCwf+rIJHWnBwY7mu1GzXjSGNT62YolYGH
         IYPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z++8msct;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iwxseZWxHICX2g0S8Gu4Ba00ElcbiFp6DW82PgtBjEE=;
        b=RGIntDuONM2UANB+UtnCk0Lz4tmIeyUcahX/TwtE6y2zAovTtcxFCsoOvFObZQziDt
         8e2RtrKBBfhjgIZWoMXe1jGI3b8iXDDLqXNKsrLEE2oMeN3Cr8qjYflf1GnzCKLxuNKy
         4F1ONHzD5XimzyLe4cstr1pNW4JE2imRCWFRLELuyJQNhyuy5VuGsZXEpQnHiW6DpqFW
         yEQ2H5zx6nuBCZCJ27ZNru6pxSqYkdZvZzCPbASLxwNsvzrXxAxN4HYNvHa5o5UeCAZ9
         xvcbFl8iA3ikwpPPSyAQsSq+ih8zzHlE5g4kxcqiWkRx6gaJmj538rC/84A3EVxH0P5W
         98XQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iwxseZWxHICX2g0S8Gu4Ba00ElcbiFp6DW82PgtBjEE=;
        b=YsP9zmuJzlQ3Z0Ym09d8sGfmylpUYHqrBC+HYDV4h4gZh12xFs7CQQmDRKulWPhE6a
         PGsOePDlh0h1t5h058psiEJn6aatQPT/Of89rIYpUhM3ZtYUYaXB6YVq5Nq92bMguY+L
         C7msRifk2eLzeTFXjftyxRPDQQjWnfueWikM9f3sfLCdjVCtxwv4losZObVyLfF+xFRQ
         bXi/tbJd7We0h1bWpvioVoeTHunOwEpdRdFIYhULryWSGXuk7hnkG3XmXgWNlpbrwbeb
         yGL1XYYtAhLhgl9f3Htwbu1gdiUkAtVyrnTZzD9GpbKgisd8MC9eoSIZgNqKkogt2Nu5
         C4QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iwxseZWxHICX2g0S8Gu4Ba00ElcbiFp6DW82PgtBjEE=;
        b=HDczzepcmIDswhTS9Ni5f0hv+9Do9bmZMsTSI4MM7gXNmUMdcwOBw6G/Wwfjc3dlpW
         7bhbccO686WaOPBJpiOTUCJxDmn9rGZ1ljQ54xOHvkW7XqViGNgc0V0KV5t2Ln5uIxEx
         yYYpH0oYKhmsBGAxO8vmx9ykKzMwRhO3P2NCNoRunzM4io74WQKfl4MfcVT6InPSxNLG
         aFt0GBNzCaloHB4zUz/YrdZkoKNw9wqlp1li9M1cNSchAk9UsGczmZqjOIBF0qBhf3oA
         QHyvR9aujAfnMAKpzVAmUlC6OnjvDxunFPFeBBPiV/uv82Hz/xKSLsYWBPxzu5Xn0wbP
         JD+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fucBVltB8YeUVJDq7Ie6dXgh5YLmzuwEC7+4S3jZpeisuDd7p
	gGbpKDNCENl7DjGMHh0+mOo=
X-Google-Smtp-Source: ABdhPJzmcHsFLMdu55GTqGDNvWnzq72wqjAZUg7dilX8azibShccrtdcazEF1nefv4+fEq3fLCJ27w==
X-Received: by 2002:a17:90a:a2d:: with SMTP id o42mr5399316pjo.101.1592355766874;
        Tue, 16 Jun 2020 18:02:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b91:: with SMTP id w17ls157974pll.10.gmail; Tue, 16
 Jun 2020 18:02:46 -0700 (PDT)
X-Received: by 2002:a17:90a:30e1:: with SMTP id h88mr5069306pjb.43.1592355766420;
        Tue, 16 Jun 2020 18:02:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592355766; cv=none;
        d=google.com; s=arc-20160816;
        b=P4WpYSxbYW0F8VEctBFmkzvWPk1EJ82hBYOlju1Za5lBvp87HAdylS17mpqjNTIo4C
         x1OxGI0hszKpSJ+m7a4tan9b354S0jrwFTTEodqhlGrF+q2oFT9EmUtB9aW/COjT6gNB
         UXXCEFf9HCA3Hb8kDwcCo5yWOxXM40ky3mqQHbQKH1eyJivnGbAfnGenWoTnRAf+DstO
         iUi35e40JqbiKczlH04SsXF8zCNH7UQLE8NCvCoHFvpdzcarAyrH31E16g1Y85+A5lkB
         r1tXkmmbwlP2J4hREfSdZmu4QjmYCRajVp0PDZ5+llTBFVbub/FdPkODLh4nQqf/ppX1
         XSEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=g2a002H3vcNUYJWpyRwovtWUn/ajmAxDHx0MWs9PMJ4=;
        b=vXjCF/oXKdJ/f3GSoCeIKjs5frLSges8hdZMKbBMUu5QLS2yqz3tetsAbkkFKDX1QD
         XZ5JDM40I71KwvQt1hrE3oj31JmJvfTKeYNWpZVWmlYiEHvrSnle7S/Ov3DAACHIVXo5
         vRQrBKRJ0R6M9Il6Gq3sDJHfRn583QeHfJrw9OEqWzYny3YePB4sRYfeFJrA4DaQzToW
         BufNAxiV8cf0++sw4z6aXleBTCZU0+mMeDu9aXZR5YrJJ0W1ud/x2LuJxLScVV1I58aF
         nrKkIVJP/rR8MtKg7RwIDI+meYnxssQ9niAM0WxpVMc2ZnW5UNhcY49ANFThH9w6mphs
         MvxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z++8msct;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id q194si1284009pfq.4.2020.06.16.18.02.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 18:02:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id h95so221513pje.4
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jun 2020 18:02:46 -0700 (PDT)
X-Received: by 2002:a17:90a:8089:: with SMTP id c9mr5862338pjn.126.1592355765913;
        Tue, 16 Jun 2020 18:02:45 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain ([89.46.114.134])
        by smtp.gmail.com with ESMTPSA id fv7sm3563299pjb.41.2020.06.16.18.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2020 18:02:45 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Cezary Rojewski <cezary.rojewski@intel.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Liam Girdwood <liam.r.girdwood@linux.intel.com>,
	Jie Yang <yang.jie@linux.intel.com>,
	Mark Brown <broonie@kernel.org>
Cc: Sia Jee Heng <jee.heng.sia@intel.com>,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] ASoC: Intel: KeemBay: Fix header guard
Date: Tue, 16 Jun 2020 18:02:32 -0700
Message-Id: <20200617010232.23222-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Z++8msct;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

 In file included from sound/soc/intel/keembay/kmb_platform.c:14:
 sound/soc/intel/keembay/kmb_platform.h:9:9: warning: 'KMB_PLATFORM_H_'
 is used as a header guard here, followed by #define of a different
 macro [-Wheader-guard]
 #ifndef KMB_PLATFORM_H_
         ^~~~~~~~~~~~~~~
 sound/soc/intel/keembay/kmb_platform.h:10:9: note: 'KMB_PLATFORMP_H_'
 is defined here; did you mean 'KMB_PLATFORM_H_'?
 #define KMB_PLATFORMP_H_
         ^~~~~~~~~~~~~~~~
         KMB_PLATFORM_H_
 1 warning generated.

Fix the typo so that the header guard works as intended.

Fixes: c5477e966728 ("ASoC: Intel: Add KeemBay platform driver")
Link: https://github.com/ClangBuiltLinux/linux/issues/1053
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 sound/soc/intel/keembay/kmb_platform.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/intel/keembay/kmb_platform.h b/sound/soc/intel/keembay/kmb_platform.h
index 29600652d8f4..6bf221aa8fff 100644
--- a/sound/soc/intel/keembay/kmb_platform.h
+++ b/sound/soc/intel/keembay/kmb_platform.h
@@ -7,7 +7,7 @@
  */
 
 #ifndef KMB_PLATFORM_H_
-#define KMB_PLATFORMP_H_
+#define KMB_PLATFORM_H_
 
 #include <linux/bits.h>
 #include <linux/bitfield.h>

base-commit: 27f70ec4fa0e0f419031f1b8d61b1a788244e313
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200617010232.23222-1-natechancellor%40gmail.com.
