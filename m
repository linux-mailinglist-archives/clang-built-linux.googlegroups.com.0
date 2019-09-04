Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBPGWYDVQKGQE4S2HLUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C90CA94EF
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:23:09 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id r21sf108756wme.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:23:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567632188; cv=pass;
        d=google.com; s=arc-20160816;
        b=GGNiBcEn2t49FvT4but9N9NK7ezJiqHqTrZdGLgTWzmRvoPhVhVc1w4OL7PWBnonow
         HmlMvDtHHNm+XW65WKiDIzHJxNrvkSc6EEd4Sw59ZHoL4XAEVAxV/cULaPvKviO/G//K
         ppartuBla9mvwele/fgZebfjQlrLeKeTvWFIxEvMolC8OFPoADSv4Ssl9uYvZKrF7/c+
         uewmc/bPo/BNmeQ9O2fHRahpd9ugrPX7Vv09rNTFFrraMImn8JP8uVjXq9kw4B48P4fy
         sL2KbWj5SCqxPbxKcn2JTazTvw859TWczCrZmmGEf9P6qS7Ld/WH9FXdpIpSSSYGkeEx
         c+Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=7vaQ/nTpeMTi5wnu88z0vcLPhGNQhZ0ImHeTvd2GjRA=;
        b=QX0CGKfSJplpykCSdRwCzsKeugMv5ewRWk37vhCeQ1GRVoM7LR1xigypOmXwQSN9PC
         iK2pQF68keyj6ek7rJ/7Yv7GpJRxoRRBP1pYPtEw5YzW40r3p4iNDCCsyCbKI5Jy9ANW
         AnvqgoohgBxBJ1Hb56rHf8+QW2Tt/gv+2ufXkLSlpC+A7g+HUc3FVvcYN7oXwMUOHWrc
         FaAepFjL9gAfKpdecvMbTet0D8+XWuhkrTdpVRYn9evGtNb5GfYvTPheKCO6NMpjP+gq
         B6iHMOkSl0z/M5t5jHnEakwZe5ojNzHroEUZ7+wnNSSZKuEJXZ/Ov5Nl+3SlpaI4uUaI
         52+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=w9EqOn0Y;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7vaQ/nTpeMTi5wnu88z0vcLPhGNQhZ0ImHeTvd2GjRA=;
        b=cbVwFo+XxeVRcqD4KIyeSm04QU69aeAnunVeHDDyxnUCICOdwe5JWso3YXx96NZDhT
         /hWxAqsShY3+NTOWmQq2CErvp/MTkhTQRAbf2BBvSnnScjik50DGAQ8txNa7pgKyrDV5
         3UZE9KT9+XAP9T1sZew4JdrCwSyMYl+sjz7gV+4z25NsueRsn3vjbV8bR5rc+hddY0Sl
         Rw3Z/aSwlK4WrnnA6izMFYD0/qFB6tqIqziB1oCP/sYzUiDYo5VthTosBz+4pFGbMj4U
         TfNYeQaN9R7YBLJnwRBdoKfLLVreDkTG8BDHTyxTml4qN+sxd2uGrcDegjlIoYOw9ZQc
         4aRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7vaQ/nTpeMTi5wnu88z0vcLPhGNQhZ0ImHeTvd2GjRA=;
        b=bbYz7HM/Tt7bVMyjJLt0ZxPELAVZx18t/69Inat7qPuwsYSHfYBcEQteKZ8HiuZY7c
         09iJv0xOiKR6IdeulAv3jiBSWyd26PuBBKmcYnBHiOMCryM5ANSxkCe54tW8YTEfXBau
         K7oNUGzv0OlRRw7NgZZRtceIhxY/TfVBI6APMp5d7kQNKtOnSD4ehNfGrI53qsdjKdZy
         pXwkpYXVM1C7IMmVCnJundG1cUmi4JTZm7rbwVoxfI3v+Hkz6ZFrpfER6VjxOSlKa6Sj
         GL76abf1Pfoh2tne+Rq83O1z3Dj4ip2Uc22+WvJeGMX0RT5do7xAHAi7A6PmZ9o8mXoJ
         Gwxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU8vFunojpjIQfiL+MOChMfASiDRxDs/z1c1hqHx4fnph7Apu3H
	lN5j7YhbeFAwE6GA2QmyLm8=
