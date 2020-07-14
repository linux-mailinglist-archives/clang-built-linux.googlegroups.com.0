Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBXVFW34AKGQEVWN3UWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9167221EEC6
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 13:11:27 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id yh3sf21918601ejb.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 04:11:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594725086; cv=pass;
        d=google.com; s=arc-20160816;
        b=AMlrTT1D3CcSvXFBHwCgfgMf8Vz4qu6lkJZX+znDnNqM9VBEO+BINTaDR8XGoHrGtP
         OjOcQ364yTloagfioyE/N4BoW7g4SXPuFoBmXOeKxRqv6y3IFL5d8o7eG7VyTxbNzYy2
         qKEUxkGLwaX0Xqlqevky21AcHx4ZL5SIYbE39E2nXLp2RAmxWHnIWFhMPAjMm1r1edmv
         KHIzmwbC6nO1x3VcIt+95dfQF/Kh/geQ0kTR7OV92W+Sm6yRrY5gIEqy/6BpqYthyqHH
         1qQAfjuZ5oXYzI8KanMdqixrRoRMRu9KZKYurVYNhi9bgujBJhww8VMWl2RUkVwr8prE
         TVUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=pY3fXw5CfE/Y8ZXiJtyCAcQlJNJSoB/Be1mMUta48FI=;
        b=OcbIB5OhFQVV1IRhfJ+n7GPUDICpSg3faVMgW0Fjz5W0kjIpnRdWldjcoTKsGKN9gi
         /JZrGoEuAOZta4xjM5Ft0DMOHTMFAhBrK3PBiBW9DC3GBSjX9/Uihau8MYeGZVpVGXYu
         jDZvmYsorG4KrM2KrGFKaEmfzJWnXTzHo2KI7L74dy/BpHV06xImL6SNQtKhVLEzFFYd
         VJmUITT8+iHFKvkOqOKBba97srjmXTtjFB9cdFJjRqhZsQHR6VxlNhmT7yXuTIBwL+QL
         4DmF0ReBunbuMJAKNqLhYlGk6/vZoulddrafo1t1OtbI5F+eT46qhQvF/biJIaa6rpHa
         lONQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=slP0ybNp;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pY3fXw5CfE/Y8ZXiJtyCAcQlJNJSoB/Be1mMUta48FI=;
        b=kZcV9qhvSDYeG1xX8bPOErh9F4c1GWY0zURjqbwR9czChraZMPEzEY0srJ0ZQutWCP
         /+YPpLAoXpIdjrytjW2hGtLsNMZ6+sZPzd7N4dZ01eY6yhTEb5kbik1PwCWQ2l++ygO+
         6wxWH4doL0Z2NAPOoN2yRFVIVcvw9yQTIYnZ13rYA9RsJKnwOrW12axLXdWk8MDRUXru
         XLxLPtme4hOVnDS/K/ziW0PDgYnhlJbMr52Bg5PuHQTwZvUjJkShTOyvdiQagUC4vUN+
         YPxjegU8IJA+nhOdklYIi8V1+VR5jotP4uQzySzEsPmus+ROBg4etKm8nw8Rrus22Cuo
         ds3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pY3fXw5CfE/Y8ZXiJtyCAcQlJNJSoB/Be1mMUta48FI=;
        b=R1EQomQHhjKBRCPBm/e7bsmyva6SfGUVmv8M/SJi8V9ZPa0wfmkRGcqElZAQKAonic
         c4E/Rw7YyHcPMoCB64o5Udak/RpV0aU5zaVsHGNHOvMPrh6unufLTUvHngBh6KCmHpBv
         NTUeTgguhsbrOFzwhDWLHVI3D5pWJJFTaY52f7wxBslcKXn5fO3GLvRiRl7FednoY+VQ
         GT7aFZZ4VdvMOA7lxXWZoBMlOYPHIBidAHa0DsnGkmJ6fem9F7W+MBXRGB+luNZV9oMe
         RfD+E6/MeTqpPUhDurTbM+B0OPgMR3c3Qe1MdgKrlIJ8T349W3orDOArZbpm7rLuyCWz
         4sYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pY3fXw5CfE/Y8ZXiJtyCAcQlJNJSoB/Be1mMUta48FI=;
        b=LJhbwUbJRKWxWk2qpLEwORdiBSdVNVsUh0z5fmbgveBif1E2/5mJaUet/D1g89EhTj
         pcuLAYoPVHt8aOpuIYtbGBCHdni6aQuQWTh45FlezlPO7qmO/atVm7IcyPDY4iPUytiz
         xe36M1aeHdE6Oz9+fNrOvdfy646VnR1KLn+EiFVvuOqp6SwkW5T4qOqMepWkiCJV0uHz
         MdnYf8IwSmYQy7RJcvVmHFxf5/iUe0GgvzlA7fHP/ZClnhN/PgpuoIUbBi5m0rWZS/0m
         51KA5wgaGJTOlUaQyM2BWI/PRHO4+P6Hc3erT8BVctS2ddvLMIaDszEc87cRrMwhjPGI
         DANQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GWK64yMwwbHGiyS+KVrLYSFWSAc+wC+D4zaycch6AP6TzT1QE
	rs4Ej1bmDdIViMcTderRGeU=
