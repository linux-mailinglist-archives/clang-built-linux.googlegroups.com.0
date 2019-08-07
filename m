Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBFYVDVAKGQEL2CALNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1578383E5E
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 02:32:05 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id s19sf16012087wmc.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 17:32:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565137924; cv=pass;
        d=google.com; s=arc-20160816;
        b=vRndGK4gmGeiahTTJzrw+EczBfzmPcC5n9DklmvO/OFtz/mCzVrlLTykeHL4qCkh2p
         jTx40GmP9W1Unh96V89nPzKsCmlmZ2BpBCl42WPlZsNnBNNoBOHdznZay4hXN1KqExhj
         rNxNCbsMBSomLBfbI64Addz2VOxspxs2qpKGed0498sSkOsbZeVzXoTVydoeG3UP14TH
         FU8SxzhJkbPbNak45v99DQhBpC904bM4SpxSIY4E0wqvwzrMma5mpRHDIhTRO9DJ8IbV
         wGr5v1SuNsYYRdyIhWRzmPMylNkW9AEirELBHKvYio7AmVwBBKhgqCHIKPkgOXHMA7my
         WnAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=6E0nrM1ZrC6m8K+nT0v5BfSQpSVNbcIDJ1FuJ/Uu6b0=;
        b=coIJJAP8vKOWmKZ7kYJwoacC2cu13+OqqeQzCzfYkOFjZ/CiB8uOovT7Q41vkVf8gq
         /w/2NH+hlIOi8OwyBIAtWDSo3vVV5tyVbQrBFYBhllFUQpyDAC3f6jJjD3zN86OQi/7h
         np2D98drIvc6F9cS+N/1POpx2dwVttdhNq/xa9b6Cr87lOUqKW5/dndZohuoaqZ8GD52
         83oaCNlyf/2+9/s7GrteLzGPXI/9ZJiSFSDM3mdeUfKawW778PTHz3HbnnzfZHEKCVO4
         iq2G/OL//s1QF2Of/eZok9ccn9lAd7sQqbDMA/sWuwfKPVW4nBdB5hQBW8SAgG1pZsuc
         RiPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=az+UmsXm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6E0nrM1ZrC6m8K+nT0v5BfSQpSVNbcIDJ1FuJ/Uu6b0=;
        b=mJMclcS1YBAFzIS5cTRNMoN0ovR+IQWNBdZTlGQI/2lFOILAIOpKRlgROKer5Fl+yi
         WiAHa5B6f8NBBYd98LDeaNM/KhPjH6jNS/glINYa9sKAw+6Q7vN1Fv3Wvje/QDd84iun
         Khi8KZ+/l/9nmzLcDjsyvhQvfU6+PXsQYM19qN1EVKDOrU8SKhiEJAilZ3Z2vroH8byg
         mxsjxdmLrbpPjEXlO+xFoC091ajBpBw09WEdIpa9WDXw7uvc/OIIp+YhFhcIydfoxdD1
         FjTF5XKP5pKlG9NNgvKuA4exkrOMHbpb4VSmq/eAshOVSgQ+ydehwhXfHo74kMOELlqY
         n7vg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6E0nrM1ZrC6m8K+nT0v5BfSQpSVNbcIDJ1FuJ/Uu6b0=;
        b=NiVuo/fCTsbVRwS3VIo1B/W4FzQ8HdwdPqVgwy5H5kV0lCuz/HcUXwjIOh1+u8aj9S
         QlmGAy8fsfOodqxuqv/Z0uv2X4Ur+Tk0rt7et8gPPHTqg3uw0NJwolZGRKAHH/m0TVRr
         o1jumRN6U3kGLMgnsiJ5kvcUPwx6mKKOSMth6Bks5Eq5269/jrHkg5YQZj5ndJMF5kk9
         fuNnlzPqEg8NbF4tJKoPoKL87hY7W7ou+Woq/hTTjA9jh3z/ede7iKkqKczB5XRO8NJ3
         SiHLL1il43W3ZRMdO+M/gX6Ox5BB/uVE2+lmHZXbOZBIZv9FtdS5PjhV+1sApRRkPcXW
         r8rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6E0nrM1ZrC6m8K+nT0v5BfSQpSVNbcIDJ1FuJ/Uu6b0=;
        b=g802Nr+/XaAw08VGM9YhsSq+YAkvIXU0VH56eR5CQgVEpejIdfr7M1q1BGbWGWUAnU
         dolkzmWWqcxc8x906i7qbabh39CTIOxFQBJa+td/rKqjWqabZTgNL29yZxunDSY25tZk
         SgCJKAGRsZryKXamMW5Eo3qJI+34DgBknqri0KdHgbe1l25RgSKYgKHtc2+UEKYF3AHf
         fnDvawSQCqWVpLkAMdOn5bJ4cCj6uwZXDcRMdrpzQECB2dI6OER2k06sSrjU/imMq0WM
         Im/LUh6LtbT4m/CtNRQ44y6iIvbA8ifyX5w9xA8m1Fi+BSr9PwytlLNgirwUkdDzn/51
         HrQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXYTtUVKJ/wBhx5iMx6FZDiYCXjdRg+5+KhCGicDV7VPJbZ6Qez
	HNoAWgLcaeTkoljO3o4SHSY=
