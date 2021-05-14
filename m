Return-Path: <clang-built-linux+bncBAABB44E7KCAMGQEP53TVAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 09886380AED
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 16:00:20 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id f17-20020ac87f110000b02901e117339ea7sf5063244qtk.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 07:00:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621000819; cv=pass;
        d=google.com; s=arc-20160816;
        b=rAPY5ZBgg/1BMLCb7RpmMrMtE7uTW+fBB1Og+s5In40mSuQHS0bSp2MUqAVpYXjTbr
         T7PYIjTL3ZyXtxfpOFKksvav4JRB3sbQPfKCESFGeSo4wHa3VDN0p+oAwtr3LDXWjPC+
         wG1y2A8GL1wVm0lPNMquNVn3Q0cKUCjs/TJsApx1roKIK1iTtO15h9fMf3ZdIkxRAGJC
         o9aN4CHH030RxFz5HU03Y3NqUrrBbS4psV3j9IbFV5110rAg2ngF3Yxu/pwgYxyYroHc
         Qw0TbH6nTQuMjgogpk7CdgAyO5IWqYd+miV+AvjAzyONCbzR1c4mMHWE3UD+QGqTwpGw
         fTXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=wU1VWW8TvrqBaih5lARNnT8Un/0kDAvY8ky7PNNCwkw=;
        b=aHRqW3MFCDWUSAdgVpJ704CrtLg9rqwkhSwlY3vfOBpqYUAFATgwnvatnpH4GRkTu/
         ZJaRHcUoI5lkdrSnJ2yN3RE9sHAGThcf/ka8Wt151hHtZWcO1nqR3cf0n36abXIxrzH6
         rPJCFyWs2Cf+5fgXbn5S1mfeV/ei+wln9qcUQipCP2mEPOvFKacdB+ymevOYHWmxGBxl
         L08fuLqllYeKOVYwj3/mZ4U6oAeMg2fF4FwmMNTp1Ua15lUts3v6gtYZfPfH39kshwLZ
         HTiunG1XZXNkePfu6JUXimnrz+x1iJagU3a6OHQ/O4/b8eMpMgNHR8NsFrp0q1U8mtHs
         0tvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VsqUEHcD;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wU1VWW8TvrqBaih5lARNnT8Un/0kDAvY8ky7PNNCwkw=;
        b=IYlUlfHk1OssDGQHO7yaCm/4Cms0ahgA7wxBJMiMHSuOrsXGVG2Q42GPALpv6nwVm2
         bR3Qgp4Bk/yelaJWN/yOIQkU7hbKWxMwCdA/Kln0/qN6vM/UMC5uYdqnARkVmwD+JLVr
         QG1eoftIITEC8sPuuc1HC7bkMF5m5szdJFgAlhZr/HiDef4SLeAaEJ9Q9eyPYRCDabWc
         wUyVMosSHb0NKKS5ANXX58dBVpmHwRx1D5fxZBT2oK7co91m6cZqLES1jmBxPgXklPKO
         urcuaedM/Q/NISz+lfYMco4C9WYnt/k+GF2vJVNaag1Ceis7Lvt+dOaUL2vI3AR7PDq8
         5rqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wU1VWW8TvrqBaih5lARNnT8Un/0kDAvY8ky7PNNCwkw=;
        b=MB016i8rTqMStJfodApzDQLDLUP80kuGESfrf5ZnArc+b6JRUaB7CdEUOUr5hKkz4v
         LhMJwzxOrSipX0GQIM5aqXtlSogD/lx0o8qrDAMTadJdKfeG1FkEGlMRXbTAWcMOhOE6
         PEaM/5HW66Hw8BtMrGEGnlVQY7u1l5M0UAbYDPA/MwQIedUWFV1GyIxOv3YdHtmcH//P
         hurWNYcN6QMRA+o403PGR1jeCTU5hw/uK1eosfCw1Gmy2dVmbTdr8IuVrnWyn0djYyfd
         7c0qxkXBxOr1FYxn1wobUJDvkBvklmn2VzASkimAA6c8PYHMmkxVsNiqOS4ghQQ9IXXD
         YhYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BqZ2jWtMwg19cTmtidgfgjora/alARlvNAFda4mAS1LInEiu/
	rGLr2kt1PEXmzgC6MziJM0M=
