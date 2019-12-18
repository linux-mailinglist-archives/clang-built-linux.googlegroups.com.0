Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWFO43XQKGQE3W7L5CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C47123DA6
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 04:04:58 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id b5sf434700oii.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 19:04:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576638296; cv=pass;
        d=google.com; s=arc-20160816;
        b=NN94KNU6r4GQ6FtisUHuxCdNYlIf8pr3xhddeNpip4ToWMhHachuDotLu2tY4DJCJU
         nAFUl2B75V48eHpaFq2Nqz4zdEtQ/Gg5LY69A1UCrLWW+xG+h3z3u2J/6xzGPXrs3gpM
         w3XENcVJh6g9z/epJs24DMErQImQn3Sfjin2l5xQ/gj8IYvsFxtOpuKAfaJbG0K6dOmS
         sZpKJ6s5hgjCFihLyiurt7I4jTbcH0P2MTWAR+LUm+xt92u5osRKlQC4sV2F0kucUFqy
         t8y+3X9WSKxwLre0vtqEb1ZFz9Eg+WTf5Oi8d8vDuH2yI8ddTwQTp+xURTvo0laecdNH
         0YKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=RlGhzwooZa4CIHijUlhLGVDWVrZytxqC/mHoaEbyBv4=;
        b=GBpaKKRkaT5Vq7EyiE+TprT5+c7NXmueG4b0udHdY5FSoghCRVUL/bWIftOIjb3mkk
         CK/LNjkWn8ypTX3gwFvS0shgrfYxILfxkPBVDkENuHDHRmya/yBhf3VYEpxY/Rjg3EfJ
         UiuVcXoXOw3jtocjmZipkd0YCikxnHNSzDTPtFpGL+7sb7E68zeACyftOLQengsSlWBu
         5eYo64psG5Jrrz4WU+RX2j+swE5/lM4ksYHoCQzx/PWSuK+F3f1+MmgLj0W6FIdsp6Qd
         IXyR+3M4QXyKAZrXpcnYcX+YFurOk6hO9As/jzx/3ZSOPvS3IiLlMQLQbX791E8K1f17
         yQSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZQNnLXWA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RlGhzwooZa4CIHijUlhLGVDWVrZytxqC/mHoaEbyBv4=;
        b=OSy1sO89pujB2Uj7QxxNnm/aBnBht4mY9gmecaJ7VWa3OhpohdryDiMO+5RB5mfBYa
         zAnXXpya58c+PMkAJPgl3xA0TX9g6exKPfGFkSRg+2yA2sTRw0yWOL1cGSk8oIeWVkdf
         Ywthe1vI0DVvi/buZsclhMQYQ69npkxPaomDhbQ74nFCG1LrRczysQR48ZtjrFb8JIZQ
         8RQ1mUJyqJsApQYTcQWqQGBuYNNcIPybvFULNQoIDgv/ksgtxCMUsArJx2C3YX0RSe9y
         HOFN3IgUUL17qyC/qFqRUBQHQflI1xQjamN8oQqiiUWe/ozexJ8kRp6uiTZF3bFeKeLb
         S+Iw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RlGhzwooZa4CIHijUlhLGVDWVrZytxqC/mHoaEbyBv4=;
        b=J86HiH//t/9mK4K2IKxh+DUU2zB2tO3dxBxKz/Tj+vzfnSe8Lk1oeViHhi1ZJUOVnv
         gori+JlA1ngBoAoScy5VGbvxRQk+1De1QhgM/XQ6sYs+mzj4dLh07s3w9zBm084zUJJ5
         CgLKlLej4iQBtMoe63QoYMLTCrlO14k3r4GMd+PoZTJVLpOARrTFpCG5TnE0VazmMLUU
         jLbFexHYqfHcxNWzau7z2WGUXhvxtWKoV3EoOzwyo8RvoGfw9JVrlJeXkTmIhCKr8ER1
         qM3u2KvDR5CsjkZbm5BisLenyf8Er5BE1QaFohOF/CU1wSy+V4qXxj9df0EXltN0bVFq
         fmQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RlGhzwooZa4CIHijUlhLGVDWVrZytxqC/mHoaEbyBv4=;
        b=ozJ9fdpDrVZKd/CnyOxx/QWHCWgFWWZo6AMWdwuqmu5wqXWdGat0KP8/eJ/spSFYa6
         vvdoYiby8Qwv6sZ7KELZV1MyV8YwcpKSvXK0PATED5iIFu71IW4E8g9bOHUKv9A+g/Dj
         2d0A3EkUCRMMdOLr7mwhFAOwGuGKl+C8XRGFenYWuV60HSjGCmVKm0Lzf6ySflsDvMOL
         C2QgIZn+bXDKaMQEt1Ycupxkzx/FUQPZSKpMud1SDRst6vlrtq3NGBjTk8tRyVxmKxFO
         O0CUACTUDIh1leh2qmUFmXxAjVlWJslw+Em0xkFoIE1aa/rdNOxhsfKiqKOXL/YggRC9
         /OFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV3hr2oCO4v7Ezgtcr/laEqMSg20xWm4JvIh2JkUKeZs7haNnBr
	bq1adt+XHCdsMikKO8wtuKQ=
