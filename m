Return-Path: <clang-built-linux+bncBCG4DNXAQYPBBRUPXKAAMGQEFVRWEHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 89ADE302308
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 09:56:40 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id s64sf8598085yba.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 00:56:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611564999; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZkYcryepe3e3yVa8L2LRoRSRo1z079XrqvL2A1H5TodNgJXq8fmK4KCCKKCUY44cW4
         HKMkuQkvgm5TkAwko4N9Ah3pJSq49KFSFo4LAyYtLzpG33yyKqnLVMpkqMkOpvLarME/
         LaJYWBBUHESMCV+sH4EQ6RT19VVBXwCzzWRw6FO2kavGeG1erKWVu7AGKR54QxpuXeEX
         bhFOrnFSxLm9FOaTDeG1jZD9XYSPmJeONUopLR1wm/5UXrxJaIgAkToEq6gI/1sXBgQU
         Cji+THF0wT2Ywve0n3vF6VvOKYvL6yKlWLxk64nb6mJQVHc2mMtrZ1LXMEDby7wmeIOP
         Hn5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=OpcQZAqTqzj7sq8niRvLVEu6+heNMrMWYY74bnVdgYQ=;
        b=huXvRFCASC3HPm0zrA6POPfNpqMbabg3sePc+ipAAsV7JhJVFQKBTJUJWxjQvkC2Z/
         IiOPCJLD2SW/SOYT1ZVyIl5ipJupXVVNFzu3kXk2xlM/uFTwzRwF+6XQwMpmRLbLfbl/
         BaKfzVjF4P4cdsgeno7D8EGSxyX4gC+je84gD7rp0RY4qI6VOcg7CzW3sK/BDmU03K/F
         vFcwewgFwvsmQDyblzxkfcXIErOyGDSDMPE6y0jWXd0W996llz6I1/v7F0D1ZLNkn7bf
         eipP5jLeDuL1bIoM9sN2UCV6TEjv/91v5MxQ/By5Ofj8EkfO8X9/k/k9y7NAHrp7cjba
         /r8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WoCye80M;
       spf=pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=candlesea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OpcQZAqTqzj7sq8niRvLVEu6+heNMrMWYY74bnVdgYQ=;
        b=mXePRR0Onqioc7lgsuVK4K3JFDxeCzoM0KHGNDKqb6PcTQDiEsrAk9Qj0LKUagIJyS
         /sufmJGaUY814hPcIg46asj7sMkinqZv0Qr8HqdDLQJFuFe7IZYTvBaDlBecGWRnhKt1
         h/y4Wi9tkGy/vfY8F+lXWG4hYjx4D7IEol7sIwJQkkMG5zIsmaQbHNJ+o33RGiWRwHSP
         mXIepoj8mmklvyWrn8pxlTS7QSzxtRqR7gEDF+UttefxNwm5vQGQXHYgANiXzEPd4rOR
         ciMfZVhiIQj4fSRDha4VXXmMHDzfupX2BApmNtZhTfFCYdGPJS+h7gKCyttiBufgYXgJ
         N5jA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OpcQZAqTqzj7sq8niRvLVEu6+heNMrMWYY74bnVdgYQ=;
        b=UOi/75GtKy4SzfREJGflTfj8OywpwXK00t1JUau+/oPHyQ1mTxr8SkM1CSYEpHzgu0
         LNrsYsO/3n+iE8LqjV1bbgP3N6MG6x04kgMNYcUbaOC4kOEms+dcc4uLhCmRIyI92ioL
         LYTizFMzu8r91U8m52c9sR3GygsROOis28CuzW0I0z3lmEQu3+8AsiZ5AptC4PqK3pyW
         yYZGI42jmSL0i6svTkh4sappeQVuQbb16uvGwiO/ZVio/Xc0IaMbUtKD0ovgBKiEKO/u
         U68AYdHSv28tsnrYuzoCXyVOMwEJ9Nlg3h1aVCMtTHv/JXU2eTIjQwAz8SK3o/EzTyF/
         4EcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OpcQZAqTqzj7sq8niRvLVEu6+heNMrMWYY74bnVdgYQ=;
        b=XJ5YbCuuC1nTV1MyluIGPUjDdxXPbrEeR2Xzhhsogw1WSvwpjq5l54Fkr26/gUvT9B
         azA8iRCx0qMzfiTqa076sWJY0iyL6q9TRaA0q50R+AYHC12ZqoHNzN5jIjNn792qXJu9
         jdx/tPBXs8adWa/FObpgtz4TUoc+Ksau2BJdsWQzJ9Vb5I6Th6x6U3PSsHxTgPENt4jp
         kUVOh3XMv8v4oZ5twX2HZeIBqLoLbdIGuSLp8ybBCsboTKqI9e5wASTwAcPkyvE4lC/H
         yLdTBL0Cv1WsYtHwfwSWE1Diu+9O5NGN6Y7cN8C8qYpcJCYyoMWwiNEZbQjr0B9mUfFK
         DrIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533AzxlIpCulrX7AbAfywIPUnejsoUp5Y4MYASDHKVEaeMPdWC7M
	kP9sCDw2KRLfy9TW/2QRYjI=
