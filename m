Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBNP4SCDQMGQEU5ZEBSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 6830D3BCF19
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Jul 2021 13:27:50 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id a60-20020a9d26420000b0290448d2be15e6sf15149214otb.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Jul 2021 04:27:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625570869; cv=pass;
        d=google.com; s=arc-20160816;
        b=jI/h1zWxu3uozL6nsdWNJlfufmutnLQU1m2OTNj03JPVS2AbZlhAlLQ5pm5TC1bW4G
         aQQGWxL3XqmmQxlEbXj69w3Iq+bdwvk6+mcgATLp3C9cwldQd5mWy2jf8VxXM902hmdv
         FsGfkXYjIoBP4zwkiPTW7bKRslio3d5u7sGWI65KBgSVrwaNJ3pY1ltzNhmbi/gd0T8v
         oRFzJUlqSe8TzyME6XmG660Tj8WUJEP3cA/vA0rCh6YFhxUwL0twoL2XoaY8gjv/iMUB
         q/RZ3EEt4kgegcobzs8vSN6Z737bOOH1kYioh6YbaPip+I1YnD/Rol0zLidvbgq3jR3M
         tSCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=H0d3vvYnjI/IxI2avcGWmRNiSp7ADwJVJ+J3hhMXUME=;
        b=W+TICe3Th5n6/jBqU1E4jAjESMXoBlUXS+xQpom9AmHma8QXLLhrpnqAULxvbjATAY
         gzN1YGdok9x8yOliYyJT1hZzLEnb8h2laDXC9olOZMBUDxtAXlL3KIP2HtLQ1Fmj2gt4
         FdUClMbNInixhSiJd8xt20zgI2gVOjYfG+Bpn0eWzyzcSGNPCMV6ZjZiYM89XHV8YLNY
         bjvYy7dcvw5JTH+gyRfTTndqg2UdViZU+ozt4mQrerZD0vRiEpU8hcu+/Gtw2YE4vNQ6
         rMCBndHJ6yUaar9SfU1/HpuoZBH0H7+d7rq2GH1rEZnf4Irxs0gfKVSjv4Frr0hEp3wI
         v5fQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bis4JJhF;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H0d3vvYnjI/IxI2avcGWmRNiSp7ADwJVJ+J3hhMXUME=;
        b=iAcsLfKSN87FEDUK5eITwDKCZksqIdLwsI7ZnbMpWZllmoKe00FX0ruBMAa0BBfcYm
         W9Zj8vFvFyBG0PBWZeBhC4ALSZQBwLMoKpqFkcaWvnSLsfzlNK2TKtKijtN/XLTdhsBJ
         9Gx7PTShA32D5Wajd0Bm6x/4yj8klk80XwnUjIGrHnjStfKuiLS88zDs9cEE+CGEGi7x
         9QLLG7RTyYXOEDhCFszg9HOB/HzIJMh68OzHadjVfCOsA5J2rMyaus0gDAJl430HJqe4
         lmVqjOaZhCp5x/0y8Vx7Tl7BSAP7Jr4atouAk/3WqAu2RskVtsOJZ0ZpAISaF+YG4CQ1
         1e1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H0d3vvYnjI/IxI2avcGWmRNiSp7ADwJVJ+J3hhMXUME=;
        b=jfz425+yDQ+ekL/2jJWsAwsambj2Fx8hJIQWCx8vgYaBD7xQIiZHzaF2PAluFNTi7u
         mMkoxENMpp/9ArCq+1B31+qDnxgczCSLutan54VK4WLcf/Tu2Qcr7t5zNUASqkyHkKFr
         WcTA2648VUSLHw4njgy2ncifHXqX6feluS12AjMGibM1gAIDxGivydl3CFqubJIWh2/I
         oDwSAieJlIq8dub2DcyPXQwEMZt9l6ZuHXo1pUyJEPfxZxmQWa6cF1Ebqu+kNZnZtvYU
         PIYy9RO6583AVaSMtvK+AL2L0s/Umup+VZujV8jUHcAf9q3l9JxIs+qt8ha1JpUdu9v6
         BXng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533B2oy+OECw8+E4pTGv0OHLEoPAn9W6R60ujzfZcNZp2zzXvXOQ
	zPbKbS1D41v3NzvW7LcMfHc=
