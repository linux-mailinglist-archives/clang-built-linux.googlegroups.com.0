Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBRVUYDXAKGQE5KM6MCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8943EFEDF3
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:48:23 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id p2sf9734738iof.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:48:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919302; cv=pass;
        d=google.com; s=arc-20160816;
        b=khmi3vybcrqQ82yO/P5fpKIBld2sDnuMsHvP5FtVInARYDRIgmo3ApKlOdHaolYhMy
         HqxSankaNyNCnS/KnFSVwOopjsiOkx1y4pMNyPXjL2PjCgWIHBr2KaH+HkvPdCScYfIE
         p2i+2VIa2hI2e1M1NbnecNpT7ZBQ/gly76TrQU64+uBNia7rub04m9vJZVS3M4m3guQa
         leztoN6TqYiUpL1wrgypF3VSIaGraIX/s86fgNSeSHvo8RPJkbqz6rm7CxeeFFBnrXVI
         5i/jsMxKE8Ycvloq0LpEq/kdBSjHuYL3Z8khsJ/pPrF5OZTjEeVe3Mag2rrQjo32ulDO
         6jtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=LxuUCpO64COsGFqjBFf6bav6c8Y/FeRtzx1jk1IOO10=;
        b=bTFH+zoHgvKTRMiZ9vwcfrJDzObTJ6aQ/O/zjVT6Rc/BhWA+bN5pReoBj8l0IVj8ia
         TfD8tDqFTo1g6b/G+mYNrf0zp/YVhsW972TSk8x6o/cMZl1rwuxsahL3I/TESTj4e32l
         +kOGzMLOTUahB2hgzCcmTuUj1bRdMipcma6Y+IrPK9iDgW1aZqz8fzLni623P3Uwbq5h
         5jz4s7u+qJLNRa8RBvfjMW98M9amOgudWcgiKSTwHwMD1CCaXEkxaeO0lrig1mAbhyc5
         DFOrllq+STXQmakycMx2Jq0IKEW0SntPJR/1hc+F/pgGXV0I8xvfzBlarVQbF0rjg8Cb
         CGMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vRlDzYKA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LxuUCpO64COsGFqjBFf6bav6c8Y/FeRtzx1jk1IOO10=;
        b=sHgLRIlC3C2pYEABrgoM1Tz/QVy8L1eCUx62MG3++pizNhMRudFNkZMU3gMMHx8D/I
         v+cwRNSVBQYM8YAsO/1dkEaNIBQtBVtw9DKiBrZJoH+PnFW+2GCl8f+13LWNJdcnBZ6z
         JA4WCvyDP2ZjBixULp9cDamnoZJdxpXDEumSXfpjMQbJVNcFV1GFPwfiUOap/9EqTOwj
         F5aeua7e16t/OrcQ7INkVgT/XW5RSIVNt6kaPnVUOVsOEJu3q5ir2rbAQLYUrxx9Y2A2
         hCiphvjL38GahoRfwTdH/fx5G3Z2tq83E3q9ppjDp+YxyiNJMs/8IJygnvmVoVttSowh
         a0nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LxuUCpO64COsGFqjBFf6bav6c8Y/FeRtzx1jk1IOO10=;
        b=JAP3+DQhkEYThkEUdRMAa+EE+JNsyAZmnGraNwEifrPJ+vuzFrMilMYR2ZEdgnQ/BT
         MlnX7Ao0khJ33kXaIv83T2xBLc2ZVp/G1Ri6trM08G4VipEQgckJc19gcNGlhdCq3z00
         OezreB+uYgxx3SmLu621TjrfN4WpWr18LJ7CaK87hBsYK+6wYz/KfkHKuwIAqxd4cc36
         Nx++03lEI4Ck4QSvTZh+aE9qX1tOGJcrp/W4FbXVAJ0dY2qAabWe83ZxvsdFif78IxPZ
         od6zfhUGx5ZMhwVmb+xFn+W3XtBGQ4IbjgieqmGJNL5Ju7mEq8WKY4Y8aTHYrIa/hF83
         Bwkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWPw3zyy+Omr046aukQ+tkGItm8BVKZrArZhLiI9FNJeaj0XSjf
	gCZeBDBAI4RtRS0ebICuWiQ=