X-Google-Smtp-Source: ABdhPJxg1t6xYGuus6vzK8P8eTbVCROA2XQ+B/ja6t1zY0BN8k3qRkrrBBkT7Lj3q4Uit5Aa3X8LMQ==
X-Received: by 2002:a25:ad41:: with SMTP id l1mr23714165ybe.98.1611564999322;
        Mon, 25 Jan 2021 00:56:39 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:828e:: with SMTP id r14ls6614302ybk.7.gmail; Mon, 25 Jan
 2021 00:56:38 -0800 (PST)
X-Received: by 2002:a25:318a:: with SMTP id x132mr22412784ybx.488.1611564998366;
        Mon, 25 Jan 2021 00:56:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611564998; cv=none;
        d=google.com; s=arc-20160816;
        b=bXa8vtM2FuqqKjJ1kTCqurNJ0tUuDP6fvxppbQQQJG/hGaenli9Zm5ekPNk2QD1hCV
         MtAxXbk4hK3y8kK/agY94Uc/PT2sWea7LbApW2xjeHaUsq/1ASOR61h9BYFrKH2bd5k4
         Pnt61hA2wOyh3XAqzlIm6H5lcGwV/h3V/w9AXHv951Mif8nsTtxq0HcSxrvI/uYwv078
         lgtTdCYyXMrM6cnbnHijrgfhJbgjtsS/yN/84A7a89knxabwHrvR+SDbk4tmW4bGpu0R
         mkSyfxj8yJPn9Ak0jQ7CE7yWQmoOvZsOA7rvT7aKkuqwpFW8oBHWYlgz/F58H9BhI1CT
         enAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=0Tg3AO11+laABwQxj64s25+YkKlIw2DDqPTzk+9m3NA=;
        b=yv0r14H6ShiWvmLa6+/caLikHhrGcfFfX9qBMIAhTD3yw5HZzYJH9QBi4J8BsZ3lSq
         SXXRrvjdhaKAbtRiY48UCc/U4hMcirevotNrfoGPfy2fDeEP7Zx1i47MOF0AOK+xR1AV
         R6Rf9HCkK0feblMTD844OTyNNzzitypBHQQlLLfBcO7C1I985lBS0ooguPgQpNT/IRFh
         wZnxw6lK+65IU7bv87/vWBWec5EPM+rTso59/5jrTcJ5QsC6/nTVxUmJ6g2GtOKAOorm
         unSO0qh+Z/+6T/hUbkxqAKS7p3SFQEcCjbWrtIAM2R3dwe2YMwGjiXnvoE/C5YGvQUMR
         hTSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WoCye80M;
       spf=pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=candlesea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id x13si1610805ybk.3.2021.01.25.00.56.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jan 2021 00:56:38 -0800 (PST)
