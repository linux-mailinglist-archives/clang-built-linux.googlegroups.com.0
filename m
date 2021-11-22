Return-Path: <clang-built-linux+bncBC53FPW2UIOBBPGR6CGAMGQEGSE5DUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BC1459872
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Nov 2021 00:33:17 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id r15-20020acaa80f000000b002bcc50ca40dsf12695748oie.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Nov 2021 15:33:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637623996; cv=pass;
        d=google.com; s=arc-20160816;
        b=cdB6Nn3KNEf+0JmuIVWmiDe88jYsBh54KP7P//yiJ5CbD2K5rMs19bogjGXhvZITeF
         nVePx2HxaUQfy89TEHO4MmDxfJPmh0/1eZziXXRFz2sMo5kylRtmsrUHRX3EMnlS0w8+
         Gs1DIO7T6eFwBBusomIJiHJwPpaYsK9dn/RU0AC6CSmupN1T3E9djAHTmXJNvy+d4b02
         ZLeqUIvgSFQ2jNCzWGyerAlHk3eK/JFTcNB5JCvzNafiQ/W8ZkSFRTGgbGobxfKPxtIT
         5SX4usgSlTNaKDZGMjV/6G4ypcVjecxI/A4xtmYpO+oLfCqLPAZQgYoF1ZWt6l0dRkG0
         XFoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=m7GWxdsdO96688KEFeqNZpvTroSkJ9rvVSiE4evBgsM=;
        b=y4Ry0Yo5IhyecKGZ3uBDjJwMyCuOKlK0UYKN3t4GeSbiBtafEMHp9r1svglafcNDvf
         NlteTtoO3qqI7Gq+w5uV28Xsok20sQpGU2zEm5dzqvNEgpUTup1a2FQ5l+fAZe8AlIsN
         V6Ls9LeWpBeFhicLjjXU8fr3aWAx02Ahly+Qf8CvpdzjjcoibiDWUKgHbrHNPmMlReCI
         +YMR8byNQGccKgBu5YGJjKNowaZAscF6yqY279ZaGBf81RT/seDuNm7afU9ioD3m7vND
         Sm4Dv5utE7SRdVuMKfM+CmdMw5RZio7GWyM41vsaTbXHONOZZ8jwwVREMkBzPHdMEbP2
         MXAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="O/Ql2y8T";
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m7GWxdsdO96688KEFeqNZpvTroSkJ9rvVSiE4evBgsM=;
        b=UZsOO1GC893nSRAyv+rt3s2VZEjQ8fECOt0Tz4GxKpNiXEKVB8UF47QsCWu18fw/SU
         6YnMKCwCiaheZXAyWH319JVqJzzcrfZGxq/Jhxh8/ZwVQzRzZ1RDEHulehdvSSdKswiJ
         eeYYtjKqjeoZiCEJNterRevxY66o37lKR2csAPx6Vmy0gUxgBHkmu4xQa6xXLtkD33Qm
         +/oMTxLNsStAtlk4CbkDF5YVO8smoE4BAWztE7zKcAiW+gztGdUZK9hP1Qv8M7f6PDe2
         ZGkKwKNsSbvcRSDh4ydA92QIqoyq75NlpYNb1R5P+MBk09aH8p8JbTuzU8qiJHDYRAw4
         wF0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m7GWxdsdO96688KEFeqNZpvTroSkJ9rvVSiE4evBgsM=;
        b=EeX6gaZkz7PJrh0+McyBd7jkcnTshlwd/VZ/wEXqdWU+sXvBjuEf5zqB6G0Ioqsc/V
         upxXB83Z31+nq3GSN8/fRV333htOxKNLJf3QTHyZnCSnApXOqWneHMrmkOVlmcniiO3d
         0j+IrCbAdH2FK5YmdOLgeYEqDkiWvH8LQgJ08TCr9JbwOMhPJrZBbN2iUFfwYyILzhwE
         HjqI2B6MkDpkMqQejHml9f91npwKAF5gmbM+SCSGhHPHInEwmwc7LdpsoG6gPDsgNblz
         Iq+DtffoImDlRJrDOr+YcUtwj/dPR5ngrfSbm5YgpTT/Gv81bVka4HzJO20KcMDA4mye
         UXfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m7GWxdsdO96688KEFeqNZpvTroSkJ9rvVSiE4evBgsM=;
        b=VvEj5gYwSavnWl/pj01XW+XFjP0vUIc5YSwpqg9Ry1seyKDHLfoRrFNmJ8Sbs46Hyz
         0uTOIMsFLn+QgnxlO076xE5Zs+ptoCIZhfY4hEmhJjRL62nmD9xwskK0uX5S4WZt7J/2
         by2LMr2rp2V5ubwrfwDcUt3RQnorIyQie5SGK6vjyQVJdYWA5fdZHtQQvdRHTgvZImRC
         DCPnRGXX4Bea/rtNFoveJIqZrpDUiuUEAb2vLdeh/CABEZmKCu8Xb9jy8pX9PNeM65KG
         wVE30bWeR6bDteOkSdj4yZQg8JvusCfDzgQRhHpVIj6roe2wtFjTbsa4xA+jBF6wFqWF
         MIgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mU0jL9WS1dYZnc2G7HwwKz5LDNGAjnhd6ew9dqSbHOLdocAlW
	mPUxbrCoYVm3iikVNe3na8k=