X-Google-Smtp-Source: ABdhPJwYRV0OzZhV9WgLna6QuLUbprK7YO9IPOpZ3W2S7IPucfZByDT1cIgFr/UR/fRqKgWck0Nlaw==
X-Received: by 2002:aca:1918:: with SMTP id l24mr50817oii.29.1625570869455;
        Tue, 06 Jul 2021 04:27:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b304:: with SMTP id c4ls8210542oif.8.gmail; Tue, 06 Jul
 2021 04:27:49 -0700 (PDT)
X-Received: by 2002:a54:4805:: with SMTP id j5mr13771711oij.161.1625570869070;
        Tue, 06 Jul 2021 04:27:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625570869; cv=none;
        d=google.com; s=arc-20160816;
        b=Ppka86nFdLrAcwopK/ZjyIlfCTJDtGQyILA1MmBjYme27EoLDA58LOuole4zswimbt
         KwmfnSeuB06EMjZOiPXNzS0UoGT5hgLu1n+m3Jjd4pTrRJIcp3XyVMgr7ebjGGbv4DAW
         K4yJJwkfbfUP3wSUbfrTCQ3GuLbbzML0BsXEskjD2smNL12Yk4MxdUHgbiL6ZRHKPePJ
         7GHX48DsbNmQincNDa+m43PpZcsQLD3+wCm/M8HeLk2Uw35UHJw5C0XESaMqGQX15zyB
         YvVwnSg/vvMVPusQwmErrvZIrY/26REjmoy0SgdzJx3QWPIcEuy7xzufj/FqO3cfLMBK
         UC1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NrEOVRqghY6V6nBEEn9z3IDCvkoMAgscabk4J240/iQ=;
        b=rQSlPXrguRlsidHjQawmThhsATvZVhhoyCtXk8UxiU/Z8DvwWlMxB49eVC552R7+Dr
         CQKzGKh3EOwhOkz0JjMIpV7GQarcBD+UugIswQn0274PN1AA1o+Lfnwp9AIeiQYcdqV0
         fgKLP0chEEHR86BGhXtFFGeUo6TXQKI0w0XfGHnWhyDKkWXeguwNc/bHe1rsw1aio48m
         xwQ8Mh9A43SfbutJZrokaP817SxrSZJn4bcyhdJLQw0eAtwet1Ut3End0MjuMDSNAbv2
         8QfzJm6NFUZf8TuefXJz+7CcTeProTlfCATCCBuaphIomQjkyWUMdxuuMrN001FCKC9X
         HgxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bis4JJhF;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v8si37922otn.0.2021.07.06.04.27.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 04:27:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7CE3E61D98;
	Tue,  6 Jul 2021 11:27:47 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Sasha Levin <sashal@kernel.org>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 55/55] MIPS: set mips32r5 for virt extensions
Date: Tue,  6 Jul 2021 07:26:38 -0400
Message-Id: <20210706112638.2065023-55-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210706112638.2065023-1-sashal@kernel.org>
References: <20210706112638.2065023-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=bis4JJhF;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Nick Desaulniers <ndesaulniers@google.com>

[ Upstream commit c994a3ec7ecc8bd2a837b2061e8a76eb8efc082b ]

Clang's integrated assembler only accepts these instructions when the
cpu is set to mips32r5. With this change, we can assemble
malta_defconfig with Clang via `make LLVM_IAS=1`.

Link: https://github.com/ClangBuiltLinux/linux/issues/763
Reported-by: Dmitry Golovin <dima@golovin.in>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/include/asm/mipsregs.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
index f9a7c137be9f..c8333782a670 100644
--- a/arch/mips/include/asm/mipsregs.h
+++ b/arch/mips/include/asm/mipsregs.h
@@ -1986,7 +1986,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 ({ int __res;								\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips32r2\n\t"					\
+		".set\tmips32r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"mfgc0\t%0, " #source ", %1\n\t"			\
 		".set\tpop"						\
@@ -1999,7 +1999,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 ({ unsigned long long __res;						\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips64r2\n\t"					\
+		".set\tmips64r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"dmfgc0\t%0, " #source ", %1\n\t"			\
 		".set\tpop"						\
@@ -2012,7 +2012,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 do {									\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips32r2\n\t"					\
+		".set\tmips32r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"mtgc0\t%z0, " #register ", %1\n\t"			\
 		".set\tpop"						\
@@ -2024,7 +2024,7 @@ do {									\
 do {									\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips64r2\n\t"					\
+		".set\tmips64r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"dmtgc0\t%z0, " #register ", %1\n\t"			\
 		".set\tpop"						\
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210706112638.2065023-55-sashal%40kernel.org.
