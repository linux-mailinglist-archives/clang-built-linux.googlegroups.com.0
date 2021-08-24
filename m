Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDVSSGEQMGQEC3URXSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D003F55CC
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 04:27:28 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id h8-20020a05612201c8b02902860f027dd8sf3232605vko.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:27:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629772046; cv=pass;
        d=google.com; s=arc-20160816;
        b=l+nNL3JjZk4tjR7z6U2ieiN+fZd62P3x9adXiipMXEb08KxloFmM9wC8mqzyY9QIVc
         v2XtXK/KeEKjiCeEqYbWL+1gqdI8mhSme16ikDXegabEBv2Xl1MpBSEHTX7mc3tU/atC
         t0dW15A3WoDWzgvCMnD+7zBtiT7JCUHfCp2bhaebie8HKwmI3XT7xabipFUMj4ModsxS
         TlehULSDwLAne1ON7nTpNKFjRR+fZ/hkPUiMwqUDFiFs2UL0nEqWZBOW3vmQkrJ1Unra
         R2r/VexbHrqJSAFX21nyMBAsuk82+yAgTpVNTDLFgaV4oTnpaFY/uqQMmGhbW7kiJQCk
         JK6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=MopyTkvtLuoeJ/x0K5rP1xvFTP41Ke68K9BLdAj8ejk=;
        b=SgkybVTawiI2355U6sz35Syi4M1YH0+INh+3TaylQEsWCZYq0LDfIKKyGF5n2iBqPK
         u7+qMD0h+p4n+7gzULzHs5jxZtEBRRqLZMn/tr/zG9lW+5jEoDc8oHQIX/RXPEQUbMX3
         U7Z64jZVoMmtmoMl3lCFXajOwRAEcIGJAM3NAMV2J6NvoWXxNR45iWq7SHzlJEeCxraU
         Clhqbb5TlVhYS1TfBnrJVRmvpVnXIoQBRWecEFWXrb5+V87EqBkxGbXgxpidXAscMW3b
         QzrP1cMB9X0x879dJPW9BAvwFwqM2DW7DmJ52EO+xJlPpPv6sfvBqRhXi2x+R/VdhOca
         qZ1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="kkx5au/F";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MopyTkvtLuoeJ/x0K5rP1xvFTP41Ke68K9BLdAj8ejk=;
        b=CQZJ6/hMiq6HwHxTXg42INfOme+cAyzZFiNWXA/OQWxt4KVvPWLHa9/2bqNzvcqEVQ
         Qy53rOyHa88ZTsZqUq3+0r7TunmaPSjbkixVpyj+rlAoWFIISibKvYmQztTvBefX1F9f
         gnOMobbpBpzPVM3cRIlQ7o/t2eh2n/C7aTQPMIZ4aGdClugypEqtoR0xPg/hwvGP4eNL
         JQ6N1k6b2TTmAkqacc0tZHKrovFPbwMRXAHNg+0yFO4obF3PCZBwKITUYSaWIkAYlSzH
         1SuyDYQu9a1wkUGT7QtvfyHIpAiw/bC1w+K6S8BzwAstHvdoOB4hJwn7IJRJdETw75lI
         YRgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MopyTkvtLuoeJ/x0K5rP1xvFTP41Ke68K9BLdAj8ejk=;
        b=TydUBQ1jHTvXlro09PvqxztcsBPFC2TyeSHjDirM39fhfAtYMjmdLzXIBo7ailgJ9c
         bjwBiMONNjWNDAqZLX8Fnm0BJOeFUwDj14GChxmTnIju5mYq4eQNc6I0rM7EP1lQsmOb
         zX11xZYuElRgAWv3uNPsQTARYqeVGUhyBFRSEaFEQH3zJ7T/o+tmyFpyjBYSbU9Dj9ln
         m1DSrt65IrdsZNaqtNnPVdoXcTov/iXR/bxLvGn39+yBDHWmibV9Z4CJtXY72PV0Lqoz
         1R1uwZXzFizQ6YkH+DJuB1+XGFRswpPglvKD/1Oss/qNBqsMA7BBf3UPTPBIqx8xJ/ib
         LKnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532MeNMEmcVtDSp6KJUdsDDv1bDiHPYm+PxrXGwID7PA6mlY/i+J
	m/8eGw8pbRRC62GN+mYh7os=
