Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB3ESZOCAMGQEZV73FRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B95E3740A8
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 18:35:57 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id y10-20020a05622a004ab029019d4ad3437csf1439831qtw.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 09:35:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620232556; cv=pass;
        d=google.com; s=arc-20160816;
        b=fzf6Cu1oEgaecruJhY+E/fD5JrQWPBumZ0L+0rmepjYJnTiGfWx38X8Z4HnMEBwhZn
         P+Sq51XFwd2n7x7LIu4FdV82pHNLZXsHb/ctGm152d0Ds+wjLzBJ2EhSGggFz/GZxt42
         vn5D+LvW7x2jrO6Hm0XsoL6KyCTKMURtlHu22rJ1IU599FXCPxSts3lsKTWdKjT5LCxn
         dF5CPiaKOUd/UlLcN1jNO+c0Q3uF3k4NY2gI4lIlGmgUkxqQTadUc9VpuJch8vd8INwo
         k3L+atzwQbXHrUe2188ZDErPyctgMTWXIiuIkwQ2WuJvTiNXlldwT4WE8v1n6503iebs
         idhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=LpROv27PY6PRmVZzIl6V3VB0ZAqmSdY4m9mxQlPvAWk=;
        b=Mg2MXsazz6ZdllGvTVlsJZGWtCrml0Szryuju9voCz8wSHk/Fu3r0AweEvyddcxeGz
         TrOKeds0qzWVhZh2PDEHGOwwthzyZDODz2FsGCfhLggFhCHahpeMNl93xNRVj+aMcox3
         KJskIz6LlLjqc3hl5zpiXPSeBv2eZcZRUdLKdU9//KHQcQrMUji5GnXzdr1xd5ERxhQS
         07zkC8xzqGgHmjo5RRT/EJKbkeEOzcWW0ODBt2bHstk6mJIosss0JJXEHiQUEOt1Uw1V
         KYVnhpEcRj6TzdL8+Vw6Esc/RYLrDMHDYEHppadExqE4M0OEiE9Yh5n+z+KyqxA5bFIl
         y0KA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hOzbbJgF;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LpROv27PY6PRmVZzIl6V3VB0ZAqmSdY4m9mxQlPvAWk=;
        b=qmEtRvNQ7fHvC7xvqxdc75UdOzcZuAwE1iw1xVN58rFkOC8w+nRX+iQZ+6eoJ6FXSK
         cnPPpLIAwiE5JarpPu1lmlE31ge55n3RPY1GCLcttLpCieFkQMU8rB3gS+4NK9c/D3kz
         oMVfhDC/rUX50TxC2PwiIegtYilm70P6FuU/bTmGQX7kyR+FNIn23XXI5z4TUaC7ZR0v
         BM1HWYBp2UkeqmuX1gR9VRuHEUQV6LbEemiemI4itrWyCgSNUsRIab2AKgo69TV2HrlM
         SSU7higuzAFRNkuJg+tpi9rCV+p8FSyRGg3eDYUY/cjHldpmyDuyRiGnBiEu9DstyYHr
         sbyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LpROv27PY6PRmVZzIl6V3VB0ZAqmSdY4m9mxQlPvAWk=;
        b=YH4SkOsT6YDFz7yVyzZYBJmtuPUR79A353Zym0FwpEDGE5ojNj6vbIfECcMnynExKb
         XGwoxITHlygTwoO5oRErpX5NTlqQOx7aQFz/2hGAqKuEWxNAh6xE3bijlaqWdPSrjbUd
         1Fjn2mn4TCBQYCP39ZmJgK/ZVVaYtjmCj5NmLnSSYuYITdYvKD/lAq57DlhYwZRSsaDW
         fJV9Yf+rPCLVYddCsSQh+M+d+J6EPJat6Z0HsjmwAoTTDZBeOcfbdh04IWxBTyoPE2WN
         ELvIuCfkUVHLFdT5dm78VpwFEWxB/SqWhehXai63fudZ2ykTAVNmMi0Kvj4n+DaZV23l
         tMtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zhC4JXlSLht1Vk+CrbeOZ73g6bUlF7pNipshH0HpR9KE0WOfP
	sWGNIiXZpdidid4j7fOvCpI=
