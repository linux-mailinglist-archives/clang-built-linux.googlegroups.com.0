Return-Path: <clang-built-linux+bncBAABB5MEZ6CAMGQEZFXGWMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C62375223
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 12:18:30 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id t9-20020a0cde090000b02901c4c7ae0ccesf3746809qvk.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 03:18:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620296310; cv=pass;
        d=google.com; s=arc-20160816;
        b=WTT751xrxZ5vwnR0sxX74Y+hNwQ5SgJj3PMDKsxfE2x4hi6RedFr40hAoLq2XFHKRx
         5N7B7ci+f3MCmpo7Cqy8HBN5vHDc5OK2RgFxHOFOwGrSPDQ7YRgW9/cZnQcUvEq04END
         1qyX/ZJ8/IwK5TR7ze+ILekpRXgRdHphlQmP1Gd4j1LgmKZmXGroT13VXf4Jdp+mL12v
         UfVjeGeWgmuWhjezM6ai8r2ttJGLx2WihtFyqzEUdhUqPKDQggpBPv57XW9DjYFlvrNr
         /QVh68xOyDnOo+J/yy2qf1HJHTUyjtIQweTPbkwSkLTzHBj2x9wJER7VaPzdB8j8eSG7
         g7nQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=wunlmezjJloj6jRr/1+VyEg/v8aF8wj9E2pNACqPAiQ=;
        b=JeX4FKtOUvVPZovbyT9QgBxsxsrHv1Pmx7ZUOb9x3f+T2qn2+7nnDYWC4bqH8FC97L
         glJhxAocNz4K+qpVaklS+cCrK9LMNZ9yim+mOroJnQr/A0ak6TFVnDhYuepkZhWyU2FW
         VGJj92ta/Up91ADzkYJN7LGZu3Vv/7rZTlTwk7jeuGFd65osOtyEItt1QjKc+Br+IiCO
         geKjtEagEdg9QFpgwO7Z2jivM9nTJKUzVNPz0x/txkc9f2rsa4ruHOzv1JZgKh33rX5v
         IuwlAFRSeSP0UqKQP1u3pyghKC6mactPbiiGz+LUv3eM4pcEHZlVNJNNZ53tOky2pw5H
         4hNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.44 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wunlmezjJloj6jRr/1+VyEg/v8aF8wj9E2pNACqPAiQ=;
        b=P7jYbslKpAq0wAwyOi8VY95wNdBGrBsAfqhQJDWNdthWmqt+QjK1QiSkWQJCL8Ir5L
         wPbmWFGZPxVQSt+cS4PYF1hwrcSicc78b7Otl/6Z9amSl5btnLhiRpZvYmah3A9MAInz
         Ok2x6xr0oClIt4fu3kCweEOVXQxP4t6BqT39WLEdXYyfYpxyd7jd6Gf8bGnbrWZYF7bm
         4o5y7UoHVJZRcOFq7NuHfVhIonZVy1qOKoHhHxnvy8Deec4dcv0fzNJUZUnB/KBrwZOB
         Zz6IL7JwiypupE11fIMpSpYCDSFU1x3mw53YSIfVKAYBlW+l8+VOzAKo5zbhjbhRQmhR
         vaKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wunlmezjJloj6jRr/1+VyEg/v8aF8wj9E2pNACqPAiQ=;
        b=Gx0ugiFsXleIWuUmOHHaN95a9KvbmbbUugzFBhCzyBDKc4z36OiznX4yo43iqzWqWy
         Sq5FLW1M7iRNQHrEiQ/Mcw7LoRQ3sywvDfvt+JyullM1dO16kbBtTQfu54b4hfCgoB2i
         Wc32iTbQxQNA7BwbgdhJ5CPs6b1jk882KoVeTb+BVaq1bZ5XOg26P7rqUXI4cTmcPzXA
         LZ36v/BDXz+mYn/WrYp0or2/ZgOuoDg0HBzlZ6hEM1p/sKJT29nB1WEulaAZctCHcguY
         7VI4UIvJhTdDc21KPTj4XeLOnqskrTSz5UkjVQXQwhtQUDn1lMdCzvDwZQs/0b+rxzrq
         Rdrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314zlNGTJLai/fSUTYvCXKoopjohm++fN2X9gqxx9Qe1afTCLqL
	coWBrss1nnaNJdJ9jT9+2j8=
