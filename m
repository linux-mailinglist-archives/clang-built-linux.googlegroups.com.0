Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBLVN76AQMGQEMML56OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B8A32B9E8
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 19:34:23 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id y7sf27663815ybh.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 10:34:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614796462; cv=pass;
        d=google.com; s=arc-20160816;
        b=DAbepNz9ayfqSbDLKaEMrvG53gzFVvvSqLbZY+ostUDPU2F12ZABVnjj4WxAmAs4tr
         z55MeY91BsxdWxGQF1Sv3QKyCw3QA5u22h5+Zi2y5frI8a8MiMcmrkhxoFUC21pFEJ/0
         9qUT8qR0T/xeUxjoYspjNQi3C6hVZUMMhasiP5GicF1T0Mh/RRBfIbX0ymlTmHvjyD7A
         LZB+RZZOk4N0f1nKWoGsU7emTsN0dL6Vicrk+rRo9f0J/yOpXOxQ76BMGsrM4I3oTvL/
         tlX3t4FQmZ683idttYt0fBemiwZObaRYCRtZZQDxcszXO7bgHhO1dPXqJHHl4HnWy2P7
         6zoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=YpEPIMqbEYBR4eyMEXBc74O5iOrcoK+lNYCWl1Rwu0k=;
        b=ANr8eR83CSR8NAHa7dwnvjGlqNfS0h0L3JPzwKDpFBpAn4YLhMy7FlyE9qC2ulQZnz
         MAG8wB9iSKu76wCP8rK4sukXe/TxZ/NjOHhnXzHpZi/ewo2C04745937rA1ErUBVZvc8
         7CgtuYcNZgiUbNLsTkCboi518QL/PQAKiHFQWilKTULouag2cYhJeNwj+Rq9j/1Aesx3
         H8Va8kAj8qnMCAYUVi2amK01ZC3Z0M954sYwjjYPrsr1kh3VTwpGcuv7hwzje53dgEvc
         ClqYGO9KkOwlaf3+CiQUdBqJ5+NhIIuhoaDT1rapinDnP74DnQdekpkjOdQRxaGPKrpo
         Yq5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=sFQoLeT+;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YpEPIMqbEYBR4eyMEXBc74O5iOrcoK+lNYCWl1Rwu0k=;
        b=QVAGLQx37hAuy+j/0rXstV4MZ1PzpyogAS5mD+xWLgNaR2aaJk2Gkmy4W2Y7VftnLv
         dpff9DiPkbTci6wRFEGeyTIGRSRcNDB1AfL7KUqXmtcA1J2O9IpaG3WVenKNnZ1UjraO
         2YP4FEjxmA0yOiRgs6HKJ4WyB8oo5giXcfhdCahiEv9MUpuUY9yeCSmiSVTW3pGF5ryJ
         8rtv9Mn9NJ2NyGzWmQLams/9hTqlHcLkr6FhI3yY2CBAXb2e6y0OckoWP9z5Z6qA56I/
         9uE1LAjLQR0s4Ggl+0xGgHqxxqn9SXsjhy73oqNoBUaJgolKmqDsX3cK1BSZ9ncKgd6g
         3Bqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YpEPIMqbEYBR4eyMEXBc74O5iOrcoK+lNYCWl1Rwu0k=;
        b=Ukc77i2didbMclJpW74cAZ4k/Ho0HCkCqLoBwh1DXTp019NM8hJVgIawYER/BMP8bZ
         9Rpoh6jOwWp7lFx2I7MFFLKiSZB4VuUPYq/rnB39onOx40iLLQ8h10aNyV1V0pA8aaAj
         /DDw7CauyJsX7JApGA2ND2YN+2DvldHCvv27V5hpu/caWo37s87sf+HeQ8YmM9bE3aeU
         iLBYUYlA8uIWwb0XPRPPri95K08tnj+MgH70Me/L/qVLqd6zYtRWpgR1n8fyVSJdwCvY
         BX7YD+CYeSJVb3NdW88ELq36FjrhSX4Il8PfqoY21B9tvjzpbXKqN1WdSa4RkVOf45Ov
         Pr7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533p2LFWjwGt6VxPC1f0eLRPZl9BHNIIZirvciOKbylUnd3W/Z6P
	EU1mgATvP2hqGznzHieXN6U=
