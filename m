Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBAX3V6EAMGQEJJXUCFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B323E1774
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 17:02:27 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id a133-20020a1f988b0000b029028407337128sf1381566vke.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 08:02:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628175746; cv=pass;
        d=google.com; s=arc-20160816;
        b=yxSTn/3d57s4UIAJT09xwF4L9oqwOvyKOYOdWw+b80RSmBVAxQRayp8+kgngZ7Kxm2
         ZfY7nEzjLYZPcFrn5baqUcYuwHr9l6V5a5GXWQ7/0qYJSerk8y1puL99MuvGfVJw39I3
         2VLtP6lAdBn+l9vL8kVFwlQkIiENASiWXtkQ5sDeC+zJOj2Pcm/VVWMVpCFSP2pgrRfN
         miabT9hBhGAhqQ56NqrPN+LoWA/ix2aAiq19hrnS3U7mxKK4aGJMJJdPTfKSo17QDVyd
         xvZ5hjuVSdU/lMgmInJctP2PbaNzAriRex7LOQdOD897FIHc1aUeBQ3aVqvu3syvHT03
         oNCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=Mxqvg0h7m/3vrLGu99c+2qVK3e0tMOkTB3uyiayix/M=;
        b=X9mG6YZG9rruDStzOub3XIeYSnToYwtA4QEQkk9UK22lWuV6dKi+mo5F68BcQCzpeB
         NtNA5i8mgb8Z5D5m6dCOMT/vu9VUOmPao0JMNNjNTJX5J9LyaCGbPdL/F+q10n/U8KK6
         YIWAPrTwoFiOQtHc0DZVihoblFuxWZurxvzoXE8al/YL+iRj3Dh7phvAHbVGew1j+Z3m
         tcM1hptE62YuGyJttwIxEQih7wHU1L0JN2JN57EqFqVwsByGZUhaggBCbX/j10SbwFGt
         xrvomFX1X/+3RpizVim0GlGbDS4LLGZ4E0Kw0IaCjdyA8wUmKAEtfFxB7gS4SeOPqBP+
         6/NQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Mo8HJV5A;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mxqvg0h7m/3vrLGu99c+2qVK3e0tMOkTB3uyiayix/M=;
        b=QNTKMhaoB0wc1AF46btRF3pMZ4hqcCwMaJBZkVGa0oSklhzkLq4dmv8vixscQGweYE
         jUtOemloE9HUjHUjUw0IbSFGThUfG987BLAFKDoo410v/RmknSqPZWxUVLT5G8j6bkQ6
         vvYsgXcrbL75uZRFtLHjgAAFU0JDQ47aGlkDI/Pp1wN95l5g9VJFyZyvPuKdsOzCgBnf
         DRqrxv0gAOHAJniMJD55TgDMtP3UfsQYijVt8ko8kMQV085Kyw/byF3CMC1Ei6sFAqDE
         8BmCLHnVt9YnAaupXEnPIiXyLTZXaKdMMbYjori/5nzc+bi/0oJBMZTig5x5Q8tNShsg
         h6yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mxqvg0h7m/3vrLGu99c+2qVK3e0tMOkTB3uyiayix/M=;
        b=peT/qg6uCeT/1sTAnqM2e7RKaag5YUQYi5joBXzTXI2XP2SftXD8NDAOTmZvDsEzdr
         ysmwBUGtnlrCUOL+1cUGish5GTL6f86pvm/mT8Z8V3ZI8p/eceghQM/8/JeulHPqroGC
         XCh+Qftqooi/NLdcgExF4mhuXrk3Q+jXFSaQC43V0wGXFTZqllUJLxGTcxwRjqKVFCn0
         9yB5HdSP9kJ5FGw2g5I1peoRK2H95mziDqX5zxHDvppSTt21IFrQZLrHBOmiWWuB1Yhv
         WY5WZ/oACWBuh5hzLAN7hOv3n+HKNPl9IGf38Q8zP9UELy19gvx2UFF3cQdz7Ur1oZtt
         HuzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kjnNNB9Jl4wFrwtnHHJiv9m3I5misM20s1Ge4P+sN4Jk0bHIC
	paGv+jo/zOl2JPzWugZZ55k=
X-Google-Smtp-Source: ABdhPJz4ymeAmBsxcSz7nJhnS7fYH1ZCvjz/w898971aBzOgE9yKVKHyxmOvlw4rmWh+weTyokFbaQ==
X-Received: by 2002:ac5:cdb8:: with SMTP id l24mr4142097vka.21.1628175746668;
        Thu, 05 Aug 2021 08:02:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c89a:: with SMTP id v26ls1166809vsk.0.gmail; Thu, 05 Aug
 2021 08:02:26 -0700 (PDT)