X-Google-Smtp-Source: APXvYqz7bmU1YNbQIh8nFTS6lJDIDT5cdA+ukLWLEi/6uqVTN1/wZgC66HLTkczEJbuVihRLVnnyZw==
X-Received: by 2002:a7b:c398:: with SMTP id s24mr6911365wmj.53.1565137924822;
        Tue, 06 Aug 2019 17:32:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cc10:: with SMTP id f16ls1904413wmh.2.gmail; Tue, 06 Aug
 2019 17:32:04 -0700 (PDT)
X-Received: by 2002:a1c:7dc8:: with SMTP id y191mr984247wmc.78.1565137924455;
        Tue, 06 Aug 2019 17:32:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565137924; cv=none;
        d=google.com; s=arc-20160816;
        b=B3lSenB2f5NBxvLov0S5P52xF8oTVBWm9Hf8uINgkg2LaWehFBiJAQL/s5SmonjyQg
         OkudlqE8jx+z2aXf9GEGXtPsgmhfCRR4HZHkpWsVo6XDLYVk02hszi9HoDYBZRTKfdhb
         OO9UK/hgvvCP+mvM7Kjzkae+5CBrNLzN8AJHONYX5sn/EPE/SMpdQ2hPiwkHMP7ka4xe
         5PfCb67MYoZME/GhHJVXOtF/SPucf6ZT+qC2U+jjzsE+qKRe0gUANCAQA6swDxVPR/zP
         WHscwknLZ/j0sB3VVqEtOWAQrM8IRzKB19es6oVw5feOcilLq88Dorj4c79MpdgN8xaW
         pFEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=GGs8MT6FGlCkbNNH7TTlHmnRq/ZZmT2kM4HCkC2iAKw=;
        b=fl1+yvG10+4q9XQ2YL3TWAh5+zIJYzv7WjzzQBq3+fflYBXWGo/unSD3bBeQ7x/qWz
         ba3Zkr+HadX0RPu3wFC2bu5bkb9L+5nc9dU7OMxYT2z965kFy6dtyJQlgAr0nGN1iL+y
         arbv8tWuEUJyBXe5PHDcakUYPxZj83iMsN6Dupl0nITjZi/B8dy9f7p8qz2rPgm7yH7x
         8YFg7oT/lB/6iBKS83zlbo5JnAurj4ieMDgneuq8dphN5LhCAIFSu1fJRdxny6U31Yx9
         +cmGnkP75UGIbDCK9DwBCDs3PYnXxvzXRCtebrrt4Wt+Efn9dNceaT4p1huATc0InVW3
         eadg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=az+UmsXm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id o4si1237787wrp.4.2019.08.06.17.32.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 17:32:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id z1so89572787wru.13
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 17:32:04 -0700 (PDT)
X-Received: by 2002:adf:f646:: with SMTP id x6mr7256533wrp.18.1565137923815;
        Tue, 06 Aug 2019 17:32:03 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id 91sm183684963wrp.3.2019.08.06.17.32.02
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 17:32:03 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>,
	Linus Walleij <linus.walleij@linaro.org>
Cc: Joel Stanley <joel@jms.id.au>,
	linux-aspeed@lists.ozlabs.org,
	openbmc@lists.ozlabs.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] pinctrl: aspeed: g6: Remove const specifier from aspeed_g6_sig_expr_set's ctx parameter
Date: Tue,  6 Aug 2019 17:30:37 -0700
Message-Id: <20190807003037.48457-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=az+UmsXm;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

clang errors:

drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c:2325:9: error: incompatible
pointer types initializing 'int (*)(struct aspeed_pinmux_data *, const
struct aspeed_sig_expr *, bool)' with an expression of type 'int (const
struct aspeed_pinmux_data *, const struct aspeed_sig_expr *, bool)'
[-Werror,-Wincompatible-pointer-types]
        .set = aspeed_g6_sig_expr_set,
               ^~~~~~~~~~~~~~~~~~~~~~
1 error generated.

Commit 674fa8daa8c9 ("pinctrl: aspeed-g5: Delay acquisition of regmaps")
changed the set function pointer declaration and the g6 one wasn't
updated (I assume because it wasn't merged yet).

Fixes: 2eda1cdec49f ("pinctrl: aspeed: Add AST2600 pinmux support")
Link: https://github.com/ClangBuiltLinux/linux/issues/632
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
index 6012d7d4a22a..648ddb7f038a 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
@@ -2267,7 +2267,7 @@ static const struct aspeed_pin_function aspeed_g6_functions[] = {
  * Return: 0 if the expression is configured as requested and a negative error
  * code otherwise
  */
-static int aspeed_g6_sig_expr_set(const struct aspeed_pinmux_data *ctx,
+static int aspeed_g6_sig_expr_set(struct aspeed_pinmux_data *ctx,
 				  const struct aspeed_sig_expr *expr,
 				  bool enable)
 {
-- 
2.23.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807003037.48457-1-natechancellor%40gmail.com.
