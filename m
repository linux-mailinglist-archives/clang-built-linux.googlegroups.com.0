Return-Path: <clang-built-linux+bncBAABBYNU4DZQKGQELJSRNBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8013918EDD8
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 03:09:38 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id q24sf10483351iot.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 19:09:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584929377; cv=pass;
        d=google.com; s=arc-20160816;
        b=ffLNL33kYE+cNfFkbXGSUqZXE3i7N7Mcd8Xp1y87OW3r9RZ4y4LLQra5bTQEBAkjJu
         VSn60EJoom9FLUFjLJohgXfdtm6IYhV3p1c0DNYS6/zOewxP7qHh1/LfGT80/MFHcFcW
         6e04gCtMUtrrReN3QtZOjJtaRp6HT1bwx3YisgRHuoyZPGv2Cwiog6gVAsev8kybDJS2
         BtKSCXj+gOAzGlX09Eo7nVYFmCDGOLiWvGaLQJpPRRYL1NOIELtTK1pz6+yt0X8aRcGN
         ijfWgRZXq+MfxBQp4ytbgWIPItEdZBx9QqUHblIH0lawNsJZO7fcCGhiwGgnPajTn8QJ
         fliA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=Y/8wByQhlr7T3xtUflhdp/FZ0G32H3kwAEXMxNrai2g=;
        b=Xr3+IzfBCiasoIZiRWxpv1Abosx6fsPa3EIFDHJMqd2+GftXZB+2zEMqQfJgBuojN7
         w4BUa75uqm0C+fQXCmKBVnGO3CpYNnjIKxbCiz6xBRzpLtCyLrzsf2p9qTV8Jfo0YEJy
         hRHPMp2dSfOyq9/2HAsTX+yA+JjKN6QI3/3QMFslyB4PjduNaxRlp0+JKWEqGZ5W+RwD
         P103T9pZiEmlsMnyQvkaCEHNzWMaP2UeI138sJXOkanfoxPbchkgztF7bDJyMbkvlG9G
         uhWY8sN987bFEc2NqXcW1uheyJ4wWRQuro44ZwyUuzlGfrAo7J3AqXySjlCX6/6nioa6
         9+hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=QK1JkiQH;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y/8wByQhlr7T3xtUflhdp/FZ0G32H3kwAEXMxNrai2g=;
        b=lr2HlVivU6YWk7KC06V5NwhyYjxE3CEkHVpVk4oltaEGgekZnup2Mbyd81Lzj5C5ND
         GZv/X2lHRYRukGPWEBfh6s9sX0jiSucblNAYGCrreDHdWTebq8y59B7TqRaIrvwabS2K
         V4v3htViTfUIiNBuro4SDcA1zOiOdaKszSqi5iMHp+N3ChCad+ja5LI5JesFjErxmXPY
         bhy17O5ZePFJ6iOOQctxDjs0szjIGZTQMw0+9X2r7s2aPJ4gSRhchekEUvk9Rtj/ebM+
         iPwNZhFXww2CDyYqOQCGNoptCxpF5FayoCd3hXKVcP97996cfUJ3FTnDcMcIA2j3kOy9
         gyUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y/8wByQhlr7T3xtUflhdp/FZ0G32H3kwAEXMxNrai2g=;
        b=Cy2nchk7xxJH3gAroiEk4vdhUp7yhVlJ43qb12VtyvH543dBJ6nwIEYxyHjuf/tirY
         NhtMs2nsATGHPOQod7JxYADAWBtQY9yphKjQPzx1LZJEfWojxXeRNlgRnhnMLtDJJnmi
         1iTiVkNVpL0mJcggY6r2V7V5oHpA0Edsfzc6Uq/JuL4VSAftHDRnXiznU8OMjURJlpjW
         NVLjziaWuopeasUJQgIftHHhBkMrvJe+51BZKttikcq6Ehj2yBGEpKUCOtlNajyCwNIp
         nU9G6Ymkg1YtT/ebT6hxDcczuYJr1ZPbtBWGMkXRreIaOjitUFhg4MvnsgFzConBEG58
         kuGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3AtP7DGYscE44lAt8nM//+CVNt6aXwGFWm85bQ6AO7UGn6RJ89
	Lies4V4a3UOoOOi7V6/Kw9o=
X-Google-Smtp-Source: ADFU+vsZgmj64sKaiNqnTsjeEK49k9/F0EtOs+jv7U6VIXQ1tb8iNDYjxFh6s4RJ6jQNQbSCmaqWow==
X-Received: by 2002:a92:3b1b:: with SMTP id i27mr18525921ila.230.1584929377529;
        Sun, 22 Mar 2020 19:09:37 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3d8d:: with SMTP id k13ls2325886ilf.5.gmail; Sun, 22 Mar
 2020 19:09:37 -0700 (PDT)