X-Google-Smtp-Source: ABdhPJx5uJya0mwQtbzyV3vixDHY+OglNU4HL6wuoW7EGoYQo1Wz4z8LtEwRIVJHCgdv7qBzzuNYRw==
X-Received: by 2002:a05:6808:d46:: with SMTP id w6mr1156979oik.130.1637623996395;
        Mon, 22 Nov 2021 15:33:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3116:: with SMTP id b22ls3119474ots.3.gmail; Mon,
 22 Nov 2021 15:33:16 -0800 (PST)
X-Received: by 2002:a9d:5190:: with SMTP id y16mr154865otg.364.1637623996016;
        Mon, 22 Nov 2021 15:33:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637623996; cv=none;
        d=google.com; s=arc-20160816;
        b=CTYohvM4MTqVDqHlTUfelhh6N5kn/BaUL1K/E8npt0IpY8IFRHu1zhVzWxtXzrDdKL
         GMJ3jgz6CQ6z+4OT1hVdp2kCVW2ukCl+8RsBObhogugSpAi6vRnlvpQILmtsb6NskxpO
         9+BFIoIt8X4VsvyTMeqBzJKSq7sWVcANSOZh1PKVOIQyL6wZSNcC24pXVF+8rdvj72ul
         kzBpkEJHLu2rUceV6QaGXflPZlop+GSMZe1AK+b0M+s6DrW31HQipeKuux83NAJwjSDD
         YIM7PLXIvUOlkHKKF55aV49mt/XL3ulEkFy0FoJJV2D9fKuzpCMtj0jSzfekbqeNH/DW
         AIgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=uLPVjCsYRhi/IUuwqEntDZhBROTfx0SAwKIk3hIf1DY=;
        b=kfEJbRdnHT14dR12VyY9r2e6eNaNJAFaLvqfofh1nxGeVy/lEdaF3YE+HfC2jA+AlC
         icr1SBxfXFwHxAL2q+LTv9TqybTPOQdzRENow5orOCytgbpGJXdnx+30DpsF+FEAwBOp
         eCD+F8Dbhb42QKD9i8lFYLUl+6Ha1H83O42mzDJsFrUFM3TzuRKFXwUsAN75MfaD8onP
         IutQ7NEXFAZDE+4iCLQHTOC5n9bfrYsRrbVCcOwCzOzq4bkwJZeQhULk6mpKRD0IDjS3
         3QQle/OrWG2jzmq27WW+Z8V0eaLfx92VlaZclU/s+yd3ZcKk4zGUdKrR0oBVt0p72wLg
         HkeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="O/Ql2y8T";
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id bj28si1130247oib.2.2021.11.22.15.33.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 15:33:16 -0800 (PST)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id v19so15454829plo.7
        for <clang-built-linux@googlegroups.com>; Mon, 22 Nov 2021 15:33:15 -0800 (PST)
X-Received: by 2002:a17:90a:cf85:: with SMTP id i5mr37897000pju.101.1637623995698;
        Mon, 22 Nov 2021 15:33:15 -0800 (PST)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4yct-z7s--tg8y8t-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:50fd:36ff:fe05:e039])
        by smtp.gmail.com with ESMTPSA id y6sm10195837pfi.154.2021.11.22.15.33.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Nov 2021 15:33:15 -0800 (PST)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Subject: [RFC PATCH 0/2] pgo: fixes for LLVM-13 and kernel v5.14+
Date: Tue, 23 Nov 2021 01:33:03 +0200
Message-Id: <20211122233306.155968-1-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="O/Ql2y8T";       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2607:f8b0:4864:20::630
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hello!
I started hacking again on the kees/for-next/clang/pgo tree
now that the __no_profile and noinstr function attributes work.

Unfortunately I noticed the current for-next/clang/pgo tree is broken
from v5.14 onwards and the instrumented kernel fails to boot.
I accumulated following two bug-fix patches that I hope to get reviewed
for the kees/for-next/clang/pgo tree.

The first patch enables processing the raw profile data with LLVM-13 tools
and the second patch fixes a issue with the kernel module loader.

Also a offnote I have plans to publish my kernel tree
on behalf of pgo/modules project. It is an redo of the module 
instrumentation support that I sent RFC patch earlier this year.
I would like to get some eyes on it. ;-)

Jarmo Tiitto (2):
  pgo: Update .profraw file format to version 7
  pgo: Make module.lds.S linker script to merge __llvm_prf_ sections.

 kernel/pgo/fs.c      |  1 +
 kernel/pgo/pgo.h     |  4 +++-
 scripts/module.lds.S | 33 +++++++++++++++++++++++++++++++++
 3 files changed, 37 insertions(+), 1 deletion(-)


base-commit: a15058eaefffc37c31326b59fa08b267b2def603
-- 
2.34.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211122233306.155968-1-jarmo.tiitto%40gmail.com.
