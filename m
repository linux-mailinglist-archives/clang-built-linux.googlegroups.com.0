Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBLXDYPXQKGQE4FSCQRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A27C11AC31
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Dec 2019 14:39:59 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id p5sf1740039wmc.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Dec 2019 05:39:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576071599; cv=pass;
        d=google.com; s=arc-20160816;
        b=WDGaRIj6jI2jqwoy2ghjmaGKl79bKnrwbjpexJzVbwRGiyAQbT44QvoV6W86UBRNow
         /OP1koQFj58yn7jGWugtPHU8BBv90NeukV7vDqceFI9PJ5N/FEl5w2y3xODpWNY6ReF2
         Avd2O6czszbMZ9MyTObcyi9R2JNbCA7FIWwsPQLOrT6OqsMMosAxMCV/LliQaciYPYoi
         Ro8OLZcfIHtdhoMBqQbYRe334oqMsm9GyvAVSnej0hMof6f8TtnCXOOXPtHMPbB/oklX
         XVL+PHN+qpCsUlBkneZWy4bpsIuad7kahY2H4/gBqqbsrtvGilguu70WyKji1B+CvUaL
         2amA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=MuUW7XYMqHKyJyZpeg1U+9ccu3IH0h+ExNfiAIuvb8E=;
        b=YAjxE09tr0gyw2Z2fxW67MjUbdiCBqodyGTykD37eeyANLfkqjoZ7imo+rO3a+vwYk
         UR78RkozNm+KVVf9KpYg8hVcX7nhd+6HZm5Ho7cV6deQOJvv4wynhQFhdoe7erSX6SzI
         dTNjqrzHYC6cTvDOKldSD/UdBVWNUIso9S9BswMjaH/AzvryxmeGFimgVzytAGTHD0tK
         gAiDYP+MPWTHkY6JEG+sWiOP3m16FCjZNU4Ac8QawuZ40resv61fQX+sFg1+qC1+OViv
         4WC1dvNzF9qel/8GnRVJ7p8NJDnLlxuC/0cMAMRWce/6rZ2R4nTlE5kRxFZwGg8+Ey5R
         XqLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MuUW7XYMqHKyJyZpeg1U+9ccu3IH0h+ExNfiAIuvb8E=;
        b=li47s/ucwN3up+g3zLXoB9LsEj+UmeVfj0VetrFsQbOc6AdqzTKc5fbfFDhxSo8+jr
         kUse5Omt9iyyLgXhvDm/GWleSXLhChnf4t7mBF9F/2YSqahrEqEFlIMArU9cHeX6qfnm
         HQhJC1Y89T/VmNI/2oF3ooPUrS+LPPbA+uUMidD8GEJcVrQA8dbhNubbmH/Q6Hxxrl3k
         P/IZonG4T17RsKhAIXzg27oGTSEjmANnsCIST6G1kWjErWg0AG2ETy6X2qAPbgtiqP/I
         4Re8D+WWezCpIYr2wbuK+/C+de9rQminnivIsOTCq+JuF+ygSOBU/AZAV9MMKEUnhy8f
         A/zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MuUW7XYMqHKyJyZpeg1U+9ccu3IH0h+ExNfiAIuvb8E=;
        b=iQ47n5xilCAs31Obqzlf2qM/gJmpwNAUWEjPwoEa9tVraKTV6HditSvKEIKMZExp6d
         6pI0+u0UIm4F+jlax2usHKAR7MYvFv0Ul1cgOJUINNbdcatwGZsXa6D1GSQ/uBKWKOJw
         bpEqMbLbZitnPoC+DalF2r0DObOTsqJTDdjrrBcJCEkRsgwnuiFotX0bzSfKI7o2Zb6y
         32ZRCHwg2Lz1NelWjnT5QssSGvNczvnWHWm/J5HCWrxsFr1O8c/UTkxIjcmgI5vCZaZ7
         AtmiVWxt0Ka8s4pZ4VDkg8mPC9Z8dcbLnmkcJQd5qEtU6vmGQcjoxIXXibty5ILx0ykf
         9Q6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVj5+8bGmAeewQptJaezIO3afNaAwYT9MJ0fb4s1KaY5wAEt7Lb
	jhF7mLxgsDAb9Q91BK4PHBQ=
