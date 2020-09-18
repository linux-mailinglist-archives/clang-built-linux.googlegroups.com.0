Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBQNOSD5QKGQEORCEL3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A2726EC2E
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 04:11:14 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id z22sf1212618otq.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 19:11:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600395073; cv=pass;
        d=google.com; s=arc-20160816;
        b=nmBl8mzwWDErzi6SNn3gNSgDZXoCoyTVX02UrgLp2bVRxcYgrnlc/kt6ERECsLuV1W
         fVF8OM7y4A4QjZQvE4vawADOao7ZwpORUqC+oNPCcAGVMKDIDChUAfDf0QH1sCBI8Kee
         R1ZHsoqFkLaXDkd/pLeW6t6CNxUVBmJFDUw0lKRMKizuzB5GLBavPymrpU51tueOO2BH
         sCBDZlw+zyMn0N6cl1PV1pPGqJW7kZIIGb0ZdO8LPpxYPJtbMcTK1h71b+JPQmSKSLxS
         MCezK5Jm9aEkW7aVSnStf46mORHp6b5qip9vDEc8A7s70xp1HBolHH7lXmJUvTC1P4dq
         1I3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KUXmfKGXrMVG/U5LjMpXkBmS9HOWoyI0ZkPl/uhrWaY=;
        b=tjw85BO5Uti+7TCWE+6duxEvKQHE65rGFLYdYqbcLE+2zam4R+OrtWnjjtx5H81esW
         ldy1obg3sT4UuqhdL9+++QOfsiEVvbj6Sreg+rZ9cxeboonzD3WJ+OBE0ApCluJ1l+Y7
         26S/QebxudODorl4f23R/tov2RmXLhqF52t+fyv20sUMQojSJs0vVDR0Bbis/VDKxqKy
         t87waJKuZmtcVL+TwcNZ4BUcMeD6sOUvDIzbuBYX6hwOyeeDxZhAOaFoxyPHOJPpdWFC
         FgrLiylD216K9G4/9gDPdNUtewKn0gcfwUCK+xrZGX16RHi+f1gUsSd7x8b5vNOwnt5B
         cAmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HrtRmBe6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KUXmfKGXrMVG/U5LjMpXkBmS9HOWoyI0ZkPl/uhrWaY=;
        b=B+VT7bB/ag846TMBI4EY4ENRXFbV8budOlWXTFoqKc1sWgJN5uwGGsyt/1cfClCJb/
         bogVAy6DfLZUEsuC8mH4BTrqWMWky2j3VIXiCU5EIDoDOL6ac59YcMcKyHkbF7Z6DqBR
         bzw24Ke4nwJ0JuDTLks/WLrZSfXvtcbq9Ei5JeQPpp2ywUyFuFd3T0n6kkqzIqwSvzI3
         vr+JALFFnH1pgNfw4EkYz7v2oWH2HYfxm5f4RrnZxAeQ9p/ZkiqTHffc5ZFwiLg3hdEX
         ryTEv9FXKQe6pd3II7878lv3+QLjO/wCJoLBioUq74piME6at5epr9zSfLC6I4S2FP9Y
         nXAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KUXmfKGXrMVG/U5LjMpXkBmS9HOWoyI0ZkPl/uhrWaY=;
        b=Tq5pGy6xOsDbs95whoI7La6sEEfGJWCS4KtOpdyAOISrC1mz6FgL9+sQ+hl0PBh7K/
         Yzk/ocMsq8q8y201GN2KGGztnmmIoT4VZL7LhfSqqAQzHBw08zErXzBsy0uje/VvnNYA
         /8CmsgagtZw0VqU3yA3Uy+mBlO3u5QH5b0L0wposPMh2QoAzbj5xBzxO2hA2mL7ovhl6
         twkNEWa1ZOiEJjO7YVOliPYZN2FxRC1/qgHoxQ2o+Y0UOwCagpI9ho/esgklkOgld8ff
         ZSt1ztBxsaosZpLKnqp5Czkg3b0KLn1dSpZpBtLttVxkgsx0htZG10am4WzcaDYqZziB
         yvdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mgvhqAB7rcSz+K3HlyPLnaOa2Mc5SR7bi0Ky2U3KNSPx4go79
	6TGGcWRkpbQNTRBLGD6qd/8=
