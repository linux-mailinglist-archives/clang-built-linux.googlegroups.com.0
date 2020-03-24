Return-Path: <clang-built-linux+bncBAABBKXE5DZQKGQESSQRGOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB181915EB
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 17:15:39 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id z2sf19994656ybj.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:15:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585066538; cv=pass;
        d=google.com; s=arc-20160816;
        b=w28WG8PVc7pG/FfEIvF6HQkFJXaU4sWL0v1kJJxmMr36diV0N/YHaubTMW13vKAlkM
         ADUaNcmwe+6pw5KtfedUS28CCOkBkfeEDlWuQm+gsUa/El17W+qFrg2Mt69xsX5sCyQD
         nKHP79uXNWlwORK0ULeoRpW6t9aqn+yZNbzSJppkJBv6L5vEoLgLIy6Tfs/mtZz00mrq
         xQtR6OYKN2BmoiKfYBpdPFH7Fy2j9qImWBhS3nHAgLFx/vAgB+Eq8c9mIJ5gpgKxQjr6
         jSunIyhE+1E+ofQrnmbIbNTOrUaw4lA48UEnQ2QjMahsEsoizCbe9pzNCdyfB6g3IDqj
         v8+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=WkBzePalA85R9FhljWi8dugyNl2pvWyoJWA/cWBoVaU=;
        b=e8+udQaykkblWNEq4PvWro86FsvzbQ/o1uz07V+j6rW/XXSQu7345WgIYMsIb120nV
         TcauDA8UTssCeRmOWpGvUS56qZGDPbCBZ/Xd3pLj0Qs/tjBMD4HPHeJ+mdUyed03NHVq
         46ShP3oKEvvZ+QGn/mj2ksd7O96r5TAKMGCQUtZk57dxqyM9nCHdr8cRvte7Q2MBWgdH
         Qox9L/k9HTFcUioDG31yeALziFX0VDkdQIeK3qJfYQvxKomoWm8UUEjWxsaWSfbxoqWb
         RWs8FNl0J3UboLrBBY1X+iJk2aI2U7TNfhiiv3LnI5pZMNrnAll+EdK15S0rpS5KNPYU
         NWuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=HXOoZPB4;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WkBzePalA85R9FhljWi8dugyNl2pvWyoJWA/cWBoVaU=;
        b=AFS6mP9hQBqu4I3p/62eimT2ogekO7M6NhPdfBWDJO0EtZ4WQi3kdFChG0PgQJgAHO
         cVasfSViQTkigRlzuukIIcbpJAFCihIvDtdlnFeUQ1ubp0JibN4UPfIbHepJBWD/omld
         Dzx/i6Sv3m8Jbxf0NJ3Chrn2ma5TnAek/EGwYs1+amVKm3Zma5EAfAZ99GuXR9wQHCxn
         cK7cIzb4pjOTp3pytlubnkdUDcTT3933NgLyRINKDG8Cugf+JppcpJPBIzDfVOqbCsfP
         jFpJDzi8RPXRyZDHItuvQ2ll+hoLplqiVPY5Kb9s4SLBs+WrZiEUwVdLZ3ao85t57vZH
         x39A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WkBzePalA85R9FhljWi8dugyNl2pvWyoJWA/cWBoVaU=;
        b=nF5yLGwtr6nfpii4QGtQsrEwEQbNWQLXEpvhp3rx68+SSNVq1yHF4p73Hkd5eywiRZ
         xGmzKJGa0hEWQ03C9qVbapBSYZ1Yo2FH7V9RqvZUIeujI+Ub2f1ybCgaG/WS41OgnUa7
         kLeqKPykfTwGzzUiEgRpujuDiA1fjnDrKtGORCNEuL4BRJsBlvPpTxPdiKJzKVPJAXJS
         l+o2Sa0tsL0IiBvR59MzYWZ0g8gveeb2iB8Ht03WCUkzp52OCqLM7vUQIIibC+2qhzyB
         uA8OaARC4waZfkAPhoBGuCL2cl0KL+99ZqzqmT7/rZOKGK4s1DxvFF+MgFr+GpMlTki7
         LHug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0FLqnsOlf8FQc7+J8ElyRe1c7Q/TTfTUKDOzHVaNs1fWM+5lrz
	qBrJQItqGcJEiJufOPdCj9I=
