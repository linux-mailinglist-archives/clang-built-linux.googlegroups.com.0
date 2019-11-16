Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIFXYDXAKGQEE5APYQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFBFFEEBB
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:54:09 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id b17sf6011086pfb.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:54:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919648; cv=pass;
        d=google.com; s=arc-20160816;
        b=p71sLVqj9Vl2fg+HiLUqbj9C3OL7rnbalLfboutThOyQnlJQeAZRiuJeoIswyCo21z
         GpunLK8Gbg/U8FSL+MA8RBtL3iX07OhU1ThGBbjp/2/4HHFGbUd563eyRuhamhrDrQE9
         tvJhulOrpzZOMC7lSXgwYfthrZEWwFZn0I+0nsD6jopfkOJmzG47quVq0yrs/wcnV6id
         s4oCTfmDpD1SnctlVmYtqP6mPe/h5GyRQ39azwGEkR+pHgrc/QBlY3V7FS4gjwwvl4/W
         rYRAn07NbrwI2VTm6FD1DRUqmji28hvBhSXWLGYTV+3QgcnYpvfqA2m4WJFzsFEDSNpS
         ehRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uKxZ6bQUbj59pXUtAYPLByytExtxjBTkLIwc1S84NkA=;
        b=ZjNqwVP1a/YH4mMRa70RHpz5b1h7uU2M8AljRzKAc5x9dyRBAlMN3hFb5y64g89SyE
         ikWYGsLHEueMeSZkjuGoDsoFsb8saSJB1aLliKA7qlfDbp0KuzgZN9y8Ce0i9HSMqSAo
         c1eeSu3Qu4//lHWoouyFLLiVwN+sKfzashwP1p/4qBCOK8HX665a5L9kmL6fDz4T0c/c
         aEDcZwtNSB1wqmCBarCobmRAcq/rQbaAP5ze2XJwze+Ehsgk7ZzV/PkbSG5FOhB5/uUB
         KOWmj2qPXcVaiarD1rxp2D9paP66gkc6oh2Z3NRhZs5HL6eimSRsfG6YkeajdsNQjsrt
         /bQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=y4EUKcjG;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uKxZ6bQUbj59pXUtAYPLByytExtxjBTkLIwc1S84NkA=;
        b=Aer2fKwJDCZnaaB6gzreXeuiulKZDRygofd41JrL2MfD/8kSrNkz414reFRga0h5Ff
         ixneZiOB1wOFhytrwIp93nah0R2VmJLduf1FkHUuiyenBNm8Vb/EwiucpakMbHpVD9YT
         bC7hOB8/94o/evMd0IJHSZlbL9MlGC6hGhixQL2I7DI4zZnf9b3skFKPJaSCef5v0/in
         yAOAeVCGiMebqiV26hMcT0NtprycwJ8kdbnK25iHUE427891RRsqlZxqzCrVoYTcENEL
         fv3SiijjyStYQJlMFCDJkV7qTqxdid6L0AlDq1lwUe2s+zdo52mi/c1BkpDbVzlQj0Gl
         G1Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uKxZ6bQUbj59pXUtAYPLByytExtxjBTkLIwc1S84NkA=;
        b=Bk5Fc5sDCDGCoLKGBDrXpGwEp0X4oBiyiB0V3d78Z//M3ARe9KCAHjtFQdzmMrrtrJ
         x6VcWuC4KOdfXnlk+BDGsK7eieMBaOxGZufNr2P/YN362tqNZxUSLL8Y05QBwvTcZf0J
         6vQnfzL7eFiWh+vEZnTSJfPrClwAeVxa/NawKupoKQdS+cXbmJtaRb4e+wffLyAc80Zs
         LzJhhQm1AnZIL99KZLzuNoA/2aX+HOGZcPW2q4GFQTDBDF2qLtSNpmnJ2f7VQiFSL7fk
         IIWO+RLYVjsw8Gqpye/b4g16LB8izhm7sXdacGUfryvnNK6SmSY9FhcQPfcxGSj+3yNi
         bYsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWDQSs2FFTIppa6S2YXne9AGjp4sM62NpIqxt7DiEEKGxhO2sxp
	wIOsCbDKBXe4Q5KrN7x0vcw=
