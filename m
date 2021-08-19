Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB7F662EAMGQE5I44JCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBAF3F0EFF
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 02:02:05 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id d23-20020a056602281700b005b5b34670c7sf2199293ioe.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:02:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629331324; cv=pass;
        d=google.com; s=arc-20160816;
        b=dxklQzL9NExMoquBivAnwwkaHye798fVSepm1RavR2wMZJbhbQhN95jrMgufvDs/93
         5zN6jHs/sdrUGoX/t7vtZ6xP46pV3dOjCMykxqVLTHjJi36z9cjym+klC3Ld0zuBAsei
         d69C90DguFsD18uXk9uQCmootXsJ0ZFOQr823C2J+OdVsj+AYskvr9mn148Ol7/HdsjW
         +5bVqvXyNjQ5sO73DVLS4nD2KGwq8o79ZHiupTpKBDHcC3khslYkJZ5Utp4WK3urtJWr
         eibCypLfVLHSPyz5an6j0sKsrPldsr8E26fHUrSl6wlnfbBXAKiOP5Z/PWTrcfGn5ID+
         RfWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=ZukjHZJ9asaniKAf2C58fFwCTGvgJbECin1UmXQF6yg=;
        b=pHNu5m8KNTVVS5sn8AZBiVtPki8RHdeq/6CNxma4JKJgu+bl1yYjlgnAh2pxNe1oF7
         p05L0TKbr7ZD7mVQ1sRlFEBwzfz2oennxzT3PwbhHZhb35AXeaj4vLscJiKfgo2s0u5Y
         HgbbWDIdyRjs6XIsCp7aBSquhZ2HGWgLxsGn/I2vApSpTgVlm/uJhSm6vG0LE01SdevR
         8zdq1dHEYEkFWmcysopW26pFku18JHelHJRRReNSTbLy//pl6kbU+lQq9lxguVJrmxdv
         2qYLha3v8A0kHlisN04clYqoAl9zpAqLEJNChxgFDElsUZ+PwV7NZwxfW3i2c0byv8QG
         vlPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ZauWzjVB;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZukjHZJ9asaniKAf2C58fFwCTGvgJbECin1UmXQF6yg=;
        b=HNilFiC8PlXrUaX7svgyI49SOP32Yjtj7v2qIJHvV9cVlgk4B2EgZEKLlAAait5GRU
         i7Wm8+BdY2s+oPXao32NLPUG6q5oPZxCcUGJGUJZ5jSjjlpG/CxxXA1zaHw3NcqupxvF
         4MFvsHUrZZWjAxihqeLL5K3wsw0CnayDlp/FHRPE6o0yEx1I2FBI5AZrFSloUL1Dhz5b
         /RrKh4MqYgcCgu2ogaaywU4IvVSziyg+YDwOfMKTtXO0RREm+Ohzc0CFKT7vcCqA4fei
         Ongrz8tE8Fu2HghyHX7vC9oQZPiAfoabXyN56O2eNA5eJbHTG0lcqW/jgtD2KOGSII3U
         S0/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZukjHZJ9asaniKAf2C58fFwCTGvgJbECin1UmXQF6yg=;
        b=kAWvvCZQOmapckXlyHLfrHC+/88zsIwwz95MMoTRngGVki8IUrhMSON8vVN7/66uC8
         /UpblRjT7VoBtWcTn2ltA7q2vZ2jzxBxq57szv+CubjYxRI5NNh6BJKlXZOhBys6iMz+
         dFyR3ye27/BBXH1vOkIZcpRc7/9xvdiBa68sgZSclhoxdLRTTiP+qDgO5OYIBImb5VrL
         ia4wrDw6MgAqA/sf9ioDmU/fES4FjhVlzfESzWrlcSKo7tP8nxyBMTtbAmck2j3ku2wH
         870YQGNAqpc67mKaaVfyWcS+sN0rvuymd0+Yfkog0bO64p9GfHrkqY9pt3/jUoMmFGmk
         c+Zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vbigX9JBoCzAdEzIl8BAK1Nrf3E2QAEM63Ctg8FmZzBAR95/m
	VI1FSxqhuOA/I8D3HiEovic=
X-Google-Smtp-Source: ABdhPJz2nU5MBVes+I6TdAXcvWvrubwzV6idXagxMymHd52cxR3WjI7g71N0y6YN3/lbfPR3YJG2Dg==
X-Received: by 2002:a05:6638:3465:: with SMTP id q37mr10307674jav.113.1629331324102;
        Wed, 18 Aug 2021 17:02:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:fa18:: with SMTP id p24ls608083ioh.9.gmail; Wed, 18 Aug
 2021 17:02:03 -0700 (PDT)
