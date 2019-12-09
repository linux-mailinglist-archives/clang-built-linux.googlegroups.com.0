Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQGWXLXQKGQEGSE3QPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 0008311772D
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 21:14:57 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id d189sf4952821ywe.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 12:14:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575922497; cv=pass;
        d=google.com; s=arc-20160816;
        b=hogrS+w1Js7A2SZ6QN3RHEx3NnMi0hWz9GkhH7nBQ1EQdP/AsjZs6dFr/dBtekf3vw
         787U7ONU3D1UX1hclmuduYPBL5RYkDSIllVVTynNn3IhGlEAwVWDzdkvUqkr4QMW5RJg
         rQkV8Z4YKQ3fCD15p6vOby4KaC89DhAVWPgR07GxtR1GsJj6zgW5xgNeKb8GZGxy+Z1K
         CBldXeQf9iH8WHZ5NmtcCx3ecsDQ/v9wZ7piNRjt+DN8ckNuGC3x9kTSuspX8FfZfkQC
         ZfAVLWJq9f7w22TiWw62D6XSlP+gpRQOGgSQ6Vhkyx6U87KpFTSixcgp5VLY+jRoxWZA
         neHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=LkGKbAChAP4nfOJyM4xrRFxw6s2s29WjGETvouuYfqY=;
        b=aP/8uCA4seBVFJl+1OpoPa1Valvpb1cKkQDuClp1KjpeU1n5DmbAjKyKCc8nxi97DP
         rSfKe4+FK62IbIoflKr87MzHUX9cBVEfw8UC0zDxCCGb191obE2f5HcKIJgW1elQleIg
         xWixYWCr1Mg/kKrXg4xA6aauUzEk2kzaa4vVOfhxxIBudIaO6LQPTW8DKD2+0xhtwtGB
         3iqna7wEHt0jDEpeLNyGZ/YU1LGuzUlFVXIwfGsUjBWYh14V3nMSD7OxLUoh7xp6nV4i
         N79+xj6BgilDzQJM5NwrcslwcHpFwaxxj/9mbWsxXM9szyUby/1OuFdBwhQygYJEeBdx
         RO3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=haEST2d9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LkGKbAChAP4nfOJyM4xrRFxw6s2s29WjGETvouuYfqY=;
        b=quLdIfLqhXVYZeuHLySts+y6Dt+T54FJ0Nb6k+WyKCziONeb7E8uTFY/KAZh3g65U1
         KCRR9PKOXOL/l9tFbYmcdv2bMf01jrOnqim1QvimoTDgFArrBD617kb/V0GDbb8G5Boq
         Y2ioRwz98rZo0Elt9yA5hOld/ORvYDNooeHXlMkjJ+X9gz4BVOB5o6ty8C6hWBVOVdFg
         TgqDtuownFXcQosAQ4xHGhlO4eQtQjUHc7Z5L2Yptplhp0jZQu17g8ZiWDwfivb/NIMD
         IHfZbo5/LvaZbx242j71FZs9GG/Jnh5BaY9v6sRZwY3Cno2xrj73ySyfz+gX6v8ShBFv
         rVnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LkGKbAChAP4nfOJyM4xrRFxw6s2s29WjGETvouuYfqY=;
        b=teqCcwDuNatzRCcgBZ4AUWjDk2KCYvmAzp6uiASetAe9i3zey3j/YOPq2j6feBkLvr
         A+d0z49WOlg1OCy4Etdi9zgGP5kcS+NsAhmG2BVMRzmsE65kmvBP4EqbS/mlblItT/Oi
         qaNp6TntbCIkWFp5YRGiijbhVhR2l2MHVF4NtkIKFPmteE2r8MmzIGxYpJnglSM43lyp
         WxfafJqHGM5Y663NPqtlC6bbvi7PIyxjkei+4u+voLE9Ws3B272NDwX5IFiRiJvd2Z+0
         7XuH73lV/HqEzLpeUWNRSa1RCI3IqwT4nMLHeJ7kaWibQv4lGfohvQZDzXwDuIf0j+H+
         ETOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LkGKbAChAP4nfOJyM4xrRFxw6s2s29WjGETvouuYfqY=;
        b=kNYgg16oHArDvWEFYYItOCkGt5XrNEQWZ+6556+n8qcfqjDxiHW6jBShkw8kdl5RHJ
         4Yr4kvouevR5v1tf+ZIOnTnWKKot9Hg53F8b4GmD+Wr7oeF3UZc+2BvEHLwTY+CnjItm
         aNrRyzif5MPUVR/aSQ3VHKJ0K/jNQTwRAxW8MYit01N5v4sA7RCIirPSMghZGiaPwmUq
         j4u91fJqH5SNZuMYnW3VqWVT78DdZa6eKMXhIQW7XQk5Gk8sNAgg+G/RMRFNwOtyLwu4
         1u9MqSSAAWsaKkOJQECrXzshDyLo8gkvShnV8ES1sBrcF1UoOMr/HFYaCvyT67OVWJEo
         vRXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWGNNhuRf+uxn7u+4C/qXVNYuGg6cEnemxpGjn15NNRdmJxOzIl
	AQdpT4bFNj8z/Fo99xxD9kc=
