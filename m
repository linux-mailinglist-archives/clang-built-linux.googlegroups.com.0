Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7NJ5OCAMGQEVCKEUGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA8537AF01
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 21:03:26 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id p8-20020a6bce080000b0290439fae86534sf4320368iob.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 12:03:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620759805; cv=pass;
        d=google.com; s=arc-20160816;
        b=fhYvjSQJ/R0XfGKrepHw2V22wFZw4/uRoQcWYQ2ryBJ61LPzm4q1xw6BXLzj6XbhUZ
         6xsDVKgzNrNrW/LgSvRa00TJ9G6y0uGBL24pA33ShDP5ymkv+UciQA8EnZFRCAY25lnb
         lpr6Fqf4W7X4ahcrYF58dCt/FORtDNj5G+vvarLZL2eFjkm1/wEK1YdDvagttEiG5sNL
         YtLbCyq25bCKin6zjHEO+cNxM+CkHSCOS98CiZg9chlOb61YwfecSZX0kG2LWd27ayUs
         HrOmhnbSPbphB8mlD//om4hswSyr4nGdqJBuRZEfb48PS73MV0nizwPGi7m68CXDDfVQ
         leXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=wNTFDZbToU1LPwBkSStR23yVhYFz2XQo1Bsp/qY9FLc=;
        b=HabVrqAaojBcOMcyQnWx6ABAGg1P3ta6MN7KElT+/DKx1XCWpt5vZ8Jh0KK1jjKSlp
         miPThpodnJSWqLo1Uex2k7cktU5I/vysSNTLlOsc8tJQ6yBFD35fJkE5TIbZ47rJMtMp
         +Pt4EskQGfqeo3K21aqISvfTIUzCDFueWydfpPO14KJqT+tZpVzS8wCVjCWGFdy5DIzu
         Cm91L62wBMnGTrBT/medkN8GD1O8itXOpAOoIzU+svQYqgkiWFwwc//V9ChDEiuHpptb
         yZyd4x4nHMEpbLP0rQgB8Fl4ghsq6K3GsRYCBTJfLKetlu93X/D8eO5siQSMBRYWZyTR
         TMmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=L91wfspy;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wNTFDZbToU1LPwBkSStR23yVhYFz2XQo1Bsp/qY9FLc=;
        b=GOFwgNh8bmyA0qfb0omWsKfLm6lB3Thfcu1hxt7Qk/zcK4ZbiJG2onDCtQ5G0NtOsi
         Orr0/TzwAmfpFoE/re7q0a5cpmDQpox0H9zpUKb8368jOKNcBpY0ZXo7Ysv/e4bRzTle
         8eNcDVihZEK6g94+rOyQ9QUV4h3xadjoQafnIsdY8keJwWFs2pQWyK8ubdVWJ40E/LKB
         ITQjmSo35G6BfJgay0oql4ebXxr0q25VAildtZUWAL429JIw+WkdfSxEeQQSaAPuLScZ
         /VXWOzKbTvvWfXtRathfLIUOjiGJMqqndmrEIFgCLzFyeUR+bQdms3aQBnPu2eM6Psh7
         JHkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wNTFDZbToU1LPwBkSStR23yVhYFz2XQo1Bsp/qY9FLc=;
        b=C+HEOE/6PbhP5MKW5aaFMEolxWtsWzHqXKysh7Kk7PjJ3Mzt1622ar/eTZo3F/VWun
         1LjcpxA4wlep+ulwzeZg9JdoGbuloTlZ4XubIGELuWSEx7RRlgzugUUJQaY6f2PTEfQS
         SIe2AS7rVeKdes10cUWs3o1fGV9qd15rltXCkWHE0Ezfgtj3EZuHmIuaUqr2bQhm9aIl
         XqiUa4+eHb4d6pZqAxb0KmxD22o2DlCYt9jnYP0mqXgIaF2AvKcgFA1jwjU9/t1N0gIw
         GtASfiFuE+uQ77E38E4d+PoA47yuvPxdn1OS793tAtzmonC1uYJN5KN8yYyAod1qQhH7
         zAjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NAQnSo9uh+RpFVApwGvH4JkEdJF5xnOXKC6Eybmbh2mPXDcuO
	0EmdId3ARnmLRvwsBGMCsbM=
X-Google-Smtp-Source: ABdhPJzsD5mrMTmyMpn3gGNhOd2L3a2SMecYtv4uKFaN/xrOz7LbhTdEtyblCiy0jG0YVrSGsGLeKg==
X-Received: by 2002:a92:d0d0:: with SMTP id y16mr1771841ila.93.1620759805578;
        Tue, 11 May 2021 12:03:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9f59:: with SMTP id u25ls2861180iot.10.gmail; Tue, 11
 May 2021 12:03:25 -0700 (PDT)