X-Received: by 2002:a5e:9819:: with SMTP id s25mr9229624ioj.63.1629331323683;
        Wed, 18 Aug 2021 17:02:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629331323; cv=none;
        d=google.com; s=arc-20160816;
        b=IrMQrIcLdQghw+ezHt27ygYiax2t+JYUjspChe5poXO8KEkCM4NVSyLbPYonFZW4+N
         wo8gUHiZH4KxbUEzX3cHik5nXmkGoHkGpPt0zqTpIVnoi+IuoL5ZpUcvDDAVXo7tCkiC
         /dBD2MxHGaLah7SHiaXF5Zclex6iREmD9SqT9kb6080egpZso4DuwVIy7sdyRRDtEruF
         l4oOgkq0mIoxBmFPjx03TAbrO0dkaO6LCI/fajv9AHtfCcZvpndHpvFqopTzdSmmKSoR
         54gAl5cqQewljRzlr5a/NQyB7HEC5Guzhoi8XJ2vVWrdJcv951ZrWzUNp8xr+N/f1aWV
         il6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=dDA48cE2QbNp7aCgzfGh6ePv10lHArBqOHlfXE7pros=;
        b=ui9FBcgtADfviR0DtObJJ7kfPgIWNE/jC6BThrm6BecC2y8U26CLaGmy7XLkd4Fd+Z
         ZyKR054xM9gbijF1EDLU5oU5hgFAwupAwYY74BnyfldcaS6Da+9uuOZ4+OTode62TvrS
         8tFg5zIFs+U+1n4ih4lif5Hi4N3veOIfWOFgZ1GBrEPZOoWBgVcI45p7LmTZq5giMqPq
         x2vlIf0BoIcfkOi9cx5UMVqICYVuHHWBLUbC3SKzM6t4XtCBe6KjDidk9q4K5wsU4asA
         aJcAa/YjDSMNRrPvmqE5zA+FphvV7LaAm6uqBGiWGAlT7SvrdVPC3SazoGzQ+4urmUgC
         wfMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ZauWzjVB;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id b12si133719ile.1.2021.08.18.17.02.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 17:02:03 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 17J01JAq002135;
	Thu, 19 Aug 2021 09:01:19 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 17J01JAq002135
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Pitre <nico@fluxnic.net>, clang-built-linux@googlegroups.com
Subject: [PATCH v2] kbuild: Fix 'no symbols' warning when CONFIG_TRIM_UNUSD_KSYMS=y
Date: Thu, 19 Aug 2021 09:01:14 +0900
Message-Id: <20210819000114.634042-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ZauWzjVB;       spf=softfail
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

When CONFIG_TRIM_UNUSED_KSYMS is enabled, I see some warnings like this:

  nm: arch/x86/entry/vdso/vdso32/note.o: no symbols

$NM (both GNU nm and llvm-nm) warns when no symbol is found in the
object. Suppress the stderr.

Fangrui Song mentioned binutils>=2.37 `nm -q` can be used to suppress
"no symbols" [1], and llvm-nm>=13.0.0 supports -q as well.

We cannot use it for now, but note it as a TODO.

[1]: https://sourceware.org/bugzilla/show_bug.cgi?id=27408

Fixes: bbda5ec671d3 ("kbuild: simplify dependency generation for CONFIG_TRIM_UNUSED_KSYMS")
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
---

Changes in v2:
  - Add TODO
  - Fix 'stdout' to 'stderr' in the comment

 scripts/gen_ksymdeps.sh | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/scripts/gen_ksymdeps.sh b/scripts/gen_ksymdeps.sh
index 1324986e1362..725e8c9c1b53 100755
--- a/scripts/gen_ksymdeps.sh
+++ b/scripts/gen_ksymdeps.sh
@@ -4,7 +4,13 @@
 set -e
 
 # List of exported symbols
-ksyms=$($NM $1 | sed -n 's/.*__ksym_marker_\(.*\)/\1/p' | tr A-Z a-z)
+#
+# If the object has no symbol, $NM warns 'no symbols'.
+# Suppress the stderr.
+# TODO:
+#   Use -q instead of 2>/dev/null when we upgrade the minimum version of
+#   binutils to 2.37, llvm to 13.0.0.
+ksyms=$($NM $1 2>/dev/null | sed -n 's/.*__ksym_marker_\(.*\)/\1/p' | tr A-Z a-z)
 
 if [ -z "$ksyms" ]; then
 	exit 0
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210819000114.634042-1-masahiroy%40kernel.org.
