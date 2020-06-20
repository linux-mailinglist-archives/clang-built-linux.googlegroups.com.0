Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUEFW33QKGQEG327LSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CD3202057
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 05:30:25 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id q5sf8290224qvp.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 20:30:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592623824; cv=pass;
        d=google.com; s=arc-20160816;
        b=NfORe4705sPBjewsDA0WIL6KuJlDK4KR55C20M6Q6oycZGLybfDtRSNbFpg6ZkWjHS
         tfU7b/EkoRv2uXATWoVqkRhQgdvlU8aw7qvN3LD/EE8hTdDolw8963ECGcE4n7CKRQTw
         UPeg8QxrE+JKr1PsnJSrTjHxXvZCy/DDMkGmZ+wGLB5aG0iizzVKauibUmeGk176PVfe
         /LtoPAZAhILrBeiRLZdYI/4JNBo6Md6iqUNvW4OHMpGF9wJrm+ABMn1Mr4TIoEIy3CvJ
         UY1ihF9o/QUw0TA+g42ZHLhCobgMxq2XoRpCBdQ0wQ7WtmwB02gAI9lyIBWT75V9QgbI
         j4mA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eozC2oC89fiopiwiJaZ5MqdNYnDAyEQh4RoaPuFdkHA=;
        b=dwMVq/0NpRfiYJLJ7cTme+v78VNLzPtI0UlUuA7WrvYLMB18NikL5mi0KbYiSekVoY
         Ng7uPqzcTl8D60I5veb2aRvyP8mE+SZj24PH0BMGJVqp+Z5OytixH1VFQKMZBq4fW6J6
         uM6KLHscvMh6h3Kw8TldIXm6/C3aVpAdQyZDXjsoRHLc5atod5S9xqFTcJJ8QzFTYEcz
         rKU1ND5VgcLjSxi2MFOVYI1WtjN7xiuP4pZg9OMHFK9BEG5Iiu91kvBlTf8uhMy0RBwb
         EfTNf4U7PKbNjrJ85+g6LmyhKGBeryIJxnvsCV7o2tWoZ0WqOIzyFiyXRXxtqnhwHnXu
         mqXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KNzYUO4e;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eozC2oC89fiopiwiJaZ5MqdNYnDAyEQh4RoaPuFdkHA=;
        b=DuJ7fAI7CvyTfDOsaCzE+SZIkrTyAcSraHqrWTiZSdy5wgZOUys4Lkib+s0wqYVfj+
         cTNGnTAaaENjDUHHmsC0IwB550zaZt/8deOTU6GLbSIldGOiM6DLyaZ/Vy0STpoyP45m
         tFmIhJYAnvEgilN6I/pGs//vfUUGGj8+S82pCBCg213Kp8VoQT3cRZwfEY8YPgjt04hY
         wEjIr71Do4Y9LLId/99dQhn80+zgKpecv/IoLsku3aaoHh/rLGraDoW8L4JAfLa32bNd
         OCJkPzuJIRJzf7r55VPCUOTFKzppEfbmESGPEog0JXvM0i9FVKH23oUI8ekMOQ9tHgdO
         1xQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eozC2oC89fiopiwiJaZ5MqdNYnDAyEQh4RoaPuFdkHA=;
        b=DHOMbffeEqBbZQyBkAvWJtC39Q+DjiVqG8X/qS12qJc5ZdF4iveH9VTPg5tL7HQ1xF
         /jifzaB/TIeES2vii10h4bHegQbod1QWs77PFS8LIA+BJ8wJ/GDCxKFXqV1YJ+2H5xI6
         BibT6Cu0lyvoc0Sx8xMDsVfI+M/xwRVHpfTCqp3z4VPxnZe7gCXhoI5a64OU+CdUyoQQ
         ikf4EW8U8+fDhmDnVIT61XQ4bdyfpeuJvXnLg2X0KwMf9I/dAySOj575rWK2br5PjI7K
         0LzGKQWPSEQ0BOiGmKOHqPBH+AYd5QXVjFt88jhEwJSsXCt4aqceloM+06vOlx+lIZCW
         wFQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533j/h487KpfYT4nfV5/LTeiGMcZYD0FXeX40FVUL5XVDXzvQRh5
	k575dCy4CApBLh/GpDQ8SPo=
