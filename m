Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXUDZ37QKGQEHGSKSHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 463982E9F20
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 22:00:16 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id 32sf14108746plf.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 13:00:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609794015; cv=pass;
        d=google.com; s=arc-20160816;
        b=lI6Ac8us3+HG5nysXLgmrE1sfNL6vlQyyp/6uQ3jtwHMjHzocXd1rQS+uaUpadkt+s
         lWcGtJl92VveCrBzoEubGMsKmeNQKVVG+Fhb4K5T8hRWf8LZtM0w84FwqkoMoE68sRfY
         xjCW0evz4qCLjSwaeKszA3yLZG06wmMgHgyMpH8+vDiY4kLVIJb6WnaFTv0yRit3mFUL
         eTlaBdAPfS5Zg/qloZXwe7Ctn5IRe6uxjP1jHV9HTnfGbQnh2SOfX2JT3CypyNJrbRai
         zgonr7ZImTMp97lAvbeQGHdky7sYo7ku1x8NNg0TlF3tjLKbH03e4PlX2JyAQ1x0uqWK
         J5qQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=ZakOJON6hBSOStN8jiUITIPDQCr4v8pzCvQHuAUzliw=;
        b=1HvPh7f2ulCf+9GQrZY1RBnAqRe2TV31txOXu+sJljKcwMCMARsnY0D/ei9I+WekOS
         y3xRuJwd9avf8f32ZTNvCTwDI3NVRjb/6rCBbsV0uEP8rhm5RNoxn5hbxVkkQpjBjTEU
         HQCJVOV1mgjCkISkZjgKQ/pUFfUgVgNQ4Eydmptx8twFms4PPrzp1lzXTsZCNdLtQu+x
         6+0Y/Hg9GlRgRQQYJnsSLP/LMtMafOa8IYR+Bljy42aBjw6PgXAFXKPRCPzqe6SrgGWp
         y/6oy+FIbYp4JwQmgDcmdU/lKuUoONPs0FDxOOOKGrxepe7NpTywCcwAvyv5rZHFtaJ3
         HBuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tXg34Bi0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f31 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZakOJON6hBSOStN8jiUITIPDQCr4v8pzCvQHuAUzliw=;
        b=XvjarpnboLsfU09dHON50pw8n6LJqQ+JPm0PrZZMbnqXdlnGoCJYceSutQm8q3grJ+
         9pUXlHXO9VzWjvyRneXjGL6zPcateNtBt5kebGTsHPZHcZipV5FXCtx5rBaBS8PM9S0P
         sJ1htjcphKEYQY4fAYnyMNf2qqmr4c3XlkQk87blHDGA9rdTtw8W/GGxTKJ6/n6DhNSA
         qhPjz6k3ya6z3Et6n4wij4XSzi/3oH0loQByRmIYqXjloPr5nfR9qyPB0+2Tv3UP7XHY
         o1QDCTQ96dCdQP9K3dN6FiJ4lKhEbqezfvDH5ZqD72ICHGa+FAHd2CSWdL359u+Rs2F6
         hBjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZakOJON6hBSOStN8jiUITIPDQCr4v8pzCvQHuAUzliw=;
        b=j95L42cf2Uf8HovH9OYj9gFawh7yfSn0SVNNinBQjJ9+aAexfO8ktEdbrdIAiP3Ezi
         7ljSBHPZX0X7clpW3Tq8u/j8UZbJ8CFgyB3e6DmNotHRJiBEbIzSKWjNdvK9Mh+2hg2Q
         h7MxFp1pjoZaKuzqpmhHGKx6vZpoHzXOrOnrasgLglAosbdBGN354WvTF+ympN9cQLSq
         EeWRsolYEguVSO+SYYrffZOovMwAdFoLbgYlUTcMS1aIZfv5CVvgpALud7IFSa4a2bFJ
         zSZdjqrzVeLDnXh8SAwtv9nBTt2ehzDAqNaY5+o24Lp9lcGxnUNQzWdX/qXi8pmhgiH8
         f7xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZakOJON6hBSOStN8jiUITIPDQCr4v8pzCvQHuAUzliw=;
        b=Epa0KS1CC8SqH7Kir2wNZFG+vrgL+pGuKjfP+sf2Z5N/koFW6Mdb7PB+zpW9PMSlF5
         9b4qMrhYswnghGgdgZ8+p8f8+WQtXzTIAaaKs3b/iUvoCs5suxki1S1R/3LxCdS/696E
         IfAWA+8gTfNeBrnOyO6FeXccM0ZKArL0rTBb0p+KM6m5y3TmKUc/DH2HZU/Aoefk2s7l
         vUFAfvu9lCAy68dBt7sFMOC4x06ZGTemLEBlc6rehrm+MvfZxbGFYZt5vHp+zZmDRJJx
         trF1ZXQ8jeKPRy+w6ArEs7St/DmiBVlnQQS/JPsuCBE081YGswLrqDVv2Hx6FBhJfuPn
         H4bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/jmWBSY5304DJsRDomhP0vzuJqqDBzNA+o1Qrn90DasT2wTFU
	VtrTJ0fmaS7zl3zYGcdTT3E=
X-Google-Smtp-Source: ABdhPJwTTML6+T9zIQg3hwr5LbAwSe21CEj1f7grjiR/AojkGwl+nKY7RG6GWUEKXWao43MgLJukBQ==
X-Received: by 2002:a17:90b:a4a:: with SMTP id gw10mr682781pjb.29.1609794015003;
        Mon, 04 Jan 2021 13:00:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5803:: with SMTP id m3ls20533041pgb.3.gmail; Mon, 04 Jan
 2021 13:00:14 -0800 (PST)
