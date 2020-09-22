Return-Path: <clang-built-linux+bncBD6K324WS4FBBKGWU35QKGQEHTEK2RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9567D273C3B
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 09:43:36 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id b7sf7058267wrn.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 00:43:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600760616; cv=pass;
        d=google.com; s=arc-20160816;
        b=zbiuddUIWUEfj7z6VQnSh+u7Ot5zNZOxUFTJ946aAVdMPGiMOAvyy0MI5sq9/ArWf+
         KE6D+lxeZk+vFyiwfx+vPB8dqT3qz23q6EbRb5iN2grDzrRfa0PDH4Z6X9yfd/gPAe6x
         24aCSvVwJ9cFoivG9ACXdeRZbItDY2mkAo5ptD74XiaDnv7nB93iROS8joIqbzXx/SXA
         Q5XUmK7gNDEYwpQXp78pMpPYLHqkOLUHcHaKeV4h4j4o/Dt02MBmkMF16criKIJl82YJ
         MbZ8aWck3axAygTPrVXEcdlkYxz99PN7yqEwLVT0GI1vY3WX5JeX//77EsbfaN8MT3oD
         Tizw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=fmCu2OdVnP5dmrsHHN2Qf1F0u+RybbD0CP6PchTZqak=;
        b=DBHTg3QJDtn9JRRJpLGhXWkU/ySIFj4lMEijTcTdxF6lxa1q5Bm1rfEXJsRSOBZsTX
         YPCMjbzq937HDo3AysjrdLytDUV3lEwiXMgJYomt1ICsKyFar8NT8x8MguKTtlcA4LEy
         RCo4nn1dRsQ0hSfgJ/go3vWvQydmjbdSHHK+XpcbnUJrfmmSE42C5+2C2NfiV2CV0oow
         744AaNjhMz+X7hflGuktjDmvxUxqOqa6a5HOwxaxvOKYsBGqsT0y1R8J1AgOyz1k81Hh
         vaepncSihAoT0Ka9+GrZfDuf/sX4vydXd+JeWaXrA6Vh1/f6nRsanDYqkPAJg0dIyCDv
         t3CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rPDcdual;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=fmCu2OdVnP5dmrsHHN2Qf1F0u+RybbD0CP6PchTZqak=;
        b=A7HgVN0TbYq3i9bna8Jrs2X/dwtmtgcOPSDVBNo7mZoGC9STuIH/0ws1V+7aLR5Ctg
         A8e06xc9pZ1uMlMOSk8vSRD8q2dDn02GO728BxTh0TB1hCUfKa07ARwM0AR0tD7Ce/In
         5rPoD44BYF9+B+gp567YYd0ZYitcUGhBxf/HZx3O/46tJ4el0PsdNFt4be0EYeLT47Bj
         3fRPOCIoe+c2fWKC06cmv5Z7WZ7zRVjtTA/cj+EI6p7cC12IaUyrz6TYRMaLDabck2+h
         LfJxxQaWZeeQKvPgH3sBC9qvTia9LC1xgdgpV+bZt2FzRGp1Qzqe3F9lVCDe5RRoNgeG
         3/mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fmCu2OdVnP5dmrsHHN2Qf1F0u+RybbD0CP6PchTZqak=;
        b=O3lQU6moe+/Ck+JwS/KPmgKOglK3slNOv2vQBLZkce3IUDnZcTek8o2od+KZ5dcGyx
         BuFx7QDEaicdTA3Uqb1+izhrQem0CGFzagWT0WIvwnX3OFt3v3goNUfxuJ0gmbUTEU9h
         9p6bhHALUl8cvZOtOZtuY+ODbuvCysKkkqk6GVcjcIteacskpI+AAcKcUW6rV9AIQRdI
         Nmr7EzWzlzX2OfmdPAxE0pQsiCZZW6QjKVlvvRcNRIp6tL72aVtjQoJCvjnp9Ya8eOIb
         /9N9Ery6JD+K1zW++dQWJS+U2Ls/FHMp28Alql/CKuA97Sbx8K582dJf45T57E9sppKB
         cgPQ==
