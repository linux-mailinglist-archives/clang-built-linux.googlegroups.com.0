Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWOGV2DAMGQEMXGTQUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 260CE3ABCCF
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 21:32:43 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id e24-20020a5d8e180000b02904dd8a55bbd7sf1482936iod.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 12:32:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623958361; cv=pass;
        d=google.com; s=arc-20160816;
        b=GGUlfgW4G7lEr4vzkFiDcGOL7iH6/9zNFMeXIebjkXenNKpOSXm9U7AzjwNa1Xppwb
         sgEaMTUWKBrk6jhKV/YklIHpp5y9kp606tHeju3w1GeLMJ5QaTpYnfIh04ReKPETv2Y9
         bU/e95HgfM+EOZfqW0EeU3XFQTnrn9u95Ml9YkXksnGwzW/x0NDzrGZhPcyZL0HusVw7
         pVDuxS5gEP3WDSwMKLsGJC3mP6EciCpe7NqcxwRV5yPRuDJeOw0K9fbQbOg1QAa8I/BS
         euSjHVvjoxAOlGVVa/l21WvWFnMax9XtqbUhYpTlyQ3WZDrGSeO4P0nVg1S7Xpqb33vR
         svtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cZiE5YC2tSTQoNV+iBsoeIvU2SVAU+xe+l2QumFU7CM=;
        b=0bssplpr+pef18bLaLrgSmQ5uwsLY7c/4E3Izz644JPq54CUjprA8q53BpHp2Ngtwp
         bkbtc+Epgb4NFuGxcaLgjfqWzk4FlMHxz4gsg0aRQs/RgUtm8xt/+vre4Ulr+7n29+mB
         4yDEAxkoPdsmlLEW5eY9uDplmKHISzD0kCwMNAB8NEdsNQ4e0rA4dVLYei4b8CPq3gat
         62Z41YQQIyrMn9uX02hVOzGtTmh8kTvovhQ4UXz5+3fxFqE4/QdKsK7Df0H0PxoijKR5
         s3rvp/b8LsFhg50OQe6poTEyKWGX9Yz5ESRuFD4uvvQaYGv1vvxUJsBFnirSdwPaX89U
         6Rrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DNxazl7q;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cZiE5YC2tSTQoNV+iBsoeIvU2SVAU+xe+l2QumFU7CM=;
        b=J6ckpGBRqHL3cyBowEWoEQZ93DhEV5Qo/SBoxLHojbdsuGNXmAzuaa9Z5USYpICthr
         NM2GiqNiPzxzs5ihJ2F6sMkJ2S1f8E+Px0QGBlUr9bymg78R0Hjf92gc/cS5DRJry7XP
         ziprvZ1Z4mW1Vl+q8/LWS3UzR1envPjPKTdvUKM82dOJBSFK5xWIEm9rJ9uf4e8Webpp
         1VQf1ms9yOUL8gNG2r0JCdnpE3XMnAU0Wl2fJNLCKJ1Fhn103YvsfpuWPYbhRzwFwu7k
         T+Bqcda1D8xukE8jhSpv4JXRxEDsSEyag9GEXJR3bLbknf5nAkguU+O3820a5akOJgnL
         sIfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cZiE5YC2tSTQoNV+iBsoeIvU2SVAU+xe+l2QumFU7CM=;
        b=oL3eGVOn1NNYUPQ53vEr4mBMjTM7squLTqR8brNEPB0IqGHrTBuN1Zt/ej45vt88pg
         53MMVcpDgrhLtRRoKGBsm4zUViee6M1lDkFEJuuaXFO6/XqshOmyOBkIdZ2QZNRdxJq1
         Xt+qJoE4piW5DDee+sCGetBVejq4l59ow79qkJrmaVc6WFmXdr0EtUB2ghQ1G77nbI+8
         DG6Cc3Dsb/zEo+TFckE2jxLg49fdyf6NJEHUhFtKXfK4YnMrx8HjjkaC464oSmytmZ2y
         8OeCDxjj4mURmWpC+pkS26bzwqiY27NKnvc7/r8RwqucvJ7qNSedTj7kYTC2a84o0gCM
         Pf/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533++kcemE7LVptDxGn8doZBr1j/faS2eBwLUOwh5XdqdoT/KVkI
	GyNDg+4yhFor97saj7hG7zM=
