Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWVLV37QKGQEX54OLMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3762E73F9
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 21:47:23 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id m203sf25575842ybf.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 12:47:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609274842; cv=pass;
        d=google.com; s=arc-20160816;
        b=G5d4bQtghMi/coxYLIhgzAXrsMrmvpFzS5PqslfmJMICb8u4X/DUev5LcRbN3Sk1vg
         EL5DXVtt8C88q01t2iAuFRmfx3JPAfK6xcdT+LKrldHaSJ5NnCpBEdrRV+x8njwT8BWe
         zhRIopH6ZabNf8BRrzACIPqqEPXbjr/40Fx3RgzwPTBWMRN4rR93dFqhniPTMSLyUVeO
         SgNWpN9sol+IHQOrpgnxODGDC0NgLnICE2G7yBaKx1YTSxiVWzGMa/nHVtcC4FanIEb/
         LNLj7004fbOyaj5PDfvZ1iiRPjYVybuBn67yXXPZX+9hg83QY6C71ADtlUXv+2P7tnEK
         mOHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=Cag1KGNviQMaU8XQCrBA4lwtQ5yeyx+g2ldwhZhMjs0=;
        b=kp9SuAuWI6+Z4zzN4uFXRyzPwBgdUbJFtT79/cKoeBInD6mmXXoF1UX2f1ac2HkUSj
         Rt//oHWldFSV5RIQAmiq55pxDLcBZ/D4PeflUNNeY0p79oxjjM/VnTUaPX3nlDmSeybl
         ydatPCeQ64oE7cD/I4iP0AkyMLSVMJHYYswgwhjHiNJV00eQKC8Sjvfbc+74flMhQ+2W
         634ojZUKNRXKgOkP/NuHwFkcoLW16GUvinma3W7usTvUrnyV0o/daHv+iwoETiRGsd0a
         bNJel+oNjglAzkpffTvWVAq5pZ0HX8L+pJqiprMb/F1DD6u+f1wIltFiWm0BCUyuX+xy
         alqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VbPKpHSd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f33 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cag1KGNviQMaU8XQCrBA4lwtQ5yeyx+g2ldwhZhMjs0=;
        b=sg86GM/tUYpCj317/e1sR4skSIRPZay2IRizEi6+E9w3UnWIrY60mow9ccNcdZgKrm
         AJM5KJfFfvCP5lRTv23qOubphnstpca5OrcY/oe+wO5XgsY0eFv/Ca57srWGIlKY/dzt
         jYN3CVPUooArnSesCAEdcyNIHWPdXRs7xVsR+a53ScoB5mDl1Q+AwQ8SAkh9OijWJqoR
         nGXNUPAKm2wU5ae/k6h2JwkGbEcfv9IHDNs7VnRfToImYKpVqSCnBvlG40k+pi6GR9F1
         St18Rc4N/3JSB00hJJcnb7KmVpcHmJfeJRIzjtvw0LhJqRIMdVZrMOEciNg6MoY8dd1g
         7suA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Cag1KGNviQMaU8XQCrBA4lwtQ5yeyx+g2ldwhZhMjs0=;
        b=WSjAqbYryKR04r1vSWQVFS6P+TKl2fWjoYjb5ic4pl1mVKNCnjwuZSf+gmr3N+D/bk
         +CvCHVqyavhuruYsORTuWCdBNXsTQZzybRjznocNZCPjGNnfaAsC+N6yRxu/DYdX7vge
         +0v9UjnCdDWTJO4an/n+3qSxzZpPVuN4fcERthsJKNJU4+FqcoM1BTaf+OdFh3z1+h6X
         4QHT8MZ2Db1G/WEzGxHJI7dh+6qmcAW+L5fPpmcVgsdYFpRuyKVES7ROHAO9NdYa0ZgX
         PT25GQk+wOIYgrhXvDorWTebhq4a9uiRJt1kcEgVry53SY6z1XjEmD1osJRVo2d28QCU
         2alA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Cag1KGNviQMaU8XQCrBA4lwtQ5yeyx+g2ldwhZhMjs0=;
        b=GyfgfVKStJZAfOLgZEfTPG+REDK0DJAyO1a8pGxWgbKEJsw9IgWdjQIrh0dZ5Wbb2r
         wqq6NoR1B7Dl6bNYt3XWcUoOndB5T5DEkbDn5B0VgUqbAhQyFTfYXPB0CyYMGMwomvqn
         lsfQFdoC701tsqsQpkS92WFEVob9YFel/3FptTeZjp4wn5pwHEPm3LYgkQN0sU1LtiFJ
         5e+C6T7f9vZULF2sZboMITRkoLpJjeZZAhYw/Ajq5iGKx0xHhOdqGixDS/P8KqAOOqMu
         nTdaJBvBwQCjn/BzCbfMCXfM5GlHl2cFBxOF4NBcPg5hx3qjDcYqjaKrIGlr7LmEsWtF
         v2tQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310PE3tbiny5S0POwN+bexPBpwGeV7bacJebtQprxueC+H4LSUj
	a9lR1RavqMlvV/Z4m/PcwPU=
