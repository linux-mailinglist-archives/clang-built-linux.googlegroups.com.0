Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDOP6KEAMGQEH2MEL6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1535D3EFC45
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:24:15 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id e2-20020a17090a3b8200b001791a53ce87sf1027937pjc.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:24:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267853; cv=pass;
        d=google.com; s=arc-20160816;
        b=tKnzSjKE5lLOC/q8mr/dkve0982ehGT4VHAXM8dTNyBdJl827XXWIwSjVJE/r7+AD1
         r9P5+eRQHNlUl1zscBj+8vW8+PVueEvKxiDSOyRpyLDdgIyytSUdFq08HW4BDy13D6jJ
         4Y5cVop/QKXAM+GsqWwKWcWLEeXCyNMnkBOvL9syAvSbiXqdVIDB42+1ngwn6VnUvDFV
         +vW/d7x+GRqz3MpcWNPmfcRR1qC3RmVkH5nJ1+bQQve4xy901lvOtZzZjoKduHAqyid6
         Kv204pF5toXIGJHtuFutLq9pxlo9j4Hl/Ej6ZYeisYqvgwo3XnlwYNzaGUBncS7UNR3J
         /TUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=85Hle7VvqgG/naBoU8r9CQwEZhUfEV3GM1+biAbCCXw=;
        b=DKYL1wA3aaeBIjHsm6mjf42KN9iv3azKvIdFrG6ynhM4Uoy4bZhpV0cjvlhHvQLfX+
         yY8tH8Pm1++8cVaeMoIaLQsTDzd53ieeOl7toJeqqug/MLWj6LwfGhDqHCbU2I2RQZxv
         V7K/rasI02uOoVQfdDLLUzmKUteUP3ZClqr/v5MMw2D9EhG+X4yX77lzXTwRE/fvFC76
         aNXif9PGCQUNidqp2P3RJ6RA1ARFRQLHRYT5Uc74IFHiK3rjvPbw0CNyTm63zlM6OJzq
         NNNiPCpXDY3SeS+/XK+qdcnnmdVRYZZOvgqQLRkgf477WXEpVIcFwzs+XaNDfk9Lq3w5
         Pa3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lkb90SqG;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=85Hle7VvqgG/naBoU8r9CQwEZhUfEV3GM1+biAbCCXw=;
        b=hD+iQyqm1WkLHYV8QqFqEJsB8Od01yMvcRmruGygAoIbLcFyFGOh3tuo5i7yvQ6yXr
         VifSg7KgT3wg8CJlZwhwBecaW1+19HGOxuWQ9PTIJC4S+pnLuild2OgRpPUnQxXUEyao
         MMd6p3t9Q9ld4XPlE35n2xr2bW+/dPx+OT9nX2FKyTtpJkUUCvb5+iIMwn+0U29pKdxO
         d0WtMz74nuN5p2oHTothxT9+ufowrSIRZ0+3OoSHv0kegafQolKHOiw9A82Gb5c86oMO
         hVYW5edS70/dTQqESCHP+bmw00flk8PeCCUbl39PlU5BC8O21TkvltmMZPK0MTZU72Y/
         Tsxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=85Hle7VvqgG/naBoU8r9CQwEZhUfEV3GM1+biAbCCXw=;
        b=YtZrUKULQ21TzuJtyCwH2smdEjKCD7YrvgtaF55YFTf2fuxSx5n1eHbaMvqfsgq/3q
         HVGbekaY20I8lcbm69RqcXiXomkWaqU3CuwrOxvlxqVamsSjwFHbO4DLiPEzOjkrMqxJ
         3FqGO1OqGdfkJa+N+9IwU28nzFAmer6BNqosjJOUf/vpAh7qiw+XE1CWmcaGp2cX12gR
         vlhmYmo62aUSmWZfw/vLIYsCslrOtNt0LdCMRx99488Cmh+LcGC1Sg20BtGW4aMEnr84
         zojFy2WbzVvUvZpR28xoN1niS4bj2tcGGayCCac2i5KHDLzkZSWjb4Kb0cakBQxStQhy
         sbOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530D3EoB5VonosIm/9wBchceiPw0KGQ0Z4ZsdcVWp2Fpt7X3zxg1
	D6FWGcB1c9RRNl65QbuCTxw=
X-Google-Smtp-Source: ABdhPJx5fp4y4MssEMn2fD7XhoAaC4VVMHg3FqGB0FBmnnXTrvNI4iXdEuuhtcNFL1VlbJauhzTWMg==
X-Received: by 2002:a63:5c51:: with SMTP id n17mr7240956pgm.376.1629267853833;
        Tue, 17 Aug 2021 23:24:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:91d6:: with SMTP id z22ls516884pfa.5.gmail; Tue, 17 Aug
 2021 23:24:13 -0700 (PDT)
