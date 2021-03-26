Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMWK6SBAMGQES6KHRGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FC0349D32
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 01:05:08 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id a188sf1275431vke.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 17:05:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616717107; cv=pass;
        d=google.com; s=arc-20160816;
        b=n1PADwUfBNih8kW/bu1j/wSakCPQBidRW6tvzxR4GvTMC6WJ83fUHh7y69vynK7fe2
         S4mACkKFqhWBGPeqmsvqbCq1+0bJUBnKdJCjnmnI0Z3kZOWVZ6XadDb8mZwHYIz9qX76
         jRbbEDxCPO5Cr1Q2EvinwRk99TKMbwT946rlFa1dqxVEPBm3cEpfTiNtqrsPLXYkac60
         Nqyd65+IvmZuI9xkfhPd7JIatUlhkwZ7nB85wVUGSmBLX5yIDa4byVafmGq/b/N8Ei2H
         fJzJui5/8Kg4PjgZl5Kej0ArHEf4iovzRFUDV0z8+A6X1z8ILw3Q/anX91zdXpE/jZwk
         Utgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=f2qs7dtGJNVxSWaYBBD5crU/A35exs2X7BjBiRVXnEQ=;
        b=H/YgtlIpc0Y6kLL08zth39nv87b1ml9mLTG/zHfl3SY0Hjyyv5zoCxMJ1XWw2wy3ca
         8VB9fVlU2porpN3gJKwI/b8qF5ntI9us/uVkAmaVtYHrETO/FjgSUL9kME56+fcyJy7P
         kzrF3xnDZdQ/PEasUock54XpNwVoR1YLCN9MuD5Xwxl1lRat+L5Rrp/gZmqEG6EQuFTp
         rAscCCGF8eOszhHolUMXtdHHTw5t3XlsOm93LTYx8pE+j/kDi0/mK7FCCWQpIqtoI7nr
         FYwBSlkyHOkmnrpGY/vNxZ0T94zx82NWTQSkBmta0xOs6F8y7TVk0pdRxvpsrewrSAPL
         NyQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UeGYgk1X;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f2qs7dtGJNVxSWaYBBD5crU/A35exs2X7BjBiRVXnEQ=;
        b=BZVQqkSk3F2bd+2ZZLsu8R6+TyERrnDti3iHU0Kl5ibvrt8Oieghb0qWN94rMetXPv
         W27zj09yIUvtVaicE9u7h80/+hig5tJyIn5UQ69S7n96P3kdNT7vTlYROieIwZ5CdQZU
         hLqwejDrIGjluYpbh7aOvgy3XDr7EuC4Cb7t8WhxNCLK/vwhBEeMH2bDRRPagclClY1b
         75gfR5oqmTYBG8NrIbNn/G9g7F1IIkuHQJa7GsyTSCXOtzL06Ly8XOFLeiYm9zb/RhYo
         9TXWLdtmAfBe/YDkUd3w9DtT//f8GOojtz3us1A9FV/twBAbuLxNmcvwJYyrdrQ5hIaF
         9AwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f2qs7dtGJNVxSWaYBBD5crU/A35exs2X7BjBiRVXnEQ=;
        b=IgRGgKtwOgiYySXU/823D91ltcW4+pzjrh0PKyrfsow7ReIcczItmx9VZYXSgt8tXw
         JozXNcKkhucLxRdlDTVTiTiAZBJ5kIhEjOW+SbZ2zJ3bEoPxeGCSMOLb/crTZVSYen/M
         fm+gu2KvtAewOpcO1KIIUVrK3iEGdALsrpR8iXWx7vPGXIWGn6buzTt3gkXCR2xj/6PH
         Qy6YN/iyY8iPRDJyEruDbi33xUtDXlzPbzBfUVWNiPlHls9Z0JfwpfDogDEKFEJRXPLP
         QowTxOazejhX91wJZtA3LiKT9cKiDeTsNy+4AabOJPSK5BSt2qkXblJ0xY3o3R6x6YNF
         NUPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Re4dJFm/BbzlvOOBaUj0kfOlUdGIYmDgdplpDt+0VAujO1n8X
	xCBZl9X3yrcSdoFC+sFBzGQ=
