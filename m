Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBKWT2D4QKGQEMGAABTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 56557242E20
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 19:40:59 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id n6sf805718vkm.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 10:40:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597254058; cv=pass;
        d=google.com; s=arc-20160816;
        b=hVmptUb5+zsZNilH2t3lF4Q1/sNRihO+sBTk71uldQ+bB4hePUlP+DxvkX53+M/s2S
         F24SfwFFPLOzzgvE19xofqEjhcvEbnZYzzgESsEl768g1ithrdPfqLLbnWI6pFQSEzzd
         z+liah1JKaP+Jv1tpFZKb3dimmHKPxXXYS+M9eevySPjCVg1oK5/3Rpv6cSARd/y8FZA
         Lx+bKUF8LZzDt9AahCv8LRghujR+2goB+KAH5X4hvztdfTsYEieOUHsNPpDtrlxv9QRU
         jGLs590NXNHVEdJX+D6L2W41Eyn/4tyGocn7NWQRztuE+gvhztw42PbyU654W7+J8hws
         +4hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=WyALP0YC2Sf3oqjL9aeNEsoa+TyL0IWqRBHxRYPMrdo=;
        b=cKHHENtBLmh2X0nYG6nLuNjmAK3qlvbgwCw45igUSp0ZBKevFclDALX61UHES9DBVu
         E0JGQdf4xMe6wWqm8WOtwTD4qTD5oJbGuHWnILta+2qnlEH8QxuBEbRQkrsUcgOGYVJR
         4Q9ajorPR0/LmmUnAngbX8SI+hd7aXo3rsv42RHOEQ7ts6n9shZqvz6FRkUbuS9lt3nq
         bzRbq5FmjnXECqyvu03TEXeRfH4dPZgtWySZv8QeP+nAjvKlecOMSfpLPyQbbScYcHro
         YV1m2ybIyA8YjkH9U7ZDItAnHmOClCvw/ailS/Y48422PeSbkpX58dFu1We80Q23Ltb4
         4PPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Q27VHY3b;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WyALP0YC2Sf3oqjL9aeNEsoa+TyL0IWqRBHxRYPMrdo=;
        b=gi1M3CRhKXuUfJq/pytLpmALXAUOidlFrzIHSb8li0wxvqKlIha2l0ITH5+jxbSVIk
         eWXe1Cqksqqtege2R8gpjbQsgVTM9iiY/yh1MUVdxYYnHM3V/STYbEnEoGBotq8yvvdt
         k9Uv/dusxJ00loHd+HsN5mOZlEVsuhh0QMTJHFvX/VTL8aEaE9PO13z7v8jEV1RuMf8J
         a3/j2GZuFyt/0OHxnq1O44zqpYPc4Dm8TDAOJtX4h/gGcG8hbJAqA0ANwOvwsg6s6lgo
         r2fBB4SfkhI7age8eHg1/TnUihLGCAAQhCPD0uK5oJAQOKrBSimDRmcy5aQk6nbVdt9F
         JBlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WyALP0YC2Sf3oqjL9aeNEsoa+TyL0IWqRBHxRYPMrdo=;
        b=bafre7H9RZp2GQfdyjlTb4IoeRgV/uXyPdmAGHtrJyPyuU84qSYZ5z36+vMqdOus69
         aOprw+gjO6AT/vGWuoC100Hg9sbJ8hXPcsir0rxhNohiIR6S/joclt0f0FvweTzi6+iI
         y2tqlSpxrhYNH5AmmI5AWYPZGK0aym4iFHQd8bZS/8Ru9WBTsrRZX0suz9ZQrb8sgXp9
         wzY5HJ9wFCHKIVPlru/WL1tT1cIKcHuuQ5tZzyWhdM9MMmcS8TCflVV0twXsBZ4Vm2F9
         4o9hmG2R911/7lCdu2+lq2Zyl6a2PPm/XQbFCJCdbbLFOvYbckDGXGfLYoItL1ZCn6PW
         YeRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+MF1/sI2XSj54Ajdoq/B12ro17f12HEhPauJEUUpW3INbjHR+
	yknHtqRbB9ZquhZOLWxnjkU=
