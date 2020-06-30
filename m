Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBGNK5X3QKGQEKCUPYMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E8720F7E4
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 17:07:06 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id k10sf12934747ioh.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 08:07:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593529625; cv=pass;
        d=google.com; s=arc-20160816;
        b=X6ko2zoTo5mtb+V21X0SaFULE7VGH1ohNX1sH+HmD7SJVvbOksviiUiure4ktoq4qG
         u2G4SJrATrFULhaXSsBcxNCvSVizn+c3Ucosi5oERU4hROret1wRkDU3MdjVmC6L4o3e
         IYJ88hiJ6lmp4F9d3kBxtYfE6FGqXFHdFkscUD/W6Voip3fm8ToeHM1HJcyWU4ImUDhi
         IUBtfCX/yJwc+V9u2NswEwUFGZ6gaVphWojYUvPCsFYDQ5gKBMhQ3DG3PA1U8vgeBNiu
         RhJNE7jiGiV3sq3MOkYgVjMkpKe/BBIyWBcYbWXx6v1sG3xSe1GXl7cZ4gTAXvqWqEcz
         GPXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=ZOtvSygNd+zL5NrmmlK7mpboUo+h0+KI8mAe/ppaGJ8=;
        b=THO2anEJlv65+6yjpWfG4YFMHsnfd54peWDClY3xz+YwBhOVRVwsQ7sP29BcNKV6hc
         bNehWZEsSAfQz8HdIEhgklWEFJmg4zEkSq+HYnsbV3rcIUC6A5Vx8OoVyG1a6NzzMjeh
         ssuMK17GUDAWkp9kqOsAr62uy2Pf3aDKTlcuPrxEmhhWPK9oBfaKuqM9mKFC20xshBKA
         XVuxJ0AOl/q27gFHeGKLgLMKQNgobi1IRTK53AOCtR9c9CTrAgtdj8el5SKXka9/yoJ+
         8XezckFfHRkAigKD+iQm6aFG5cOzZ6o8+3REScHMWAsrfdPNbydTIe3i53B32pXd2MRx
         KWxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=VdVrQq7p;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZOtvSygNd+zL5NrmmlK7mpboUo+h0+KI8mAe/ppaGJ8=;
        b=SSSTrWCeuc/RzY4wgBIFrFkco/KKIymjRMx098SAy/MXGvDrJFxNaoEgo6s+w6/KB0
         AjnhGJ+7L/xjDSubIDLL/B0bJ9nJ6J2bsWkypQuOerN9QsgLCZUuoF2Y17QJrO+pQdwh
         4RZxMq49aMtQBBAy0xU47wnmcku5bOzYXkov7UCL47minM6XPeHGMFmddTU+TxFX9iQQ
         eSenv74/WxhlI6Oa4AgUHs1goGkDDBw+QCuLgfx42K9Cfpz+7tHARL74I2k8Qe5glm5b
         g9ggDmjMqX7uokv551OrA6Jlam18IMlaKJrE/CQ9LKSnmplsPCNdUjHdSNxoIZCNBR3+
         JJ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZOtvSygNd+zL5NrmmlK7mpboUo+h0+KI8mAe/ppaGJ8=;
        b=YmtIKMqVOzDDOXhMADTJYoYZYYuiDN5eWf2QNX2CRe9Ag5FpCj/OOeQy+w3HGrHUId
         G/vlUZisnolXonGmD3d9ikBIYFjGlcHWLKmEF1zyWWzQsPLEnbMReuqKtEIJFifkvfvs
         7bkFX0CkAIQLCvkBrxPgqn12Ub/vYhcntRTDyS+2R46mobpmjVDU/aIOnj8RYS1Vvfnr
         Wu1IojgYr/uwAy3t0mT5AFDR2rayH1pcgC1ShP56e3Egt8lR8e/nFXfelygqnHaqWyFd
         mfKBcPBbi3Sjc/YW+9JARAdinlvlOwL7X75mOvklUfKA/ffsP6ik99cwrNz2iJRLzDo+
         zBPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tMyQa4oLdZcgyosJeQOv7qPne0QigakJlX//Wv8wcz0f0m0qn
	aga4h/yXtAstnS2oPdiAbFY=
X-Google-Smtp-Source: ABdhPJwoba/Wp1eIkzC+Y4pTe5He7C0s/vsgPGXSr7ji9Cb00fgUW7tcs81rdYDwXFcmDZnUbraoDg==
X-Received: by 2002:a92:84c7:: with SMTP id y68mr3073196ilk.201.1593529625426;
        Tue, 30 Jun 2020 08:07:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:728:: with SMTP id j8ls185029jad.9.gmail; Tue, 30
 Jun 2020 08:07:05 -0700 (PDT)