X-Google-Smtp-Source: APXvYqxQ2pKxYLrF/CWKIzRWgsgtRyCFm/pUnxXLXDNfhv7BlSAbuPZK/G67legrDh64vTeJ/m5PoA==
X-Received: by 2002:a17:90a:a416:: with SMTP id y22mr28019141pjp.91.1573919648413;
        Sat, 16 Nov 2019 07:54:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b042:: with SMTP id z2ls2605652pgo.16.gmail; Sat, 16 Nov
 2019 07:54:08 -0800 (PST)
X-Received: by 2002:a63:6345:: with SMTP id x66mr7365726pgb.11.1573919648005;
        Sat, 16 Nov 2019 07:54:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919648; cv=none;
        d=google.com; s=arc-20160816;
        b=ZZBhwtx8BvGk0HDZ9XArSfJAo0+XjjWTeBWNvHAql97qsq0Q5qoBfMu9v3KOgyMRWL
         zGuo9CpZiH2cIoVNU4X+bZTgjjMsokh2vbb6NOEtLsKOyAKQrjZEVcYV3pACBunVqIt9
         g6nrm11bMCAGgPSVNYa+cS65mY5kCOjqzKOay9UjN7veKK8Wb3TAjpO6y8OHDEWleD3O
         b6BUx0ctKZbDu64bSiC16T9WE0b8WXChKLTk420U7OEF6PGyZu/d4nY/6pNpMuDzVqCu
         OY5rFtP/PJmyFuufoOu9lQ7lHPQZN4SITC5bqOsLPsUfSX8LxCsTs8WKCXdhCu2A7bBM
         MTjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wJ/NlRTagFPcsqrFk8zeu5CRlS9wS/Eg4agIfYn9wFM=;
        b=iKNHUuRHZTt8Vb90GevEEyEhmxWqGekQ3Qd4bP4uEYJrTR8WguHqRRr70e15gmxcHu
         4IZ8CQ4G2+Z3bGteVxtGrn1KGHV3uvOrykgwZbT45grWjIHto7Ai5TUMN0nOVtQTn992
         SNCqmk4D6dJmdZIvMhIQjWD1xLcIpirTUykGA+GGUQgtrt6udNZOv1KulQ+dl/5V4FOe
         Gwpsw6CM3ptiVfgV07pmoibANLlYJaEYdeXQv9+0I7xa3jMYcwxSkRuNKoI9U2S+5IGE
         0LFwEPLJ4ySgUAy6gQRgZEZPJrUigTzo7fhqUObfjWPIdJkKtHESkjwSjhPVQKjMzREO
         d20w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=y4EUKcjG;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b15si735386pgw.5.2019.11.16.07.54.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:54:07 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7DDF7218AE;
	Sat, 16 Nov 2019 15:54:07 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Philipp Klocke <philipp97kl@gmail.com>,
	Takashi Iwai <tiwai@suse.de>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 24/77] ALSA: i2c/cs8427: Fix int to char conversion
Date: Sat, 16 Nov 2019 10:52:46 -0500
Message-Id: <20191116155339.11909-24-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155339.11909-1-sashal@kernel.org>
References: <20191116155339.11909-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=y4EUKcjG;       spf=pass
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

From: Philipp Klocke <philipp97kl@gmail.com>

[ Upstream commit eb7ebfa3c1989aa8e59d5e68ab3cddd7df1bfb27 ]

Compiling with clang yields the following warning:

sound/i2c/cs8427.c:140:31: warning: implicit conversion from 'int'
to 'char' changes value from 160 to -96 [-Wconstant-conversion]
    data[0] = CS8427_REG_AUTOINC | CS8427_REG_CORU_DATABUF;
            ~ ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~

Because CS8427_REG_AUTOINC is defined as 128, it is too big for a
char field.
So change data from char to unsigned char, that it can hold the value.

This patch does not change the generated code.

Signed-off-by: Philipp Klocke <philipp97kl@gmail.com>
Signed-off-by: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 sound/i2c/cs8427.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/i2c/cs8427.c b/sound/i2c/cs8427.c
index 7e21621e492a4..7fd1b40008838 100644
--- a/sound/i2c/cs8427.c
+++ b/sound/i2c/cs8427.c
@@ -118,7 +118,7 @@ static int snd_cs8427_send_corudata(struct snd_i2c_device *device,
 	struct cs8427 *chip = device->private_data;
 	char *hw_data = udata ?
 		chip->playback.hw_udata : chip->playback.hw_status;
-	char data[32];
+	unsigned char data[32];
 	int err, idx;
 
 	if (!memcmp(hw_data, ndata, count))
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155339.11909-24-sashal%40kernel.org.