X-Google-Smtp-Source: APXvYqwJe8stiPUqgsgRfeAN5j2T/oPwHcHww4Oe7NG6CaY7sR5dJ8ilBoI1+b5KMFS5s0CPHw/s8g==
X-Received: by 2002:a9d:6745:: with SMTP id w5mr42260otm.221.1576638296693;
        Tue, 17 Dec 2019 19:04:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d549:: with SMTP id m70ls78900oig.10.gmail; Tue, 17 Dec
 2019 19:04:56 -0800 (PST)
X-Received: by 2002:a54:440f:: with SMTP id k15mr163120oiw.71.1576638296395;
        Tue, 17 Dec 2019 19:04:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576638296; cv=none;
        d=google.com; s=arc-20160816;
        b=UYIlcu9zQbryLwjKIyYyGWaS5I0pWEPzJMUkwo5TDKtbE2EP218vt7OAcechXrt8zS
         jRn7b89AymO6BAijndBL3yiAujC5CFY401uq5KLP9OQWU4AVjLhBCttRQB7l/pPzzkO9
         kjy7FbTntJRrnM1e7ebssIjDbTNykzVYubq/N6hxn4nlUAN18RbrLQt9OHPmrTNMD0XK
         s0ZbW6d7ghirdozxSoekrZuPClwNkfvkh3JrAGVBpnfqR2FdAmr0R/xxM4BMPG7hxJv4
         1AEbT7inwt6uBbq32V7UyH68MP1vGxlUP95KREj2YU5uo7/Lt7zQc9/7frCw2hgKOqPf
         CMsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Qgb6QFyGnQWAwY76V6AQltArKs3hiGbYMFOAjHQ7Svs=;
        b=pPM7SUPmhrq5EsMspYxl9HQ12OoGEyXwhahjEP6EXWPKg72h7FEH08wPa3gNVtoYZP
         y9cQdkD4ylP5K/unoa6bE+7Gkr4vZ7xbBsug5+4WsEcc6HlGWKEb1pihLkR6tbUBLCp5
         BXVntZtqUnWTXTxa4oHItLmrpqPOc+93ioNTb3t4j8BkHh52P5rUOCKKHm/ENfHxMSKJ
         m4QfCmMb4fFokjpLO+OnLji7eTun47T8ficvUhYabkVUZGFK8mzVEeYm00P4pVOOyjlr
         3IO2ZWiaZPG0FChadBWeAkC/Bndw1sBgUP0WbEk5MMzrUqDg1FS9P57Yqc48K5XZaI0i
         wUIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZQNnLXWA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id o26si48651otk.2.2019.12.17.19.04.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 19:04:56 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id l136so371529oig.1
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 19:04:56 -0800 (PST)
X-Received: by 2002:aca:2808:: with SMTP id 8mr175315oix.27.1576638296013;
        Tue, 17 Dec 2019 19:04:56 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id n20sm341000oie.4.2019.12.17.19.04.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 19:04:55 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Steve French <smfrench@gmail.com>
Cc: linux-cifs@vger.kernel.org,
	samba-technical@lists.samba.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] cifs: Adjust indentation in smb2_open_file
Date: Tue, 17 Dec 2019 20:04:51 -0700
Message-Id: <20191218030451.40994-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZQNnLXWA;       spf=pass
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

../fs/cifs/smb2file.c:70:3: warning: misleading indentation; statement
is not part of the previous 'if' [-Wmisleading-indentation]
         if (oparms->tcon->use_resilient) {
         ^
../fs/cifs/smb2file.c:66:2: note: previous statement is here
        if (rc)
        ^
1 warning generated.

This warning occurs because there is a space after the tab on this line.
Remove it so that the indentation is consistent with the Linux kernel
coding style and clang no longer warns.

Fixes: 592fafe644bf ("Add resilienthandles mount parm")
Link: https://github.com/ClangBuiltLinux/linux/issues/826
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 fs/cifs/smb2file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/cifs/smb2file.c b/fs/cifs/smb2file.c
index 8b0b512c5792..afe1f03aabe3 100644
--- a/fs/cifs/smb2file.c
+++ b/fs/cifs/smb2file.c
@@ -67,7 +67,7 @@ smb2_open_file(const unsigned int xid, struct cifs_open_parms *oparms,
 		goto out;
 
 
-	 if (oparms->tcon->use_resilient) {
+	if (oparms->tcon->use_resilient) {
 		/* default timeout is 0, servers pick default (120 seconds) */
 		nr_ioctl_req.Timeout =
 			cpu_to_le32(oparms->tcon->handle_timeout);
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218030451.40994-1-natechancellor%40gmail.com.