X-Received: by 2002:a02:7f89:: with SMTP id r131mr23093214jac.98.1593529625024;
        Tue, 30 Jun 2020 08:07:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593529625; cv=none;
        d=google.com; s=arc-20160816;
        b=qrBk3CJuReWtLog4EM3aPc5gG2KoKTvp2epq2YIQLA8d3jajZO7Ty/475V//mGjQWC
         Ye4RmWtS1K10TAYZXOiZLMU42AmPj49fS+/UNFOOBCHXXCpVqiTFdpQCXBG9h3bbOnqG
         uAHC+FoDFecf1TS1K0yvfTwii5wjc+h3YeKT9HatRUAYDywwyZaSW8H1CGXcZMlYTjwz
         lnGFpw66BGalJBxuu3zEzbD3kk/IO/j/pGajXY6SUJdzn3tIPl0bGjUoyGH35wx0QN8p
         SL4Vh7sMp5cAVvBAjdb4tNc2mxc2wHcZpc8iMTrTNU6T6nEwyeOULCUTuZb+ICTs0S23
         kHgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=VAm+cXSDo5Fh+pmfFmuYCgdzmU5mfMMJMsLOGDZz1aI=;
        b=0rf2hegRkk16xxefSGAn6GH+1Bd9O8QUtLT1XAmB3E/GvaI0vDFQqpD52MnHjEqqRK
         QYMzXQEop78cWkQ3wP+exDEb8SjLx40WWFGTm03B/gYe6ofufi3rxINgxje0urlyDfAT
         JQpA1CtOkeZZr0Wj4KCjrIlmhMfaQF+7VLONfLGNdFRD5v6yihtfhT9mg84Xk3DqmoVM
         26b8zqDB8DXmR5mmV5FpCXf1mc+ZjbMNlfSYA06uOdHoQgOx5s2ocXdQvHnQEQUsMwml
         uFar952GIoK/oDQ49o+qDivlgClVDMW4TPXQFotDsvZKyY6/Zqx/K6d8Qj9W+P0+s/So
         Kk7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=VdVrQq7p;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-08.nifty.com (conuserg-08.nifty.com. [210.131.2.75])
        by gmr-mx.google.com with ESMTPS id f15si186908ilr.0.2020.06.30.08.07.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 08:07:04 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) client-ip=210.131.2.75;
Received: from oscar.flets-west.jp (softbank126090202047.bbtec.net [126.90.202.47]) (authenticated)
	by conuserg-08.nifty.com with ESMTP id 05UF6SbU008591;
	Wed, 1 Jul 2020 00:06:29 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 05UF6SbU008591
X-Nifty-SrcIP: [126.90.202.47]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Sam Ravnborg <sam@ravnborg.org>, clang-built-linux@googlegroups.com
Subject: [PATCH v2 2/2] kbuild: make Clang build userprogs for target architecture
Date: Wed,  1 Jul 2020 00:06:25 +0900
Message-Id: <20200630150625.12056-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200630150625.12056-1-masahiroy@kernel.org>
References: <20200630150625.12056-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=VdVrQq7p;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Programs added 'userprogs' should be compiled for the target
architecture i.e. the same architecture as the kernel.

GCC does this correctly since the target architecture is implied
by the toolchain prefix.

Clang builds userspace programs always for the host architecture
because the target triple is currently missing.

Fix this.

Fixes: 7f3a59db274c ("kbuild: add infrastructure to build userspace programs")
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---

(no changes since v1)

 Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index ac2c61c37a73..bc48810d1655 100644
--- a/Makefile
+++ b/Makefile
@@ -970,8 +970,8 @@ LDFLAGS_vmlinux	+= --pack-dyn-relocs=relr
 endif
 
 # Align the bit size of userspace programs with the kernel
-KBUILD_USERCFLAGS  += $(filter -m32 -m64, $(KBUILD_CFLAGS))
-KBUILD_USERLDFLAGS += $(filter -m32 -m64, $(KBUILD_CFLAGS))
+KBUILD_USERCFLAGS  += $(filter -m32 -m64 --target=%, $(KBUILD_CFLAGS))
+KBUILD_USERLDFLAGS += $(filter -m32 -m64 --target=%, $(KBUILD_CFLAGS))
 
 # make the checker run with the right architecture
 CHECKFLAGS += --arch=$(ARCH)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200630150625.12056-2-masahiroy%40kernel.org.
