Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBO723XVQKGQEV46KZAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 025D4AE858
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 12:38:52 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id o9sf3307276lfd.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 03:38:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568111931; cv=pass;
        d=google.com; s=arc-20160816;
        b=ClznxEFjXu+VM2R9sGxK81IZ5WHQ3WGWHKD2u5/As2mDh4EHkr4F+UFo+xNnXi0ffZ
         zyHDtECtfJqhUYsHROtANroN9LoAepkjZwHhghz9+GdftmmIKviKfIIdpa3EmGczGjCX
         4Kpv2GdUBAFZycpG0g3Tn3mY0haT031Pzhtuc8PahNmiZpO29v5/HO6YjSKpa7nu+WIi
         IVtecvGKoD5bz4lAOzz1BgfFSiuZ/ZKWzWEKRGxeLUMPhFfqrPWjwWYtQM26Fqcva096
         CZWEDtGd5jNAYJV4IIZqA0p9ShbmVjiHOXosVNibLiWwggbCm7HNabB5pBqCt7XYtom2
         xPYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=vhRXIXNEBHtYXsVq4j7498GJleMaqlkAIsM/WMEqEE0=;
        b=iAbOEssV/mbI1kYNm7OjOGq/sjYg8Wh8Rn6wK2DrWft83UT/4h4UguRI+Bi4CRxSZ3
         R8lm9lxt715surp5tt1+9d1B6BusjIyb/KGJevJX3EYSZDNfRHACRLdqzC5Blth9uw3A
         HNBvvKGFqOxdfD3aMJg3XfaxyIZKyKUI4lYTzxJmuusq4FMI5O3uIO8mrSqKmre4HoUH
         Ef3p8YYZPR+qzr+GNxmNXiKiydsGXMuSU0nMOELupy7JaUf6fv83Vx0JXj00PM1VZ34a
         +hg1qUbkKJegOfuvaU3ws+OIUM2UUBiPZuHyALp+Xvr72B4qH0kon9LKznd5mmlgK282
         0Sdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=dZCGaEuJ;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vhRXIXNEBHtYXsVq4j7498GJleMaqlkAIsM/WMEqEE0=;
        b=jd8fhbedRZgNWcwGpF3EdZLfMUalZmIgFvtWvbFhA5hgoDo6tB4vH5UoujG/wTmZRw
         g/fCMIQvYPv7cfppLp0aMal5O/Mm/Vda+rTFvyNvO6X+xVWjnwm1CgpT04BYz+LDlPt1
         Hu5XEpJ9Gq9NVi5i/jN6JXfzixNj0+hSqT7wmoyab3WETuE9Jo2ZuwtiTPGtaadEz62p
         yIEQYvF7owiuS7CQqCnaLNASdjXzV4KOuingXYDG2M2lGaP2R099sgHpQpN5l4BRDdBH
         Q0/CfZx29HZFqzdi5VbGFzsPFfN1Oi2PcLMMWbQjET7WJx+vyQTK28TgFpk5rtp744qC
         dyLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vhRXIXNEBHtYXsVq4j7498GJleMaqlkAIsM/WMEqEE0=;
        b=TdMzUTJRlnRfN7jM86Deap41GNOm38rT4Btzsew+BWiPUcSaehWwar4/fz/MmvKSmY
         D2IVt0tZG7AkNK63L1xCYO+KDltX1xbLnRgWUouNc6Gvk124auhV350bA2T6NL2xc4ni
         EQ9wSWE2db48kZ3aXIE1D56vtxMjzT9BnFfIvmnkoIJ8uLf16tdTo1LFnQT0PJuy+QXB
         VIcdgbm3MHn/4p2MDh5TpBxu5swsgUUgsKeAdl2qvKgRNHqsGb0FR0PZVauu6wSjIrFf
         wwFW4VlSKatqlMFNhbjeH8kWEX3UHWp4etwsfsEKxqOxcqHGf92m7Y9HtAGM/AMg2fXp
         PHSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVJYWBp+ghshRqzl2f1QJeJVj/tr/66wNlecIuoMW86sxlhJOAb
	11VAqa39v07+8LSAuhOHtFY=
X-Google-Smtp-Source: APXvYqzWHlbohLhZKQ+NE9q5kINkbf6gJS/TDaKG0hgajuqo/RPLI28vGO6vQjlEYRznrdsC0XNelQ==
X-Received: by 2002:ac2:4257:: with SMTP id m23mr19651670lfl.6.1568111931632;
        Tue, 10 Sep 2019 03:38:51 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:934e:: with SMTP id m14ls1114143ljh.4.gmail; Tue, 10 Sep
 2019 03:38:51 -0700 (PDT)
