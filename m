Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB7M76H2AKGQEHWT73BY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id AED4B1AFA72
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 15:19:57 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id v6sf2937169lfi.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 06:19:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587302397; cv=pass;
        d=google.com; s=arc-20160816;
        b=izjvksRbLB3pAgDU2rr2SfRoP3cgqymxRV9RMrUIawTO2WJ7MyimIRO6W5O5Y8LPQb
         iIKUcX+CxceULh3Jk+yeYNnh14QEEyRCL0GV+tlztIE9mByCPtMyTQlenuj/O2rwvkXf
         iMf1lB76mk/NYj86NMbUmw+nLZGJhWaGj6uU4oAstl6OjvYUGKfd7eGUqwc62cQsXPCZ
         1vRzNhIiiB4x3ApwpLzX8WKrRFFMlSrhHqXanRgTAm5XRICXh/HDGb2UENDph8vEbGa6
         g2y/+CnT/KRXcFdkV1dNVaHrzP+xF3V/npg9cJSdvJNHkgPeY8C5WD2rGN4WEMbZP4/f
         e60g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=q58xkUw1SMRKE2q751gGEAqvMCDjraU0jYjgVHIx7n8=;
        b=tFYK2sKf2PVe0wydB5+hjFC+ov9wx2dCWc5FT1vczZYBfTtzzAzu8QVft13Tis2Xve
         Zcg02ONGs1W0jZ3doGFGJuuCtCGsVuxAiYUsKd2TC70HzpR1V2UVq1I2p1EKeuq6+f0B
         RqWauoObpD/PugB3Dtbtuo7YGBlUlNNISX+rYM/cWz0Uo2SvQxqIAMnFEyD68fIXGbL5
         cLPyqKj2Z8xappXe79J1uC84k3LcTGLthB9bPITY8LjOWCtAsfiXZChs3SyDwFW5SpNi
         lVPyy8rJCdMKPFBDvq0vyMWNx7IqspNerpyehENmlOBRZzXiH/Awek2QMCES3H8AbfUg
         RiTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s+gLArrW;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q58xkUw1SMRKE2q751gGEAqvMCDjraU0jYjgVHIx7n8=;
        b=q+f5AENSKH1Az9KhAsRbbrwdQZCR5nZW0eD1IexlUMqsW0FkbKeWgFlTJW35tvTzxE
         2oxVSJ4LUKpJiflNcIE/q9xmmsHnXCRb1iv952QDkW8ORUoX8IJzEb9B16XgLdJCGmmp
         fSXcU2QBR/xHH8JESNbwM0xpYCYLlNI9243YZAYGpohjpF0oGGmgOg3DIFmL1sOHbybo
         9DsSz4M6gi9/71B7QwwUNhee0m8sjbasIW4NhSVVbPetqzsP2w+LxMr7JBrIAfdmGGcZ
         53VX9RXs8AV0WTca9vCL95dvtROMDpI2JZIv+NNiCC6FWrzLTRiG6HbtXAHWPh4qrkmH
         gKow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q58xkUw1SMRKE2q751gGEAqvMCDjraU0jYjgVHIx7n8=;
        b=ooP+98AfvlLXQVhQNWJWE0OJ2vrn0pWwL0YleU0JvMpywphcV6+oi0TqCJ4grTVIfa
         N6wPo4AVRvcNlcthYLM8PHNqeVCv75hR2IupogMOW0djKn2YeMH9hq8eIruRO74QYm71
         ZYWTyeZFVYJSS34I3ph4lukCUqUgOSnAUfkvQhxoO43CIC9CiqBIJBj6g7ORtzhSFpz9
         45fqH/51n9ySat9GdivSm+AEn7w9ck80z/7kjSTDUVDjLYWEWKbMNs3n99LJk3KA+b00
         4Xw/DVWqOL0wy9q7XMHtXeAFaf8HRFO/+CboW0MNO1g8Qv5vuE020Aas50Yf4/Jd/KSb
         EBJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q58xkUw1SMRKE2q751gGEAqvMCDjraU0jYjgVHIx7n8=;
        b=ihQg5QV2FOANnYjCfhOtFCa11f+ru+a+XBGhtzlpnKf7dZh0mPxVJf+UaHDbCaexny
         nlB0ogImko21dWr20CN+QiapC73jBOls30TpvfYWxBYiZY5ZhNOrRuGQESJpZ5snI61L
         xl2X0a5VTRsbeUpaR4bgjpZDJc2gG/mb6e2YiuY+nVkoyOtwOkV9kAuk8Lf1pW5O/9Xb
         7qthDWciUdSMbOFjRHoYBB14cZ1VwRMvnG95Y47ir0KwHEYGo1A/Shk+MDp6zPI6GmG+
         1SETxsvF9I4jwevpZqLUkFbGL1S7p6asQszWUErcll08yDKmerc2826oX5zQMn2ss2jZ
         s4aQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubZ3+0tqGDGOWqcHGw1g5VGdF3Se0KlplD1Sohx1PFPBCCDy7QI
	NYhYJIQreQoiHha6/Zx3Ruo=
