Return-Path: <clang-built-linux+bncBCOKR7GX6EORBQEKSD5AKGQENQFTQCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BF1250753
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 20:21:53 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id r62sf4538989oif.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 11:21:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598293312; cv=pass;
        d=google.com; s=arc-20160816;
        b=y3F7dKVnrQbNhRoCR4Chd+PL/kZio9H8oIXhigtkx8hwMKS8CYwfyI5M5JFZBrZnJW
         5Q/B1ANqYTsLRJ7AQa7LNwJYExaUfIN96NJYpnSUwI7NbIk+bbCDFl/m5X2bQWYY/31z
         nrSA2X283LPThYABCJFdTWOzQCdl7egAO88kOr/s/+8jezr3SYhHsXSPw+dm9g262xd5
         GtZdbsMDDp7vdlAKeWmSGWcgxPliHNHkTLiC057um4JJUM0O1TMyKZFwdADqls97M7yM
         XWJq4rftAIgmx+lY7xCFS3QyfNezhvHn7OYcQtAXgObY9D+tB6St4QeTFzRsLb3VVhgj
         LMsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=T0N2AoVO28YYhBuaV6HiVT2cAfXb1zPvpoYo5HR1m3Y=;
        b=lh7n0K+SjKyMAPZV2Jt7E2Y9ytI5miA4RWksveXxNcwQPIsjwxgM0HnPPo/I7voKc5
         iK4hSq+IIg9yuaLSSuDmZtDk6gFoJhPadykg3ueJXp45xsFf8GdZyukv0KoV3GYEB05L
         gMpVri4cTBvgHeyzxbFwzYpRE4ITgqUQyKhMmGvl8d50uqhpTrH+Kh8+1Jrt1R/8z5pv
         Z7XsfY0QZK1/RJUBkzRTfFdpF5qKc/p82jAQ2MlyHz29l5lxrFzROD/dXRTcHsX09Td6
         kDDqTk9eMeRTTxjJOvtZNcDEKnaRIe+PDlDa0Z/XqxVqsvfKKeNCplWNlyaINzhcE/LR
         BfOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Xel1cwvS;
       spf=pass (google.com: domain of rrangel@chromium.org designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=rrangel@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T0N2AoVO28YYhBuaV6HiVT2cAfXb1zPvpoYo5HR1m3Y=;
        b=ZkVPZ6newWdrNgLZMt3q2VUi6up7Hi5qixo39E1Whmj0UY2DgeTaNvdW09dsFTLfE5
         aR+647bHv3wnN6SJGSmDVqGdz3oNHH25Kb7zFL2K1jTc45+zuDPB4YT6nMgi74ITOXCc
         bFyEn6DAdgYd/8Sg4l9yVEco5/ZTx5GcywR7vf7J4gRg+Sw6nALlgy/e2aNa7WzpdJDq
         +X4dhb36QPVlYb+WYZksnnpQsEre/X/3HmmGA/0aK64OTWg9iAGdCsM8v74Ku46XkqUl
         T79QEqd/q6VowwHSeb+JKHIk7vCxyTXowCQzTvvs0vDAmDmkS+Gtkdobk3WfRD9QIKay
         dicg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T0N2AoVO28YYhBuaV6HiVT2cAfXb1zPvpoYo5HR1m3Y=;
        b=hRKJcdThfBJLl3Wm5PY4m3qZ+ULzzYnlXBeiYbqco7EpX1SWY7isb3rl5zwgOOQsQM
         MQUr+aAyImS2CrVTI7Yai0cAl5Ym0hUSHU/u6RRb93aYqaDREzwbd2Awq9wG8fiHJOeh
         AnDAq5ZgK/HDFTJC08nQkV2A/looAsP+pxUqz7g+Kq6Zo/WR+kdJjVqOtw9JKq0XDwHn
         nBN96qZ3MCB4mwjqWWqQqtTJwmAzds8BRLQGbMJdGn7wHZheyRjyi+BdobAoghxoxHFk
         1xtaQ86+v+LXs/J2EZNHaYXi3vroCrPLLMzqqsEyfsaYpdp4IxGSJDTwHdMg4FVx30ZB
         TZmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53348qlX6Rq5Lco+Ri/Xo5N/y+8z72EjUnsspMvLK8tWIty5Tp9q
	PT9Mxhc7UbfzaedUGcSC50E=
X-Google-Smtp-Source: ABdhPJzek22ThbS9CLm4RSr0Cb7DARbQqdq7LFK/gjveMTMTlu+WMe7tJx1xqq5BvC8lupnI8uUhuw==
X-Received: by 2002:a9d:7f89:: with SMTP id t9mr4559936otp.278.1598293312414;
        Mon, 24 Aug 2020 11:21:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b541:: with SMTP id e62ls889393oif.2.gmail; Mon, 24 Aug
 2020 11:21:52 -0700 (PDT)
X-Received: by 2002:aca:807:: with SMTP id 7mr406068oii.45.1598293311984;
        Mon, 24 Aug 2020 11:21:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598293311; cv=none;
        d=google.com; s=arc-20160816;
        b=i6VOdeKnOn9gFPlEMBsKw4ofDwcVt1tPWXBOS/MyQSwPE3RLw+VzF1Lzb2bndGSI8g
         PnD8KO6E1T3I1OWoUZaP68ExcGjuGp9oDsmx25s6lz/kLIupUJXV4pWxPZPl7+ExB18E
         CU0d/z4znbGXRAps6xUealXJks9qOG4hU12q5i+aDpmZOyqGS2nG8eCFZm+/fRgQU6vC
         VnvOxXBGmqeYoLs7RIkG+rw8cGiR4zb8J1lsYaLO1/n3g+j3mkermwix4sxj/A/l2bob
         4p5no48cKudmEYhy39cJo7ug7anoF+munwgIIXMcSeq+pr/enuNqsXPzyxkG7zX1FpbG
         74XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=KjirmPfX4W9rT73jPThF+9JniX1tKDNgMG3YqTPfGnQ=;
        b=DLVwXVw4Qi85O3R4vALrCnisrOEhVcMM5aWWreIXZyt+Dtg1RxAbk9KLpeAm2+pVPW
         w0RZ/f2WgIF7ApaiFDD7YN5NGPUECUMq+MKrYBc7BQDMKN7C5tgWen3KMx97D61o8wcT
         Lpc7iMblsEBwZZfNI2R7/ZFGeVaSgicDMTh6X2g+sqxx2/pkly/38zg98rkfA/iqb65K
         WuUteox1xyBXGgPB5Osxr6EmlafKseHs9LsMByH1sRef3JeuyICbfaHcjTqamT9ZUGkJ
         RM2YDeR9y9qJYMtw+zpssG/5OiSXDJL/jBosZHa0hbUct8/U+Rl2vqJJa+3dnEQGpfcY
         TxVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Xel1cwvS;
       spf=pass (google.com: domain of rrangel@chromium.org designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=rrangel@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id d11si749773oti.2.2020.08.24.11.21.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2020 11:21:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of rrangel@chromium.org designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id b16so9720859ioj.4
        for <clang-built-linux@googlegroups.com>; Mon, 24 Aug 2020 11:21:51 -0700 (PDT)
X-Received: by 2002:a05:6638:530:: with SMTP id j16mr6729905jar.55.1598293311632;
        Mon, 24 Aug 2020 11:21:51 -0700 (PDT)
Received: from rrangel920.bld.corp.google.com (h184-60-195-141.arvdco.broadband.dynamic.tds.net. [184.60.195.141])
        by smtp.gmail.com with ESMTPSA id a16sm7507469ilc.7.2020.08.24.11.21.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2020 11:21:51 -0700 (PDT)
From: Raul E Rangel <rrangel@chromium.org>
To: adrian.hunter@intel.com
Cc: Nehal-bakulchandra.Shah@amd.com,
	chris.wang@amd.com,
	Akshu.Agrawal@amd.com,
	Raul E Rangel <rrangel@chromium.org>,
	Jisheng Zhang <jszhang@marvell.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Subject: [PATCH v2] mmc: sdhci: Don't enable presets while tuning
Date: Mon, 24 Aug 2020 12:21:48 -0600
Message-Id: <20200824122131.v2.1.Id6f3c92fecf4acc60c3b7f57d5f4e4c854ace765@changeid>
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
MIME-Version: 1.0
X-Original-Sender: rrangel@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Xel1cwvS;       spf=pass
 (google.com: domain of rrangel@chromium.org designates 2607:f8b0:4864:20::d42
 as permitted sender) smtp.mailfrom=rrangel@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

SDHCI presets are not currently used for eMMC HS/HS200/HS400, but are
used for DDR52. The HS400 retuning sequence is:

    HS400->DDR52->HS->HS200->Perform Tuning->HS->HS400

This means that when HS400 tuning happens, we transition through DDR52
for a very brief period. This causes presets to be enabled
unintentionally and stay enabled when transitioning back to HS200 or
HS400.

This patch prevents enabling presets while tuning is in progress.

Fixes: 0dafa60eb2506 ("mmc: sdhci: also get preset value and driver type for MMC_DDR52")
Signed-off-by: Raul E Rangel <rrangel@chromium.org>
---
The indentation changed because I ran clang-format

Changes in v2:
- Fixed commit message. Patman didn't properly strip off the TEST= line.

 drivers/mmc/host/sdhci.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
index 37b1158c1c0c9..fd702c436c165 100644
--- a/drivers/mmc/host/sdhci.c
+++ b/drivers/mmc/host/sdhci.c
@@ -2360,12 +2360,13 @@ void sdhci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
 		host->timing = ios->timing;
 
 		if (!(host->quirks2 & SDHCI_QUIRK2_PRESET_VALUE_BROKEN) &&
-				((ios->timing == MMC_TIMING_UHS_SDR12) ||
-				 (ios->timing == MMC_TIMING_UHS_SDR25) ||
-				 (ios->timing == MMC_TIMING_UHS_SDR50) ||
-				 (ios->timing == MMC_TIMING_UHS_SDR104) ||
-				 (ios->timing == MMC_TIMING_UHS_DDR50) ||
-				 (ios->timing == MMC_TIMING_MMC_DDR52))) {
+		    !mmc_doing_retune(mmc) &&
+		    ((ios->timing == MMC_TIMING_UHS_SDR12) ||
+		     (ios->timing == MMC_TIMING_UHS_SDR25) ||
+		     (ios->timing == MMC_TIMING_UHS_SDR50) ||
+		     (ios->timing == MMC_TIMING_UHS_SDR104) ||
+		     (ios->timing == MMC_TIMING_UHS_DDR50) ||
+		     (ios->timing == MMC_TIMING_MMC_DDR52))) {
 			u16 preset;
 
 			sdhci_enable_preset_value(host, true);
-- 
2.28.0.297.g1956fa8f8d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200824122131.v2.1.Id6f3c92fecf4acc60c3b7f57d5f4e4c854ace765%40changeid.
