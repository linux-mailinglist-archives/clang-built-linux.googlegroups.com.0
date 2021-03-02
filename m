Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7OR7KAQMGQEUSHU5PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id E20F632AC0C
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 22:07:10 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id h18sf1264142oot.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 13:07:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614719230; cv=pass;
        d=google.com; s=arc-20160816;
        b=RIlHPulGQOBjKyLyERcybbOO6du25wWps2mcJ2COpreKhCVm0uP7HP49WA+hvfktIP
         Kk8T2BeWZHyvQmGkGozlyuiUYQZL+ba7NrJwuadFBi2bH3NURcMPgqA0gdOriEMsEq6K
         buiPTrE/dh1PU27jnRbr4Sty/SleSyv9JDeL5OGEUszXPoBzIj6Tm8gGOrCoqSP4lJ2s
         hn2aZ+uXQ3WcBVAjJm1Xe4qQ/PEfyglVVhZ+KZV0a1ustqDn8b84whmqlZBl644MzUjm
         9qa+rfeRwvmdTh8mju4AUjqPKjSjKmSqQClEi4Ml4UvwIeJyOw2lUyp2AYtea8epqaz9
         eBuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UUOeJ9Z9v0fVm8aAvzNJoxuS55BJ6BF2guncgBIaC5g=;
        b=h5d5lVMW2S5XetnH02eqktVsClx4tvw06zHtoq8lMCX/kMZZvxtqOb/V3XVCbsdwbJ
         NEbinaeVpszHFMWSf5j6y0fRMI0vmykbpcnLBqqTLAGIVI0dgppDWB2LnPlgP7LDnfTO
         wWcF+DejxLO9Og6kQsXeps4aeUBKVhs+pqmVFJtntL2/fbwZfQNRC78cNlvVw10A1lRP
         Zy4ExvQCBaPfvZj8g9bETTlx6JyI8CouCESIpsRESjjI2LRUUpvGxkgYBDxVnUEjR6kU
         ZkSEqvq9/h9EUe5Dj6iRUWulBtm5i/xxy0iMaIwpPdmUSBupYPzT3oKu3W3sG4aCw0W9
         zkuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aSncCNNa;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UUOeJ9Z9v0fVm8aAvzNJoxuS55BJ6BF2guncgBIaC5g=;
        b=IB3PoTJoW+aKmw6PTPay8GS32tChdmacLiUTMbFs16inR0zJ37rpzohx9BgeOtULwL
         b52bq6H9J19OFcgxLmsqUtLj5E3u13oUepxHMCYzTT/ZwIyX1GwZ8KJWQ2JtGiJLyylY
         nrRiBJPM7YtyETdZ59F3jJ9ce6IzzRK1+zGo2yCm4zJr1oxmrHE+7V4T3ckf4FcAo39s
         8UWnXgOGswGEWoj3TIgIMGfu1I+XdFeQ6d+5k6YxOzWmXW6uNJW6QoRVA6bPRsgvm5zY
         1wTkHXNuETmzTwh7qdmmsFqZPSbBAeZw5HaxImqZcnXnNR2cdM66jcJIlsBMAHpgdfRP
         nQlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UUOeJ9Z9v0fVm8aAvzNJoxuS55BJ6BF2guncgBIaC5g=;
        b=T4BM0QVsKqlZT37Kc1hiuqpVJaAtJD8PqF/n3Sm4AVvEonArv73U4esoTWaLTgvfXj
         Tb2pFm+OeLsAwvsVqr7gRTN6aJgv3CzUW8hBaqjgHu8h9wHUwPhIRI9itSBJmWAOAnPS
         qg/gpe8/Cl59rOc0+vgtPP2C4qE/T9iBzYcB1MU2ZTzOSCRx8UrMMwJ7MscVuj5lVuZB
         ft++Ro3TatY4ExFkAhl22sqUSATPtlGZG1MH7aub4/RQPluLuG8c+0bSyBvVGe8nOh43
         fvDI9Je1wOjagngduI6Hw5ss60/RX3AbAN5zum5nNJbzLQ/Sn+scBuTHNsqtyAL6PCif
         Az9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cCvYBof2HUGgkpJwd22soZCTx8fwh/yqHKTAF5qPTucffftjq
	dt8DWHJE0GYdYz1aJFfO+iQ=
