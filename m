Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUFUQD5AKGQEYD3YC2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id EA57D24E045
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:02:41 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id b136sf1520176pga.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:02:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598036560; cv=pass;
        d=google.com; s=arc-20160816;
        b=XkmU9qcZlXnCjTcf2kalzZY+beKGeerDbLVX0NY3mVzCVKbQtuhg/ixOGAOLrZq7uW
         79V/H+b1CjQozzfUyzn0wOry9MkSEmDeCEZkEuYDykRgFb1npfPApG3M2kzJ1dgNM5/e
         qyOTEN9vW7Gc/uOV8EI2/J6vxgs4Zjfkx5DZAFk8rZd0bIK/9Rh783kOIsZldeX+p7bY
         RN2oiRRvniw8rYLhJCLO1EUN0IXMSFdOfmwULWdi16Tf8zAls2orjWzuXWiYZx6kwEeM
         ySmcB5UaRn3iXrE5oMrMF7JTBaEEn92aHRX/9SDhDCOHNhqkbYlh5Q6cxvGYaeU0giZU
         70cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=W7eZ0j3FktMomNNrzdj/ArFORvIM1vacsp2cx5arMKQ=;
        b=wY4ItICwIpUG9huzGaHM80+U36zH/abqQJUeqnha2SbQvIc9RKDiE+zmBNsCMUZZ1I
         7vrnXPPL5WzM0W5AWJRnGkRqWq+LwZ4Dky7BH4JjWSVYUU8SZE9qv2LZiTTBKhAGQ/GO
         YTiiUXL4/mWA1Yd5O7kJ5qHaEMAi/ZDKDjbAImSL2ogo8hEzoVAEPNSK4cWU7X8pMJoC
         +ZOy2m/D8Gnvenr9Tc5+E1Blp4MIXsMlZEwD8BIoyAbMENBqD/ZTQ3kov0BT+sReFC6R
         j0qMz2mwTTp/iEQ8fq74t6ahd45BCxtzzkshoQ9ZHpa+IElxgvalY9XKiv6ryaessqa/
         TTGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=zXThTXB6;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W7eZ0j3FktMomNNrzdj/ArFORvIM1vacsp2cx5arMKQ=;
        b=Zp3kAug6ZY/R8ntAFqb2tSWTrAvaJ9A89Qdghak9g8gP2ymDSxMBLLmUIgibBSzrJ4
         nxhXTLyQLN5c9ssirtcQdkrPkQx0Rkal564+LB83yd9ih0jxmsz5lvhCV+uPmG8C6bd7
         P5EI5MBs+3i+N9ApIJ+vPu6K9fIVWsSMrNWTpfNO9VcoqP3dwRj5JA8YQnIvgB6Jvb9M
         WdH7MiA+/H8B+9gwIBalAzprkxgs8cWChzrcl3RmCohWIzBBF0ndMVcNcGnQNT5Cj7lk
         iw5/+ESS8+FBU9G3f654h1oR5wPcqNjGRkkfItGZXYxan8Cs1Gy506mQQ0ldLNVdz10Y
         HdFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W7eZ0j3FktMomNNrzdj/ArFORvIM1vacsp2cx5arMKQ=;
        b=VSyOzK2Q4V3ckKnofVyCeXtPwbwqteFmQB3D9VUY6Ax/cVLSJ5tQSYLtthV9ugzccY
         WhjOBXzw+ew3hkfCKxekjyDsS2e20fqhrqOqI4Ut8nvaXVWL1doFk6bYNB1NJO83IjSg
         V+f6m2CLuQK5nMLEckQxpPElqqNo3mim2PleebEizJo1qRNvHC4ef0jN5jU0jf1aYnaf
         mwLVAfb2hT0w/3s/HR5T3X5jU7XUTceym/mmNvexBMeB25ujY7VVODcfirYn3qC34Mey
         8RDq5OGyNiNqQkRytdltauYbpxMZSk86RrewDyiRj9lRX4r4gHhUFdyBGjm/2eY4k4LT
         90yQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533J70lOlmvtR+ZPSndh40mDobJPOWJkdLhO86QPUFaEHoHWpI6p
	UgzdBSOMDEbzDOrnANcYsc0=
X-Google-Smtp-Source: ABdhPJxsPaYUqsmIjutkG+MqNNqDxEmh4em+nCCoSl6Ji5lo2J0sEHiCkYlqwVK7kv+GpTLcSn9Z8Q==
X-Received: by 2002:a17:902:b686:: with SMTP id c6mr3417616pls.133.1598036560675;
        Fri, 21 Aug 2020 12:02:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls1460689pls.5.gmail; Fri, 21
 Aug 2020 12:02:40 -0700 (PDT)
