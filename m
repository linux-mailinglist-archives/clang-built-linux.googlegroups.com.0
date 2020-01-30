Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBT7IZDYQKGQEK3TGN2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 328A414D506
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 02:41:37 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id t12sf941112iog.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 17:41:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580348496; cv=pass;
        d=google.com; s=arc-20160816;
        b=mdghz7IzTQY/yHWDSIPn3yis4rv2kWNBjToNOE/jETkl7FoacMsnisB2OEGndrN/H6
         x/KgS4pmMTaLPY3EPb0efxK3wdNH6SOz2tVLuS3742qKOEwBR8pTAJu4hi7fxCXPsZp0
         sMtgCEFhJM3A2hSn4yQ6nkyC9PCim4SwPFG/Ni89xqFHEuhke3zgEXnS98pjXDbaRsW6
         C4xhU2y2RAM+H8xLaRLRPc0MlklqC+m8XXF0bzPGVOKHBgqVgDgRWeb7ntCSiBxCCukr
         U5hZ2NUxY6gpgXybegXiDSTpvLq7q34sdTcVfgV0VsbZeixXSKxxgQFWpUNNmAcfHiku
         6P7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=qZK+5kxT3RevD4o9BafXrCUSh46GT10PlFr5N+1NN9M=;
        b=pqtM6C7uKBrXgX28gQA+hmPfPJheqgvSjwlRZFIUNXDropz+UveDlQdc64arjEMcoC
         XTfkgp2N0nPoPRhxT00eQ1rhNKEAkQxxvT2e0gJsXUd4bxMQNVmZy/3a9npUBofTVYLm
         mkrjOBm643Ztm0/bgFUczfDUV1xhX+hRhxYKniBkSioeYk/eYrAvfq4jDAkkevKyq22X
         EA98jdjQ5vfUiOFCC+f+/H4CfknPPHn6D0NFJnjtQHcFB82Okie4pe2XL1T8UkCxXLq1
         YENoqExDKiSb/kI+xF9HIhYBxYWG4RE82+u9TR4otCVjz3xqkzch1y+OvKk5HUfCd4Xh
         ExpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sh4KnuZP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qZK+5kxT3RevD4o9BafXrCUSh46GT10PlFr5N+1NN9M=;
        b=ULBXDVF8qYA4V6hJCFw2EdlaOWKmNgD7+Kuf+M690IYxE6kuB/fTWHW7qgtJIjOQtC
         /dhFh0r5uXxxkAvfu0ceqBiTMdpMn0RuH0bsC+OeKarplPa4Pon99rO5bvXJUHj+NLdN
         eAFff45l7LZCmLe+QlT9JrrMGwbeDvTf0MHwYiwl+B4aekhVU3WKs4wd9MZNOfNbnrET
         O+pr4E/e34LmGwTveUd+kdzvRuTuYCwBUOwSeg6zBL39NpE6v8+FG2mXw5KlfXO41nhQ
         ep+5OnaD/lcje/GP8LTE2qwJbwlh1Ryr5+Hn8mUeVp6bEolZ6EnmpRcQ8dgt/JxHW95N
         Dwhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qZK+5kxT3RevD4o9BafXrCUSh46GT10PlFr5N+1NN9M=;
        b=NLMpdQnIId76I8hWvJ7lLRUm6OOswd7lYhyVzSPfXh1ZzuasezOzA+hKnw7s256fzh
         nr7ZZWM0HK414lCXw0/dFB7u7GUVWaa3A2K8UXFVwCh7lIyBGeFYsxWnpnaRgTx2S0nA
         tll63670ZWjj81VSE/jzQNyeFT+CnMnDW0MRx6A/v3Gt46l/8J3Hy4kxoeVX8kuNbWEH
         aS8um0ymUzx8otXa7gD9pM4jolqhngivMWXqMjTHEanxbAwerBqAoZiZ4EpseQ0Q3Bap
         9CIjbgJt9MikAUyT5jIq4QfoYq/v82V1OKFW/H7dJzQ9+Xj0uYCkQoaTRmgq0dz9/ZJ7
         R++g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qZK+5kxT3RevD4o9BafXrCUSh46GT10PlFr5N+1NN9M=;
        b=J/3MVg149+9RTdgjjWtyQo37GopXUFapiRbKkZhVelChab3jXCKLXdNXxRI3jjgYmY
         zYaIpo82mBMGp+kRCU/eqPAnYUihAZVsno2j9r29Hx2Ckb9f0CZnPjRyVwquCdM9XFKb
         sa165FZWVsspjBG4BkyBpfT9x7TZ1ZF62n++3qP5V/cpMNXqt9STn6vyYlZ3sQrf7ID9
         md1460hHMuXB7hnJgOwNv+cYvDVIxSD9X8P/STu5TpNpfcM5R6mY/jVQUkEBVq6/8AEK
         riQe0LEJMdZl/JsBnXpJc8h/5ghNM30yoY2wq4rKBhIMYOBTP8VNa3KJdfkrI9ANga5B
         hAJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWKRLp9g/G+ftpFStmYasJE9axlKl8pU/GkynNfpTHsJ6ka82Mf
	j+TFw1Z9C3DQx2jD20NKYcc=