X-Google-Smtp-Source: ABdhPJzckdQkIT74eWGA6A2kuCk+mwtZVO3znL/ezBsMVRsFjYh+jgySrQVOU6Sk5oNZESEoWulw/Q==
X-Received: by 2002:a54:4017:: with SMTP id x23mr4802821oie.3.1614719229885;
        Tue, 02 Mar 2021 13:07:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:8c0c:: with SMTP id u12ls1460827ooj.0.gmail; Tue, 02 Mar
 2021 13:07:09 -0800 (PST)
X-Received: by 2002:a05:6820:3c8:: with SMTP id s8mr18172824ooj.49.1614719229556;
        Tue, 02 Mar 2021 13:07:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614719229; cv=none;
        d=google.com; s=arc-20160816;
        b=eQE0ASsHmK41zB0P6WTTAnYeKwdz3NJwqgHfEIF99LAKSj1y2qBNa57NVdzoZwXQMG
         W7H4uUPMekgLzSJC6p1CYqJiSqmAlIRUhmd3tEYWoi1dfhszUoP+ZC9sqPRs7MAk76qc
         FxK4TvrLZMHsfjKLTO7G07ZhTi7EuuIwhatRrqSh5JXhM+GJYhpG55tyURmZ/7RVCsKW
         e/Ta9BSUY3QFWFHGf87LWuly3nbA6BWZjp6L9YfUBJrdObHIDlRjwFEvlRTzmTJ9ScaN
         eGSByj2ByJsyp1VT+bQu/ydmJmfT90nLj/YsMr5AyIIOj7OmcdTulcsNdJzaatf9wVsC
         k2ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=evWSKmygKMqPj4lgidbiqq2oDqOuEpss9eTZ53glFjs=;
        b=rA/JzbnXhyVrxEzY6JhSooP9zZoXZub0QROgLPBnE6Nv4zlfqtKahEzdaqnKoqBNog
         h2Y1y+1iriiUaiBQi1iMNbgZM6n2VrITRiMOp8u97i23dYTCqSxZ9Qy/UMVE9sZHAbnK
         DqDWXhPuaDKiXslBPyDZHjkpRP1WX548UWzaCyvAUq9uxyp8dU0Yd3Gt3Fg+0afRZZOU
         Mvayefv4FfHNLc3QnbV1fs+3mTdz9PB3aBZR8WvkGwI9cA+ZWZMy5MZ55SagLu9zOAIv
         H2myVBZTBtKytYMBGQVkEWdcOIJTbo7DDF7zL6qS6LJLAvxeDJLEuPXt8yhi/CeYo6R+
         thJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aSncCNNa;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p23si1319122otf.2.2021.03.02.13.07.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Mar 2021 13:07:09 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0078F64F21;
	Tue,  2 Mar 2021 21:07:06 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 2/2] Makefile: Only specify '--prefix=' when building with clang + GNU as
Date: Tue,  2 Mar 2021 14:06:46 -0700
Message-Id: <20210302210646.3044738-2-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0.rc0.75.gec125d1bc1
In-Reply-To: <20210302210646.3044738-1-nathan@kernel.org>
References: <20210302210646.3044738-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=aSncCNNa;       spf=pass
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

When building with LLVM_IAS=1, there is no point to specifying
'--prefix=' because that flag is only used to find the cross assembler,
which is clang itself when building with LLVM_IAS=1. All of the other
tools are invoked directly from PATH or a full path specified via the
command line, which does not depend on the value of '--prefix='.

Sharing commands to reproduce issues becomes a little bit easier without
a '--prefix=' value because that '--prefix=' value is specific to a
user's machine due to it being an absolute path.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index c20f0ad8be73..0413b8c594cd 100644
--- a/Makefile
+++ b/Makefile
@@ -566,12 +566,12 @@ CC_VERSION_TEXT = $(shell $(CC) --version 2>/dev/null | head -n 1 | sed 's/\#//g
 ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
 ifneq ($(CROSS_COMPILE),)
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
+ifneq ($(LLVM_IAS),1)
 GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
 CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
-endif
-ifneq ($(LLVM_IAS),1)
 CLANG_FLAGS	+= -no-integrated-as
 endif
+endif
 CLANG_FLAGS	+= -Werror=unknown-warning-option
 KBUILD_CFLAGS	+= $(CLANG_FLAGS)
 KBUILD_AFLAGS	+= $(CLANG_FLAGS)
-- 
2.31.0.rc0.75.gec125d1bc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210302210646.3044738-2-nathan%40kernel.org.
