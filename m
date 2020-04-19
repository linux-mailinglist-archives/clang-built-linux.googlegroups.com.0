Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBMEL6H2AKGQE7SL4EKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 088221AFA00
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 14:36:03 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id h184sf2792060wmf.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 05:36:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587299762; cv=pass;
        d=google.com; s=arc-20160816;
        b=KD96egim/kdi/3C3Vv0NJqttsg0XNtbcGwK+fbY0aGEuB3V6/rPTtKGcXk9we2cJtu
         1mJblq6X8UQBLK5dAF/7oXwJ00wDPTbTBTmCYCJpN6H82B3KkfQs2dBdLUYPmhdLuIZr
         Xb0lLMBDohm+ytE7e2SSgAc0Re7dmE7KxlF82wBuVaKGCZJ+RoQGdVDKQpbvjeY/MVm+
         PqmHdK1kbXOI8nikw1+Q78L0RtjfNmhInIoacMAyCNpSVZLL4Q1FBxvJ5B4n9O19ZqmU
         Uq9fKrn9k4b9hsJf+8RtMcP11fzmCeUvQW+qgIgIlBfotl79jIQs6ekLXdHyQnU8rrpP
         QB5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=YA5D6/OxZ3Jnp+g//lCbQLDlr04tPj3QEW9aJzccilw=;
        b=FgyJVYJEQVpZP4une6mTWMsHNjvuz1a9NbdBgBKDO8oePiP20UKJBQnL3VlLpxGJSS
         X1EwQveqPBbzgDk0ZuX1fOqAeegy2wn7TtD18lNKTb3r+RwO5IsrDv3ctzO1sDPWQcVc
         qEplrg9fkQpoSxVn6tIj1go+0ceHvUghN7kIv4+FzzpeXABQeaQRnqxzY7PbAzQ3qR7X
         mMqv/eJVgiFRjWSnc+OhBvrhkbFXFU3I188boaXqQoJ1Z+vU8ZVdHCp1pE0L8FODwU/M
         FXXqhH4n9KB1RtxZV0LWzq458PmU6GJUP/8vjnd8qEqGRY9VW0tPE+jbfITgV0hetfUy
         mWng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=g4s5RV8F;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YA5D6/OxZ3Jnp+g//lCbQLDlr04tPj3QEW9aJzccilw=;
        b=OVkTxMdkSoA2pAua1NAc53ueX0y08O6GmvBcDkEIKmKEv/ITuXzkOqPpLxZ4pHeBqu
         rKJveQQTLRqN0VpNaGM8kETjamNXkv7h0SX4YPac/jPLwOfmdEWcS4GoiccGl9U4bAX+
         ucvlMq2fIvs/l+yRoTlpPrDxmfjAQSjCWV4d+QdEiwMgJ6IVq5ovwV7hjhVIDVk0KxcU
         YhYV0ExdjMsGsuhoRFLfDiOT4Uy/jLQwGAJ0+fvY5oKk8anF7I0NTalO5b6c79WG77S7
         1k4XWzpO8mYRPZfaB8v+8RBgb+QFT9ofK+CQFfVW0DAwXiLnJGHauMkZ0IgfeK9DbUrA
         k0jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YA5D6/OxZ3Jnp+g//lCbQLDlr04tPj3QEW9aJzccilw=;
        b=MofgdptoBs6RPnWRB//p9ehLO8YEWqOMCzNt0I44QSiBOmsStXlmsiW0eBThj7tGOG
         34qqFLDMKEH8XG32c2QFl5ocptCcuF1B8JX58kw68tA/0UNzUHO4ZP1R9XrtUu8jYJig
         fZr/2YGO/mJ7w9Jc9JbLk7+TBwDomBv4LyB6wP83mzZLPoKJQDgZr/qXbeakcqoqMdm3
         iGwCNFlREVgUsjUDtOG4gCPQON2g8lrtWD/bWyE9CInz1KLN5Bvgh66CWiqEL/6RsRUh
         k+/qWx1KuHnHfggeo66K0M7V+MBNbw0QqnRAApdpZh65EAhME3ogHuIEXia5DR1LL4Yj
         XPHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaW1X+9WPi/bPukr2N+DCxXMw/VlMf43zTUd4YMx2sePIMiIStu
	CAg/MceUAqhZ2qHycR/MPtc=
X-Google-Smtp-Source: APiQypIHbTUmyqVUvJ4nC6x2MscLoonwER85V5+Gf85FVzDrkg1HR5IKChdomJO5hXehKg0mGQid8Q==
X-Received: by 2002:adf:c601:: with SMTP id n1mr12926194wrg.381.1587299762706;
        Sun, 19 Apr 2020 05:36:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4a83:: with SMTP id o3ls8298722wrq.7.gmail; Sun, 19 Apr
 2020 05:36:00 -0700 (PDT)