X-Google-Smtp-Source: APXvYqygy+Oqf6gG7dwGG0p7US0l+CQMKeI0TLqAuStFWQxRx1rpNJMy8nrpjqdaXrTVgW1VOrkupg==
X-Received: by 2002:adf:93c5:: with SMTP id 63mr3967437wrp.236.1576071598729;
        Wed, 11 Dec 2019 05:39:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4303:: with SMTP id h3ls1113030wrq.15.gmail; Wed, 11 Dec
 2019 05:39:58 -0800 (PST)
X-Received: by 2002:adf:dd46:: with SMTP id u6mr4027930wrm.13.1576071598236;
        Wed, 11 Dec 2019 05:39:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576071598; cv=none;
        d=google.com; s=arc-20160816;
        b=f38X2g+HRxZXOkPd+BdEzjwAI+yFXGkAdrTkCi6xGQwtGtRIMtmVLbtPSs+6HJ9G5m
         YBX3yW0mpI0Hn2kxfAKJgl3ubGRWn6rRQ7hX4JNGmfTxYQD48hdb5P47SuyLPb4MhEer
         8Cm2DktDfcxTBYdX5xYEZkK7k7M/LQrhRsaNYrBh19njDurY4snnAkPfuBQVxR8F7pk8
         w9bbzxlGjClPyFRSlmVaZdND8tIyQZwNYjSArcnAZ2+2ziT20CwurwY4c9WyQ4UPdCi/
         hcVyJzTs+5qUzimHwKoSsdt2z10bDb9BEs+Bgdk4j32gk1+oeOlUhOQjSJouTr3BSfOo
         q6zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=43bG2HAy0s5VKgpbf+4rrnJdZPbYghQ82U2ukLYMzeA=;
        b=pgabqamRwFvnBvc5QKUYBvHUw445MpNZX0vh+s55YQsXwl8lEEM4zYe06ceyk5tJGu
         42iYQY7bzPa6GUBwiH+0d30TRVaoAnhb4S5c3JaDl5PgzPupAwrbzsB5Oc9AFQ9FjxLI
         2kkwLnlRvL8EMyXf0lGv/xhgIcrD2T7yGWWvEgyJrhKEQNymaa4B1+/IKWgy0zS/kuy3
         WKWCPgucz56DjYjS2WVwFWn6CIiXAreLBbzfNlIh6S7SSavt7V3c6XlfHuaIxSSaFBxU
         rsZSgo25z3ttWzE3aYWsWIdhtyoyk0KssGfo/RZCrJgRHYIyywYR5I/RCfTIoE4Dtqey
         POhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id m2si73994wmi.3.2019.12.11.05.39.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 05:39:58 -0800 (PST)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mdv2u-1i7M5t0wNC-00b4PK; Wed, 11 Dec 2019 14:39:55 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Kees Cook <keescook@chromium.org>,
	Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Emese Revfy <re.emese@gmail.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	kernel-hardening@lists.openwall.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] gcc-plugins: make it possible to disable CONFIG_GCC_PLUGINS again
