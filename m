Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHMEYXXQKGQE4NHDLCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AB311BCCA
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Dec 2019 20:23:11 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id e7sf12026630pjt.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Dec 2019 11:23:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576092189; cv=pass;
        d=google.com; s=arc-20160816;
        b=XB8ussr2WNlYiQit5asToT26Z3xiIz0lCTXGrIuhBisEwCJ+Cef8lfqYfeFD98gTD0
         8rqLnM+QAawWb61hyUfaNQRT99vJx/FT7v5eo/eMYtoPyVhXXz9Mm0zm1YIJN5oV7ovb
         G2qpnHRRkinj3qFlnZpwTIwLPOerBCMPFok/rfcYMjgk+w/Ad8KVw3gGlivLfxYEaFDo
         XMEaQWFT1V8zqVCLHY/dm1NTNnMQ/Tn/RjSgHhVFv3n5tHkT5mgsoERZ+k2es1jdLHIb
         qbZN0quBR9RwCjvNzSKLjDEB68UDPkzuTHle1HKJuJbxkZsPy9tO5U/Gr7Qw28OnaQ8i
         nLgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=y2VGfJR46FDtHPEXa9/H/mH8weeJnO9/Jzo8I+H3UbE=;
        b=RfNKq5cJ+6fkOvswLAd18WqVxRRYRGiFQTgoj9vw/YYgqWIHkRv7iA+JjaFKss/H/X
         g2JQVv08FG72dd+pMHoDE3cMUCrBDnBdxWSuuTkiB2Y3onRVJe3WWeJru5hFE67YonBV
         1GNUptGHjPSvPpP9/UrZI9pKoVpxTU8dlSbsZMuTsedHsJiZdp227TorTrJMKue2HG+a
         IaYD+PK4gpSYbZessvN+wJqj13II5cHErfGHdr5UWEmSFB1nMLhNAH0GShXIBUfRRw37
         bEPiFMNMN3bWFuC3XvoBsStOa2afg7ljV0hXQrDCunclkj6/iKIdl3BB2tAWGACLuRVY
         0luQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yu3O0jeo;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y2VGfJR46FDtHPEXa9/H/mH8weeJnO9/Jzo8I+H3UbE=;
        b=EuzXt+n6Ksc3uCWv6QPVnhMnB1ZJNjCzFOZ1z2mb3u9WaTSHyvrOoxjkVtnK+7txoE
         SdwvM0mMiq7tqHtWZv+xxgFQY2xVB3hcJV4lrs4GU6rJxA0j81w+APXBA1JYYCf91a9r
         ffD4KxLep/WwgVPefe8lP6L0LO9ff82IY4Wiu5Zw4GtRqwWrJYd+rrZhLVSHw13ug3TK
         vou/wPbMW98CQif5FLXvCtmnGgpR7zr0tNehigFPJNaXmx9alLgEQTecX7dbt4d2SP0w
         jFoIQ03/JOM2R9c5jrVvUDRIdG+hz0Wk3kZ4teLI9q4QtG2F74IJDRifCeRmz7U4UI7/
         yJUA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y2VGfJR46FDtHPEXa9/H/mH8weeJnO9/Jzo8I+H3UbE=;
        b=rJV/cGbrFUSEQlGbhLb8CGzmdokJQtS/1OlRwmWHdJ/ZpijYAxg1YHnbdbyvtH2sOH
         GsfBoohGaUC+4ruUonVIng7FCt+3BxU0x9vWpREOt1tJXCJ8zA6aCONl+G05Oe0O6jIy
         Noalvy9DaGEaquP1n+1EEGAkySp+7DBxMCoJ29mIwycTeH7bsrSMTyfZZ9eXjahccFM4
         IhgzKxiH4pluGJOMdWf+Z/ML//vmJOwfiFNvC/fO7/MnbWd9115iP7ydP7XpQW1i0AAA
         kiVIUR85Twt5CmLHlmXr1115WSYY0DVoekRxqlWIBCWrz9mm8hFymq8FA/eJ4l2vOOtt
         bqNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y2VGfJR46FDtHPEXa9/H/mH8weeJnO9/Jzo8I+H3UbE=;
        b=jwO9b+K6AB5DPGV54APHQBqQwMVf0W3VAqk6k/V5WVRY+BQWao69aiv2R5X0z9uI9h
         bEWKfNnwnJbsg3+1aPOQmk3/wSwAK05v9H0serd7lpR4YTBzw3rrbToQ9RQor/OfFlp3
         a3+1XTr2W4FRXoFbcnS2Ce/QHgIP3EwczD96jz1kegIedBBqmE/mcGTyHsulLKXUDVI2
         TsDxLPqV0fLZ4KAGVTer5Fz3Q5m4D1NvB8s8c38RSM549b6ox/adRUpXAU4aFLLTh7qB
         6PIFWr7eqCvPOyO6k65QQTcGMQGbvBDImFtyncrmvst9HmD4W0vEwAlN+DNNeGXn4vyB
         hTqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW2yhNdpd8EavdsgAma92kxHKOnoYDpD9riV3TUKxTSTN3Msu93
	B3/UfC9N3QSqNXRTpCpbaGM=
