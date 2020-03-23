Return-Path: <clang-built-linux+bncBAABBVVU4DZQKGQEMSXTB4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF3318EDD4
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 03:09:28 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id 33sf9675667pgn.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 19:09:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584929366; cv=pass;
        d=google.com; s=arc-20160816;
        b=CJbYeFUpk9hPBqrmp0Jp11vj4EOGvVJPkGuGcSACJH+36mt17+WHghaB+j1OmJWZpy
         jrD2oaUKgYkge6XKSzmMbELMkJw5KYsPeW4vsigQI1DBQbUGethXzDLQDGPg7hRxggM2
         23kFa+phCVecmry3ORBdWxFVG4lY94Ms+Z1mPPuQs7+sPxzuOMntr+HFEA4K7QTlFk0u
         7U9igE8nBb5mfwwkLEysSD4URFdEgt9UFjuLIe+7rnZ5i5+XuNGblRJuOsmsNbFCubFz
         qGQ1H9vfv1IQ34E/0QD6wjj4M+IAJMF7/5yQmJuxwBfVea13oWoGqHXwz/5mXlwotcy1
         Go2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=XyKopa0NMVZLrAsXnLmfPE9yEw5i2QcLBhC8yc9ypFE=;
        b=0RbT4sR0dP0H6WUN/RyMoF1PZr3wx+xl6/R/2V0AAkKMnUEQQ/5MojJpNSLGIEzR0I
         z6fqKFnc48dq7L8kerCCrV0fmnZbc847sTFe2qm38SrhJP0Vn5XJa9i95XIkZ59rYIqQ
         nVTBqStFFp5s3yUW9ffaQxBU0iDUIkiV4ivonRGW50JuLZtgj/m9ux+g3FXVh95pBn8/
         c7rCvCARJjW3VpiHe8K2unrtzgTcQEHeY/Nj8F+RAAdoJYHdbNd5AWkv4NbqUDCENrIn
         GOOGfG6QN4PUnQqtlAu33FS9nhvz5XyLbiR/lNTuiugVNrnSSCZCo9Vcr990E8fVFWId
         VPYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=MfRamYOs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XyKopa0NMVZLrAsXnLmfPE9yEw5i2QcLBhC8yc9ypFE=;
        b=epnZ13KAKHcW5sihVxJP2udwSbSGOx0buul4+iErVMWkFmbK8JFXX88/SRi01vRoEv
         mBWbKLsEaVO4tNj2/Li3d/UHAFqkxTE4G4VdhaepfTt9ewZmBZsKyQNfJN5eIX6Ji2Hb
         cSg41ACbMukevDM1F2P1GhdXLkYm0rpCWuFJa24CF1CmXyfRveI4uHi6UINuT8p2MymY
         hr0LvzYxhLMryiOkYhEjuohSQSVkl0Xh7ipzZDXcDXJGA97ERH7kWZnExWj37o9MO2Su
         iu/JXlTybW+PtXu4NvZiMRNvS8kVnbQb1nOQp0z2nL38HTW11U6ATnLGRAw3wGfgFwQK
         KISA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XyKopa0NMVZLrAsXnLmfPE9yEw5i2QcLBhC8yc9ypFE=;
        b=KwhXF3ed8QdvWXBBs2RA0W7oSkA57xSH18m51hlwhSx6E5O2pPbs7bn+nO4sJ+HZ4w
         Qv+/IRyonw2s8HkSTlIO0hJSP7LV+smcy+hZgWwEGlnhP1TS2amNFP7VrV+/KSaP8YYB
         8CaHGQhTnvEwA576wL8WCha+PmDUSF/9cR/ffxcC9VTw3FqIHDutgbY9ibHNSc8mdM2w
         09Z3hlgf2Nfx9Ir7yMBwfAKaTZLkzMTxNSiUJGzQNS6aDfjGLbplbPkfvOBrHZLKBUwr
         mhd5OwTaZJz7ocRnq3nx0tdZgLOvWP1O/oUMm3f2V34NgdETI9JAaMadf5UjcdE12aba
         pJkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2dQS4KuSW9/ClsjKTmVztT3JT6YC4KLKpyPJ+AWATcERwev4D3
	TSVEADY3b5cNWEzpO9py2c0=
