Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBMVJ4GEAMGQEEMBRMGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7346E3EC601
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 01:41:39 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id f10-20020a6b620a0000b02904e5ab8bdc6csf7252656iog.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 16:41:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628984498; cv=pass;
        d=google.com; s=arc-20160816;
        b=RdUuZkNGJIlvfAU6+y5dybOYuf53RRk8x36RsrR3XrDKJWDfoUdYqL1BvrQILcCKTC
         yhMnZQOOYPouU5Vab6fe3SHl+a3M8IupTsa7MAKyvld6m7U0B5mT9vJ/UUIgXdxyGJMZ
         IBZkwXg1bXlIAY3JdfGRlGsbFV0waOpPvKLjofbxvWjLHcILJHGvcOxmHO4nIKEZX+wY
         LZ1EMGZ7twqPHuWIJM9WFHcisrm97gpbBzNHp8Zl7HbSSXejLXoNV8HjktelKmH61p+F
         ZZ7DO4L1M9wFjJsMm2KM31vl781yat0dXWAuxz+Olqsv9dspnxSCRJvHvYHAg72jzfR0
         4Idg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=sopSWGgk2uG+6PP0OXDUIX6p3LmcqEJibFb938MCIcA=;
        b=Ul90jUDQZNSGY8FgoitkSdTb+vf7C/Tz33DEAn0Ij7yTeNniHSeaIplx7K107sOcPE
         +p5w9ub+NV5M173spfLe+oFeDpwPD2swo2zaNX24x8dmw4g3jWMYWTN5FPPA0R8/kS/u
         21zvd/Mb1oYCyf44PMYtqs4006jseUvtAczS50cm/S1dMYcdOdTw+4TIeO3G1y1/X5uZ
         VPxM31aSXjmwGz2Id8NS1HYqvoMOLVV51QIzG+tUaIKCzXyCrZKkak520AyELptReEqD
         X9wfeTPLx9Atf9ryOIypiVNVSYlXnSKbkKo0K+ur79V73Is88EpyJFy9DRSpIXGY5zgE
         dePA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=wiY5maaW;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sopSWGgk2uG+6PP0OXDUIX6p3LmcqEJibFb938MCIcA=;
        b=CbDM9xUq8xfE6rKQ4znFg9RVRDCG2zzfNgLa82CVyCbvhbJsTYHY0I9o1Xm6yBd59v
         NNsqWQHS3g+RDalp+Elw8BVmmfThH42CLAYQsPJYsRNGrtw7u1lXKEZYgnY+UkRzFn9H
         63HPlxCXKVSlwgJKgRrjzbaPWjynMMge9VrNcf+fpnezWRcKzjfezX7tI/352JiF3jCT
         O+KX8lNyDp9+sEbfuyjuaZgTmXvHzjFBAfQo+S3NLHVUppgtdOjluAbaQi6tVV5/Q/7o
         8xKShPZaV/jOdjFpHchJ4IwiF3TIafFqUD3AsGiDqViF5Dm7p/DEPhrH/9RpTaeFgN5h
         +8wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sopSWGgk2uG+6PP0OXDUIX6p3LmcqEJibFb938MCIcA=;
        b=eigF17D3gQqmLhNdsq6njFI61f9aS+lDhmse8MckJ8H9yDiQeF9KUKGeY60J7ZU0ZB
         8pOd2b6Da+hdvyj0bmaL3PK05YfPEcd+lWB5a1Kyfh9Y0wxoI1v88vOtIApmh9TBwDJE
         POl0wFugOxbo6SzQGiJMv7tIbqGpi+eOIWZrXveN0GUlhxNMnTM07CPO/RlD5RcAIbeb
         f4yn92ysW7uPA+aV+Eh6L6wZ7x7WyawfdW2BONhK/Oq+wuKQeM8BU6B5LZvqNc15rBhj
         7FjfOn56q4bSTq6y7Zp19ELTgJQfKtUDsrBChWlq/eZ5Ge9LwKCcnQvGAVfxG85GVJLh
         jF6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533obhqPk1z/2eFIqjE/F0dYRYSaqjPPuniR+a9X44gIvBuezr1W
	2p3LT2cv5ci3vc484WS0VWw=
