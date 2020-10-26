Return-Path: <clang-built-linux+bncBAABBWMK3X6AKGQEYXTQGWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 8327F299924
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 22:53:30 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id t15sf4659566pja.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 14:53:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603749209; cv=pass;
        d=google.com; s=arc-20160816;
        b=IZSIb/MiusnC/+ID7hJWT340kBEsh+ncRbzlfSIm9DyS2CZm2va3Pmp4yR4/RTvAET
         9Cri515JVaymJ7De/rDt8xx4LeWK05+wDsc1muTa5zR5h0jD48zTAAbCDTOe32jW2mG7
         6rks208gm+XN93kTlGAySMaXkOTw/mcdT5LMjIGuwq5drWOT4AvNgFucmHGfcLoTtzMS
         67jFpnWeYYkba9/NaTtSliwXa2k47Sh/S/H/BVSHO2/bEFAN0Z9dPbCBs70JCdbG/eJV
         2t4eUqVy/HASKmVQ79RdhpSO82Dc1KGjlJQhVYSsoemRMDaU8UcO+6RbSrrL7C3+R2x6
         naqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=1Ye66X26J/Wo5Ey/txKvrpKNPmD4gPiBuh7VOuh/lrM=;
        b=WRif3REeFvRdIy4YsI67FkVTbFIjR1I9T401m0ljJtF25wGsDZJbw77edfFEHo1k1F
         N0yv6Bn1nMgGPCgMvfNGKzpFK1ZHFMtUKKhp2edhkwnlcdOVv/QkFfjkgP1a4E7ZrHrx
         W3HQPhsKqH57mlocaogxNbjYN27htxobQUFDdTlV5BJD1heRU+CKBKpkJNCC32c+AgGb
         qyoQ5FcvvoQ5e6Z+HQzHZgyu3C4Yd9pCJ4FKjxzX3szLyjrA/br3iWWOKVpUvITircyq
         tZ2od188js8g4L4oW7ZTCNv7E2aRmMZwjPf9MTM/I1jVSOERApYNUfg68ti8hf0QggKd
         Syeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sRv3EjZu;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Ye66X26J/Wo5Ey/txKvrpKNPmD4gPiBuh7VOuh/lrM=;
        b=RXh7q6EjbnRodUftoxfWtixa8AFqQEryrKyUx1mQ4kWyEu7dgp13xJT38/RyCDkf9Y
         SZ4vtQYK6EvoJciWhk9qJ6h6ryXgMr+/8yYpUMK+ZhpAkeu8uSvjleZsbnMVWdS60g2v
         ZRDpCvc8c7wMKXLp4X8gR3k6JML6SQzj3FqqR+tqp5AHz4gZZYhZCJcUUoEbEQ7kEBSg
         QOmZe0KA/WO/xuEHM85ghn99FyPNUnkA+ZDFuqkWVuy15x/NRGTx9/zNSfKEpBZxs9ww
         LJ63CLo3hgZfbd8fFACk3qHW1u0iq4mEEQS3PHDzlmTYiRcHOxBqzLaefUkCSOu5ZkXz
         66wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1Ye66X26J/Wo5Ey/txKvrpKNPmD4gPiBuh7VOuh/lrM=;
        b=e1J4LJz6p+yyhVwJ2QJB9Ew6TXErrEnebiArwsVPo3XGm30nVNNYoipu00MYFXZn89
         jyo9ePb4OQv41795vo68E/6SsYpuVxovdZ0jHE2J3FJZ9wv+0u9Jaa+oUufxfmICfaEc
         7U3ECYa6KIyl+IMqwNSz4VK6ViDGctpv8hMqKJGDMB05btvpel/lx11QDd9zl02o5SBU
         gPBFltv08r827ghVNFgHfL7baP0IVgoa8BD8mzqcuepfRizszn3Bq/848vVou2dX7e0b
         rsdZSUbMTQTX54tgEkauzxhVoyV7MdWevhfmmaaWjZj5RYa1ndDiw/OTSWF8gZVqIizv
         wWYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lmihdqauAtgCDD3/VejOvgJBr13aP+rT1cZKXUUcfLypyrNZB
	bx8DUmGNOaipZ/QbXw3HsCI=
X-Google-Smtp-Source: ABdhPJxJr9fOIhAmtvPO78ejyMy0ATIlyLbQ7vpbHhb2JE9CZNA6DwDe6JUNXuzueFwVN1mUhsCebg==
X-Received: by 2002:a63:7347:: with SMTP id d7mr19233704pgn.63.1603749209177;
        Mon, 26 Oct 2020 14:53:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8046:: with SMTP id e6ls5149326pjw.3.canary-gmail;
 Mon, 26 Oct 2020 14:53:28 -0700 (PDT)