X-Google-Smtp-Source: ABdhPJzIgTNXv/pWVJVQcS7VUfpCEroYP+Gidn4LXtrUDjREOdeflQ0KB8WonGbEtYnMwUGNg7+5Hw==
X-Received: by 2002:ab0:2708:: with SMTP id s8mr6829761uao.21.1616717107156;
        Thu, 25 Mar 2021 17:05:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6243:: with SMTP id w64ls977066vsb.0.gmail; Thu, 25 Mar
 2021 17:05:06 -0700 (PDT)
X-Received: by 2002:a67:7f06:: with SMTP id a6mr274017vsd.15.1616717106547;
        Thu, 25 Mar 2021 17:05:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616717106; cv=none;
        d=google.com; s=arc-20160816;
        b=awCzyRm2uawNUtuKTy2w+R0IiBR4ONXfczOdnYWXk/bDbyuhp4JWWoZf6nF+frQCHE
         lcye3gX41coufKWxAlkksg1rmpIxlfLLyZVvpeseoiro9nhLPKDJUfgog6PCLeqso+0O
         cwaYob1NIDUmmPN9MY+9VypuouK4pt4bhFO2+sm35fP8xaxiMknn3lVTx2GHbmDE/oIn
         L0Soyd7ZuT18FJVnztcLs4GOMkFgCgG3kHfq9yxG6RXe+Ifo5jDpMkfs91EIbSu2vuvm
         Fdp9M4Sc/pTOby5bw7BMQBdXOwsVO7EgJz1VyIf/bbOl0pwQbHLdx864ZS29N4s96tL/
         7JYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qPtAVi5y2xKSDDRRLGima5K9LNn6oiLLbuJKlk305do=;
        b=OuAnXSOTXo8fj6Fodo53FbkT6FOGjjv8XKsirhMQi01gFyfaYO0HdWWjNq+en71Hz0
         KEinnJQuS6HZtqnZOlnkY+g+NMd4tblgf/NSLVFteu9Hip/mdk6zY6NfZvbrRVHRS+D1
         8EgdZ7IW+YmIV7Npph3+Jde1SFD+IGJG9kFvrUchTbor2dlFpa2XaQ8fOvZ1YXbkQwk+
         3JbCMA6ka/+GUpR9WVJjx9yYI3oIr/uDOfCzB14A7VXJVDpIQw1ofapZcxbhSFlFjvuQ
         tznTTex3yJWpRxIz+a00JUju8LOqDfIrSyAw8AAMYLuDOhWoKxeYoKRe0eNn9JnGcaYU
         96EA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UeGYgk1X;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v23si367936uak.0.2021.03.25.17.05.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 17:05:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 995C261A0A;
	Fri, 26 Mar 2021 00:05:03 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-efi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 3/3] efi/libstub: Add $(CLANG_FLAGS) to x86 flags
Date: Thu, 25 Mar 2021 17:04:35 -0700
Message-Id: <20210326000435.4785-4-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210326000435.4785-1-nathan@kernel.org>
References: <20210326000435.4785-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UeGYgk1X;       spf=pass
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

When cross compiling x86 on an ARM machine with clang, there are several
errors along the lines of:

arch/x86/include/asm/page_64.h:52:7: error: invalid output constraint
'=D' in asm

This happens because the x86 flags in the EFI stub are not derived from
KBUILD_CFLAGS like the other architectures are and the clang flags that
set the target architecture ('--target=') and the path to the GNU cross
tools ('--prefix=') are not present, meaning that the host architecture
is targeted.

These flags are available as $(CLANG_FLAGS) from the main Makefile so
add them to the cflags for x86 so that cross compiling works as
expected.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/firmware/efi/libstub/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index c23466e05e60..d0537573501e 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -13,7 +13,8 @@ cflags-$(CONFIG_X86)		+= -m$(BITS) -D__KERNEL__ \
 				   -Wno-pointer-sign \
 				   $(call cc-disable-warning, address-of-packed-member) \
 				   $(call cc-disable-warning, gnu) \
-				   -fno-asynchronous-unwind-tables
+				   -fno-asynchronous-unwind-tables \
+				   $(CLANG_FLAGS)
 
 # arm64 uses the full KBUILD_CFLAGS so it's necessary to explicitly
 # disable the stackleak plugin
-- 
2.31.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210326000435.4785-4-nathan%40kernel.org.
