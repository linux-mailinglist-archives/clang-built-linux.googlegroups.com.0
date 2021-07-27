Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSPPQGEAMGQEDYNINVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id F004B3D8123
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:16:58 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id 16-20020a250b100000b029055791ebe1e6sf164660ybl.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:16:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420618; cv=pass;
        d=google.com; s=arc-20160816;
        b=r/Ww+fGYYWiyMXV8TBHGSBTfwMUXr4XlzKyMs8yIHQ5YrE5ENvmNFSRN/sXNtrSA7U
         FVcrB8Y/BDoBwxtwuzQwerRiyHFDPEOn7p4vKlShpNp7+sF+pLa9Ft9RcPyC1ZCNpIBb
         ELmEO09NJ1mFoqwmEjRya4vOC0cBLyoEOOovgZ4UNeFwmRJqo+iZZuUIrKAE5diOaOUv
         S7t9Tef0QVoe+F1mwDBRJ75v/rRRe88oZhgPGsqSjZBQlNR79wmQSGc2xzpcFWX+6T4N
         iwpyhxY1EqfxUUdaiGp7gxH6azQDYgAj/ndUDjbymVlanGuXneFGekKwCYiVIj+zYv7F
         DYzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XKCEFaI8CBgyTssZKNDMoS/SrFy6MQ9OrLSwzs668kY=;
        b=Zpz1XMocDqfrTwulJwj8it4KyKtxHTneygSLHvsjbm+BPI5XyapPG1oSbD8Ktm/6TM
         /A/QOU+oYnwe7fQ+2e+YsvE6ZHerjLNooW4nr1mnYjh5tvBTZdCUaDAgIQoXdQ5+LJyc
         Z8QmrlOQxEfz7bo1r2NryQ1dGPpFUwEQqSsGxwqmOISQy2+TPg2hCkV51R0JabqxvFJB
         ebDZkDtp00xQ2b03ssB+K3loWeQZ06t17jFZB1mc6V7cNlI/6hjW47zg0K6Yjz9CLi/x
         1pNI8OSP+FWI9xfgSH5Cvzuuq9D3F9fkUnCaiKnIbQftXyRPgP9/KSliEDTRvF1eFFSg
         xTHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Rs6HYoDB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XKCEFaI8CBgyTssZKNDMoS/SrFy6MQ9OrLSwzs668kY=;
        b=LmSy7edZGvGyFidFNDbx6NJDByfCViJzNkvtGqwbOZGy/KN64hhGR+eWp6hK5OZn4+
         JN94xbA+2NyuB8xanWwskxWuGolezlGWhDsz2dMiKWemOQET7K2wJa9afd3L4paUWJTL
         fLEbKO+s1y/eXcVipbGx5jE3SL8BwL5Q4G+QDUefyIsOXYPHYpGWFw1OrxDY8YHyshXX
         PHR0gsHP0YQaTfGXo7TFE1kKZX8p8egCPkjAKHVQdSlYLaRhlxjKgkqzGcInl3Y4FZk+
         ZlIqBQxtm3LMrenk1ixnjZfCSO9ydkbyjyaSvzatEsdAp4WdPyuYR2QtF13MR4ttWk8k
         81Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XKCEFaI8CBgyTssZKNDMoS/SrFy6MQ9OrLSwzs668kY=;
        b=Xq0g4MrDMCDKcN8+HF46KCRmFERuuFrPXW9dSAEoSKAoncjsHbMO4mITtOYW2kIIgS
         9HzLiZ9X8970y62We7k71CDlWuTgPRfFNlTzQZEUkzi2Ojr9ppBmqyEFA7Ac1t7U0rx1
         pYkWYm0eg28bia7Zp5W/yrfTQT4Qx4SwKTFEOFbCGsOxC70UfLW7o+Xc9wCwpzPaDjlD
         xuH/ngpxRt8JtLzfklQ7Xi6lUuH/XtxncBd5VLcvfANMZ68FurYseb1nmZYyVvyD68df
         XJ5P55SsZFsTqxNxF//cWWZctW0OyWq1lixcwn+/b9f/NRRv+xRNG3T20HMwSVDy5Yv6
         1Hmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531V3ekRgIUg/Njn36G2lBv8R2OP7IzHnXzSLQUCfI48tRzAKi5U
	uwQmBbx4jTuvafDToPs8DRg=
X-Google-Smtp-Source: ABdhPJychYbI7z9CJrU3KSrRvNmYa1jIJq0MDYJQP59KlD0Lsz0Y32iBNMMWuyrQG5xIprhVQJzo+Q==
X-Received: by 2002:a25:fc5:: with SMTP id 188mr6537624ybp.51.1627420618092;
        Tue, 27 Jul 2021 14:16:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2b08:: with SMTP id r8ls125055ybr.9.gmail; Tue, 27 Jul
 2021 14:16:57 -0700 (PDT)
