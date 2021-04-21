Return-Path: <clang-built-linux+bncBAABBF64QCCAMGQEILA62RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F306366D3B
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 15:52:24 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id s10-20020a4ac80a0000b02901ef5aed8f41sf3324121ooq.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 06:52:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619013143; cv=pass;
        d=google.com; s=arc-20160816;
        b=MwppzBFxjBDxk3BNKtZqrESpbK4ypai6byTj4UoOBBruBURuboRb5Chig9e8LnDLTb
         S/XrK/zZZoy94gh5zTdwW1QS3u7tka8ZW3s+00g/bGclXBF5BbygpBCMAEDpF3TP5Wx6
         fQqx2aT3NlEylcgnoz5GOLoDGKe3mvBiJ0gHUo97KevFHT/X/qWZTGlarlYN4qiAYT5E
         fETlU0zfrfqJspTJfAwpffqE8V81ikP0e6gVaXsQwtmqmIbm3O0rebMGeX3RSCEDDT3M
         94QdWM+pWoS7HGS55rP9B3SQEKkif6zbCQDBJpVC7Gk04PiQWqEq//yqhNCiCq1nxLQn
         z45g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Lm6jMRB/UoEi/Osq1ujjunflChruvNUJaLfbVmtLTjw=;
        b=uN4P0H/XF58Xb1JgZTnIvzOQp4eOVg2ke/x8JbreaVct+YwawReZpqvwsr+tS2/uZn
         3PIITM7OzU/4HDtTUcj70Kuzo5gSDwmO5COvmJsxNJDWdPZO+G04awgfS9H0sIzg9Pn9
         UJ6oOjNnVT7nRNCBIGs5IHMqYNCbIietFbYti13HDzOwOO4g1/+meZl9EnhqYP2AIwSV
         D85etW71uIzrYiSMbQwN9GuLQ+f7hbWDC3dEw0XUN0D7P0J1bQXzJEVdh2v9whX1dZs5
         PGEi00J3uPT1/TGbrw8VT1hI2Dp6ehd4XKzgEGxX22qDYBqk9Zykb70Z0nP8FBzlX9f6
         xBcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=htVAWSN7;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lm6jMRB/UoEi/Osq1ujjunflChruvNUJaLfbVmtLTjw=;
        b=oC9XdVPBud2eIMAFMQJv6eolDE7Tev0GhTmYxdzTdoe3fDxEbgoKf+WjRmb46WSc1W
         8GLFtk/Q666u/0klLPW64VU2PUXBvb1sLY5ReIrVmYAMaasJEejIr4yPnmdDWhsgqMp8
         am1bBKhZnvg4BoFdW/GX9ZM4s2hmOVkD9Ycrd6rnRdyuTbg/cPCi++gBYFCBKp+BympO
         g97OKIdDD07JodKnsxOkEth03HkDZYKTePYkrkYEoHkC4LLUW+COQOYLO1l7NJLNLXRN
         ABCyyCMhJBbU0P2OqorII8GRw5wblvul82gPQ6JwjWIraBoaPD4lkGdR9gQsw+bO3Zvm
         ItaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Lm6jMRB/UoEi/Osq1ujjunflChruvNUJaLfbVmtLTjw=;
        b=cTKC8l5rkHpJCiXQaw8KGKWsUgBuEg1Ww1I3zF+PQOpRJuwY+A3Jt+q5hEgFgxnn2d
         oC7vlkdgNUo1Xb2oYCYKSv6ayPdyARkN42s/EoJ0NYvgrUIwJrNjEkAUqufb45uV3Cf7
         DfhssRVpKLqiWjbx3h0cVlIk3qbwtDblKimgiqPlEfAYcOew8YAiWxWuMZiv6YZynGw3
         cfJjXP6cLrwEAZzz2w2shvuZVN93H2R/IXV8KHkYWdogXH4jigwchvkGt1EU8S+No4HE
         FJC8z/TVxbgaITcU0JTbpi0UAjoUdCPV8lQp9BDrf8GET06GP7heOI/ec9MWm/nuaNlT
         a8/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339BrpOvUHev2BCruoqar6lXCd1Fr5D9dMsg41Wf1u09KNJC45m
	vJ9+xSl9zVmRUbXo+wdm1OE=
X-Google-Smtp-Source: ABdhPJxD2orI/dlq6DdLAAH7S2Ff87LQZcHq57y31MFJq6KY5EopVeQY7g/4hTtYYs34qEe0B4kd+w==
X-Received: by 2002:a4a:cb0c:: with SMTP id r12mr10151778ooq.90.1619013143174;
        Wed, 21 Apr 2021 06:52:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4b11:: with SMTP id q17ls567663otf.10.gmail; Wed, 21 Apr
 2021 06:52:22 -0700 (PDT)