X-Google-Smtp-Source: ABdhPJxBVTxCe9DyqurFuLAjCrO4FP2qjydBuflRJHKpvZmJsJpUrgMz+UeUhMlJdfW7k4TmYoVu3A==
X-Received: by 2002:ab0:3817:: with SMTP id x23mr6422989uav.2.1629772046250;
        Mon, 23 Aug 2021 19:27:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2401:: with SMTP id f1ls1725583uan.9.gmail; Mon, 23 Aug
 2021 19:27:25 -0700 (PDT)
X-Received: by 2002:ab0:3089:: with SMTP id h9mr13248817ual.94.1629772045795;
        Mon, 23 Aug 2021 19:27:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629772045; cv=none;
        d=google.com; s=arc-20160816;
        b=WQqqwbRfjj5Rgq9wwhYdb06PGTVZ7rLpnleUUmaErS+5kCCB52c7F2FS31KNU1yZVw
         zDs8Kqfjw67bAAFxCyRp12vuwdC8YgtjzS8QyE3vFe8AYmDJbgHy0xDdUxzTFPG2Y1Hy
         ck/vhJvEOAttgIENPmZfL7JN7ftpd6xT71Lqz7XCRTGRjDsoLgVikRht7dKhlgkAtP6O
         GuNzGtevIz+kwkGFuABaW9Tr3kfvQ7xkAFVubbR5fKwWUri/VHtC1Z+nr7zBlpaz44uK
         YmFbyjZtnUsl2FtWT+9eLXbWgbti7dx8/j0b4eLsKHUc2EcLpC7BqZhGtyVmWF6J67ER
         WOKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=BCeAz8vEk3b2rF9cH5mpgNw1RS8ZjDcyx8NQRidV/nw=;
        b=bQPLB+Hv/+LqxVWRI9Atushhza/aYR9mdw4vaifUdzvTd22OFvu1Xwdg2cJuYrluAV
         /vxrtWunTYz3mbryEnIT/hR/ER6TtdfGDdd+nLE5aVZipwnVuVvHCyKywZMDNfJryvwn
         wB39w1yx71VH3Zoeez/OSufwCE3Rqg6FuK81H7D9frqsGPcaPKY7pCcs730D7gPkhmfP
         1hHAosyIGom8oRuveNbs88X2GgqxqjjHC1a4j8XhUGF4mojeM6gcKgAW9SScjzrfbhDe
         UJhsOpsgLLThjPfSoSipIaZOjqq8rs3npG5HhQW76sN3lkT1L3kyLCbN2LVoQkUaeSl3
         /Nlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="kkx5au/F";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z25si1126310uae.0.2021.08.23.19.27.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Aug 2021 19:27:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8100F61373;
	Tue, 24 Aug 2021 02:27:22 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: "H. Peter Anvin" <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	llvm@lists.linux.dev,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 0/2] Harden clang against unknown flag options
Date: Mon, 23 Aug 2021 19:26:38 -0700
Message-Id: <20210824022640.2170859-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="kkx5au/F";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi all,

This series cleans up an issue that was noticed by the kernel test robot
where flags that clang does not implement support for are
unconditionally added to the command line, which causes all subsequent
calls to cc-{disable-warning,option} to fail, meaning developers are
flooded with unnecessary and pointless warnings.

I hope the patches in and of themselves are reasonable and
non-controversial. This is based on Masahiro's kbuild tree as there was
a fairly large refactor around where clang's flags were added so I
figured it would be best to go there with an x86 ack since the first
patch does not depend on anything in -tip.

Cheers,
Nathan

Nathan Chancellor (2):
  x86: Do not add -falign flags unconditionally for clang
  kbuild: Add -Werror=ignored-optimization-argument to CLANG_FLAGS

 arch/x86/Makefile_32.cpu | 12 +++++++++---
 scripts/Makefile.clang   |  4 ++++
 2 files changed, 13 insertions(+), 3 deletions(-)


base-commit: fb3fdea450305d932d933d7e75eead0477249d8e
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210824022640.2170859-1-nathan%40kernel.org.
