Return-Path: <clang-built-linux+bncBCW5ZHGERMNBBYGMTP7QKGQERICQX5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CEF2E2D93
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Dec 2020 08:29:38 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id f23sf2869347oov.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Dec 2020 23:29:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608967776; cv=pass;
        d=google.com; s=arc-20160816;
        b=RZyRI4eCB/3xrA1gEJqNUuRfQNI2jCk7aQy6zEQQY6P3giCWnwNtcCXZHiEv1rofoK
         H+pFrKehJ3vxx9KSwQ4hfAe33DwerfoPZceZiNV0vuUbrK8k/UM1FJAxyI/OZMe7z/Vb
         1VFYlYBophxWFCcX/FLQmOCUqy7WWn3fzZkUhKiylHyVIUkQL1j4ctF2t5ik82l6IMW1
         lVFVGkaJqvjA7+lIPmwpd2N+oX/hnEBF/e5P4kYgLuxn29j6QFLWPL32uzcEtJ57ZCWZ
         GPkT+A8D6kjg+qodjivNqS3fzsQGYJQ+pq6gj/LX+dg8FFar8Q7qzOVSKZVC1MDYCFUZ
         lKEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:mime-version:user-agent:date:message-id
         :subject:from:cc:to:sender:dkim-signature:dkim-signature;
        bh=9Vsv8hL2T1ltpMrPgMIs82Ulh3dT279xlMvx5KbooW8=;
        b=rY/l4WkvW5eFBLnNC/5DpS3BKDcYLAgSxEMa8r+PWom3FP7zkx0PzYghfnGRlHBD4R
         eOjMXQyIx4/hNjP/8S9XL+mhpcfbCwNT7qLfEA8bAsYWIYUq5nEfPPJoGuiOG7XT3mXg
         tMM0+u59N3a5dHsQnzS1J2N0M0npurdUqPP41lni65R9ym/06/i0ubIevCCKS0scuVu7
         bYQ4wm++LcVViILsbAkOMwW3PVCjyHCx8TESNDsISfm8TZsPHmV3MUvka68iZBI2wJfI
         jGbNw1QSklmuV+0c5MM8wHYGGkqoRIkx6pwrdZsVdy3PrMXxkJW4qSl6jKM33/D/IgFJ
         zKKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iPhcLSaM;
       spf=pass (google.com: domain of jmillikin@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=jmillikin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9Vsv8hL2T1ltpMrPgMIs82Ulh3dT279xlMvx5KbooW8=;
        b=DxNXEjuXMrqg0cgQYvisxiNkCI5P495mAoUHol7QyKaJOI3GRRB3bN3DCbHGXPoSrF
         QMWC0D7M6QEowTQlJMVKWBHM1IWLlNh0aNElvuluoqt2CECUaWiWm6oN5Ej5w5ymuP+F
         XETNXfbI8IlQJdZOCi24AlphWTc2Ob94f4wR5TdGUCNP+Q/UGQBqLPGp6yz1Y+k9pFui
         9L/5mnmjNlv5zwEbQldrt/C3LtDFiTTjsHhr9r0npKWadpL2g2/4mkaJmmWysBshRoWp
         IXGgPfVg7RZczrUuG2SPN+HSNPi2dcyCBWL53QVhAAgVfW7CikdtyAjGr5rsTorCV9UU
         WJbg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9Vsv8hL2T1ltpMrPgMIs82Ulh3dT279xlMvx5KbooW8=;
        b=CyJI8WU8aa7FwoyGfTvtT5nmM8+FHPw+sdYg/klpF3ABnrWS3lBgNbk6vXxclRQfCY
         W6qIzFbEc3mcqR2q6nKjNyZF02RFFWH2lwF+ZnqQay+3S5erTIRnw9LZA44uTQPDW2J2
         KezMCt4FlOTzhKu+fZ4hy7fSQusQQ91n4JJBA2RvPwxssjcZHzI5lHmIDqsad7YA08jn
         JNgegKFCrVoFXuHmuMEZws0xAaeoac3ujkTLZyFpn7QJx8v/BHQxsK9XYDDOSpHHawOy
         Fx0zShmGPbrML/RSPnMmDgPMaNz+ccdB+03e8b66gX+ees27ZE4YvtnBsa8o53RPCypM
         yAUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:from:subject:message-id:date
         :user-agent:mime-version:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9Vsv8hL2T1ltpMrPgMIs82Ulh3dT279xlMvx5KbooW8=;
        b=nC8CpJoeoBwL+ok2V+HScEBv90z8RywVMRwfrVMKdo7NC6vnuk25C+LtvdrEBoJkQf
         Y+M7m3oW4Pgie7miavewYsSSRxE1aGLRNJo5CeTN3eSge8MVCvyc/X9O1S4xdP7o/Vvl
         rp3vcZczLvCDsppVlhEp/09FYEbk/MTyHd63515crpYTuNFEOe/SuFtZbxmgSGj9eaRV
         wTHjphuNDlrAghW+uTFuh/zSDv4vpuGgsYTRVd3GHhWA3YUk8uvB3omFQObel3FhoNuc
         tIO+gotdJIkiuYp7OWxPTSwLmG1pMzCwhm7ZOnFffAOOaz7S2sgI5lXUs99q3naqctvK
         eh9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/R+Ch5tNmBZu+h1P30vyDuZxrn34P0JPHw+s4dPr6T/dMRl7C
	lAtkOmA6pM4vrXMc5a8p7IY=
X-Google-Smtp-Source: ABdhPJxF51NMpZVwVbE7wwRR/hYSnrfmG5M4tyMPDAfwjQIl1m3GZdcYBsZTnMOJK32wqxyKK51pCQ==
X-Received: by 2002:a05:6820:22c:: with SMTP id j12mr22602084oob.65.1608967776723;
        Fri, 25 Dec 2020 23:29:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e382:: with SMTP id l2ls3362492oov.10.gmail; Fri, 25 Dec
 2020 23:29:36 -0800 (PST)
X-Received: by 2002:a05:6820:30e:: with SMTP id l14mr25457592ooe.38.1608967776350;
        Fri, 25 Dec 2020 23:29:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608967776; cv=none;
        d=google.com; s=arc-20160816;
        b=yFMPyL1UeajSzNsj39G7WHZkOJHTIfZzVKdogXI/wNBFzd6qvKhSsFD5LM6ew8ALxv
         nnE2gfyD/LqYxjzJfTtHLVvq7vAHigjwbLH7xdMbDi8dF4uL1JJRojvw/f2FfU3sXk7S
         IE07g35ajD23kJ0IgwdGfLpARmfiAZG1awwxyTQauDTo0LrCuvlA/j0mV2/enrplQZdo
         KhALXvwesHdka3i7H+zjpuM4IIS+0I1PGnd/H4zdpbhZDJih0sxBTd+8tasGa6bok4Rl
         UNkkrkoqoVxD8iB5f1CkjiGuwIig9IZPIQB0GB4mR4YsTKcXE1sPXuqDAmu+MFAmjD0l
         PcyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:mime-version:user-agent
         :date:message-id:subject:from:cc:to:dkim-signature;
        bh=PzHOmqPammOF2MuNhpTyx66yMY3XUA9xo83g3YEoVpE=;
        b=Ms7ExetM2sXAC6Cda2MXoe0StZfTyRRsursFSywzY1qPR4Dp8SUCliFZjG86XIdDZ5
         AZkTW7xVI6HuGqt4G9ogNopcUoFr0rjTkDLp422R9+7KDFFyPOZ9kZYh/vo3ppYTZdxI
         ahL40X30yvEDE2XF7gl+Z4Qu0s3xpCW9f0kAUBgQ5cyiDZhCIdC4gZmmMBLfG7K9sCjY
         MassNYARc7A+UrN7FUP1uBW6OIdQ0LTUeNIBt1GZZhMM6RObMnC5L3PQiNriEmg1Fvc4
         F34X0ddtjiSlYXOK3TRd0jj5exGc/ujwsj4/QQIG3xRjlP/hv9y5ZxP3SDnmIsKY7eAA
         16cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iPhcLSaM;
       spf=pass (google.com: domain of jmillikin@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=jmillikin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id r27si847111oth.2.2020.12.25.23.29.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Dec 2020 23:29:36 -0800 (PST)
Received-SPF: pass (google.com: domain of jmillikin@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Received: by mail-pl1-x62a.google.com with SMTP id q4so3220763plr.7
        for <clang-built-linux@googlegroups.com>; Fri, 25 Dec 2020 23:29:36 -0800 (PST)
X-Received: by 2002:a17:90a:e507:: with SMTP id t7mr11740247pjy.26.1608967775790;
        Fri, 25 Dec 2020 23:29:35 -0800 (PST)
Received: from macbook.local (ae142046.dynamic.ppp.asahi-net.or.jp. [14.3.142.46])
        by smtp.gmail.com with ESMTPSA id 84sm30959306pfy.9.2020.12.25.23.29.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Dec 2020 23:29:35 -0800 (PST)
To: x86@kernel.org, linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, John Millikin <john@john-millikin.com>
From: John Millikin <jmillikin@gmail.com>
Subject: [PATCH] arch/x86: Propagate $(CLANG_FLAGS) to $(REALMODE_FLAGS)
Message-ID: <cceb074c-861c-d716-5e19-834a8492f245@gmail.com>
Date: Sat, 26 Dec 2020 16:29:30 +0900
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: jmillikin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iPhcLSaM;       spf=pass
 (google.com: domain of jmillikin@gmail.com designates 2607:f8b0:4864:20::62a
 as permitted sender) smtp.mailfrom=jmillikin@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When compiling with Clang, the `$(CLANG_FLAGS)' variable contains
additional flags needed to cross-compile C and Assembly sources:

* `-no-integrated-as' tells clang to assemble with GNU Assembler
=C2=A0 instead of its built-in LLVM assembler. This flag is set by default
=C2=A0 unless `LLVM_IAS=3D1' is set, because the LLVM assembler can't yet
=C2=A0 parse certain GNU extensions.

* `--target' sets the target architecture when cross-compiling. This
=C2=A0 flag must be set for both compilation and assembly (`KBUILD_AFLAGS')
=C2=A0 to support architecture-specific assembler directives.

Signed-off-by: John Millikin <john@john-millikin.com>
---
=C2=A0arch/x86/Makefile | 5 +++++
=C2=A01 file changed, 5 insertions(+)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 7116da3980be..725c65532482 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -33,6 +33,11 @@ REALMODE_CFLAGS +=3D -ffreestanding
=C2=A0REALMODE_CFLAGS +=3D -fno-stack-protector
=C2=A0REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -=
Wno-address-of-packed-member)
=C2=A0REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS), $=
(cc_stack_align4))
+
+ifdef CONFIG_CC_IS_CLANG
+REALMODE_CFLAGS +=3D $(CLANG_FLAGS)
+endif
+
=C2=A0export REALMODE_CFLAGS
=C2=A0
=C2=A0# BITS is used as extension for files which are available in a 32 bit
--=20
2.29.2


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/cceb074c-861c-d716-5e19-834a8492f245%40gmail.com.
