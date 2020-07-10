Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBOPEUD4AKGQE3ERFWDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id EE15421B214
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 11:17:46 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id w2sf3370740ook.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 02:17:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594372665; cv=pass;
        d=google.com; s=arc-20160816;
        b=xV24aCnS5CPNMiZTOEIwSNTJrqzvu4ISmXukkUtn2mVUlZASOgh6OXEPOnfnfv9jia
         xR/dU5lmj/9D0ogZVuA9EAAecjbIU0NfIsB9hmjJR7wsMcS8Exa9R10fjuE52ITKxdYU
         D2BWvWC8ElL+bw6PkyZa+stDHfgUerg2qe8tBgKRp8t2pLZpgD4FLDyWNZFpIrGsMTKd
         uLRwEnnX6Taun83tgL/sMHVO129EJdyPef+5YZBI21csDKdnr2/mwZFHoeMHo+izKCST
         +wCfBSW8YutrVfQWUKAP6JgnIsumHP9vovYuY/H/HrZMED0yu9v/mdo/Wrny3U+l3JU4
         lLfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=JotYxtgY8Vt8MPksPb9mTk/p3ojOl8do6z7YgtkNmvY=;
        b=rDYerxaQQ9mrYBDSMxrzSOZaKdlGqgRtIbqEQAricCGGXmudkGTaCstk5pF3ogxweL
         tICLbjbQbx7Nw/eDqZmqPS5OEgvL1TtFagxpMYYoiYB/xPP5/PRx62bf+m22VFPQeVRq
         hepjNiJ1uZ18MiTIyLasgHFktNjjkon7w2By+eIIdpKiXYg8gBqJUiOTiMiPtGq9UFb9
         cl8L5RRtHKqBOZyvUyXK2BVxGco5rbCnL2ilw1007cNb9iIm/pt337xAwpJNO4m6b8ip
         7NYo6C78JjmGN8++JPrSOiHr4ABQ8VeQNNubf0Z1CTW7SW8fKBMAmuCN586lxCdjvsZR
         PNSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WfzeSuob;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JotYxtgY8Vt8MPksPb9mTk/p3ojOl8do6z7YgtkNmvY=;
        b=hZCG3fMWblopmJe1YpabBIp/R53y84mkvAxCo142DpppPoGraYTCdCQKklJL1cf4ba
         O9U+pBBdRiV5eWRvBtcbwuz/lQzUvvTgmpVwTWzN7ziF4XQ722xKIxHc/fGuRdq1OTOu
         tdWvAtPQ6BFptd31lPjvyuXC2cK77kE1g8dBUXoEfIQcj3u4LBeijyRnhIhQiyzVGDrY
         ei3m9j3YXdxkdI+B17GKc3xuB4mdPBJxaA6FiTpq+Dp6klH1SUzq5VOvDFlA1OBcHA/N
         n/N254ZA7T3Xw0K9RAR8exmrjo7/6XNiRgzNtHCZdUWJ3n5jMKK2pO+XQ+aiiWV9GpoT
         8Cuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JotYxtgY8Vt8MPksPb9mTk/p3ojOl8do6z7YgtkNmvY=;
        b=Q+BT/JU94wP9hq+k+NRVYel5cRhm0R0DCoYGDlk3ut74ycs9I9X+fGr8hBcLFt+ax/
         AyeqMojDIUsTsqyAzPq5J7NeQEu2DIYU7MvMgQpy762nK6k0IVwtJ00tsFiViYhr6sE1
         tarQXGuae+UvE6StXuFlRIW4BoERYW/rBH9wyjvw91pz1TvKEkuYVVOfg7f1K5GlsboS
         NxH2CIOsoLHjrOGykeEqKPySupGQRkfJlWQv3t+GHDR0AGzWPEZdU5/XuID4F3gosHPP
         M91CJuVHfsGr1PauW/XxEgmAEAddMZSZYanbYrcSA5m+2oK+I1d4o2pv3PMFkxIOUYPU
         UgUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JotYxtgY8Vt8MPksPb9mTk/p3ojOl8do6z7YgtkNmvY=;
        b=PZIvH6CkJxBvI7YH/Zd0bIURyIzCMpG/4hyS07oiLnTWWR/pvXNOJcYY1auW7dTxTw
         j5SStn8Kd0IIHLV7eCBMifX6RyuCuBXQWZELuRm9y5VEd/fKI8DjIqL4V0kBFl8VD5qL
         pWat2THSiHrOAgqDG2Pvw9A4TmNzqsMOAYAG/ViQN4tEtaeYA/RZx8yO6jf3Humz+K85
         og5H28Jeu5XeE6oXmx8czW8+cY4xmgBfYHfbJokksRLEWYUxKpW3xJ+8AgAeqQHAwOhX
         JB1+1xLilj4FgVsIGFEe7RQCRd34YM94f9xRIRwwhP5QiOKF8OvzPN7YMn8cVL0vl/w6
         rmWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xBOKcgtzceDaWItbY37C1et2mme4x9gR8hl3bwlNLMP9Gh1Mn
	0dCaAo4+/93rcHN+e8ADXhM=
