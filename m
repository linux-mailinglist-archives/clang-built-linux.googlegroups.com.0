Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB37FUHVQKGQET6VFRRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F43A2BBC
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 02:50:55 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id b1sf3024110wru.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 17:50:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567126255; cv=pass;
        d=google.com; s=arc-20160816;
        b=AFCY6a/UDTirevSVev+Hbtp0S66dUb9YEGDQcqJGn0huT9LTHXp60sYOZFgHmTteR0
         6EbWsNVJst++0B8bTlNtUU7EBhl7Z37/gH7QckUb5DVhclSQBEnfrtPQLxGVRYxyuOlA
         RhatquZlZ4DkxZ0oAWCHH8X8PwOIEoYzlaG8MeJwvziR0+N2MGo/G7kZbDFc91ojYNW4
         pn2IrrODDDMzj9UPETV9namzrHJD/bVAAFbzsMq09X3e1LOBTIHjCfE7uy/QZoSvFu46
         cfDpaVox62hBFMnY/QhBtpQlLegEhs34IT623lDS82JSwiGCuJRcVEr+lpghucwRaJP6
         oxRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=HoTDLdiAJUK0EWQy19jue8OrvdxcWe4S40qGAhoh7+Q=;
        b=REX1A0CPAojvsfOLAfx0G7e4uleJa47LGK/KWi7cEXZp9zeNnB0qoubQMrSrE3wdTw
         ZxZWrjppT88u6pawMyNccPUUCTjI1bp1kUYUmAhJlJDhOp8qyumqPWBqDj5dPI4dVQWY
         hUaclvtJdRlEk/2ms5DrZVmBK4fVTPd6J8wcNLfrlRrEIHXPQHafwlN+oOkiORcEOeyH
         IJHJQWV4syW4dyQWoT9teQG3oQg6ZrsK1tnuN3OB0xJVl2qxowIbQzRtk+FV3MqGx/ID
         a756HJjSYaRmLKTu3dyJTHxNRAA0p1SRvzUy9uJ3AhhuSQYqFq3gEwmQAhK1/vQCujM0
         eTNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Okdsp5Zx;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HoTDLdiAJUK0EWQy19jue8OrvdxcWe4S40qGAhoh7+Q=;
        b=hyw2XrZ4Vt+xHXY9IFR9z1ZDG4D8yJp7qFTKMM7x1gFADJKymi6/2s9o8E+iUHfx6V
         EpZOC+0AqtvCQ5uz3rDAjQi9K+LbBbBe1WTFk8v3r+1LG0AYr0KeZ/xhZOdxLbwNtWQY
         oTcAGalQN7tjfoDUsjl+wkSN3XpEyJb5ko9SmyG512vl3vNgYv1XmsrT8arEYAjGo8Q9
         AJbSxsJN1m8lthv8LkngschNGmzcbPZlzpfvE/uH9jwhFryKzD8FJpO7y7DRVFOPAtoW
         0HtjKq9PtHBHdjle8O1dEtHEoSkwQ8O8zLukHakvB+8FunLzOhXBFpcOW9LElEk+xbnr
         UvoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HoTDLdiAJUK0EWQy19jue8OrvdxcWe4S40qGAhoh7+Q=;
        b=ILXDxYWFB0n+YO1rrbw7V/gG7zYbJeo/Nqdq/QN1t2hdtrOHChyaAn4fPx7oLzMfNx
         +fw91MTMybunHLequGBXUAiiPMSPeHDPZtZPb7NjfSubw9TYm6ZnjYR1iunlHH3Jp3OX
         0q7hAq/qGvq8Ef/9ofwyIco/w5+wJBhrSAram5KQYR9i2e8DFsDuok5G8mOenoE08HKH
         +eYOs3WJ4L2SQreffpwwVE+cKF3YRbJiYikewExRbVWUhcDae6fV9O23G6/2R6rj3evM
         2HUoQBs5fA+TN5wX8VVZP759+4E4goFw2eVXy3Lmv+k1YtLUKT0jRT1FwrVASM7txBTT
         igzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUQnQX5oUigiaFLLz7iOEq+Ckb5Rya+f2m7Q2X7157BgLoei0EF
	guwNf614ZmefdfqKWbe5/uM=
