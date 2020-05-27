Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTNFXD3AKGQEPGUIFAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CDB1E39EC
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 09:12:15 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id a16sf2924083pgw.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 00:12:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590563533; cv=pass;
        d=google.com; s=arc-20160816;
        b=0TN6EeaUQmrIlGK2mn6rmCgRB7qz2iSZqYD/MqsWXm7IwWvOrSRCyHKAQjxluqqFPg
         c+wkopzI5rObvu8CJf82plhtl9vHiUtm9LDHHUZPo2e7dUOe0D8UTllde8fjMgfeUU0n
         aDeWzfQjd8BvwwrK354pqTthKNDjUKUsWUB4AMHNlxY0nN+zHfGUab9jB55ffCuiUK3l
         b+ZMlc4HrjombQKRzua6M0tQohPGf9vlSQ1o7weopggvZ3MrNzjXcf3F1b8RQrSzphkO
         KaAOKbhNHtSwINIag7nJ7rPCxokIEe5fveZxoqKMn4whF2eOwNGFr3mwXi33K6v1YMSH
         Bg6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=c3n/Dv1APXZoLmsQsjvixq5dPvyRrDC/8cZ7bo3GPIM=;
        b=XgKK+DdwJ/inAfLHEXwjF2JJFP2H1nrr6IBhVzxIdOTbnP+IAF59nVk6Z2L8KzwRw0
         rIUNmz9KfHeTm7MUew7MAjmXJbeQK+943f4gtYJjFPJXQzdhjQeVZrac5mH4BjeB/nIc
         Jb0SKrhf7mRcsikMAOQJEE6ojF8iEhCFoCCyaaip8uuZQoAggHHYUuxdAv0QTjS83RUp
         CJuN3AC5nTrtBn78BoVymnaT3VbKzyqx7HBqauyML0xEcbqRL5vh0cCKBgNNnmKpQjT9
         tS8szYfY9+UvtbZkCyR7VSHxMXBJ8MZaVDHRMq4CVEXwOKiiz0CxpKwN+oiCCqMRLm32
         wkoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rAvssvWz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c3n/Dv1APXZoLmsQsjvixq5dPvyRrDC/8cZ7bo3GPIM=;
        b=VnlplypfyYh9PmFZ5hows4XM/J/XWML9JSO6H5DVLjFhdzBQr1a+Tmb4Bn72CVM1sw
         5Xix8Nd45UpQidGkaPmzLFZ053gfi+XLr5qYIlb84caKhztpWReKgCrvBVfgUpsj6keS
         IXXDrTTVOdwmqd4MlN178Y2UeNMcWreLLOkSrRq4231VkUq8TfoIPzbjSn4W6Ucr05Wb
         BoCncw/0BmclWWhQoYjz7JTLTL2PGEpkAL1wLwfRDDf30F0w0/OPReEyU+WNcX/3HpLJ
         4RwWC07xvHlTqg1QLIaOxMMYgD3Siwn1XHexQlobRrct1tVdv43z0STHUrjbeEZo+eOK
         Lh4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c3n/Dv1APXZoLmsQsjvixq5dPvyRrDC/8cZ7bo3GPIM=;
        b=rdN6ab9O5PaI34woMY3ScCwJW9YrCnVdPoIp4T+x/lx6iXGrqTP6JNNbLsQYhzHRA6
         towuYY/D53fNTmzIiyPwzo4c7fZ0RieeeXd28HeKkZUfvdtxW5+2OgWjbqQh58BUTy5t
         zbNmJ1H2ay8blJHP0PwanoOwz7eNGKvTf6ZBDNaLalVpzrOiFqnkXQiZbNOmVcyzzvYn
         dosyOejrt3A3rHJYL8t74KluvSxrG2J80pOzx+SECvko3jhKZ9LMb3FP8Ew0ECh/k36G
         IfvYPXU3payy/VOI8vzmPc6+bcxkbGTjyywtrJ1NrMC7dMYqoOdGGLvcxngDCemi4l7d
         stng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c3n/Dv1APXZoLmsQsjvixq5dPvyRrDC/8cZ7bo3GPIM=;
        b=jxx7U6UsmfJZarz3hypFkxY7dOxY+3+pFErvvJFNvwdKOE0eNLmGbtKjoM6Yi3f5Ss
         Y6kzUxUd126YJA2G6L15X3bzcLr7a33xrh2x/7eRUcjtaVi7IIczT3k5ZeKrZexFx7bj
         E+TwGuX/xwL9NUgEY8/i+isQj5bX0YzxcDqQytiVCbWhPb3S+oikcNc47VT1WfrF8DnZ
         Up6f4y+K3CQh2LxVKWyDs4ujVNboRSkfM9zg0Wr6NH2+sUlEqioi99T8jdbys984cyPo
         +qGTYoCIR/rpz2L82HEZ6xD+4ZGde1vo9+8oKjkGzZopII4ZvGeFdAMZY//r0XOyo0Vc
         0RcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GqIX2GZL7NVm3mzyE6W8wQcHc6KbNCU1q+EFbPeBAQ433YAmD
	smu1G+IDe9s+jHBBmsa6ImQ=
