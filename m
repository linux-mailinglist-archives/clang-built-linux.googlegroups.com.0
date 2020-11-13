Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXUWXP6QKGQEBD6777Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D642B2352
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 19:07:27 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id q6sf6584739qvr.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 10:07:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605290846; cv=pass;
        d=google.com; s=arc-20160816;
        b=toygAoVVzM+b59+KzI4/FEADMjLHHwpdLqv0obXPBs79/EmWkE4QuD3HZED4ZQEv7U
         GfM74spe+jb87SHryP6spn3MUPXu7v54mMCLgm//wvamAkKiQ7gDgztFjQ18HxblE5Wq
         ZXBBDJhHWpzp4wNSwr6xHlqxXDep7sk0nWx3TE3lU4b0IJU1ERsgEm3zvl7NV8plD4J1
         uNAO1o+0K5NJxWqQu83u33LLkD4H0nNv/I+i4uorJZaPmT4TPpHPGtqvZ6dnWILsY/kG
         u+7VslZyPOL2EQnXgFgPhfuDJvtYascCNCDXyhj2p7svji/QrjVrml48+8iH8NkiFr53
         1Dbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=61JiWv0eBkB4vobmrenj8vIPs6fX7+cyMbFoItnwPtc=;
        b=NdNifm4GaP9nRfHlxvx5zLwbFBBVlMCD/49OvVQKL805GpWPmtY4Uqlbcd7ARL3pw+
         xzOa3hx15qiqjwUUNTqI19dAf9T75oyNO5gpHbycHAQYeKKx3d7WDXFZi6rJpCUGh2KQ
         CzodbudwrWt4sYzJoT+k28NTzg0aoOkQ7bX9eMQE4rnIjD995a5ABa9F2eM0zuAgl0Hq
         UR/SFb6pXoanagiA0D02pMYoy9MyIVdl/eqopIT5kd2pHtuDMngj44OVwaOnZD9GOSCR
         2S1oXfhoOwwKVdIil507FYpW8yuMNy9X9QgKKDwyB7vPj3/ymwK27fKX2g6G46dcyDzT
         bt1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ka4ckJ4p;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=61JiWv0eBkB4vobmrenj8vIPs6fX7+cyMbFoItnwPtc=;
        b=ocT1wk4ahzIt6Oy2gQNWYaJo92ubWClOdlJ0LHafA2TeJEXlhq3fW8tyy/5SDX65io
         HL+Wxhj9FPXEj9DTqybjjfDgLvrq6j+lvJRmJdE6G6pwIDZO6Fo9nq96Zbn2Pl60vaZC
         yjBSTLhVD12BYY0W1O9+Vm++nqNDylaqFwq+rigSDMbVgYfv9LlEP7Rc4G2VcV0t9zBo
         qLf9GcDQzStgZVQ3CcWUzEXqQw0WHZ2lUdsp1HiVCox8cU7I+fzGJpl+J8MQssBEGYxt
         jB9HVKMjqVcJMWylOogbk4hlg+VCzTbC+w232MJGRyr4JCw5kx4DPqxWhTeVzb5253rW
         Uvzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=61JiWv0eBkB4vobmrenj8vIPs6fX7+cyMbFoItnwPtc=;
        b=bN3ADNSJVsqSEI6/DWYakSQYzD1Tyc1VtqN7T9cp7lb8LUTAYS+5hXVYiha19RQeNi
         CAXJGhoSuGv9GiB02IWjP7d9sKL/2g624eEJqeGCn5V9ZPo0t+wsLY4WEegp/5xwtnKU
         wFQuJTqB71H5HOZNatfzTr4oGjAtrmlHtDRjJVzzzoTNd9orziXLqrvvCHgy1xqvn8lk
         uu1iPD1TptF6agcmUkFilALeLVEG0IfmzHKaV7y4MDNFk9D6rhMzAV2UCurOQ61ZMlE/
         KuzQsKNxVo10Dk7WrQl56nwNvxf4TazsA60p+hJ0floPTv4O5awQfrQpiEluMjoqkLfv
         mB0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=61JiWv0eBkB4vobmrenj8vIPs6fX7+cyMbFoItnwPtc=;
        b=clyv7DxgH7zll8WusWnDaHD5T/k05ocrOtm+CC5IVGryRVmVwjDcEsgGbRObqaytdT
         U/Mh4QUB6W1mWmhR0N8hte/XAL1PKJ2y9dnP0v2juIG/amihRQaTUo+/VjrBqdUW6x7x
         uraDbpeNTAZAyP2rraZ7hxZkr1K/W6gDC7xMtiLe/tP2swEQlXzFvwxlv8winVvxdKe2
         aM9iJ/70LL94Gq5Q5a576uRtVqHhNpSPJa63BS6YnQZ3L5AZQWnWUDNrI5Dvf7xKrwNu
         cRMFLGb6jGsh38PJdnpDug/CgDN4Fz0fyBqeZ1w26x8/xcNODgHO66TDS4D9BWAQ/Fgf
         /WnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mrglgmsYS6fut8iw2c/P1ex21HG74thqagdx6sLhNbchHNYc9
	Yc6gXQQN5mWTrhGAA7EnUwQ=
