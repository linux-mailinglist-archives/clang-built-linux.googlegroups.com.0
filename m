Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBSXXZWJQMGQE7SAXTIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4E351B8B3
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 09:24:59 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id a12-20020a056214062c00b0045a7b4a1a29sf2569189qvx.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 00:24:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651735498; cv=pass;
        d=google.com; s=arc-20160816;
        b=nNyaDVukNdu1UIlU6zlk7XP6KP9o5zgglSJU1gmyLMwfzlCIo8h2w5JgdE5W5bh2CH
         bBVTmbtDVL9NzKhrxidCgc8rSwPNvj9NFdqSahmPJzc/YsVuvZ1KjPyv7GYDtI3VndQS
         ysXGkw8TCmnGudxxX5a7BqV30ZfRqrcaF9wYz78sMfesIp6l6gJKkYpGJbfCsmT0wm1Y
         nGt/h/4sySnmy39EJRnaCOPwILlKWvRzg9sqOMtchr37XrzDsgrnppMNmzDGetia3F/J
         Y9yVyYqqp45i4ucNL/xfEwxt9ng86f5jngslJoxu/Mv69T+e0Pf0g24El0ljSCRqlhy8
         xGEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=B40JrQUJcqYgzk633KMH4Il5xvatuuhaUnkLPZeaOaY=;
        b=0LSP9jfS9pv3p8+lReLOa/vzXfY6m20rAIxfqEDUNaqarxkFQkM08bC3lo3YTZ/hj1
         h/lf1jVcnpWkud0WBFlSUFC/FIwYoRp5pXQklGryMgcl1vs5kABtQHXgC3NXXMZuSGzI
         F2d3CD7pu4sKlAz7gfhfLCYW8EXLmu79haRl5KWhbkFkctG2UccRRFnczRJAfHSLSh8c
         wpwXKYqVAJb3nFEIL5V4F/r78+87ibPJBcvUuOAB70wYk0Yo1BFomcVQ4OKuhW2azKj3
         jK4wYg4jmlIEPe9SJOoP5gqMx0yrl0wRhhO7uIVmr1s/M32evIJrMkQZ8o5ja9s3EHN/
         cxVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=T77AYbWp;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B40JrQUJcqYgzk633KMH4Il5xvatuuhaUnkLPZeaOaY=;
        b=oiNVMKi7bg2xaxfOGBaYUU8z7qCrCWR2RN7DcOWkNiwrkqjFEuQUE3nLSSQROuRsBx
         go714uqhc82gx3IL32yPXh4f66k/zbyeVPmh8YprwDKoprqXuURsIBT5+sTTX/qCYzlO
         asiv1fwMRR3BmOX5uzJ1my/OTSJwKZVdpUYCPoQPjTACIc8LONs7F/7YDZIVRw2/42l+
         VB79gXaR76gbMk+4ugWiBj3mztiqBipvrCROwVNhKXzA6Kg0aQnZt/I1HrYhyJgmYJ5J
         5RLGct1Cl8yGTwqueRIQHLLa2GDMTHRrBXNGR/7LyYrISYQ85sms7AANYW6nK6a7N/XP
         qPDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B40JrQUJcqYgzk633KMH4Il5xvatuuhaUnkLPZeaOaY=;
        b=rYdx9EPH8E0j7+aKamHqS5dIdvB/TOiPQZ+/GK2nklRMQoq6AZ/YlL8fVbHhlxHSEy
         mo7cPDeMDA7HabtMszmPaJJ+KNK85J97gxBvLKspPJFzRNjZ/PsWXTJi/vOWNsczGDUZ
         YjA8YHDO6XWo6ej3YmeMXCQ9oi2uI3GGc7eWaGEJKzpEdpdUbCJwu4qfgxQX3n+fxur5
         KBBt71qyCdesuPYbRgU07xXBI+k6ZjRFG50uaQs6RCGyzD0ANiQC0DWbPHfwTiVRJbK/
         cq0GASFJbWqrqBo69J493X+/o9uPCrNU9+OhzKXKm0iWFnCuWDrvYlzFeanUmYlNlfxh
         v5Gw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328wJy81yBx8IBefEILPo8zRDbCxs1ViO9gA338RitCFMufym3J
	No8yIQouFSspva45QbF4HZQ=
X-Google-Smtp-Source: ABdhPJyb48vDL5gBeWL+n2FI2+2RDpADRJA+1YFsd3ADbVV5Ji1j7mODbmgFSobD//XKEaTGsXlLbw==
X-Received: by 2002:a0c:fd8d:0:b0:456:3481:603c with SMTP id p13-20020a0cfd8d000000b004563481603cmr21069021qvr.69.1651735498197;
        Thu, 05 May 2022 00:24:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1709:b0:69f:9e28:483d with SMTP id
 az9-20020a05620a170900b0069f9e28483dls2619439qkb.2.gmail; Thu, 05 May 2022
 00:24:57 -0700 (PDT)
