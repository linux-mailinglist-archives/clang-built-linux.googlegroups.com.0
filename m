Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBOPEQT5AKGQEE22VTLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id A005124E7FE
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 16:56:59 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id bc7sf2876320plb.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 07:56:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598108218; cv=pass;
        d=google.com; s=arc-20160816;
        b=et5yn8U7cyc20lNTR5F9jkjEAcUqXdZzypsN2Vt8ofhGv9Dh5FdSXcvSHfIHGeDVd3
         uu3yQVANiyJeR8e7Jb2nuBioQ/DH264rlbMvieHnDk8fPQnwPo0VO2nzT7q+sIQdLIbW
         vWgYSV8HLBW13UPZ3HH/AncRGIA9pZf3pr1qvZcpBiz2P6QOvFnMR1zdwqb3ml70UNsG
         3fFDmlxb9aoovl1uFU4IBhJyp32YCJuMwK5CwV2+2LsLmXK9aJfRqYsqDUt4hukHP4d8
         zq/ZgJ7gG3Wsw7LxvU1UvAICU36yowr4OwuEIhQZKeNoooLL/UyuOh/Hppclzib93BWe
         A2yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=QifHZ91Sgsisw/iMEna9JjuAvzTMSX/R3gW1VzEpA/g=;
        b=u/+0hCbDEXhvXGf92TUwP3sHuHts89ql7OIDaJ5Na1QE7nWt6yUb/vhcxVl33wbPgF
         hcCNWYlMnuiEz6IvY9+S/bBaQAsugtN4c3l/iDLzS2CIYYodc6wJubYxpizQzMsNB96s
         W5FRx6jZQe8HIUTrBRx6D5RgBDrZ195CxTVY4h1g3+IGNQimNsO5UEjcEwE8ubmAMGMn
         jsSW2jsrs3qWyFFN4TMBU2hn6Kelu5xwZpChN1wUeX9m4GcG/10R/RPXkcyJnzDR0xW6
         IPWvlLK0/M+hINs4z6wKoAe5F90drPXpK0SFU8q0QFHCE2nKHQMKEtrUvCgWHNOI9Z33
         nnDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=kn4xDBCC;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QifHZ91Sgsisw/iMEna9JjuAvzTMSX/R3gW1VzEpA/g=;
        b=ocD2ml+LUuJ+SGbnqffdxqyNGZj9VCx8+siSu2P7accLOCrO+I9fzXX9urLwfGGe/q
         xTWiiLPfyxESoUXMQ1gM+7kelV+cSl753VrxuXtq6tBrWHbz6Ztz6MuE1jcCRHJfBnKi
         cOc44QI610yNlrr0jBX7X7Kyo3b7LbijTni8+DY3dn7BAEyC4c2WZksvHYC7mo9H1zYR
         k11g/Dn9qERTrg4lcCfiW6EQNaDOgytRzjRql+B3wWwJ5pIRqbz6aTLCUOezCg5tlndn
         ZmpT+ksus4wr7tYX0u48YfeSjwyG/kUz7wsruyPouTVUKT98g799UsdOJM8gR6e2TFYk
         3RAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QifHZ91Sgsisw/iMEna9JjuAvzTMSX/R3gW1VzEpA/g=;
        b=l6Y0qHlBNUKsKgPL6euR2bBHybfQkmJ1b7VliqdbSR2goXlKc4jyBxZmji5j1JCdBz
         sPcLz8cYgbJnBu31auw+lyTTQC0MmxRjSgZVicffryzcXqRnhcDlOY2rNJ8AV98DbWZ7
         IrD580MCQ4WguIydOeqzZUhEyqg1xNRg/ikTp5HrMvmb/xJb8uiK7a7fSjZt3gf4Yo3B
         RQFFIYLdMjuubAfHPKdgGH5EBpRrmwCdQ171XSrEY6++TvIxUCFEPdGLxgV5DgIZcje9
         I86QASE2wkkR9LjtjuVkka3qD3nQkklcDemZc0EdPgIUgo36xa4PPvFjA1fAPhXCyv64
         FgtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KxlktYEF8Z2d+FPS0WbRJLzYy1XwAqEU21XBaI8RgLz4tYdXr
	qB9kuZruHeJ0Ak/Jkc81iYs=