X-Received: by 2002:a25:2584:: with SMTP id l126mr34309743ybl.422.1627420617637;
        Tue, 27 Jul 2021 14:16:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420617; cv=none;
        d=google.com; s=arc-20160816;
        b=IgtrM7u9HGfihpmGysyeV4j/KhRbuZxHim3AOGsOBYcETTCRWB0cffY0X9u9NCBKln
         Sx/BPE0XCmerE0OVo/OJfz0UwCaBIVhTPmfiI/vICEpIJTPwvdGzxX8gf10Qjtht/Kng
         yNaFNKTderKUwD32mHXdBO7364NDokpTsDIxZaqvKIpdW8pfIR3Wqnq9VbCFDY7199AL
         9vjgH5IVVw8D+pRx0VeeB1bAqGFCM+B+I7Yr9UKqOA94lmOTbMCC5InhF+dtTUGhlBo8
         rbVDn+yAgM1tQa6XyIMHvjWVtIw2v/0Fo1JdkvL+3KslFIK0NzOzVzxiIuNYitdFJCZN
         DhzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SsQl9AGgDVz4dMjQrj5Kn4zFkC00P69ydvQa5XL3s70=;
        b=yQaMy7PwapHDJY3lY4Bcu6DZZeZ5WgMYx7cFlKBHS4Y4d8lhjsg8d1WpzJEIw0Qpr8
         FGJM94MM+GbmU9Y0YISyLJVHggGKlswHSrl+iMtKc17aPIVAo42hl18WMpId4v8ROGmo
         GpvQjX7cnKkWkTdCkzd4C+7TNmwCJP8M1X3O9GcFhpwAJAVF/4xGzIuK0rqqrL6/EnYW
         tG6rd4XzijsE74Fn3O8yGwiVZvN1fq2rIWVJFvWfukdPmdO0hA4JeUxBC34RAi7oLcVa
         b4Z2F0tDNU7JqR5PjXRGAsnDnjfKA8Bc8kDHspKhbzo89o0uG2HMRN9TjKjBCjCrx/CT
         Mz7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Rs6HYoDB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id z205si252691ybb.0.2021.07.27.14.16.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:16:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id b6so1849498pji.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:16:57 -0700 (PDT)
X-Received: by 2002:a62:ce0f:0:b029:39a:a638:f25b with SMTP id y15-20020a62ce0f0000b029039aa638f25bmr10561280pfg.42.1627420616933;
        Tue, 27 Jul 2021 14:16:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v10sm3566644pjd.29.2021.07.27.14.16.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:16:54 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 49/64] cm4000_cs: Use struct_group() to zero struct cm4000_dev region
Date: Tue, 27 Jul 2021 13:58:40 -0700
Message-Id: <20210727205855.411487-50-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1505; h=from:subject; bh=pEaLYejpw1rouLzkWI/x3bS06fu+DrrD0bTA3jR4D24=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOLvAh3w+r+2Msan2T2U4UOiQHuaUCBe1ciGiHP 57FYFAmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBziwAKCRCJcvTf3G3AJoDND/ 49iXlS8sP97A+TuQ1hW5zJk7qY4Cq/D6b+K1NZSr+4oxO8lsE5F6t9Yp5H2qKpQDH3aG1Y9eseHUet DuqxELASm6TEbv9OaDETKL/st1lYW3XnzIdg4jtHyIUR7l5R/zIZWVCZjBklYrBtW+5MfFN8QuuF/F lvWawq3IPr3DCsm73XdFP6Bc1lZvICUNlEpP/HrD4TRKQi8UcHlSKwLWB74WqQx4AXq0BeprPCj2+K 42l0klkcuGwQNXyEcytxOhIx1zOxhcCTx0MIEflgGQVpkEiSYsDfzS1bJdn9uw6osxjKzg81OaNfq3 nTCOrIrEUVrjsW/YQShJRG1piOtrMFenXJVqU+berM3mVlnU+b+WDEDFNI+DLr5KX7D5l7IPFskN7l QyIaULkhJZ6CLvwzOoVY7vIlqZi9yNnUcfzAODBfpImwjzd2gLx/nV18ywN1M+ifdG3l0jjRTOV39w 4QYa5ZAzd0U/P351r3R8m8ZaiSHjEUVJeN1PD7EexenIxVofRslJik5zDpKZPpb133Y5HOZQsfajom cIz74vJI2Jk82zGIJHBlsHVUj9yJkvhh/o3qK0i/XCfm4ybkalh4dXPTiXC5ddEfdP/qhK66ovmt1y Gr7orTiLuQ3FhBQJUseFFY2YfzQgiCe7UUGAJJZGZ/PgkQ1TY0MyXJ3eMxkA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Rs6HYoDB;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Add struct_group() to mark region of struct cm4000_dev that should be
initialized to zero.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/char/pcmcia/cm4000_cs.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/char/pcmcia/cm4000_cs.c b/drivers/char/pcmcia/cm4000_cs.c
index 8f1bce0b4fe5..2f43e7088e16 100644
--- a/drivers/char/pcmcia/cm4000_cs.c
+++ b/drivers/char/pcmcia/cm4000_cs.c
@@ -116,8 +116,9 @@ struct cm4000_dev {
 	wait_queue_head_t atrq;		/* wait for ATR valid */
 	wait_queue_head_t readq;	/* used by write to wake blk.read */
 
-	/* warning: do not move this fields.
+	/* warning: do not move this struct group.
 	 * initialising to zero depends on it - see ZERO_DEV below.  */
+	struct_group(init,
 	unsigned char atr_csum;
 	unsigned char atr_len_retry;
 	unsigned short atr_len;
@@ -140,12 +141,10 @@ struct cm4000_dev {
 
 	struct timer_list timer;	/* used to keep monitor running */
 	int monitor_running;
+	);
 };
 
-#define	ZERO_DEV(dev)  						\
-	memset(&dev->atr_csum,0,				\
-		sizeof(struct cm4000_dev) - 			\
-		offsetof(struct cm4000_dev, atr_csum))
+#define	ZERO_DEV(dev)	memset(&dev->init, 0, sizeof(dev->init))
 
 static struct pcmcia_device *dev_table[CM4000_MAX_DEV];
 static struct class *cmm_class;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-50-keescook%40chromium.org.