X-Google-Smtp-Source: ABdhPJw+C6DDyyKsNSLNqZMAJO4K2fAQ6qp2USS7lxPeuqlzmaUCj5rNVboWYSSw9gQhNlUB5LGong==
X-Received: by 2002:a05:620a:1492:: with SMTP id w18mr41646906qkj.495.1621000819123;
        Fri, 14 May 2021 07:00:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:6b8:: with SMTP id i24ls2739173qkh.3.gmail; Fri, 14
 May 2021 07:00:18 -0700 (PDT)
X-Received: by 2002:a05:620a:240c:: with SMTP id d12mr24773413qkn.190.1621000818739;
        Fri, 14 May 2021 07:00:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621000818; cv=none;
        d=google.com; s=arc-20160816;
        b=1JPaNPOLrnke3E2FXgQfd63F7PZCj7th06S7XzP6nqC3QyDZFyfvVdUgzcUxRM/wLU
         YnNk1dCUbtmdIPoCTG7irlTBZlXdLCtGYB96lM9+bJQnmS8NhAC3qc49gDlJ7gfrdvFA
         Mlbs9Ubl3ZPbMAWgP5HIePk3TBf+pvYbEjRIOCTXvA2Ss5N2nasGU0DzKxrZxNM6zdo5
         qryNwuZPWmR1GJtj1fCRWPj33teiS+bkWSF914ptznBYsI6f1QuaLeXRpfsUaGp5g0ao
         X2qpoDWO0iEZC/i3+RnPF89RpQORRPZzYD2WTbCuU4QrwwckBMIJJ8V/YBADLepzQQnK
         SKkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Am5wmS9xN887ks3+kiBd+/vj+pR72hq99ShNf/8lLa4=;
        b=c5LVcTMQH71lfd3sXIYBhMuyIQy8r1GCcfVKSD+jThWADYYCPTa4OJKpu5A2J678Fy
         cs40IYvlRH6Skbz1w0G6Ni/itdRALcY6fgJBLofddLvaAVlTXRmCti5nGYkvQqHOEQrQ
         hldmvFhIkU8fI/87iK/VcwUaSBduJwWEEpqwdmy208uRHKBriWujX0ykotgYYjtAcpSM
         ieSfxOAuqHUYBqw9X+acW9XMxlpBWkHNyskYDKuRTg/D7b59kBDtQeaartrEjDwI6XeL
         laB6n+M+pI+TVrpoC8gOHhgLs5WuBpz3npo69NK5yCcrsRfk2Eg37JKMBaduTy/ndmk3
         DCzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VsqUEHcD;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 8si417433qtp.5.2021.05.14.07.00.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 07:00:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AADBF6101A;
	Fri, 14 May 2021 14:00:15 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Jonathan Cameron <jic23@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	=?UTF-8?q?Maxime=20Roussin-B=C3=A9langer?= <maxime.roussinbelanger@gmail.com>,
	Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] iio: si1133: fix format string warnings
Date: Fri, 14 May 2021 15:59:21 +0200
Message-Id: <20210514135927.2926482-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VsqUEHcD;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

clang complains about multiple instances of printing an integer
using the %hhx format string:

drivers/iio/light/si1133.c:982:4: error: format specifies type 'unsigned char' but the argument has type 'unsigned int' [-Werror,-Wformat]
                 part_id, rev_id, mfr_id);
                 ^~~~~~~

Print them as a normal integer instead, leaving the "#02"
length modifier.

Fixes: e01e7eaf37d8 ("iio: light: introduce si1133")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/iio/light/si1133.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/light/si1133.c b/drivers/iio/light/si1133.c
index c280b4195003..fd302480262b 100644
--- a/drivers/iio/light/si1133.c
+++ b/drivers/iio/light/si1133.c
@@ -978,11 +978,11 @@ static int si1133_validate_ids(struct iio_dev *iio_dev)
 		return err;
 
 	dev_info(&iio_dev->dev,
-		 "Device ID part %#02hhx rev %#02hhx mfr %#02hhx\n",
+		 "Device ID part %#02x rev %#02x mfr %#02x\n",
 		 part_id, rev_id, mfr_id);
 	if (part_id != SI1133_PART_ID) {
 		dev_err(&iio_dev->dev,
-			"Part ID mismatch got %#02hhx, expected %#02x\n",
+			"Part ID mismatch got %#02x, expected %#02x\n",
 			part_id, SI1133_PART_ID);
 		return -ENODEV;
 	}
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514135927.2926482-1-arnd%40kernel.org.