X-Received: by 2002:a62:1c84:0:b029:39a:87b9:91e with SMTP id c126-20020a621c840000b029039a87b9091emr7542944pfc.7.1629267853312;
        Tue, 17 Aug 2021 23:24:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267853; cv=none;
        d=google.com; s=arc-20160816;
        b=HLjoP7QMSgKN7cCeZjoOYBYYaFswsoD4Xcu0wkYsmjNndQrpl+nSSgh+St5A+DPPvf
         atyGeqQMM21e/2l8Ul/c2CZnlwmEW7eSo1byx7RgZeDSejIsgAZRs2k3Ws8t+2UKmLRM
         4CB7YiZFloVWhpZgPk34THV3z0mNwedVEfP+x0GcMXxO0Qs5qrUb9hg2suW9BJfq1F1D
         hVvaGDUc/8VLPYQKR70d8J1uRrevQIQNyWl0ZBrR5tIUdiITGdoiBIicQunUGBPoA1MK
         kR0MPIqOsSAYfLU9oyLEW7VZvqh9LHrSer21IzOOgg362vV8nhW9LrFsDo/od38o+Smd
         q2Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sw/Jd50933MgMDKcslseqtGFSA6d20C1365G+gy2Cx4=;
        b=QcJnl91tozOd3HUmtV5Tqwrh4HVAE6Of+5z33h7yUC+iCuWdkdO2Ga2Lmcs2C0E1op
         pssE9xjLy93tqe7cM/84M5Evnr8V2MjjsxQjGHlo1rcOrd/jDL58F8bpGrv43mqv3ALg
         2vkKbsOyn5HxxXntJ02tgzjLiOBjWx16RBd1n+054KX27x2N7qx43Mw2Ua4cF1yWlQ3u
         TltkAPTrM6g2K8Zy4JLo1PrKoURT55OB+IUHHcR1XumR4lS40gmuZtm7LXrA4g2btuDQ
         cbLW2jY8LUH3YD3vzme8H7QqZ8d1plJ9nJwyGt1XB8W9ceh2PxPGlmuulJtMNRl3MLew
         q73w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lkb90SqG;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id x124si283291pfc.5.2021.08.17.23.24.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:24:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id 7so1098759pfl.10
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:24:13 -0700 (PDT)
X-Received: by 2002:a63:fb08:: with SMTP id o8mr7314165pgh.72.1629267853126;
        Tue, 17 Aug 2021 23:24:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n13sm4501409pff.164.2021.08.17.23.24.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:24:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Harald Welte <laforge@gnumonks.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 52/63] cm4000_cs: Use struct_group() to zero struct cm4000_dev region
Date: Tue, 17 Aug 2021 23:05:22 -0700
Message-Id: <20210818060533.3569517-53-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1756; h=from:subject; bh=J4NGkJQCgahZv2zewL/wYUO+MpNSkAZfZF2EdzgyTRQ=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMplIHvWiwQENOF2c7XlC/x85JbSdFgE5kqsWuK 0OxdRfuJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKQAKCRCJcvTf3G3AJtHPD/ 9w1C3xZTkrQOl8qCphP1NuYb6Zzm4m2uWKaotV03HQ6T9nZ1pYcDMMaHhAraQDtG/+gMBjur6kCewv ayrtSdcUPKzKabKpDYkkQQGEE9qhvOYR4et5WymZDf+eN80rUG6e4eGkoBaSg8aVufvzlEbWGGJI1g tqDg4cuv/AswW6J0SfIjA0LGvOcP86foOnbG0fLo1CjkuPmC73qAisdtYqZ728UwCF73xtFOwOcz58 eqjKu4Hpj2sUaNV2ghIn1t2tsXH9VMc5RRvDzUnjKE8WQiYMXT1GnQMQC30RP8X5s0vnTZZK9COqg4 oewq2GoOKKBWejZCZnIt2PWaHfLpUYE3cXHVsUUrUzVwgg/Sk3purVXNGauBM7zNDyMu+OqTX4ib/A +HNqKaO/5WxWULHr6ttMgZKJiYQpCIvqqVqyHlMArxKxGWwiOSShxbeoadhVmd0SxeqdGPdNCiAuk6 FFaKdGvO/XR7rdo2FnWbhYIs1bjRjMoCnyn4vUMe6sRx6ESs8Bvvf+nu0uOBDONLatp0KRkgfFUvYM i85g6GvFHJOXM2duu8wB+SxG0oCcvOTXiLpU3c5ok266H6TYTMs6yQQ6fEkcPZU/wwc56QrWbNdrgO Cwck+Q8ubdcpIlRqgjAb6NEZ7diJsEGXAyIkWnhUKNVIgROWsl4C+tImakjQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lkb90SqG;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434
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

Cc: Harald Welte <laforge@gnumonks.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Link: https://lore.kernel.org/lkml/YQDvxAofJlI1JoGZ@kroah.com
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-53-keescook%40chromium.org.