X-Received: by 2002:a17:90a:1501:: with SMTP id l1mr23868886pja.19.1603749208619;
        Mon, 26 Oct 2020 14:53:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603749208; cv=none;
        d=google.com; s=arc-20160816;
        b=Tj71vURxMHEW1tXuetdwN2QfFqZWWOdffknBFknP3UYhhfyPGkaqQtsN0OMxAaRIJI
         Tp9T7aU3Q9aZCMXlgNpDeXO0cctKQAoi1/uSjehtliCPxNjfR3wl7sfTEQVVtX71QH6S
         K8XV3zPY1svNm9ZqqvDrZ1wIrrMBmVVYGdsWvVBNPJrPbozxO30WSoOYUtKAc7IY2pvI
         feDRYCZ1uO3HAmNWtn0fGGYkoJ4QpESDOlHPZSzixl7LkAdX5F7qDl589TELG6ZKS1ei
         saUHNbtQKUvVt94xL6gK8fDRzY2ocv/LbG1zX+ma/TdwIJGZpOG0LNajRUoaQ8qq2R65
         zFMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Rw6njJ3ep7uw2QscceINPBatoZu7MNHoeOiX2XVSsG4=;
        b=zq9+aBnKjy7gTbNB+A20blOFDX6GZxssLh3d8nPTK6KybhsFQPUIStw7Wx56Js2uTE
         +jvuGiIICbiJd2iB0c6bSvGw9Dt3ejtjBOf4/CTsuBydCanNRvWL1qrGImk44AYIM9tG
         JIodlsNVj0qdEUepBg9+0nj5WCcqzvjEXTtmk9q9KwdCsuIoXVAkgxk/QJQkvA28J93k
         KcpgU1sjOeotXnWmvn/d/8vPvi38KjuGxsF8t2TaLR2W+lpe10nqB0KXus4IIYORAcjP
         3nbw4j+fPrFkSwKP4+Z+ZMusLmUdTPNOchGVYUDX01149Qt1vDLDc7WXHb54iLvTeuMa
         PkLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sRv3EjZu;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k126si726383pgk.0.2020.10.26.14.53.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 14:53:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [192.30.34.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 443852084C;
	Mon, 26 Oct 2020 21:53:25 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Tejun Heo <tj@kernel.org>,
	Alexander Viro <viro@zeniv.linux.org.uk>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Amir Goldstein <amir73il@gmail.com>,
	Jan Kara <jack@suse.cz>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] seq_file: fix clang warning for NULL pointer arithmetic
Date: Mon, 26 Oct 2020 22:52:56 +0100
Message-Id: <20201026215321.3894419-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=sRv3EjZu;       spf=pass
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

Clang points out that adding something to NULL is notallowed
in standard C:

fs/kernfs/file.c:127:15: warning: performing pointer arithmetic on a
null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                return NULL + !*ppos;
                       ~~~~ ^
fs/seq_file.c:529:14: warning: performing pointer arithmetic on a
null pointer has undefined behavior [-Wnull-pointer-arithmetic]
        return NULL + (*pos == 0);

Rephrase the function to do the same thing without triggering that
warning. Linux already relies on a specific binary representation
of NULL, so it makes no real difference here. The instance in
kernfs was copied from single_start, so fix both at once.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Fixes: c2b19daf6760 ("sysfs, kernfs: prepare read path for kernfs")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 fs/kernfs/file.c | 2 +-
 fs/seq_file.c    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/kernfs/file.c b/fs/kernfs/file.c
index f277d023ebcd..b55e6ef4d677 100644
--- a/fs/kernfs/file.c
+++ b/fs/kernfs/file.c
@@ -124,7 +124,7 @@ static void *kernfs_seq_start(struct seq_file *sf, loff_t *ppos)
 		 * The same behavior and code as single_open().  Returns
 		 * !NULL if pos is at the beginning; otherwise, NULL.
 		 */
-		return NULL + !*ppos;
+		return (void *)(uintptr_t)!*ppos;
 	}
 }
 
diff --git a/fs/seq_file.c b/fs/seq_file.c
index 31219c1db17d..d456468eb934 100644
--- a/fs/seq_file.c
+++ b/fs/seq_file.c
@@ -526,7 +526,7 @@ EXPORT_SYMBOL(seq_dentry);
 
 static void *single_start(struct seq_file *p, loff_t *pos)
 {
-	return NULL + (*pos == 0);
+	return (void *)(uintptr_t)(*pos == 0);
 }
 
 static void *single_next(struct seq_file *p, void *v, loff_t *pos)
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026215321.3894419-1-arnd%40kernel.org.