X-Google-Smtp-Source: ABdhPJyNmaoMthkb4TAXWVw+cJNgpBU/CaNhS8TrxL/kpqxqP66yp5l+CEXed7qOOYqqsh8dFu7NvQ==
X-Received: by 2002:a9d:6d88:: with SMTP id x8mr20111536otp.252.1600395073357;
        Thu, 17 Sep 2020 19:11:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:31d1:: with SMTP id x200ls929315oix.7.gmail; Thu, 17 Sep
 2020 19:11:13 -0700 (PDT)
X-Received: by 2002:aca:413:: with SMTP id 19mr8383048oie.149.1600395073008;
        Thu, 17 Sep 2020 19:11:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600395073; cv=none;
        d=google.com; s=arc-20160816;
        b=KPhRn09CKYIu6T2/lX/HSeIpM5DYsmI6ngN+mMEqLXIBEGYX+I1ExybXYjHlnYCNoF
         o0eD+6zFCIkPhIx59/yC8iPKLB7J+z8pQq5AluhFzwVU/3XdqIW0qhXsQAfmFxw4jG3+
         R2CEl5VG4e2B3QOjRuXMv/RtXTsatUB2Bdx09AsEswFBRKYcvJ5goP1uHbfmaISmoTA0
         8hWCLmrDERCS0ZxXUk3XO3IrPxZk0B2K9oZjVTEaDTMFTI1LXKgSSfSccqhzEXyU0szN
         1Tub3dQLlApYtiCSBCSkT+5/hXB9Co09V2ZguG8Y7a90BcsE1s3kiSVGKYLlqRgVq8dT
         Lu6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vX+Hh50U2C4RMLbrQD63YTcffHz+5SF8gvN1/o4IlsE=;
        b=sRNtyGJJhH1BfrjUeqrvvh6SXKGUWyy0ytXOAgKMzsDTUWbtYV8Smr0BFr4kxWEbpw
         QOekyvNA49LfpXKOFbNSKH6qgGpw+b1PVAKTzbT3IRzqZdN05ytbUT3idt+xNHISA91R
         fd70RbF/pMNH5EvXe3Hp4bJFb3YULJbKSaTkMFY6XKYEtAM/o5ZHLqXZExkTb3J4UE0D
         56HGqXJbbqn4sos2nVpH5u3VZnU2rFgZdnbYfeJrC7vs7pKP9PIfwqzr3IzH2JAaeYPs
         MqPVZWOpewHZSf7eENPJGjfU9/2SoCBvNkwaUjt/TvumK008RmMhq+CY0tkjHG4Q9Gry
         UUmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HrtRmBe6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l15si221261otb.0.2020.09.17.19.11.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 19:11:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A9DDD2311C;
	Fri, 18 Sep 2020 02:11:10 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	Leo Yan <leo.yan@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.19 156/206] perf parse-events: Fix memory leaks found on parse_events
Date: Thu, 17 Sep 2020 22:07:12 -0400
Message-Id: <20200918020802.2065198-156-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200918020802.2065198-1-sashal@kernel.org>
References: <20200918020802.2065198-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HrtRmBe6;       spf=pass
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

From: Ian Rogers <irogers@google.com>

[ Upstream commit e8dfb81838b14f82521968343884665b996646ef ]

Fix a memory leak found by applying LLVM's libfuzzer on parse_events().

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@redhat.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Leo Yan <leo.yan@linaro.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20200319023101.82458-1-irogers@google.com
[ split from a larger patch, use zfree() ]
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/parse-events.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 6d087d9acd5ee..cce96b05d24c9 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1287,6 +1287,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 
 		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
 			list_del_init(&pos->list);
+			zfree(&pos->val.str);
 			free(pos);
 		}
 		return -EINVAL;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918020802.2065198-156-sashal%40kernel.org.
