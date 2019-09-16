Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB4WT7XVQKGQEIADL7UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id E81A4B38A7
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:54:42 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id o16sf4134960wru.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 03:54:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568631282; cv=pass;
        d=google.com; s=arc-20160816;
        b=yyiiKQkbLxot/IiMNsGhq62gZlXvmK73GJqAalKaEzO3dtJxAb1i0XZq5F6xFS116C
         7ihzCQiLLa0fkvbbSsV1xcps7uy+XyLql+HuzpzDfy7jpEPljoyDpU1voGQmvpECu/lS
         9TBLHhl+9BvwgUZaaGf0ZMeHyA748LDAn12gmJn3t1F/RgtC+pSS7/ztMWFkIVY9Hkms
         Cl6poU09XFBSSYuECYLXxtlZzbwdNTI20OlCxay4MUAqKe2G55aIYnL12HBQCjRyUFAA
         k62LK4U9g7Yc0/Vw9kIBWhJaTwE34FT/tOqtSu5uoi7JYS2+zJDlclKzxP0AVrdVkhG2
         eytA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=iKgWCB0fq7MTroHp/nDuclrSMKk6sNVGWuqeY0vdzwE=;
        b=ND0DOKXP6HFw3jonUMRN4E/2ROLfr0q8PlXLrbFNNisoCNPZP9wJqP15+VByNJNmsh
         9Q10lHRvhcRMOKwNw625XBvCvXF97LTspAQtJ7XFc1yZ1jMMZJqxkVeKs56vmaxssHSY
         fjRv0Gi/+Xs9uZJCi6Jomd5oXBXUq6X16UPldmG85gWBO4y58fC02qXEXhyXXGyl9s7L
         5LEOe/fyfczXqkzQqeHSbPvwcecSD9rwQPc35YCg9RFXpHe5XhJ0qccsV9pTKRmoOZn9
         wmJj7DWbFmTlN4fQtxRbLGK+NehJabkNpuAUQiaOq6h94kRWa6cJPeHCKWdSMFXxuIOt
         Eo3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LYey3wmg;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iKgWCB0fq7MTroHp/nDuclrSMKk6sNVGWuqeY0vdzwE=;
        b=KH23ZCsi6wh5DM8wnxZ6zOz+JpJoxsipgh5x3SNe6i05EBuIej1TRZncHZsqMo06yn
         t/2UQUfLt2VHLM4h90BK/VBvQ7A6Yv7RfjUyl+45YvTKzZ1c0IlqLUWwtbjmvmjdm6Ru
         /wrqA/jfpSJV1TvJ8PexqqU+MPGJVXhODX6PWBlSLZXjGeIb5Ialjo3NO0XnB6o4rFc2
         ++2P3cnCbqqeUixGsjGHHQJ6gsREUH6jWh3f37iY/2T6jVovCYeLktG0Zj7WrN0WMPcS
         7e2SzUa3QLsGEAUTDW7P5RT4FrzyuIMCjYcGfKuD8dQ1nrvfMbjQHbNRZsZAxbNcS/84
         MYbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iKgWCB0fq7MTroHp/nDuclrSMKk6sNVGWuqeY0vdzwE=;
        b=Fts6fFHHJsINVZrSOH3+QwqPeZ7tEVdSDiur0vnR2u1Vii3uJjx0RxHJb5INQ+NRLc
         7w/ehqFTNot+a48Kk0iGJNJktzaCToxeWwSglbLuVsodk8UGLjoBucGP6QN3ivhiuNDC
         Ih87RstXcB4xRqoEGscJUWgUaXG+sj2M+67WhXAu7TL1d+9ounp6ymbcVKOT9TN/rXAJ
         a5HM7PegIJWau5kwLzvfpZqvdJUHOVt9bWzW1PiIAp/o9kAUyqOXgW/xreTfgENGzGgf
         V7ZV/fXsAwCIxeo68aI/ShgQq2NeTdy2mCtLF06ZbEQ5E7f5mmXL3PFoV2ze7+YmsU4S
         aH5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXyKka4KzfhvjZlgFrlHTnclP3ouINFh4IkMBOibWkrrl09wmAE
	Xvxeno8J7gioczGRDAXxeH8=