Date: Wed, 11 Dec 2019 14:39:28 +0100
Message-Id: <20191211133951.401933-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:+nmB7TYbeF+BbF1KYAsTCC10nXeyaJq0hfe0KpydKA2p+Otku3i
 /HMw47ZC370YdiwwA2iFeJ1n00wEOhd8ZpyGd2d3d+tUHhdNkk6xOI55m8KfR/Af1xXnmRk
 uJnl8uAvfeWWu1lir93AVBa49mZdCBu9xhylvPGJSH6gET5l2DxsXTwEEyoV3FhgWLLMkRJ
 uL1tGBQBgb0YkP3ZeMw2A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mDV/RTPIJ3w=:eKif/Og3P8/X7Fw17BCTtN
 Cl9jKu9p2v6izmw011BOHn6/K9GY07jxXMShZ4olfc2Gd6YCEdAMwkoa1mmX9jb0XkejA0sNp
 tzEsDim8f70Eknt3szdPZb6SoX3WB2szAS7ogNjfsjntgPMInAjYdknD9LRLuId8OXdTIsJOy
 h+a+VO3MILFVzFShouk4fs5XKrfFLbVi4UEcEtyFij9kYdEIwICWunPbC5SqNB+sHBByyqvUZ
 Gf06xWAzHiUFfAi7ZHzAWcjqmSzoOlwu0hXAHHAFJIghq6vTEVNgqH2DXvTbMGWJxwz+M+rP6
 NDwdSQLNbQaBJMRkQhGxO/IgNQDsGW9wZ/Oh201qXioUXKeOj2IdK5BxFOwXpPpWFrV72USuU
 9hz2NM8+9SH4hkVItgVH6FwI/eWKDYdX13Nwh7K069l2ICBOtm+VHXlqMFyW6sju0fhxDwdXr
 EiznRvbD6dHKCyYaHdiqOlZeoAZaJfTOwHbiHi3hSruRGThx4nVgP7TY7VDOZI1mow0BoFHyO
 cCRJWwijAd73s4x1X7wD+pFusfq7fAi79J01dpXjWm0Z0xijOhtBkiBDp6IYh9SKhKopL4vLu
 u0LFX9ZYybNbddOwMcdeASQidktoVbgRIu5TU4R+RSWO2sZfCJ/n+7SbotKctVrsXGAif2atb
 RJkSI4jo7pzA/bRKxxuO4L1eZP1nBvbTnPjGmopnp3LYJpwu7Jsh14Xc01g/a2sU4LZYcS187
 /CslxGcFpLtXbOSYJAq/EX7UeKtipQigCXtVfk9pdUOhAxCfdjR9HVShXZ1dZKNcXsu7QHikh
 FqoWuJXtSO4tZnP+SxE1pdoQ72G2KXpfLKvssLLWFro5jBV0CBTMJxKfUQgf0bXSta0TxDiw2
 Qz9OmB190C+pXgfsJ+4Q==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.73 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

I noticed that randconfig builds with gcc no longer produce a lot of
ccache hits, unlike with clang, and traced this back to plugins
now being enabled unconditionally if they are supported.

I am now working around this by adding

   export CCACHE_COMPILERCHECK=/usr/bin/size -A %compiler%

to my top-level Makefile. This changes the heuristic that ccache uses
to determine whether the plugins are the same after a 'make clean'.

However, it also seems that being able to just turn off the plugins is
generally useful, at least for build testing it adds noticeable overhead
but does not find a lot of bugs additional bugs, and may be easier for
ccache users than my workaround.

Fixes: 9f671e58159a ("security: Create "kernel hardening" config area")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 scripts/gcc-plugins/Kconfig | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/scripts/gcc-plugins/Kconfig b/scripts/gcc-plugins/Kconfig
index d33de0b9f4f5..e3569543bdac 100644
--- a/scripts/gcc-plugins/Kconfig
+++ b/scripts/gcc-plugins/Kconfig
@@ -14,8 +14,8 @@ config HAVE_GCC_PLUGINS
 	  An arch should select this symbol if it supports building with
 	  GCC plugins.
 
-config GCC_PLUGINS
-	bool
+menuconfig GCC_PLUGINS
+	bool "GCC plugins"
 	depends on HAVE_GCC_PLUGINS
 	depends on PLUGIN_HOSTCC != ""
 	default y
@@ -25,8 +25,7 @@ config GCC_PLUGINS
 
 	  See Documentation/core-api/gcc-plugins.rst for details.
 
-menu "GCC plugins"
-	depends on GCC_PLUGINS
+if GCC_PLUGINS
 
 config GCC_PLUGIN_CYC_COMPLEXITY
 	bool "Compute the cyclomatic complexity of a function" if EXPERT
@@ -113,4 +112,4 @@ config GCC_PLUGIN_ARM_SSP_PER_TASK
 	bool
 	depends on GCC_PLUGINS && ARM
 
-endmenu
+endif
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191211133951.401933-1-arnd%40arndb.de.
