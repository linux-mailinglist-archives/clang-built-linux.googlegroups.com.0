Return-Path: <clang-built-linux+bncBDJNHL5JSEOBB75LTH5QKGQEMMU3ELY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9B6271016
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Sep 2020 21:03:28 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id m25sf2773289wmi.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Sep 2020 12:03:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600542208; cv=pass;
        d=google.com; s=arc-20160816;
        b=I94wUjOokj2qArHppqWwDVJfHkrD2k8vgKjHICzt5AQeARkPdQTm6zhHemegvSShQD
         FIfPBjlNdKvEQ98C13xleCh4CsM4O6oqYK2s8KXwU3e1Nkwm0Y2JOARuK+cdcZG2f/cJ
         JrFM54fgo4z1nmZZlaxC3Ydhw5Z5+fJQguyJU9p5BupMsLOk8sc5ARWs9lQGLVD8gHnr
         q0p/67vIxoMs5H2bvYsjB5zYtkjOoKzZSRoZgLo6/1a0vqNS2DDuXEid7udlFP3G9cBH
         uY1l92vdem30qZePNHgjEbsT5GsGp3LKk3aT7kJehnIrE0DXcp8Oa/TeUQBZ27chHI/9
         97sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=YkI+TKSbwvz+1Wj4MxP//VZKEjT+DTY9InZFUPUjUO8=;
        b=xG3VQMGmh1G7ccIZbkmPxnjRfAI3z6mbpwKOnIV0PgcomB/pwy+0WLkN4RqsRJhtjt
         +NvMHvkAqyWrsWw5j6OcNryVq5PS129gjfT9zjE3ZTwgAykYb1vLtvWE6shWILR0RspJ
         bwEEuOW2YioRFyZKSD+PDb8l5ZUlPc33n28lBs+6A4jpMx9thzzqrSsOpSohspk3NMsw
         0n1P4P+1D8vIxSUwm7wO6N3brENejCYpAW/rsLToJLFm0nIg27L8c8IRFfUXpG9FwQme
         DU03mnufwzIfOQ/4NbXm5QSDYrOxlIkZARdW30Llye/oyy23mFy7EWeq2ceagqAKQi1Q
         2tVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YkI+TKSbwvz+1Wj4MxP//VZKEjT+DTY9InZFUPUjUO8=;
        b=TJR1ohaAp9bWI7uOFP0GuxeC62cPGQohrkz9POcWPm2W0TrV6XsSJj1SXlwI2NRFx1
         mWw7jkbQa2MyLlZn+IA1oToimUMRnw2vgcjdTkWgMRJVaAQPHruDNjRWqaV3deHU/ZBE
         zleE3SYkTC9odkC/pWmtXDWuh5O03954NyYDiqZlMdShYkKO9xLPEb13bzc31boL90ab
         xyH4P4TFpxEpLMUOPYRnDYhZpo9YV9DoSz5OUFop+Uu7JCANauPry79mbAlBG6LPU3JH
         z19+EG5Z0cezBmMBNU00RoleGxppz6l80hSwZfjKct5ZNi/MneY/sZbEwFe6ndB3KXDK
         BaIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YkI+TKSbwvz+1Wj4MxP//VZKEjT+DTY9InZFUPUjUO8=;
        b=L+ceWOeDYEsqUMZxlnkQ5Tcf6U/ET1ZHkyQFcwYZru/F8Evq9ZBUnqSerRmx8uGWS0
         Wunyf97mZAjarVQsrwSilI2mI29p5b5iO0x7M+pexhHZ4aKBQLd1I3+82qfgGsDhJco5
         yRH71s8OT6AYQEFN9WOtjp7laWK92XJHPksFY1QNWNjiAu/M233ULdaRDel1Qkx/T/Ea
         9U3xoCiYtM6O45SJpE6qp5GFg4sijOpFqy5iUEOOIvp20QBviY5wTUMZ8akChRxN1TOl
         Ltk9nLIt4dv0FmgBVNUVZkgx9l1Dlv/1+tlO1b7/BlmrtSgsezizf5x8JEJzFsODn9DT
         F+fw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jo+jx8y2yEZgGe5vkJL5/6B6t115GkuVRM1poigleZH3zWlU8
	CE9/FIpvbf2KMGSkbsSjMNA=
