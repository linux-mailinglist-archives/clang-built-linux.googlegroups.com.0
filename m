Return-Path: <clang-built-linux+bncBDB3VRMVXIPRBJPZTWBAMGQE7MJ4BRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC0533277C
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Mar 2021 14:48:21 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id t27sf6756090edi.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 05:48:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615297701; cv=pass;
        d=google.com; s=arc-20160816;
        b=WwtYha8KZqlp8h0oeDZkngM293zCYeNVf6dcro8C855aM5lc2wjrYVPcHiqot/upbz
         ouQhvMlDpmMTtKFFEVDYk2+xV9lgWpLA9RzQat8HHKCuVZk7RE+b1s3dQCTgvIk0Z2Qy
         6gpJz6fet3imMvrYktXScfaeoUaiYqPH97gGVoRJDTaIV5WC6GiLTjAtBx7PNjLA+E2P
         VN+flMniwCpA6sWhEmJdtC4klAtjK1NRjiicoTS9SneNf8d+/Ok9DoNxcbCZccDTUYZp
         yGLhHF7B8T5PMJvGIF5qfdU++I9H/SScXXMlvDFr5RnGQV847VGC2SzAcEUUBjRHs5a1
         es2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=QYacsr6zfPk3Kn6tOpb4vTOSHNziVaJPE/YOSMGHMGA=;
        b=zvMfpVRQe6RlOB2hAtlgfeQdlTX5CKdKdN+h9ibCj5lIXvKZta5vurOOI5ECrPkc1P
         ztxsorqdEMLGJxIGAk+d+Ds12qq4zVVg+nvbEedeGjekdRlkEJ1iJvgNOz10I/FX8Dxb
         OfnLWaxWY+dQGtzCuc+j6mqq96ZkTHyxz2e4+i4u7PfNCIm6yVuks9TqPhSG7yvyW/Xf
         5ObVwCU5QlHLNU+Kj70coTApMH3G2stiLczM/5y1GaUftCoz/e6ZZzO5s2QkA5GAzm23
         sAaFxslaRxpd50F3guDD+5sydasRRaH7a3GeoD0dCOVKb8XixVE33Q+dg51HprWPd5nf
         MukA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=eTOxo46U;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=QYacsr6zfPk3Kn6tOpb4vTOSHNziVaJPE/YOSMGHMGA=;
        b=q2N+RndVCaFyqwRvSV38TOvoTbAarzEy2GIoIh70vxBIU210IVRRFwrsOPdeqL+uE3
         Phcq2NtWM4T45REp8GyruhzfovIpE6a8Ld3maUiCQsXNovi8pAUhhfH9Q4PIHsbRBIiP
         DpPcDhlhVah2nocPwsLBUZyO+j+n+KHB9tVOFoB2wGQPr1DAL4AVWUEnuPU36ul2OKVq
         E40hSx2w7tkUjM9QkBfr8oQBHnob98vd313/3Er34tY6yE9/lfYJVPel1S7zeHOQeOCQ
         sR0TV6Wlxtmmhx773vGXqQYldrEZ9NTmKvVXU2Lroc6bQ8hhwlGocdKFGseiSRUtsdvT
         qf3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QYacsr6zfPk3Kn6tOpb4vTOSHNziVaJPE/YOSMGHMGA=;
        b=TZlED707qTbtqzK66yJ68V6UXZgUxW3ereiRdgQpVPczPAHUXKRgD427kOSp+Z7aga
         +ox5kBoEsjrxWnXxcMx2iHUi+rF7V+Dc38tBmf68FOAT3OuCLKy41vtsPpMdI5CldAlT
         l+uH5l6C4lj7x8Rhmtj27pQxmZQyKCCEFUuTtoEEvpXaNBqdWxUrIDsSK4to/U1DpFcX
         hDTUQVCbNTNU82EE7u039NgmlwyqKD9+QbdlEuOZDaouB28nRONiwakmYx0ADj6XamC8
         58ERB1bv8iO0socZHZMqXSgphMeGs/7rClPFraiVMJ19gpfXO4b350WzcRv88bM9OGRT
         Zlyg==