X-Received: by 2002:a05:620a:71a:b0:6a0:15d6:60cc with SMTP id 26-20020a05620a071a00b006a015d660ccmr4828283qkc.413.1651735497812;
        Thu, 05 May 2022 00:24:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651735497; cv=none;
        d=google.com; s=arc-20160816;
        b=yVCtWVvAklYT+4WJR6R54IYfYH7qNPs2BfoBLAdm4u+6Ad9e1J9V66D5sI8k2lb3UD
         2LC8R5yjuviEQfTagiry9UPMHlQaz0FgBhiVpYlWdlPyrM7zHaBcFF0Tr0mTLbxxlbHY
         aqib8iEspXUrlV2E/jaEgMjDTY6wRft4KndzJOw31vzgVNFYTQ/G0PeD5kICI0Cg6d3e
         qPi/ZWky/FadlUp0/VgnGhMC1AFezH9tQHW/QpQzGt9tK30F7fkaF3wtlr4XjSU5nt/7
         DG14DFLypPrnX1Kzz2NdZVtVSIpyGrq8OQtaTiB+tT5alrwtmBJ3m0lfqFGvLchbHA9q
         Lanw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=mq8Yk8ot1m2mhjLX32XL2W0Bgs0dGB51vVKxKbSTMUk=;
        b=KLTjWiyLGC1RUWP1GUxE/bk2Cm/jDIpeBjeADwX7i9CkmR2MYZi+EeedL4UqdJK7/Y
         RbxsPqUH3XbNfE2t1Pf8w3j5t7Hk/P0EqVeJaieF/wU2+wA2r08UYFmcZcdoEhzoz33O
         PcEB9JFFfYbdx/69a8gbS4dv6RvbSFrg60LplpWXMUFJiMC1jlCbu9bMkBAokJgqkId6
         8VDEeWbXQ3RP7iAnp+hpGjQOfwGBuVxSQE4TTMp9gUSvIGvQlpNXBlCxfpXLLuS5M8qY
         sVLwA4a6dwkhG8lXsqiy+oJ+P2GDsN4y8sXd/xbeasheqa7Nn9hyeme5yFtcp0p0gyWJ
         bLeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=T77AYbWp;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id j10-20020a05620a410a00b0069fc740f4cesi55449qko.1.2022.05.05.00.24.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 00:24:57 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 2457Neni019426;
	Thu, 5 May 2022 16:23:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 2457Neni019426
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        Nicolas Schier a <nicolas@fjasle.eu>, Ard Biesheuvel <ardb@kernel.org>,
        Luis Chamberlain <mcgrof@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
        linux-um@lists.infradead.org, linux-s390@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v3 00/15] kbuild: yet another series of cleanups (modpost, LTO, MODULE_REL_CRCS)
Date: Thu,  5 May 2022 16:22:29 +0900
Message-Id: <20220505072244.1155033-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=T77AYbWp;       spf=softfail
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


This is the third batch of cleanups in this development cycle.

Major changes in v3:

 - Generate symbol CRCs as C code, and remove CONFIG_MODULE_REL_CRCS.

Major changes in v2:

 - V1 did not work with CONFIG_MODULE_REL_CRCS.
   I fixed this for v2.

 - Reflect some review comments in v1

 - Refactor the code more

 - Avoid too long argument error


Masahiro Yamada (15):
  modpost: mitigate false-negatives for static EXPORT_SYMBOL checks
  modpost: change the license of EXPORT_SYMBOL to bool type
  modpost: merge add_{intree_flag,retpoline,staging_flag} to add_header
  modpost: move *.mod.c generation to write_mod_c_files()
  kbuild: generate a list of objects in vmlinux
  kbuild: record symbol versions in *.cmd files
  modpost: extract symbol versions from *.cmd files
  kbuild: link symbol CRCs at final link, removing
    CONFIG_MODULE_REL_CRCS
  kbuild: stop merging *.symversions
  genksyms: adjust the output format to modpost
  kbuild: do not create *.prelink.o for Clang LTO or IBT
  modpost: simplify the ->is_static initialization
  modpost: use hlist for hash table implementation
  kbuild: make built-in.a rule robust against too long argument error
  kbuild: make *.mod rule robust against too long argument error

 arch/powerpc/Kconfig         |   1 -
 arch/s390/Kconfig            |   1 -
 arch/um/Kconfig              |   1 -
 include/asm-generic/export.h |  22 +-
 include/linux/export.h       |  30 +--
 include/linux/symversion.h   |  13 +
 init/Kconfig                 |   4 -
 kernel/module.c              |  10 +-
 scripts/Kbuild.include       |   4 +
 scripts/Makefile.build       | 118 +++------
 scripts/Makefile.lib         |   7 -
 scripts/Makefile.modfinal    |   5 +-
 scripts/Makefile.modpost     |   9 +-
 scripts/genksyms/genksyms.c  |  18 +-
 scripts/link-vmlinux.sh      |  46 ++--
 scripts/mod/file2alias.c     |   2 -
 scripts/mod/list.h           |  52 ++++
 scripts/mod/modpost.c        | 449 ++++++++++++++++++++---------------
 scripts/mod/modpost.h        |   2 +
 19 files changed, 402 insertions(+), 392 deletions(-)
 create mode 100644 include/linux/symversion.h

-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220505072244.1155033-1-masahiroy%40kernel.org.