X-Google-Smtp-Source: ADFU+vvZHcx1xjyhJYmfvM98xQChG7eUJbWk7AutK/KCV1gs3s6Ln0r+bGSJAihgmRnthC8yxtdd5g==
X-Received: by 2002:a17:90a:d350:: with SMTP id i16mr22599141pjx.38.1584929366352;
        Sun, 22 Mar 2020 19:09:26 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cf0b:: with SMTP id j11ls922703pgg.10.gmail; Sun, 22 Mar
 2020 19:09:26 -0700 (PDT)
X-Received: by 2002:a63:ff59:: with SMTP id s25mr3778313pgk.159.1584929366007;
        Sun, 22 Mar 2020 19:09:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584929366; cv=none;
        d=google.com; s=arc-20160816;
        b=fmiVpNmTwHzZbqtIkes6PPaB6Rzy8lf7XQWlCOrYsflOulZXgKvX+H8kYVEh8RnLTW
         XnEcoVth2Chi0SvWuvuL954WrxXsHvPKIoev2YP9rxWKtDBN2mwyfrsAnwtK8PMfHw2q
         Fx927gAeU9Jerj8rW/QqFB4K+GATwAM0vJHtpHbZz6gsz1jN3XBpMl1ZSvvSLPa0U3ND
         vZdesdyGN4s4RDaYYMAZW2shWDsHhlhCT6k+Z9xsMkKh2WIfsAv4BSKXLQKdvZdIkXKx
         B9ncMTQ8WUZEcE1Ev9uEVVCB0u/jznk9s0QA2DIxikLBrhw/IOoArB08RlHYDPFB6NiQ
         Zl2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=E2psVuEg+JhrGKw/xZVOkRp9XPBXsZqoNs5V0bJG/gA=;
        b=K1FuSug2FcVhbU+KJLgkPFebthx2ZTEsGeLyWKFvubhR1yoGJpfMnqJS6flY72/0lS
         mCYmMkfjbrEt094p4wPB9AcIoOsBMiqnGKK1s6mU6PJF9VRoxKi4K4hvXesGHt2+P1Y3
         bGu0WmQV7vDx1bricYpk6auNH50wk09KtIP2sgK7AK1u6814AnpfKHS5GOxY4ysN2YgI
         TSySwdlkzPCT3lhXookuaSXIa4pJSttggiL2k9qlrMfRjFGVeWGV5zELEWGfkgz8OS+Y
         HevaQsNDNRL5KRZYE6DYS2G53l1PQhF39gRbAhuZai3yEm4o6kHEun3GBm/Ej+GA4nND
         4Rog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=MfRamYOs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id 138si91371pfa.6.2020.03.22.19.09.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 19:09:25 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02N28urY002941;
	Mon, 23 Mar 2020 11:09:04 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02N28urY002941
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: x86@kernel.org, Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
        "H . Peter Anvin" <hpa@zytor.com>
Cc: linux-kernel@vger.kernel.org, "Jason A . Donenfeld" <Jason@zx2c4.com>,
        Masahiro Yamada <masahiroy@kernel.org>, Ingo Molnar <mingo@redhat.com>,
        clang-built-linux@googlegroups.com
Subject: [PATCH 7/7] x86: add comments about the binutils version to support code in as-instr
Date: Mon, 23 Mar 2020 11:08:44 +0900
Message-Id: <20200323020844.17064-8-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323020844.17064-1-masahiroy@kernel.org>
References: <20200323020844.17064-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=MfRamYOs;       spf=softfail
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
---

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323020844.17064-8-masahiroy%40kernel.org.