X-Received: by 2002:a67:ee43:: with SMTP id g3mr5057978vsp.55.1628175746011;
        Thu, 05 Aug 2021 08:02:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628175746; cv=none;
        d=google.com; s=arc-20160816;
        b=Wht2ddez2xUUYDqZJnBYRGndYjXiyRf64HO/jb9bUHrRqWo9Ivdk03aqGp0kaSMl4B
         +bx86cc0v8BlpLKhUnBoShAJojF+lSZi/XhRZRtvj8qX62PMCyZP2CDDS1LIUoJtyuvo
         feMh7TNMn8R8E+aCkRK3Y96A349oNl2AmlKt9KsAw9Qjv4Z6Gkk6F65nuoyIQF/UdPMb
         7Qa84/qt4e+ZDWhN/dYlr3/XmaWOt3EAOGuZ05QB/BK3pGnILNRQ9DKXUghcoM1Yn84f
         XiyTR4LmrR2a0Z8qSgXzVUqHbTy1/YG7UQDjTIvVfVkpPoUHAeJEp+Ejo7DT15KAA1Q6
         S5DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=/sZqN7YYOQzerHeaIfHq5IfDh5zbKuKicEifD7PVFaA=;
        b=NPYG3gMqd1c8RG5FIOHWy6hTWCTJrO8To561aBT9Bp6Oi6qnsKKSyN5urcC0SNz/xv
         o/I58z/YeJMR+tASCn+XkFobdgtBpntY7IhulH20XNk/vkF0v0ZDdLklYHOl9FXXxVTB
         f3uqrOPcMLrz70NNvAqdEmIvJHWOZ9BX8ExujVP1bRO99gTpS3R3skHg0Njdl+sEQpe2
         tW/ibdTcIWOG/2+GeJfjLNm5+L8DMZBfVxQPuAsOYv4da74b0suGB2h+rFSSGxFUlcRn
         Ky1Y4Nav93Ooo7DNK7GdLRpuNNp1XFaZFj4Ix8fpcuKLC+A6T4BEw4Qlb9/TMO9e99Hv
         TEeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Mo8HJV5A;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-07.nifty.com (conuserg-07.nifty.com. [210.131.2.74])
        by gmr-mx.google.com with ESMTPS id j15si226909vki.4.2021.08.05.08.02.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 08:02:25 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) client-ip=210.131.2.74;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-07.nifty.com with ESMTP id 175F13YC019006;
	Fri, 6 Aug 2021 00:01:03 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 175F13YC019006
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH] kbuild: check CONFIG_AS_IS_LLVM instead of LLVM_IAS
Date: Fri,  6 Aug 2021 00:01:02 +0900
Message-Id: <20210805150102.131008-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Mo8HJV5A;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

LLVM_IAS is the user interface to set the -(no-)integrated-as flag,
and it should be used only for that purpose.

LLVM_IAS is checked in some places to determine the assembler type,
but it is not precise.

 $ make CC=gcc LLVM_IAS=1

... will use the GNU assembler since LLVM_IAS=1 is effective only when
$(CC) is clang.

Of course, the combination of CC=gcc and LLVM_IAS=1 does not make
sense, but the build system can be more robust against such insane
input.

Commit ba64beb17493a ("kbuild: check the minimum assembler version in
Kconfig") introduced CONFIG_AS_IS_GNU/LLVM, which is more precise
because Kconfig checks the version string from the assembler in use.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile            | 2 +-
 arch/riscv/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 4ab151060931..8b56c9692c3c 100644
--- a/Makefile
+++ b/Makefile
@@ -844,7 +844,7 @@ else
 DEBUG_CFLAGS	+= -g
 endif
 
-ifneq ($(LLVM_IAS),1)
+ifndef CONFIG_AS_IS_LLVM
 KBUILD_AFLAGS	+= -Wa,-gdwarf-2
 endif
 
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index bc74afdbf31e..dcfbd2a87d41 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -41,7 +41,7 @@ endif
 ifeq ($(CONFIG_LD_IS_LLD),y)
 	KBUILD_CFLAGS += -mno-relax
 	KBUILD_AFLAGS += -mno-relax
-ifneq ($(LLVM_IAS),1)
+ifndef CONFIG_AS_IS_LLVM
 	KBUILD_CFLAGS += -Wa,-mno-relax
 	KBUILD_AFLAGS += -Wa,-mno-relax
 endif
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210805150102.131008-1-masahiroy%40kernel.org.
