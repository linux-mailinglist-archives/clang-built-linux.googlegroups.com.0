Return-Path: <clang-built-linux+bncBAABBBMHZD3AKGQE2QKBSPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-f187.google.com (mail-yb1-f187.google.com [209.85.219.187])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6461E8E49
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 08:56:06 +0200 (CEST)
Received: by mail-yb1-f187.google.com with SMTP id i190sf5804427ybg.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 23:56:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590821765; cv=pass;
        d=google.com; s=arc-20160816;
        b=S4Y/uVs0lvmOUVHKSZ1Ov7b3veC5PQPTPXBMDY7VnXQA5+GCWGFbuSuBKcZSmMCsjx
         tIwJAmy/4L6utvWROqyEljGWXuiza/zsPt6QhXffj2ftxzObroamIKNI58KOMzgeW/vv
         b3fTSo6bnqua6REqAF6CTmwelwtoBD9PcMrtExcBbB4QASiqL4CjfQC+Zi7SeYY8NpTP
         fUiS5vGmYGHTLRLhBgRqNPvfmgZ0PT6txpdCObB0EmPevgCZB/1K+6Zo+acUjjqtzNZT
         Pqz6EDbt7YYbhod700plonJG/+k71SfpzFpG5zKzgvP/XNZJBepp9UH2QRKqCTPG7dGh
         cYPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from;
        bh=OC/KwRxMq0MmHnKZ0w02s4YASyjCEx1joDcApeTgt+s=;
        b=ec+K7KROpTZG8oC4XQmJ7rGxqTfkzBw7EQ1hAVSjCZ4QbsNkrvaJJEBESJ82lvZ0BY
         0trUja+XQ6dRbVhCmd8Ngoab4lyyICBc2zYB5Cx18mjkTx2UcpZt14L+H4LvOI6nTtp2
         HRlQGNLsJmRlcq3qSgHTWtIQYTnKmXTLD24zJvbzz5Oq6jjfFFnimi/lX4TUUDqiZKf+
         tob37w5eI3pZdaLIDs2baZpKzxCVRF0qCDjioHjBl3Tpg5xx7KYRQm6Y9hVYXxCpbJHJ
         0rb5N85crnV1Fw9Ub1iKFzZ0K8bFVLO2KHiw3oH9GpQIeCYYTVNBJKwLGh2H8+mf1/MW
         gjpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="yJ1Qvi/c";
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:sender:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OC/KwRxMq0MmHnKZ0w02s4YASyjCEx1joDcApeTgt+s=;
        b=WVO3L0grzme8J3BXAZBvd8vH2tYFPzJ85smE0NcGtRyO9o371B4j76lFv224nHl6a7
         NO6YxVt/8xnPU2Ib0E1zdUZIKWexjmMCrzjYurQnZRFRJ22fhHdUKKDRIjlaVL20W/oI
         f/VhQcfusvoDTf4hExov+Kq5QRvBzFVvhuYw0eSuvTBjlDwPgDbC2VCcX8OK0e+P+bhb
         k7ee9LvYXfEuMEsPCL0+13c8jPVKqDrzgnZBBxOScEpC64z2YIHMiEa4Y3Cms0VK7+78
         QlPcrTbSPb+5Oc3Giuj277b6imYWLKeJayECgKPsayUsCuRI7eMiDuFdlHKkKFOG14Lf
         L/tQ==
X-Gm-Message-State: AOAM5319v0o5t/wsfjHWpu56MYaND+EeOCjvqGCHoOjR5gPNaaGBSqth
	wX8s3hX4efxqGpmI31YALSo=
X-Google-Smtp-Source: ABdhPJycBxCTp1KIcDQU69hm5CFd8v5EJWp1r9k6DfVXyBE0op9PkeBoliVjKohz0TT7eIU9XY0s/Q==
X-Received: by 2002:a25:9107:: with SMTP id v7mr21245964ybl.0.1590821765253;
        Fri, 29 May 2020 23:56:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:88:: with SMTP id 130ls3306531yba.0.gmail; Fri, 29 May
 2020 23:56:05 -0700 (PDT)
