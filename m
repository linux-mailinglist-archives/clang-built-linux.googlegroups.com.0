Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBAMZ4SCQMGQEEFPWMLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 497F239A6B5
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 19:08:19 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id om12-20020a17090b3a8cb029016a4ee7d56fsf3585667pjb.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 10:08:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622740098; cv=pass;
        d=google.com; s=arc-20160816;
        b=cz0Kr8tpK+ad3dVkD8NKvHgVF/Zhjd2AK0WIFxI1c3vTxxCfxAMinvhHmWkY2I47oV
         jke31n3Z+YI4DXkb5qXXBrhsw+veMbSBW0jS8/rtIDQ/3KR+Iu/Oa7pttOabAEqpUtkh
         2ZJKA4GD+OXO7N+gCRQOwv4eNcPaTrlh/NUCu756Ddk+7PD6nd6uH95HNDA3wWCizWTS
         Zk+y2qcWTeK0i263O6EXm/UlaVwJUUTobTPoJ7w79+PUi0oqoagVRzNAEeatP/x6TFPw
         7xtdOWI4Q9j7SzPg6FzMsH09kqhBDgYShtEZcLOMy4KhXRjXn1VX84a1RVJWWYBNlkn8
         r2jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=u7RcLbVCDcsxAGbLR3OVJQpf0y+50VyQkUDb6TorDg4=;
        b=inAPsy8flC98ehY0FD2Fh1GRlV3zIlGM/xKR5iZoBU0SGGp+5yYiCjzha/e//9IWSG
         BpxBCzsjcn+1a3qUTiCw8niUC3WaRDPyhkqasHkWPX4XphXLLzVsAVF6mxsVq/w6Nys9
         rQ3jy+7ZVhO4lt8zJhY/jk6wWWebbnyggu6Tb185jVAzqgvnGZpqaGmjeXsMgvdNyKqb
         Sv+rzA05bcM8Q0rjNYrTwSzFeS+T0R/py2+1//DjmnkDV9AENLo+lpmv87QJTUDI6zkt
         PhClqXkL5DMUwtJ9zs1TdgDERkAgpKCnPU/xDH+K+QA3U93UkFDVgZjojTTV5VCcnKVa
         jukQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UZo3o9LJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u7RcLbVCDcsxAGbLR3OVJQpf0y+50VyQkUDb6TorDg4=;
        b=qpxmxl4P3uOVk31wJEQc+I9ShJ0KDt9cijjkv40yS2AY8bsdPK4QqobjsDgrlM0GjF
         SlXRnKwhi3bwdR7Zrk2zmLpauWWyt3GD00IwLavSLPOsr+Apidj9UpAMt+bDpdSGUzUQ
         hiXqnhE1GQA3U2EGSp5q2zihDSsaCFrrIhfALan+xHIC/hTS9SsDjZBwmmV9OmWRhXHo
         3bSP8iH4+gSCG+rXay0du5R/Vtcom8uhMsAQHbOfGi23vutGantWtz7yEXMbJhk3cOr9
         EwLLEvz3tD3t+7hxQ25pITKxSHFCToVbw1cwWavdR5LPSOOj9NLgIRAMS4k7NX4oKtdr
         CjDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u7RcLbVCDcsxAGbLR3OVJQpf0y+50VyQkUDb6TorDg4=;
        b=kTbZP/jHiDkfDK1kqRfu1t+sxRc6tuA/OEFhBKTq05jECNo2xqiNZs1YrehMJ9dfac
         3y9cbQrkLFZyAn4a89hWA9etKrNyGb6BSQXWJIaD19x0h6RqjHznNirfZ7/E9jnjZBnF
         LWEedN6IUOFBXPyu/PYGuwWJMlnGxW1TxJCNWrYPOsNwLNg6185/kwbBQmjiAEbyTa2T
         /Sz4kdOnxrNIhDsNME2n/Qfg/02NLxnl7EYJr/g9dKzr1NEDkzsYjrzIHX2aT3XQfEXX
         et5hG6jE9TzfRWSP+n0j3w+8YumjbRqcSOY79Jlbmqei/gkaaCP3pBP/hmQTBZZzqlki
         pcyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530H8J1XTlOCWBBq2wmELlq0uyivMGK7sEPHMIaLvSghDjRKDlbJ
	oiTVzvXeb+MDEaUY1Pmaxjg=
X-Google-Smtp-Source: ABdhPJxRWfu+Plkc0NglmOgx0C2NV8tVsjIN2kHTCn/ghtgnVmxnAsc2kNk0MPRxOefB+0v6+eWTwg==
X-Received: by 2002:a17:902:7601:b029:108:8f75:915b with SMTP id k1-20020a1709027601b02901088f75915bmr29450pll.71.1622740097699;
        Thu, 03 Jun 2021 10:08:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2848:: with SMTP id p8ls3735517pjf.0.canary-gmail;
 Thu, 03 Jun 2021 10:08:17 -0700 (PDT)