X-Google-Smtp-Source: APXvYqx+U+10RmACMyjCP5LS+vR+p3CQepL6if26+9p9GDgkoaP6nnfRKnm2l8xe5R2x9AXAUrqWMw==
X-Received: by 2002:a17:902:d204:: with SMTP id t4mr5156622ply.167.1576092189557;
        Wed, 11 Dec 2019 11:23:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c8c:: with SMTP id t12ls740745plo.9.gmail; Wed, 11
 Dec 2019 11:23:09 -0800 (PST)
X-Received: by 2002:a17:902:bc45:: with SMTP id t5mr4966607plz.163.1576092189103;
        Wed, 11 Dec 2019 11:23:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576092189; cv=none;
        d=google.com; s=arc-20160816;
        b=er5cp4DCA6dJTPX/yUS5hMNxpxRGl5FY/o/h/+EBodqoJmGKiu1brBs89IKnT+Tw4E
         bItQm+NYXGHZNXAYwP0Wqi9nWHbAz0Cu3aGVUdw9Dpu4P9G/FcVM4v8pLKBXHBZDnR6x
         fbrcKDrWe5QFlM2YyHGyAPVsm7bfaJjJsDbi0Ab/LV8ALejZoHpVIbE7epLFlxdgp/no
         +Q3IBF1QYBwi61IH1ntkaPuhjrB8BxZ4aGBqKecBGBkva7ofOqzPgJ2VcBPvX4XhYVou
         izx8LTc51YY0mgbPmI647B01r921NObbdgnFFY7An1uZacOm1IbVGrxlB3H7F9HMvDqy
         oJ7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=bCTr7fmrdCM12DG9npwXco6rWsJDAoPjlBHUqV/P72g=;
        b=l2lD5IfWpX/Fm0tIbJEdIbfPqKk3qI8yTInizdL3j8viq33o298N6SBKSO2o98135v
         sC/+XJeobv2lr55FqzEqrG6JbAaksQlWTYgtow+uPjmBtB2CRPtzQjnttrxVtSCm5ktg
         eBgAWrhopbwtOoKiNtAVs4jSGLxL/NJ8oEeAcRJQLtLPD5bw1XnOy0Ccq2QAkNzDeFGG
         JBVW2BFXK22HVPnIpYUALk/IfYgbJNkca6F7OaoFwt/E1cLswhnU2VngIrlsMTcOuWrj
         GlK3Gn4b8I03MyuJpC0OqGio/FIabNdzjeSmbKM/pDuaiuwM8lVViJw+P1PsS2If9URK
         DA3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yu3O0jeo;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id h18si137460pju.1.2019.12.11.11.23.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2019 11:23:09 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id a124so14247963oii.13
        for <clang-built-linux@googlegroups.com>; Wed, 11 Dec 2019 11:23:09 -0800 (PST)
X-Received: by 2002:a54:4407:: with SMTP id k7mr4200950oiw.56.1576092188199;
        Wed, 11 Dec 2019 11:23:08 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id a74sm1112930oii.37.2019.12.11.11.23.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2019 11:23:07 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kalle Valo <kvalo@codeaurora.org>
Cc: ath11k@lists.infradead.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] ath11k: Remove unnecessary enum scan_priority
Date: Wed, 11 Dec 2019 12:22:52 -0700
Message-Id: <20191211192252.35024-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Yu3O0jeo;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

drivers/net/wireless/ath/ath11k/wmi.c:1827:23: warning: implicit
conversion from enumeration type 'enum wmi_scan_priority' to different
enumeration type 'enum scan_priority' [-Wenum-conversion]
        arg->scan_priority = WMI_SCAN_PRIORITY_LOW;
                           ~ ^~~~~~~~~~~~~~~~~~~~~
1 warning generated.

wmi_scan_priority and scan_priority have the same values but the wmi one
has WMI prefixed to the names. Since that enum is already being used,
get rid of scan_priority and switch its one use to wmi_scan_priority to
fix this warning.

Fixes: d5c65159f289 ("ath11k: driver for Qualcomm IEEE 802.11ax devices")
Link: https://github.com/ClangBuiltLinux/linux/issues/808
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/wireless/ath/ath11k/wmi.h | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/net/wireless/ath/ath11k/wmi.h b/drivers/net/wireless/ath/ath11k/wmi.h
index 4a518d406bc5..756101656391 100644
--- a/drivers/net/wireless/ath/ath11k/wmi.h
+++ b/drivers/net/wireless/ath/ath11k/wmi.h
@@ -2896,15 +2896,6 @@ struct wmi_bcn_offload_ctrl_cmd {
 	u32 bcn_ctrl_op;
 } __packed;
 
-enum scan_priority {
-	SCAN_PRIORITY_VERY_LOW,
-	SCAN_PRIORITY_LOW,
-	SCAN_PRIORITY_MEDIUM,
-	SCAN_PRIORITY_HIGH,
-	SCAN_PRIORITY_VERY_HIGH,
-	SCAN_PRIORITY_COUNT,
-};
-
 enum scan_dwelltime_adaptive_mode {
 	SCAN_DWELL_MODE_DEFAULT = 0,
 	SCAN_DWELL_MODE_CONSERVATIVE = 1,
@@ -3056,7 +3047,7 @@ struct scan_req_params {
 	u32 scan_req_id;
 	u32 vdev_id;
 	u32 pdev_id;
-	enum scan_priority scan_priority;
+	enum wmi_scan_priority scan_priority;
 	union {
 		struct {
 			u32 scan_ev_started:1,
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191211192252.35024-1-natechancellor%40gmail.com.
