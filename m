Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUNUQD5AKGQEQE2PQVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FBA24E04B
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:02:43 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id m3sf912746vkl.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:02:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598036562; cv=pass;
        d=google.com; s=arc-20160816;
        b=QmuF5uTJIhKqWVlEoYvjwiUtElwsLqcHXdRWeIezQc47Ifb9+MWZt8Tzxx0vxbewQh
         B0de6IBGH/MAo9oKZ5Jg+myljqiMLOTNcdb/vxM4WZwoCOYX0O9lKEDpUva51GCJimA/
         SNVRl5SffKxc+5c8bXQLLX/jLBu5CicJpqim54b+RvqS8xu+l7B+vEPTtU/5+Yw8JU1W
         1f+OgUi12yhgTF2Dns+mugpJSAaipn3+JP+/lcCPgGbRrfxima+YzF1P6omSsDDwGQRt
         eMKCBH6DHjjLl2stg7XehPBSAhO6GdO7xrpm00L9g/pAtUnYjrgk7naJ9CCc2I+huzql
         vRZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=AtLgDGQK+PUSInkscsFfCEVlMa302St9kJh0f4S/fuI=;
        b=vfn950HFfqLFLRQFp1IEcbOrJuXh+zw7q7amsKGARs5npWQL6ZPMvGY1WltuP3T3D9
         BV+IH8mfY3lUAXQndJ/W9sqTa+y5MLTcP8xXKpgEHkJWfpQ1wTrVtiS1AXh6Zn9IV6E0
         4bL9TAecR2clnl7G+HcYXVqMZmI+htm43x7GMGF0D6ErXBE/Cc4T/+X/ODQd1oPtQtIq
         cqJH5MEGmTpRQVNCCD/+2eu5HMcFBEV70yo7JzH1sVlolbpTSTUvdN2Kf9KygIDc2Cgv
         9+ISN8gH0ZtbnHhLykem6IyTK5oeycXWia+mfZM96uzFF9ZNQWC3bUtaAfe2IGFANNfE
         mUsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="h07vOh/w";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AtLgDGQK+PUSInkscsFfCEVlMa302St9kJh0f4S/fuI=;
        b=emqmNB4dY5IHtfbfWGijOBWDZbU74ToI9xi2CaEqd611I5wlBQuP71YdIOz25caojr
         CsE2qZEyUlSd17+P41sAjjjBIYjMMbFSGof42M+HFSOnuubDzaMgQ5eOV9RVgTwcHd6K
         6c4hJhEqDniENKHmO3zxyiEpnEOWtPOdYWrTgslLtSLGultVAXZ8t3sI2EAClFwM9Urg
         sYoaDm153+7bQn8h5a1br7gizGCHARH6Yb4IFVJOSY7Tu1+ihLfkfxZVJT6surOePS8F
         0g4wlm6mYGwpKCmTyzA+5HagKfyyTfGaFDUz47nLAdqZK3Xej6WZE5XEDYegMjJaSEAo
         1YBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AtLgDGQK+PUSInkscsFfCEVlMa302St9kJh0f4S/fuI=;
        b=OFf1rtNFTkdrj2K5qlzTRLrB1J/Z3JPcA1A203YPkMC1ueCcntxZipoUoWD40r9JPV
         icfYPUg4Pl1UjDunmfk0Lds8yxkFJtj+hxW/4Nfjz7qOz0Cs+lTlCw7pILihsBaRqgla
         zB/k1baPo4r5MM/56UCZbyIEUworxllR0U/LTn0PYoKawHYeDgvrfCdDjun7dKOFxiUu
         qJV5u8b1rbxX/f3Yg+LtmkTL9MJYfAb1LL6Mm9IOh3KI4Yi0kk3HKWDUR2id0yW4qPMT
         Ivt3Y8grCZ3CwZw3gd1lLqkzDF9EitG9/A9M8DtrKaSPoaUWdZg/GoqoSgflx9UU5SYB
         rCEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XYVduahUQrXwD07KXl7ilFL1F/0t3lNqIEQOsw/HGNI91Tq7U
	FZ5M+Qg4bETfkGSwUTwRqG0=