X-Google-Smtp-Source: ABdhPJys6DuHidL+cgpUhRQW2gpBa8V93/g6dzqB8Mw0hNs4VIF0A5/n7zgX6gTGRj6D/a3d3slrrg==
X-Received: by 2002:a25:b6c3:: with SMTP id f3mr931028ybm.117.1614796462377;
        Wed, 03 Mar 2021 10:34:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d907:: with SMTP id q7ls1533194ybg.3.gmail; Wed, 03 Mar
 2021 10:34:21 -0800 (PST)
X-Received: by 2002:a25:ab32:: with SMTP id u47mr955444ybi.46.1614796461910;
        Wed, 03 Mar 2021 10:34:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614796461; cv=none;
        d=google.com; s=arc-20160816;
        b=rtA1ARz70B5uv1lkVjxGh0BnjkRMjiMbCFUTU53+2poxWGaNOvwsd2vYcNW/UwigjQ
         +XusCSp14XxiW6WsrYXAFcRLcdVlXZ7j7GcVTZHpfu6Cdkp3KfSwPrXx8QaoAQUwCBb+
         gX0hH7SR8NM2sHA0OISkqgBlxBH2NW5oMZ2GNgdMv+3bhB0FcwIJe5OzPdn5SX4nnSer
         2pWCQ+9r+CzSv0agJwEXUezyjObbEpup7pqGnlyy0DQIlDw1Z7zTJlda989kRMfzGrjl
         Aehhddt3x9qlaAUSN79RqsR0/tSKM8sjmyjYwICe2F7mzR3/2D0KVc1kRZN7YSyvkkdx
         Kz1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=Ty6hgSJlEGo2TmgYh5EvVwMWKVKlHFxHVBQFp4A9PZc=;
        b=pNy3RPIvefAkVZ8XkZdIUEzlyhThN+MjCl5lERpQNOl3odrdTLB35/wxKBsRY9AfLw
         vnGz3u/jqTAuEhh8S18yGdwz6wU+fjIF7VhPrQIVno0ECpMD6srFP3Rr368aPGaLWFWZ
         XzfEe3tFDjqmOX6HzRl2WQYsKYvfE23dXXqnyFltcFXs7fLLddv0s/QuZvoR/ePXGgvD
         l0jFS5eO1uDe95XA/LdhmHfEdMNl2RpI1P2ARc6SR952dYBhENDzEkmzDYpZAgUIedsU
         vSrcLz03WRQHAiue8alB7yR6RLlQ26QbXEGeNtqWSEM+5xcEFGXdLZoh41wGvbAchVt+
         jxPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=sFQoLeT+;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id s44si1965891ybi.3.2021.03.03.10.34.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 10:34:21 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from localhost.localdomain (122-103-140-163.kyoto.fdn.vectant.ne.jp [122.103.140.163]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 123IXcJc023524;
	Thu, 4 Mar 2021 03:33:38 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 123IXcJc023524
X-Nifty-SrcIP: [122.103.140.163]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com,
        Nick Desaulniers <ndesaulniers@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] kbuild: remove LLVM=1 test from HAS_LTO_CLANG
Date: Thu,  4 Mar 2021 03:33:30 +0900
Message-Id: <20210303183333.46543-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=sFQoLeT+;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

This guarding is wrong. As Documentation/kbuild/llvm.rst notes, LLVM=1
switches the default of tools, but you can still override CC, LD, etc.
individually.

BTW, LLVM is not 1/0 flag. If LLVM is not passed in, it is empty.

Non-zero return code is all treated as failure anyway.

So, $(success,test $(LLVM) -eq 1) and $(success,test "$(LLVM)" = 1)
works equivalently in the sense that both are expanded to 'n' if LLVM
is not given. The difference is that the former internally fails due
to syntax error.

  $ test ${LLVM} -eq 1
  bash: test: -eq: unary operator expected
  $ echo $?
  2

  $ test "${LLVM}" -eq 1
  bash: test: : integer expression expected
  $ echo $?
  2

  $ test "${LLVM}" = 1
  echo $?
  1

  $ test -n "${LLVM}"
  $ echo $?
  1

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 2bb30673d8e6..2af10ebe5ed0 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -632,7 +632,6 @@ config HAS_LTO_CLANG
 	def_bool y
 	# Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
 	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
-	depends on $(success,test $(LLVM) -eq 1)
 	depends on $(success,test $(LLVM_IAS) -eq 1)
 	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
 	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210303183333.46543-1-masahiroy%40kernel.org.
