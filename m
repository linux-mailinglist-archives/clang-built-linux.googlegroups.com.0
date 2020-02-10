Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3WAQ7ZAKGQEES62YWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F611585D4
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 00:00:00 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id m127sf5109981oig.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 15:00:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581375599; cv=pass;
        d=google.com; s=arc-20160816;
        b=LFI8nG5TeEGyl2H78OgdpjlMZOiWM0N+QibvYEavHZdbZ7so17jZaTLPCemWHrFmzY
         JEV0SpAgYgn39qPkmk++P8cYt1NISRtmArOeRkm03/juyO2IuGbhz9BNMeYf4n5fC3TT
         G6fA0s5wGSCD6WRaRmmRBDfLHAjqtDKCPwzL3qWBP6Edfp51SXOtV59g4gzy9czFAWoQ
         wnx2oAsP2Hi/JgjXjC3onZZmK84mlT2w7UPspW0AqEfB6mxXaMGXh9JIZEWOB+zmuoco
         9g4LNJsAA3BspXoBhyGEYb1+SYQh7BdKFd+lnNJrbiY6cRNZmecmcaSdmPI54jMi0nt+
         bH7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=/QQt2NftrLkHnvhQAxVozzDHv5t8DA20EitK4rLTZMs=;
        b=e8Lx2PawtntxOVBlhlqRPAA0+qq3JUV+dmwq8jpcH2V4kiP7ACgIlJZ/HqMRInL+ql
         6aXtkIuHw0mJglJEylBynp5yBFDLr3VgHNZRVkYsDBRG4strlQhtLvCD6ax4ATWa1y2x
         AmWChVIBu9/7lHgjw/5TZzPRaNoRzNRYr+4f8XI+Jk2pywr+Wu548VpWZWPQoOCLXdJv
         yGNux9sB5kSL5wSnU+k7eiAT/CXmxpWy61xH7V86MFIElrDSGY3e/BXdl/vidLv4XpZx
         WARilQ9TtqRL6VOKr1y3ERspLFjMaRhvjVxtESQuXlZloQHTpWwdJG2Yv4q6xfzkXLiX
         FCpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P0yWasi5;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/QQt2NftrLkHnvhQAxVozzDHv5t8DA20EitK4rLTZMs=;
        b=VwkwlsZojmK7ghJoFq6BaT/Fara6SwTRUpW4RFpesUO272krxmoQLw218I8ytozi6b
         EVK3b8AVYZQ2SrIoJiDwrbj9RXOR9VuRQiW9ZGJnksJVkbYzbgjhu5HawF6TfSZz3gX2
         UPjdE66nzQ2slC9cJ5ChDXS/4UnWSuvvDry0qIpiiADdnQf8z/+YfQcwC2mJRZ0hNhaF
         nctBlYFq2nVQG/Kq8GQulrSDdUCQ62IPcEHqTyLJvVfTCyIJp00WRSS+FyZk5hN1HAGz
         7iOvZ1jmzeTKQjSFti1Fn4NII1+GzK1bj3JcoMbA5smhuPWH0wcG1+uY3eHnDSGHb8YO
         jrRg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/QQt2NftrLkHnvhQAxVozzDHv5t8DA20EitK4rLTZMs=;
        b=pHxGQDvEKVjHqaZMmBlIk2o75O2GO26KTU9oMFuAiazIYs5rpSKmYm2pAftiCKOipE
         H9b1QwCroBJKm0SuuzTi8Np27mcEd/qIN1vwv21mfFyRGpiaUVCEmWiZ7gEyBjTsONx3
         WKDVkfNs/Pn2hW2CJHne8j281P2zKcksXWCOhXLI/Gg9nChLfpHiJfotysxzZ3FWXkyZ
         MRcGfJ/8AkzlqS80BSoXYK0DwFemtuc1RO8JMQCoFtNHHaK6cVoBfHWaXbTJWVk0ct3y
         zh/5WleB9R/9oSZ+Hj6tDoMZsqUgCow9lSohZe80pfqndHFTp+0yi8yMpwWDTw+ugM/q
         zM2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/QQt2NftrLkHnvhQAxVozzDHv5t8DA20EitK4rLTZMs=;
        b=acAtBq/++fdtxl0ODjx8/JKBS4iX8RX2RBlLtzJCkEfwA51n2KJqG3GuuPMDcmW4lX
         ciGYPNlyxy40njmV2B7t/Ha6xVTSog3O7HQvM06cD4PH3rg3NE0DmKmKxCfxxKaDwdVQ
         ORxv3KwRGfBgDx8mRjg01cefo96mnZKrrTxRiO6tTeqehkvPucWlTu2nlC/GEOV25g6B
         BWA+vVRmdVmDUAdGDuW19Z3ftNQTpI/LcVgTC7aF8t9ny+xfMc/QqUdEKJ/p4kaq4lE0
         IZ37SJDpFIJRDh9xe8dL1cZsq4Bq89rxoI3IW0vXWQ+O7VmJQ3LIVAxF+tP5BruUgg4l
         J1SQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDCRInUzvTdEvmG4ffCGY8aLWR3Pn6Y7ijR4VcAzlLS24kyfef
	loRx5xD6i/d1hvwPIYcJFfs=
