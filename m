Return-Path: <clang-built-linux+bncBAABBGHYWD2QKGQEV5QEKGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id D122B1C1910
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 May 2020 17:11:20 +0200 (CEST)
Received: by mail-ej1-x640.google.com with SMTP id qn16sf4678586ejb.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 May 2020 08:11:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588345880; cv=pass;
        d=google.com; s=arc-20160816;
        b=Shxc/6hAy0ZfWheaYDKYmeKSDhURmvRrp38+X+s/f4imvSVEcsGwfwcOSJk69sEfA0
         98q0GcJq3778M5qYEfu/1Bwgrum+94NxGjNy2Qln59qbvlf9WVDfeYEsbMbT8FvnUd5k
         wwXVhmJoONvISbdx/j6NG7HcmExFtgctwSGyqic6IxVy7HQV6DSyKeAL3V3KfsUY3W6R
         Ofn4/wl7meGEQskBgQwYyVOgf2Herg26+ZUZKsDnZMs+Ohsl4L7zrtNWS1Bpxv+RABEj
         +0qGvPhMp1WUJrqB4YLwAP6LAy4TtlSSHg97MPZCxz63oW9dwnYCK1xIfw1UkeeC0Cjt
         IFcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:content-transfer-encoding
         :mime-version:subject:from:message-id:date:sender:dkim-signature;
        bh=93GzIaUwa1KZGzqzjueijTeqqd/Sk21pNTJesXBbPcM=;
        b=JEWNw/Y+abUtBc0P7Uqp2/KP5HcNz6w0BAm3brhZP7/+RzWHtSjeT9N3HZA3V8qQ2v
         Rd5sVvEZhRosJ93Ia+usaV3elyRl2nuWb8gRpSpy7fvD6abBfspvw0pUSseUtJbmgBcn
         ROgiK3d0b9RFWkx714h1Ecp39L12joD1ujrl1MXpslqj7Bf+9oQu1Wj65xDRFNmeGeOf
         8HoEtKfgCpNEAdVcAh0a4RGTaqjSSf7EuFL+bqZUFaRPaq0FYfGM6pKJqJLMIQ9CEpaQ
         Xb9rziTpZ/KmkSMerlQ10cwfsmmM6toQQZ7oKhOwHrSWCetQNqElqTuaaarsp1jmNgEv
         eO5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=jL4fRjRp;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:from:subject:mime-version
         :content-transfer-encoding:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=93GzIaUwa1KZGzqzjueijTeqqd/Sk21pNTJesXBbPcM=;
        b=iMh3UdfiYq519JylfHToRMU1E8FaPR30OqsfTjOq3WPdVM90dFj9/G2Dm9f488joXt
         oSU2V1SwV2y2EdRDatyRGLgnBIazRX0kiwkgUkHYZ33kZ02CiXZbXe6SSwzysEhaVEOh
         rFLc3BELGLvLFTsZZq6mwWa05BUbaP9V/YG91keVd+O4lE7/CSABF1G1+8PIEN+2MJQK
         a7rhNqL2mM22/Gwe39rVE8n36UbY8DgbJdLRTaunVnChMToQtdWEoB/2hZO/4bpRcaO+
         350+UOotoekZXgo92g+sn/QzTSbxn6eWRRQze+AikAlSGioBDvkNOL8c9SwlI+RgDKPK
         z4VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:from:subject:mime-version
         :content-transfer-encoding:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=93GzIaUwa1KZGzqzjueijTeqqd/Sk21pNTJesXBbPcM=;
        b=NLrVgR5MRDTSkGmLc+vovAVkM2BOmfmueVjqf+T14Hn01LJM9scWb+sjwFEfnogMis
         GGpxhH20G0023pfi1NAWtO3Vsa4RyMhAvVlt2KX8vBBgdOGsDpKCmw50Tp/BB66+Ru6o
         ezmDosoK+v4iHgXgxuXjVCxkVeKaXs0QFufkylIUurbM/niT1NPTHTuPklo6jmlnSeWm
         0uE7RuiLJRGXVaV3XIOCEWN3aLaufTYTkaIThITKYYBk4zmusBPNEBcOi2eAiSuKVgGO
         1nNaLs6HnNrSMvn+XAFQwFD48lRkw13ztobVh9TTSk/HM/cwxxHwC6Xrkv5xU1nMY/x9
         WZxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYzDq+xddiRtOMA04k//OCSyoVoXHmdVQrYM8dLNNs9yL7RKb7d
	sMxBNCSznd+gAW2B8KDu8dI=