Received-SPF: pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id j12so7951386pjy.5
        for <clang-built-linux@googlegroups.com>; Mon, 25 Jan 2021 00:56:38 -0800 (PST)
X-Received: by 2002:a17:902:bd01:b029:da:3d4f:abe1 with SMTP id p1-20020a170902bd01b02900da3d4fabe1mr18912704pls.16.1611564997676;
        Mon, 25 Jan 2021 00:56:37 -0800 (PST)
Received: from bj04616pcu01.spreadtrum.com ([117.18.48.82])
        by smtp.gmail.com with ESMTPSA id m18sm12918724pfd.206.2021.01.25.00.56.35
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Jan 2021 00:56:37 -0800 (PST)
From: Candle Sun <candlesea@gmail.com>
To: keescook@chromium.org
Cc: arnd@arndb.de,
	gregkh@linuxfoundation.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	candle.sun@unisoc.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] lkdtm: fix memory copy size for WRITE_KERN
Date: Mon, 25 Jan 2021 16:56:22 +0800
Message-Id: <20210125085622.2322-1-candlesea@gmail.com>
X-Mailer: git-send-email 2.17.0
X-Original-Sender: Candlesea@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WoCye80M;       spf=pass
 (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::1033
 as permitted sender) smtp.mailfrom=candlesea@gmail.com;       dmarc=pass
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

From: Candle Sun <candle.sun@unisoc.com>

Though do_overwritten() follows do_nothing() in source code, the final
memory address order is determined by compiler. We can't always assume
address of do_overwritten() is bigger than do_nothing(). At least the
Clang we are using places do_overwritten() before do_nothing() in the
object. This causes the copy size in lkdtm_WRITE_KERN() is *really*
big and WRITE_KERN test on ARM32 arch will fail.

Compare the address order before doing the subtraction.

Signed-off-by: Candle Sun <candle.sun@unisoc.com>
---
 drivers/misc/lkdtm/perms.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/misc/lkdtm/perms.c b/drivers/misc/lkdtm/perms.c
index 2dede2ef658f..fbfbdf89d668 100644
--- a/drivers/misc/lkdtm/perms.c
+++ b/drivers/misc/lkdtm/perms.c
@@ -31,13 +31,13 @@ static unsigned long ro_after_init __ro_after_init = 0x55AA5500;
  * This just returns to the caller. It is designed to be copied into
  * non-executable memory regions.
  */
-static void do_nothing(void)
+static noinline void do_nothing(void)
 {
 	return;
 }
 
 /* Must immediately follow do_nothing for size calculuations to work out. */
-static void do_overwritten(void)
+static noinline void do_overwritten(void)
 {
 	pr_info("do_overwritten wasn't overwritten!\n");
 	return;
@@ -110,15 +110,14 @@ void lkdtm_WRITE_RO_AFTER_INIT(void)
 
 void lkdtm_WRITE_KERN(void)
 {
-	size_t size;
-	volatile unsigned char *ptr;
+	unsigned long value_dow = (unsigned long)do_overwritten;
+	unsigned long value_do =  (unsigned long)do_nothing;
+	size_t size = (size_t)(value_dow > value_do ?
+			value_dow - value_do : value_do - value_dow);
 
-	size = (unsigned long)do_overwritten - (unsigned long)do_nothing;
-	ptr = (unsigned char *)do_overwritten;
-
-	pr_info("attempting bad %zu byte write at %px\n", size, ptr);
-	memcpy((void *)ptr, (unsigned char *)do_nothing, size);
-	flush_icache_range((unsigned long)ptr, (unsigned long)(ptr + size));
+	pr_info("attempting bad %zu byte write at %px\n", size, do_overwritten);
+	memcpy((void *)value_dow, (void *)value_do, size);
+	flush_icache_range(value_dow, value_dow + (unsigned long)size);
 	pr_err("FAIL: survived bad write\n");
 
 	do_overwritten();
-- 
2.17.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210125085622.2322-1-candlesea%40gmail.com.