X-Google-Smtp-Source: ABdhPJxToX7cJU1uhAfcT/n2Nre+MtIOzwgE/kh+XJjkl6EZvOhwtEDsWXApZMnpl2GBYbCcmY0vlg==
X-Received: by 2002:a37:b784:: with SMTP id h126mr3226348qkf.402.1620296310024;
        Thu, 06 May 2021 03:18:30 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3024:: with SMTP id 33ls1136308qte.8.gmail; Thu, 06 May
 2021 03:18:29 -0700 (PDT)
X-Received: by 2002:ac8:543:: with SMTP id c3mr3357846qth.241.1620296309654;
        Thu, 06 May 2021 03:18:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620296309; cv=none;
        d=google.com; s=arc-20160816;
        b=nduLpZCr5mIJLtF4C0EvBj20HzQbxWyge4DwgawZv+G1oFnZqCH8URPr+4UiHp7Lcd
         G12eisjXzG/yapUjg3xTbGAaMG2N5rgh3hs0mG8OoEaJk+IsDw2v+AXp87Ggy4jqIZru
         /DMPlGb7SALwZqgt/V6ggSgaa6eW6RzjOeTaOHzDR+w0PuQ5veMhbKlZCsqCZ0mUIKVK
         0fi9uju5ej0ryKp6AH9Ldhc3Jq+mzw74+yoQTRfHMcKjzOW3mf0Pp/jvqEakZheULc5m
         3CvAO9VpDqt7BpaPrqQ+AxZHb25FxtMtaX7uidmTuWyOyGsRPE8ldprdJ8rOWaIEfLlf
         +LNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=215VmHmVyv0knbkScsZDRdvAqzXxIcPNUJg+n7dv45c=;
        b=iyrK9xcc8JjyVWk56+Y8DnkSkbJ/2U/BA4Uv4QcpCHVj/2xAVytR/E0+LydOMdijMO
         IVljq/uUYL1nXx0VEVlfphhOa9ArFrGJOxLfG0jd+PFCY5Zi4i41K/GEc5quHVsSHmrk
         nNkHH7CJ583+/lRWnily8JpVSaADKhZK7r0Sn+Y7G7irHulOR3Eh6mdCqPfatgpH95CG
         dSflm8k2fNfHkqLVRAD4PDo91a7tiGy+tFBlPGj2pqxEfqmLc87wnsU1si4BKzcfeq4d
         qa87Qee8maysDBkT3ekiBWv96wBR0oLPgkac7haSX1tQvN83jhVtXgc4JTk8lEfRI2wU
         GO7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.44 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-44.freemail.mail.aliyun.com (out30-44.freemail.mail.aliyun.com. [115.124.30.44])
        by gmr-mx.google.com with ESMTPS id t65si228808qke.7.2021.05.06.03.18.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 03:18:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.44 as permitted sender) client-ip=115.124.30.44;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R531e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e01424;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=5;SR=0;TI=SMTPD_---0UXyJDp1_1620296302;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UXyJDp1_1620296302)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 06 May 2021 18:18:23 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: nathan@kernel.org
Cc: ndesaulniers@google.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] lib/asn1_encoder: Remove redundant assignment to ret
Date: Thu,  6 May 2021 18:18:19 +0800
Message-Id: <1620296299-125105-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.44 as
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

Variable 'ret' is set to zero but this value is never read as it is
overwritten with a new value later on, hence it is a redundant
assignment and can be removed.

Clean up the following clang-analyzer warning:

lib/asn1_encoder.c:167:2: warning: Value stored to 'ret' is never read
[clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 lib/asn1_encoder.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/lib/asn1_encoder.c b/lib/asn1_encoder.c
index 41e71aa..0d287ea 100644
--- a/lib/asn1_encoder.c
+++ b/lib/asn1_encoder.c
@@ -164,8 +164,6 @@ static int asn1_encode_oid_digit(unsigned char **_data, int *data_len, u32 oid)
 
 	data_len -= 3;
 
-	ret = 0;
-
 	for (i = 2; i < oid_len; i++) {
 		ret = asn1_encode_oid_digit(&d, &data_len, oid[i]);
 		if (ret < 0)
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1620296299-125105-1-git-send-email-yang.lee%40linux.alibaba.com.