X-Gm-Message-State: AOAM5332NNXykieSG3vdWwjJ9BKoSaV4Ofy9a3cBELdjO9974yt3zcFQ
	35pMkX3PGSZfMsXEBua4lHQ=
X-Google-Smtp-Source: ABdhPJyJEtbhWszbxOUwKSL1TguJ9k/Y+Wm8rGlPfQvA2K+oUGRiOGsNwjrv+5BJtbOtAISabvrnRw==
X-Received: by 2002:a17:906:1a16:: with SMTP id i22mr3410285ejf.522.1615297701680;
        Tue, 09 Mar 2021 05:48:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1432:: with SMTP id c18ls11260819edx.0.gmail; Tue,
 09 Mar 2021 05:48:20 -0800 (PST)
X-Received: by 2002:a05:6402:34c8:: with SMTP id w8mr4368421edc.235.1615297700840;
        Tue, 09 Mar 2021 05:48:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615297700; cv=none;
        d=google.com; s=arc-20160816;
        b=YesplkLAtQxgbRoRma70mAwEXarMiazRnAskzp4EdxRmozNY9DdHIBP5e1hYGDpWPD
         E+R5HMbaqxRgsfj16PckJUQq//DpH2t/b4ItMjfGd2+ernZu4cXW1OGhhCNZG+9SisJr
         9IOAueBODcT3CVZ+pxHmg8sJ711t2Eh2SLHtVYPEFmOpiuvYqhh41atqOBNQiHkoZ4VE
         7XgPyH7iX/mKG+X4zqKV5qNtL1iQYN9X/NOd8mAmEzGeJ7CD0wLPUVWtxyuMszmC+ZPM
         hWL10L0yrdOpNF6JBhUYMOCP0COUnp/IErZDJ4ZA4sIM51MPuRqyh02jcoXN0VWIGiZW
         008A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=95nQytiynjE+lgsCD540YiASmJmBTjnBSf2S8IR/Qxo=;
        b=UXex7xNbTkfFLeRdMxsgdcpwmh8Y5smiQ4W3JeQOm9eHWrsbOd41zKoCzrbREo8Chr
         3NSCV5vjOCxqm38vAAnd0wg/pqoivAFn2KSLSKH7vXXOATAm1yjhOylY8nVGlSPf6KI+
         p9UWnRT+XVKtUn8b9/zvpQhQGYPE3o3YePA+4+2L8ot/tHrrvzoIragvWlZEHxAquDwL
         jvoPwahwczzwCYHNnQCWks7omgPExIsTDT9+2Us+GWsCvwCvyz/1g20REq9Zt4qCtg0d
         4TTFR05s+uGIxQlTePbgY6eVBuy+qZRR5DkK0SpG6eWgl5thEY8B5x65C1xSWFHpsHNs
         pSqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=eTOxo46U;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id w12si648127edj.2.2021.03.09.05.48.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Mar 2021 05:48:20 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id C3B9FAC54;
	Tue,  9 Mar 2021 13:48:19 +0000 (UTC)
From: "'Juergen Gross' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: xen-devel@lists.xenproject.org,
	linux-kernel@vger.kernel.org,
	x86@kernel.org,
	virtualization@lists.linux-foundation.org,
	linux-arm-kernel@lists.infradead.org,
	linux-hyperv@vger.kernel.org,
	kvm@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Juergen Gross <jgross@suse.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Jason Baron <jbaron@akamai.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Deep Shah <sdeep@vmware.com>,
	"VMware, Inc." <pv-drivers@vmware.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"K. Y. Srinivasan" <kys@microsoft.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Stephen Hemminger <sthemmin@microsoft.com>,
	Wei Liu <wei.liu@kernel.org>,
	Paolo Bonzini <pbonzini@redhat.com>,
	Sean Christopherson <seanjc@google.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>,
	Joerg Roedel <joro@8bytes.org>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Stefano Stabellini <sstabellini@kernel.org>,
	Andy Lutomirski <luto@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v6 00/12] x86: major paravirt cleanup
