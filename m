Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBBNN5GAAMGQEQYX3QOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 928EA30D459
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 08:53:43 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id 8sf16304688pgn.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 23:53:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612338822; cv=pass;
        d=google.com; s=arc-20160816;
        b=YeQTf2K6BWQjqQrj/kgei5gHb5apQBvdm2fs0XPRTXgiG4VRlmGicOnMv5xoClMa2Y
         h/OEZQxUXrwUM/r7awQOvVMN6zeJtrc0tGdrAY3ZsAmrjFYBRsV6LkAa/Qei9Yj0egJz
         +a2tp3RZENXmqbNBQrHJ68DlCaLZqLIL2MFjHOTvPMTNQUpDDHmds/ROnXeLmrl4PsQ3
         6qZ22cdqA1RCouc2arqXxvk9My+7ddGWDyX3fZgY7+jxIYZtSTqC6uUSUnrzkXjnJp46
         so+9/wAmDplrqx7/pTekPOOv7bIBmg+9LBuVEAc6TtdAQGxH/EmLUOKtyFrQYVFZbyg0
         9+pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=6V7QsoBSkgYrjEtPt+eZtHsKYtvFD8Q7JbRZXiwni5I=;
        b=maRfTdZy3xat/ZhhKgFtQuIv46K3lqiABT/RlwKMJEgC8CFpmUOQNoOrc4IZuJ+V2Z
         2BPL/rMok8kZxDet3iQO8JB7OmyNvEjRBBptJpckCAViecHIz6/yhxWMDzmGQdelKVvz
         ipY1ac5h7zB7rT/haDf7seH/3DZQC5vx4W9vKlYC9SsXk+XUGZLqVRcY3ff0Fk6hoAte
         G/12jzDz4jPtd0/HpU3pS10WlnORQKxBwLzMWITqENw0LC+/p0gQzO19xU31PdiyZSvl
         PexKzn4tpBIOYMnziYTkNfVLUe0s6X5AE1OM4mxvBwt+j3/eeAfYCbaSKzl5ZjUHbcyN
         LlZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=RJoPgfyp;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6V7QsoBSkgYrjEtPt+eZtHsKYtvFD8Q7JbRZXiwni5I=;
        b=hOZ+D9fFMMTZy3n5IOYa7LgX6Z2dxr8oQJ4QygEJjT2qQOWjnKq+7QcBkVcIavrKsF
         xIE4+dxSM/AxcQwJlY9scAX0ip2OjgmdjNIf87qv1rvCvrL/f9XTuBoOp8SssQZHru3v
         u9+W341i6VbiyQo7zelaSXUmT3MjHtLfnpu1A6R/4jJLKKJH5TSmxUaU/T7j4oP0LjXF
         XWyW7ZFWgC7PqJVAdvNI4s6aFhnNuypmouw0YaN+ULN5v8Er6yTn45XldXk6k1FEwngb
         lt76lj+WK2N5ewNFhLM94Ao6HMVF5EnsFFK1i4RxkwwlDm2/yKI+NvsPGjhejPS4MPTV
         yr1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6V7QsoBSkgYrjEtPt+eZtHsKYtvFD8Q7JbRZXiwni5I=;
        b=tzfSbXA/IFiLXNM3UtYJ9/eBDkxYDGb1QDGFhNG6BvX3fScDPVAba70WEF5Prl0J3X
         ySwhb76a3B16lgdRYopLimMMOb7lgssUiDyQEf/A3nH11MkEPAoa5PA3vyyJd9A78MFm
         dEvMUDzyTov6iJhyDVlYG/lVYlMdgN9Ahb/Gs9kuXkkE0O/Rpz6pXoQY6MBxvjPM3MYr
         hpHzSypq6StpiKJFR+JK6DPdZ5Ai71SWGXBXG25nR1I8fk5iOvKvhdko+IFLueEcqv8F
         Jn9vlljvRfMQurlwhDtaZxw+Iwm7afl35kMEpnh4CXjI93trv+suxO39QkdSB5G/CVCi
         IELQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/CCXXYD0I1dBQYvK2c4SOpnO+7NLCnW+P7TYFuf3IcaClZM7C
	Sedf6GsEyVFYraWRGSxSwEg=
X-Google-Smtp-Source: ABdhPJxh/d03IoFndX1U9N892YgbQCQLljceU9ecFIDasWdd82jMlL5MQz3HYDow2aVtjGfN2LSMug==
X-Received: by 2002:a17:90b:11c9:: with SMTP id gv9mr1999969pjb.196.1612338821903;
        Tue, 02 Feb 2021 23:53:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96f8:: with SMTP id i24ls592575pfq.9.gmail; Tue, 02 Feb
 2021 23:53:41 -0800 (PST)
