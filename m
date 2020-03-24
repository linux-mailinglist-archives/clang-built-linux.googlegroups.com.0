Return-Path: <clang-built-linux+bncBAABB5FB4XZQKGQEJUCVM6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB46190296
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:14:46 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id n6sf11179151otk.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 17:14:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585008885; cv=pass;
        d=google.com; s=arc-20160816;
        b=noZFfDIwQ9Dfs1hnJS7mNSrnSca7DlaLTBvdQnzuQnqAF/frcEckaonzGwHUa5027A
         LDVv+wNGs79P90ElrZxPPW50AtR5Hdt2PsgfTXaYzCkQ2xIwxFbrdvj5ZNLC9wUHZ3tL
         MDdnnREoZTyvz+TabzQcBOYYC30S+3hYVRhPQaAUNm5jERYxGbeSmsHZa1wMVP/jtzfZ
         iuzaBAliW8qi3dkSkyatcG4Ka85ljsFIEjtphTck6PytZMUtPIibgePSsy9ceAnXnX+v
         mttjX2r9vjvoppAIBMgf5UDGserv65O+lyG07J/kDkYdna2yBqM5N/Km2i6Emuo+AgqC
         C5UA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=YC0d2IMNcwsR/ycskmhwm5dT5AezExVD8ywWlWIRoXA=;
        b=Sd3WjSGcy2UAHSu8KX09IDNB3d5wYaQ3nfr7iBofyh9A1aiuopE5p1qXT7DL90VPeO
         pH28AbQsZqeRNlTi3sLsgLa/T9IpFdXrXG5BBANFe5PBZpXJKPyVxY6FF6pKhjyQ7T5y
         WZk80DeVXbBHeYy1TYvR/k40kiFeX2VpdxZOPqsX7nXdNlF0JiyNojzG8EYuThza+qby
         pWFCzPX/mQmDxGRChGXGJHnTl6YvPh9+WJjse1A8D1hia6BJ3kKD+YDlu0tJyFlEQl4Z
         iohull9yH4Hp6LrUn2FOTRATnAz6tPu726BdL9aq/HT71V+NEEz6K+MGHOTOABk9hiNc
         yTXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=kKLMYgiC;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YC0d2IMNcwsR/ycskmhwm5dT5AezExVD8ywWlWIRoXA=;
        b=V+S+7gt6D5OLyNHqBzVrQPysCutaixuPCBsuIi2yqmg1EHJTGzfRI5FC7RexqVzVKJ
         /Ut4S3j2uqeVmzlJr0XkXGq3fKugPY+qyblCwr+6x7ZJhbBkH1BpiEwbryIl4RXNWXPI
         +2mLgzvaHizyhEkXh7HOaGbY8q9uVGLMA3jW8W7/1kxKhaaufrf7fpoPRjFJS6QV1VJ+
         PMKzfPu+44+ZJ8J+GZhyojzGkp25ESU8zkTkOKhhk4UIZ2SoEE8exVbPRZo75ONwV9hA
         0rtUkRNYInV81Y4VAqJa4XrtF8cM48EBRvgBekN4rVqLQaR56qumXytGKsrN50KJG+Gx
         QqaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YC0d2IMNcwsR/ycskmhwm5dT5AezExVD8ywWlWIRoXA=;
        b=fbc0UUmuROJniCJL43mD3FhZYX/8IeSqdSM1uZ1rMAOB5d9mH3M2lma57w1WfivsWW
         wu/W26JVQQ68HRpPWK1c1VYCUp6SPZV3BBhP0MEzWiQN2e4c16wxSYysvUJ+4ltcgGBz
         NTVwS04xDZmYJ2TRTKHH8fkd5OQi+rcMutoRmSGO67FlFobogLCyl+irTMsIlGbHYdwZ
         nCzVWZEuwXTtXQHzfr6/emsJkugKbDHbiQpCRcqkwV+J46wHb1O0OAIMpFarnK92ZtRE
         0bfV68GGmbLJr8pwMD0UGuiw5D5d/qunAVr2ZP/WiYBO84n5NGyoGXr1/JZKRV860Xth
         /RfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2S3ozX7zj7eAlsFBRv78dfDe2PWZkBEMw2KcoINRK3LG/ZvPa6
	auWeo/KSJ1oISiCXYU/eBrQ=
