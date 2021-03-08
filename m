Return-Path: <clang-built-linux+bncBDB3VRMVXIPRBBFRTCBAMGQEC7V3W3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCC8330D74
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Mar 2021 13:28:53 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id i26sf4252129ljn.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Mar 2021 04:28:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615206533; cv=pass;
        d=google.com; s=arc-20160816;
        b=y1g4Zh/zTbl/O18hZihtzN6L0Gdhltqa90ia27Mt4t3sLrdC6P0I5/rVIWEqKLbRoO
         mmyFbfx/0mLOE8x94LPhRX1YTjd5JorOGpWLnHmkLkjerwMR+qsO5uVvqOLsCz9phlNa
         iiNN12E7rAx94DajVd0YgqlrMIveV6BVHtTGAyahwNSnb8r24vsyIZANOMsMjPix3yry
         2s6/3tWC0OGhJrGW8BcIpDl/x1x9qY6w10j6ftKl7ALdl+u3yUVcgLF60gxqBuS+0yzP
         NSlPgIe2oj4Gria0ZFyUQfkZHdnWR4yB6DZDshT4Zy0rEIc6SedBEri5KsoUgGPkiZ2k
         cH7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=hI0iRlszLf5Dt26SxrFjRjf968Qo5Lk6A17myX06vSc=;
        b=DmQdB0C724Bfp+/nrnY3LjYi6jPz3wEhtmRiUMISmYq2q6SJUmLKNrd8v7WeIqE+RM
         eI72YiNTRJ6fQqg5wBFS23pMr0I1w7SzIxsCRUUlBhHjfIy4aHM1IfqJ2iCpX5MlxLc6
         T+9lGm9q0bJksoZlsy7q5+phasfe4rbhxcXcI9TcFmdJhDMPk8kFRAaWwS4QoQbXGiCd
         UNqGlwixsExe062Iwal7JuJ/OnAihLk12oTou37t+/iIe5R1Ur7pYSfYfma6KqReqpmG
         IV4Z6n2gXSOnOO1ubR2E5qaeKsXvzYq5/OBkSeByJwAtd8DErHwYKmw6bh7Sr6LR6JTC
         mMgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=ullbjypH;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=hI0iRlszLf5Dt26SxrFjRjf968Qo5Lk6A17myX06vSc=;
        b=Z8vHuUUIts4Lc4J8dnAZhZSHhPm1MW2wsGgpdfD9jGHYD/UZJ1Gp1PC9uhYlyuqkqF
         9wFyptP86+JT1PpzZc36RuRDKCbRLwYnO/BXl3Ig2M7J14vNNBxmEZEiuDVx/1nbEpn+
         QSw9yw6MfD2vTgVz/+hgNT1Vq84M4/Br3xSl9E3MV/Jh9u9WpcZWSbI+M4Bl+TPovkbg
         9mNScZgyNcPAM/S3N+TpzPriTOwP5AsPcbgnkWBPStB3q1YcIlQKZk2xBsvpPYkYJOJQ
         fSg7Rq3JVpreM/yBI1npo0e25mtdHF+tiLN+oD4wx6Lb/2O32dRQbZFegsAyP4q83343
         N/mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hI0iRlszLf5Dt26SxrFjRjf968Qo5Lk6A17myX06vSc=;
        b=gTeVlWFyEJ3VDGZk+RMxptWA7eZrxra51Se6+4xrC284TJGp8BpqFhn9yItTgQYkRT
         KU4dc2lmOju2GK0ymwNHWbXYC7JBHY+cCpgHOMJpsKYgJEJstRLLcM6rUsK4j7pS/fSm
         3HeoAtphplOqn5Lwqd0QGTD+Y19uSpkyb//GRY6h/BJ3SOj6J6Z2UIUPzNdTZlrchFX6
         UJuSsh6f92X01/7AxcH44rrJlsavrDhOPcu4cTCDoeQmaMV1HBovi1TMBOP7ebTVCFCw
         XLlYExj9ezmmGfJPLKBWSdZ1eCy+LdkP6yImB+Y21gznht16+AD2OEImOHWXPGDnGWi2
         jMFQ==
X-Gm-Message-State: AOAM533rQxQH05WUQbpvT1/FKp5BVuY2b1kd4uwzBdoFm7ld3S2C/U1O
	gb+ltx9+b2bwRRptrAlMZhI=
X-Google-Smtp-Source: ABdhPJwECkREiJ4cznhx476tLYskdRx4DubSTZ8fugSi0UBxlU7EC3XavhPsBrCrP6Bcq8v82ufVWg==
X-Received: by 2002:a05:6512:2242:: with SMTP id i2mr13975751lfu.211.1615206533087;
        Mon, 08 Mar 2021 04:28:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3c10:: with SMTP id j16ls2661803lja.2.gmail; Mon, 08 Mar
 2021 04:28:52 -0800 (PST)