X-Google-Smtp-Source: APXvYqwDZ9yi3bXYek2lrGAlkO0cp8mfqttmJeKYm8hMXwUH2rkWEu2GuDc0bxtkIZH+Jx6z161LBQ==
X-Received: by 2002:a02:9203:: with SMTP id x3mr1765481jag.62.1580348495799;
        Wed, 29 Jan 2020 17:41:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:c411:: with SMTP id y17ls370972ioa.8.gmail; Wed, 29 Jan
 2020 17:41:35 -0800 (PST)
X-Received: by 2002:a05:6602:22cd:: with SMTP id e13mr2079888ioe.251.1580348495402;
        Wed, 29 Jan 2020 17:41:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580348495; cv=none;
        d=google.com; s=arc-20160816;
        b=HapmimtAHhL0Zz0vzP9KvGbyy15/aEZtGRRJEHg4VL8fpSO29GrlaW5vZ28g4FGUL3
         LuP2/RrO9OUQXlSpIzJGZeVDJYs9/SVr3F2UZFURMYGRPHjVAlWlA+yndN28X/ClXBnv
         N2LMvw4rZ2I5485Oy8PAmFWAJ4rMk/LOrFfnOMqXwwcbKXaqJkIq4COCv7I+mNEvtrEO
         WvyI4bV6pIslAFek4eHsQdKzB4PqzzHRmaXKxHtPBvaRcusyQjNVI525Cxg7y2XkAn2j
         yIcPYUn2k4R0II4K/ICV/YEWtODmEnWD20OC7dkloh9pHusoBSBmhOznU+vUrcyABjPE
         GKug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2P8mIQM2+gpGwwpWHO7MIWsL+16CozNLtmz3AeK6KJA=;
        b=zFoDev9EOg3OymtKJ7l9RzxCenDkjZpps6VT5su7wlf5utpFKQ0kzjYjQkEegIV5uu
         mQT7solscqs/2JAU+3DtPlwbRDF/UPrJJd8N4goA/6Y/sf3eurxkB5+Qiaf8N3gdMWiI
         XXgyT3i5jvZwX3GEzifkzoHEJBy0v/g+f93NSQFm7IezHiT6ozUOOyi92anEg18IXTob
         ij80WveAPFe9mEff9rHZqXzfQG0UwoqIVxmvtORqLBevzHwtanjdsxrI07RgJ6mMcP7O
         UwiA0LnSO0NJ1lMC4Q1nwmt0pvVID1WBRTMBAIgFaAIdgzIhaqEiBwGmHX9xp3T2WWJv
         cOhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sh4KnuZP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id k18si196800ilg.0.2020.01.29.17.41.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2020 17:41:35 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id r16so1654535otd.2
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jan 2020 17:41:35 -0800 (PST)
X-Received: by 2002:a9d:8f1:: with SMTP id 104mr1637192otf.107.1580348495040;
        Wed, 29 Jan 2020 17:41:35 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id j45sm1313526ota.59.2020.01.29.17.41.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2020 17:41:33 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Niklas Cassel <niklas.cassel@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kevin Hilman <khilman@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] power: avs: qcom-cpr: Avoid clang -Wsometimes-uninitialized in cpr_scale
Date: Wed, 29 Jan 2020 18:41:30 -0700
Message-Id: <20200130014130.51313-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sh4KnuZP;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns (trimmed for brevity):

../drivers/power/avs/qcom-cpr.c:570:13: warning: variable 'reg_mask' is
used uninitialized whenever 'if' condition is false
[-Wsometimes-uninitialized]

../drivers/power/avs/qcom-cpr.c:520:13: warning: variable 'new_uV' is
used uninitialized whenever 'if' condition is false
[-Wsometimes-uninitialized]

Due to the fact that Clang's static analysis happens before any
optimization passes are taken into account, it cannot see that both
branches in the if statement must be taken because dir cannot be
something other than UP or DOWN due to the check at the top of this
function. Change the else if condition to else to fix this false
positive.

Fixes: bf6910abf548 ("power: avs: Add support for CPR (Core Power Reduction)")
Link: https://github.com/ClangBuiltLinux/linux/issues/840
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/power/avs/qcom-cpr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/power/avs/qcom-cpr.c b/drivers/power/avs/qcom-cpr.c
index 9192fb747653..e8831e4aee05 100644
--- a/drivers/power/avs/qcom-cpr.c
+++ b/drivers/power/avs/qcom-cpr.c
@@ -517,7 +517,7 @@ static int cpr_scale(struct cpr_drv *drv, enum voltage_change_dir dir)
 		dev_dbg(drv->dev,
 			"UP: -> new_uV: %d last_uV: %d perf state: %u\n",
 			new_uV, last_uV, cpr_get_cur_perf_state(drv));
-	} else if (dir == DOWN) {
+	} else {
 		if (desc->clamp_timer_interval &&
 		    error_steps < desc->down_threshold) {
 			/*
@@ -567,7 +567,7 @@ static int cpr_scale(struct cpr_drv *drv, enum voltage_change_dir dir)
 		/* Disable auto nack down */
 		reg_mask = RBCPR_CTL_SW_AUTO_CONT_NACK_DN_EN;
 		val = 0;
-	} else if (dir == DOWN) {
+	} else {
 		/* Restore default threshold for UP */
 		reg_mask = RBCPR_CTL_UP_THRESHOLD_MASK;
 		reg_mask <<= RBCPR_CTL_UP_THRESHOLD_SHIFT;
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200130014130.51313-1-natechancellor%40gmail.com.
