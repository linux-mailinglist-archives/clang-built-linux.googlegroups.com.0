Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5MV2T3QKGQE5JYXMSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA7820A6D3
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 22:37:10 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id y12sf949605uao.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 13:37:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593117430; cv=pass;
        d=google.com; s=arc-20160816;
        b=KhiyIlYwAxRrhVhCIlZVc/+WzWjNzdlBgeMfnKct9MlTJyhh1GF8Nhnpd2mqGr0HBB
         8v2964GKoaM+GEOGyBf5Dkr8R3aWBJnG09HAlA01czcIYiG7T2WlZOkZsgrgXe5P0gzY
         917Z46njTUHVAA2yQw3mIYt2+eCSexWU+IMpZgzRcXwG9w+By1sS+BZh6JJLwqKCu4N+
         yucE/M/MlBUag9xkWPJKvsSKJPXT8ZsyowutYIoAo/vO2z4Po+bQxcrrD7QgvJ5SA6cH
         NOIrlXLxigvZkJjOWrWFigI0iWG7i8R+yjrgPFVk7Lwa1u7ThSGaV2WorAMOh7lpDK2A
         Hi4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=AXWUbE1Ci4NlA9CMnY95ZEUvJzBKY0nwhc9GCC8tiJc=;
        b=C+O3p+lWZYMltaclHFLnBst82qBq/49ZG99oYLIomj3uu0+Qj27xT9wcvMiXHOPY4K
         q6Qrf90kgPCeGFM91hL+mKAVTu9ddaAyfDeZIapCY1pEgdF5AGFI4UQSsFPdWxlYjq8H
         gnshz1gQjZRHPOH1kpweqkSkcPqeaeth4qJTEyhUWpKdNgmdRW2tH58P21hIVDCMBSPl
         o0/rVb7CjzDlZIUGudrhsudNVpLxE+t/EO/HG3a8koQwfN2c6gCJgtNCl2mMzUVeJmNa
         qcHfmOPi0QbiEJ/M/fMNZxbA+Po+NhcimxgB6M48u4tLwHzvgjks9U576TdadJs4NkWs
         crBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=T+TvmO6f;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AXWUbE1Ci4NlA9CMnY95ZEUvJzBKY0nwhc9GCC8tiJc=;
        b=ruzq8iDmCu6D75LeKjvWEgPVPOQUn1lWwj3Kx4p6pER9Kjehmj3hqNbCPh3jHLT5yb
         +uj7WPTlQ3V3DC4MROzHnbByUD0sq4zl7BXl+T/Jwz2zYaPTQ6kIsLmczvwqvd9b4An0
         9YAqv1+8s3jJ0WuG8Fc/Lg/4jNp9TMKqnI/yapxiuAtsVcH+vBgPkkVH2h2oJtLfCFQ8
         6qrLo4/46QKSUophpzUOSKbbvkWgXx3F+I6ZuIruCvlPqQXv0s72ybf8bD06U/wZruYN
         CKmK+uvRafiuZKGxkrQNpZDCxqVzuMe8YXirWn+0t4pMs5log93X+yZlAbX4gf79lvSR
         ENfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AXWUbE1Ci4NlA9CMnY95ZEUvJzBKY0nwhc9GCC8tiJc=;
        b=oGJvU2SSDavFbRgT4AeEZss1K3ZZY7ofJyXRJD3afdMoHHh+mR2jACpx4yHQqiHFgo
         qEqHwy+xAjSMFFSWQ8Ty6GZBU+Ys/XPIo5tBlbY1qt6h1x4z0difXCXNXimGbG/1ZENI
         baU2UY/iBobd9uFdbYwr8fbJ57oh2Ick6NsWnqbClUKaz+B6HAmcs6VCkDJHmmLL8l2c
         LPbt+nHsD9HvUofBCHlnR+8rT1nquMHz8RFI1qMYAllKu7mmVgg/tCAvZTupKyQOtKBL
         nC+pk8s9Dn5gfp9/NA3JPYPxzq9zJ5Z4L/FwshvnKZwiQ+al6PfrOn/QJic6Zbykqcx+
         yi5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312dIbmu1zyikxjfAytn+I8O8yG9uYOBsS/rYxN6cmBMM/JX7yw
	dHyMwLNDgoJBKrTUITL0kYk=