X-Google-Smtp-Source: ABdhPJyCpNQEc686MbcqOtkpi32LAu9J/BGhqjF5QBEW/RaAZpYfBc3Evm3Y1DnnUAT+akFWTjmQlA==
X-Received: by 2002:a37:a481:: with SMTP id n123mr3225454qke.114.1605290846277;
        Fri, 13 Nov 2020 10:07:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:8744:: with SMTP id j65ls3264674qkd.1.gmail; Fri, 13 Nov
 2020 10:07:25 -0800 (PST)
X-Received: by 2002:a05:620a:1011:: with SMTP id z17mr3234347qkj.12.1605290845841;
        Fri, 13 Nov 2020 10:07:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605290845; cv=none;
        d=google.com; s=arc-20160816;
        b=EUgUrJt5+TgMgiYbXMYhyQcQupClaS1RKCqnEMqr0uxLDBF+YHu0j4aAFwCJpcoh/9
         BNBT0LAV7vGXCOhKcTzfXmaZ4guwu5nTOC9bkzRw3GkYsFu6gmxlQ2gXmuRffWWGUS3c
         c6g+Ekb1X/B5zqpA4aJ/4qcfhx6KmflPwoGu/ZHgk2m1vYDpnXI0Bf2gWRKuxGrD476G
         z9CHruhOJ2LuZVubMa9IL2FI8/enEwpWyDPWyy2VS7PXbIg8cwx4F8xz6UtlBBB+3Bmq
         WmxBresR4eeO/qJEeC53XOWHo5cAzmdH82taq9H+e9gKINKns1lnFQUjdXFaCsmRFB07
         2YOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=UiYli1Q+z8sZkBWqV/LnEwc0aoY7+hNwPEu1PnwhqqE=;
        b=EG4QnTERy59J9Rg8ktwFFFFUF5Or/FBHbEXl2th1lbYwlWXb6DbRz2+EUzUrz61rbS
         Fso5TLLsFzcB54sI6lCfsGMK5Cac44F12f8zo7Cqt9ToNrGe1hH6hKyWhdGezXBrEfeR
         E75S/cvMRaAaCB5IodcRgGhsqEcGCP7ygOGSvahSJqQmL3VizNqtvAGzNjIipWdxG3q3
         7B8zDlXJO4hU1avMLxj7haINamytAG9WhUkW217i8srWRd0Q6COeiYKT2vgtzygdLMdv
         ru+hzQtWm8nCStLgA1S9Lm2XZWEJn/c+eFAu9zL4CMn8JuzQbrQDXtAekrkOChphiQAf
         bP/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ka4ckJ4p;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id g19si123484qko.1.2020.11.13.10.07.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 10:07:25 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id t5so7311753qtp.2
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 10:07:25 -0800 (PST)
X-Received: by 2002:ac8:7189:: with SMTP id w9mr3133068qto.288.1605290840747;
        Fri, 13 Nov 2020 10:07:20 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id q11sm6932398qtp.47.2020.11.13.10.07.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 10:07:19 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	Vladimir Oltean <olteanv@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Lukas Wunner <lukas@wunner.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-spi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] spi: bcm2835aux: Restore err assignment in bcm2835aux_spi_probe
Date: Fri, 13 Nov 2020 11:07:02 -0700
Message-Id: <20201113180701.455541-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ka4ckJ4p;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

drivers/spi/spi-bcm2835aux.c:532:50: warning: variable 'err' is
uninitialized when used here [-Wuninitialized]
                dev_err(&pdev->dev, "could not get clk: %d\n", err);
                                                               ^~~
./include/linux/dev_printk.h:112:32: note: expanded from macro 'dev_err'
        _dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
                                      ^~~~~~~~~~~
drivers/spi/spi-bcm2835aux.c:495:9: note: initialize the variable 'err'
to silence this warning
        int err;
               ^
                = 0
1 warning generated.

Restore the assignment so that the error value can be used in the
dev_err statement and there is no uninitialized memory being leaked.

Fixes: e13ee6cc4781 ("spi: bcm2835aux: Fix use-after-free on unbind")
Link: https://github.com/ClangBuiltLinux/linux/issues/1199
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/spi/spi-bcm2835aux.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-bcm2835aux.c b/drivers/spi/spi-bcm2835aux.c
index fd58547110e6..1a26865c42f8 100644
--- a/drivers/spi/spi-bcm2835aux.c
+++ b/drivers/spi/spi-bcm2835aux.c
@@ -529,8 +529,9 @@ static int bcm2835aux_spi_probe(struct platform_device *pdev)
 
 	bs->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(bs->clk)) {
+		err = PTR_ERR(bs->clk);
 		dev_err(&pdev->dev, "could not get clk: %d\n", err);
-		return PTR_ERR(bs->clk);
+		return err;
 	}
 
 	bs->irq = platform_get_irq(pdev, 0);

base-commit: c371dcf51cef4ae53d00090a148d004b113217f0
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113180701.455541-1-natechancellor%40gmail.com.