X-Received: by 2002:a2e:924f:: with SMTP id v15mr13937408ljg.172.1615206532031;
        Mon, 08 Mar 2021 04:28:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615206532; cv=none;
        d=google.com; s=arc-20160816;
        b=d4NX4MNFDrCCfm5eF/pLi5TpTlYypEw7xIyKfQIfVRpDIMjDnu4+l074PNPYRN+PAo
         3ykOQ1zxunlXeOl7nY1OA7CnkZ+zh4IK/OhqiwIzTukotFLsHI8Exaue7Glmlojofjdu
         HIuUseT1QdQ8rAas2DzmayhALjnFKrN1Jghq3i1lHc/SOTJ/mYWP1Ucg6aPtQF+afSWe
         GrqSk6ZaTCwiIGd+b5/f8ArvKsejcfA16Qa+GGPymvRKK20De/qGcFX3dWkFFlIPTGW5
         ZNGGGrPOq55ncF0hWYexnzYpquzjAxG7IJWPX8SzVyI9Fab8gmJbEvd1qCNtTwJ9GAHY
         YTLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Pj0+lsoXMYSDviFMNu3CfGDulAqhBZd0duxurV0jt/k=;
        b=lw1f/jr3kA9txF7jDKwVSSBRf2KUzAA8ZVcPfObq9i+7mU+dlsPuC/WB6aipC4Ywii
         smwxcHyfziVSKCbKGQ2R0haFiqTqBKJz7njTbPUd+8QuF8vo5xMzme7XMTDE2lhMp6Tr
         j23j46tF6qLkBVSAZgQndqt1W1Lmq6OwNnNJDvTbi9351CJ359VVPVly3MrhWm1+GTBH
         v3+UWF0lJMUmMBKlaa+WNlBr1lIYhNfyo+GWbX7m6YQPNpfBk4MLERR/xy3d3pU2fST+
         7Odg10EazRFj9GqQryxuQgB615JUNrJNsAMElKcCjeGdl6Zb4LqQMByRlRcYSwtpOZAK
         jq+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=ullbjypH;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id l12si131906lfg.13.2021.03.08.04.28.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Mar 2021 04:28:52 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id EE520ADCD;
	Mon,  8 Mar 2021 12:28:50 +0000 (UTC)
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
Subject: [PATCH v5 00/12] x86: major paravirt cleanup
Date: Mon,  8 Mar 2021 13:28:32 +0100
Message-Id: <20210308122844.30488-1-jgross@suse.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=ullbjypH;       spf=pass
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
  staticcall: move struct static_call_key definition to
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

 arch/arm/include/asm/paravirt.h               |  14 +-
 arch/arm/kernel/paravirt.c                    |   9 +-
 arch/arm64/include/asm/paravirt.h             |  14 +-
 arch/arm64/kernel/paravirt.c                  |  13 +-
 arch/x86/Kconfig                              |   1 +
 arch/x86/entry/entry_32.S                     |   4 +-
 arch/x86/entry/entry_64.S                     |   2 +-
 arch/x86/include/asm/alternative-asm.h        |  10 +
 arch/x86/include/asm/alternative.h            |  28 ++-
 arch/x86/include/asm/cpufeature.h             |   2 +
 arch/x86/include/asm/cpufeatures.h            |   2 +
 arch/x86/include/asm/irqflags.h               |   7 +-
 arch/x86/include/asm/mshyperv.h               |   2 +-
 arch/x86/include/asm/paravirt.h               | 167 +++++++-------
 arch/x86/include/asm/paravirt_types.h         | 210 +++++++-----------
 arch/x86/kernel/Makefile                      |   3 +-
 arch/x86/kernel/alternative.c                 |  37 ++-
 arch/x86/kernel/asm-offsets.c                 |   7 -
 arch/x86/kernel/cpu/vmware.c                  |   5 +-
 arch/x86/kernel/kvm.c                         |   2 +-
 arch/x86/kernel/kvmclock.c                    |   2 +-
 arch/x86/kernel/paravirt-spinlocks.c          |   9 +
 arch/x86/kernel/paravirt.c                    |  78 ++-----
 arch/x86/kernel/paravirt_patch.c              |  99 ---------
 arch/x86/kernel/tsc.c                         |   2 +-
 arch/x86/xen/enlighten_pv.c                   |   4 +-
 arch/x86/xen/time.c                           |  11 +-
 drivers/xen/time.c                            |   3 +-
 include/linux/static_call.h                   |  18 --
 include/linux/static_call_types.h             |  18 ++
 tools/include/linux/static_call_types.h       |  18 ++
 tools/objtool/arch/x86/include/arch/special.h |   6 +-
 32 files changed, 339 insertions(+), 468 deletions(-)
 delete mode 100644 arch/x86/kernel/paravirt_patch.c

-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210308122844.30488-1-jgross%40suse.com.
