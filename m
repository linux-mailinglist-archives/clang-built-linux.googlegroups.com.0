Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBSUUZOCAMGQEIZ6DW7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 426CC3740E3
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 18:39:39 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id b6-20020ac85bc60000b02901c2752ed3d4sf1439492qtb.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 09:39:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620232778; cv=pass;
        d=google.com; s=arc-20160816;
        b=DC7GZi+kQcjNRba6b52WFQajDxElok0RKxOHLqGKGwjrmoK7/4F2N4Ap+yJaLjSoLi
         Xqix90ZKs0q2Bnnl6q0Pfpp2IzuNXk6G03W/cr4akAxve4rsaGtjkfzkKzCeAOX9yVQQ
         Yb7BlyCLcg+yqPOzkTlxhAvmaSdB1Mrha/jhUn2dnZ+87/wusHRQlH1Mi3CTvGr8UnmR
         STIJu5/eQCxaX7WgrA97xYD68d07mUSL92TH5u4j4PiRi1kMNJbkOcC0b8IMBDLlczMP
         tpRozChBi3fgQxdAJoqxm/tKDmNPQrWdIB2V0AykPThEFKCm/akf4fpPbBW+b4fM2y0o
         j84w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6aSE3b5MBU9WfWwvg9X5yLj0t6+7H6SwClGCdT0s6Tg=;
        b=lWeZ7aDRjPjgaax588KtZNNpDKGGB3Jg+bDvsUXkS/9jclIKYxZz78bYOBpAfozxTO
         rfP22OUtg/H7VfonU8BsOhnhAD1qf2e4T6XHUUJJt3c1UTZOcWZh9TT2HH4auDSiNCjO
         R+bLJD2JoFHi6A88jPf0i05e3iybVEeuRs0fw2bTV44ONm6P5/R5a9INThIv1fNQWvqF
         pKEJIkLyK/nDDyAY/ecQ1nXpy8AGugYv823fpENV3Mb5In9doHNuTv6DlEHFabSFi7NT
         EfgwnSilR/MjRoeLQqaSsXdt8fMbLXqRNF1lPqGmGQHNCg+irRqNR6qxNVfE4RmnJAlV
         X3AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=duiIkXNo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6aSE3b5MBU9WfWwvg9X5yLj0t6+7H6SwClGCdT0s6Tg=;
        b=gDZYpIURDFtElOi31RrDXIQtqWxGFdeEkGwW9ZswNwP3Jeyox55ERg3kwTEWfJ4Hz4
         qFfpr0zCicOWG6wu1sMPCG4QgdZXy3NzCo9s5Dv8e+vrPTJ4Bv7pbHR5Cv3KfTEpNuLN
         gY0P/nDRFeDsXi92pvekrK7yGfEfv6AWj4cS2GQvWxlTqKVx/XZmPrQ88/urdXh1y5ZA
         o4jrjZyxkXEQdVkAsz3/s3sITaTEXCp+EOddV6yhxUoHrdhgesMvnzj5rWj2H6BLthTk
         DOn7fQQ5CmSv3hjGl+7T40f6GAe9DeKUswC8hhWH+oGEHoIdRlJhEeXOpjuA9d/3NgrM
         Md8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6aSE3b5MBU9WfWwvg9X5yLj0t6+7H6SwClGCdT0s6Tg=;
        b=hzt/L6o/LzoFhY6FtIu30xpxQcyHX+4D2laMfW96iwz14fJG1kwSzKgJe0Ux0vG2ix
         a5VX4+KXeMd2EonnYgGktGWsHL8wxLOylWp7LUwk5yfz7OM+iuChbx8Ydot3l5a/KKq2
         BYdxNuGr1kUEyBJa6uUaRJGx06NshJuDAcCPbXNRi3msN7QxBxALKQ47kuAI8i2Wo2a2
         5/BvMITvPAqhls735SstUks/+irvtPP3/mXDx6AqnXURMvdS9kcqN8PmyMRnmNDNgG/h
         2L7sL1DSif5xkLPiqvT+0G98nXDWWGVea1Zv4VUt4n0MDH6FTEfldx4yCgkP1MHaJxqm
         FVGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ritFBTg/6GU4XKaEEOlJoI4G0U6IXM+IX5df+iZ/145/JcdGw
	/ciPExBsc0OMA4jWQPjWruc=