X-Google-Smtp-Source: ABdhPJytnz2pTpLRqtlYAm2EAE4Vm0NQcPSeW5Xdz0GWyEhOr2DcVjajvTkTC1ZUGCY+KVg4CNUYSw==
X-Received: by 2002:a67:f70c:: with SMTP id m12mr2771821vso.238.1598036561922;
        Fri, 21 Aug 2020 12:02:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6008:: with SMTP id j8ls208490ual.11.gmail; Fri, 21 Aug
 2020 12:02:41 -0700 (PDT)
X-Received: by 2002:ab0:2642:: with SMTP id q2mr2532684uao.16.1598036561253;
        Fri, 21 Aug 2020 12:02:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598036561; cv=none;
        d=google.com; s=arc-20160816;
        b=ANeEFeWRlZSOJzfcA0lTTe5xM04mRQdxBfvj7ijharE4nlqjOyh5X/E+PVyCbWVrq4
         kVOH0wK6Gor2CvGJOjfTh6mJg5y/oKlXOiR+6YuVCojjnWcYpRpKszHJjvd3RK29BvfD
         hVifRT0DCjXtPF6z9hxhs7C+3ygrACbzZ0MkiL1WI46zk8FwhmbmtpJTW67+StjERoYQ
         DNZDybLLWy16c5/xzxW+SvtiazWaZYLDgNIrF3MnITPf3kpsvnMkKs0iyvkrruxZNSXp
         ux+1tZ7RZ1Btt5JtlDlFHdv9coWwKB5CxmH8oiw3+0qdUMtpiRI0WGcYcgNlKxmjknoE
         buIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=DyUxhByC5o5hgSX6EDv5IVyqWsClHjdMK/ZV+YDLY8I=;
        b=fynkMAjbDRVvsET0yr1GlD2mMwctobSsC06ecTpHuQjt8Gs4vW8SEuYwv1dYA06W9j
         q6ZNspMbDKMSANdCyhwMggTAzKGlmZ+6qxnSuSzfa6Sj6k0NKg5msIRifUEd9zG5njX+
         /G73EZPkTj+6+xL0ve/mbmYJs8crG2Uq5RSjUwhrJaJkLX2Ri3ILcy/oHGnlHVOtuZwS
         qhppUY9tu2qVhea+eHLbLG/zOlBTj+zxche24EPPdM/xfYMmSJqFkdfJiI5N0r9ZWpp9
         7tUB3JKKsTcT8AIS6EIXDMh4hYA+2l+M2tkaRazJPoQ861hcudq3tSxFq8r0RN+AP4xZ
         NfEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="h07vOh/w";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id q1si166683ual.0.2020.08.21.12.02.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:02:41 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07LJ23eT027595;
	Sat, 22 Aug 2020 04:02:04 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07LJ23eT027595
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/9] gen_compile_commands: parse only the first line of .*.cmd files
Date: Sat, 22 Aug 2020 04:01:51 +0900
Message-Id: <20200821190159.1033740-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821190159.1033740-1-masahiroy@kernel.org>
References: <20200821190159.1033740-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="h07vOh/w";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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
There is no need to parse the rest.

With this optimization, now it runs 4 times faster.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
---

Changes in v2:
  - Remove the unneeded variable 'line'

 scripts/gen_compile_commands.py | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
index c458696ef3a7..1bcf33a93cb9 100755
--- a/scripts/gen_compile_commands.py
+++ b/scripts/gen_compile_commands.py
@@ -125,11 +125,8 @@ def main():
             filepath = os.path.join(dirpath, filename)
 
             with open(filepath, 'rt') as f:
-                for line in f:
-                    result = line_matcher.match(line)
-                    if not result:
-                        continue
-
+                result = line_matcher.match(f.readline())
+                if result:
                     try:
                         entry = process_line(directory, dirpath,
                                              result.group(1), result.group(2))
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821190159.1033740-2-masahiroy%40kernel.org.