X-Google-Smtp-Source: APXvYqw83s+KrsMmlG9Z8XMO8b2DgLAk5mJ/KiMBUVGxZ8g1Xd7HtcEGHXdu/iLiInGu6GjeFK6AuA==
X-Received: by 2002:a05:600c:2102:: with SMTP id u2mr15223617wml.105.1567126255061;
        Thu, 29 Aug 2019 17:50:55 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f3c4:: with SMTP id g4ls686399wrp.4.gmail; Thu, 29 Aug
 2019 17:50:54 -0700 (PDT)
X-Received: by 2002:a05:6000:1002:: with SMTP id a2mr2970362wrx.28.1567126254669;
        Thu, 29 Aug 2019 17:50:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567126254; cv=none;
        d=google.com; s=arc-20160816;
        b=Fs5rBVGkXpBmqCOnpe99lkmK3qe6SCcG7F7+l/i9Sf5kmV2A0KUx8QUS4L0CxcimPU
         fKnkz1unB87XJlN7kk75gL2jZKqq6PrXLiwv8uBFR9JyM9Re8i9Z1FyBDY1UNlzWAGLM
         szKFUVnA+bwS1N2daaDZvKT2wVJZ9DF3HMzRfLg1xYwgI/UBqDo4bMGmEJUCAoM39EIv
         tTaz/dBp2SuXCkQ+r48x2KZhXkdGAObzQefo4De1kWXdKl0/rIlKwJB3EQq5n/LcWnwQ
         lL7e0HF3JhHJlq+WgEfbx1bypVroQeQ3YBjsxTwayNefRHYU/kbRxW0fbdAR3bj2fYC7
         kFzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=mY025N9ZTLshq6bUASscJHYyFWN73WCKPGSueHP30TA=;
        b=qHKmV3ifvmp4ztEv+FrWz+HW7Kky3cBksbIliiyDc8Tu3tLCE2MIj/vVdYZxm2Ke/v
         OcK0XODIQYB0iRsGEY2eTaj1r1/yaALuApk1ZorZ7ZRa2NMksHRMXkYKbrICHNvhXpNc
         /sCgS79sGYtTr3MUPpsRd+NDxaumSSzJ2tENW6SsDByOZxK4hhtsh1r7o8KDJ/qCtTm8
         t4DDRWtOQLknsUaYNl+0QOhc2vHxmE08uFvDvUodXWEc0Vxnu6k6gy13YhCdOUeRsbDE
         7GFpdtptnGwrYYtO7n+NeCdXVB41vcmTMUOmKzpOQ6NlFykR0zM0wGovNGIX6umhvWBr
         +6uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Okdsp5Zx;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id b15si380484wmg.1.2019.08.29.17.50.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 17:50:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id t14so4834185lji.4
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 17:50:54 -0700 (PDT)
X-Received: by 2002:a2e:2bda:: with SMTP id r87mr1097319ljr.3.1567126254430;
        Thu, 29 Aug 2019 17:50:54 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 17:50:53 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk,
	ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH RFC bpf-next 10/10] arm: include: asm: unified: mask .syntax unified for clang
Date: Fri, 30 Aug 2019 03:50:37 +0300
Message-Id: <20190830005037.24004-11-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Okdsp5Zx;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

The samples/bpf reuses linux headers, with clang -emit-llvm,
so this w/a is only for samples/bpf (samples/bpf/Makefile CLANG-bpf).

It allows to build samples/bpf for arm on target board.
In another way clang -emit-llvm generates errors like:

<inline asm>:1:1: error: unknown directive
.syntax unified

I have verified it on clang 5, 6 ,7, 8, 9, 10
as on native platform as for cross-compiling. This decision is
arguable, but it doesn't have impact on samples/bpf so it's easier
just ignore it for clang, at least for now...

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 arch/arm/include/asm/unified.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/unified.h b/arch/arm/include/asm/unified.h
index 1e2c3eb04353..3cf8757b9a14 100644
--- a/arch/arm/include/asm/unified.h
+++ b/arch/arm/include/asm/unified.h
@@ -11,7 +11,11 @@
 #if defined(__ASSEMBLY__)
 	.syntax unified
 #else
-__asm__(".syntax unified");
+
+#ifndef __clang__
+	__asm__(".syntax unified");
+#endif
+
 #endif
 
 #ifdef CONFIG_CPU_V7M
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830005037.24004-11-ivan.khoronzhuk%40linaro.org.