X-Received: by 2002:a9d:63d6:: with SMTP id e22mr22496384otl.125.1619013142886;
        Wed, 21 Apr 2021 06:52:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619013142; cv=none;
        d=google.com; s=arc-20160816;
        b=STfMS+8e7Z1kdQ3nZA5seJu7XmE5nCm3LN2nFzsNFYvnzEPH8Plk+XGGpe2JUmNlJC
         lbaDuv5FSRGr/Gp9HrcJBwR7xahtAD8ijmWLomu5wU898pkWJV3srQ8ZswhBqhqpyt3a
         INKxNaNtca9p1ae24yolVKSLnn89pckkIg+Y5bVrZGViYORN1+HZcCJBGcdJqJeRqyMg
         f43Q6unY4gKhSlnjXfYkW41Z4nHZswkly1JmkXDQMjKtpvzCbqShv4Mu2Q90Pkmg7Tli
         MaIGLxGFo8hODs/+8koqCnTIT9sg8mDge5A1qUKPXqYdsm/9oBNHJZcqSfJXyulsQazv
         Ia8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=5wNzUqdSVSzGuFBfMeimEnnQr4BWqy/PJDyhMj+V/Wo=;
        b=su1oDN4m7Qs4FSxI7Gyy5/OzhPCwIJBitS6XwJ7osxDEzsonh6QPPTGO3c8yUxJez+
         0g0yQpMObd6G0cGvEY+KBFyI4Q7a/hQLkWJ7R/tezE60JjEtC6txBjB0379EVhURrN4I
         +cmFslCWhkLwRGRtRAADfSSF/D7QUfn9f1w9etJ5fAq3jfxG7tsFQ0QU/r5VX7BhhfOv
         LokUBjZIAKnwRuodsgmyEd0QjCJqWjc2jkBR4ZjjBLwCPYYQudozolPJLIhkQJKzX+t0
         gGRTLR+/oALdmWhIbgC+x+RPzjCVnuxPt/Q4UnP5TcGkZIFtIXK38gSFaCXVkJj0ZLwo
         BXKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=htVAWSN7;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d12si164048oib.0.2021.04.21.06.52.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 06:52:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C18DD6144C;
	Wed, 21 Apr 2021 13:52:19 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Maxim Levitsky <maximlevitsky@gmail.com>,
	Alex Dubov <oakad@yahoo.com>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jing Xiangfeng <jingxiangfeng@huawei.com>,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
	linux-mmc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] memstick: r592: ignore kfifo_out() return code again
Date: Wed, 21 Apr 2021 15:51:58 +0200
Message-Id: <20210421135215.3414589-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=htVAWSN7;       spf=pass
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

A minor cleanup to address a clang warning removed an assigned
but unused local variable, but this now caused a gcc warning as
kfifo_out() is annotated to require checking its return code:

In file included from drivers/memstick/host/r592.h:13,
                 from drivers/memstick/host/r592.c:21:
drivers/memstick/host/r592.c: In function 'r592_flush_fifo_write':
include/linux/kfifo.h:588:1: error: ignoring return value of '__kfifo_uint_must_check_helper' declared with attribute 'warn_unused_result' [-Werror=unused-result]
  588 | __kfifo_uint_must_check_helper( \
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  589 | ({ \
      | ~~~~
  590 |         typeof((fifo) + 1) __tmp = (fifo); \
      |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  591 |         typeof(__tmp->ptr) __buf = (buf); \
      |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  592 |         unsigned long __n = (n); \
      |         ~~~~~~~~~~~~~~~~~~~~~~~~~~
  593 |         const size_t __recsize = sizeof(*__tmp->rectype); \
      |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  594 |         struct __kfifo *__kfifo = &__tmp->kfifo; \
      |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  595 |         (__recsize) ?\
      |         ~~~~~~~~~~~~~~
  596 |         __kfifo_out_r(__kfifo, __buf, __n, __recsize) : \
      |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  597 |         __kfifo_out(__kfifo, __buf, __n); \
      |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  598 | }) \
      | ~~~~
  599 | )
      | ~
drivers/memstick/host/r592.c:367:9: note: in expansion of macro 'kfifo_out'
  367 |         kfifo_out(&dev->pio_fifo, buffer, 4);
      |         ^~~~~~~~~

The value was never checked here, and the purpose of the function
is only to flush the contents, so restore the old behavior but
add a cast to void and a comment, which hopefully warns with neither
gcc nor clang now.

If anyone has an idea for how to fix it without ignoring the return
code, that is probably better.

Fixes: 4b00ed3c5072 ("memstick: r592: remove unused variable")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/memstick/host/r592.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/memstick/host/r592.c b/drivers/memstick/host/r592.c
index 026fadaa1d5d..615a83782e55 100644
--- a/drivers/memstick/host/r592.c
+++ b/drivers/memstick/host/r592.c
@@ -359,12 +359,15 @@ static void r592_write_fifo_pio(struct r592_device *dev,
 /* Flushes the temporary FIFO used to make aligned DWORD writes */
 static void r592_flush_fifo_write(struct r592_device *dev)
 {
+	int ret;
 	u8 buffer[4] = { 0 };
 
 	if (kfifo_is_empty(&dev->pio_fifo))
 		return;
 
-	kfifo_out(&dev->pio_fifo, buffer, 4);
+	ret = kfifo_out(&dev->pio_fifo, buffer, 4);
+	/* intentionally ignore __must_check return code */
+	(void)ret;
 	r592_write_reg_raw_be(dev, R592_FIFO_PIO, *(u32 *)buffer);
 }
 
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210421135215.3414589-1-arnd%40kernel.org.
