Return-Path: <clang-built-linux+bncBAABBNM5VKCAMGQEL53LSAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 979D436E904
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 12:47:18 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id h25-20020a4ad7590000b02901f9df380742sf460681oot.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 03:47:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619693237; cv=pass;
        d=google.com; s=arc-20160816;
        b=R+SPJAe4t0zbiXUAiI42Aq/0Zx9H5aFtehknUlgWVRHhQ12b5j2EGLqdbugQ8b7O0t
         1qtsIWufIbJvKXc/0oJhMbO8K4TPTfNlmGFUJ1RXDQAfhzHA+5k0d2e96qJzQNn8/MZa
         b4B7o533duzxbrFwzjiH4QTkLfvJKceqemjI8jSXAYMP/xl3li5ri642uMF0bYV35b2U
         d5bCfty12+Dws51L+UGxtz7h9mg+q2LTjvGQbbiqS9CGDbVyrHx0w5YOlcupGfNMMw98
         zmyesruCH/pwamxK6Dt9HbFLuAYMmgHF9ZBALY58zFe1knZmjl6R0sNJNGwEKIr3wQSO
         +xIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=h/yDiaCZJzdT3APCFDzuCi+8KSSVL/qvJ6ImLyIy/2Y=;
        b=MR1mFd/4HH2NfoXWiaIt083UMFWEcThRxtgb5deQ5YAECFgLbpon+3725NJxKSZd1P
         WgZS3SwzBFUVV/Mnb+QA88LE9f0+MkDpDoyc1SHVM4CaI8ZJKtHxfe/yHEsEswBXEXtE
         oznoX/1WXEds+K0KCXXs+Hj51YDrnDhMgSfsNPvwzqxLaAYVrGcHLrZw+zV1YVcCbhzE
         O2KlxfQXqBC0fd+Q5As/jo1Y7mwCdK+35cQtbTGYLDMWvHtdGt8f+cMvgfoRJ467ETOo
         zKXkpd8lmEd0BY+wkoeEPWgubrOoSuZjjaDgSQfB3TTZRcdYdShByKCluPWCxrP8qPAW
         SkWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.45 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h/yDiaCZJzdT3APCFDzuCi+8KSSVL/qvJ6ImLyIy/2Y=;
        b=ckB7v25p707L6YdaezwZIiyPxvYCarNpJwPNChCFxEaYiSUpGJnq2EDh28sXtTjHCy
         TVkvkWm5Pj/i3NpRuGr6sGF0Ee7gv5Tw7zuXNt/GeLq+QuNauT1tWR+cCNXVqPkGMwx8
         Eb/6Np3Z1yMXzNkeqq3oiI7jZon6EzfE7eYd0t/1NXN+Y2c3CGJvBYBYD4FYtTcfZwTL
         /DGap0lvjiRGQGNbtwVhzSeivkcC0emUM5yjLF+UxDXF8Q/kDJGE1u2YrtheLmvtEuNA
         5ckm0DlVatUo7g0LdWdGU4mva+lhiWGam3PPwbdiHcKsue6pRHdfdxohUFztN88ZHw2O
         sInQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h/yDiaCZJzdT3APCFDzuCi+8KSSVL/qvJ6ImLyIy/2Y=;
        b=UpWtSShIMxyhKP5YSVVNuwybqVirA4aqgq9OfmzNG8n4hl5vuQc1qoxxU9fbNrQThT
         09/0sWckX51YnSBRYUHhH3xB6QANyWY9gSJT8UXYPPkWN2KbxL3TIQwfpGYGy4tShlzG
         LDCRtobpO5Cwo31Wuw/c0eKQ9/D0CUkd0xUpw03HVfLJvOJkeBm1u6720FpD/THyTLaD
         1V/huZia3oBnVNLoCCMoqTuQ3VmMubYk0FO78DeaIISka0lMy/DuXQ9waOapeC8IRuM5
         1LC+hUKZIgpHOqWgPd+igrxRKKwyDsfZ9ezqHoX/uHDG5AwLToa6GJRyggqRxs4HlwKP
         AxDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533IZeRB3VV0r31reCV2+YnjSsB0zZCfk1xqk4q4v85nWGu52rFe
	lYqL5lSNsm6Dj6UIP2Gj77c=