X-Gm-Message-State: AOAM531v3EHNbtHK2mfioRtgSRPbBR4rmdZTVK6WM5Te/CTtmLRWmevC
	A2KWPIQxQHEgdEjmXvKtj/U=
X-Google-Smtp-Source: ABdhPJzzsr5cGYXXp+SG8levN3ORQpGVNKRvA2QQ/+YBOJMkFIzP4VkgoccZcF8yrKnpu/gL5Et8yA==
X-Received: by 2002:adf:f548:: with SMTP id j8mr3959548wrp.114.1600760616325;
        Tue, 22 Sep 2020 00:43:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls2827474wrx.3.gmail; Tue, 22
 Sep 2020 00:43:35 -0700 (PDT)
X-Received: by 2002:adf:dd49:: with SMTP id u9mr4051086wrm.392.1600760615525;
        Tue, 22 Sep 2020 00:43:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600760615; cv=none;
        d=google.com; s=arc-20160816;
        b=N8PFSbinds+TBkb7dwRuSZw29lsmSsr6G4ZzOggRTXA5a388RzHZwk69KrYqETZ6hz
         ajEnPq0hS/V9OoBA7L6Ywnm4ASOSVTkMAG3WSDX6AY9YduiGjLP+tIveal6omE9No43+
         9/yC4RS76UE1MSeoeeZWeXtr4c/kJL9cfQ8e/lgpwna5z8XvghAqLsC5oNxAqhRlJ18V
         t9pSLcMLTCttUesBiMdOVw8qylNjbkFotK4l8XY/2tnsxr/NaD9b4B+8htE6FjHGfC3u
         NbQmh3cHVWrBOXPXuA0KmIrWIl3DF7fvCfW2UoZZIVsMdOfQyinjnE2bXekaBWYgxfIk
         O/ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2iT1w5OmGTePaz6cPC9J26HUj56MevFwxnKu+3syfaQ=;
        b=g2XGfWjfVIDwYlINs1EuVYX4eYzc8eUTCIbHzFa5jkLrd/zITSdhza4FHGoE7LrecC
         UNHOO8WRf7sCRrVGnUDZ/Rrbqj/flwHVrPazkbZ46htuRvZxYiajlmG9WBDPi65VnXBe
         892H61glM7egdjwJ88lqRGBmAIA46USPvXn66ketqqC6JYB/5IXYRscXjQ+/QPZ0iNL6
         mufMUzcxirXPxshNICgCpV5Dxo3Fa6xyJ7wb2a6+2aEDNrpiyTmt2QLWYvOtHutxTpTY
         HNWMnTpacsF2rNjLVQLtLytPIF98hd+zsCQnp4ACMOS0ySmyAdLbjUAjNMyCH3caiuNY
         93OQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rPDcdual;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com. [2a00:1450:4864:20::331])
        by gmr-mx.google.com with ESMTPS id x1si67186wmk.2.2020.09.22.00.43.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2020 00:43:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::331 as permitted sender) client-ip=2a00:1450:4864:20::331;
Received: by mail-wm1-x331.google.com with SMTP id y15so2267872wmi.0
        for <clang-built-linux@googlegroups.com>; Tue, 22 Sep 2020 00:43:35 -0700 (PDT)
X-Received: by 2002:a1c:f20b:: with SMTP id s11mr3195175wmc.144.1600760615075;
        Tue, 22 Sep 2020 00:43:35 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id c14sm24062347wrv.12.2020.09.22.00.43.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2020 00:43:34 -0700 (PDT)
From: "'George-Aurelian Popescu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: masahiroy@kernel.org,
	michal.lkml@markovi.net,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	keescook@chromium.org,
	akpm@linux-foundation.org,
	elver@google.com,
	dvyukov@google.com
