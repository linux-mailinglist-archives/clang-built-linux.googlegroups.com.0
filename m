Return-Path: <clang-built-linux+bncBC4MX6WW7QIBBYE44SCAMGQEYQFLBWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B71B37834D
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 12:43:45 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id b13-20020a05651c032db02900cf5cc3941esf9101634ljp.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 03:43:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620643425; cv=pass;
        d=google.com; s=arc-20160816;
        b=KJaIZVUPTCa8RNgcUVxKpvUBCXXiZ0OpOrMti1LtADnujOsEveffMYRKPmo6FL53s1
         a04YVh+8UdD8//gFVS3uSaUtD34G9zU331jBIjiZ+Xw7+YzhIiLNZHJCmO0jrBpjiNp1
         taSlC/cbCJuUJrxMQAXRfPeYtP3bB5MAg1RqRQqFw31x+tRR6ChWrt5Cx1cmHx3Wm6WT
         JUiaortokAh0A04WwGcmVGQQRGjAjEoIr40LYekLmSc66T0/bw2CBexe66myqNa/HJgq
         VOe14/Mf8wfOxCwR8N2/8KgTUza1MBiu3ynQU2iRuD79Vhw7K7lBSS9kGA/W9s+Jd/HU
         LKCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5Jv8bYBSSfeVkk+l6zy45wqwkl5M9vwAoEvwm2mUbL8=;
        b=RaHwHRPQPrgcKCv0LcIrs9ool/H7iwan6W3H3KupuZT5q5GwmrGMFpV8eQI0Wj0Ylm
         TghtHfSjPtOZrdOwQo42n+CywE5reFJa0rN4QVCELbMfvVqGNpXLujZbkyEKLvIxCD/h
         MxLO7mVefjZp1PRVx5C/8rSsNWBEKlO3VFP1aeEugJkJfo3TyGToyYdqr0Nm6y4cqDTx
         YSa0ajWFyZvht5CIRWTYU2HvArYfkqoXDgur86lVF/HY9Xp5YIyig2GnH2IgPbjgsv1k
         mjam6TQy4S9Zcb/VfkCaGYiZWTeDm5+qu6vXxOWR4GkMlyzyOEm0F+yD7TVzLFOrTB78
         3aoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.178.230 as permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Jv8bYBSSfeVkk+l6zy45wqwkl5M9vwAoEvwm2mUbL8=;
        b=s9nFHewLJHV7t2OFCgNsydKAulBb88efYPmGr6DKVdehKYhyLY+bRvTl3fCDKlKdhL
         YoZlCFFNTn/ptRceAgK5NIYIIpNxDBl6NyYyzbLuzByULEwaPf/V4S8bJIZeBnLBCOwg
         OPNzkh+p4TCdTfu0FvfNQlw4Db5pWBLM0a9uh3NabuXiwzDHz35hCM4qjvTbgy5esMJO
         mM3Zheyemi1oLYZghRqFk0R1XDwaJlf9Roz00gdga4aQ0FbJc27oSKF93BWf3snkA3Xi
         9BWEjBwa00Mcvb3KN2QDJHr0IFSXvLBX2zk7BGlBnSuOC6e59nMXwvf2iFVPQdiKiStC
         sCtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Jv8bYBSSfeVkk+l6zy45wqwkl5M9vwAoEvwm2mUbL8=;
        b=b6W6Egp80+RepUq6RLos9e++CoqfLG8c6gGSY0vQ3QXp60C+ze5EkwcfDqJgAHBD05
         FNP8ClnE2bJ6sylfKIfChE7IIKlk38TF/DaWxvBGu7NWZ5lrTs75afoeQ6I4b9d+MClf
         Oku+S3OiNvv2ZoLqrEqvFd/I1GLD03mtZB8Tsqt0BPr4vAxOYPWaHY5B28jU8MEgKKuF
         6kOqJxxV7iLvVi/OR6qkJp0am21rjxXZfdKOoPH9kraAAW3Iz4HAtnCb1wABXxoYPEuj
         fPUEEoeTWXqowF9SdMhw49RMKTwLzTW1QLUQJKlysIgHm36b1PEgeTa7xtU0gCF8Mr9u
         9X5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UFYhh87sjC9PLzzbDcZHQAxvbXxL0HZNhWJz0/TcHL1lgx+ez
	3RLkVvOxeAllCipfvKsvTKY=