X-Google-Smtp-Source: ABdhPJya+PgqN9pl6El0YrQIAHwh/oKMnKDsvSQt6keAgH1fbnUfmN35a99Et7fG8hV2gmXvi4eplA==
X-Received: by 2002:a25:4148:: with SMTP id o69mr71356840yba.462.1609274842865;
        Tue, 29 Dec 2020 12:47:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:20e:: with SMTP id 14ls30326398ybc.0.gmail; Tue, 29 Dec
 2020 12:47:22 -0800 (PST)
X-Received: by 2002:a25:9b45:: with SMTP id u5mr61318497ybo.331.1609274842447;
        Tue, 29 Dec 2020 12:47:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609274842; cv=none;
        d=google.com; s=arc-20160816;
        b=WYCzj13XEHGWKNpQxg84E6CodUwrNvYVGsPH1UEEZcROLq12bGWU6YqluArxvKStu/
         aXD6I6eAJHjshwrCFzfnn6ugUADvhmKIBg77+ZX6wmHmFy4QXpV3u8DVc7iE4+/UIon0
         LkvMfY3f/DU08lfh3mPkNIgNkFXrj5NOPrul80OhrkKcNaKWu/BKNAtaS9vHnBfmJ3tk
         e8g7lpf5PkoaHjDEBrjDG6VKnc6sKOez1+OvzMVK8xQU8PEg4iT/cUPyoDAOzMFlRzEa
         nBMF1wLhonr1dcNYRVQMPMVUnnzPtazVXFO19Wdh490eUmNO/Acfhtwnz4I1unoKZ0uQ
         CiOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Y+rG0GxaF7x1wXd8TaaHi/8Xfv1oonAYxPZa52+iv1g=;
        b=RC5R2r6FlQ6LRt+h3kjOzLtahu5OAn7wiDJVYxaCiX5sAGzI5Q94pe50fZLYpvGOfz
         Hu68OZ1jMrUAV5WAt5AD6bWoRJ83Ui8yMVU9+fB/aEjCBdPyUz8jx9Xsqwr7NcfBD0uU
         PiGpkvdHc1jTo3DGAaq/Yg92ut22sZJ5xoLiW/6Hj6U/b8Gu8jXcyQFcONEb9iodn+Sp
         SOvS4pizWF0W9TQCbLbR4uvFNbzPp5RS2wtxc2rpu/LNliP+nzf28xf8Jxi75pb0Iia4
         7WRrzYoJGXRMwvRocY41BebfuJOLxYGEgkt31BMnIx42PgQA9eEzQ4PR0bUC4AOSvKgg
         FyPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VbPKpHSd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f33 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com. [2607:f8b0:4864:20::f33])
        by gmr-mx.google.com with ESMTPS id s187si3912523ybc.2.2020.12.29.12.47.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Dec 2020 12:47:22 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f33 as permitted sender) client-ip=2607:f8b0:4864:20::f33;
Received: by mail-qv1-xf33.google.com with SMTP id s6so6875773qvn.6
        for <clang-built-linux@googlegroups.com>; Tue, 29 Dec 2020 12:47:22 -0800 (PST)
X-Received: by 2002:a0c:f690:: with SMTP id p16mr5946583qvn.58.1609274842134;
        Tue, 29 Dec 2020 12:47:22 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id w8sm27667541qts.50.2020.12.29.12.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Dec 2020 12:47:21 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	Linus Walleij <linus.walleij@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] pinctrl: nomadik: Remove unused variable in nmk_gpio_dbg_show_one
Date: Tue, 29 Dec 2020 13:47:10 -0700
Message-Id: <20201229204710.1129033-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VbPKpHSd;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f33 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

drivers/pinctrl/nomadik/pinctrl-nomadik.c:952:8: warning: unused
variable 'wake' [-Wunused-variable]
                bool wake;
                     ^
1 warning generated.

There were two wake declarations added to nmk_gpio_dbg_show_one when
converting it to use irq_has_action but only one is used within its
scope. Remove the unused one so there is no more warning.

Fixes: f3925032d7fd ("pinctrl: nomadik: Use irq_has_action()")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/pinctrl/nomadik/pinctrl-nomadik.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/pinctrl/nomadik/pinctrl-nomadik.c b/drivers/pinctrl/nomadik/pinctrl-nomadik.c
index d4ea10803fd9..abfe11c7b49f 100644
--- a/drivers/pinctrl/nomadik/pinctrl-nomadik.c
+++ b/drivers/pinctrl/nomadik/pinctrl-nomadik.c
@@ -949,7 +949,6 @@ static void nmk_gpio_dbg_show_one(struct seq_file *s,
 	} else {
 		int irq = chip->to_irq(chip, offset);
 		const int pullidx = pull ? 1 : 0;
-		bool wake;
 		int val;
 		static const char * const pulls[] = {
 			"none        ",

base-commit: 5c8fe583cce542aa0b84adc939ce85293de36e5e
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201229204710.1129033-1-natechancellor%40gmail.com.