X-Google-Smtp-Source: ABdhPJxkaGmJOOBB8MkVb0KOlID3tSyXeBgaEuuJcN8cASl9rCnBb2vCsdANx0qSC+bTKaMPSH5ujg==
X-Received: by 2002:adf:df05:: with SMTP id y5mr48211396wrl.39.1600542207964;
        Sat, 19 Sep 2020 12:03:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:80d7:: with SMTP id b206ls4479838wmd.1.canary-gmail;
 Sat, 19 Sep 2020 12:03:27 -0700 (PDT)
X-Received: by 2002:a7b:c761:: with SMTP id x1mr22927085wmk.91.1600542206998;
        Sat, 19 Sep 2020 12:03:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600542206; cv=none;
        d=google.com; s=arc-20160816;
        b=AgXdoeO47P00LPziYMjQ+uzvoH7VOrvZ2vRBrHisBWR5xdksP5actLnxZCc5AIrNKO
         sYJpMH2P44bPuSqfQgT8B+WftzJPXCi2jFlwnaWpzBgn29Q8xM3wU+pjatdRVwfSpPxB
         kS0w6NEDTtKGpCrzk/HMOTDJvn6vHIGFZqKruvOQ9wuhSwWdfoSpRUxcIvCG7otbMBwx
         0kjwhK+Oawqg60r0Pev6n4bNG/375VOI4O7aAOZ2zOWIv9op+kmqdANzF+E/3HRI5nIA
         ND88BaBgmeWBVp4EFxj1TJoQ3uCLeeu4SSUVtDeRIbECaLBJgF58yNLkrtiIkAzhYhES
         LmYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=kTcnFhqzZGTJVqcCtWZMgRfoJqFzjMzUKQNVKjJhEiM=;
        b=IA0YTdIrYfLXYy9hd/MClia1kF0ZS31iVzcD88IU3AM6VEEUSH+e9k0cOli7iL/5lO
         ztySU9e0hM9dXSsUTrZldWMXO1qVnBkkJmF9GOcQgFnyxQXyHxGau2Sb5mmaN1feQ5vO
         HtpZvK3Qd0V55vvXtN3euB7/7s3R8z5boP2Q0XwAahTsNM+Vc3fymXdQ18fhzTICI7Vj
         5nhLt64pvfXH6t4Tsmq7TGylwfgBEUsnKhh2cNXwsBzixdBtQwoU1NXvAaQzCV2bX0yT
         s7myDs/CtO6FZvGJhos6v5z9m+wFhRRKrOTrOhMCd1ZkfM16mV5ams9HwONKmLtdAmgl
         1OVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id x1si222312wmk.2.2020.09.19.12.03.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2020 12:03:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kJi8j-00FPaf-LS; Sat, 19 Sep 2020 21:03:17 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: netdev <netdev@vger.kernel.org>
Cc: David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH RFC/RFT 0/2] W=1 by default for Ethernet PHY subsystem
Date: Sat, 19 Sep 2020 21:02:56 +0200
Message-Id: <20200919190258.3673246-1-andrew@lunn.ch>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

There is a movement to make the code base compile clean with W=1. Some
subsystems are already clean. In order to keep them clean, we need
developers to build new code with W=1 by default in these subsystems.

This patchset refactors the core Makefile warning code to allow the
additional warnings W=1 adds available to any Makefile. The Ethernet
PHY subsystem Makefiles then make use of this to make W=1 the default
for this subsystem.

RFT since i've only tested with x86 and arm with a modern gcc. Is the
code really clean for older compilers? For clang?

Andrew Lunn (2):
  scripts: Makefile.extrawarn: Add W=1 warnings to a symbol
  net: phylib: Enable W=1 by default

 drivers/net/mdio/Makefile  |  3 +++
 drivers/net/pcs/Makefile   |  3 +++
 drivers/net/phy/Makefile   |  3 +++
 scripts/Makefile.extrawarn | 33 ++++++++++++++++++---------------
 4 files changed, 27 insertions(+), 15 deletions(-)

-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200919190258.3673246-1-andrew%40lunn.ch.
