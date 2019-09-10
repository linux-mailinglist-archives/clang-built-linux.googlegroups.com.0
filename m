Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBL723XVQKGQEMWUZCVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 13364AE84B
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 12:38:40 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id r197sf3310392lff.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 03:38:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568111919; cv=pass;
        d=google.com; s=arc-20160816;
        b=pM7hh92hDlFi5z8EvP65JdQVilbsgfE1tV3I3aQz/Ii5axiavq0MuhEiTpRyS6I+B7
         baN8IPomIc2W7wOisFdEPCggz3wnd224PDdX/eII/MpR4OdXDEsS42vggV4gW7qhNMCy
         o21BQ6S9mFmXso0vnAoDYAOcu467OJmlpdiMsYlMz6IFvkowDYIr1G5wQs7Ue+QaDjeO
         bkdgQ4pKjpTEoHOiO7PhbUxcvq+gEY75eTUhtO24lG/Bt5tXJM3ngSiM5bHE5H5W5JHK
         aMjIEn8OEV1BI4YcRnH1PMXslyDuJmM3IO1f8CEpzNQVW/MjM2H/iwgyALqrCzm94+Ys
         Sedg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=VQ3AE84rDhUwNElMkMlwFhkhp1ZSt46o+y7yQUmmboE=;
        b=NOaW/ft7FdVoNXeZ5RdL+Yhn+3GRmSier3SaTxrvsOJhPMZxUI0FTjzIgGX9y4N2cM
         NzrGb1MysP2eP9hVZwo7gZ98KPQxQd1dRTEUVUx4Jx1aFMy5JRT6EUiPHEzw0pDE33/y
         BBfCQS9si0nj6YC3E1aBEVD1QnFxmNtK9K3XqBR8Um7d01aiquafHdxpMrgtIk9LI0Kl
         2QHAFSTl9MsXu8pFzNIAHUFD71MWV0gsPTLErrzHuFSTevmbVP1gg5G2dxdfEGQvB/Md
         8r8VB1FUyaiHpGnwkYE86+24vCDjR8Tc4ZBxhm3s6o7/G2GnWjin+6MN4ALy+dBQUEWP
         obJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ABzAt76o;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VQ3AE84rDhUwNElMkMlwFhkhp1ZSt46o+y7yQUmmboE=;
        b=oNYMjbrnUTFmnpjC1GVlVFg0YNjSv5JBfACa+ePuHBmpB8/2UGiK7w9k3RSOM5/IY1
         8unYWFblUh8NVJnkFdWPic3SEyyyGf7mnb4O3qtnkCdqFneXU/WORDwtUqAj8CVu9Fz7
         jF37DmBEB8l2TkOQMCwDSF40kKOkRDp8a3UR5mlpizCvzdp9yM2KLmADUhNCaCWZpiEe
         VJ1xVnVNr1vaECdcf42wEqYOLuxCZ3xenxj5gaht7qAY+3CWSV/G9bNc/8HAPj0qx3wp
         5hNxsPuRqZPC3zrC8jmL40poj8HjC4lxBMGzyVw6H59xtNHX61zfQo0jtVDDygYlG0ii
         y4Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VQ3AE84rDhUwNElMkMlwFhkhp1ZSt46o+y7yQUmmboE=;
        b=tJySG1YGB5NbnhOoQjUdeit/x51bbJChYP6t/OiscoPf9UM2X8MUQv47xsK3rh613B
         f6eHuA22+fbhMgYYJq01elLD+E1z8qb1eS7rG3oPxLwDJNAQhwFi0tBfFk2tuZhvPYm2
         njDxfreDc/TMlpHxtlccmiK6cIEbjvL8SxFeuFCOo5HMZADpEt5n+ZeRxDPTL7J27mNZ
         gNEK2PKcrhItzMaCdTXatFlwcYs+SIajxnIwyIhylIHxktf1VeT/T9FESiHNTG5BFO7D
         4DO8+DotNDyQBKcuibamfwq8tiW6j4WfB8G4iT7yBOqr9eEvTEzGfYX3EW8+szdkK6PR
         cFdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVHvaaWxYH20qJX38K/4zSdE9CmqLkJez9+yTy7H+x76Y4gwYEK
	4KjDvz5TvXHjebOQbPPlgWQ=
X-Google-Smtp-Source: APXvYqyUgDppjZ3pGhREr69srqxJLnM06BqtP7jjtrCvaea+qlG+NdUmAAiZoyfsqGzHQ88B7SLFmg==
X-Received: by 2002:a2e:9098:: with SMTP id l24mr16227867ljg.0.1568111919698;
        Tue, 10 Sep 2019 03:38:39 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:f246:: with SMTP id d6ls1012156lfk.9.gmail; Tue, 10 Sep
 2019 03:38:39 -0700 (PDT)
X-Received: by 2002:a19:f512:: with SMTP id j18mr1064938lfb.169.1568111919151;
        Tue, 10 Sep 2019 03:38:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568111919; cv=none;
        d=google.com; s=arc-20160816;
        b=IF9sK3vwbU2ioH/r1UNMN/07sxYdzGYLTuH9IgwGFDqysGWGdLemuPILEBswOqnZec
         B8rG9i6nv/TVJIT2FrjjurmrK/3Jo/YItf2bRqH5R3cRI4GifDLbDG66JEm+lubys7o+
         v6DoDSjFWk0AXFsXPlpGryioF9MU6HuQN4ItGhICr9lZ1rjXz93MfqQ4GihAqgB2Tx8k
         1Url7DYPXl5EYhXZ1qeTbzjJVm15+/xCG2pTOdI2yYey4vHz5pHdrqW31aaV4EfSC/9e
         b2smKBZC4yR+8EZwfylGULebn6VLYZbRr9cnHuXXxbQGke7d/nWA3aWhi1XjGvPT7tS4
         f2JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=NGKQzll/A9IaEu36OmTkFVayy8Bwv+m3n0iuRSm1M6Y=;
        b=iT7ZecMvIit9oIp5az88nmFQUHFVIBt+uhxxRLAJGGHrS7dHLm3jYJCQ1SssA1/B5t
         VZzXt9eGqtMjTOnmQsZZpI9DRP+1NWJ3DLKx7ymfX6JzIkrlSwtes5Zg1PDEjxJFvUvj
         Qkla7yYKQwilUdi/V7bsFnnntxmqm9XhYU+fG4mly3ohSH6I6Lm4lEWEaw/CpXvjOJxM
         pdR8/IV30yp1EjyaukpuvPY5qLm4CZgG8CxkTM+rgPbYq9O6hjo8B3SHmbFuZtKCWe/A
         7lAPbJ94o5rauYh9NCuF7D4btil5JsLtqYp9vxC/8OsLhJPAIblwEx9QSNa3bPYHORjC
         LeTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ABzAt76o;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id q26si871523ljj.2.2019.09.10.03.38.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:38:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id j16so15911070ljg.6
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 03:38:39 -0700 (PDT)
X-Received: by 2002:a2e:5456:: with SMTP id y22mr19750906ljd.60.1568111918957;
        Tue, 10 Sep 2019 03:38:38 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id g5sm4005563lfh.2.2019.09.10.03.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2019 03:38:38 -0700 (PDT)
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
Subject: [PATCH bpf-next 01/11] samples: bpf: makefile: fix HDR_PROBE "echo"
Date: Tue, 10 Sep 2019 13:38:20 +0300
Message-Id: <20190910103830.20794-2-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ABzAt76o;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910103830.20794-2-ivan.khoronzhuk%40linaro.org.
