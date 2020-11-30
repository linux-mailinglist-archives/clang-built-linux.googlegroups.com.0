Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBWGUSP7AKGQEKDVIDCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id D427D2C844F
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 13:49:28 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id x16sf3738679wrm.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 04:49:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606740568; cv=pass;
        d=google.com; s=arc-20160816;
        b=JxOCDAgiaR4v5g9Jy1q5GhsvceuSYF7fo3Sdjo5cX6Vkf5qptZtu7llUXoNvn646Gq
         t7KWY/fTLJNeAQk4rDTZUhoPdLKuCQztnZrRgEvYncMWi4LA1iPLBMS2n1vCyvvuUnlJ
         QtQnYxCilnY3jhfm+iP3MyJpiZP2jlmDPTDy6R9fVU6xbMC9i1vjnK1XYvjsAlQQxT3G
         G/BghWqGERNfISKXJhFXIjIZB8/ekEENEbIY0oLEBq88O9SFy7pc5crc8v2d4oMc+GyV
         NPP9DPfmdlYZsYGehlp4svfDumrTJ1JQTNJa7yJp9JDGiUxxUDSzRGTwMbEwMJQnktQM
         1KRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=p7sZuGujqcCYcMPjHrLipoRzfHE+q293hPVRYrHrTmU=;
        b=jgjW6aHeIxSN95rdDxzdLtVLoU85Qn2n+zJ78S+fN9eEB+alRijI/wVlJCd1OIjBGQ
         3xas0lMlcHU9hFweuyjWJixTAiCQRhuDcIqWoQorwkeU56XEkF9RcDGekEiXQKg2b5bJ
         VQWAmpGe03gCDRrP4OCbuFcjMRfmhpWpp+XsCBX+8C2ZTfVVTWBA0itd5ctC7YNCo1Tc
         JVLxa4ujrQw2Exyqux2v72H8unj9xfOOPW0QFMinnKFagzx4UU5mnUnLkjBkZumINNjQ
         eeFIGk3puMLtoxeyJgUfXrMxBnBHM6wMC/G37Bn/g684Bn1B/+14BEpb0Eae7cJF5yJ3
         I7oQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O9JXaJ1j;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p7sZuGujqcCYcMPjHrLipoRzfHE+q293hPVRYrHrTmU=;
        b=CrL++KpSxi4wicHUjg98NPbs9wDfHQzyXYUl80ZwHbK3R5mFKybEK6qtMHixpyIXyA
         4r7Rf8ENkSa8dpQUXLHU00ikNPxCLxdbMRVsFExxAnz4vMiqyAIRJJdpWAmFZdx30/dQ
         wXjBxAJb3IGEFLRoOfspQoPfF5cAu1VSQw9NwGj7pyr2pe6G9TZdrZjNq4zcNNzMcHT4
         C6VLw2iSAJtZ8up5v47uYv1NEN/f6PBm/rhBfyxRA8xumrN5Lejc45fEnZ0od6nd0VjY
         EX7aKYluXnkYEfQrwLBW77WBfbsW+ZP/cVBWtmCcY00WHcwFa8wacjY9yqFvopmZQZH/
         npZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p7sZuGujqcCYcMPjHrLipoRzfHE+q293hPVRYrHrTmU=;
        b=EC7hIHnR9PgDvrGTb+NfwfptVAI4VyLipdwWh7E6/Az2WjTQaPe+7ybPlg2R00BZbG
         XlDupuh67kMHo3YKKYe+szQb4e8eFv46JKT+TKiLosh2lOA0NHG9fLiiR4RpdeVez9d6
         THrt/EuBmNQWssMnmB+HksAVVPTdupHlLiAfqqgSCPfNI8yoq4XMKA/vjS2EbX9OuXu8
         fVyOu1R6QzKBfPrARiRpX5hZnNTLBig3svV4esFOsFkndX1mIL5jTRaTFGtJp/93tc4P
         RkAm0s0DEhMvnjSlGhshWwxgs0YypookXrvvYE525ebWcNBdtsbV60RioHJjuvsfaAHp
         2Lyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p7sZuGujqcCYcMPjHrLipoRzfHE+q293hPVRYrHrTmU=;
        b=GJdbfLBZmJILr8uVuHnigWfEKmzDkNYyr144tbb6I6FlPwY7IbHxVDufvC5couXWc8
         jv1uUwZ1/INY+A4Vfs3gPlyNtNf8UGFKJB7dOx9KtcXf/Y5QvkQirglaUuujIIAQY+H+
         VAiDXwVJvm+JLEx7z1CTqtG+dQLNzJci5n1ZQMC05e6cTUe915a9MBmCQWtuFKLylphy
         OIpbyIG9JyceYxz1b6lmXbW094Vq013Z8xqm7SQMW78sy1fzl6ejc9tXrLJ6XQyjEDfp
         Ia9hZ94jVhifNScHGpc3tajwjKYhPDS4Aq58XvoslF+ZsRyEZHr2c33KbCFHEBv9fFP9
         uIZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dLA9rGezTAgcwbtbF+Ik6RX1hbDABGiY0Kp67v6v2q1Jzj1cJ
	3Lbe9Yz8962fIxnx+DnfMQo=
