Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBKOZ62EAMGQEYZTQQPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF213F0FAD
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 02:58:18 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id f5-20020ab024050000b02902ab59347e03sf948979uan.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:58:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629334697; cv=pass;
        d=google.com; s=arc-20160816;
        b=N22b+dJYqdjSoYVkLwB/WwfgXWiiHeAgJK2RXSp6oCgug/TUz1txw9/qRoY1aiSlg4
         Sqh1KxrzRIxDozCAGJyHUuZoT+q7IrxiXZ2fKDsWMULLArWIeJLghQW9GLEJEGthp5q0
         zOUfkL2FGrZ+ROCTOzxESMFTvDjY6JCdLeWHUyWWaB2wZn2Wi30YpqsnDanmMBzmlq+g
         oOQ9vwD7E7fBe4FAx8TueBNPoQfQ1UvoFcwrAIDYD2fejdQNsbAQABiG1Nr3HvBunQFw
         0MTqEwS+80M/AeN+jNJV2wbVxMPMX7d0MdLqdhai6eosALSvmqfSud0rcBglaUbxI6yY
         UCGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=dmBMdCepIfHy/lx3/pJESAtC0W4L32OjaW08fHhc9gI=;
        b=Ggiz+PCEH9g0+u2NJrkbQlRRG80+41tZoOvtJWqGrB+ZVUGSrfrL8clUE9u+1C0qFI
         eprc3u82Ee8Bp8UZdlycXvviGzgX3Ir35IC2YthUlbon2Xi1+R/uuFmV3YQ4TfituGr8
         Z6SOyx/mRJYd5PZxjowpnr0HaG3NNC8cnH2Snbi6UJRS4JEC5+eIZfQCMnQhe/m8mf6A
         n7m5ULgI4Jm0fB7YHkBckjTaZSZvysSatdA7h+bd9WJXiWNiuR8H+kpc59qQMc7xccVr
         VseQuD3ZZKVMSrXbsn9hDHi/5HZAk3uoAryFA/2NZHJvqiFgjwLJsUc8LzRvtyrL38lE
         DX9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=hgT+MEha;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dmBMdCepIfHy/lx3/pJESAtC0W4L32OjaW08fHhc9gI=;
        b=mr3Zva3rLCmcQSfIUb7apK4rY9/xTZp7FDulfnL+X1qAprp1fyegI6xPNKTu9usppj
         LqpT6XNYsvX/uYcXXvOeaH5/Oe2WOmWJAOjVkn0UTN0QmkCU9pz0XEkyPjiOz/ZUQknX
         /Iq+E1/v6QXYhmyAbgfD82rV4pjWrq4H0SMKxyOc1a1SdSUqyevZusgkoJW8i6WOjP16
         MDaa4GnWszZ6yDiNP3Q+zmS9bd2nYQFribhZlT4oOw2XRVpwvv9brxCPzQDIPmhGHC0G
         7+ysjJZELqZb9vptuagqio5Q96tduJvHqmIRCkz6ekGJh5S2lRvmafYfparXuuSshV6w
         TUYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dmBMdCepIfHy/lx3/pJESAtC0W4L32OjaW08fHhc9gI=;
        b=cIr2Xxd4X3fR+IDIi0mpBrUQ9r6D2uvP/zaDirWgcTsAd9q1bL6F+Uj+9fiK3stNDM
         olDVMWN0qFWN6UXFhddmLzFllGdUCi6+VGI1E6EvhcuyrmfONSPxjW/uTqf8LqAp4zbV
         D3GKsh0YQflyi0WR6e/6OfRFRaywqj6J3B8JoIQhy3tWuQdehobc9aZArM5AxgDEE3Wj
         dqQsdNH9PSe6rrMQp+UFYqB00bT5Qb8GZjFs0Zi+GcyD2tJKyk/7gzgaHEW7utnOoHQf
         lKl567GqvY7LS+EFN0k0lucPS5lcLs4bxQhsXty1vpvJ59QiFb5Ybxi0vi4UCq/oAxXA
         NkGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302W3IUuSuUwG5AvNKSg2n+VSLkXY2CVOVhQHfvxMx2sIuQ5GbX
	xyymBHqQASnPW8k+ST1XUac=