X-Google-Smtp-Source: ABdhPJzrUrVknxKkd/QMLaPV2V3n37o0igIqcuPrxat97TL4l9Sr6FFLNcM+eKDUSK2GMnn0aOl3Xg==
X-Received: by 2002:a05:6402:947:: with SMTP id h7mr3907648edz.213.1594725086242;
        Tue, 14 Jul 2020 04:11:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:3e02:: with SMTP id k2ls8871364eji.4.gmail; Tue, 14
 Jul 2020 04:11:25 -0700 (PDT)
X-Received: by 2002:a17:907:20b4:: with SMTP id pw20mr4103645ejb.225.1594725085583;
        Tue, 14 Jul 2020 04:11:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594725085; cv=none;
        d=google.com; s=arc-20160816;
        b=KCv2qplitKPnpuA3dqxRZ4vGvBlNhIYMSRCD8fLcqi4IMHM16bznCMCBganhEMQPgb
         h1MHnf26zmpkLNdAWU/V4fNJQIZkXNDr5OFqD48ADakU/Z+FjjIbH8xwLS+bWgYYYz4j
         T879ItVXH9RlFSQTprZfXtGPdnP2CQ5LWEns6+554ZVaKci35ZfeIxjrTgoo33+fDyUW
         56NIAT0tyaZr+X8VQANsOWf0UVbOUuBBefmPBZUWjONXOeVpd5g/VIfYNgWSQ+Vdtkc9
         d/I6aj9022Pk1ShQ9DBSrDKN80sZSJgU3gOnzExkrcR9CepsBxceBVhX1CDBRaUWhSHN
         x5VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=b8L83i4HihMypZF1wnFq/6H4pb0OI6PUTC8JUPd7zbM=;
        b=hcjiNFLAol8LQWIE+6n7FkGAMStUX9x4s/ENAP7tRWWTS/9Nwb+/XKXMAnKhjcMl/c
         nVp2YoRVEj6dUCic6txx40LfF7T7VSL+Ec3nxCH9G/esWLo5+8dI5LduOzWLtE6ckXyb
         935YW7l2CRZBn83tIZiJds2IJeVpVkIekukaaY+zReyPVzwaa26FYAnbHUAVzcDBaaLv
         Kwg3FSgQ5ojUV1csTGuc+GRZwoNOkRyfxSzX8YYuJ10SqFv9jKY07DUueMDLgeDS2lkd
         Bret5HtxnFMwSdRucuVSecGdsvchLXkMemz1x+uhmhW5H2mVxnm9rtyDj/y7DhEMQq2J
         HLIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=slP0ybNp;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id k4si696349edl.4.2020.07.14.04.11.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 04:11:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id r12so20805417wrj.13
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 04:11:25 -0700 (PDT)
X-Received: by 2002:adf:e701:: with SMTP id c1mr4688637wrm.350.1594725085278;
        Tue, 14 Jul 2020 04:11:25 -0700 (PDT)
Received: from localhost.localdomain ([46.114.111.105])
        by smtp.gmail.com with ESMTPSA id 69sm4131068wma.16.2020.07.14.04.11.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 04:11:24 -0700 (PDT)
From: Sedat Dilek <sedat.dilek@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	Wei Liu <wei.liu@kernel.org>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
	Jian Cai <caij2003@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v2] x86/entry: Fix vectors to IDTENTRY_SYSVEC for CONFIG_HYPERV
Date: Tue, 14 Jul 2020 13:11:03 +0200
Message-Id: <20200714111103.14591-1-sedat.dilek@gmail.com>
X-Mailer: git-send-email 2.28.0.rc0
MIME-Version: 1.0
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=slP0ybNp;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444
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

