Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB7MGYXUQKGQELGVMCNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3E56DC1B
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 06:13:50 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id v137sf7180254ybb.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 21:13:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563509629; cv=pass;
        d=google.com; s=arc-20160816;
        b=GWqMvH74SrBiZ8qU38YSzmGjLsQ3m1n6Y9N6I2fyR+Kr/41VqNlHH/Tq4od+CJSwNU
         Pk0U0l3DZtXvzkiGJy0Przbcbguvoqa86kw8V2iRULL2wAvrnzIBjzTfemcPi2cEfrdr
         taPuPC7sCbtog/pJQcCT9m1RhLeUW9T2lz+dys0lp5OlQZB9kOCSq0Gl0Ql8uST9C21f
         3CHY+NSBafQ9Hl6drtjXVEdBmI0zQhuxxlPDKbN0wrqDZyx2Uf3Sb1R5Azwg2TIESggK
         7Z2oR6SymRndI4/AwMY58CJ+f1h6jDV/Fc0jilY1umJp60rHXx0ZRj2Slj3K1ZZZ89Ma
         7Rfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Xrvq5Iod3lrBvnPwEqxW3izf9dHLLa2NYCjrBKKY2uo=;
        b=RrGyGXm/qKNuq4wx2O2xWJVFsNJfcBg5EnAH6b4V8vuFkXVfj8ZuN2UTbN0lBDMNkB
         5tQykvGuHkkmlxsesYQ9amJcou+oU+8Ah8tA0fX5g7+H+d+WuL2cTuRnKGAVON52nEAK
         bViGxp33EqYz0usU2N9RhkaI8Ei9Kp/AJKu6eb0M5iN83vSSxGmOnMcj3MXAxzll2ztB
         pyJU7A0hNnmMlpGPDDBM2LfmPm9QRjxa/7m5TxT4utMONrkk4hnKbgpot+S5Igb0CLc5
         U8ME/Vz34ZWUn44cweqW7EpFsHJjTh55KZwhoa9verhlX3YWaOmigbWH/N24gO28qR9X
         VYJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FjqbAk0h;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xrvq5Iod3lrBvnPwEqxW3izf9dHLLa2NYCjrBKKY2uo=;
        b=og/DBjpL+TlteHkvLgJ8ujyOFADpwcZhW6KlY61qjzfro5IwEVii2/dD+++XLRBe+E
         5Jv+n+4e+axwRT5GPP1gIx4bs8bdfxkcUO5JX47YMPq4GTaMJXVtWntUHAE8XXmNChMP
         YZIaGpCn+SOjWZAuE0t37hKFWAsbmz98/dGXPhisOCR7agso5OkUES5fT4ikp64vWRxx
         dC6dDuusMmmoOe4sSXII1E0+zSskqe5EbGvgsBYaLcIsjkzB0cly3x5BbgGgGKJALhVN
         Q94VsUEpVeAVZgaNxtRzFyqu+nbjx6aOUpkC5UdrdaZuuq8M63Ke8+J2bzkSF6c1YjeS
         3Ttg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xrvq5Iod3lrBvnPwEqxW3izf9dHLLa2NYCjrBKKY2uo=;
        b=VSOB160/osFgVFIwrnXFMDPbyhLK9QSAGhEFJcl+jSsOGFB4Qr1aYvRwafVxONldzi
         BuY4aHPE50uRM0YKCuZmzaGLfxLQUHdzLFeFljNDMZMTvi3hRFf2SUsqiMxOfc5HWDxh
         zRJ/I7Is/lHp07R1RWohhMM9o62Yp8tC89EnqRm6nBmMSfIk037NIWCFvzTVPwosfAjL
         BumAbvEUbbnCZUDXGmKrNY2q4O0PwcnvDdvhRRB364dEEAlCGPG8jJlk149wPIifz0AI
         kIWttgtFmOX3ROIYh4shhYvbrYWsFOsubBNKmcT+OhcV93SH72xJS+AauIh9aLpFuYNn
         Yhrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXM6U9OMO5MvTGFBHDaarch06MD+oB/yJdAsSX6tgaNGGiNhcWE
	TYe0YD9BFQQm+bcej3uMmFA=
X-Google-Smtp-Source: APXvYqxP31Udw64o8wCxbub3M/uKOx7jXY3E284EYC2Kcm9Bx5BZIhz2HJCJSG280UK+MunnpmwU7A==
X-Received: by 2002:a81:304f:: with SMTP id w76mr32586045yww.412.1563509629147;
        Thu, 18 Jul 2019 21:13:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7204:: with SMTP id n4ls4116846ybc.1.gmail; Thu, 18 Jul
 2019 21:13:48 -0700 (PDT)