X-Google-Smtp-Source: ABdhPJxHwZKdEuCYoF9CBTs7RYb+u61dFBCAzdh2Rm2g5uQqeyHj/LPcrEWs7cGmRMErbEMEIxwgYg==
X-Received: by 2002:a2e:b0e5:: with SMTP id h5mr16776569ljl.453.1620643424949;
        Mon, 10 May 2021 03:43:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5e2c:: with SMTP id o12ls9389655lfg.2.gmail; Mon, 10 May
 2021 03:43:44 -0700 (PDT)
X-Received: by 2002:a05:6512:3d8c:: with SMTP id k12mr5686866lfv.272.1620643423933;
        Mon, 10 May 2021 03:43:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620643423; cv=none;
        d=google.com; s=arc-20160816;
        b=G7W6+rsdEZeI3GQbofmY0/lGKFCNjctPukmDG/s/0fQvypzWOkFbZzJYQn0g0drc8H
         2jE0O86h4rwzV2NMoC/n9sLj6kxFy8wboqQpg2CESKqL3u1QHI2tCCC4dQezEMcyeUoI
         EBJcK2IKPqxXamfiHKM8/10Jb82aFib1LZZIxNYSp7uaqxQ6tq41UczjaIC8puQbWo+g
         dv4anaR/U+JXp3yjtip5fB0IoHNYDEyowGx8RYfvpEwTrwchFBXV8IlMDUesFNGfe3hs
         x4rsOuGTJBGDcy4DiXlCHL68bX+VbwRaFSMwnqOWSjR9P9msa5Tjj3McK94/tvqZHwZU
         OswQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=VeMpANmWWRnhL2Lgqd05qyXwusnYMX8DUaAVhQNSe2k=;
        b=EEkv6PB/fpCNWyqzVVST5D1VGTn/ZCaxOC4f2pG3MLl7XpAsWENEuyGE8Ep6odbPEl
         OeStYXSfkQqk+Y/WV8FY6oChpdb/akW655F+iakEHCPo+ZKbGam7gIZH7B/FBMOqpW7i
         g2nuPbl4yhET+DhNKUMioIS6RPSLZq5WGlmkiF/F2DKtcQLPiSlvRp8iFfYU1zowQ7Gs
         bJ0Kp3D5zNnmbYHwAxIMN75ObQw8CzBzN2B003Ma4qM07ff6H/3COJ1SEiuxZBhG+Z79
         QxwtLPUAwOwTAdYorrtPmN1rAEphwEXt60Gacl6bekY0QFzNEdvWNTjoiY78Ae2dC9VI
         Iy2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.178.230 as permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net. [217.70.178.230])
        by gmr-mx.google.com with ESMTPS id z8si758172lji.4.2021.05.10.03.43.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 10 May 2021 03:43:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.178.230 as permitted sender) client-ip=217.70.178.230;
Received: from xps13.home (lfbn-tou-1-1325-59.w90-89.abo.wanadoo.fr [90.89.138.59])
	(Authenticated sender: miquel.raynal@bootlin.com)
	by relay10.mail.gandi.net (Postfix) with ESMTPSA id 40D6E240008;
	Mon, 10 May 2021 10:43:40 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Yang Li <yang.lee@linux.alibaba.com>,
	miquel.raynal@bootlin.com
Cc: richard@nod.at,
	vigneshr@ti.com,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mtd: tests: Remove redundant assignment to err
Date: Mon, 10 May 2021 12:43:40 +0200
Message-Id: <20210510104340.10883-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <1619604142-119891-1-git-send-email-yang.lee@linux.alibaba.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'c9118b2b5dace4e6966b0d15c5990a0720cf2e3d'
X-Original-Sender: miquel.raynal@bootlin.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of miquel.raynal@bootlin.com designates 217.70.178.230 as
 permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
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

On Wed, 2021-04-28 at 10:02:22 UTC, Yang Li wrote:
> Variable 'err' is set to 0 but this value is never read as it is
> overwritten with a new value later on, hence it is a redundant
> assignment and can be removed.
> 
> Cleans up the following clang-analyzer warning:
> 
> drivers/mtd/tests/torturetest.c:233:2: warning: Value stored to 'err' is
> never read [clang-analyzer-deadcode.DeadStores]
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210510104340.10883-1-miquel.raynal%40bootlin.com.