X-Received: by 2002:a17:906:a98c:: with SMTP id jr12mr11777733ejb.148.1587299760146;
        Sun, 19 Apr 2020 05:36:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587299760; cv=none;
        d=google.com; s=arc-20160816;
        b=kFZrDUPmhFEJ9k14c53VzX7OVm/BAdR3xmHMs00SNuCmEJhuH2Jo2TawFuCpwJRna0
         oUtf9+9eqAtcVzzfjEzSlHAPm/IjWFD0TTshhUTTsd49msulc8jHy4y9518Q2iPNQzlv
         hmCZ1KG/8KAuFAcutsxE1dSr8h8AkjjyPk0yh/giIzPzrW57cxh+dE3Q1us7qadMzIh2
         AUPV1Dw5+FDc4vrqMBq07fKBfrmaQ74R5SUx4IkAx+DdzRtBXFV8gI+N5FVh9oW7Ikfb
         avva8PudAczHPuGBsKMWFLeAq6vKJUNyrZVzKB21d07LZAA0z5Gb/wMJnrfs8ab8VS2u
         xItQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ChrUSoSTAeUOQFZlAp8LZ3rHLQuXpNSZx/h/zMpdRro=;
        b=bfeA/DNX8MPV3AoZ3u8KMIY/Yjymap9PIyokszRNGeV6KVvqWyUzAI5Cq4Lzl3XFOX
         /899kg5BNy6zODmjMCP+QmN1F9+R0Ai7D+nrrpkP+iWcDtbPv+jRr/lDEh8gGiBZNskS
         4mJpdZQqC6ymQLKDxHgvyHo+SPms4bsQUxVksyGf96+dRoWlmT3D9aqxmeSoEka5qjz5
         JhUpK0VHho3NEvvWlR0Sf/3fa14/42JIT6EZf1dX0GAoOvoE4bBMFD4MXhMCr94BkY/t
         yd45UqRZ2QZd6qFDVfHydgOSyZ40ni/IP/+AJ+1g+MOtXBkSXQHfBvHLZchXBh4VASWt
         1l/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=g4s5RV8F;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id r26si475062edb.5.2020.04.19.05.36.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2020 05:36:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id A49755C0C22;
	Sun, 19 Apr 2020 14:35:59 +0200 (CEST)
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Cc: arnd@arndb.de,
	ard.biesheuvel@linaro.org,
	robin.murphy@arm.com,
	yamada.masahiro@socionext.com,
	ndesaulniers@google.com,
	manojgupta@google.com,
	jiancai@google.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stefan Agner <stefan@agner.ch>
Subject: [PATCH v2 0/3] ARM: make use of UAL VFP mnemonics when possible
Date: Sun, 19 Apr 2020 14:35:48 +0200
Message-Id: <cover.1587299429.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=g4s5RV8F;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

To build the kernel with Clang's integrated assembler the VFP code needs
to make use of the unified assembler language (UAL) VFP mnemonics.

At first I tried to get rid of the co-processor instructions to access
the floating point unit along with the macros completely. However, due
to missing FPINST/FPINST2 argument support in older binutils versions we
have to keep them around. Once we drop support for binutils 2.24 and
older, the move to UAL VFP mnemonics will be straight forward with this
changes applied.

Tested using Clang with integrated assembler as well as external
(binutils assembler), various gcc/binutils version down to 4.7/2.23.
Disassembled and compared the object files in arch/arm/vfp/ to make
sure this changes leads to the same code. Besides different inlining
behavior I was not able to spot a difference.

In v2 the check for FPINST argument support is now made in Kconfig.

--
Stefan

Stefan Agner (3):
  ARM: use .fpu assembler directives instead of assembler arguments
  ARM: use VFP assembler mnemonics in register load/store macros
  ARM: use VFP assembler mnemonics if available

 arch/arm/Kconfig                 |  2 ++
 arch/arm/Kconfig.assembler       |  6 ++++++
 arch/arm/include/asm/vfp.h       |  2 ++
 arch/arm/include/asm/vfpmacros.h | 31 ++++++++++++++++++++++---------
 arch/arm/vfp/Makefile            |  2 --
 arch/arm/vfp/vfphw.S             | 31 ++++++++++++++++++++-----------
 arch/arm/vfp/vfpinstr.h          | 23 +++++++++++++++++++----
 7 files changed, 71 insertions(+), 26 deletions(-)
 create mode 100644 arch/arm/Kconfig.assembler

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cover.1587299429.git.stefan%40agner.ch.