X-Received: by 2002:a2e:5d17:: with SMTP id r23mr18829739ljb.229.1568111931208;
        Tue, 10 Sep 2019 03:38:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568111931; cv=none;
        d=google.com; s=arc-20160816;
        b=dsGU2Xh+76BycnjDtjPBcHUgNOesmkov7nkgrdQ0n/n5Gr5pHclgu/HAZfE7/suEwd
         SljcZcZ01YYkg3U7ccgHtSYPPykC6a2qRtyA1FIGmaKm07rN6WY4uy5CwaZnZbVovU4u
         umtRBgQ2OkIE6ilGye+P35xVzvUj1kwKkNkieEqLS+pvAQcBCRzN0oZVipwD4hMgS2vN
         VE5vlYNvxnV/YEYRM5Cud3WZeQMkdK4WgNn5yPJ3qYRQ0kNUcMR3z9vFDAdy4H3d1RQG
         s634zDH9isEFDq6r3y8dZ51yiN7A5HjoosHL7EZCP2u4gwmj1Ci+jqRNmmn0gr+RYZyn
         yEug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=aOBDMFi7PSb0gHyNeqqhWN1bJP3tg81RdsZh4BrKqUw=;
        b=APSHE0lvRDhDRa9Lo6VuzWWW3O8IBn9QceQz4XQxVZKKEX6memih/RiiL8D34HAAOA
         7VhAE7G31VePsM8IG8aiRFX/wzhs4T7s4BoMsJha0G0I1SiMQ+n8GqcrlQjuoa5wHpgK
         HjE2Oz7izdP4TYgE7xn2YRm7jsHtEybFKxgwawgMfUVjd/V+YpTtIA7z0pAZ6gaQ/URT
         IXl0VWyLpNfKCqwSeUw8c1m+ihHkjLVYOkMN1RYVzn8LbbRWxCiZ0lGGJS7sMPW4AGr+
         sEnjNN64kqFREjsuxcr7ghB4cx+QumwjEh2HMAGlH/GFaYhNV2fme7cYVEqYW5k6ICtL
         c4Yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=dZCGaEuJ;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id d3si933809lfq.1.2019.09.10.03.38.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:38:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id h2so9385470ljk.1
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 03:38:51 -0700 (PDT)
X-Received: by 2002:a2e:8012:: with SMTP id j18mr19477348ljg.36.1568111930993;
        Tue, 10 Sep 2019 03:38:50 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id g5sm4005563lfh.2.2019.09.10.03.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2019 03:38:50 -0700 (PDT)
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
Subject: [PATCH bpf-next 11/11] samples: bpf: makefile: add sysroot support
Date: Tue, 10 Sep 2019 13:38:30 +0300
Message-Id: <20190910103830.20794-12-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=dZCGaEuJ;       spf=pass
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

Basically it only enables that was added by previous couple fixes.
For sure, just make tools/include to be included after sysroot
headers.

export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
make samples/bpf/ SYSROOT="path/to/sysroot"

Sysroot contains correct libs installed and its headers ofc.
Useful when working with NFC or virtual machine.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile   |  5 +++++
 samples/bpf/README.rst | 10 ++++++++++
 2 files changed, 15 insertions(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 4edc5232cfc1..68ba78d1dbbe 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -177,6 +177,11 @@ ifeq ($(ARCH), arm)
 CLANG_EXTRA_CFLAGS := $(D_OPTIONS)
 endif
 
+ifdef SYSROOT
+ccflags-y += --sysroot=${SYSROOT}
+PROGS_LDFLAGS := -L${SYSROOT}/usr/lib
+endif
+
 ccflags-y += -I$(objtree)/usr/include
 ccflags-y += -I$(srctree)/tools/lib/bpf/
 ccflags-y += -I$(srctree)/tools/testing/selftests/bpf/
diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
index 5f27e4faca50..786d0ab98e8a 100644
--- a/samples/bpf/README.rst
+++ b/samples/bpf/README.rst
@@ -74,3 +74,13 @@ samples for the cross target.
 export ARCH=arm64
 export CROSS_COMPILE="aarch64-linux-gnu-"
 make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
+
+If need to use environment of target board (headers and libs), the SYSROOT
+also can be set, pointing on FS of target board:
+
+export ARCH=arm64
+export CROSS_COMPILE="aarch64-linux-gnu-"
+make samples/bpf/ SYSROOT=~/some_sdk/linux-devkit/sysroots/aarch64-linux-gnu
+
+Setting LLC and CLANG is not necessarily if it's installed on HOST and have
+in its targets appropriate arch triple (usually it has several arches).
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910103830.20794-12-ivan.khoronzhuk%40linaro.org.