X-Google-Smtp-Source: ABdhPJwGzNAyDURaqIOphSSrMiJo7SU2buGEpCMekYmjc9wza5Z0SexKBsnambHkek4gGucf67nBLg==
X-Received: by 2002:a5d:8e11:: with SMTP id e17mr7249665iod.138.1628984498536;
        Sat, 14 Aug 2021 16:41:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:16c7:: with SMTP id 7ls981232ilx.10.gmail; Sat, 14
 Aug 2021 16:41:38 -0700 (PDT)
X-Received: by 2002:a05:6e02:1288:: with SMTP id y8mr6539871ilq.206.1628984498141;
        Sat, 14 Aug 2021 16:41:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628984498; cv=none;
        d=google.com; s=arc-20160816;
        b=ApKcIReQUDPdcoXcUQKniqiZLN6mutH7YWbsWlT3JnRebL7UYj9LxTJGt1qBV6SG21
         x1rfLjjV3QI46Nb+3kl5gXkEttHq4tyrzV9P8ZdlT4ife1wVcJ6dZRMrrhnhgD6UYLm8
         ppUv7OKefwnkpWcYL6ceas6O2fxKCzHSsy1dyBzvYvnSfdsjE8LfeC0Pz24ZqCixld7h
         OpYdI1Hry8RDPOPLrdxRCKgnmKDHpIPcl+EC9oc4CYXDHxkvzfRZlrnzpaegSJ/PFcDq
         BhRRUJmSTBHamG/oco0iG2E3v7bNgqN61XnTma+EIHeg8ZfPYSqRk50MPsJZE+pN49iM
         J5yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=p77MqZ/bQE0NRNaOYH8SC4jbtPVunqpmSihwUeNOgTs=;
        b=OKCzlmHj9V6RY1ZoKuVArCjc2W0w6Xgha8QROvh++sTm9gV3xl0J20hvvVrXbhqt20
         2iqN+AOcfsk5rds049rGnh4rVHjgNqc1yePSue42SKfv0wRagBEr+hgob9j2uImzD33b
         1aCI6MkgS9YBvu1iuhw7TYP9klxkKkynfq+lAoXdOK2gnkeOgDnksNtG1ldBnAMHAym6
         TtxOB2/4KvRzOOsa3YzZE6Y5hLVYxGol1p4/V2st44oII1fsy4XJcqj7tAW09Jp7K4Bh
         Fd3l8ngOINow5uOqoTWxqyc2eE21ih0DQ31aZbYwqYWQzu56LLwgHBRvmgyJfMDMYXpO
         y4ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=wiY5maaW;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id e16si326521ilm.3.2021.08.14.16.41.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Aug 2021 16:41:38 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 17ENf7AF008297;
	Sun, 15 Aug 2021 08:41:07 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 17ENf7AF008297
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Pitre <nico@fluxnic.net>, clang-built-linux@googlegroups.com
Subject: [PATCH] kbuild: Fix 'no symbols' warning when CONFIG_TRIM_UNUSD_KSYMS=y
Date: Sun, 15 Aug 2021 08:41:02 +0900
Message-Id: <20210814234102.2315551-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=wiY5maaW;       spf=softfail
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

When CONFIG_TRIM_UNUSED_KSYMS is enabled, I see some warnings like this:

  nm: arch/x86/entry/vdso/vdso32/note.o: no symbols

$NM (both GNU nm and llvm-nm) warns when no symbol is found in the
object. Suppress the stderr.

Fixes: bbda5ec671d3 ("kbuild: simplify dependency generation for CONFIG_TRIM_UNUSED_KSYMS")
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/gen_ksymdeps.sh | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/gen_ksymdeps.sh b/scripts/gen_ksymdeps.sh
index 1324986e1362..5493124e8ee6 100755
--- a/scripts/gen_ksymdeps.sh
+++ b/scripts/gen_ksymdeps.sh
@@ -4,7 +4,10 @@
 set -e
 
 # List of exported symbols
-ksyms=$($NM $1 | sed -n 's/.*__ksym_marker_\(.*\)/\1/p' | tr A-Z a-z)
+#
+# If the object has no symbol, $NM warns 'no symbols'.
+# Suppress the stdout.
+ksyms=$($NM $1 2>/dev/null | sed -n 's/.*__ksym_marker_\(.*\)/\1/p' | tr A-Z a-z)
 
 if [ -z "$ksyms" ]; then
 	exit 0
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210814234102.2315551-1-masahiroy%40kernel.org.