X-Google-Smtp-Source: ABdhPJxnFlB30lVgtlGUQ7iIesPSjPqcDIPnKjubeUzqz/kChm2cR24TGawknI85pMJ6AiWBU9/vNg==
X-Received: by 2002:a17:902:c402:: with SMTP id k2mr6143656plk.308.1598108217982;
        Sat, 22 Aug 2020 07:56:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:4ec4:: with SMTP id c187ls1800283pfb.7.gmail; Sat, 22
 Aug 2020 07:56:57 -0700 (PDT)
X-Received: by 2002:a63:5810:: with SMTP id m16mr5642523pgb.193.1598108217454;
        Sat, 22 Aug 2020 07:56:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598108217; cv=none;
        d=google.com; s=arc-20160816;
        b=qdBDkeC1uR/BW1is+ZxBAv5rDe1q6ux9AsZ6h3AspqADcMX55CFCDy8KBuLT9QZL1v
         IspFMtTjS78YIdoDA0hY+pVKHAmlafBGVw1Py8fS8sR/eKNpAbxLhggSZBju5KcUuppS
         2a8yCIRfgd3cRPh1Zou8+D+gsQSUdDtHssbIRkzMOnrLqSkC0pWjpjjocu6HqsHasSnM
         rddUERjlvzIZvr0Do4kpoyxqfPkoV7QRbpL+K4L1GqgZC0KXMr1WJTu6qH1/i0pATubR
         DCGSvyC4gyIhq+sQjVl4Rs14Ww51s1CUvky15YU8pzqW2Ml077M9T1iXVYCvq4j/fM1D
         482w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=95U6Fk7JxWZcBC6emSKUXU+RPpgimScrngM3/3sca3M=;
        b=0fj9fyMhiT1JASBwTKVPAw2bf51T8Er2Yq0VbLnwTVHQhYD3B7mqxaW+g1j02mWirL
         /ze7Afrqfiuk5hb+Cx06Ag4HpcQx853d98bGiovxJKm2Gkg77MS3KDgu7yuVXbiKlLDj
         es0FuaPBA8dwxBJjrzjNNAqq+tL7JF6mxM3tY9VfxMRNKUlotXqFnV2uI217tt68GDC1
         9wn3ZGy7a0T6+H3QJ4Q0HvI2imyKykvEaC9G32LHbFTG8HmEL6Vtnb74rdswgSdYr6qB
         9ismZ2dz+7w4DqEgunMfthvLUwp4qsG8fSoMzA2hGPz4cSImDzETk8LIWzyOHnQPe38+
         IN/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=kn4xDBCC;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id jx18si266428pjb.1.2020.08.22.07.56.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Aug 2020 07:56:57 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07MEuKVQ025434;
	Sat, 22 Aug 2020 23:56:21 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07MEuKVQ025434
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v3 01/10] gen_compile_commands: parse only the first line of .*.cmd files
Date: Sat, 22 Aug 2020 23:56:09 +0900
Message-Id: <20200822145618.1222514-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200822145618.1222514-1-masahiroy@kernel.org>
References: <20200822145618.1222514-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=kn4xDBCC;       spf=softfail
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

After the allmodconfig build, this script takes about 5 sec on my
machine. Most of the run-time is consumed for needless regex matching.

We know the format of .*.cmd file; the first line is the build command.
There is no need to parse the rest.

With this optimization, now it runs 4 times faster.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
---

(no changes since v2)

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822145618.1222514-2-masahiroy%40kernel.org.
