Return-Path: <clang-built-linux+bncBCTZ5O62V4ORBG4Y3WAAMGQEOTTXOMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B56309FB6
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 01:32:28 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id j5sf12348094ila.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 Jan 2021 16:32:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612139547; cv=pass;
        d=google.com; s=arc-20160816;
        b=c1xeBx5qcTThKaRF0B1bbNqSBbnzubOOPOS2uQSEzozSaCunDr24yiz8j4dRmk77oI
         fLMNfPJD8vYLPrZEwjMIEfjpHLPOp0mOnkj+ZJ2WndM7K2wPqPukUgYHvgAKhLVusDrN
         TE5pYoa5WLxn61y+ns1Fry6ZuV1zLxGkPqt6BsAXt9I3V+VC1xlidYXztN9IAHGAbo9e
         bB1pVTm3qBx8zJ8iCZcSx1+Hh+izGO+NUMUhXuM4ePAhiFphGwQCQq3TYoVCuAJF06rY
         DxoP9WoLsgo1XA1r2WG+bMkEWHfpRHHAhjurbp1fL3iCW9VCZHr8vT56nNNoYCTR6JUL
         bBzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=lmjjznXN7VfjFW+ZephU2kXf51vVkHquInJGgffGUC0=;
        b=fb8Azhcyy9Qk3srFHuzdKJ/OT1VSd0PXn7RMKFgNUDjpFoZiRfHSoxC1j/+520HEzM
         RYrCDUOPnTTFrlimQ9hYbVmSBPnk9cJuTqtNuZQpTmjOSNfTli8uysROmlPc6Pv4INln
         f/iVO3DwEaUuS5REHHqw/LjrPEeoTtkBV4OyTufPn6Dzwv9wakNx2CfWZg96Nk92qEv6
         OdPbBF151oV6HhJK83SqOj345fQ4gFPzYsscZJGzqc9I+JOMXFq1v+b2jvooEdyb9LDX
         elQ3vHEySiCiFOeYHKdqgdds1s4zbg5lCjZtxvTg86XuRQuQBJEar8KLBsPi2jTbTrQd
         f9HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zj+sdCww;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lmjjznXN7VfjFW+ZephU2kXf51vVkHquInJGgffGUC0=;
        b=TuXIXrgrr1L3KWWOGZyAUI5TZ5l7wf8S/Fn7AHRiKGUd78Mcn5UgbRlZvokD8/XNWb
         LPEXfC7v1uW4F7xXpuzS16q6enXnh55MXCAsTx8lGPicGuxkEoebrhZn+sQCdxLrGlYM
         ++AZBW3BgLbyH1q2w3urJdou9PJLVf3UQhaY/4sBfl2jawICCi5mdiJ4KLf23Bowe/x9
         6NezY5s6nHm7ZvZL7gxB8FN8PxOWOzaV02tI7kOIwgek1wyO7AZjcRpYmLbJHvK3qFSO
         lzw++7WQorfj6tbgaLwvLc0mklD3cnqEDuPN0t8DsKp8hHZefkAsoHT3hHBRiFUF+BhH
         GbhQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lmjjznXN7VfjFW+ZephU2kXf51vVkHquInJGgffGUC0=;
        b=Ib/I6TOt3u+1kaRGX6e4TMxQDC43M+7Js3PbvaCY7wZsMXlGZIZ74W5VcDGYMJ2Yu4
         RtgRgudXfddSDDbbCj9rOKiyTkov+6O7sf0087MGJz3iNqt9utC7iHJl+Kl61YATB8PH
         ntPkYseXeYVbf3xnM8Kqe9IYnzAnEuO93DaZCLaKaUHJpXJ+/D56YsltDunmhiRoLRXM
         ubQszYG6mXfOJE6znm5JpbuO5uTs1nNsN/yZK8iYeQBfJNRZSs0Yq4yFfLBDJN2XeHxP
         zcpAi8wGigko8xMPUI0IDvULZ72+1T4d4T1WQJAbeMDAFZGbtzoTbaKX8rjH7Bwd43gW
         vYlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lmjjznXN7VfjFW+ZephU2kXf51vVkHquInJGgffGUC0=;
        b=tKT8gyFPpFtfbmy3NRwubPocA8fUf5sfew1IrZHR6mJOyarCFcyMn/jIV4+ykc2WQ3
         WiQZkYj1WW1ZSKPVg+s0IDk5Rb8yvRaVFi4xXud0erBtfbY9ovnLMooVMmfGplnjtkPW
         gxGzEKa78DDgjE/V8GbgUd7+ytLAks6/Hk347S4Z+9qxqz8mmqu5+6q+NCsj5xMVcDdx
         CbqNqPScghUgjx+Au3KsSDaRrndvCWLAhqRg/SWcIIi4MCxXs4pItPKdWXDoL+1Pagxp
         CZarBFkoI5ThMqEutJ312eXy2QaprtzolqC328MhONEq4zT55b6QtxqRJVQXWoinWCJb
         XQdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530K8D5ng0BkIUGGG2X05BnF2HbUJX0mAX1BQIbJcvszfuFDnbds
	oz/42sdOYP1gzrw9mxUNkZQ=
X-Google-Smtp-Source: ABdhPJw/6WHff3i15hO0LvpR97OzntTuf0LFClmIKZVV42K60uMhcaqlVYCDnjAVp5JO5RSbtYMIaA==
X-Received: by 2002:a6b:fb0f:: with SMTP id h15mr10681935iog.27.1612139547717;
        Sun, 31 Jan 2021 16:32:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1385:: with SMTP id d5ls3441792ilo.5.gmail; Sun, 31
 Jan 2021 16:32:27 -0800 (PST)
