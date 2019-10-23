Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDWGX3WQKGQENA7GHXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 8018EE0F4C
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 02:47:12 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id r13sf3279254pls.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 17:47:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571791630; cv=pass;
        d=google.com; s=arc-20160816;
        b=OcT3GaC70kz2+HIxpKFX74dpg22WSn0Q4iUy7pAZOPbhbo+1Ft+I/3dDOhqZbZXtKp
         FKYrdoZDqhnHmMtLJspv9VuTw4gA2AuT01oEDz8IBWpSmCd9mk7ltRJklEOA6mWR7aUg
         sh5CKXBMvcksHEfcKXcVQnukSGvAzwEFxUU4Jlty6QXKHgObUCTchqAVmrUg4rqVPec2
         AjB8ubnWfisM/ojTZMeFMkbMp5F3sHKIXMnTyezxiLBwYrJAGgorJ+oPJQFpR3j73Kx9
         euce2DFkBektDSw2o7H9N8X56ZUbNcxHAYvZZP4AgLm7OdGpGqbdrWPdJM2vx3cYtkAA
         lGtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=bXo7g5ddwyHzgF8wRRccZmXSQNsdxVp+KJ0Y4iSuPMw=;
        b=skWQ3pWcpB29znawR/vQAM+5lH3o7hZ9BpBlGKlOsCMtxuIx7VuIdxV7adKQdBubqS
         te21uUXpZR1UlzPmctSbbe9hCxebtjXvPzvDDqwxxMl92OVl6cE2I6qXplfDpvR1qh8G
         JChWD/9SHshtdBy7o5W20xbtj9BSbW6kJVWvL1uc+BZayfDVuKi4rxKebnen4Kq0DyhI
         6OOFG0EZEiDIim9MbhDpVdFkUzZcymi60v7NudcEh7bL7NF5UK/FteuawxFUFLPTtZjG
         NwIOcmxFWRL65R6x9z0xnqktxDzu9PQykrvZ8LytQ7I5dEldZwHHDtTfeczUTRjm/jvi
         A2fA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QSFeIgSm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bXo7g5ddwyHzgF8wRRccZmXSQNsdxVp+KJ0Y4iSuPMw=;
        b=jI7ugouFfWXGfZUsOFUP1DZQ8FMOl//jyCFBdI54KXfKAQxLpdZx74V2y4LNG4S59u
         cjaBCGGKmV5IOy/3Sq+SZwUoC9EjIkLtIr1eNdq5wJuJ8FplwtSV656w+TkI+2MUSGie
         3tm0Zj+EfubIw1v35hF6PSoXFd5FLeRa+VoWTIwGS+sOcAxLcEQea7qInVnZU3g9iUU4
         t8Jn+KizwQJDldsNBGq7jSx+jp5748oN3hXg+PzqZsrWh1MaVslEI2KQliCRdEBCMP6U
         2+Z3LJGqeMWJ0L/MhC4NIjYUiVblaf7YfQ5Jw9UTHWNnwqEUjZdJMRJZPy3B7Zs11rfS
         c7/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bXo7g5ddwyHzgF8wRRccZmXSQNsdxVp+KJ0Y4iSuPMw=;
        b=Girqjuj+9eO+R8iJ2/jv1A3ayBpLclX9hpuYU0Rqrm+USd96scCpLSpbz9oeZNHKVK
         fi7d0CQmgfpD0msOLpPwQA0hRlY4Lc1FllnLgCPrE5283N3N0HE3Tc9t7K/U4tWApH+g
         QFvaRPh4i7z3Nwx8DeHpnoI+6ATEqb6fITux2dKskA5m54i1Vrdhsx9XFjxiZs/U6Rm3
         MVrHpAcsuAPt3ZkwkoFZsZUA4HINSUfB9u3FQlrIOhspGRtZ2ThX3s5vE2yej8XDva3v
         E1cr2tzt8hFTQJ1GoJUPkCwLzc92uBDJvTTKt592U9b9yIXKcXmaXTOrlziD7NwIIb8k
         mZGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bXo7g5ddwyHzgF8wRRccZmXSQNsdxVp+KJ0Y4iSuPMw=;
        b=RqXJjGMRk0MwVHK0jB7V6O/p8ECGRtAz1Za2WPaopgmzwGRsxy0bJLSY9FnuRUQAOv
         KMt/f+62C17+JH0XIueD8/B7mj9NG8bMhVP8EHMSi1iAnv1cGlgXIAyZufjp9uA6O1YB
         3wEf64thvd4Tf2VKRBJEpcdUE1gRgcj46putxVGrWYYbF8ehEw6TQOGnomaS2EcPj8ez
         XmZtv4QiOARX2yr0208PQZm6tjZth0B0Zo3rwMqxwPDiy5fCY5/CrCR+s6gQm2PMMDDV
         r+zM9TKMxdlkEnGn5zC+SgMI08wlb9V4Q5B4gOBFaJ2cuv7WbCD2vQUob3K+qcvThW8V
         yNJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXhTqjPA2NC6mXhfE7KulSWk3CvYq3ETYsGpo08Q1RO7IP+xnH1
	DLVmM/POF3w3DWwDXR/adEA=