X-Google-Smtp-Source: APXvYqyoTDgZl8FvAupQN70CMJUDr0zXBEnkwOJD7yNXFpSs+7t9VIZ4u5lRCMx08+HlMvXDlTSibA==
X-Received: by 2002:a9d:6251:: with SMTP id i17mr3003600otk.14.1581375598961;
        Mon, 10 Feb 2020 14:59:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7193:: with SMTP id o19ls2767846otj.0.gmail; Mon, 10 Feb
 2020 14:59:58 -0800 (PST)
X-Received: by 2002:a05:6830:15d2:: with SMTP id j18mr2978229otr.216.1581375598592;
        Mon, 10 Feb 2020 14:59:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581375598; cv=none;
        d=google.com; s=arc-20160816;
        b=d96EzHW3Um49iv1qbIa50DHy3rtgBmntpckf6GadRRoQ1OVL/nKA4wK2XVyeFitm8m
         hEUJ5fzOwfVkgVJ9CGcZbzFV6Xjt772fpGU4CAH2D/0YPjKYlUF0jfov7oMkKWiKsrHO
         26JtRIpFmGJcdV2wKWXsj8at4k481+mFyI5ZQhaK7LnlBhGX5F8D4R1fdECoO1RVpk/K
         dbiUEx0eP+669E8DWKMR9MA6XAChEt+48RyhaxE5U8cLVpwemQqykgGtT486KQ/3jJfc
         4iaSxYuGmcJZzPNKDP6T0M281EALXBM3AKa/MZf+qETQPc32ICDhoFwFXNOw6UGr35AS
         +m+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=h2g0oTCV98K2k6Xzoh29zE55ImVHkBdtE4+mSxUulQQ=;
        b=tL5QvYo5/V5xqps2kd8Tm7yq6TUU/BD57jOYy40TCU+dS6y82zT0WbwC+yrw+aFzbO
         dKPTld1FKciXbPf5TrD6vloOpo32VC5B3PPEMaDV1GNC4Fugdr7deVW96GfDXKiArTLh
         1c81jrrIzCk3vDvMVik0S0UAwdXw6rB56VcJjC2E643tVnamcP4KBNl9O79KHtq6Se+h
         Lq6ftPeTZtnAYupVwEj3xZfB1y+6hwIawQZg98aHuYcVvEn3/V02rxLXSf6rJTSuwsoZ
         VbaEinPr8KpY74Kxt9KvJJ/Z2c0zvIf6VZg2c7ktfhhJLkQimfi03dChqLp5gz1dHIEU
         x0YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P0yWasi5;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id r12si65509ota.4.2020.02.10.14.59.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2020 14:59:58 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id q84so10972567oic.4
        for <clang-built-linux@googlegroups.com>; Mon, 10 Feb 2020 14:59:58 -0800 (PST)
X-Received: by 2002:aca:458:: with SMTP id 85mr1030996oie.56.1581375598184;
        Mon, 10 Feb 2020 14:59:58 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id r17sm546985otq.70.2020.02.10.14.59.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2020 14:59:57 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Felipe Balbi <balbi@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Yue Wang <yue.wang@amlogic.com>,
	Hanjie Lin <hanjie.lin@amlogic.com>,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	kbuild test robot <lkp@intel.com>
Subject: [PATCH] usb: dwc3: meson-g12a: Don't use ret uninitialized in dwc3_meson_g12a_otg_init
Date: Mon, 10 Feb 2020 15:58:17 -0700
Message-Id: <20200210225816.36598-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=P0yWasi5;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../drivers/usb/dwc3/dwc3-meson-g12a.c:421:6: warning: variable 'ret' is
used uninitialized whenever 'if' condition is false
[-Wsometimes-uninitialized]
        if (priv->otg_mode == USB_DR_MODE_OTG) {
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/usb/dwc3/dwc3-meson-g12a.c:455:9: note: uninitialized use
occurs here
        return ret;
               ^~~
../drivers/usb/dwc3/dwc3-meson-g12a.c:421:2: note: remove the 'if' if
its condition is always true
        if (priv->otg_mode == USB_DR_MODE_OTG) {
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/usb/dwc3/dwc3-meson-g12a.c:415:9: note: initialize the
variable 'ret' to silence this warning
        int ret, irq;
               ^
                = 0
1 warning generated.

It is not wrong, ret is only used when that if statement is true. Just
directly return 0 at the end to avoid this.

Fixes: 729149c53f04 ("usb: dwc3: Add Amlogic A1 DWC3 glue")
Reported-by: kbuild test robot <lkp@intel.com>
Link: https://groups.google.com/d/msg/clang-built-linux/w5iBENco_m4/PPuXreAxBQAJ
Link: https://github.com/ClangBuiltLinux/linux/issues/869
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

Note: This patch is against Felipe's testing/next branch.

 drivers/usb/dwc3/dwc3-meson-g12a.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
index 70d24b98fcad..902553f39889 100644
--- a/drivers/usb/dwc3/dwc3-meson-g12a.c
+++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
@@ -452,7 +452,7 @@ static int dwc3_meson_g12a_otg_init(struct platform_device *pdev,
 	if (IS_ERR(priv->role_switch))
 		dev_warn(dev, "Unable to register Role Switch\n");
 
-	return ret;
+	return 0;
 }
 
 static int dwc3_meson_g12a_probe(struct platform_device *pdev)
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200210225816.36598-1-natechancellor%40gmail.com.