X-Google-Smtp-Source: ABdhPJy4F/xD4KkSLlIauzAZIrTXizcqfHLiEdjgzzk8xbtUJFhFso85HURnPSWHhfUIkuHKyo3Qiw==
X-Received: by 2002:a1f:9946:: with SMTP id b67mr29016190vke.100.1593117429968;
        Thu, 25 Jun 2020 13:37:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3749:: with SMTP id a9ls473707uae.11.gmail; Thu, 25 Jun
 2020 13:37:09 -0700 (PDT)
X-Received: by 2002:a9f:222a:: with SMTP id 39mr24506157uad.24.1593117429580;
        Thu, 25 Jun 2020 13:37:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593117429; cv=none;
        d=google.com; s=arc-20160816;
        b=qKIPBmz1UDXD1UNwHV5M0jr8GTdK+Q8F5cGAU5ugK4Scj2M/Pbd95TjKhFKQpjMrJ2
         hZiwYbDMKR8c+7DPdWs3HlprZ/7BE/eZpHAjHmPf9DAgDmrduaPftiHmrEbs1Uyby8nx
         zaT1+9qtOmdJLQeNoLMITIiV7vocdEghIbImMJ8WBtBiZyJ0gb2aLHQqohjEitHUV2ge
         oHhGZRvzRkz268DKQAripH6JBadzF2jnYwJIvPgkG1YzBYBR2kxAuFsCPECMF5vl5fb8
         rWQyXhneXTVf2TesWXCQEmouSzv+e8ixdYVhcT9yYNlEKicr2HXhOIShjCfzlfUe/abK
         sKWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=d3GeLK+nXjwF6qopXKxu4ABEIWtd3N9QgHPk+DpZ9DQ=;
        b=0jrAJ8kvD5sLiWRtesbTGH783x3vwv+3haAZ7Qp54a6Aiioxrt3YCO+gfepK3F0/tA
         1VaaqcqN2KahjqUh5IwE/y0pOrbzcw9CNpGaVUE1l3j9ZmZ03AhNd1CorktaNjrFzC3S
         AkJ7F6LbZTWy9xUthhfHgw48LAdoE88nTgZhSeP8XcSl+6Mh+F9pwDAR03PmYkLqm9Y1
         r3AdpoZazTOWXPo+6U8FMVxenSjuO55EujN7L9aGreUL/hy7t4HLrWNx/5fJuyTPeG0f
         E8fY6BeqXus8Cn9tjpCvkw2Pbxl38r8hYtlLT0cZWWh0r/hWq37PoGIylpiOrSVjvvqG
         0nBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=T+TvmO6f;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id e10si161698vkp.4.2020.06.25.13.37.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 13:37:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 207so3395501pfu.3
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 13:37:09 -0700 (PDT)
X-Received: by 2002:a63:fe0a:: with SMTP id p10mr21957815pgh.255.1593117428713;
        Thu, 25 Jun 2020 13:37:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w10sm21295494pgm.70.2020.06.25.13.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 13:37:07 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Prasad Sodagudi <psodagud@codeaurora.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Richard Weinberger <richard@nod.at>,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH drivers/misc v2 0/4] lkdtm: Various clean ups
Date: Thu, 25 Jun 2020 13:37:00 -0700
Message-Id: <20200625203704.317097-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=T+TvmO6f;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Hi Greg,

(Since this was aleady pending, I just spun a v2, resent here.)

Can you please apply these patches to your drivers/misc tree for LKDTM?
It's mostly a collection of fixes and improvements and tweaks to the
selftest integration.

Thanks!

-Kees

v2: - add fix for UML build failures (Randy, Richard)
v1: https://lore.kernel.org/lkml/20200529200347.2464284-1-keescook@chromium.org/

Kees Cook (4):
  lkdtm: Avoid more compiler optimizations for bad writes
  lkdtm/heap: Avoid edge and middle of slabs
  selftests/lkdtm: Reset WARN_ONCE to avoid false negatives
  lkdtm: Make arch-specific tests always available

 drivers/misc/lkdtm/bugs.c               | 49 +++++++++++++------------
 drivers/misc/lkdtm/heap.c               |  9 +++--
 drivers/misc/lkdtm/lkdtm.h              |  2 -
 drivers/misc/lkdtm/perms.c              | 22 +++++++----
 drivers/misc/lkdtm/usercopy.c           |  7 +++-
 tools/testing/selftests/lkdtm/run.sh    |  6 +++
 tools/testing/selftests/lkdtm/tests.txt |  1 +
 7 files changed, 58 insertions(+), 38 deletions(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625203704.317097-1-keescook%40chromium.org.
