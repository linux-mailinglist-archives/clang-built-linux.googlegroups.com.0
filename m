Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXPZVDWQKGQEGH35J5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 622AADD4EE
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Oct 2019 00:29:51 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id w9sf2490041ilo.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 15:29:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571437790; cv=pass;
        d=google.com; s=arc-20160816;
        b=b5SZ+39w5rb62fvGnzUbPxjM77eeiJfSzHT/B/Oktv7dBE1D9bYUAw4xP2D4IMyJV6
         Mo27Qgqt9tMUYr+6XzfS1qjScOntT3Uwwd+nvtYvXdeJ6q2TWuLLTWRBGnZcCDciY26A
         7VPY1nm1x9TZFwI35gG9DKMs9sP9bfnL+gaRnWdJ1Yl0t0GjT0BTvDsUPF+Z+4k4eGAx
         cr81KcuM7LmHK/hejP5bpnveDKD7BahAipGPf+BvEoTjpFWgkx6yrOLnnMpGhduNefhs
         HMj1NKgjJUBIFbwDQ35fKhqIQBS+Ai64dcDWk3c6cGzJxPjwf5+ggiI305yaK3Xhvu4+
         rhZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=a+gT310HR2ozPmVHfCWOIH73l4b7Y0Vh19zFRUU4imE=;
        b=j9OawQSr7VuQM6CqAWq8aZMkFy7FLTHH2YSDaYyiGhNIWiDc91dWQ0/pNTH9njqhze
         7t7J5CAZ/8UTYHqq8g86B4HTfQTVRzDGfjbhGk20NQNEC9MyNb2nLSdmKlPcSmblvM7h
         X7l/bgHUxYQOV5p9NR0us0lGGUAN041kSpEFmkfjKb9lM+SNkQ6ZxwD5taxbLth5tjFf
         YR6hYwesSWcCwRtsvdHueFQ1vDbbx2+tZZxWGPlNWTO60pGcYJ4MhAFh5t/4MO6TNYl6
         xyGe/xZsOvlVe4jkCVO+KJM9pv98bEv3yQVtEaq+6JS+qAoJR2ps8nwbSY4+y+21VBvg
         4VXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CG+DDVPE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a+gT310HR2ozPmVHfCWOIH73l4b7Y0Vh19zFRUU4imE=;
        b=gAj1ldhhppxL2uuL6LIy16iwiqklUmwygRbTJwIKrDQCEmbFn4uKBwfkRPnu1hrA3b
         Ol8NKUv8bLETlgHtjE3yYVJyAjn0vEAsbjtIPozxxtJHf/Q69G4zdkSD9u3Ws+fwM7fR
         6KPyiSceSo0AKsfktO4v4iFETr3RyacDG8vHHSmcb3/7oKlaZLfJHQ9dYRlPmsqZhPTk
         qhUaM2oDPlGXPPlf7KcN8b/pWEAXOjocgFVULFsHFDOh6K190uTuIXHgwRs95VajX35F
         w9HWAft4fW8zM9XjfwpxJplAmQhj6J7oZyVBp0e5S9RiSBR8yfQUlyyky+/6uLRIoDhq
         hCvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a+gT310HR2ozPmVHfCWOIH73l4b7Y0Vh19zFRUU4imE=;
        b=MuxUYNmR6v0Vj+LTONKlZ2ybMhDqvUkTTwuPTxgGrdPkFo1sE/DrOC0QTvHx2GNVYg
         cc9ev0NQktWjX/SdzkKjmkgXwRyScOXnYEC/djJeISzPhTi1qcsFRZv7J8x8s0L0FWS8
         m1JE8MpAtovCtREDkH38JWRmlk4RJP1NDThfKJYummc85ZUxmPY0AClIqe6dpjMmghTW
         9xim/0ocRSZPKWn3Qeum5rQP4Y5LlKs1IsdcDLmljKzLapoSdgtmF3dUSpWClHk3EJtU
         /LoZY6Fs8A48EngshBPf8DUxVUI+GpFbO85WRqQOC0MIyqeaFgrUq3HCuPYa3Im72A+7
         U7aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a+gT310HR2ozPmVHfCWOIH73l4b7Y0Vh19zFRUU4imE=;
        b=ctEwf9TSSZPgE8l09OF3Q1pOcROWMCnshkCfQuLS6COH7Hntx1843nie0IDlfNApHD
         DVpVd861EeBjxMmGslWPV9gX0BOGmzHit9iL5PkeLES/XOlMwgUS7izlMXuat9uNH43O
         5A6VjCUozf7FdUxp8wDQ1HxnFt48nfaHEaHxDfSJhAxHeiYPCzfkE0V1NO1/urcpyg8C
         6pOD8lasUK+k4v2Z7/ymo+QM2WkRwIwXOcMbOQE3f53/9CBJk7q6MDNLbqVMnrn34Igm
         SyZqxja3qYpHdENsJEOeJ2jfNi1FSPBCjc4VLvBXw37u5K3wbiaPovbUXfl/z41MZnOq
         vIEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUKhfIXV8nerf6y6WzAaGRJdPPKAADQvFTHi1kSiJ5R+wTWYEn6
	Pa666dAqOhG+jyB7GKpc3d0=