X-Google-Smtp-Source: APiQypI0BPdSpx5/WE6LJ1n4YpPNvqujZzhYqByPAgL0dKhCk0Rz5e/v47RZSHxy9Y2okgz7E/IeQw==
X-Received: by 2002:a19:4841:: with SMTP id v62mr7436500lfa.66.1587302397093;
        Sun, 19 Apr 2020 06:19:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9054:: with SMTP id n20ls1383480ljg.4.gmail; Sun, 19 Apr
 2020 06:19:56 -0700 (PDT)
X-Received: by 2002:a2e:740c:: with SMTP id p12mr7123725ljc.11.1587302396325;
        Sun, 19 Apr 2020 06:19:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587302396; cv=none;
        d=google.com; s=arc-20160816;
        b=cGkDScZ84DJR+STFKbT+p0JgYroPANB9WNK+SjundvxNxFrdcgfEzQarJP+YeXzTgG
         ezLAUwIYRxIl86Iwtk3bCI+s2Kv0ElD7a0dRd3azSpp2euyi9SIKRlk7fWcbYFONCrqL
         wY9Xptcs/rlPUoyoOAcSU8x/7CBTeaEban3D+LSO2lg/P8lpAuVhqTUc6hjk5Yw3cxto
         hYxYuIB/JBeBjHbBF6UAPATQRpyIEZ4Ibo4sXLsM/1fTRg11Q9vJWScobqxugmVLNm0F
         Gk8TxdFmi26YGSugMGuJosY+6WCST9qYI4P1ikztG08woewucOFiIlp096idQqSpGzVt
         zVWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=/M/pO+rkWb7qCpPBJ9AKwpLrf9Cx4SmKeiQUlOV4LEQ=;
        b=Q0FzZ0H6bSXFMGkRw7oBkXyKSFqR/4W12+pAn0SZhzyl77jcqyd+bv4Ad8hlEGdIQ8
         1FihKY57xsr90ICdQ9A5B2blgPl5sMTNQsSq809gX8z2atzHbfaMKw13/X3tHe+VhGj7
         sYKIvNMp1l7JxC/xFOjyawkNxibV+u77zWY9CyimHG3BnPH8AzOqx2dymImpWQBLmcEo
         l65LnzaFVdNo1slxItY35UU2qG5a3N7j3LGqoC4Rl9EHcm4MLqpDJSijR5eoUz5lCsSp
         CBaJ0eqHmS4mwcFK0l9+ju0R38IozdTrXuw6E7GpEjInUyytqT2dOCWRm/UE4Y6vNtOI
         qwAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s+gLArrW;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id a21si1901459lfr.4.2020.04.19.06.19.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 06:19:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id j1so3220047wrt.1
        for <clang-built-linux@googlegroups.com>; Sun, 19 Apr 2020 06:19:56 -0700 (PDT)
X-Received: by 2002:adf:b1d1:: with SMTP id r17mr11602814wra.85.1587302395769;
        Sun, 19 Apr 2020 06:19:55 -0700 (PDT)
Received: from localhost.localdomain (x59cc9bd1.dyn.telefonica.de. [89.204.155.209])
        by smtp.gmail.com with ESMTPSA id k184sm15681118wmf.9.2020.04.19.06.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2020 06:19:55 -0700 (PDT)
From: Sedat Dilek <sedat.dilek@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	Tejun Heo <tj@kernel.org>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Dan Williams <dan.j.williams@intel.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Sedat Dilek <sedat.dilek@gmail.com>
Subject: [RFC PATCH 1/2] kbuild: add CONFIG_LD_IS_BINUTILS
Date: Sun, 19 Apr 2020 15:19:47 +0200
Message-Id: <20200419131947.173685-1-sedat.dilek@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=s+gLArrW;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This patch is currently not mandatory but a prerequisites for the second one.

Folks from ClangBuiltLinux project like the combination of Clang compiler
and LLD linker from LLVM project to build their Linux kernels.

Sami Tolvanen <samitolvanen@google.com> has a patch for using LD_IS_LLD (see [1]).

Documentation/process/changes.rst says and uses "binutils" that's why I called
it LD_IS_BINUTILS (see [2] and [3]).

The second patch will rename existing LD_VERSION to BINUTILS_VERSION to have
a consistent naming convention like:

1. CC_IS_GCC and GCC_VERSION
2. CC_IS_CLANG and CLANG_VERSION
3. LD_IS_BINUTILS and BINUTILS_VERSION

[1] https://github.com/samitolvanen/linux/commit/61889e01f0ed4f07a9d631f163bba6c6637bfa46
[2] https://git.kernel.org/linus/tree/Documentation/process/changes.rst#n34
[3] https://git.kernel.org/linus/tree/Documentation/process/changes.rst#n76

Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
---
 init/Kconfig | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/init/Kconfig b/init/Kconfig
index 9e22ee8fbd75..520116efea0f 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -16,9 +16,12 @@ config GCC_VERSION
 	default $(shell,$(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
 	default 0
 
+config LD_IS_BINUTILS
+	def_bool $(success,$(LD) -v | head -n 1 | grep -q 'GNU ld')
+
 config LD_VERSION
 	int
-	default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)
+	default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh) if LD_IS_BINUTILS
 
 config CC_IS_CLANG
 	def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
-- 
2.26.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200419131947.173685-1-sedat.dilek%40gmail.com.