X-Received: by 2002:a25:da92:: with SMTP id n140mr20403908ybf.313.1590821764936;
        Fri, 29 May 2020 23:56:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590821764; cv=none;
        d=google.com; s=arc-20160816;
        b=oYDBIKJFwpiltb0qkZC+SdqBTSfBClPQ/oGgwOMXzjup2B9fdyhhZsmoBjZVVXxLOo
         Q6kFiLsEG3l9iYo8OaDfgYgJH8g0ryyrgBKMwpQoXzwjzRDRqoMyY0xWap1FxEJgW1w0
         iQototUNoSzDdjawXezKJcrPYEf0zGqOkxoT8hv3KQWS08n7Yq8qZQMp+zQXbX8qYCV3
         CtofMnBv/9fVMyEi5UG6luvo/mfj9UPHwkyrjIsgOMGGQcqqKFJBi1PKONTHmIB4Ye7X
         QtV+vDWc+VQhAa6UB/tyOF52ei6efr1SloUE65vOV4hGUpi7JwgqnV3N5kVtpiCUcR77
         L2SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=N/eubhpcUmP+VBaaYuZqIHN0Z+Okk/xmPizRqnLEKIo=;
        b=A14QVuK4qzT52jAdR38MSO3/zTkeJegcu1vn9Ks7onVO7nnQHRhkjwC3A5UCRtC80E
         W4oz7GQ8Swbqt0bqpq+LqHyyBK96318LZF8LdZxMvVk0ruw46z8sVCKPqtIBAwcE/ptu
         sab7iC+PMRLrhplDc4H7mCpTE4VUm7ESbYFp8HyUUxQPfNAzudA/aF7UCehLBeevUhJo
         kHtQ403Z9ZfVjJkibfEmF8WsNHIgT6WZ5Lo6nGaCM82PC1wBFZ6q2R+mqn/NXYkgyY7+
         9CowxQU+uk8qS/hw0FOzpQ5GY3TIL0cf1VM4YhgppBo8ujUnfV2REMI2aaIx15xdZZ3k
         76aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="yJ1Qvi/c";
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v184si372513ybb.5.2020.05.29.23.56.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 May 2020 23:56:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de [95.90.213.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AB1BC21835;
	Sat, 30 May 2020 06:56:03 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
	(envelope-from <mchehab@kernel.org>)
	id 1jevPV-001hq3-Ia; Sat, 30 May 2020 08:56:01 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: [PATCH v2 25/41] media: atomisp: Avoid overflow in compute_blending
Date: Sat, 30 May 2020 08:55:42 +0200
Message-Id: <22b531f57658727abacb28f534d6fc9d44eee4cf.1590821410.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590821410.git.mchehab+huawei@kernel.org>
References: <cover.1590821410.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Sender: Mauro Carvalho Chehab <mchehab@kernel.org>
X-Original-Sender: mchehab+huawei@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="yJ1Qvi/c";       spf=pass
 (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mchehab@kernel.org;       dmarc=pass (p=NONE
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

From: Nathan Chancellor <natechancellor@gmail.com>

Clang warns:

drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c:129:35:
warning: implicit conversion from 'unsigned long' to 'int32_t' (aka
'int') changes value from 18446744073709543424 to -8192
[-Wconstant-conversion]
        return MAX(MIN(isp_strength, 0), -XNR_BLENDING_SCALE_FACTOR);
        ~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~

XNR_BLENDING_SCALE_FACTOR is BIT(13), or 8192, which will easily fit
into a signed 32-bit integer. However, it is an unsigned long, which
means that negating it is the same as subtracting that value from
ULONG_MAX + 1, which causes it to be larger than a signed 32-bit
integer so it gets implicitly converted.

We can avoid this by using the variable isp_scale, which holds the value
of XNR_BLENDING_SCALE_FACTOR already, where the implicit conversion from
unsigned long to s32 already happened. If that were to ever overflow,
clang would warn: https://godbolt.org/z/EeSxLG

Link: https://github.com/ClangBuiltLinux/linux/issues/1036

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
index a9db6366d20b..629f07faf20a 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
@@ -126,7 +126,7 @@ compute_blending(int strength)
 	 * exactly as s0.11 fixed point, but -1.0 can.
 	 */
 	isp_strength = -(((strength * isp_scale) + offset) / host_scale);
-	return MAX(MIN(isp_strength, 0), -XNR_BLENDING_SCALE_FACTOR);
+	return MAX(MIN(isp_strength, 0), -isp_scale);
 }
 
 void
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/22b531f57658727abacb28f534d6fc9d44eee4cf.1590821410.git.mchehab%2Bhuawei%40kernel.org.