X-Received: by 2002:a25:f209:: with SMTP id i9mr32186058ybe.476.1563509628946;
        Thu, 18 Jul 2019 21:13:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563509628; cv=none;
        d=google.com; s=arc-20160816;
        b=C7qktpXBc6qJYcrq8HpzDys+cwXaxyZynJ1w6ZibGvOQkmuS1/JMb6TT6ygohRcs9x
         RQp6wp6wId+nwVwd+pHWmd4aBhfrNfTpwIEHfa8NRFi6V2j+8CPm5XPvJ/8s96sS881Z
         gO34y3Dvkz24Yb1p+itpVj5sfxzku7NkCQpTx2/50EWUXsIrtL1WwoLkhGwq177sNsNJ
         +FxPm18HlUjdKC6HARrfRPEZXL3DTM6Nfqcx+31IXH5leeVTz+iTHai5GR0aw7Ds+QfO
         9TF+b0+oLs4Fh9mxGicZ+xI1MfXzOAXJAzSkdOH+cbxGPvLw0FmIWg2e1/KxMJUH6UAF
         ZYjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OVEgZyvTuE7VM+I+yDH8sTBNUof3E7XwbYRQ08HTNl4=;
        b=Bn7QXfuzy/FRJGtebTy18yj9OB2pfnhdHaGIAGltJgzGJ8HIuPhzQQ4ttpJKIy4CDa
         /CiED1Y1l/zx4ekN0m4qqO1ugIc/thqvG/q1ZzH065bfj99ae3mExUNUu2fc+zysk79u
         CtkdnjatVv13Mb6/tiaMvuc2hEp9YmeF+GtiLDdQgX6Jmk9UkhPfKXXuFfuy+Wg3lOLU
         rvaElIgmxnbb0rsM8sIwd0o9ieXOa3OV0alKjwcEyuVLqHqwbe0VxqSJ4D/WY5Eiwgxz
         5gjaCS2sF+JOVO9ZVyE4wCf6Rps2gKsqvJB4R6ObI2RHs/EPOyj+27H+C15qQZlKqLop
         kMqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FjqbAk0h;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r1si1742246ywg.4.2019.07.18.21.13.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 21:13:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 25FFD21872;
	Fri, 19 Jul 2019 04:13:47 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Lee Jones <lee.jones@linaro.org>,
	Sasha Levin <sashal@kernel.org>,
	patches@opensource.cirrus.com,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 26/45] mfd: arizona: Fix undefined behavior
Date: Fri, 19 Jul 2019 00:12:45 -0400
Message-Id: <20190719041304.18849-26-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719041304.18849-1-sashal@kernel.org>
References: <20190719041304.18849-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FjqbAk0h;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 5da6cbcd2f395981aa9bfc571ace99f1c786c985 ]

When the driver is used with a subdevice that is disabled in the
kernel configuration, clang gets a little confused about the
control flow and fails to notice that n_subdevs is only
uninitialized when subdevs is NULL, and we check for that,
leading to a false-positive warning:

drivers/mfd/arizona-core.c:1423:19: error: variable 'n_subdevs' is uninitialized when used here
      [-Werror,-Wuninitialized]
                              subdevs, n_subdevs, NULL, 0, NULL);
                                       ^~~~~~~~~
drivers/mfd/arizona-core.c:999:15: note: initialize the variable 'n_subdevs' to silence this warning
        int n_subdevs, ret, i;
                     ^
                      = 0

Ideally, we would rearrange the code to avoid all those early
initializations and have an explicit exit in each disabled case,
but it's much easier to chicken out and add one more initialization
here to shut up the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mfd/arizona-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/arizona-core.c b/drivers/mfd/arizona-core.c
index 41767f7239bb..0556a9749dbe 100644
--- a/drivers/mfd/arizona-core.c
+++ b/drivers/mfd/arizona-core.c
@@ -1038,7 +1038,7 @@ int arizona_dev_init(struct arizona *arizona)
 	unsigned int reg, val, mask;
 	int (*apply_patch)(struct arizona *) = NULL;
 	const struct mfd_cell *subdevs = NULL;
-	int n_subdevs, ret, i;
+	int n_subdevs = 0, ret, i;
 
 	dev_set_drvdata(arizona->dev, arizona);
 	mutex_init(&arizona->clk_lock);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719041304.18849-26-sashal%40kernel.org.