X-Google-Smtp-Source: ABdhPJyEkS0Z80pnN86+vQSUEdDRgXXrggOQ/XZS+iy5iRXpg0GusmftPtPvBQGPwN/f8Cpp54nWwQ==
X-Received: by 2002:a05:6830:1456:: with SMTP id w22mr42565128otp.117.1594372665623;
        Fri, 10 Jul 2020 02:17:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3116:: with SMTP id b22ls1850134ots.6.gmail; Fri,
 10 Jul 2020 02:17:45 -0700 (PDT)
X-Received: by 2002:a9d:7d8e:: with SMTP id j14mr60769356otn.35.1594372665283;
        Fri, 10 Jul 2020 02:17:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594372665; cv=none;
        d=google.com; s=arc-20160816;
        b=HxDjZG4vC8UXDUHbwEmc7afYi24ydGVus1+MHSzSXbtqnliYY4atc3QW5VZyYRGMqd
         tUrA4fDjel6efUVLUmB0w9fM23awdQ/algJowhnpbHp8oQ63kjuDqjLw/tpC9moVftMt
         LYs7b2kOl+ybd+B4oHwRdusEGEBiryK5syWg69c5dArBR2pkPP1xCx7LyZXM3vQ64K4i
         B878N3+GpWgAXw1reb2EGEMs9pDYKsQ0mYs+Ng3Cxt8bXnTDvgS4rxinPAP/gr129OKa
         4Y2P8Zvq1vQuBVevWNvSJuR9ui+Nb5Q4IfpbSGIQatziDalevfIFxCw4tHj+CbwMpRcK
         O/8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=QZcfofaAiRdiS4Y00mVc9t22b6QsLSvbdGPCar/Bgfw=;
        b=SU83RNwQ6FLrfVf+9kGRXmbxeJarWetz7ucwOMm4lGmOqwT6DnN2vkqE6Qr1lTHQkP
         JV950s6DpoxQM4W4FtZ6q9t9dH+O8I1IJbwQqumFJ9yKVh61F1FtGerRJoIpz8XKAJEF
         CHRLmkvV4U+r1DNBYg2i7HjAvGZWOKga0K9CCkDFvL46i5pNqx84tr7fGXP70/5zpbhI
         FR3oqZMuUgHhvMhPiRj2rTySSwqs7076+i87Kz3uXhsFA6chjtoHMYwBz42imvw2rZtL
         gE18Mx3JPC0b0IVApBTOb6H738yHKfkORCdg75ctO8n8p1ReaM1WHLWuAK0D8LRPVotq
         qPsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WfzeSuob;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id b128si219320oii.3.2020.07.10.02.17.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 02:17:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id y2so5322881ioy.3
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 02:17:45 -0700 (PDT)
X-Received: by 2002:a5e:9309:: with SMTP id k9mr45686369iom.135.1594372665059;
 Fri, 10 Jul 2020 02:17:45 -0700 (PDT)
MIME-Version: 1.0
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 10 Jul 2020 11:17:33 +0200
Message-ID: <CA+icZUWQVrph_Rv9O=Q4Fh8Y0jXzkWGCHN5DFAaCZeE5eXoPbw@mail.gmail.com>
Subject: Re: x86: crypto: fix building crc32c with clang ias
To: Arnd Bergmann <arnd@arndb.de>, Herbert Xu <herbert@gondor.apana.org.au>, 
	"David S. Miller" <davem@davemloft.net>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, x86@kernel.org, Tim Chen <tim.c.chen@linux.intel.com>
Cc: "H. Peter Anvin" <hpa@zytor.com>, Boris Ostrovsky <boris.ostrovsky@oracle.com>, 
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Jiri Slaby <jslaby@suse.cz>, Peter Zijlstra <peterz@infradead.org>, linux-crypto@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WfzeSuob;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

[ Please CC me I am not subscribed to this ML ]
[ Original patch from Arnd (see [0]) ]

Hi,

as reported in [1] this is the last patch we "ClangBuiltLinux folks"
need to be full compliant with LLVM_IAS=1 (for example with Linux
v5.8-rc4).

These two commits entered recently cryptodev-2.6.git:

commit 44069737ac9625a0f02f0f7f5ab96aae4cd819bc
"crypto: aesni - add compatibility with IAS"

commit 3347c8a079d67af21760a78cc5f2abbcf06d9571
"crypto: aesni - Fix build with LLVM_IAS=1"

With these three patches we are full compliant with LLVM_IAS=1 in
x86/crypto tree.

Feel free to add my:
   Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
   Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

Thanks.

Regards,
- Sedat -

[0] https://lore.kernel.org/patchwork/patch/1248401/
[1] https://marc.info/?l=linux-crypto-vger&m=159437162224847&w=2
[2] https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git/commit/?id=44069737ac9625a0f02f0f7f5ab96aae4cd819bc
[3] https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git/commit/?id=3347c8a079d67af21760a78cc5f2abbcf06d9571

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWQVrph_Rv9O%3DQ4Fh8Y0jXzkWGCHN5DFAaCZeE5eXoPbw%40mail.gmail.com.