X-Received: by 2002:a17:902:b608:: with SMTP id b8mr3559463pls.216.1598036560165;
        Fri, 21 Aug 2020 12:02:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598036560; cv=none;
        d=google.com; s=arc-20160816;
        b=VORKwn1kHcHKp+G7arcMx/s+1FPkWOModLtcrXl5ZvlOItQYY/eTEAMm4RPE9B4+9v
         BmXV8i8WgVl5/tMd9B8J1KQH/Zly3QZuBV4VUOwikJBpXLeMWb8BGIrJRhfOj6iF+gmg
         nLIotuvoflhNxZWPrBB9c9qVk19BRsGiEKEeetQxsJh+Kzwzkq+gyX02hPJGu1du8o2L
         /gqQrMw0h9ID6XBe/eRaOJ/ESTeSxxRrDvDsI+VNLh0qqPNlBIDSE76jXVU0NGtkdT4v
         1e91a8+R0zf01iH6CBhwpplp1pcN2SsCfT3/rObO7ZEI7Ez42SNz6uWu3gTF/Cv6SOor
         ThXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=ftGoPv3aGfiGs80AMn9l0nfBRKLTLZIm0W34Sa+JsdY=;
        b=nrk41atCY2a0KoX673VuMqeOYnNiH8V9sy5Zf2cXBE/JI1cORbCyvmekBOn/1v3tcl
         wClz6IE4Mjc0iiDvBVW1NA8gUa2rbeLZJ3oA6gFdYTu3GMJYIHW5ksIrvEhORuUa/bsx
         2KjFQwVCyRNDCg+UWPlHtwne6qWprxIkdgBhJekraNrPPFmqebp/SllUsHFgn/yYZXea
         DpZo/W+25H0ivT0zqfk8HevMzzACqL+Exe+ktizCGK7Fuv1jua5bLoyqKXGeJNZUW+G+
         j+kONlV7VHtWOk91tScW8uxXag4+G/e5iMyHyzKLj1+DtH2I+8g9A7dX2uDVP/d+XTyU
         mXOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=zXThTXB6;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id kr1si210743pjb.2.2020.08.21.12.02.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:02:40 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07LJ23eS027595;
	Sat, 22 Aug 2020 04:02:04 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07LJ23eS027595
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/9] kbuild: clang-tidy
Date: Sat, 22 Aug 2020 04:01:50 +0900
Message-Id: <20200821190159.1033740-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=zXThTXB6;       spf=softfail
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

I improved gen_compile_commands.py,
then rebased Nathan's v7 [1] on top of them.
To save time, I modified the Makefile part.
No change for run-clang-tools.py

"make clang-tidy" should work in-tree build,
out-of-tree build (O=), and external module build (M=).

This version keeps the previous work-flow.
You can still manually run scripts/gen_compile_commands.json

'make compile_commands.json' or 'make clang-tidy' is handier
for most cases. As Nick noted, there is 3 % loss of the coverage.

If you need the full compilation database that covers all the
compiled C files, please run the script manually.

[1] https://patchwork.kernel.org/patch/11687833/

Masahiro Yamada (8):
  gen_compile_commands: parse only the first line of .*.cmd files
  gen_compile_commands: use choices for --log_levels option
  gen_compile_commands: do not support .cmd files under tools/ directory
  gen_compile_commands: reword the help message of -d option
  gen_compile_commands: make -o option independent of -d option
  gen_compile_commands: move directory walk to a generator function
  gen_compile_commands: support *.o, *.a, modules.order in positional
    argument
  kbuild: wire up the build rule of compile_commands.json to Makefile

Nathan Huckleberry (1):
  Makefile: Add clang-tidy and static analyzer support to makefile

 MAINTAINERS                                 |   1 +
 Makefile                                    |  45 +++-
 scripts/clang-tools/gen_compile_commands.py | 245 ++++++++++++++++++++
 scripts/clang-tools/run-clang-tools.py      |  74 ++++++
 scripts/gen_compile_commands.py             | 151 ------------
 5 files changed, 361 insertions(+), 155 deletions(-)
 create mode 100755 scripts/clang-tools/gen_compile_commands.py
 create mode 100755 scripts/clang-tools/run-clang-tools.py
 delete mode 100755 scripts/gen_compile_commands.py

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821190159.1033740-1-masahiroy%40kernel.org.