X-Google-Smtp-Source: APXvYqySFWa2f/kmemB9r+WyzsSTRPR8XYSIfRNa8UqpABC0wG4bwnT3tWAtp7At6x7Def1Sf/iTMw==
X-Received: by 2002:a1c:e008:: with SMTP id x8mr13051045wmg.85.1568631282637;
        Mon, 16 Sep 2019 03:54:42 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:ce16:: with SMTP id m22ls549131wmc.5.canary-gmail; Mon,
 16 Sep 2019 03:54:42 -0700 (PDT)
X-Received: by 2002:a1c:e709:: with SMTP id e9mr13701328wmh.65.1568631282279;
        Mon, 16 Sep 2019 03:54:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568631282; cv=none;
        d=google.com; s=arc-20160816;
        b=YHpxaDo1xSRBHxw43ZzCpVHRkFKKzwMXdcPHShaJeqReoDTvClG21tVbJvc8LlgIaY
         meeL/gEXSBoHyT07oOeet3Nx5ZLkzi9dQ9+7jdLxyvZ0IbBSE9f8Rh2XcVKbKGpwPU4d
         n6ImZ6BbQcntiaG7LQl6Tr9/ZQjNSBhAasUagKfAggwgr1Xrd8lq5CSOhuXWwvOu/cnd
         WLGP29TcTCcVw+dUfU1DjZysqqPP1U04cy2gPXpbYbusaLYiyDtH3GjcuP5YWuZpXk5x
         SEFKpqdb3cEeBOnatLUGVkQi4BI22NgGy1lqPmwkwBCsIFCNRAUtd3FgM5CuV64SEq4Z
         5jKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=6kzj0QUIRS1sDUroHtM76x4Sw0PaH661mS2z6H9lrYY=;
        b=L0VZusTvV4EbiJkC02kQDrHG6ewWMKKi5QVQzMYsFbLp6Vn0QVRVz0WlDJAxHuh3FQ
         xtAvKsGRiKKaDYOQ9Ca/MkZF577gkptfOucRNju5fRAiX9YOPG/GfzW6/c3+lAdWOxXw
         CwyZoHhdRiZ6hjhOPZeU4nCiBb6tkc+dmdzvdh3WYhoRHWqh5ysWzhJwFht6/8UjleRG
         2nkvs9gWH/Mw4z6P4YtNU5Qluy9zeCTZC76+rwmPXzFA1mb0p6JUhhM6qTv5CoOGe5V2
         mh7acxG2oglQvde+jcN8VVa9h2EsMdZoUokUq006Dt5/U+dcX84wMzkwHlqfuukHAXiT
         8aPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LYey3wmg;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id a198si620164wma.4.2019.09.16.03.54.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 03:54:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id u3so11952346lfl.10
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 03:54:42 -0700 (PDT)
X-Received: by 2002:ac2:4ad9:: with SMTP id m25mr11489559lfp.89.1568631281688;
        Mon, 16 Sep 2019 03:54:41 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id v1sm8987737lfq.89.2019.09.16.03.54.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 03:54:41 -0700 (PDT)
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
Subject: [PATCH v3 bpf-next 01/14] samples: bpf: makefile: fix HDR_PROBE "echo"
Date: Mon, 16 Sep 2019 13:54:20 +0300
Message-Id: <20190916105433.11404-2-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=LYey3wmg;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

echo should be replaced with echo -e to handle '\n' correctly, but
instead, replace it with printf as some systems can't handle echo -e.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 1d9be26b4edd..f50ca852c2a8 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -201,7 +201,7 @@ endif
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916105433.11404-2-ivan.khoronzhuk%40linaro.org.
