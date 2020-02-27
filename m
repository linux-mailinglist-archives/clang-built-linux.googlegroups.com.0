Return-Path: <clang-built-linux+bncBCXO3LFH74NBBTHH37ZAKGQEYZO3FXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6221723F8
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 17:52:29 +0100 (CET)
Received: by mail-vs1-xe3d.google.com with SMTP id t3sf473232vsa.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 08:52:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582822348; cv=pass;
        d=google.com; s=arc-20160816;
        b=t0klRESkMAYzpQVWUdK0yzzYfvnmZR3JFbGWHDbpRDD449h5K1kYnZ0MVZdNJ9hHkZ
         PLdLoX1VmnLGBF602RfyPJ3pLA+BWrtuGC5ITy7e98G7vUrzRJumt+tB/vZl+aYMuaH/
         IntoQd2frOxqZ+xYMzLYqgtmn9xWt0ZwwhV9twZvuNusU/1f4tsw/AuXuhbnulQ6/ADy
         eTRw2eETkmSb+OXTGzcLVWxYpBzE1KlQja38fGv4CKpbCXZh7zZYGCR30dP/WCdmhZg6
         ywGODVm+JBVxkCMpTMj/bnufdj4gBtoShlLRZSv9cNy78LUt9VmCT704gAz+zAUL4UQg
         yNbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=m0k8RuGt7Refkg2Lm/zKjbJpOHZnWibTr03qUQRIeJg=;
        b=YBhBr57qp3AsIUSg1s5UFw409H60e+L6wDKnidwpkIe8CA1nkZGcP0+0y1k0D7ZO3H
         PONXXYMOxT1APy750lI5S9cV4SaUCeQOJFYeWDr9AktBt/itD7OYDrG1TlxyDiHFCl/x
         J4iT2NC7LCC0jpJXArBTJISiuyM1nRzrGGeuh43jNoUANicgCJ1I4GD7TbN/lb9jLIpV
         0TUGer+QHmzZImtIu2NE95j3thdtfU2ADIdxEfAID2USX0YEfTvEMZx5B1IhFBWiP1u+
         8AFfb6hXK4fMI34SmjpfBDod1kVTmCegvccYLlzL7ue3/oWPrWjpW38d4icq3xL55Y3S
         z4Eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uwjv1Nwa;
       spf=pass (google.com: domain of hqjagain@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=hqjagain@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m0k8RuGt7Refkg2Lm/zKjbJpOHZnWibTr03qUQRIeJg=;
        b=qXgjg3FXD9VOrH5YecnwAnZ9akRzQTR3KV17yfvcanV43jO4xAVJihioMrcFU0BUmc
         FXEJGftg4Kr3zNK/gk/cvwf23ZwLUml5bmwlyDBDBPkFitKyftwU6xyd9gfAVgvWP1xx
         sy7F5Md04UdPDG2sAWgcwlJjc/lBnQsgRWhDBA1ghkVSeYM+co9R2MtpsBAhyf/52HLb
         h5/51/r293o6k1lbyvA94lAvBeVGV8EL+GUMlhAnOEBpU6acKI+f6Wpwzd7OasFiTqjG
         e1oEzIyW+BtcvZKw2se9nAhSxwq17onzXEqdN4GLBz9ZGOjcGEsyus/pVzYyu6XTgCkj
         shTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m0k8RuGt7Refkg2Lm/zKjbJpOHZnWibTr03qUQRIeJg=;
        b=cNQ1c6RPrNl4gc5KSpz7KN1cGyhWChjKsXh1L7wgXQrL47+xZt1FHRtJp2f7kLpCb8
         S3anv4WWnIv3Fvn5q6LW676/9V675+4jg4zqklnt+26YR0WLRVVUJ9B3QrLS8Svwz7Ez
         VF9T3zvjdFDMSnUTKwhRBzA1oE0UQmWqrW1GZI/dXfXgssag6RFrOkP1mzrvHhC/YzCT
         0gOMBzWdkRGG8hio4vIHTGx5jxPfXg3qQdPlhIRzGNO2D7HiZ6b24y1flmxMpWJQf1Xr
         vZxBCctkAzj8Sf6hrkTMYgM0ys/m0JiLjvapm+iqiPCykzmqnmU3epOSivpCjkbfm20U
         u7sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m0k8RuGt7Refkg2Lm/zKjbJpOHZnWibTr03qUQRIeJg=;
        b=hxEaJRYy/rF3MyLew8IuuxrLKcHgS03XGpJhZwsYkyo+FoLssRcUd8vKwH3ty831+F
         7J6LijXnrg47FeRXmdDwV3j1ucjqaTHcMO931SJrOY6EQ8yU/RM/UeqGEOj2jtFhITSa
         MQmY2m4/Gf3Sf7h+fMCeVblIycWXkrcPxKcEIx4vgsT4by1sCFmriup+lqyvCbk/nip0
         TvtOyyxpyaIH/aTLDckXT75rsI95P2yMwbD8ncASV1s7cqD8UnoMGvF23LWcymZiKDWD
         jJw8BHK4qjZ5wR/aUzWdxy+wGrHzUqxDmmALMebCmXEkolci9Cup8H0qUSmZ4NcuHlrV
         CNlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0A+Dmrz6zkRCux7hHGouHiolRo2GKepMdtPSMdWUlFOYoupBXv
	gMDXciPV48iDrPsjUK816hk=
X-Google-Smtp-Source: ADFU+vsBkX2jYCpvB42yBQYIXYV/INQSH3CeOtr/mkAlGOC1TqI3yZ8RHiu04B033x9JT/4fMDpWgA==
X-Received: by 2002:a67:ec41:: with SMTP id z1mr74810vso.197.1582822348746;
        Thu, 27 Feb 2020 08:52:28 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:64d6:: with SMTP id j22ls277184uaq.2.gmail; Thu, 27 Feb
 2020 08:52:28 -0800 (PST)
X-Received: by 2002:ab0:7612:: with SMTP id o18mr2971184uap.73.1582822348333;
        Thu, 27 Feb 2020 08:52:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582822348; cv=none;
        d=google.com; s=arc-20160816;
        b=kQyBWxl0UTVKSA2ZqiC3XB1qmGRJpetQQDiYgmpAuaNssUtCRW0vB3m3H9KKLvQpXV
         dzyc3ZcgNmwkhohM88lT65CXIVC/78N0GZivwGt2cW5iapIKdbTAduD7e3/TG14+RD+i
         I3YtNu6GzrbhRph7KLPHzA62A/eP1JQlEIo298xg/4DmXs8EIgbBGOhgp3mA+51T0Oz/
         YGQK7hDlIKpILZZ8hKndBC2tdvMLP56oTtB3diFwjARxOiUtYV/GLVA+Nh7HVpAM8iBb
         CeldeNc/RM9Oq/hT4xYDV4VIPP7RPISuYnydwUDBqW1QckgYtJutpcWej0XbPixObg4q
         kX9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=jKuXW28lW9AH6MJSzQGV9UYY4yuB4lYRJ5J1zMaBeWg=;
        b=Z2zDoKtcqRukejdxPnfHjm6YIu+3FE6YSRB8ttwz24OZcBQVxb7fFJxKrOTWOqALe/
         DOiMc1JnR1u/pTQxkTLkk1GH5MDGX9vEEHrVjMFUtSqzA3BitCXhihr2FmFFTXwd8z1y
         uOH5LfcUWEcGXtvMcxwDPBqwchGiHprbOlJdTs7HKnTdrwHnMSr0i2ing7bH9Q4nT/e6
         cBR5MeLN2m+T6vumHLa+8Bjk1jFVbjdhPbnuY3BcqR022zWan6Uiq5EH7GtL8Z8NE14a
         +hp/fpxCNgzv+o9UF34uF0faaFoWPd2fE9y4mNbV7N/G5KYOQc631CTz196kXrVzRJeR
         tT1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uwjv1Nwa;
       spf=pass (google.com: domain of hqjagain@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=hqjagain@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id i27si10279uat.1.2020.02.27.08.52.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 08:52:28 -0800 (PST)
Received-SPF: pass (google.com: domain of hqjagain@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id t3so2546pgn.1;
        Thu, 27 Feb 2020 08:52:28 -0800 (PST)
X-Received: by 2002:a63:4a19:: with SMTP id x25mr273591pga.167.1582822347390;
        Thu, 27 Feb 2020 08:52:27 -0800 (PST)
Received: from VM_0_35_centos.localdomain ([150.109.62.251])
        by smtp.gmail.com with ESMTPSA id 28sm7247498pgl.42.2020.02.27.08.52.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Feb 2020 08:52:26 -0800 (PST)
From: Qiujun Huang <hqjagain@gmail.com>
To: elver@google.com
Cc: dvyukov@google.com,
	kasan-dev@googlegroups.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Qiujun Huang <hqjagain@gmail.com>
Subject: [PATCH] kcsan: Fix a typo in a comment
Date: Fri, 28 Feb 2020 00:52:22 +0800
Message-Id: <1582822342-26871-1-git-send-email-hqjagain@gmail.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: hqjagain@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Uwjv1Nwa;       spf=pass
 (google.com: domain of hqjagain@gmail.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=hqjagain@gmail.com;       dmarc=pass
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

Might clean it up.

Signed-off-by: Qiujun Huang <hqjagain@gmail.com>
---
 kernel/kcsan/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/kcsan/core.c b/kernel/kcsan/core.c
index 065615d..4b8b846 100644
--- a/kernel/kcsan/core.c
+++ b/kernel/kcsan/core.c
@@ -45,7 +45,7 @@ static DEFINE_PER_CPU(struct kcsan_ctx, kcsan_cpu_ctx) = {
 };
 
 /*
- * Helper macros to index into adjacent slots slots, starting from address slot
+ * Helper macros to index into adjacent slots, starting from address slot
  * itself, followed by the right and left slots.
  *
  * The purpose is 2-fold:
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1582822342-26871-1-git-send-email-hqjagain%40gmail.com.