X-Google-Smtp-Source: APXvYqxnAlPCrAzgq+uQmm/V9U+82v6TQAp//SghCj3lXDoEm868ZGguiTF/m1AsPdQuQsoowaT4xA==
X-Received: by 2002:a25:6b47:: with SMTP id o7mr13758495ybm.9.1575922496899;
        Mon, 09 Dec 2019 12:14:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:8644:: with SMTP id w65ls2170522ywf.3.gmail; Mon, 09 Dec
 2019 12:14:56 -0800 (PST)
X-Received: by 2002:a0d:cb4c:: with SMTP id n73mr23429198ywd.193.1575922496482;
        Mon, 09 Dec 2019 12:14:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575922496; cv=none;
        d=google.com; s=arc-20160816;
        b=yKKBt2FeUjySsJ0CDZPFPL83pLQCH7gagj56K/lmPeUqT+FKdXmx28RmpIatwyxQQE
         yyE9ZwpOGkpiM4Q9EUtS0U34NcisgX8WXu79kEPc8jPK/TAsLyCngj/IlHuBZ72anetV
         qyGqI7FRbFC9yiSrvwpK06mC/ur3lRIJZvGK68G6+a5BpewMsM7wtCYr8unPI6bATjBP
         jhPbZhMQ8tO5j8ZingEWWs5LCRshEyu9AUQid+1s7L/3Qpwm5DjGeoDUiu0/wtWb1K5s
         KVyEfVNxvfGh+N6p216W0rFrwvH804FGZWrKFih8ub+8CqM5/bcsZqz1oG8JfpVsZjmT
         nfig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=G4ssoJVMzXYKSaITeXCbCdqWsNm++w07wgKnILG/bgg=;
        b=bqe3tNeqeCnCssYDO2YGv8rxlpzLM3jmgQmLdqiGEvwGMBoPS/pIvvnBvZ4MvE1DNU
         J87rdG+FhTGPiA4kzeURCslWG32pK6hmT1ALrCBwAtzSGRfKHCIdfJDmYIJV2V6PCmsw
         71ZydSqznVzXNIj6hHxslVKkeO+r7XWQMGS5DzyXS0pg9XwtnzGwXM+vEFbVFXiq2keU
         /w5KVzXuE5QSpkbTwzLKWMhX+LFkPpbXkSyEEvKgkpYPi5rsuG0w/CVNf47xUy8eQ4K1
         zrmVNqozBMZWRYrtjE32ZDa+v65YVjAatppcOy7LP00A4UVjn6QGN9Udr05l47VQUioN
         rwIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=haEST2d9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id k63si69268ywe.3.2019.12.09.12.14.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 12:14:56 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id o9so13400607ote.2
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 12:14:56 -0800 (PST)
X-Received: by 2002:a9d:6f11:: with SMTP id n17mr22298966otq.126.1575922495982;
        Mon, 09 Dec 2019 12:14:55 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id z21sm339576oto.52.2019.12.09.12.14.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2019 12:14:55 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Juergen Gross <jgross@suse.com>,
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
	=?UTF-8?q?Roger=20Pau=20Monn=C3=A9?= <roger.pau@citrix.com>,
	Jens Axboe <axboe@kernel.dk>
Cc: Stefano Stabellini <stefano.stabellini@eu.citrix.com>,
	xen-devel@lists.xenproject.org,
	linux-block@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] xen/blkfront: Adjust indentation in xlvbd_alloc_gendisk
Date: Mon,  9 Dec 2019 13:14:44 -0700
Message-Id: <20191209201444.33243-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=haEST2d9;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../drivers/block/xen-blkfront.c:1117:4: warning: misleading indentation;
statement is not part of the previous 'if' [-Wmisleading-indentation]
                nr_parts = PARTS_PER_DISK;
                ^
../drivers/block/xen-blkfront.c:1115:3: note: previous statement is here
                if (err)
                ^

This is because there is a space at the beginning of this line; remove
it so that the indentation is consistent according to the Linux kernel
coding style and clang no longer warns.

While we are here, the previous line has some trailing whitespace; clean
that up as well.

Fixes: c80a420995e7 ("xen-blkfront: handle Xen major numbers other than XENVBD")
Link: https://github.com/ClangBuiltLinux/linux/issues/791
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/block/xen-blkfront.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/block/xen-blkfront.c b/drivers/block/xen-blkfront.c
index a74d03913822..c02be06c5299 100644
--- a/drivers/block/xen-blkfront.c
+++ b/drivers/block/xen-blkfront.c
@@ -1113,8 +1113,8 @@ static int xlvbd_alloc_gendisk(blkif_sector_t capacity,
 	if (!VDEV_IS_EXTENDED(info->vdevice)) {
 		err = xen_translate_vdev(info->vdevice, &minor, &offset);
 		if (err)
-			return err;		
- 		nr_parts = PARTS_PER_DISK;
+			return err;
+		nr_parts = PARTS_PER_DISK;
 	} else {
 		minor = BLKIF_MINOR_EXT(info->vdevice);
 		nr_parts = PARTS_PER_EXT_DISK;
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209201444.33243-1-natechancellor%40gmail.com.