X-Received: by 2002:a63:5b4f:: with SMTP id l15mr2319528pgm.339.1612338821292;
        Tue, 02 Feb 2021 23:53:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612338821; cv=none;
        d=google.com; s=arc-20160816;
        b=DUJmXfOxlyfNTyFqqWb8m0v6W5zYTuE2RougACQWCI/53MjTzizr3GOrWHQSN8SwWE
         E1XhNtbvnGPLJs9yR/ONwmhPwLy0t4jaTEwuBd3ga1/j13drlmUP+lIxvvTIWUmDCT/B
         QNFNWMPcL1CmxuLJGYNAqZ98wUZJ4Bx0L6hgO8qxjJ4TtyqmhIfgixFfgo08TTG58V/p
         sVkFWD+bCrS4aSxakeLRIlfQn5eG1nVhGS5VCnf3p4TQLGtrVXcDfdvbUoDtZRzdVG2h
         7XMS9gbSWsMgT07yHCitLAPECWhQxyjeoVMvhya0aNzmzW07L39hU+EWd64SoCFrWNoU
         QpSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=BHikcps5Egh9U8s8X6kTCoeloxrM5VMBhf3jGdV23oU=;
        b=i7FKaEJiPH+JH9DetYlvzyfRBaT8Z/uO+j5sQigczGsLbaAhWwF81Tq5+C8B3dqtJQ
         l+GY1tyWY8yfx0M9TfYw/YmiNV3EbKxAabtdloaJ6LnV6Yl3pQra5psD05wOzjikiha/
         vd2nx/+iZFT7Syf652ChTZ8NaWu9ECXO95XtxU/n/YZt5mDgxJPqj6NJjN0B5iy42Kar
         1Efdk815rLr+BGs28M5km09mpRGD4iHyQmSi00ealWHJvom4cm8ERSzIXnnQkTffqG+D
         3/jwJdhrgCggQJyZSu0j+Oo2WSkwBxiMlsY9zh6kSoRJsBdO9THiYYyO2uYoIq25rLH6
         LtnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=RJoPgfyp;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id l8si25995plg.2.2021.02.02.23.53.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Feb 2021 23:53:41 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from grover.flets-west.jp (softbank126026094251.bbtec.net [126.26.94.251]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 1137qgIr002018;
	Wed, 3 Feb 2021 16:52:42 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 1137qgIr002018
X-Nifty-SrcIP: [126.26.94.251]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Andi Kleen <andi@firstfloor.org>, Ian Rogers <irogers@google.com>,
        Mark Wielaard <mark@klomp.org>, Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <natechancellor@gmail.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH] kbuild: fix duplicated flags in DEBUG_CFLAGS
Date: Wed,  3 Feb 2021 16:52:39 +0900
Message-Id: <20210203075239.5505-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=RJoPgfyp;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Sedat Dilek noticed duplicated debug flags passed when building C
files with CONFIG_DEBUG_INFO.

I do not know much about his build environment, but yes, Kbuild
recurses to the top Makefile with some build targets. For example,
'make CC=clang bindeb-pkg' reproduces the issue.

With commit 121c5d08d53c ("kbuild: Only add -fno-var-tracking-assignments
for old GCC versions") applied, DEBUG_CFLAGS is now reset only when
CONFIG_CC_IS_GCC=y.

Fix it to reset DEBUG_CFLAGS also when using Clang.

Fixes: 121c5d08d53c ("kbuild: Only add -fno-var-tracking-assignments for old GCC versions")
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 3d3f67b98ca2..769a38ee81b9 100644
--- a/Makefile
+++ b/Makefile
@@ -811,10 +811,12 @@ KBUILD_CFLAGS	+= -ftrivial-auto-var-init=zero
 KBUILD_CFLAGS	+= -enable-trivial-auto-var-init-zero-knowing-it-will-be-removed-from-clang
 endif
 
+DEBUG_CFLAGS	:=
+
 # Workaround for GCC versions < 5.0
 # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=61801
 ifdef CONFIG_CC_IS_GCC
-DEBUG_CFLAGS	:= $(call cc-ifversion, -lt, 0500, $(call cc-option, -fno-var-tracking-assignments))
+DEBUG_CFLAGS	+= $(call cc-ifversion, -lt, 0500, $(call cc-option, -fno-var-tracking-assignments))
 endif
 
 ifdef CONFIG_DEBUG_INFO
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210203075239.5505-1-masahiroy%40kernel.org.
