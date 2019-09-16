Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB7GT7XVQKGQEECBA4VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 1377DB38B3
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:54:53 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id m8sf5564696ljb.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 03:54:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568631292; cv=pass;
        d=google.com; s=arc-20160816;
        b=HVIfbXtLiBk/LgqfgSZqP1Eo0OqfDKJVpUb3SBmeRzeoYBkvpZ32fmlTzbhwc64AQ/
         sp2P/78Nrd1oxD9K/Q3qr2RpiTUt/bUfPYnPpufG4dcNC4QGdd3a+XXK+MtJjhm4Z+vQ
         A1UMu380momq7ZjS1DAqZxv+VxgEwU9TUV5Vu94KCkhMloiB2+q4NW2DZ7szRBL8OPr2
         dB37KSUF33wbroGXQvw2Fc+xHulTmOVmI870Owtl1P0qTVQidX6y+Ayi3r4PGxL9yG6I
         Ld/sQeuu5gtXNlJIlPPS7wTJT7TB+1dgQB0PJjluTuw/ZBf/ZvyljtVOkOMM76wauhZg
         KyHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=FzbuXw7amMOAHkzgxIse7DuwvXpvqyyEM+u8Z67H3b0=;
        b=GB5AfFhiCcNfsqX7LjKse7inTY5BOuzeN67m8IbRNZBcsMrCgDVGbCYRVBlCQ9cf4N
         kxjRrlk9iuk43sjPkrxfwOLlpf0uQT3zjEQQ2WCPSFHNXBWWr+1byiaT7ejqplXuYJ61
         /5HlDCDB9jeurxlyTBGpuhXrhD+PdSYsNy7NcgKyuEl/hbliDxFyv3CoNBK16zxsbuUB
         YvE/pHdI+ztsDuQ0n6akSUDQTZpspdiKPomZVW9z/YoO4Tj2jvrfPyblXt0+/AbGwcnP
         1hYbx9E0Kzei2Qv6WzIehOCMaNa1jSBkLczgUh8voO6ekkQKwlIaNIpcHcbUb+BALEdY
         TknQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=fA1ZBPhj;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FzbuXw7amMOAHkzgxIse7DuwvXpvqyyEM+u8Z67H3b0=;
        b=gxDrf/OGrxDu86+gojIXFB9IWsoaUeCYhdMvbD7VKHF9udn4nLe88C5uCnpUQT9fNu
         PJP4VwaaIdSGlhNA3McUJVmb/zQporKpQLT3elUnO5zDFS5m+GsP+FkDXf+KnZnwoxpR
         6+07Rl7+Pm7hoRq/ZsLve4K1ippF3Wng4oOg+iq9gy0mfaFa6VokCE3BAvze0+qPb4Zf
         P2+c3MUrBwbfPPb/iLL3AluIMux0mWhF4U7BRYzZBrQyEYcldakIdwkYWJyozhYI4YR8
         5dqMDwZ2SiBZQIwLuxwfoPIfbmO83wIP51lUoGMr6h7f3At9b2yrT0TpxY7e6eOzTyX1
         +KcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FzbuXw7amMOAHkzgxIse7DuwvXpvqyyEM+u8Z67H3b0=;
        b=RobQWamRw7f3GtK/+lqnfFX9ct7cGHj9r60LLgf8kRzfnZgTpUzYKd4X5TtrrJ3fBf
         +Do8B5rGgyvYP+YIjPapgeVEH9ClsNIwnAK0Z+ykB4LuS5u6+k4sfE3LnnC1518kOXsA
         RbFLcKEj/5ju56Eyg0swi1K2InmJjx9hCQpG/qBl289Vkd1SZrjwD6wpEiKPTaKH1qF3
         FJcSl+zHf7p+6x3uOsYoHLgJ2D2CB2OKsRwZqVuoj1A50Nk6IIIL5W06nu47KcAzVYlJ
         jpmnNpDSgwrxFfm4xw24GJgFbvQhDgF5q93eCI4CHrmuxeJ29iMouz0bOuBqQb1Q772X
         /pPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUB2AzYbH7iXtcTGQ1NkXP/s/lEwBwIVYBcrS40QEnJ3uiZ0j1A
	qtYYvHrk1TgNP6YhihsPj1w=
X-Google-Smtp-Source: APXvYqwW7+GZqPGG24VdkD91tDXLU29i/pJ/M87mLKXD8YT1fZBy+MWTX1DKUptCPwQXYZu+eItBbw==
X-Received: by 2002:a2e:7212:: with SMTP id n18mr1095931ljc.91.1568631292669;
        Mon, 16 Sep 2019 03:54:52 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:5d57:: with SMTP id p23ls3601474lfj.4.gmail; Mon, 16 Sep
 2019 03:54:52 -0700 (PDT)