X-Google-Smtp-Source: ADFU+vuLLg+T2hxh4rYsvgVkAL8/rCOe5/6MFqlAr9/BADmpTc/KO4saYxhyu6TbTcKIfJC7yjpaqQ==
X-Received: by 2002:a9d:8e4:: with SMTP id 91mr20796123otf.130.1585008884683;
        Mon, 23 Mar 2020 17:14:44 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3b23:: with SMTP id z32ls1946824otb.1.gmail; Mon, 23 Mar
 2020 17:14:44 -0700 (PDT)
X-Received: by 2002:a05:6830:210d:: with SMTP id i13mr20772864otc.104.1585008884382;
        Mon, 23 Mar 2020 17:14:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585008884; cv=none;
        d=google.com; s=arc-20160816;
        b=p82hCD777GTIS6GySDMBGx5/Sf9YgRo1YYpudSN/4x5q4Wx7RiB6UPkyIS3RcTXKPQ
         21EmkWayQ4r9hSQrf8BgKKO8WjwWXrLyCWFKHoigmBEch4/gU33NnJqXKl6kanMOX/SL
         vFsbFNxEYGaedd4Ap+JyZYfmwngMX4fU1JsveeEtwhwHyoWttWQEnCxmh/nKpuvGIDN/
         bm6J7Y3f7qQlqUioyLjqC8Ux17hed/4P2woDtwcYMOJMswkc0HQKxdVzWpHEqouUXIpg
         7Fopl7j7u9y8fKzL0lY3A6zaE+1CrIM1HxMEIaHWTflVwTe9iNOi+1p455VtoieHc//i
         YmSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=kQokSOGafKM9qlMy9Knp7M7g8No8/5Dc4IXiyrgHWNQ=;
        b=uHUf3GpBq9w3DWAnGQtqaGkmFBMyLtP8XkCJ4UuJBrJhJn2AR4L9A2u7iis/qyyrVD
         ASQMGR3g3e1Ur3LzF55/ZjKupAibEAfEpgHPfuubmcVyB1xS5Il9AGYaJWrgHpN0Tkyw
         4bPYocVijLv9Qwa7Mw8oWYcPxKOVFr6QvlWVhboNsvYZDfEbthXEb0xQz6uHl+P8i657
         eUDzq7UqQ9Qece/Yl2+c9IDmsyInVk36a3CHvvITcJI/RP8BPEa1TiWpk2p0prLXA+3m
         PIlLtHZvoM5eIsYjBqIBe5scioDN8Jh4UDaqsi10zLMyAmtymWdoRc1P8eFRkIw86n5x
         JuGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=kKLMYgiC;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id d11si876705otk.5.2020.03.23.17.14.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 17:14:44 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O0EHnv026701;
	Tue, 24 Mar 2020 09:14:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O0EHnv026701
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: x86@kernel.org, Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
        "H . Peter Anvin" <hpa@zytor.com>, linux-crypto@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, "Jason A . Donenfeld" <Jason@zx2c4.com>,
        Masahiro Yamada <masahiroy@kernel.org>, Ingo Molnar <mingo@redhat.com>,
        clang-built-linux@googlegroups.com
Subject: [PATCH v2 8/9] x86: add comments about the binutils version to support code in as-instr
Date: Tue, 24 Mar 2020 09:13:57 +0900
Message-Id: <20200324001358.4520-9-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324001358.4520-1-masahiroy@kernel.org>
References: <20200324001358.4520-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=kKLMYgiC;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

We raise the minimal supported binutils version from time to time.
The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
required binutils version to 2.21").

We need to keep these as-instr checks because binutils 2.21 does not
support them.

I hope this will be a good hint which one can be dropped when we
bump the minimal binutils version next time.

As for the Clang/LLVM builds, we require very new LLVM version,
so the LLVM integrated assembler supports all of them.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>
---

Changes in v2: None

 arch/x86/Makefile | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index f32ef7b8d5ca..4c57cb3018fb 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -178,10 +178,15 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
 endif
 
 # does binutils support specific instructions?
+# binutils >= 2.22
 avx2_instr :=$(call as-instr,vpbroadcastb %xmm0$(comma)%ymm1,-DCONFIG_AS_AVX2=1)
+# binutils >= 2.25
 avx512_instr :=$(call as-instr,vpmovm2b %k1$(comma)%zmm5,-DCONFIG_AS_AVX512=1)
+# binutils >= 2.24
 sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=1)
+# binutils >= 2.24
 sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
+# binutils >= 2.23
 adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
 
 KBUILD_AFLAGS += $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324001358.4520-9-masahiroy%40kernel.org.