X-Google-Smtp-Source: ABdhPJzbrGIA2wLzTD9F09w3b5j7qpKEhms57NCWHp/gS0DHJzhsJLdL/nom2ImXGv0Tg5YRjzor4A==
X-Received: by 2002:a1f:b215:: with SMTP id b21mr9880394vkf.12.1629334697552;
        Wed, 18 Aug 2021 17:58:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c89a:: with SMTP id v26ls734692vsk.0.gmail; Wed, 18 Aug
 2021 17:58:16 -0700 (PDT)
X-Received: by 2002:a05:6102:819:: with SMTP id g25mr10745759vsb.8.1629334696919;
        Wed, 18 Aug 2021 17:58:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629334696; cv=none;
        d=google.com; s=arc-20160816;
        b=gj3lZmtXPUnTyTPPKpVYWOCKnwxXIRdwNdN9hBuE8uUAFclv4r3YoMtCMSdNAjViHf
         1G6ASs8u5FKTYQ2hLAm3cbUKGUi88fnx/VPklMmdHDJhEy8lpNRRC/+DwipSmtyqM6lu
         +feL7ectAa0DA+px99o6/sUnTA24K8VwrzwqXtioRu206cM5bDTmeisc773iT05pAxf7
         S5FYsVFdXfOKrPNiRqReaEajZgBBZQU9EYXBmdWAFTMIeDWELBlP/QjZqy+71n1Yp/QM
         HJMlBS8Gwkw6jXsHDcHE5XjLqDOyEfzSnKKEiHt+M28WgYtbas3DilLVGSJzFAZl5wYo
         fEHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=z5Enux3X+2bxuEr7VV8Kw02JAFcpN8X+hEDG69gW3MI=;
        b=bwpmByBJbFhh2lcRqDjZBJ0wss82Nw4Yneql9ZfTbP6bixPJme3tjznmuDSycFanV1
         OyC5D2BRB2BsN7DaDJundcX7eAg3t51FedtALYRXB6TCMLe21LECuNnCKhF7+3fE6IFV
         GBDf9/K6oK1g1tHUGQx2B7PeBdD8BT5JPebjapVyLjV5s7CNmGTb8EXBaDBQ/5eYFYqm
         ufHMlWVeepWtWHNbXsCUdiJAa9MrAZqaxsRkpGLKiewy/CqBkZZDCOMy2bofihz9PMy7
         LblF77DgVfQRIPxIXk6Aj+NaEYf9BJnxLDvXBMNbyC97TyMjdOdFPkOV3LzP1hoCytCC
         D9aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=hgT+MEha;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id q21si99963vso.0.2021.08.18.17.58.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 17:58:16 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 17J0vl4l017219;
	Thu, 19 Aug 2021 09:57:48 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 17J0vl4l017219
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>, linux-kernel@vger.kernel.org,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com
Subject: [PATCH 02/13] gen_compile_commands: extract compiler command from a series of commands
Date: Thu, 19 Aug 2021 09:57:33 +0900
Message-Id: <20210819005744.644908-3-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819005744.644908-1-masahiroy@kernel.org>
References: <20210819005744.644908-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=hgT+MEha;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

The current gen_compile_commands.py assumes that objects are always
built by a single command.

It makes sense to support cases where objects are built by a series of
commands:

  cmd_<object> := <command1> ; <command2>

One use-case is <command1> is a compiler command, and <command2> is
an objtool command.

It allows *.cmd files to contain an objtool command so that any change
in it triggers object rebuilds.

If ; appears after the C source file, take the first command.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/clang-tools/gen_compile_commands.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
index b7e9ecf16e56..0033eedce003 100755
--- a/scripts/clang-tools/gen_compile_commands.py
+++ b/scripts/clang-tools/gen_compile_commands.py
@@ -18,7 +18,7 @@ _DEFAULT_OUTPUT = 'compile_commands.json'
 _DEFAULT_LOG_LEVEL = 'WARNING'
 
 _FILENAME_PATTERN = r'^\..*\.cmd$'
-_LINE_PATTERN = r'^cmd_[^ ]*\.o := (.* )([^ ]*\.c)$'
+_LINE_PATTERN = r'^cmd_[^ ]*\.o := (.* )([^ ]*\.c) *(;|$)'
 _VALID_LOG_LEVELS = ['DEBUG', 'INFO', 'WARNING', 'ERROR', 'CRITICAL']
 # The tools/ directory adopts a different build system, and produces .cmd
 # files in a different format. Do not support it.
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210819005744.644908-3-masahiroy%40kernel.org.
