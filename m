Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBIPJ6P7QKGQE4JMZMOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id F18012F2455
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 02:00:17 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id j10sf284807lfr.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 17:00:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610413217; cv=pass;
        d=google.com; s=arc-20160816;
        b=SjiE+e8DpKc+Q1Nwq4t9MorbQMh/QfcerUBxRtIU04yUtsmCdwuMhFKiJTte4uviKz
         kNuYC6pq10QLn7je6flXA3HT9L+wGgx6lsNUAvouWxdakajgyjIhMZuZOM1KKYWSV+U2
         3eVTUh7MEOQq1nffcP4VQKOMhGxPD7XTds62/jS9S2OLDLMdn83HWZx78AjEUK3teT0U
         o7PRKoznbVbIhNRg/4e98dz1iNhTsFxk7ggP8UO0rgxNA0XI2nvhQdvgrniOGxSsqHEF
         9fehNWIzBZi+rZE0Tcco3ixd4Gz5bHjIbhI83R3LotW9MiqX5YfSL9encNeVHFhQrGTF
         9jzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=xkI8R+U2T8iWTSO/GLMz9HypnQqZgtVq2xNRNhdmn3s=;
        b=fXnynNPxw4jb8PiYZn6/QBMCMFd8uVxSzBEoRKLsE9nW/CMrY2H0Rur+5/OjvhDDPZ
         oVM6wNrHwQzJ4jj7U55pj3xr2gi27NyA14NzYgm+Eo4A4cTyoHvRRQ24S2dFbgzMg/9U
         1SVJa4U3f91cXPj5X222YDBwHRmdqfZe/LPLVmoCcunab/J45CmJN+RB7bnUUoDPiIRx
         d+rfKlVnVo1si56k5rDXBmSxAJnhVntiHF+ocfBgGwXl0WuEHtHAJhdmdpYSiq4N/ZpX
         s8y8KU7Qul+4j10kZz6fzszLPeA+JlF/IjswaGOU0QybyiDbIblHExOTiU37SA1G51gY
         NjVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=kHBEzKSp;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xkI8R+U2T8iWTSO/GLMz9HypnQqZgtVq2xNRNhdmn3s=;
        b=Tu387EbRQUYzQPEaSnHDmQCimr1+f88zQZeUKvEpGu2QpeA8Gri2snMXfsErVKpxeJ
         8sZSsrR4R6qz2oNDx/e/DKqtNLSOzJG33Jof8Wyey7E1GEGVz/BTb4OEE4dtEKKliGOi
         A0a4gU+BmHdiux9LyV3B6Mpxmz4+ULNELyGrFvChh73luWs6S8lkoI7jWw9K5TVUlWTm
         3oO2J2RIXWvneHVSCpUNMzUI6t+2RfTDG6guHiPl31sZNY5FbGk1pcLSaBKrrL8XQXce
         O1MgLx1gZCKzXp5oafX1Xmtkjc2gtp4p4qS6xpnIAPeIVGxOf5R10CmGYo4REckueSc7
         xFSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xkI8R+U2T8iWTSO/GLMz9HypnQqZgtVq2xNRNhdmn3s=;
        b=Ew79oyAM8zo4OL/FCBGTII3typ/i7XulX8CULpUITxUBhnd1id1LHUhTdqXrRbswhL
         2H3NJbK9yg0VbPnCgdOIjPTLMuCfANF+sgtb9eqkePzy3yHj/LRb2mzKv162KYCJpHEf
         NPH1Xd5QKXTBgQ9K+suhawLSUrOi4+8yZnn1beuDMV+Pw5ccqG1XCl0U2Ar9PZJ9nH6q
         xCpdvJTwJmxuJTcfvM3p1IcQBnQRqwS0/3sWUevfaaWeKzSKLA+11E/CWjixdoqpwCNo
         OkHLvF9GV919IA7VXemmapmWjAohDEQbuGb+o+KxIi9KprRTKmeys7DGGUxQ1+qPuMy/
         hNbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wxPyA8pbW6dXCZk7FboK8SCXCZQRv7/jEMBivKFwboxerYKpV
	bi3NMoAvgse/YeqFwdDp3ec=