X-Google-Smtp-Source: APXvYqxyYm/w1FybZQWP38agWVDjqn4sz67JxzuW47BG8vJCkCQiWEdaz+7PbrR7tEDLM9nrodlQ2Q==
X-Received: by 2002:a92:8fc6:: with SMTP id r67mr12203615ilk.5.1571437790043;
        Fri, 18 Oct 2019 15:29:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:da02:: with SMTP id z2ls1812579ilm.5.gmail; Fri, 18 Oct
 2019 15:29:49 -0700 (PDT)
X-Received: by 2002:a92:918b:: with SMTP id e11mr13382272ill.130.1571437789721;
        Fri, 18 Oct 2019 15:29:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571437789; cv=none;
        d=google.com; s=arc-20160816;
        b=PA8WDn9QEKExQatTx+3wJ6yzvIAxC3HTnHToOyZQ/gwcvCnI6trn2T1thXPKr9L6/g
         BNcr2Z/Kfo+Txfbg0LY53bLMcqehsuzwod2HzgBrbMZmVbB1Pcs69zD8+tPyx45I2eC9
         bEHfR57+c7ZmcWp0UwBR/Hu5xzV1hAcDjzfkWzPg3WBkoyCSUxT2sqqRZaai/gKVLjHN
         w3wJZsAf/LnQgFeTEvX9OfH6w0KMxahYFdJCf9nP3PrvdvUU33IJT4ZFem2yLEM1hYzF
         G6+63YmoEknNoSzpEY/+pLuerbVF+kNpF9VT/FZ/X9M1FtzDfebA25Qo+3a2uiguAu1y
         zBBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gYjp0Wpg6EG197+ZFDkyqIAQeoiHNqMZ3URZHgzwFVk=;
        b=R1S0SfjS/Bc3NRmOcz+pgGv9Ar5hksnVUF+o8YplJd7h8WL5H3zundQZJGHpFmgY+k
         YXuHvCqyU/9pAeTkRA1yjbgMV4K0xXPLbyLSNdR3W5r5JK6BVe/vwffbsKLrxCKeV2Ha
         /OEHiJ88ia6YPd4YpEBlLOEwh4Ih3Dfn0NmaQPl7ahLpsJpB4H33YWl05T8rAOxs1ZSd
         eZq8H7TKV/vkbqx6QFbnWFchkhNr+wtZmif9/NPaWwc8yLb6jvNIh7ZcVVQTbLafUI1I
         x4unlwpORBx/Ws9jYlzzPHZyR3HCK2tMKEoiKTOuQAZ+Q7sa5fGHqZ532J6whV7YO1Uz
         6h6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CG+DDVPE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id n201si519777iod.3.2019.10.18.15.29.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 15:29:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id o44so6267343ota.10
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 15:29:49 -0700 (PDT)
X-Received: by 2002:a9d:ba6:: with SMTP id 35mr1229290oth.143.1571437789127;
        Fri, 18 Oct 2019 15:29:49 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id q18sm1871422otk.57.2019.10.18.15.29.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2019 15:29:48 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Marcel Holtmann <marcel@holtmann.org>,
	Johan Hedberg <johan.hedberg@gmail.com>
Cc: Amit K Bag <amit.k.bag@intel.com>,
	Chethan T N <chethan.tumkur.narayan@intel.com>,
	Raghuram Hegde <raghuram.hegde@intel.com>,
	linux-bluetooth@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH -next] Bluetooth: btusb: Remove return statement in btintel_reset_to_bootloader
Date: Fri, 18 Oct 2019 15:29:24 -0700
Message-Id: <20191018222924.49256-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018111343.5a34ee33@canb.auug.org.au>
References: <20191018111343.5a34ee33@canb.auug.org.au>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CG+DDVPE;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building with Clang and CONFIG_BT_INTEL unset, the following error
occurs:

In file included from drivers/bluetooth/hci_ldisc.c:34:
drivers/bluetooth/btintel.h:188:2: error: void function
'btintel_reset_to_bootloader' should not return a value [-Wreturn-type]
        return -EOPNOTSUPP;
        ^      ~~~~~~~~~~~
1 error generated.

Remove the unneeded return statement to fix this.

Fixes: b9a2562f4918 ("Bluetooth: btusb: Trigger Intel FW download error recovery")
Link: https://github.com/ClangBuiltLinux/linux/issues/743
Reported-by: <ci_notify@linaro.org>
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/bluetooth/btintel.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/bluetooth/btintel.h b/drivers/bluetooth/btintel.h
index d2311156f778..a69ea8a87b9b 100644
--- a/drivers/bluetooth/btintel.h
+++ b/drivers/bluetooth/btintel.h
@@ -185,6 +185,5 @@ static inline int btintel_download_firmware(struct hci_dev *dev,
 
 static inline void btintel_reset_to_bootloader(struct hci_dev *hdev)
 {
-	return -EOPNOTSUPP;
 }
 #endif
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018222924.49256-1-natechancellor%40gmail.com.
