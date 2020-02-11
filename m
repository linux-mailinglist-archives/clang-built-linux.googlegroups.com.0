Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBH42RPZAKGQEGQLYEMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E3B1593AB
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 16:49:52 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id m15sf7030175wrs.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 07:49:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581436192; cv=pass;
        d=google.com; s=arc-20160816;
        b=YiiO9vmZrIRrSvDVuEYWnrA/hX+vNfEWu3qFqbr5PvsjoFDH9OQGKbpq7qp1fnAzb7
         4C9Vu4N9Zj9ZKoG7eD2TDuK7GQEufk1gtbFVyfCWnARg1jOlra8RHeOgGwIUq4j7TZp0
         yIpXUufhE9PtWQx8tc6wYo+WK/GvJha2Cs127bEWnmE/O6NzNcFocEkDH6s+xuEqWg6r
         V/QlSVOctVU+GAUMCUkdYJl9A8qJwAtg35EPv+1CwKk+W50Nr+S7tJQOZ1uGVb1IzCF/
         /Jkbz52VFsQ3FJxTPPHQua+ZkVQ+26CYk6QKqCFUrxeui1nirIdv5HbdpRfFeLmS7mZ5
         ywAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:in-reply-to:subject:cc
         :to:from:date:mime-version:sender:dkim-signature;
        bh=mFElH56IPQvGoSjEMD1obdfxBqasaEDgvqmErqxU00k=;
        b=fyQyqzsMsQv1R2gQj+dzLoH9dYOfXYRILgAP456tNWRQJtGcmeatATHhRujmf9iS6T
         fl74Zoh0LpWFSw5yxOaX/kB3o/UULSV50U63GH88XqTBMy0xuIdIykQCGQ9RYf1J4FmH
         NkjFPL5oSkp5R93kE30OUBDqbyipQaplK0EN54v8pi+gmf08IuUYvP3NnyPONInx+55H
         +NBRkE9AAIR0sXhL5o8QJMKjdVVAckpD0Nxz5xpwcAtlQkBLEfwymNBwbnsFAERf3Rty
         7p+51JMoZ6E2MZmWay/4qoLri3YIUOCeO33vDX2lyFo3cdah7tGDKfz3AKqMLCgQ+dzP
         4D7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.brown@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.brown@arm.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mFElH56IPQvGoSjEMD1obdfxBqasaEDgvqmErqxU00k=;
        b=B3AjYSkLDgh9IijDKcbobBhTODs2NqvRu7J9/ap99c8gdm59Lda02cyFC4oeo3SGfI
         lZh8NvTdCWgfSw7pNkIt10Y8ggX3H+O6lvdEW7zUwofyrOgYBSB/EOq9fZUdbLUuyEVr
         LsRUrU9rxUAz0Xr+IgFjT7O76NUnHpc7keB8WzO1g1JpwUUAEhaLIEmpgZmjyDooDa+c
         HSxFJYn3tKDC4qKteJ+gUI2VzIl/73KuIAydeuWTSgjK6Z9hYpQA4KYyK+C718cTs1Bq
         mhE95GFe6o+Fw8X02ExuKHCPQmVQnv5uwlLYyWEyzyfJIcZAPFKlurrsqYDuY5A9/RX+
         c49g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mFElH56IPQvGoSjEMD1obdfxBqasaEDgvqmErqxU00k=;
        b=um+niFD4i3bZPvTwEknhHFx5HDF5zcjaAc0Q0eXP11nt9WdNOETSU7DtFUmuixkkjV
         z17lUVH3r/kDFwo0j5al782t6+DzDwuO6Y7WPTv4MRIfZRAfcdPNjUvZYmkTAtGgUej2
         zchSrrGhbE6WNKUOBLsOfOCSpZsYQ4Ug8UZg4x0JtcD5N3Wacg/z9eqV/e3e6rPlvV4G
         Ix9Q2zS/zh+fwtu46jdikHqNmL3+xV7NyotBrT7VxRH/2g0cZ/YeDqX8KBC8PA4vPy+d
         qCHefjlKJYY/79MnA9QmyfwGNdansSmoHUdEZ6ADwRC+IJUXsQw9bEDjelzyF0W5K4zZ
         Ba1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUVj/Df0FAzyM/lplinNZ+d7s9lloV781UJ6H1qVEKt7dDRfsAm
	7hjzIDpi/PyXcgBTPySBFOU=
X-Google-Smtp-Source: APXvYqyXMrboaAGTGRFyHV3nNnAwwsma0YX82m2x9vSdNONfkoc3QFVvn0Vp/j8lL0k1m1FeFusaiQ==
X-Received: by 2002:a5d:4651:: with SMTP id j17mr9324698wrs.237.1581436191968;
        Tue, 11 Feb 2020 07:49:51 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c0d9:: with SMTP id s25ls3663830wmh.0.gmail; Tue, 11 Feb
 2020 07:49:51 -0800 (PST)