X-Google-Smtp-Source: ABdhPJwg9aEi7CY4blriAsfI2pI13au/jEssIAgMDiuaitbp67m1dqVOQm2BMECJXvxf3vNbQYf7VQ==
X-Received: by 2002:ab0:6341:: with SMTP id f1mr383209uap.19.1597254058222;
        Wed, 12 Aug 2020 10:40:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2d53:: with SMTP id t80ls137410vkt.10.gmail; Wed, 12 Aug
 2020 10:40:57 -0700 (PDT)
X-Received: by 2002:a1f:9048:: with SMTP id s69mr460343vkd.73.1597254057914;
        Wed, 12 Aug 2020 10:40:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597254057; cv=none;
        d=google.com; s=arc-20160816;
        b=sXnFBz8vCi0WU2tv3NUaVfxZSJHEWVE/H9PAgrhqHPeiPtB57XtAMxRc5nApCjr7/4
         Q3OtTD/f323rVjX0yVmDCwfm04qCtxisQ9Obg/9MBqt89MwzbuiayxxzOJC2neuxUL14
         cgl8CEt4fRd9Ac6xWUHH9eVW4DS5bb1x1FSfMI9YRdPswwo4JYaLvVbByXE1p/POQagQ
         Ii9Nbkfr+qGKVffn18SjELVqxeKkbCcsXSb93RhQJj/mTpdL7wbWNwPR5eXxZgzR3TSj
         ZH1Cm/9K54Z4QaJr8yHLEDdKLD4LW/oMRlSUqiF2VFfiuf7h0yI1OQIz8aZf88rR/Pse
         Y51w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=bdhsF+PGnDpUOrgplpToSYPg+6kuHpkICPzCUi4Ew4w=;
        b=VIwdvaOM3QvFAqIKe6av017vRzyWEpFVTmZPkLCR0JP9LsBphLBUZT8oG8Hz84UfqG
         7rCH14RLg00CltJ2Jht3YWIgon7iXuW8MwuOcKfx1tUrv50vKq2uS27Aq6EnwUuQjfEI
         W4MVhuWrToFkqxFNv+s6+qtU9wJgZGowCqdb9ULSaMx5QuMa0/jfevmsmm4cqsNNaV/O
         jzrYZI+c0RfX9kW+L3CUmwjCiAkTGscOtPVN+G4r39TYDqVP7h88kwwf+81k/gZ8T3e7
         7km/a79sL2JjcZ4XBf37JlcrzUkeUtYsNykRcSk57Hf9uzI13V+IujNxw/6PhLnNpORT
         NK6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Q27VHY3b;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id q1si223798ual.0.2020.08.12.10.40.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Aug 2020 10:40:57 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from oscar.flets-west.jp (softbank126025067101.bbtec.net [126.25.67.101]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 07CHeC4D012279;
	Thu, 13 Aug 2020 02:40:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 07CHeC4D012279
X-Nifty-SrcIP: [126.25.67.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] gen_compile_commands: parse only the first line of .*.cmd files
Date: Thu, 13 Aug 2020 02:39:56 +0900
Message-Id: <20200812173958.2307251-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200812173958.2307251-1-masahiroy@kernel.org>
References: <20200812173958.2307251-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Q27VHY3b;       spf=softfail
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

After the allmodconfig build, this script takes about 5 sec on my
machine. Most of the run-time is consumed for needless regex matching.

We know the format of .*.cmd file; the first line is the build command.
There is no need to parse the remaining.

With this optimization, now it runs in about 1 sec with the allmodconfig
build.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/gen_compile_commands.py | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
index c458696ef3a7..19c7338740e7 100755
--- a/scripts/gen_compile_commands.py
+++ b/scripts/gen_compile_commands.py
@@ -125,11 +125,9 @@ def main():
             filepath = os.path.join(dirpath, filename)
 
             with open(filepath, 'rt') as f:
-                for line in f:
-                    result = line_matcher.match(line)
-                    if not result:
-                        continue
-
+                line = f.readline()
+                result = line_matcher.match(line)
+                if result:
                     try:
                         entry = process_line(directory, dirpath,
                                              result.group(1), result.group(2))
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200812173958.2307251-2-masahiroy%40kernel.org.