Date: Tue,  9 Mar 2021 14:48:01 +0100
Message-Id: <20210309134813.23912-1-jgross@suse.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=eTOxo46U;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=suse.com
X-Original-From: Juergen Gross <jgross@suse.com>
Reply-To: Juergen Gross <jgross@suse.com>
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

This is a major cleanup of the paravirt infrastructure aiming at
eliminating all custom code patching via paravirt patching.

This is achieved by using ALTERNATIVE instead, leading to the ability
to give objtool access to the patched in instructions.

In order to remove most of the 32-bit special handling from pvops the
time related operations are switched to use static_call() instead.

At the end of this series all paravirt patching has to do is to
replace indirect calls with direct ones. In a further step this could
be switched to static_call(), too.

Changes in V6:
- switched back to "not" bit in feature value for "not feature"
- other minor comments addressed

Changes in V5:
- patches 1-5 of V4 dropped, as already applied
- new patches 1+3
- fixed patch 2
- split V4 patch 8 into patches 4+5
- use flag byte instead of negative feature bit for "not feature"

Changes in V4:
- fixed several build failures
- removed objtool patch, as objtool patches are in tip now
- added patch 1 for making usage of static_call easier
- even more cleanup

Changes in V3:
- added patches 7 and 12
- addressed all comments

Changes in V2:
- added patches 5-12

Juergen Gross (12):
  static_call: move struct static_call_key definition to
    static_call_types.h
  x86/paravirt: switch time pvops functions to use static_call()
  x86/alternative: drop feature parameter from ALTINSTR_REPLACEMENT()
  x86/alternative: support not-feature
  x86/alternative: support ALTERNATIVE_TERNARY
  x86: add new features for paravirt patching
  x86/paravirt: remove no longer needed 32-bit pvops cruft
  x86/paravirt: simplify paravirt macros
  x86/paravirt: switch iret pvops to ALTERNATIVE
  x86/paravirt: add new macros PVOP_ALT* supporting pvops in
    ALTERNATIVEs
  x86/paravirt: switch functions with custom code to ALTERNATIVE
  x86/paravirt: have only one paravirt patch function

 arch/arm/include/asm/paravirt.h         |  14 +-
 arch/arm/kernel/paravirt.c              |   9 +-
 arch/arm64/include/asm/paravirt.h       |  14 +-
 arch/arm64/kernel/paravirt.c            |  13 +-
 arch/x86/Kconfig                        |   1 +
 arch/x86/entry/entry_32.S               |   4 +-
 arch/x86/entry/entry_64.S               |   2 +-
 arch/x86/include/asm/alternative-asm.h  |   7 +
 arch/x86/include/asm/alternative.h      |  23 ++-
 arch/x86/include/asm/cpufeatures.h      |   2 +
 arch/x86/include/asm/irqflags.h         |   7 +-
 arch/x86/include/asm/mshyperv.h         |   2 +-
 arch/x86/include/asm/paravirt.h         | 169 +++++++++----------
 arch/x86/include/asm/paravirt_types.h   | 210 +++++++++---------------
 arch/x86/kernel/Makefile                |   3 +-
 arch/x86/kernel/alternative.c           |  51 +++++-
 arch/x86/kernel/asm-offsets.c           |   7 -
 arch/x86/kernel/cpu/vmware.c            |   5 +-
 arch/x86/kernel/kvm.c                   |   2 +-
 arch/x86/kernel/kvmclock.c              |   2 +-
 arch/x86/kernel/paravirt-spinlocks.c    |   9 +
 arch/x86/kernel/paravirt.c              |  78 +++------
 arch/x86/kernel/paravirt_patch.c        |  99 -----------
 arch/x86/kernel/tsc.c                   |   2 +-
 arch/x86/xen/enlighten_pv.c             |   4 +-
 arch/x86/xen/time.c                     |  26 +--
 drivers/xen/time.c                      |   3 +-
 include/linux/static_call.h             |  18 --
 include/linux/static_call_types.h       |  18 ++
 tools/include/linux/static_call_types.h |  18 ++
 30 files changed, 348 insertions(+), 474 deletions(-)
 delete mode 100644 arch/x86/kernel/paravirt_patch.c

-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210309134813.23912-1-jgross%40suse.com.