X-Google-Smtp-Source: ABdhPJyXSb5fkaOp5wMXKF6TrGn6DCkNpq4v3eYa9L5ZSbCNbaP/Lnii/VcL8EDXJxXk6WI6kZ7mnA==
X-Received: by 2002:a37:51d7:: with SMTP id f206mr6280605qkb.91.1592623824198;
        Fri, 19 Jun 2020 20:30:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:56a7:: with SMTP id bd7ls2583442qvb.6.gmail; Fri, 19 Jun
 2020 20:30:23 -0700 (PDT)
X-Received: by 2002:a05:6214:134f:: with SMTP id b15mr11516287qvw.208.1592623823922;
        Fri, 19 Jun 2020 20:30:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592623823; cv=none;
        d=google.com; s=arc-20160816;
        b=Ch69SkoCZtSm4HbhY75UMUrPDvDIQgjax29rmZ539s10y0b95DJfbyQoC39B08wwUm
         CN/WjIOd45YH0OvSIeyAr+MeelO20aV/MUbeBCTbwE8GXWwlYppFtgIp/KmPS+E2MN5H
         XH3OpeiI48ymJvbcFYclxwVOq5GGMOTEDcqJV75fSDcxhWV/+ACrzJq2hT2HODSPvMZl
         lTcURg0/Y2zEvEvtSzKME+aqSKek8keP0rZd2zFXOnRfnmSkiOn4yAtXf79IfFSy97Ip
         3sVg3nXpAtOxSC0l6dESoE+rhrQL0nfqm6VJOKHz24N2Gk4w0n2TA73hpmefB1GANM1U
         vyIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LXS1lS0MPNgS4WVNAlrLifcWTqk+ZnaP0JF9yck56S4=;
        b=mnxMEenqFcU+cAwuSf8m5KgbhHbaRWr/rUa4h8c2Fs0O2LnuJz8jo/N7x7i7cdxMle
         AOEoi0M8PoI2PhChepMc6eock/5nVONSrx3IgtvkVbSRMq/nA2wqj8KknGU74P8/vVmF
         n7bPT8ZZ/DRK/1OLCmq4wGIm6DX4ZFXVV3R2vGmP0p09n5CLZiuAgzS5NWHmLxVBgIjM
         n7BgWT9evAWx/fXoWdBB2Zhnpmetip0XdLQ4NmGGstQH3mFzhYl/KErD1QxjFe/wULuJ
         gOtEpfwkHexzUVX0rxo0XRzMXtJWB9lm8FZHi7x2HPU1UOQQ7ycnlz5WyD+HrVPSxgF+
         LfDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KNzYUO4e;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id x78si383180qka.4.2020.06.19.20.30.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 20:30:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id g12so4801545pll.10
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 20:30:23 -0700 (PDT)
X-Received: by 2002:a17:90b:50d:: with SMTP id r13mr6472339pjz.94.1592623823547;
        Fri, 19 Jun 2020 20:30:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h8sm7134891pfo.67.2020.06.19.20.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2 09/16] clk: spear: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:30:00 -0700
Message-Id: <20200620033007.1444705-10-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=KNzYUO4e;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings (e.g.
"unused variable"). If the compiler thinks it is uninitialized, either
simply initialize the variable or make compiler changes. As a precursor
to removing[2] this[3] macro[4], initialize "i" to zero. The compiler
warning was not a false positive, since clk_pll_set_rate()'s call to
clk_pll_round_rate_index() will always fail (since "prate" is NULL), so
"i" was never being initialized.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Fixes: 7d4998f71b29 ("clk: SPEAr: Vco-pll: Fix compilation warning")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/clk/spear/clk-vco-pll.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/spear/clk-vco-pll.c b/drivers/clk/spear/clk-vco-pll.c
index c08dec30bfa6..fed194169666 100644
--- a/drivers/clk/spear/clk-vco-pll.c
+++ b/drivers/clk/spear/clk-vco-pll.c
@@ -147,7 +147,7 @@ static int clk_pll_set_rate(struct clk_hw *hw, unsigned long drate,
 	struct clk_pll *pll = to_clk_pll(hw);
 	struct pll_rate_tbl *rtbl = pll->vco->rtbl;
 	unsigned long flags = 0, val;
-	int uninitialized_var(i);
+	int i = 0;
 
 	clk_pll_round_rate_index(hw, drate, NULL, &i);
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-10-keescook%40chromium.org.