X-Google-Smtp-Source: ABdhPJzET302v6e7htFCxtA9gy0Bar13rNaSADL+x5kFCYWLR99j/7NvU/JsmZCr+jd4E9n40V8t8A==
X-Received: by 2002:a9d:6e1a:: with SMTP id e26mr20594675otr.83.1619693237338;
        Thu, 29 Apr 2021 03:47:17 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6154:: with SMTP id c20ls719220otk.1.gmail; Thu, 29 Apr
 2021 03:47:17 -0700 (PDT)
X-Received: by 2002:a05:6830:2336:: with SMTP id q22mr28095399otg.346.1619693236964;
        Thu, 29 Apr 2021 03:47:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619693236; cv=none;
        d=google.com; s=arc-20160816;
        b=Yul/wc9xVruptaAMeMSttuD56KZBj+hatiw+fTCi/enmAzlCTCX8875ydue1vaflV1
         SkoolgMIrQ6YxsT32tGA+hXNJ1wk9fHpnySQOtyYJC4RvphRZDzDz9b72myYiyefYlxL
         q/eA6FmfssoyoLkc4+mpuqUIU6giZuj//hjUQG8/MAMpASqz/dCCLrxgssnNDwtGlMLm
         ti9CXYjAMg5KvaeCoXQ34EoZoEXUaadWXslwXPpN9iHr6iqvktQ1vmKBJ7i/Ga69KeTg
         6QfANx8QhfecUg8WntxI1dSP9+iY3/+Itgl2P7jEvEWNibYv0z240wVXlpWvWC0dxTAB
         enQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=J98h6wFK9yJjEOff/xR0f1R9fdNykPmrmw813km3JzU=;
        b=rzUOiIwztC3ftq3Mz40nWs76nnAEB3cYup7GLUQfy5TBa1H0CKQyhNAq8Fl9RiZ3Si
         YB141XaSFsRK3mEQncrQ2y7WoLj5j571azHCP/mWrrbwI5H/ZbLNX7RxLrzbu0CJP9e9
         X3NlpcxuGgGDu9mE91qCO9P0Fjz8bUKe4wsamKmg37zj7TANU0Q8cbKEyVGT0AXfkBWz
         JQpKP/IlZyaBBNViLlhI3WKh2+4Pr8sIjFWFbKMDDD9rfY+fVxxJ+ORhxwl+vYOjDdXa
         7r34sZEJk0uUkMN4nnF5d5aZpWY3JPjcmUem4CSaQOsWIkZbRD+7Qqlfnr1piynwvy44
         nrOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.45 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-45.freemail.mail.aliyun.com (out30-45.freemail.mail.aliyun.com. [115.124.30.45])
        by gmr-mx.google.com with ESMTPS id w4si142695oiv.4.2021.04.29.03.47.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 03:47:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.45 as permitted sender) client-ip=115.124.30.45;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R131e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04423;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=7;SR=0;TI=SMTPD_---0UX9hZFR_1619693232;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UX9hZFR_1619693232)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 29 Apr 2021 18:47:13 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: m@bues.ch
Cc: nathan@kernel.org,
	ndesaulniers@google.com,
	linux-wireless@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] ssb: Remove redundant assignment to err
Date: Thu, 29 Apr 2021 18:47:10 +0800
Message-Id: <1619693230-108804-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.45 as
 permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Variable 'err' is set to zero but this value is never read as it is
overwritten with a new value later on, hence it is a redundant
assignment and can be removed.

Clean up the following clang-analyzer warning:

drivers/ssb/main.c:1306:3: warning: Value stored to 'err' is never read
[clang-analyzer-deadcode.DeadStores]
drivers/ssb/main.c:1312:3: warning: Value stored to 'err' is never read
[clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/ssb/main.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/ssb/main.c b/drivers/ssb/main.c
index 0a26984..ab23554 100644
--- a/drivers/ssb/main.c
+++ b/drivers/ssb/main.c
@@ -1303,13 +1303,11 @@ static int __init ssb_modinit(void)
 	if (err) {
 		pr_err("Broadcom 43xx PCI-SSB-bridge initialization failed\n");
 		/* don't fail SSB init because of this */
-		err = 0;
 	}
 	err = ssb_host_pcmcia_init();
 	if (err) {
 		pr_err("PCMCIA host initialization failed\n");
 		/* don't fail SSB init because of this */
-		err = 0;
 	}
 	err = ssb_gige_init();
 	if (err) {
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1619693230-108804-1-git-send-email-yang.lee%40linux.alibaba.com.