X-Received: by 2002:a17:90a:d24a:: with SMTP id o10mr12328335pjw.19.1622740097088;
        Thu, 03 Jun 2021 10:08:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622740097; cv=none;
        d=google.com; s=arc-20160816;
        b=0jiAbPCDPLCu918jIuZ9OqCdnY6Bdvd5ciwwltwjcZrNglgtOC7Dx3Au9BsBr/9q0b
         bEAQlGzH+4DGwwgMG8nkdvgp/1zgOZkdZctjf5R0X/QFDkrVEYBULF6kpK5rEyYegsrQ
         Qh8b+JymZeMM+fYr/uzfj4fA7YN3PCx0iTpgU3JuToUg1gM2efAQYRtggPraUXNFKY8A
         hRV0Jqm/n4upJzYjZtOg+LgYtvFehR+qXnhxKwKAHqyq5auFKVTT4iEezSZpF1ec8OKA
         o35BPh0EknB5Ptp2zNS0i9nCapoa4yLOXG8hOtdmw8KNfXoabDSON3PksP3bkwGAl6fV
         DFLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OZodx+DXBtkL5iI6sFhym/IK/J8dTYqUsX6llaxiAxs=;
        b=MfiLxzOLikjYclmuz0LbibAEXRMY2RjyTczn1GjOOUnCeIn9IronCCblUf4Ttx/YE9
         cQUPKEBTwhpVF683htHgu0N2LfVzNDgA+3mXLt5q2nhdedsqTy/4Os86T7pUz6Om+YzK
         wfRlSPY0jMhUEDehIT0qV+OiMKOuQlQpkFBV9fow0PGGTMAP6c2Y1vYHVudg25TyHGH2
         lfU2Sg8D/jiPC1swZKycX0lbJZIBN9UiU8rM60Dy+AK6Y5inTR0AYZbIOtKAMoqW9p8/
         0IrPBHvLnNwkzZXV7Nbe9UhH5odH5mWzn6aMM0exWZlMZrqovFO1ubMzbSzcExN7Hx3k
         8llw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UZo3o9LJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j15si193914pll.3.2021.06.03.10.08.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Jun 2021 10:08:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C2FD2613F8;
	Thu,  3 Jun 2021 17:08:15 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Candle Sun <candlesea@gmail.com>,
	Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.12 34/43] Makefile: LTO: have linker check -Wframe-larger-than
Date: Thu,  3 Jun 2021 13:07:24 -0400
Message-Id: <20210603170734.3168284-34-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210603170734.3168284-1-sashal@kernel.org>
References: <20210603170734.3168284-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UZo3o9LJ;       spf=pass
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

From: Nick Desaulniers <ndesaulniers@google.com>

[ Upstream commit 24845dcb170e16b3100bd49743687648c71387ae ]

-Wframe-larger-than= requires stack frame information, which the
frontend cannot provide. This diagnostic is emitted late during
compilation once stack frame size is available.

When building with LTO, the frontend simply lowers C to LLVM IR and does
not have stack frame information, so it cannot emit this diagnostic.
When the linker drives LTO, it restarts optimizations and lowers LLVM IR
to object code. At that point, it has stack frame information but
doesn't know to check for a specific max stack frame size.

I consider this a bug in LLVM that we need to fix. There are some
details we're working out related to LTO such as which value to use when
there are multiple different values specified per TU, or how to
propagate these to compiler synthesized routines properly, if at all.

Until it's fixed, ensure we don't miss these. At that point we can wrap
this in a compiler version guard or revert this based on the minimum
support version of Clang.

The error message is not generated during link:
  LTO     vmlinux.o
ld.lld: warning: stack size limit exceeded (8224) in foobarbaz

Cc: Sami Tolvanen <samitolvanen@google.com>
Reported-by: Candle Sun <candlesea@gmail.com>
Suggested-by: Fangrui Song <maskray@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20210312010942.1546679-1-ndesaulniers@google.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 Makefile | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Makefile b/Makefile
index a20afcb7d2bf..476ab5b3adc2 100644
--- a/Makefile
+++ b/Makefile
@@ -912,6 +912,11 @@ CC_FLAGS_LTO	+= -fvisibility=hidden
 
 # Limit inlining across translation units to reduce binary size
 KBUILD_LDFLAGS += -mllvm -import-instr-limit=5
+
+# Check for frame size exceeding threshold during prolog/epilog insertion.
+ifneq ($(CONFIG_FRAME_WARN),0)
+KBUILD_LDFLAGS	+= -plugin-opt=-warn-stack-size=$(CONFIG_FRAME_WARN)
+endif
 endif
 
 ifdef CONFIG_LTO
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210603170734.3168284-34-sashal%40kernel.org.
