Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBOXEQT5AKGQE4XOY7LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB1D24E803
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 16:57:00 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id z68sf2778298iof.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 07:57:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598108219; cv=pass;
        d=google.com; s=arc-20160816;
        b=sOgUA4anMSRrTGMdyyhrN7+y4AWcuj+cW+39due/PzNJyrkPutYEawJxJPcxNx+rVk
         mNvo0r7N4xJrkZHW6Jc6ON/2UjUZV2w2W4UI9nXP5vljYJcOKg2SMauGzmoyMTAFJ1Yv
         AKhWh/w1XLJ5OX2oAftcGv2pYPZbRKmWZEXrWMpbqT7XpXY4pJ7ARGk0wYSWp+AdC0vB
         lvI/5+Q1jfUFmlHCQrV6Flj5rth8Xq0ksYDIrER802OCCppcx4p4nTzdiLuSzU6oiqPZ
         ZjUeXn/pg7w6xKAsV06O2T7XXwopCstmrrA5qZ6N+yk28aV5PQC5m0XNpshDj6PK8/zu
         U8yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=9vtim7vecHKsaLgJKRr1AQ1wfWVhTbFVr1rLISSOBuE=;
        b=QHwgkqeBzTlz4q+AiF5mIfpVv4m8UkhA2Nt5NhWUX/0ly5O0x0kUbkSkCnzNA1YKn+
         MAWPTBdaDdRiyloOm3DfEzT0b0s5iuk9uyCQMOi/WFHPNGPA26Lp7pw0XHlxfDAVba2O
         rN87dLkXIgjKBCfDSp71+4L7g7Hjwt6Uoen/V52f+4xcPMEkpqycWBw0gBqlGlrXn1iv
         vywnXRyDa/RhzpDUk+VSTMWmzpmymKkJgweYmrjFilWH4iVgcrAK9Zh7ZPfUpemIUWs9
         Fz02alNtukP/KpmwKc2l5srNnbXwUWmGpWkXibIQpME91VgDumivENNq/Ulbsjr6foDm
         28Qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=bEVRKmPY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9vtim7vecHKsaLgJKRr1AQ1wfWVhTbFVr1rLISSOBuE=;
        b=mpRcVvCKOua3wawY8pPN/1SC2SvQU08EUGjtqUqpMxBadzkFkNOYO+AXVPB/lHfRKW
         bxdfnd+cjlfBo7lZXT1YC0r+zcvFv0ujTl/OSkpG6EN3hhM+dkX8sPJdmqdqv5kP/ndP
         q9/2jaeYrsQdiRX20l64Fx+WdlZyBRxNqIBWvRfJlZjvwawqD0usbLnQy0N1S8ryvb0s
         xRG5E50dv3AhYPJRC5879w0l0jirh6S7JmEiegVCCobi6TvApWXu4ME7qCSOx0rYlZKT
         RA1xjUoz4bwHEGXcx7cZHBaTiAbJO9G/OD6ELI2bJA4VOQ8wfqnJ7N2FIAkRdqJM4Qnb
         kOUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9vtim7vecHKsaLgJKRr1AQ1wfWVhTbFVr1rLISSOBuE=;
        b=Wsvd2LvjybnHicbSycKPgsgENh6GrdzlS+b29u7NLUAJgAaRJmbuI3gcyJMTDI3zsg
         FT99xo9ROsZEBM/RXjOiEWPgjbyDXWrhxfcaxsqEAdimP0XWlN5YsibztYQn5cXOyeHq
         5nqugWAkMtFoAUjjwJKpnF0cCT1dHPXOygppWUBvWo4auaGEEoXkNx6ptgHzNO1yA7Tt
         nMMeoPb7XPpQvDubuauxF1ya8czskGo5yq97qkr/FhN5DsV5lG2z1LUQVzic0tsh+Opp
         QB8LBS8nz8jdOUp0pxtUG0XKQUq/+xD3LdKKPQlc7vXdfq+VVJrzNxdy8cVCUdnXHPs5
         f6jQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DIMtwMqaAdf+yvxre6cN/ooC4UrlMqcGozMEInWJwx8IcXwnS
	uwGqAdKPHJNQDJvloF2Of9U=
X-Google-Smtp-Source: ABdhPJx94mtFBvp7A3F0DzJMZVApvagGli9LKYDiflimdoYtVgcNOEpoY5+9VoLS/DXHqtY1AZkdaw==
X-Received: by 2002:a6b:3b92:: with SMTP id i140mr1042856ioa.128.1598108218949;
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:22cb:: with SMTP id j11ls643513jat.8.gmail; Sat, 22
 Aug 2020 07:56:58 -0700 (PDT)