X-Google-Smtp-Source: ABdhPJxK3aPPBpEFgcdTHMvbcXZ6XJB/xSZanEm2v+WX4d0r21pN6H9eriCUPUxqaiC8EkxL7Tx29A==
X-Received: by 2002:a1c:7d94:: with SMTP id y142mr19170311wmc.105.1606740568627;
        Mon, 30 Nov 2020 04:49:28 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:990e:: with SMTP id b14ls2698287wme.1.canary-gmail; Mon,
 30 Nov 2020 04:49:27 -0800 (PST)
X-Received: by 2002:a1c:bb07:: with SMTP id l7mr10438748wmf.9.1606740567769;
        Mon, 30 Nov 2020 04:49:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606740567; cv=none;
        d=google.com; s=arc-20160816;
        b=wB4jFScgZB0XrHZXG1odNR8eqgaX1iJ2aS1cKdiRFmRdXzNRh3CgQuObRYpT8idjCx
         wfNi+zTy14s3M+5SZiyZKpFlUOLtyBQR1dwmrmmFhednptOmyDsSt/DpJQCo0/yWJly2
         V+GQ2/ZlM9rIGC5oQDqIVop7Seuabu84ErGhZD57n5Welb0VgNFWRCvRo4Q+dB4rUGfo
         Imo8RJ4Zms7v5iLSpx8YRgSXaMyteN+sGg/TUfAnvR2rZ02neyLLZ2iFj26nl1aJhCtE
         HJAqfSf/2brJZsE72RavO3DwinALwViToVFVYot7fRrEBStNEb+PojnQA0y/ZsycHJjJ
         7WPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=XgjnfGL7fhRwAvNQvTlzfgUXxKtKFm+93Zmvk2qerpQ=;
        b=Dwq57UtfixFe7YfDC++8t/i4vk/trJopNd9tFTatcFJ2gMkihf8OFyKhx7K6+S+5Wp
         7bJ3+b4NyfTWekPINBx6WPS/JKKN4KnamhdMfQZQ9xm3h6OzxogfhNo+TxnO4bhn+xPg
         /TZxdlIUWEtaCg/wc88crrHEnEADetdovpaJucB8BgoYo3/eECBRpuvlNYPARmvw7BRh
         5wGS9q0mApcSKLZ8meyogNiyARumANls/C7vT/fQhgRZH6U4kZQO62vtgS3VUgYVDSXJ
         rgPn8VACaCceCIcbW8FRa/TVi8tH3qJNijC+wGSy/xztWQ7RRMcn/3qTaO32EXspuUD8
         ybpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O9JXaJ1j;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 10si76337wml.0.2020.11.30.04.49.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 04:49:27 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id r3so16063172wrt.2
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 04:49:27 -0800 (PST)
X-Received: by 2002:a5d:4703:: with SMTP id y3mr27218012wrq.416.1606740567358;
        Mon, 30 Nov 2020 04:49:27 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2d4c:d300:8813:e95a:c6db:aa09])
        by smtp.gmail.com with ESMTPSA id n4sm24474781wmc.30.2020.11.30.04.49.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Nov 2020 04:49:26 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Petr Mladek <pmladek@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	John Ogness <john.ogness@linutronix.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] printk: remove obsolete dead assignment
Date: Mon, 30 Nov 2020 13:49:15 +0100
Message-Id: <20201130124915.7573-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=O9JXaJ1j;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::441
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

Commit 849f3127bb46 ("switch /dev/kmsg to ->write_iter()") refactored
devkmsg_write() and left over a dead assignment on the variable 'len'.

Hence, make clang-analyzer warns:

  kernel/printk/printk.c:744:4: warning: Value stored to 'len' is never read
    [clang-analyzer-deadcode.DeadStores]
                          len -= endp - line;
                          ^

Simply remove this obsolete dead assignment here.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201130

Petr, please pick this minor non-urgent clean-up patch.

 kernel/printk/printk.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index f279d4fbd9dd..6e4e38b7cd91 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -741,7 +741,6 @@ static ssize_t devkmsg_write(struct kiocb *iocb, struct iov_iter *from)
 			if (LOG_FACILITY(u) != 0)
 				facility = LOG_FACILITY(u);
 			endp++;
-			len -= endp - line;
 			line = endp;
 		}
 	}
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201130124915.7573-1-lukas.bulwahn%40gmail.com.
