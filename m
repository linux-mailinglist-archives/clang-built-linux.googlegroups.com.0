Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB6NZW6EQMGQEYTSWW5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7203FC37E
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 09:40:43 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id s16-20020aa78bd0000000b003cde387cf77sf743895pfd.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 00:40:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630395642; cv=pass;
        d=google.com; s=arc-20160816;
        b=hDpohzCF5GQ8RwC/IBOzbJ9dJh8z/mAnVHQSnFPRIrOJ8S5aDHBRrtpZlQOMQzGRVO
         GJgnTzSt3hzGKaoxb/GD+TJTdfUbCwMzrDHbLNPtnzhCLA2Tcqwu+g5OP5CFTphbjGHQ
         OnQTZJFNx11hsB8d8GcCwAF4zIFj+uD8U3xzpJQdCQfj3kzysBvwnhm0as+Q88FdWmhb
         vwelDptnVQLaIVNnxXnf6PYY9neH+FUzmHbGYZJFh8HOQx6pHVCbBzVhqZaV5gm53UrU
         UfGAo0O7mhjIB1OHWDfhC56hODW13d9zqCay1U4FPQNbDBSYEhqzW0iLB326dHhb7Q70
         Eobg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=f4rKrKFhiHLD8jHGYIHDoGiJ+hLvieLTlJ/x6ZcteHo=;
        b=iyHkN5yyk7c681MDiEaWc9dcJnU3UR3kYBgJBF9zd+wA4w4wG22UtAmxtsULABzNLN
         Vi01uOJJhfFpAbdif58yAzghLDU6TbmAS18l0UD4A2ASOGZ5mmHkhZNSpgJStADTvn3X
         nrjvQsMPrgGeNUIIJ1whk8eh4QBjtjHoAiPiiehrWFy7sBP9l4HVqVgE24eHVu3+CtBu
         0ZGEXm8SzEhTTJVpyFFiUGIlpfXawGprNxHQx7PuswYYN3SoS9DMj4MnTFBH+jcZ7Hn7
         Bw46ltuZyP3nNKXXySep86dNFQT5iHk3+mgERWwa8osF1ib4PLHD/shSywG6SgLmifUX
         AdJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=pqo3s6ny;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f4rKrKFhiHLD8jHGYIHDoGiJ+hLvieLTlJ/x6ZcteHo=;
        b=Ee377BMUTDzXGAEcJoFshqPvSiYPpe8+cwYLHvxZEO3wtUntXFGqgzvkvNfI0+KDzw
         HTU6GnCVZleV5XHbk5uuqGH7SECthDZ9nUoAKqbJOUt8Ck0Pkqn5GoaHjSJarZeQwAyc
         JUMc0dpuYdVhu0Y0gnY8ibyp+E11Xd/MTYFhJ/JZd7lEI4xEH+CBpp0itbYFCP+hL+xW
         Qo5pfaZkjlZ2+uGGRdI7xyuthZ8UX/sZkYxCPNeKDz2o4s3BSXWzDQafVUUfsczsDFO/
         oxU9a+vHpwnhezFs1FMN2SejqAx/q2EUxx/okT9+Nvsr3XuVXYOwLBN89IGa/9k+HMT8
         qx/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f4rKrKFhiHLD8jHGYIHDoGiJ+hLvieLTlJ/x6ZcteHo=;
        b=aHaoG/I82k7nPf5EstRBBR7qnF/RcLyPWX4D6lIQbT8emDFTtVCT2FnEg3u5aF/Tzf
         o6vPZATJgBRpwE+yx/RRtpOirIQZEUOWr/njZrquLflrAq2bE7EAhnFBCThmirSjsf3s
         +sO3JkSkAXIrSGFlGRSPB2O0vgYD8RG7Cmy1RCuoavHrVqem8wmhSgfUyMmvuh/X2IIm
         EwRBdl4YdalRTzUNWYAwnTjdyExvM5W6q+XL+QQZb/OoihLwdR2JkqEgQtN5dE7Edv/b
         7cq6OwGnYL+/uni145E5qgWvy06CR9Dai54SBXReclVs+KzAGdpQ0N2tXK3ewk1DN1wn
         kJHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532fwe3llO2CZSNWWYur8HViPW8kRPvPalrKVQctiuu3eYnZ1pNC
	f/25+rnn+zbYRjhyWc+V9Ew=