X-Received: by 2002:aa7:8297:0:b029:1a9:9d0a:c407 with SMTP id s23-20020aa782970000b02901a99d0ac407mr66410237pfm.76.1609794014339;
        Mon, 04 Jan 2021 13:00:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609794014; cv=none;
        d=google.com; s=arc-20160816;
        b=uc4+CqT3O2rhXrxEVRRSJMoQyNAwiRV332/gWzFPZttdErsLfIdhcrMcC50mbPK4/1
         01n4WhhPvqzuGxaDBvIPb5GOz/WsFUhdYLVRos253zS2MHu7PNzSV2s2KmVIZ4v2Iviu
         pl4jPa1r25VMeNHFx99Kgxmrj5B2cSjcGUNfqhTXIcK4xo+lsn6lAO/Y+Dq4ztU1P22O
         6n1XzrnzSa0ubQEnHhbPci0C0AjXFBTo/ir7j45u7hxOQgAMIyNU82ayXqYOxecyL5vC
         RIov4pSaazImhNfYQToFIj07SKYPpthFzTabXagIhdF5Onik/ac0svNy+05OANyT5rON
         Caew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2E48a8501cvft0YkWjvJEBQif0+UmPCQbs5NE+bNygg=;
        b=E+RwlbGXsJnzNkwlrAQYFtEGNOtg+jq4k1NAc+Y/ukWBArZ/7Tf2g05/pLP3LeofJk
         8vhAK/qAAjD43+YVxptPl9Ix3F0rVxHyPDqGqKpPC9zOyVlTAKc+HxQHPfRdN0H3VPyj
         auOjdU1WuXdiFkTpSaYruya1nNPRDpOk+mU5qu1KTMYBzrmCGNikDAV0yoEcQsuE2aZ1
         Z6l+nrsL/B2J6MG6VoGx4LNEQqzi5B7r3IPnrmXlGz6sb4XBEVVBSyAolpT8IchTjqWF
         yPAUOHJk6wn/Y/YcrzeoemBUkzJB0qCJD8xe4vqV26ajUC+o3pjo9705Ayp9nd275Qgd
         Awfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tXg34Bi0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f31 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com. [2607:f8b0:4864:20::f31])
        by gmr-mx.google.com with ESMTPS id q32si46228pja.2.2021.01.04.13.00.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 13:00:14 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f31 as permitted sender) client-ip=2607:f8b0:4864:20::f31;
Received: by mail-qv1-xf31.google.com with SMTP id l14so13708330qvh.2
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 13:00:14 -0800 (PST)
X-Received: by 2002:ad4:4a70:: with SMTP id cn16mr77948768qvb.38.1609794013571;
        Mon, 04 Jan 2021 13:00:13 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id v145sm15509352qka.27.2021.01.04.13.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 13:00:12 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH v2] powerpc: Handle .text.{hot,unlikely}.* in linker script
Date: Mon,  4 Jan 2021 13:59:53 -0700
Message-Id: <20210104205952.1399409-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210104204850.990966-1-natechancellor@gmail.com>
References: <20210104204850.990966-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tXg34Bi0;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f31 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Commit eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input
sections") added ".text.unlikely.*" and ".text.hot.*" due to an LLVM
change [1].

After another LLVM change [2], these sections are seen in some PowerPC
builds, where there is a orphan section warning then build failure:

$ make -skj"$(nproc)" \
       ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- LLVM=1 O=out \
       distclean powernv_defconfig zImage.epapr
ld.lld: warning: kernel/built-in.a(panic.o):(.text.unlikely.) is being placed in '.text.unlikely.'
...
ld.lld: warning: address (0xc000000000009314) of section .text is not a multiple of alignment (256)
...
ERROR: start_text address is c000000000009400, should be c000000000008000
ERROR: try to enable LD_HEAD_STUB_CATCH config option
ERROR: see comments in arch/powerpc/tools/head_check.sh
...

Explicitly handle these sections like in the main linker script so
there is no more build failure.

[1]: https://reviews.llvm.org/D79600
[2]: https://reviews.llvm.org/D92493

Cc: stable@vger.kernel.org
Fixes: 83a092cf95f2 ("powerpc: Link warning for orphan sections")
Link: https://github.com/ClangBuiltLinux/linux/issues/1218
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Add missing [1] and [2] references in commit message. Thanks to Sedat
  Dilek for pointing it out!

 arch/powerpc/kernel/vmlinux.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
index 0318ba436f34..8e0b1298bf19 100644
--- a/arch/powerpc/kernel/vmlinux.lds.S
+++ b/arch/powerpc/kernel/vmlinux.lds.S
@@ -85,7 +85,7 @@ SECTIONS
 		ALIGN_FUNCTION();
 #endif
 		/* careful! __ftr_alt_* sections need to be close to .text */
-		*(.text.hot TEXT_MAIN .text.fixup .text.unlikely .fixup __ftr_alt_* .ref.text);
+		*(.text.hot .text.hot.* TEXT_MAIN .text.fixup .text.unlikely .text.unlikely.* .fixup __ftr_alt_* .ref.text);
 #ifdef CONFIG_PPC64
 		*(.tramp.ftrace.text);
 #endif

base-commit: d8a4f20584d5906093a8fc6aa06622102a501095
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210104205952.1399409-1-natechancellor%40gmail.com.