Cc: peterz@infradead.org,
	arnd@arndb.de,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	dbrazdil@google.com,
	George Popescu <georgepope@android.com>
Subject: [PATCH v3] ubsan: introducing CONFIG_UBSAN_LOCAL_BOUNDS for Clang
Date: Tue, 22 Sep 2020 07:43:30 +0000
Message-Id: <20200922074330.2549523-1-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rPDcdual;       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::331
 as permitted sender) smtp.mailfrom=georgepope@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: George-Aurelian Popescu <georgepope@google.com>
Reply-To: George-Aurelian Popescu <georgepope@google.com>
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

From: George Popescu <georgepope@android.com>

When the kernel is compiled with Clang, -fsanitize=bounds expands to
-fsanitize=array-bounds and -fsanitize=local-bounds.

Enabling -fsanitize=local-bounds with Clang has the unfortunate
side-effect of inserting traps; this goes back to its original intent,
which was as a hardening and not a debugging feature [1]. The same feature
made its way into -fsanitize=bounds, but the traps remained. For that
reason, -fsanitize=bounds was split into 'array-bounds' and
'local-bounds' [2].

Since 'local-bounds' doesn't behave like a normal sanitizer, enable
it with Clang only if trapping behaviour was requested by
CONFIG_UBSAN_TRAP=y.

Add the UBSAN_BOUNDS_LOCAL config to Kconfig.ubsan to enable the
'local-bounds' option by default when UBSAN_TRAP is enabled.

[1] http://lists.llvm.org/pipermail/llvm-dev/2012-May/049972.html
[2] http://lists.llvm.org/pipermail/cfe-commits/Week-of-Mon-20131021/091536.html

Suggested-by: Marco Elver <elver@google.com>
Reviewed-by: David Brazdil <dbrazdil@google.com>
Reviewed-by: Marco Elver <elver@google.com>
Signed-off-by: George Popescu <georgepope@android.com>

---
v2: changed the name of the config, in Kconfig, to UBSAN_LOCAL_BOUNDS
---
v3: added Reviewed-by tag
---
 lib/Kconfig.ubsan      | 14 ++++++++++++++
 scripts/Makefile.ubsan | 10 +++++++++-
 2 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index 774315de555a..58f8d03d037b 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -47,6 +47,20 @@ config UBSAN_BOUNDS
 	  to the {str,mem}*cpy() family of functions (that is addressed
 	  by CONFIG_FORTIFY_SOURCE).
 
+config UBSAN_LOCAL_BOUNDS
+	bool "Perform array local bounds checking"
+	depends on UBSAN_TRAP
+	depends on CC_IS_CLANG
+	depends on !UBSAN_KCOV_BROKEN
+	help
+	  This option enables -fsanitize=local-bounds which traps when an
+	  exception/error is detected. Therefore, it should be enabled only
+	  if trapping is expected.
+	  Enabling this option detects errors due to accesses through a
+	  pointer that is derived from an object of a statically-known size,
+	  where an added offset (which may not be known statically) is
+	  out-of-bounds.
+
 config UBSAN_MISC
 	bool "Enable all other Undefined Behavior sanity checks"
 	default UBSAN
diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
index 27348029b2b8..4e3fff0745e8 100644
--- a/scripts/Makefile.ubsan
+++ b/scripts/Makefile.ubsan
@@ -4,7 +4,15 @@ ifdef CONFIG_UBSAN_ALIGNMENT
 endif
 
 ifdef CONFIG_UBSAN_BOUNDS
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
+      ifdef CONFIG_CC_IS_CLANG
+            CFLAGS_UBSAN += -fsanitize=array-bounds
+      else
+            CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
+      endif
+endif
+
+ifdef CONFIG_UBSAN_LOCAL_BOUNDS
+      CFLAGS_UBSAN += -fsanitize=local-bounds
 endif
 
 ifdef CONFIG_UBSAN_MISC
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200922074330.2549523-1-georgepope%40google.com.