X-Google-Smtp-Source: ABdhPJyFGEKg3xXRDFzJqKtz/ijB5HMOWN7mGj/Fs+vLXPfsInVJFoSpfDeVRcqVTqkjF24ml2E8eA==
X-Received: by 2002:a17:90b:4c12:: with SMTP id na18mr515927pjb.0.1590563533534;
        Wed, 27 May 2020 00:12:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:fc8e:: with SMTP id e136ls4710221pfh.7.gmail; Wed, 27
 May 2020 00:12:13 -0700 (PDT)
X-Received: by 2002:a63:1464:: with SMTP id 36mr2697731pgu.123.1590563533174;
        Wed, 27 May 2020 00:12:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590563533; cv=none;
        d=google.com; s=arc-20160816;
        b=rYR4RQPaixhMkzzpXeqO9bs97c8nETnY2WRTLUz7F+MTXonBVRuaty+8OZs8zeb4x8
         RFC3kYlNBZHC5Ahd5bkJm1b11RVMJX4i68tjqNdCouUpRETWV+gjvtztC0SHwEKBO/se
         7FIpSSiG+ny6z+7oYqNcxAIuumKXIlDEUHLzEyfnsc3gkcDEVhkuD1KRhJV6WrBimHZ3
         XoEeBREfNc6wpD9f8oU4psr2Ml62wLLUh1MrPJEshdp7QHqeC4af1RwgafzVQpqJ/iH2
         VRRMCTMyptmf4KRtEnd2sU8uUcyekUVTaAsH8Ml7IGC0pFTcWjY4KY/hlRsVm1ONqnhw
         a0bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Qw/QOLBu9d2B+96STuqYNI0AftO5l6SG5yefrjTDHdQ=;
        b=LRmE0z6K769cNAYNJ+0WgPDj+3uMfUwcUbDErtn7P+PMG+JAltiGKvfrQEExzLXk0M
         t+4eoKhZD73xudVUJiJOsKwuzxtYOdJokOI9E/gAJPP+RtmXJI1dk6k9NXydJZmCRow8
         5PP/ty2X0tB3ka1g54mqJcXIRiohkiRMuWiFJRNaWMw6nAkz3Ge889NXEYJsh32YFQfr
         hUPofkGxbAoUWUip3UJlQ9PP4jkHHYZwp6t6xgJs8VKKRycZEL3zqxhOXj9CXWCVr+Ly
         9FSpzYOiPUgTu+3uoba6JEvy+4+RsPxLpcJI5QJAU0NpNHr7RXtOxaBbvgRStq6H/Ywu
         SwoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rAvssvWz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id u6si102885plz.5.2020.05.27.00.12.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 00:12:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id y18so11424573pfl.9
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 00:12:13 -0700 (PDT)
X-Received: by 2002:a63:3c0a:: with SMTP id j10mr2734873pga.35.1590563532903;
        Wed, 27 May 2020 00:12:12 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 10sm1306431pfx.138.2020.05.27.00.12.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 00:12:12 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	kbuild test robot <lkp@intel.com>
Subject: [PATCH 2/7] media: atomisp: Remove second increment of count in atomisp_subdev_probe
Date: Wed, 27 May 2020 00:11:45 -0700
Message-Id: <20200527071150.3381228-3-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200527071150.3381228-1-natechancellor@gmail.com>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rAvssvWz;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../drivers/staging/media/atomisp/pci/atomisp_v4l2.c:1097:3: warning:
variable 'count' is incremented both in the loop header and in the loop
body [-Wfor-loop-analysis]
                count++;
                ^

This was probably unintentional, remove it.

Link: https://github.com/ClangBuiltLinux/linux/issues/1036
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index 694268d133c0..c42999a55303 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -1094,7 +1094,6 @@ static int atomisp_subdev_probe(struct atomisp_device *isp)
 		if (camera_count)
 			break;
 		msleep(SUBDEV_WAIT_TIMEOUT);
-		count++;
 	}
 	/* Wait more time to give more time for subdev init code to finish */
 	msleep(5 * SUBDEV_WAIT_TIMEOUT);
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527071150.3381228-3-natechancellor%40gmail.com.