X-Received: by 2002:a05:6638:22d0:: with SMTP id j16mr6986905jat.97.1598108218511;
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598108218; cv=none;
        d=google.com; s=arc-20160816;
        b=0/pCzPpkgr7jRrSoVUZzXCm8B9Y+3nWZAcpRczkhLGqXmvmfevcMwiYkbYSxl+7EWf
         z6hu/e5+sP7QID/+cLKf8EXfcI9zh48V7RZMxdIk1rgWXdgE0dM038aJTpo7X8tKVXum
         P8ydUPQPuFvl2Tco7Ne+kfBOo4CyhNw5X9vj8esMXn6IwDy2xfkRX0TrL7bomRji16gb
         Xw+Tp+tG87y5ioJR5NFlxI8Af9wgC6aE70WHGGUPc/1+f8OUvkKFnCx7He8N702esgye
         3wFx3Omwch25QdeYrf3uYXIfoNOn9XUNQiLI/MVSuP8Z/LwtKmh8IghnRTgcRcGTiJXQ
         tvtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=2LiED6o4qkC2vTm0VysN7vwIOPonem+/pgLkJUTzcIg=;
        b=U4+BP0mpi4vRTbdasz7raCA620ZVRGpiPohxj+1KyNT9OzC3A+Oqp8k4Q9R2V4nMPt
         ykaYqQmSg762mcKrmbQymcdDpNf9I+YnzY2ltJwa4t690AIYUcF0Qa89f+v3AQCWdmGO
         fOxhT2fhGXYxwJWlWG0t+wY+TVsX++t7BoCwfqIdAXnr1WUylPDBfpL4UM+kZwLscTQj
         DWJr7crTEYyV0VVonC7cluUgXgKah07jdK4uUjYDkPM97aaReaapCXyDIPUOe1CS+kZ3
         PDuDT59i7OjOludmEGooSFw4sJiIHtINnwo0F5fkZLkThHxMheqNGWFjmp2ukNAQ7gOh
         cwzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=bEVRKmPY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id o74si248541ili.4.2020.08.22.07.56.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07MEuKVP025434;
	Sat, 22 Aug 2020 23:56:20 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07MEuKVP025434
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>, linux-kernel@vger.kernel.org
Subject: [PATCH v3 00/10] kbuild: clang-tidy
Date: Sat, 22 Aug 2020 23:56:08 +0900
Message-Id: <20200822145618.1222514-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=bEVRKmPY;       spf=softfail
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

V3:
Fix minor mistakes pointed out by Nick
Add a new patch (09/10) to remove the warning about
too few .cmd files.

V2:
Keep the previous work-flow.
You can still manually run scripts/gen_compile_commands.json

'make compile_commands.json' or 'make clang-tidy' is handier
for most cases. As Nick noted, there is 3 % loss of the coverage.

If you need the full compilation database that covers all the
compiled C files, please run the script manually.

[1] https://patchwork.kernel.org/patch/11687833/


Masahiro Yamada (9):
  gen_compile_commands: parse only the first line of .*.cmd files
  gen_compile_commands: use choices for --log_levels option
  gen_compile_commands: do not support .cmd files under tools/ directory
  gen_compile_commands: reword the help message of -d option
  gen_compile_commands: make -o option independent of -d option
  gen_compile_commands: move directory walk to a generator function
  gen_compile_commands: support *.o, *.a, modules.order in positional
    argument
  kbuild: wire up the build rule of compile_commands.json to Makefile
  gen_compile_commands: remove the warning about too few .cmd files

Nathan Huckleberry (1):
  Makefile: Add clang-tidy and static analyzer support to makefile

 MAINTAINERS                                 |   1 +
 Makefile                                    |  45 +++-
 scripts/clang-tools/gen_compile_commands.py | 236 ++++++++++++++++++++
 scripts/clang-tools/run-clang-tools.py      |  74 ++++++
 scripts/gen_compile_commands.py             | 151 -------------
 5 files changed, 352 insertions(+), 155 deletions(-)
 create mode 100755 scripts/clang-tools/gen_compile_commands.py
 create mode 100755 scripts/clang-tools/run-clang-tools.py
 delete mode 100755 scripts/gen_compile_commands.py

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822145618.1222514-1-masahiroy%40kernel.org.
