Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBK4F43XQKGQEZ5PGJMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D42123C79
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 02:36:44 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id x127sf355904qkb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 17:36:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576633004; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oao9nfHoa9eX7G/6hFYp7LLNpKegiziWoNSIW7cn5UR/ySQLB/0Um10V7g1NRPp6KQ
         U2n/70VkrJ3nba9A4IqiFtbh7YidhwSz8qeQ/mRvKEiMliMaD/jdqMZZVh4sEigmz2Ja
         kVOMQWjeTeqgR7auPNm141H9eJRBHRQpf6YvhjIqtikY+844fjtg6osb7MfC8KxgE8sQ
         EVPS4D9K4BAoxLGUhc2QHLWw0Jnk1bMBlsKP6V+butmiOmEfnwTiWm+vlgrb8BT/sGfi
         cNRBrmUII6ubJghQhNfeTep/2UzH4SVRdegxxc2OirPviXEjbTBYUq5e6pzjV8aDbuIe
         7E0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=tphR2yXaKcQcjrx0QfzieE5V+KBHM3LC4GbYh7X8VKw=;
        b=Qw8PGSr9DdrLa0cvXtBPogyNDJnDBzoJJXXo3EMGdHUCpCNuHXYyYoZJhCE1hSZl+w
         cQJFGB/8KZNwTuA2yqOD/bhryGMIyC/MTVCxROWmoFnypjc02fVj6+AveOjum35lvddT
         5y+rG96wD4Fcd5shLh57cOfzABVFH0CAJBVP7mNPDfQ2jYadAaCXOszFknFaqRIQigD/
         YFU0y4B6/BGnuDDmo/G/jzlKD+BemZec0ekkcuGrjon5IyOUUJJAbEPMYRWg9BEYshTr
         8GoxuwP6d2ucGfAdeL7LqWPLCNSV2E7gaOK7/n6YNysV4LBwSY795rSYZrTUJJWFYKiD
         cEUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o5sn19xY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tphR2yXaKcQcjrx0QfzieE5V+KBHM3LC4GbYh7X8VKw=;
        b=ad0h7TjBMVRhf216ylFTNS89rLtMYNIHw9rEnatl0SH+F5zYey3lR6jXEMMDk8GVmr
         lcSWQjnMvb+TX6i465YQS+3NlGuA3xrc8dlBREjxyCE+CLA+zOqjyNnoVQnBiYm+ReKE
         46bfVNmKkexFNsdZiF8K6lh0dEbGsktg+FC58S8ardf5uKHv0LbEkACm/1pILjzWPvSc
         bQL9cro0fRlWDCE+aZDkcffHQKPEtUBFjpJGrTbdm7YSzOkIDGVGj4nUcLWp/IzPA5be
         ZdqOTC1hRS3UX9nW26Li4xGgWUuvTzwqHvQJUD+bxyYjicTDXc6tqTjuUt8qDAkol+Gb
         sYqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tphR2yXaKcQcjrx0QfzieE5V+KBHM3LC4GbYh7X8VKw=;
        b=e7HoIOHGz4pYEi1Psm8vgJO/hZ3YuEmxXAUTWKxCjBDOGKArOmYFyzTJazwHXS8DKR
         0WAUDYnKHkuDhwv6VRhLaiDgKWW6ow7tRmqpclnn0zlAHzwzN/ADpkYCZ8YietUuTjai
         CHb1A4i13XGlCJaEwFeToHykceouwqxfryprr+WgQW4pCSaN8nqK9WgrElscE37nhWZ3
         BXUvTCOjPf+WPzks1MIRPuP7IcoMEWqx1TDxAHop0qBrhaFulZJSAhiJrzEECVqdP9Km
         QTdHaryIHREUqHjk1wkfZpeuCk7QkX2Qa5uMoCFm+czWknubzk0r2BnNzIErink6rO4N
         amNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tphR2yXaKcQcjrx0QfzieE5V+KBHM3LC4GbYh7X8VKw=;
        b=nihjXIDWF82bpkflgfLLUp2nYxf3zX26cIZiBLjxRZqgItJ0mQMSD3Vw+YFtLS1KI1
         o19j+opVv8plPpPPye1bD2+TI9MVm6unYOlbWBhmn0bZ8gj3iHSR9czeM12GIa01/tK8
         JTvxbHJjZB9OBJ6/nJYVTCeSqYAbvF1JXSxCU/CyD37cYPyd/eyoKDyPOn0/GB66jXcn
         Kti56Pp2KrwkButfCDzw0BMau1f1vzLXZ4YftNUmyZFRjmG2JaHKEMsSMzImb5TCcJ3I
         45rXXNI65hBes6fliNChcbqi0MIdeZ3fJhnnGSIZN5iQSYe+ttVjPRiLHHOco8uG2vFl
         LZag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUpGFQF/O1ibpEujtwyl+3WAiSb+uqdaxSFKXaI8moG2Mmrnfht
	4Lj42VzAQdPc5MyXaQBY8rk=
