Return-Path: <clang-built-linux+bncBDJJN2O66QEBBDFWQH5AKGQED2PVRHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2144324E3ED
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 01:38:53 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id y13sf403310uan.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 16:38:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598053132; cv=pass;
        d=google.com; s=arc-20160816;
        b=AZrLAelt1F06Sx/8YCzBzzu7ehZEJcEFRpRUlD4w9EOmDYi5LgRwcv8BvG9RrAeOzL
         BhGtdWGYABBoOMQ4xKDOrwxoSyDHgJCMmOMewRU6M8cUR5QbRp5P7V72pG0Yc/nZ7jgW
         x4bxX+LmADtlPhRE2WUFPw6rih4X0OueomPJ0/IZ53VVwcXi8MkRJ4IenC73rk8G6lq6
         pkIUQT5U1DPOc4Mz086DmNf28+dtCswslgaXP0LVgT7UDQY64aW9s9HaXL0KU5fr5GYg
         7sPuC61eZqjubccb9Ve0yACpmsRhW80zRQTPNsyMhKUzC0ZgWtgC8sgb9Z8e5mdq4k5L
         Izgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=zgQ6Ra0DHhjeJyVD/7GttDoJuzEpaf33rcC0mImXiJU=;
        b=A3j4ODLCaClubwrt7Svd7f20oQzWvFoZwKcBsGZFnBJpMC+22uS/jqMMkrlxCBC11c
         5mI0d+OuDPdRQsBufxLJwx1dTtCngENPOTwzKf6Tn088umZMO7qlcb3MtbQYRf2+tpaQ
         /gPSe87X1tR4Q6uyQvR0xouOlHDvbCg9h80AQp7slTyPRhqvrYd0QOR9Z3PR5FI09uh2
         ixzfvefhJ2EEDJvaA2aa7keU1/jw6K/p3cUH8cSJW7lQM0uFW7wWubdBOjb9AHtXckMc
         inGOOP//pTx95r21P9yxRCN5knylvCytY61p5+3Ck/bwFhcZomMkBmvMA2J0xKnYs+c9
         CpnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m5SmGIhz;
       spf=pass (google.com: domain of 3c1taxwkkamiksmvvmtt6owwotm.kwu@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3C1tAXwkKAMIksmvvmtt6owwotm.kwu@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zgQ6Ra0DHhjeJyVD/7GttDoJuzEpaf33rcC0mImXiJU=;
        b=CYxHC5TmydoHnbTAFjRupMTHfywMDlbnvX3jhFM+/lz2hujLkbEZ8PIvsZ+n0FHAhZ
         b9X/6orC/vUTg49l4JSHdnDIvJI4V/XHFsh1nhQW+US0l8pdJo4ZeJAm143CzczxENqD
         P1+LqmDsUGeYjx0+psVeKUxJp+SyT2OsFV04m8MXQDNJN2V7QFcZ42bwO/Da1W0DivN/
         4DrBfkv31Ixu9dq6nzbwrHQgH/qBO9PCxH8r7wY4PCBhjOGxpH+ZJ231tiYroj2pnkVk
         Egw8IYa7sOVKSJWMnmn58KTHepV/qixSFPzNkx0k2Y5tE1tejO7iTQnRWLM+4N6kSj/j
         kW2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zgQ6Ra0DHhjeJyVD/7GttDoJuzEpaf33rcC0mImXiJU=;
        b=VmJN6Es7rjj8d/w2ZGwPlZJknRAED7537M5oY8m5EExoFCKRhdMAucKA9pXCG8NTKH
         JdSW5s19CAC9+WLjyYVX8GQTTcS70rGMLHVoOfofzpLtv3wiJUjCvN4HtPIGIL0GDZ4i
         x4gR2nF+2QwJJnfbPR5d1g2wu5/kpmyy6+q/zLG7Ef0ll1eSHs2s7XGdP66K8h+sKFli
         JNLFJZ0EC4jfDTmOWDkJ0xHIvHvqgArqHIIp4rcKiGvtwa9fjtnvIDP5+UDhoSZwr1rt
         IcgQGtyZ5M6sQIv4gV3IEB0EbTwLoVlMU/Bb8wRWfg061qtGc3r9v5hjmFA483rZQtpx
         ji7g==
X-Gm-Message-State: AOAM533T4Um5yeLOOQ0h2XxWQPl8exE9zm79xsA9e5jJfiuZY33VvPD7
	HWWEH7Oy5dmX+nZaVK2J1pQ=
X-Google-Smtp-Source: ABdhPJyhAm+yLzk80e4YjuzQZ1nIkHERZJMzLOCFbExen+jgpcsOMgteC2a7enQoJKwyFmtrhJJjjA==
X-Received: by 2002:a67:8c8a:: with SMTP id o132mr2494143vsd.222.1598053132210;
        Fri, 21 Aug 2020 16:38:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c416:: with SMTP id c22ls461835vsk.4.gmail; Fri, 21 Aug
 2020 16:38:52 -0700 (PDT)
X-Received: by 2002:a67:2287:: with SMTP id i129mr3719302vsi.190.1598053131930;
        Fri, 21 Aug 2020 16:38:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598053131; cv=none;
        d=google.com; s=arc-20160816;
        b=05kaN9lXM6MQBwnuMZWDzELSLt2kv7dTzKEpeGVwDmm/Cxb8e651ZuUHxaEqYhmM3v
         Jw58Jcjbml815VGXOYcc1YXfmIG84nxXGYIQCH7bEaeD4Jnac8dOFGFPhR/lBkEzYoAI
         RCO1m8WE+fX7S9CksAhiVGuJXywEwv+GJuZG9kQ+ycnzkveCGYs0W5D0wxws8J08yrqa
         hCavXuX+EWbii7RscyWHEhgG0X+415G0k+WGjklG8eWHUgMWDzEeGx2jT3+MdhTHHrF2
         dL0zjhiKw8hc3wttXuvoHD5m+HhOKQAnOGyv5CGfbKMBIJ3xSCSrm4wame6IH25YDZA8
         jIUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=AIeTG1aOto6QWgzjIJ7H0uGNsioq4yEktBb08O5yHtY=;
        b=G1K0XsbG5anD5c4RkxGS+viGqEUilY8d6lW2UH2agFxvpyu1LnoJGvCP4/dVtQasMT
         053qLRSpnJpHhyTiB48F3VePkct1az/xqd4rgIGAdXg5pjIM/KJ3LCPiz5jkVWIbx0lg
         RI1ETLTHIxZ0Aqv/vayIBmLBBm+ry2LgAbdL36wWPqy6zBUE1FQTxOziO7i5n9Zgcwi5
         89+CypBO98AtrKTOh31NCFhzKjIm/8B4yYN4aYleLDrCwGJGXbGweiVXynDPPEBFFb/N
         HN/bN4zQjF6eXexgJM5nv6dlxLhPQlCP1GVXqpERgAIHRJL1dYC8mgARJR9USK01EORF
         i/ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m5SmGIhz;
       spf=pass (google.com: domain of 3c1taxwkkamiksmvvmtt6owwotm.kwu@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3C1tAXwkKAMIksmvvmtt6owwotm.kwu@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id y3si266056vke.2.2020.08.21.16.38.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 16:38:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3c1taxwkkamiksmvvmtt6owwotm.kwu@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id p138so3768219yba.12
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 16:38:51 -0700 (PDT)
Sender: "ckennelly via sendgmr" <ckennelly@ckennelly28.nyc.corp.google.com>
X-Received: from ckennelly28.nyc.corp.google.com ([2620:0:1003:1003:3e52:82ff:fe5a:a91a])
 (user=ckennelly job=sendgmr) by 2002:a25:2489:: with SMTP id
 k131mr7431236ybk.221.1598053131440; Fri, 21 Aug 2020 16:38:51 -0700 (PDT)
Date: Fri, 21 Aug 2020 19:38:46 -0400
Message-Id: <20200821233848.3904680-1-ckennelly@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
Subject: [PATCH v4 0/2] Selecting Load Addresses According to p_align
From: "'Chris Kennelly' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Alexey Dobriyan <adobriyan@gmail.com>, 
	Song Liu <songliubraving@fb.com>
Cc: David Rientjes <rientjes@google.com>, Ian Rogers <irogers@google.com>, 
	Hugh Dickens <hughd@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Suren Baghdasaryan <surenb@google.com>, Sandeep Patil <sspatil@google.com>, 
	Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Chris Kennelly <ckennelly@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ckennelly@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=m5SmGIhz;       spf=pass
 (google.com: domain of 3c1taxwkkamiksmvvmtt6owwotm.kwu@flex--ckennelly.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3C1tAXwkKAMIksmvvmtt6owwotm.kwu@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Chris Kennelly <ckennelly@google.com>
Reply-To: Chris Kennelly <ckennelly@google.com>
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

The current ELF loading mechancism provides page-aligned mappings.  This
can lead to the program being loaded in a way unsuitable for
file-backed, transparent huge pages when handling PIE executables.

While specifying -z,max-page-size=0x200000 to the linker will generate
suitably aligned segments for huge pages on x86_64, the executable needs
to be loaded at a suitably aligned address as well.  This alignment
requires the binary's cooperation, as distinct segments need to be
appropriately paddded to be eligible for THP.

For binaries built with increased alignment, this limits the number of
bits usable for ASLR, but provides some randomization over using fixed
load addresses/non-PIE binaries.

Changes V3 -> V4:
* Code tweaks based on on-thread feedback
* Addressed compiler warning

Changes V2 -> V3:
* Minor code tweaks based on off-thread feedback

Changes V1 -> V2:
* Added test

Chris Kennelly (2):
  fs/binfmt_elf: Use PT_LOAD p_align values for suitable start address.
  Add self-test for verifying load alignment.

 fs/binfmt_elf.c                             | 25 ++++++++
 tools/testing/selftests/exec/.gitignore     |  1 +
 tools/testing/selftests/exec/Makefile       |  9 ++-
 tools/testing/selftests/exec/load_address.c | 68 +++++++++++++++++++++
 4 files changed, 101 insertions(+), 2 deletions(-)
 create mode 100644 tools/testing/selftests/exec/load_address.c

-- 
2.28.0.297.g1956fa8f8d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821233848.3904680-1-ckennelly%40google.com.