When using Clang's Integrated Assembler (LLVM_IAS=1) we fell over
ClangBuiltLinux (CBL) issue #1043 where Jian Cai provided a patch.

With Jian's patch applied another issue raised up when CONFIG_HYPERV=m.

It turned out that the conversion of vectors to IDTENTRY_SYSVEC in
case of CONFIG_HYPERV was incomplete and fails with a build error:

<instantiation>:9:6: error: expected absolute expression
 .if HYPERVISOR_REENLIGHTENMENT_VECTOR == 3
     ^
<instantiation>:1:1: note: while in macro instantiation
idtentry HYPERVISOR_REENLIGHTENMENT_VECTOR asm_sysvec_hyperv_reenlightenment sysvec_hyperv_reenlightenment has_error_code=0
^
./arch/x86/include/asm/idtentry.h:627:1: note: while in macro instantiation
idtentry_sysvec HYPERVISOR_REENLIGHTENMENT_VECTOR sysvec_hyperv_reenlightenment;
^
<instantiation>:9:6: error: expected absolute expression
 .if HYPERVISOR_STIMER0_VECTOR == 3
     ^
<instantiation>:1:1: note: while in macro instantiation
idtentry HYPERVISOR_STIMER0_VECTOR asm_sysvec_hyperv_stimer0 sysvec_hyperv_stimer0 has_error_code=0
^
./arch/x86/include/asm/idtentry.h:628:1: note: while in macro instantiation
idtentry_sysvec HYPERVISOR_STIMER0_VECTOR sysvec_hyperv_stimer0;

I and Nathan double-checked the hyperv(isor) vectors:

$ rg --no-heading "HYPERVISOR_REENLIGHTENMENT_VECTOR|HYPERVISOR_STIMER0_VECTOR"
$ rg --no-heading "HYPERV_REENLIGHTENMENT_VECTOR|HYPERV_STIMER0_VECTOR"

Fix these typos in arch/x86/include/asm/idtentry.h:

HYPERVISOR_REENLIGHTENMENT_VECTOR -> HYPERV_REENLIGHTENMENT_VECTOR
HYPERVISOR_STIMER0_VECTOR         -> HYPERV_STIMER0_VECTOR

For more details see CBL issue #1088.

With both fixes applied I was able to build/assemble with a snapshot
version of LLVM/Clang from Debian/experimental.

NOTE: My patch is independent from Jian's patch and should be applied separately.

Cc: Jian Cai <caij2003@gmail.com>
Cc: clang-built-linux@googlegroups.com
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Wei Liu <wei.liu@kernel.org>
Fixes: a16be368dd3f ("x86/entry: Convert various hypervisor vectors to IDTENTRY_SYSVEC")
Link: https://github.com/ClangBuiltLinux/linux/issues/1043
Link: https://lore.kernel.org/patchwork/patch/1272115/
Link: https://github.com/ClangBuiltLinux/linux/issues/1088
Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
---
Changes v1->v2:
- Add Wei Liu's Reviewed-by
- Add note to clarify my patch is independent from Jian's patch
- Add link to latest version of Jian's patch

 arch/x86/include/asm/idtentry.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
index eeac6dc2adaa..d79541bfc36f 100644
--- a/arch/x86/include/asm/idtentry.h
+++ b/arch/x86/include/asm/idtentry.h
@@ -626,8 +626,8 @@ DECLARE_IDTENTRY_SYSVEC(POSTED_INTR_NESTED_VECTOR,	sysvec_kvm_posted_intr_nested
 
 #if IS_ENABLED(CONFIG_HYPERV)
 DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_CALLBACK_VECTOR,	sysvec_hyperv_callback);
-DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_REENLIGHTENMENT_VECTOR,	sysvec_hyperv_reenlightenment);
-DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_STIMER0_VECTOR,	sysvec_hyperv_stimer0);
+DECLARE_IDTENTRY_SYSVEC(HYPERV_REENLIGHTENMENT_VECTOR,	sysvec_hyperv_reenlightenment);
+DECLARE_IDTENTRY_SYSVEC(HYPERV_STIMER0_VECTOR,	sysvec_hyperv_stimer0);
 #endif
 
 #if IS_ENABLED(CONFIG_ACRN_GUEST)
-- 
2.28.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714111103.14591-1-sedat.dilek%40gmail.com.