X-Received: by 2002:a92:448:: with SMTP id 69mr20257179ile.197.1584929377232;
        Sun, 22 Mar 2020 19:09:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584929377; cv=none;
        d=google.com; s=arc-20160816;
        b=j9u2VRpCu2rJX2w/go+umcTVjOJ9ZW6aOi1w67opl5uJtsojEZYA4ZBlNaseucu8/5
         pw7+2UwXhzg/K5xQ7wjEb+zPrI443AOaTg9kDygs8aKSMrGd15foxaTNxcF5xtojwxZc
         UaOJlexXn8pjHVO5iV7YDshodpz9xC3ZUjVcnrSBPVCqQ9CVK+DdHDNa2ITh/4NeHwJM
         7KXNWTgbM+hIZDM/zErEyGjH3OibNTKpDImM+AhNn3bFqZfEcWjbiEwZ8WZtijsyqdwG
         NXux6V09n4euwWg/DpnkkNsBVXgQoBYuokCkDazZuhfTNPJDVd+gHkMDSYJsPKx0rmIx
         71Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=H8Ul8qvy3/NjGlVWM0US24XZqkIoV6sumKhoWd9ALvU=;
        b=YavbeHPvDQWrSnM59wDUr7j+0U6biANM3WI+oVT7REYMVcLSV1ZHdZMscBUmhpDpzV
         b6xvrwXMtL14F7S4baZMYg75FMb7Xb9IDr5EFWPIF/oZ3aa5lXCNVE2T94jh3aGY9clw
         LWfMSRQaDVXiixGYvqp6rB17GWcF5prUfO1LFHaCSUX7zWK2PVnz59tTJ8GTcva/siAk
         8iG9Q6t+KdPiCU71IR5gQJ7xL6QK+8xbQTGFkYovwdplntXji3aGGSfW7cT0IUI+evHt
         Z3VDHusyS13crHaspyeQrmAzbwnb4wCbgIRnk7Edltzqp5shmNoM6WNkWfFmwNMN0ixK
         P4mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=QK1JkiQH;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id 131si633550iou.1.2020.03.22.19.09.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 19:09:37 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02N28urR002941;
	Mon, 23 Mar 2020 11:08:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02N28urR002941
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: x86@kernel.org, Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
        "H . Peter Anvin" <hpa@zytor.com>
Cc: linux-kernel@vger.kernel.org, "Jason A . Donenfeld" <Jason@zx2c4.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Allison Randal <allison@lohutok.net>, Armijn Hemel <armijn@tjaldur.nl>,
        "David S. Miller" <davem@davemloft.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Ingo Molnar <mingo@redhat.com>,
        Kate Stewart <kstewart@linuxfoundation.org>,
        Song Liu <songliubraving@fb.com>,
        Zhengyuan Liu <liuzhengyuan@kylinos.cn>,
        clang-built-linux@googlegroups.com, linux-crypto@vger.kernel.org
Subject: [PATCH 0/7] x86: remove always-defined CONFIG_AS_* options
Date: Mon, 23 Mar 2020 11:08:37 +0900
Message-Id: <20200323020844.17064-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=QK1JkiQH;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

arch/x86/Makefile tests instruction code by $(call as-instr, ...)

Some of them are very old.
For example, the check for CONFIG_AS_CFI dates back to 2006.

We raise GCC versions from time to time, and we clean old code away.
The same policy applied to binutils.

The current minimal supported version of binutils is 2.21

This is new enough to recognize the instruction in most of
as-instr calls.



Masahiro Yamada (7):
  x86: remove unneeded defined(__ASSEMBLY__) check from asm/dwarf2.h
  x86: remove always-defined CONFIG_AS_CFI
  x86: remove always-defined CONFIG_AS_CFI_SIGNAL_FRAME
  x86: remove always-defined CONFIG_AS_CFI_SECTIONS
  x86: remove always-defined CONFIG_AS_SSSE3
  x86: remove always-defined CONFIG_AS_AVX
  x86: add comments about the binutils version to support code in
    as-instr

 arch/x86/Makefile                             | 21 +++------
 arch/x86/crypto/Makefile                      | 32 ++++++--------
 arch/x86/crypto/aesni-intel_avx-x86_64.S      |  3 --
 arch/x86/crypto/aesni-intel_glue.c            | 14 +-----
 arch/x86/crypto/blake2s-core.S                |  2 -
 arch/x86/crypto/poly1305-x86_64-cryptogams.pl |  8 ----
 arch/x86/crypto/poly1305_glue.c               |  6 +--
 arch/x86/crypto/sha1_ssse3_asm.S              |  4 --
 arch/x86/crypto/sha1_ssse3_glue.c             |  9 +---
 arch/x86/crypto/sha256-avx-asm.S              |  3 --
 arch/x86/crypto/sha256_ssse3_glue.c           |  8 +---
 arch/x86/crypto/sha512-avx-asm.S              |  2 -
 arch/x86/crypto/sha512_ssse3_glue.c           |  7 +--
 arch/x86/include/asm/dwarf2.h                 | 43 -------------------
 arch/x86/include/asm/xor_avx.h                |  9 ----
 lib/raid6/algos.c                             |  2 -
 lib/raid6/recov_ssse3.c                       |  6 ---
 lib/raid6/test/Makefile                       |  3 --
 18 files changed, 26 insertions(+), 156 deletions(-)

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323020844.17064-1-masahiroy%40kernel.org.