X-Received: by 2002:a1c:a5c7:: with SMTP id o190mr14574wme.183.1581436191374;
        Tue, 11 Feb 2020 07:49:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581436191; cv=none;
        d=google.com; s=arc-20160816;
        b=A9nLnOPWRNm6J7UCfYpO90O38g8Mn6CP/UeRLW57HpB0IwHj9+lxq2RdgeqZqlXucw
         uG2Ds2oP+tG1Q9buzgYZFcT9EapDU1XlTtKd4gyfIl/qG75n6/H1i1dRSssOZmAvTQ9K
         H1HdLB0Ln/IYKdWrHLloaVs05zLQt93w3oJLZ/0zQGzy+xpMCudMLSeuDwX4TCwIRTFd
         /kbmJaHve5g4RpAgPy89D2MlpetsCVog42U5el9Oj8/9Sod5gT6BrZbrmM4HIvDkaa8f
         atO/GEh66SkysUIMTYG9/+XwPXLP+DjyWlF1sCK/Sf5VHaWkN2Rweeqry8SiXtPjcGy2
         sRSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:subject:cc:to:from:date;
        bh=l4Xp+pTWD/GMITREYjH2DlIy6cLykrWunZ5z04MX+JA=;
        b=E3KaBgA3I3GE4g+Qoki7jkTlaRlDGImWg3lopByjrS2e/a5NzgosfDvBSYQsSwttkV
         8na7KZvcZg0Tr9QT0H+NZs68YzwilwsAXWMVGBasFW+txDujfUy9w+NHHpvk6o069dbV
         YNvWQygXMx0bkOSPi6MyaYLOo7tcMudHbh4Knur1BjGRUwimX7lFmTFzvfU/7sWHT5tW
         xO64/6dos6KO0o/Gv9v+y76K0YXyAx02lzBd32UdfYZuyMhBaFRKHgvqpBj+qviLKc35
         QU6OCz+lQ76n9pRQNNlEwGAYRmOGWOGjp8+JwZ6YPbLtrCMLXW1F+1L+cIGf/QTp1f5U
         JWjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.brown@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.brown@arm.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id 202si113460wme.0.2020.02.11.07.49.51
        for <clang-built-linux@googlegroups.com>;
        Tue, 11 Feb 2020 07:49:51 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.brown@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DA5C143D;
	Tue, 11 Feb 2020 07:49:50 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 01DC13F68E;
	Tue, 11 Feb 2020 07:49:49 -0800 (PST)
Date: Tue, 11 Feb 2020 15:49:48 +0000
From: Mark Brown <broonie@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: alsa-devel@alsa-project.org, clang-built-linux@googlegroups.com, Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Applied "ASoC: wcd934x: Remove some unnecessary NULL checks" to the asoc tree
In-Reply-To: <20200204060143.23393-1-natechancellor@gmail.com>
Message-Id: <applied-20200204060143.23393-1-natechancellor@gmail.com>
X-Patchwork-Hint: ignore
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.brown@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.brown@arm.com;       dmarc=fail (p=NONE
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

The patch

   ASoC: wcd934x: Remove some unnecessary NULL checks

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.7

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 918d0aba86ed8c1f4ff7f39e39e5c1b46fff2bc2 Mon Sep 17 00:00:00 2001
From: Nathan Chancellor <natechancellor@gmail.com>
Date: Mon, 3 Feb 2020 23:01:44 -0700
Subject: [PATCH] ASoC: wcd934x: Remove some unnecessary NULL checks

Clang warns:

../sound/soc/codecs/wcd934x.c:1886:11: warning: address of array
'wcd->rx_chs' will always evaluate to 'true' [-Wpointer-bool-conversion]
        if (wcd->rx_chs) {
        ~~  ~~~~~^~~~~~
../sound/soc/codecs/wcd934x.c:1894:11: warning: address of array
'wcd->tx_chs' will always evaluate to 'true' [-Wpointer-bool-conversion]
        if (wcd->tx_chs) {
        ~~  ~~~~~^~~~~~
2 warnings generated.

Arrays that are in the middle of a struct are never NULL so they don't
need a check like this.

Fixes: a61f3b4f476e ("ASoC: wcd934x: add support to wcd9340/wcd9341 codec")
Link: https://github.com/ClangBuiltLinux/linux/issues/854
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://lore.kernel.org/r/20200204060143.23393-1-natechancellor@gmail.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/codecs/wcd934x.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/sound/soc/codecs/wcd934x.c b/sound/soc/codecs/wcd934x.c
index 158e878abd6c..e780ecd554d2 100644
--- a/sound/soc/codecs/wcd934x.c
+++ b/sound/soc/codecs/wcd934x.c
@@ -1883,20 +1883,16 @@ static int wcd934x_set_channel_map(struct snd_soc_dai *dai,
 		return -EINVAL;
 	}
 
-	if (wcd->rx_chs) {
-		wcd->num_rx_port = rx_num;
-		for (i = 0; i < rx_num; i++) {
-			wcd->rx_chs[i].ch_num = rx_slot[i];
-			INIT_LIST_HEAD(&wcd->rx_chs[i].list);
-		}
+	wcd->num_rx_port = rx_num;
+	for (i = 0; i < rx_num; i++) {
+		wcd->rx_chs[i].ch_num = rx_slot[i];
+		INIT_LIST_HEAD(&wcd->rx_chs[i].list);
 	}
 
-	if (wcd->tx_chs) {
-		wcd->num_tx_port = tx_num;
-		for (i = 0; i < tx_num; i++) {
-			wcd->tx_chs[i].ch_num = tx_slot[i];
-			INIT_LIST_HEAD(&wcd->tx_chs[i].list);
-		}
+	wcd->num_tx_port = tx_num;
+	for (i = 0; i < tx_num; i++) {
+		wcd->tx_chs[i].ch_num = tx_slot[i];
+		INIT_LIST_HEAD(&wcd->tx_chs[i].list);
 	}
 
 	return 0;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/applied-20200204060143.23393-1-natechancellor%40gmail.com.