X-Google-Smtp-Source: APXvYqy/LHTQh9q1zXSzCaQiGhQfswNxfgg/6T9F4cbb4WOtaXLXNhWinc5mABHR367o+j4XLN8DbQ==
X-Received: by 2002:a6b:4118:: with SMTP id n24mr5805476ioa.128.1573919302540;
        Sat, 16 Nov 2019 07:48:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9e06:: with SMTP id q6ls2395964ili.5.gmail; Sat, 16 Nov
 2019 07:48:22 -0800 (PST)
X-Received: by 2002:a92:3d91:: with SMTP id k17mr6993352ilf.256.1573919302256;
        Sat, 16 Nov 2019 07:48:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919302; cv=none;
        d=google.com; s=arc-20160816;
        b=DOp1G5yQ+RFMl20AwYgqzDpT9dAnzfMf1OwvvZSddhfK1AUKhDHY5xjzSATQJ/YC6L
         x1de3hisQ/1wBDEyGYam/xD4csEYyYs+S5fsE779EnzJtECnBJ9RIV50Sgt80JPEl6kQ
         ynhXOqBoBDMS16LHcIYCe3Y42rYOQ9qUNMVHjDjmoXn9Hics32+TF6FVbKipSDdv9p/N
         kKLdFCtrlbSeY77lffbU/m5zD6v7gv3UiAE1eF01fwXNYkCtRXq0XQHCzVurf6XdfO/s
         yEDBgoSmVqGJATwK8P7fmouspxS6zek/KF5V0S2DwD/A9LMTpGb78RrE2cpEYbUmd9vQ
         DAOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wJ/NlRTagFPcsqrFk8zeu5CRlS9wS/Eg4agIfYn9wFM=;
        b=Ukim64+2nUL7uE2fxBxWTnWvCHnhqFQf/TEc9bPil4XairjSIE3QjYa29l6OOUNByh
         6FKZMp0AUtgL9sRN8Gv+IfyvVJ0Du9u/t5iRU+B7GoQdMyHiGRFGTc2AUmUgaFrmdORb
         5PUKxSeiWUuMS4y/uPlJqaVhjgvrktiBIUSL9tRE7p5lKRIBIs3emlFFcsXAwkyA5pTM
         nvuJChfqbkMMMadZFMBjlQJX5vqsp8QvSZ6wyRA0YC8wGOplKW4lu17Uc9MGvHAC3OIk
         3UtIUDUraFBJOrQInqffFWf3Gyzk6oORdkYLqmcSB8JMefrSEjZUJoc7TBuZz8slfh9r
         sknQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vRlDzYKA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z78si776785ilj.5.2019.11.16.07.48.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:48:22 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 60FD62086A;
	Sat, 16 Nov 2019 15:48:21 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Philipp Klocke <philipp97kl@gmail.com>,
	Takashi Iwai <tiwai@suse.de>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 047/150] ALSA: i2c/cs8427: Fix int to char conversion
Date: Sat, 16 Nov 2019 10:45:45 -0500
Message-Id: <20191116154729.9573-47-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154729.9573-1-sashal@kernel.org>
References: <20191116154729.9573-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vRlDzYKA;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Philipp Klocke <philipp97kl@gmail.com>

[ Upstream commit eb7ebfa3c1989aa8e59d5e68ab3cddd7df1bfb27 ]

Compiling with clang yields the following warning:

sound/i2c/cs8427.c:140:31: warning: implicit conversion from 'int'
to 'char' changes value from 160 to -96 [-Wconstant-conversion]
    data[0] = CS8427_REG_AUTOINC | CS8427_REG_CORU_DATABUF;
            ~ ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~

Because CS8427_REG_AUTOINC is defined as 128, it is too big for a
char field.
So change data from char to unsigned char, that it can hold the value.

This patch does not change the generated code.

Signed-off-by: Philipp Klocke <philipp97kl@gmail.com>
Signed-off-by: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 sound/i2c/cs8427.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/i2c/cs8427.c b/sound/i2c/cs8427.c
index 7e21621e492a4..7fd1b40008838 100644
--- a/sound/i2c/cs8427.c
+++ b/sound/i2c/cs8427.c
@@ -118,7 +118,7 @@ static int snd_cs8427_send_corudata(struct snd_i2c_device *device,
 	struct cs8427 *chip = device->private_data;
 	char *hw_data = udata ?
 		chip->playback.hw_udata : chip->playback.hw_status;
-	char data[32];
+	unsigned char data[32];
 	int err, idx;
 
 	if (!memcmp(hw_data, ndata, count))
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154729.9573-47-sashal%40kernel.org.