X-Google-Smtp-Source: APiQypJMvC+8d/1S49XBMM+rgx4Obzc8LEXoGX4rPHFq0qwqtlHN1pZRbvAeEXbkC6p574A+xrHVGw==
X-Received: by 2002:a17:906:6b05:: with SMTP id q5mr3566893ejr.329.1588345880443;
        Fri, 01 May 2020 08:11:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:2351:: with SMTP id m17ls2630495eja.8.gmail; Fri, 01
 May 2020 08:11:20 -0700 (PDT)
X-Received: by 2002:a17:906:2488:: with SMTP id e8mr3644034ejb.157.1588345880004;
        Fri, 01 May 2020 08:11:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588345880; cv=none;
        d=google.com; s=arc-20160816;
        b=oNn6m60NQ1Q1DeQbRnksiCZD6ybC1WtUxMgB+VE931hNerWKHrJeLeAuw7Dz4EyBci
         l6tWCvLgHO4deadcFDMXE3b26FGOu6vjHS2KyfS6x23OCFcFzAUB1oHddH/0SOuEaRn9
         i9Rk0EAdRTh4TZyv7AQqKZtPK2SKttDsC8AXZQsXXLpcLQ4sU2dBmX4NhBQzYiKhZraY
         lEHV/+fR+W87w5tRA5Zcp5ecRCbmeAKmxMy/yX/4s2i4fEim0FNCttpfzk1l8m6r/g1/
         InxMyxhCOYeQPsrwRnmLw0kkHou9JJsrKUcbB35nu36F7gbStZlsGUdkAMRFAbdFF9lr
         82Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:content-transfer-encoding:mime-version:subject:from
         :message-id:date:dkim-signature;
        bh=is3mva3eZvKXtsGL4DQpNk2sVGWh6n99MP6y8w36qtI=;
        b=hOvZwbm3VNe7rkMNpGLlW5LjOhtECwMpdvcY+9x+marvvkPtpNQI2zNcFtR0nW++ke
         7kApm6WGFwnDvrRlp9jUfQHhNxaloGI3ApFnCFTA3y9GnxyUFiSrNdTV/vXLIkk2IizK
         8hO3J4BKrXsZlgcpWOmnxokD5A9FyhThy14lTXfAo2afLfdOkiq7QETaJMYt/hHdwb7F
         MLcTecTVNIQYmADugBWE2becB2fIVB/1vODg4bRx7fPPPgvtOF4CoqLScGxBT3tC69Zc
         g6cmw+AtaEh5l6nQd8rl0Kd6g2uvgInVU4OouQYA2XP2VR8GJ0mZMbDU6e+T9+sJwzaC
         RVfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=jL4fRjRp;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
Received: from rere.qmqm.pl (rere.qmqm.pl. [91.227.64.183])
        by gmr-mx.google.com with ESMTPS id l22si259135ejz.0.2020.05.01.08.11.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 May 2020 08:11:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) client-ip=91.227.64.183;
Received: from remote.user (localhost [127.0.0.1])
	by rere.qmqm.pl (Postfix) with ESMTPSA id 49DG1238SPz7N;
	Fri,  1 May 2020 17:11:18 +0200 (CEST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Fri, 01 May 2020 17:11:18 +0200
Message-Id: <cover.1588345420.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v4 0/4] power: supply: core: extend with new properties
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
X-Original-Sender: mirq-linux@rere.qmqm.pl
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rere.qmqm.pl header.s=1 header.b=jL4fRjRp;       spf=pass
 (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as
 permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
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

This series extend power supply class core with additional properties
for measurements of power supply input and output power.

v4 is a rebase on top of recently applied first part of v3, including
patch 1 workaround for gcc and clang bugs.

Micha=C5=82 Miros=C5=82aw (4):
  power: supply: core: tabularize HWMON temperature labels
  power: supply: core: add input voltage/current measurements
  power: supply: core: add output voltage measurements
  power: supply: core: document measurement points

 Documentation/power/power_supply_class.rst |   6 +
 drivers/power/supply/power_supply_hwmon.c  | 142 ++++++++++++++++++++-
 drivers/power/supply/power_supply_sysfs.c  |   5 +
 include/linux/power_supply.h               |   5 +
 4 files changed, 152 insertions(+), 6 deletions(-)

--=20
2.20.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/cover.1588345420.git.mirq-linux%40rere.qmqm.pl.