X-Google-Smtp-Source: APXvYqz9ygBDkmdyYcWmzNrPHpewk/5SvcE+UOkDc58FnN3ZCBLQDIC+f5DHh6aydmhKLaResk4Qzw==
X-Received: by 2002:adf:f284:: with SMTP id k4mr31220904wro.294.1567632188896;
        Wed, 04 Sep 2019 14:23:08 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f3c4:: with SMTP id g4ls5688109wrp.4.gmail; Wed, 04 Sep
 2019 14:23:08 -0700 (PDT)
X-Received: by 2002:adf:a350:: with SMTP id d16mr1041005wrb.326.1567632188513;
        Wed, 04 Sep 2019 14:23:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567632188; cv=none;
        d=google.com; s=arc-20160816;
        b=u1rlomnfATEj6/wg09IKND7biz4YOgqYzxHzxZYG5ijmEBZTZIHRgr2ifnxe2Z/hks
         NZ24txbkF+6P2EqIVmLk3xoxqmoPcN3zwbp/7jxySMXakZpOpAvnGX0M69ZorL19V+aM
         iUX8eGOJFnJUjkDsQ317IodKpNlGjpKHDO7Z7jP2y0OdERAhE/HK+6/gCsinPimFgnD5
         CcATzb8y9MNZ5214wn2eKBFaPmDQxSm72j1VBAuAFQuZ9oOANRLb+3nbY0oXqiKmVNFN
         NCV0yokOWqqOqGrJ3eRZPRkUKekkFJfghM/6NKNTdI/FInRo7vLFMH/YgBi8hEpgytGX
         GXTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=iQdFKRCdsWomZgjBMZ1BG8YTrJG1Rf0I+zDwJUFyFFw=;
        b=eWc1dx8excRoBsHyvZQGLfK+Aw9icqc0RCjEE3e6lWDNSQBVXUjktqdiFrAEr4Pu0R
         Da8HQNw3k8gJe8ExsHPFdtUjQ0ogr/KpxJJgDGrd4PuTiZiRoxDeNg/4DWvSRrdLP3f/
         aF6INTg0Npcp8G+ADtdvGlLu5ZkV0GtpPDBubrbDTZ8AcXj+T8IUSw+qiW4Jo1IWEZe5
         GUyPazh+oQve1MSBw2d4Pe2eB5qSwCJwieB5Gg2zHTFWOQjUVDIV0d7vQwsJAp0N2GQJ
         mzaZWXVPdgDwwicEUTlQWN+5gCP+tTxFb/VcH4XNFKFIBhPe2PvhTwQWWqYqYdZHax3N
         mWBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=w9EqOn0Y;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id a198si225748wma.4.2019.09.04.14.23.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:23:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id j16so189026ljg.6
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 14:23:08 -0700 (PDT)
X-Received: by 2002:a2e:5358:: with SMTP id t24mr15379944ljd.209.1567632188285;
        Wed, 04 Sep 2019 14:23:08 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id s8sm3540836ljd.94.2019.09.04.14.23.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 14:23:07 -0700 (PDT)
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
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH bpf-next 6/8] samples: bpf: makefile: fix HDR_PROBE "echo"
Date: Thu,  5 Sep 2019 00:22:10 +0300
Message-Id: <20190904212212.13052-7-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
References: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=w9EqOn0Y;       spf=pass
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

echo should be replaced on echo -e to handle \n correctly, but instead,
replace it on printf as some systems can't handle echo -e.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 9232efa2b1b3..043f9cc14cdd 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -208,7 +208,7 @@ endif
 
 # Don't evaluate probes and warnings if we need to run make recursively
 ifneq ($(src),)
-HDR_PROBE := $(shell echo "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
+HDR_PROBE := $(shell printf "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
 	$(HOSTCC) $(KBUILD_HOSTCFLAGS) -x c - -o /dev/null 2>/dev/null && \
 	echo okay)
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904212212.13052-7-ivan.khoronzhuk%40linaro.org.