X-Google-Smtp-Source: ABdhPJytNk1DxCH6zU4bvQJEgchnfqTV1hasveY5fhjTfBRDlUAPJFrSIxKY5MwqqEMjMX65XQA7Ew==
X-Received: by 2002:a19:2c4:: with SMTP id 187mr955659lfc.391.1610413217536;
        Mon, 11 Jan 2021 17:00:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7806:: with SMTP id t6ls238939ljc.8.gmail; Mon, 11 Jan
 2021 17:00:16 -0800 (PST)
X-Received: by 2002:a2e:9896:: with SMTP id b22mr879527ljj.9.1610413216608;
        Mon, 11 Jan 2021 17:00:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610413216; cv=none;
        d=google.com; s=arc-20160816;
        b=lHNfyA5sXeFVropPYjYM/iMPE7ZZpqd1b3kBnLSizMOj4vfhAP/wgAcUshQBo5cdmK
         duuzBNBf3yC6nLn7MGNPRUgxF8tphlO5qwUh4DsErOBAWfFvBOjDiDZKQL8kXq+9iw1C
         rZSPGxU2t2DC9oFAlk1t/B6xUcbBWpPTq71Y2Y4X5PjjYPNMrZ9kOTuWa4uJLbRQzLDw
         kyEW6bjVJZ+gYzGav9ITq9IIja1MVfaMdky77wWlj5asjSMKI6gbppVB4wDYBh0ngkyl
         nkT+vMvrm7scDjVQL1xT+CbhKFvjCvMiGRzc+0wPgAbAu6W62d4KPUEqAeuJxR2LH0Ty
         Ig7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=XMkDrWGGqxWvnwqtep6OcXKhpCNBaItznidTXPHeJCI=;
        b=ARLJ33NzY9BrUFiS4TeDS3ZK4J2/LqhkPFJIi3K1Ck4FAn4ryyH4PDL/vZtOlDJTm3
         ECW6PbL56NpFjTXm1dJ1vpbsND4aqDrRDkCwIANeb9pUKm17rsjLtY3C6GqKlx85uGE9
         aVZHkuCPKsrRwplgXMP/LI7dbu46VRlrHi8tjACbbdyatI1Rp6BFuUmn+F0UE+QYX745
         BNU/ph2B5G3M0F/2bpJ6qTaQfw+GKUkV8m8UWSKboDjp//jYge3KMNt8rI4AThM+CWrr
         9lusX6WSt3zbOQjbQN65dyALQJS+uFAyCA62+JjTDmbT6x4TYCVcmZypgv39n16QohQT
         6duA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=kHBEzKSp;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id e18si56057lfn.6.2021.01.11.17.00.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jan 2021 17:00:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f088f0064dd88f751605e0c.dip0.t-ipconnect.de [IPv6:2003:ec:2f08:8f00:64dd:88f7:5160:5e0c])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id B34B61EC0529;
	Tue, 12 Jan 2021 02:00:15 +0100 (CET)
Date: Tue, 12 Jan 2021 02:00:10 +0100
From: Borislav Petkov <bp@alien8.de>
To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andy Lutomirski <luto@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>, X86 ML <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v3] x86/entry: emit a symbol for register restoring thunk
Message-ID: <20210112010010.GA8239@zn.tnic>
References: <20210106015810.5p6crnh7jqtmjtv4@treble>
 <20210111203807.3547278-1-ndesaulniers@google.com>
 <20210112003839.GL25645@zn.tnic>
 <CAFP8O3+uEE4Lity-asyFLN6_+8qRUD3hgcZVapXwk6EfmGM+DA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAFP8O3+uEE4Lity-asyFLN6_+8qRUD3hgcZVapXwk6EfmGM+DA@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=kHBEzKSp;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Mon, Jan 11, 2021 at 04:41:52PM -0800, F=C4=81ng-ru=C3=AC S=C3=B2ng wrot=
e:
> To be fair: we cannot use

Who's "we"?

> .L-prefixed local because of the objtool limitation.

What objtool limitation? I thought clang's assembler removes .text which
objtool uses. It worked fine with GNU as so far.

> The LLVM integrated assembler behavior is a good one

Please explain what "good one" means in that particular context.

> and binutils global maintainers have agreed so H.J. went ahead and
> implemented it for GNU as x86.

But they don't break old behavior, do they? Or are they removing .text
unconditionally now too?

> --generate-unused-section-symbols=3D[yes|no] as an assembler option has
> been rejected.

Meaning what exactly? There's no way for clang's integrated assembler to
even get a cmdline option to not strip .text?

--=20
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210112010010.GA8239%40zn.tnic.