X-Google-Smtp-Source: ABdhPJwR/n3lXuBnhIle1+PiexAKCjU09oaLv2zEtgiCczOnbjTMKaz04w/DFrNGc/xx2/e6mfMTTA==
X-Received: by 2002:a17:902:cec1:b0:138:e176:9676 with SMTP id d1-20020a170902cec100b00138e1769676mr3482276plg.65.1630395642051;
        Tue, 31 Aug 2021 00:40:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2445:: with SMTP id l5ls2798770pls.8.gmail; Tue, 31
 Aug 2021 00:40:41 -0700 (PDT)
X-Received: by 2002:a17:90a:5994:: with SMTP id l20mr3699413pji.201.1630395641501;
        Tue, 31 Aug 2021 00:40:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630395641; cv=none;
        d=google.com; s=arc-20160816;
        b=AOoA+OCk7MOpeeaKDVV8p7oaafQ+FKQl79oW3cN1oXndzcDM8EUk99+J2p7xLCYerR
         wb+Yptvc1zKTzzi8xC9pH5vD3AAGygQOQRwsT0max2I9z1M62nVl0gqLMZbUoy8VdXX4
         PUXb5X/YW5kCEBxfmrTHJlnq4+bE+YHmh7J4pvyOfKPqDA2vWCv4OlmuwPMLnAgDycDi
         /58706tBKQIhMXS9aBUVmTPXGqza2jLwSbhty+4mvwrB/KZEH8B34badiaoesNFCFJ9K
         ky7dnp4m8ImJ7RW5/asUCQ8yJDH/CchAX718mG6WmAJRrYRB+EWLwGQsk+Rw1BYY1gku
         K1zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=vyreOE+xhPd0lfrmBa1SolU1TBZULzHRHFaBsxypS0U=;
        b=GcA9cCZMruIfZTaoIiiH8Bqxn+ZyBT0h+GUmPbFSCu/YiF2tKvZkzaM/PClVsmBX72
         OPSZUIF56vkn8PlGWWLkKcBcLj7Op1aDQk+sUc/BRO0PoRVXhPQASdhGTt3u0zauGwyR
         J36CiKMByKh4uGN7kLOjbPb+9v3Ga3kaxIr0aUdJBuOWbfvKrEVfdrH/jAom37HIIOBP
         UmHpdCVdBYmJPF7vYWWdCEx+pBJ2nFg8U+0b6G6RLeIa3A2+a4RqdTD0stGlb0OKl70h
         D/l2cwx1obJGmNR7+McnQBiQYOmDBW/KRcxBJ3yPHgyMk0vfWaSXymSkzfD2iWCkLU3G
         K94w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=pqo3s6ny;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id t200si555735pfc.0.2021.08.31.00.40.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 00:40:41 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 17V7e8ER031407;
	Tue, 31 Aug 2021 16:40:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 17V7e8ER031407
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/13] kbuild: second round of Clang LTO refactoring
Date: Tue, 31 Aug 2021 16:39:51 +0900
Message-Id: <20210831074004.3195284-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=pqo3s6ny;       spf=softfail
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


Masahiro Yamada (13):
  kbuild: move objtool_args back to scripts/Makefile.build
  kbuild: rename __objtool_obj to objtool
  kbuild: store the objtool command in *.cmd files
  kbuild: factor out OBJECT_FILES_NON_STANDARD check into a macro
  kbuild: detect objtool update without using .SECONDEXPANSION
  kbuild: reuse $(cmd_objtool) for cmd_cc_lto_link_modules
  kbuild: do not create built-in.a.symversions or lib.a.symversions
  kbuild: build modules in the same way with/without Clang LTO
  kbuild: add cmd_and_savecmd macro
  kbuild: rebuild modules when objtool is updated for CONFIG_LTO_CLANG
  kbuild: always postpone CRC links for module versioning
  kbuild: merge cmd_modversions_c and cmd_modversions_S
  kbuild: merge cmd_ar_builtin and cmd_ar_module

 scripts/Kbuild.include    |   6 +-
 scripts/Makefile.build    | 207 ++++++++++++++++----------------------
 scripts/Makefile.lib      |  27 ++---
 scripts/Makefile.modfinal |   4 +-
 scripts/Makefile.modpost  |   7 +-
 scripts/link-vmlinux.sh   |  31 +++---
 scripts/merge-symvers.pl  |  52 ++++++++++
 scripts/mod/modpost.c     |   6 +-
 8 files changed, 175 insertions(+), 165 deletions(-)
 create mode 100644 scripts/merge-symvers.pl

-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831074004.3195284-1-masahiroy%40kernel.org.