X-Google-Smtp-Source: ABdhPJx7om3NheV0cNCcRcNeVCbMml4taoNA6l5WOuyg6Dm55pnDYQRwPVMXZLQGQcI5cwEz0r4XlA==
X-Received: by 2002:ad4:4729:: with SMTP id l9mr32037888qvz.30.1620232778405;
        Wed, 05 May 2021 09:39:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3024:: with SMTP id 33ls9356057qte.8.gmail; Wed, 05 May
 2021 09:39:37 -0700 (PDT)
X-Received: by 2002:ac8:1e0f:: with SMTP id n15mr29310205qtl.9.1620232777883;
        Wed, 05 May 2021 09:39:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620232777; cv=none;
        d=google.com; s=arc-20160816;
        b=C2NW/KlEEGT0mlYafHO0SY0BxafCGj0By2iG0eBF87re+YryMTa9wXQZvpOuqEScDR
         dQ/0MSpirtlf1oJ4oI6qRrYEYxZb63t5RnnE503qNb0WOOQvTpDl3Hb/oEtc5LlBQhxo
         JULxvXIVn17/6PkoE3sL+/mfUb09rmpc19UpcEzPZ9t15m7xIJNCHOr1EaRYnyW+XV2i
         ko0xcjtZn5LBPh3/NY4mTVvbvloL4D6YingVG5pmlbaSVLrDIDDkJuUx6Pp4khmT6iRQ
         G6kFhowax0P0nCHI+alegowsUwWMs/NejKP9KvIwuixJpXAL12ZXH15kJrxEAVlMUCsC
         p7Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RVDU7CRU2fpy8FBpcDmqy7EcNkm+oFsSFfqt0v345H8=;
        b=Nu2QVRUEK7H9+j35MVFPzeGDizcsqoczaEMKB5qOzokSyM40dokhzz9Awh4nF3hk11
         DDNRD+pLpJrUPSZrnD0J0M4Fw2ttpnRtQI332ISLg/aCM2OI/pG3sufhSw5A6jU1NAOf
         nS1+kUQFZGUx/9eMexN3GPpvni8lH7OILdjYAdw4RE6P3wol7M2wig3JpViM2Dn9F+MC
         V2+V2gEGuiH4Nh/bFo+dYu2BJkRAMXnMZ9HToFMPYOfcL3bWjQcBh5d0YvdUjfDMtgMw
         46JWEY982i+ArfLgujyhGyrvPCW0vd91YpYy6jQC9Zlk4u0sph3LjUSW2t1BZ1ypmkld
         Pcug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=duiIkXNo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g22si208287qtx.4.2021.05.05.09.39.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 09:39:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8A056619A8;
	Wed,  5 May 2021 16:39:35 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yonghong Song <yhs@fb.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andrii Nakryiko <andrii@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-kselftest@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 27/46] selftests: Set CC to clang in lib.mk if LLVM is set
Date: Wed,  5 May 2021 12:38:37 -0400
Message-Id: <20210505163856.3463279-27-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210505163856.3463279-1-sashal@kernel.org>
References: <20210505163856.3463279-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=duiIkXNo;       spf=pass
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

From: Yonghong Song <yhs@fb.com>

[ Upstream commit 26e6dd1072763cd5696b75994c03982dde952ad9 ]

selftests/bpf/Makefile includes lib.mk. With the following command
  make -j60 LLVM=1 LLVM_IAS=1  <=== compile kernel
  make -j60 -C tools/testing/selftests/bpf LLVM=1 LLVM_IAS=1 V=1
some files are still compiled with gcc. This patch
fixed lib.mk issue which sets CC to gcc in all cases.

Signed-off-by: Yonghong Song <yhs@fb.com>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Acked-by: Andrii Nakryiko <andrii@kernel.org>
Link: https://lore.kernel.org/bpf/20210413153413.3027426-1-yhs@fb.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/testing/selftests/lib.mk | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/testing/selftests/lib.mk b/tools/testing/selftests/lib.mk
index 3ed0134a764d..67386aa3f31d 100644
--- a/tools/testing/selftests/lib.mk
+++ b/tools/testing/selftests/lib.mk
@@ -1,6 +1,10 @@
 # This mimics the top-level Makefile. We do it explicitly here so that this
 # Makefile can operate with or without the kbuild infrastructure.
+ifneq ($(LLVM),)
+CC := clang
+else
 CC := $(CROSS_COMPILE)gcc
+endif
 
 ifeq (0,$(MAKELEVEL))
     ifeq ($(OUTPUT),)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210505163856.3463279-27-sashal%40kernel.org.