X-Google-Smtp-Source: ADFU+vuo1xcqxzUfn8BbO51Q6TPAMYu2p0V0p5sNWOTjqeQzh39vgq3qywmdotHbpjdSSNnX2+MhzA==
X-Received: by 2002:a25:7451:: with SMTP id p78mr17385695ybc.26.1585066538285;
        Tue, 24 Mar 2020 09:15:38 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:25d4:: with SMTP id l203ls3732682ybl.3.gmail; Tue, 24
 Mar 2020 09:15:36 -0700 (PDT)
X-Received: by 2002:a25:684:: with SMTP id 126mr45091455ybg.164.1585066536438;
        Tue, 24 Mar 2020 09:15:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585066536; cv=none;
        d=google.com; s=arc-20160816;
        b=xxCnnxNAk4TTC28xDgOAWQWfSJE0kwEe0kO82d9EK6ps0H2lRdoVGE/Mkb3Z9qWPkT
         5hjlaDFhci06vPTKnJZWZEMrUKQFgUhyKCeuTwRcbLZmxwIjrhXZq9LLDyuSQ2yv/fTm
         gIIvfgeRZGskr61IA0ldaA+ogkw726duclli7vsRUs7FTYsufJO7xXKCHXPVul/2UH2L
         xbSTurD0hB6s02ydEhcPg3m/wHG8nkoA0aM3wnnbTLdSHVTwHRSwlZioV9esDwQmiQaP
         ESh4dJSa0JP5sdgSh/7+oXtllpN1W2TlURy4mQ33ejAj/GJTTpWE1Sd6g3MzJ7AyfHV+
         9vAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=iERwpFIUsMeWrqbzCfka8i/KOvDD+eMi426uZLpMpHs=;
        b=oTWMPlmTS+N3Bab+gh4z7ZFOOMvgPokF1Ay6ueu+0CDFCZxYLx3aDZQVpsJHkhc0q4
         fAS8jpjAZFjpdYL3eoXG8wuzKHDWmlw6Wby670yMEttvonz6H6D/Go1a2PDdGVwmbmov
         CqJXSSn1/GstjRLtk+iv9oG0TRp65PsSZGGTGzAn/wNvtQjXTtZdJlL0Fw3gekqpSFE5
         x969B1ovwOfOCsh1lverlMp6HLu8vMEbIyfl0ljiXY7qCBPqbr/3z3eCWN7bzDYpSM6X
         CvMxVxpwwPjfiLlnyTMRFdnzikV+1d4ysVbaZeORsKAIOuOglTjVf7qmE8Vro9n6qr3Q
         J7UQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=HXOoZPB4;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id y140si968026ybe.1.2020.03.24.09.15.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 09:15:35 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 02OGFI4f014851;
	Wed, 25 Mar 2020 01:15:19 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 02OGFI4f014851
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux@googlegroups.com
Subject: [PATCH] kbuild: remove AS variable
Date: Wed, 25 Mar 2020 01:15:07 +0900
Message-Id: <20200324161507.7414-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=HXOoZPB4;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

As commit 5ef872636ca7 ("kbuild: get rid of misleading $(AS) from
documents") noted, we rarely use $(AS) in the kernel build.

Now that the only/last user of $(AS) in drivers/net/wan/Makefile was
converted to $(CC), $(AS) is no longer used in the build process.

You can still pass in AS=clang, which is just a switch to turn on
the LLVM integrated assembler.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 16d8271192d1..339e8c51a10b 100644
--- a/Makefile
+++ b/Makefile
@@ -405,7 +405,6 @@ KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
 KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
 
 # Make variables (CC, etc...)
-AS		= $(CROSS_COMPILE)as
 LD		= $(CROSS_COMPILE)ld
 CC		= $(CROSS_COMPILE)gcc
 CPP		= $(CC) -E
@@ -472,7 +471,7 @@ KBUILD_LDFLAGS :=
 GCC_PLUGINS_CFLAGS :=
 CLANG_FLAGS :=
 
-export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
+export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
 export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX YACC AWK INSTALLKERNEL
 export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
 export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324161507.7414-1-masahiroy%40kernel.org.