X-Google-Smtp-Source: APXvYqw9Cd+kPkE/UkN67Ipmyk+hJssejGMtmFEhA7Kc7fXl1S1Y/ARNFKMdxEHn4Mq4DJrEkPFS4Q==
X-Received: by 2002:a63:9dc2:: with SMTP id i185mr6832399pgd.294.1571791630380;
        Tue, 22 Oct 2019 17:47:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6204:: with SMTP id w4ls183449pfb.6.gmail; Tue, 22 Oct
 2019 17:47:09 -0700 (PDT)
X-Received: by 2002:a62:1646:: with SMTP id 67mr7653901pfw.183.1571791629879;
        Tue, 22 Oct 2019 17:47:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571791629; cv=none;
        d=google.com; s=arc-20160816;
        b=rogYbAgRcHD3XNjXCg00vCJYJzW+Ay1jVx5P7SQtOdq1bLWyuiYcPhV55/bczJP2LS
         xjShrH0905EQ8v8aiv9mjWXl883uhXWh4o2b1xJpUqaqTgkxClgr+y+EKPoRA3QpWQ/X
         6j5dy74GmRM3sJ+zO4y2hr6ZIKWwtCWal2+K8ejzZYGcaWziVoWnjWmQDNSjnfeVCvIj
         YjQpIT6EpVuLCglTzTsePwZwznC+FUpOtodGUZVAT6iY8pArFxZym2q+W5pWTEhDCpJ9
         25JzLQ/c+yIwg5p4kCfq785n3EkS3Lf2eb4l4QsiNeZ2eW4Zi/sNl1RNkgwHCQjda55L
         tOzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=UodMGGQreKI/Daksnr6iCH8mqoXWy+dXHEHaIgh6+g8=;
        b=bf6ryYWSQKxBMXp5Z6sII8AwPijs7mZpE/6MKCcMmlqWIk72ZvLE2YU+HWf70n4Py8
         YB330krVrBFfY4TshU8bN1IueoXOK3TE3EmPodr8NsZPRtiIrR8BtqUr5rM7xnYuyuvJ
         zmR+3vIfr9iumYV5FNzFIGNqwFBsJRtW/DTVkfI7LLX9OshH67kzM1LiRToNwsi08Q3o
         S66O6PooddXlEY2DZpjBrgEl6zJoCotMSDHipfThIA7UdYCLl506CXwU2B2Hdf6z7Ihm
         hEemOJvMiguV7WN1HNkmk6qVsJI1Nps1yNa7m54zI4kZhfmBabGFr/AlpwSnZ/x+BYLc
         Intg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QSFeIgSm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id b64si1034324pfg.0.2019.10.22.17.47.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 17:47:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id i16so15883301oie.4
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 17:47:09 -0700 (PDT)
X-Received: by 2002:aca:d508:: with SMTP id m8mr5161231oig.144.1571791629071;
        Tue, 22 Oct 2019 17:47:09 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id j3sm5274476oih.52.2019.10.22.17.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2019 17:47:08 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ping-Ke Shih <pkshih@realtek.com>,
	Kalle Valo <kvalo@codeaurora.org>
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] rtlwifi: Remove unnecessary NULL check in rtl_regd_init
Date: Tue, 22 Oct 2019 17:47:03 -0700
Message-Id: <20191023004703.39710-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QSFeIgSm;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building with Clang + -Wtautological-pointer-compare:

drivers/net/wireless/realtek/rtlwifi/regd.c:389:33: warning: comparison
of address of 'rtlpriv->regd' equal to a null pointer is always false
[-Wtautological-pointer-compare]
        if (wiphy == NULL || &rtlpriv->regd == NULL)
                              ~~~~~~~~~^~~~    ~~~~
1 warning generated.

The address of an array member is never NULL unless it is the first
struct member so remove the unnecessary check. This was addressed in
the staging version of the driver in commit f986978b32b3 ("Staging:
rtlwifi: remove unnecessary NULL check").

While we are here, fix the following checkpatch warning:

CHECK: Comparison to NULL could be written "!wiphy"
35: FILE: drivers/net/wireless/realtek/rtlwifi/regd.c:389:
+       if (wiphy == NULL)

Fixes: 0c8173385e54 ("rtl8192ce: Add new driver")
Link:https://github.com/ClangBuiltLinux/linux/issues/750
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/wireless/realtek/rtlwifi/regd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/realtek/rtlwifi/regd.c b/drivers/net/wireless/realtek/rtlwifi/regd.c
index c10432cd703e..8be31e0ad878 100644
--- a/drivers/net/wireless/realtek/rtlwifi/regd.c
+++ b/drivers/net/wireless/realtek/rtlwifi/regd.c
@@ -386,7 +386,7 @@ int rtl_regd_init(struct ieee80211_hw *hw,
 	struct wiphy *wiphy = hw->wiphy;
 	struct country_code_to_enum_rd *country = NULL;
 
-	if (wiphy == NULL || &rtlpriv->regd == NULL)
+	if (!wiphy)
 		return -EINVAL;
 
 	/* init country_code from efuse channel plan */
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023004703.39710-1-natechancellor%40gmail.com.