X-Google-Smtp-Source: APXvYqy+GQW+QFmL/ZiJcYH7FP6vkwBjYmR8f54vD/M7HLcztDY46EV6azkceRSzHq1V+GED3Wt+8Q==
X-Received: by 2002:a05:620a:13c4:: with SMTP id g4mr1125623qkl.305.1576633003801;
        Tue, 17 Dec 2019 17:36:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9f92:: with SMTP id i140ls251465qke.11.gmail; Tue, 17
 Dec 2019 17:36:43 -0800 (PST)
X-Received: by 2002:a05:620a:12c4:: with SMTP id e4mr1105966qkl.359.1576633003427;
        Tue, 17 Dec 2019 17:36:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576633003; cv=none;
        d=google.com; s=arc-20160816;
        b=RuRdq6QTmp5sqZiShmV/Fk08XxSumFDBJQTsISSzEL1QK1HqV+me9abiO47MR1lyYa
         DlkNevZpM0tPx/+c26wdB51wAaCQ9AqBEmB5pUhuH8ikbWWpkq0r670RGtC4iaH1FxUZ
         sPH61XDdKuh8UQoU6vv5Q/w/CYeXoVbdd0gcnFHx6hlwdNXsN4pfho8ElFz0kEdgZm54
         ncFvdfzQtc6PrRzEIceJKsJcuJAPZNm+J+H1yX/pe59Qx+He1e+3h5gqINNBaZTOqwlF
         9gi9Ixutkh8X0vR8a4YcwmUPYyYeprt5VQVgX9RQ6lOZf3nD/PF8lydap5vszNtMPwod
         1n1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=7We/VEpgPiMO8619gdnlWocsaTJDXOtjnUr1/nSx8fc=;
        b=HUMGkxuQmGx6qyXRV2eTo1PY8espv5s8GlpMUEETOgZD7dlGHbOlhyEksAALTPYp1U
         jkyoZ+trK7dWhc5uTxyxAulNRuU9ySgTz52zsmD06+aFsdECug7mW2MVdn2zyu5U5aEy
         xelfp9/XYWXtDsnwEKp/37St5ckZTRCVRuGFj3Kiyh2bY74h81764JHQPtOStelTQtfi
         4gph2nYJ7DGsO0iKnfD23XHdHkc+RnPGjUFHLKoebYEoDDrxSopMP05xnWG8vj4oTmue
         Nb9lPuCdDandKFRt0LNKDp4qIP8+7elkvuDy3HrYM3Jv6uBi8vw1QNaOSjBCp73QmB/R
         b/Xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o5sn19xY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id h17si28376qtm.0.2019.12.17.17.36.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 17:36:43 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id 6so262749oix.7
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 17:36:43 -0800 (PST)
X-Received: by 2002:aca:1c09:: with SMTP id c9mr60123oic.85.1576633002813;
        Tue, 17 Dec 2019 17:36:42 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 15sm253487oix.46.2019.12.17.17.36.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 17:36:42 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] phy: qualcomm: Adjust indentation in read_poll_timeout
Date: Tue, 17 Dec 2019 18:36:37 -0700
Message-Id: <20191218013637.29123-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=o5sn19xY;       spf=pass
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

Clang warns:

../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c:83:4: warning:
misleading indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
                 usleep_range(DELAY_INTERVAL_US, DELAY_INTERVAL_US + 50);
                 ^
../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c:80:3: note: previous
statement is here
                if (readl_relaxed(addr) & mask)
                ^
1 warning generated.

This warning occurs because there is a space after the tab on this line.
Remove it so that the indentation is consistent with the Linux kernel
coding style and clang no longer warns.

Fixes: 1de990d8a169 ("phy: qcom: Add driver for QCOM APQ8064 SATA PHY")
Link: https://github.com/ClangBuiltLinux/linux/issues/816
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-apq8064-sata.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
index 42bc5150dd92..febe0aef68d4 100644
--- a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
+++ b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
@@ -80,7 +80,7 @@ static int read_poll_timeout(void __iomem *addr, u32 mask)
 		if (readl_relaxed(addr) & mask)
 			return 0;
 
-		 usleep_range(DELAY_INTERVAL_US, DELAY_INTERVAL_US + 50);
+		usleep_range(DELAY_INTERVAL_US, DELAY_INTERVAL_US + 50);
 	} while (!time_after(jiffies, timeout));
 
 	return (readl_relaxed(addr) & mask) ? 0 : -ETIMEDOUT;
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218013637.29123-1-natechancellor%40gmail.com.