X-Received: by 2002:a92:8b92:: with SMTP id i140mr11744949ild.33.1612139547329;
        Sun, 31 Jan 2021 16:32:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612139547; cv=none;
        d=google.com; s=arc-20160816;
        b=Kg4cosfG93ndRzX0RBsAkjKYpB6j8GKch3pxjfk3jAV6BRql86xVBn99YNJt/CT8nN
         ryYjmV/vtDalfzaMO5/Wip42hEjK8zcvzeZpAB1KKStOhVTyESOwLPcQCxCJWxWBjAfV
         MwvDcp+st/dwDPuJoXTQvhmojDFwuyguOl/kXCt25uxgXahEpKgQ5rp9f+U9L0/fTIF7
         8R9CBNaTPs0fDHlF7sqXZBUR2od1kHD4zqh3RkvalJUQU/hemxHakZDIs66vEgLO5S9y
         aVpDaOJ3tGhnTu5NJqmQXqIlxFIPlBb3wIwXg25V1OxbASeJ1oBkzV8zgn4hIUJtEkzq
         5k3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Q7jA619CFLWmFa7U9RCqRtrwaxAtDkBtNPUOaZVyUNg=;
        b=015XvT49CZ0eicxD6MtuwMIYF+oWvsh26TV5Z3pyy02lcKHq9cXCr8inGLqVMjtXny
         WM+iEeLXr2jjlA6pvYvtlRoNu763bGDVU+tSfmraFyyKsq/oM9OTgOFoQIveRXcZoVQB
         WdXG3CAGwvuJxEF91k0Ny/D+Oq3v6DMHy5HpOWcgEuAzt24hujYJnsrWoe1QQ6mK+oZw
         ckrMhtYgtplPNo/zLFc3LAYR8IHjlqgTolXrW23sDxf3i+1O0pxw0o8FSVzw/+2HsbDV
         44LS5TOMlkgA1u5CVb9airu7xi2HlYvKaG+fIJ773fYqlc3INSmnzoHXj8wAa7fGBHmR
         siPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zj+sdCww;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com. [2607:f8b0:4864:20::129])
        by gmr-mx.google.com with ESMTPS id j17si71546ilg.5.2021.01.31.16.32.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 31 Jan 2021 16:32:27 -0800 (PST)
Received-SPF: pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) client-ip=2607:f8b0:4864:20::129;
Received: by mail-il1-x129.google.com with SMTP id q5so14017397ilc.10
        for <clang-built-linux@googlegroups.com>; Sun, 31 Jan 2021 16:32:27 -0800 (PST)
X-Received: by 2002:a05:6e02:c08:: with SMTP id d8mr4896115ile.102.1612139547154;
        Sun, 31 Jan 2021 16:32:27 -0800 (PST)
Received: from llvm-development.us-central1-a.c.llvm-285123.internal (131.28.69.34.bc.googleusercontent.com. [34.69.28.131])
        by smtp.googlemail.com with ESMTPSA id x64sm8529485ilk.47.2021.01.31.16.32.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jan 2021 16:32:26 -0800 (PST)
From: Vinicius Tinti <viniciustinti@gmail.com>
To: Andreas Dilger <adilger.kernel@dilger.ca>,
	Nathan Chancellor <natechancellor@gmail.com>
Cc: Theodore Ts'o <tytso@mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vinicius Tinti <viniciustinti@gmail.com>,
	linux-ext4@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2] ext4: Enable code path when DX_DEBUG is set
Date: Mon,  1 Feb 2021 00:31:25 +0000
Message-Id: <20210201003125.90257-1-viniciustinti@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <AAB32610-D238-4137-96DE-33655AAAB545@dilger.ca>
References: <AAB32610-D238-4137-96DE-33655AAAB545@dilger.ca>
MIME-Version: 1.0
X-Original-Sender: viniciustinti@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Zj+sdCww;       spf=pass
 (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::129
 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;       dmarc=pass
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

By enabling -Wunreachable-code-aggressive on Clang the following code
paths are unreachable.

This has been present since commit ac27a0ec112a ("[PATCH] ext4: initial
copy of files from ext3") and fs/ext3 had it present at the beginning of
git history. It has not been changed since.

Clang warns:

fs/ext4/namei.c:831:17: warning: code will never be executed
[-Wunreachable-code]
                        unsigned n = count - 1;
                                     ^~~~~
fs/ext4/namei.c:830:7: note: silence by adding parentheses to mark code as
explicitly dead
                if (0) { // linear search cross check
                    ^
                    /* DISABLES CODE */ ( )

Signed-off-by: Vinicius Tinti <viniciustinti@gmail.com>
---
 fs/ext4/namei.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/fs/ext4/namei.c b/fs/ext4/namei.c
index cf652ba3e74d..46ae6a4e4be5 100644
--- a/fs/ext4/namei.c
+++ b/fs/ext4/namei.c
@@ -827,20 +827,21 @@ dx_probe(struct ext4_filename *fname, struct inode *dir,
 				p = m + 1;
 		}
 
-		if (0) { // linear search cross check
-			unsigned n = count - 1;
-			at = entries;
-			while (n--)
+#ifdef DX_DEBUG
+		// linear search cross check
+		unsigned n = count - 1;
+		at = entries;
+		while (n--)
+		{
+			dxtrace(printk(KERN_CONT ","));
+			if (dx_get_hash(++at) > hash)
 			{
-				dxtrace(printk(KERN_CONT ","));
-				if (dx_get_hash(++at) > hash)
-				{
-					at--;
-					break;
-				}
+				at--;
+				break;
 			}
-			ASSERT(at == p - 1);
 		}
+		ASSERT(at == p - 1);
+#endif
 
 		at = p - 1;
 		dxtrace(printk(KERN_CONT " %x->%u\n",
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210201003125.90257-1-viniciustinti%40gmail.com.