X-Received: by 2002:a05:6602:221a:: with SMTP id n26mr9882999ion.205.1620759805229;
        Tue, 11 May 2021 12:03:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620759805; cv=none;
        d=google.com; s=arc-20160816;
        b=veaDj8V9GDjrAvJ7lQFBNf1LMCNr2g6wElPT3PeOo2ZSOGpEZ6reytWJr935ciE1zb
         Jw70hzMe9HXA9P+DGIHKsAgFhGTf7oJ54oE6O0fzGFpcDdoei69gbPJVjaOcoIcJ+O2X
         TLrwHVdBpcplgq0FM8jmK+nmr3/Mc1QtuVbPni/tSXOzlFI34WNQuqzZAwN62XXgn6m/
         D0UTenE0iMz7mJfkiHoXyI9z2lxIzT2KFReeOVLCKQlZ3OKiLLPgagRsR+kqOg5lyRqu
         Uy0iGDx90sfH3eWNuJXuHgxt1CFLoz1HR4sZ+NrDzr4ZfEW+pUXrUmI5OVQO48Uy7pjv
         tHQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=bG6k9Qci2yuTw3Pw0iYm0I1m4cg6VEheA4ijBojAjCY=;
        b=sLwrTUiQP97WP/+UmtTRuAMY4yi5Z2c1xT1c/YLRKRApkvVSZpmj1tfjDIGSGEqvOh
         sDP4itYwh79h/uO/BseR/xd1bGieWs0chAu4InzKRy1zd8VNOC1boIDjXvcxOhTVoYo2
         x+ws2v/hOCRU9GgNfZjUt0lTdHXqb0y+40fqnzdoFoT9s/EOMbhr9ml6GG9qWnr4H7e7
         2spp7sQ0ez98vh4iVO1Z1Mkbrq30S/kNBLVYUSA3atpacVvpYGbBlROFBP8iI6QLEmeh
         V/yAwexKtxqXDMrWE//wwg9l0nZLgQYJIH0AQMvqbURst/p/aZ/0BSwyUKSZvQzmz2Ye
         7bmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=L91wfspy;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l25si1316284ioh.2.2021.05.11.12.03.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 12:03:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 45A9F61554;
	Tue, 11 May 2021 19:03:22 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@codeaurora.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Yang Li <yang.lee@linux.alibaba.com>,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] Revert "ASoC: q6dsp: q6afe: remove unneeded dead-store initialization"
Date: Tue, 11 May 2021 12:03:06 -0700
Message-Id: <20210511190306.2418917-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.1.527.g2d677e5b15
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=L91wfspy;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

This reverts commit 5f1b95d08de712327e452d082a50fded435ec884.

The warnings that commit 5f1b95d08de7 ("ASoC: q6dsp: q6afe: remove
unneeded dead-store initialization") was trying to fix were already
fixed in commit 12900bacb4f3 ("ASoC: qcom: q6afe: remove useless
assignments"). With both commits in the tree, port_id is uninitialized,
as pointed out by clang:

sound/soc/qcom/qdsp6/q6afe.c:1213:18: warning: variable 'port_id' is
uninitialized when used here [-Wuninitialized]
        stop->port_id = port_id;
                        ^~~~~~~
sound/soc/qcom/qdsp6/q6afe.c:1186:13: note: initialize the variable
'port_id' to silence this warning
        int port_id;
                   ^
                    = 0
1 warning generated.

Bring back the initialization so that everything works as intended.

Fixes: 5f1b95d08de7 ("ASoC: q6dsp: q6afe: remove unneeded dead-store initialization")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 sound/soc/qcom/qdsp6/q6afe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/qcom/qdsp6/q6afe.c b/sound/soc/qcom/qdsp6/q6afe.c
index c5c1818a6f75..729d27da0447 100644
--- a/sound/soc/qcom/qdsp6/q6afe.c
+++ b/sound/soc/qcom/qdsp6/q6afe.c
@@ -1183,7 +1183,7 @@ int q6afe_port_stop(struct q6afe_port *port)
 	struct afe_port_cmd_device_stop *stop;
 	struct q6afe *afe = port->afe;
 	struct apr_pkt *pkt;
-	int port_id;
+	int port_id = port->id;
 	int ret = 0;
 	int index, pkt_size;
 	void *p;

base-commit: 4ac9b48adf4d561d0e33419d548278f205dd70b5
-- 
2.31.1.527.g2d677e5b15

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210511190306.2418917-1-nathan%40kernel.org.