X-Google-Smtp-Source: ABdhPJwkmeD3GOdKCDUAx76Pamj5W6pSsa7UBJ+ImMta2FUo2H9LAjJoeyRkb0xMmYx5MjK1gtlJ8g==
X-Received: by 2002:a05:620a:2114:: with SMTP id l20mr7790175qkl.51.1620232556364;
        Wed, 05 May 2021 09:35:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:51c6:: with SMTP id d6ls9356414qtn.6.gmail; Wed, 05 May
 2021 09:35:56 -0700 (PDT)
X-Received: by 2002:ac8:7dc1:: with SMTP id c1mr12590126qte.327.1620232555870;
        Wed, 05 May 2021 09:35:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620232555; cv=none;
        d=google.com; s=arc-20160816;
        b=fKocpQWcjbFDR5/L/HZ1o5oztCdjkh2dyiEmo4i8e4BnczAIQGaGSV/dI+V6BSp6Oo
         VSv3WPvFzthj+v+rIuNYa4kJYhv5xBFWd/pP9fV72KzY6Wfl02lZ+SOsGPTg1QbLXxQ4
         YLawnBtmlw8b/x/FUuUzbBMd1zW5zyiATmZuw1Np7Mf+WzSsokA6Fb4HFuZ5u5cb1JOE
         MJhgFiJU3JQE4AohDgVq5mfYK1PWkEpHmJaZYz5DoSnDll+WHVp2eFKgdYTJL4sicKPU
         m0+CbkrvsO1/hYglZ6+GSAkLtcTyWC3uP4kcGzhNwjpSrjKd/1+Zyfz4vM1SZfN7qjhT
         B1Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XVALSjjb8paAUeOpUlTAKOs3lfsmHmoPL20R+TyQ2EA=;
        b=A/ozTWNItiW6uqYKhN7lY6twuRuK1DbdIreN9ZDuMwVkVahrd9W4eCRmq9F2umavDj
         GnS1l1oPU0FIKutq3iaxe/T5Jul5XVsEXBDjYlZIFmaxO8vvu72kOwPUcc6cfbbNtjLc
         tNmDukaIZJQgzsTtSrJ6vEAgU7NOe5LT5CDHv52fqEOXz+gMA1u+bRrvgEzNZipE1eJW
         5BwistvBd78wPB8fvXWhZh2WI96ZQp4BwnRAEDczTNnQ/u5TCAtjgr+UFxZ17w3WGW0l
         cd9SmvN7tzXIGXpP9m81GEzoD2LOLaFHyMsQF35C4l7TzMyJMmhjc3yvD6IO8eEw0jZ+
         SJJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hOzbbJgF;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k15si361630qtu.0.2021.05.05.09.35.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 09:35:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 880A361436;
	Wed,  5 May 2021 16:35:53 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yonghong Song <yhs@fb.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andrii Nakryiko <andrii@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-kselftest@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.11 069/104] selftests: Set CC to clang in lib.mk if LLVM is set
Date: Wed,  5 May 2021 12:33:38 -0400
Message-Id: <20210505163413.3461611-69-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210505163413.3461611-1-sashal@kernel.org>
References: <20210505163413.3461611-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hOzbbJgF;       spf=pass
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

From: Yonghong Song <yhs@fb.com>

[ Upstream commit 26e6dd1072763cd5696b75994c03982dde952ad9 ]

selftests/bpf/Makefile includes lib.mk. With the following command
  make -j60 LLVM=1 LLVM_IAS=1  <=== compile kernel
  make -j60 -C tools/testing/selftests/bpf LLVM=1 LLVM_IAS=1 V=1
some files are still compiled with gcc. This patch
fixed lib.mk issue which sets CC to gcc in all cases.

Signed-off-by: Yonghong Song <yhs@fb.com>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Acked-by: Andrii Nakryiko <andrii@kernel.org>
Link: https://lore.kernel.org/bpf/20210413153413.3027426-1-yhs@fb.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/testing/selftests/lib.mk | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/testing/selftests/lib.mk b/tools/testing/selftests/lib.mk
index a5ce26d548e4..9a41d8bb9ff1 100644
--- a/tools/testing/selftests/lib.mk
+++ b/tools/testing/selftests/lib.mk
@@ -1,6 +1,10 @@
 # This mimics the top-level Makefile. We do it explicitly here so that this
 # Makefile can operate with or without the kbuild infrastructure.
+ifneq ($(LLVM),)
+CC := clang
+else
 CC := $(CROSS_COMPILE)gcc
+endif
 
 ifeq (0,$(MAKELEVEL))
     ifeq ($(OUTPUT),)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210505163413.3461611-69-sashal%40kernel.org.