X-Google-Smtp-Source: ABdhPJyAf+xAMOajsVh7Gsfeg+Zyi704FnhzbLWcJToD6k1unFJpPYXP36lc5uRqme21ggAUozVhEw==
X-Received: by 2002:a05:6602:204f:: with SMTP id z15mr5264930iod.172.1623958361873;
        Thu, 17 Jun 2021 12:32:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9907:: with SMTP id x7ls1135929iol.0.gmail; Thu, 17 Jun
 2021 12:32:41 -0700 (PDT)
X-Received: by 2002:a6b:7714:: with SMTP id n20mr4980027iom.126.1623958361563;
        Thu, 17 Jun 2021 12:32:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623958361; cv=none;
        d=google.com; s=arc-20160816;
        b=sIMXEbGEVNTL4LUwOie273XYix4C6HQbSBEtU4wJPmALyICDRx9zYL5Cte/BzJSPg1
         qB/zgP4gVSrZJtmXZMmCQrT9EnFwFX4JLaatJXvtEfFYO48Wm6iOr6BTagQNvPNGRafI
         Sb6O3nYMGCriQrnfy6LlDo0xgjH1UhYMTAs0kiH1C5PAoezeuVttnLvsO1lgaPzJMhcp
         0xrLg6xmWAoILfrW7doEmRKljpznPf5pss4UbJAyllKubgfMeZm2ks/pnuV2lRq8rtgX
         jjzP5oeIWuNIZNF3Mv0185S8CzDLnw+YNSYUU1maUe+TPjG4a7AlBbflEo4kYSkp3pzl
         JzPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dbE7qOD4qAovde3gDS2OKdGz1egxoC5wGV6Ao7TAPYQ=;
        b=RuEAnanU3SxMXJbIDMYUs6+F9nEW5elKHDFYVfadBVjFcCxKBu7SQvJbHIfisG2a8U
         Y3Lz5lduBWlD2lb2taqfzJkbq4tPHH3HHk761v3ZxjCkf5IX7xwgLyS3vv3lEzcITb3+
         Gl12LcE89JJ5WHqJILGDMIMMZgCuBI63rzcHVuh8ms2OVOuFSEwoJ4krcuWfxmF+7II5
         5ClKjQ60c+LAIeagQnmK79Wg0bAL8umKQkkl+TCQNCZa1BfS1KUQ5fLXVRgaSOhzho2d
         VKllqDAbEGF7SOAhFGFWeWI4jSyKCoABMdm+i99kHZ/fnCGy7KN9PQK7oV8y/cMbGdwF
         8URg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DNxazl7q;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x5si494520ilu.0.2021.06.17.12.32.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Jun 2021 12:32:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 605AB613CB;
	Thu, 17 Jun 2021 19:32:38 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Heiko Carstens <hca@linux.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-s390@vger.kernel.org,
	linux-next@vger.kernel.org,
	lkft-triage@lists.linaro.org,
	Arnd Bergmann <arnd@arndb.de>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Nathan Chancellor <nathan@kernel.org>,
	Naresh Kamboju <naresh.kamboju@linaro.org>
Subject: [PATCH] scripts/min-tool-version.sh: Raise minimum clang version to 13.0.0 for s390
Date: Thu, 17 Jun 2021 12:31:40 -0700
Message-Id: <20210617193139.856957-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
In-Reply-To: <YMtib5hKVyNknZt3@osiris>
References: <YMtib5hKVyNknZt3@osiris>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DNxazl7q;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

clang versions prior to the current development version of 13.0.0 cannot
compile s390 after commit 3abbdfde5a65 ("s390/bitops: use register pair
instead of register asm") and the s390 maintainers do not intend to work
around this in the kernel. Codify this in scripts/min-tool-version.sh
similar to arm64 with GCC 5.1.0 so that there are no reports of broken
builds.

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

This should probably go through the s390 tree with Masahiro's ack.

 scripts/min-tool-version.sh | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/scripts/min-tool-version.sh b/scripts/min-tool-version.sh
index d22cf91212b0..319f92104f56 100755
--- a/scripts/min-tool-version.sh
+++ b/scripts/min-tool-version.sh
@@ -30,7 +30,12 @@ icc)
 	echo 16.0.3
 	;;
 llvm)
-	echo 10.0.1
+	# https://lore.kernel.org/r/YMtib5hKVyNknZt3@osiris/
+	if [ "$SRCARCH" = s390 ]; then
+		echo 13.0.0
+	else
+		echo 10.0.1
+	fi
 	;;
 *)
 	echo "$1: unknown tool" >&2

base-commit: 7d9c6b8147bdd76d7eb2cf6f74f84c6918ae0939
-- 
2.32.0.93.g670b81a890

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210617193139.856957-1-nathan%40kernel.org.