X-Received: by 2002:a05:6512:210:: with SMTP id a16mr37078190lfo.42.1568631292253;
        Mon, 16 Sep 2019 03:54:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568631292; cv=none;
        d=google.com; s=arc-20160816;
        b=wrOHx3Zj1ldwOwFWEdwhWJ3dB7/+mAR4TbuoJIHVeFv/iQereYSqZXy7amtA0X0wSm
         BoXwp8WgDAYIPuCcel3jsa2Cwe9ZOeUF8Fcv/W3MrGACIIVpYHHfKcA+oHiE1Yc41sT5
         ka+mGXY2o5B1EG1WDHhkGTiPQ2A5UogmQBg3kobst9r5kmgz5nbB4pgLdZa8xnpjN7Wc
         62zEFkjm9f6rqj8KgfyRVKc/U3k5ugsTgE8VSd3YqHu3ZR8B/v/DQOedHA6NYdhzk+1d
         s75w1XdsyiAgiFp7TtoNIIh8AP8HnO95mls8XwzMUmZ5qjNOmCGEvb7SEBe5ZoBF3z6U
         uYYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=awMC2NNgYQwIhWG3qRO8zKuB3GE6M/09XFXZ6Czatbc=;
        b=ATpJbzzBJbcAr+ccJaaHhAUf/wRbGZUpXtAk6qIWdmHEqYGHzZ6FTUqXQaBgd/ethu
         //A59H9Pl3xndlmX33FRogHQUJbkbXjDOv5NvF89ZwrjhU4jn/RjiqksMmbgPD/NOYtZ
         uSrxes0geRlPpsjNOY3FUscokNEX8HQj8reUCL2Y3LQQNAI9RaUWMOWTk8chHuf33Sin
         v31cKA0g+Xz0CNq9ofE7EVkHMMqPK+jtPO8WhN9Um7Kr6dq1lSqXWsxCkCqiKqtFIQjR
         UxHYiJK0/InMAablc4xgQuatTbiVELe5KCLGghmGrstjtwQdzJsIzNbb9NEMQN8VI3Wp
         9lhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=fA1ZBPhj;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id y6si146028lji.0.2019.09.16.03.54.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 03:54:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id e17so33223009ljf.13
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 03:54:52 -0700 (PDT)
X-Received: by 2002:a2e:98d2:: with SMTP id s18mr5649688ljj.68.1568631292008;
        Mon, 16 Sep 2019 03:54:52 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id v1sm8987737lfq.89.2019.09.16.03.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 03:54:51 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v3 bpf-next 09/14] samples: bpf: makefile: use own flags but not host when cross compile
Date: Mon, 16 Sep 2019 13:54:28 +0300
Message-Id: <20190916105433.11404-10-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=fA1ZBPhj;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

While compile natively, the hosts cflags and ldflags are equal to ones
used from HOSTCFLAGS and HOSTLDFLAGS. When cross compiling it should
have own, used for target arch. While verification, for arm, arm64 and
x86_64 the following flags were used alsways:

-Wall
-O2
-fomit-frame-pointer
-Wmissing-prototypes
-Wstrict-prototypes

So, add them as they were verified and used before adding
Makefile.target, but anyway limit it only for cross compile options as
for host can be some configurations when another options can be used,
So, for host arch samples left all as is, it allows to avoid potential
option mistmatches for existent environments.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 1579cc16a1c2..b5c87a8b8b51 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -178,8 +178,17 @@ CLANG_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
 TPROGS_CFLAGS += $(ARM_ARCH_SELECTOR)
 endif
 
+ifdef CROSS_COMPILE
+TPROGS_CFLAGS += -Wall
+TPROGS_CFLAGS += -O2
+TPROGS_CFLAGS += -fomit-frame-pointer
+TPROGS_CFLAGS += -Wmissing-prototypes
+TPROGS_CFLAGS += -Wstrict-prototypes
+else
 TPROGS_LDLIBS := $(KBUILD_HOSTLDLIBS)
 TPROGS_CFLAGS += $(KBUILD_HOSTCFLAGS) $(HOST_EXTRACFLAGS)
+endif
+
 TPROGS_CFLAGS += -I$(objtree)/usr/include
 TPROGS_CFLAGS += -I$(srctree)/tools/lib/bpf/
 TPROGS_CFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916105433.11404-10-ivan.khoronzhuk%40linaro.org.
