Return-Path: <clang-built-linux+bncBCXKBPVPXAFRBUPNWX2QKGQE24XLPFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f56.google.com (mail-lf1-f56.google.com [209.85.167.56])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5F41C25B3
	for <lists+clang-built-linux@lfdr.de>; Sat,  2 May 2020 15:34:09 +0200 (CEST)
Received: by mail-lf1-f56.google.com with SMTP id b5sf3412086lfg.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 May 2020 06:34:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588426449; cv=pass;
        d=google.com; s=arc-20160816;
        b=nyzrGXC39+bi06qymgyNPeTOV0TYz1/97fv7rkS9aIvzqrEW1g/+TUgaZ6mzpppPeP
         bKeZSLlccQUOu2jZUG1JZrxExEws/5EV66aYdCNCTk3w8cj1v/36T/YX384LRfNq10nY
         UPJZ1E3OSWkE8sq+HRSW2FBRYcKFB6Z/H5or9EEn+Z16YriCYs6mR60kFPsNozcGI3QE
         cCsdt9WyFl1NI/5k2NzeLdpkKIF5tj7d9FbqcBUWBBSy1zbBwdLrOE+PnRrvWNo2+iXU
         9RgGnYO3PBhk3IEQBcIR9+O5Ue8LvzB6ZKhOeVuIxj1R3/kqyH9+5MOAtsZqdsF5crFN
         +g4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:sender:date;
        bh=xP5nWtFKmotbaCir4lzqS6CrDipfEpl/vxamAaB+u6g=;
        b=k2K0Z3X0RvGybesqHYP2HaA2y8Gws65Fi6+QU7PU9nxfVLqzOXso3Gcg5f34hgafUo
         ufu9T73PS6f+tVy/V0qsNUemq1DUE+jmZ40eZlOdpAfx1mohjYOWLeU7mngTZj5GnvkB
         t2rYR74Amiz8+LzxOuMxZIv+CjnstFk3XciACaNecVyMpKEzSbDa0f1CLdCxh3I8OhMh
         cKxuSCEyUGuV3FR02FXEcuHr3pyPyrfQDwopOTGkN4qy4Qq0Xk9QLTWyEEsc9vquHJqC
         /ZTch9bKwYMx2J+ahGT1MZeDrQOJb8PG0s3H9VhrKp/HEz84GUYVCB/62dYT4vQ96Pwo
         vr4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:sender:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xP5nWtFKmotbaCir4lzqS6CrDipfEpl/vxamAaB+u6g=;
        b=CRC1Gzc6cIBSqinG6cGKhhgDEQSiZB+cIbQHFrIQDFBt+Fo9zKaXB18FwgAzGkOUOT
         lbqvZsqjwbOVyj65aI7z30GztuOyWTGkQX9pUd6FK7wAjySzV6H6l3gFrmRvJTz9Qj8e
         kjl3mMo6QMSThjbfk1YUNTk//NUm3/c4lTwSkdHXKxCJY3LBFL9mMK3zCYQRgaxreB2L
         KJ8ZxdpVDBGbbaekr1smEVsIJ1EvYMq4EjdgZb7Vv5Ac/Cvl8038qZlJarGxyJnEG6Do
         M8cEh9asARYJzuTTtNz1oBJwH8D4yjfXXpjpjsoslUytKh5oxjq0XKqzmsyMtTXK94wl
         YynQ==
X-Gm-Message-State: AGi0PuYQssMHCGt8/iow2Ew9jhDqwFrkVT+xDijcEmTKscmMw4Gyvxc9
	Ot//hnYgt+oyRXvHGFKvSWE=
X-Google-Smtp-Source: APiQypJuK+6gSrnR/142HLxGh8iAD8Ur6Z56NAJqnRaegwduM9EgXVuJIq7aDQUa9nwqo/7npKflsw==
X-Received: by 2002:a2e:9e45:: with SMTP id g5mr5438409ljk.180.1588426449417;
        Sat, 02 May 2020 06:34:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:2002:: with SMTP id s2ls771743ljo.3.gmail; Sat, 02
 May 2020 06:34:08 -0700 (PDT)
X-Received: by 2002:a2e:a365:: with SMTP id i5mr5128275ljn.293.1588426448908;
        Sat, 02 May 2020 06:34:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588426448; cv=none;
        d=google.com; s=arc-20160816;
        b=DdCCXsv8w2Tw1DC/0BQLoJQu0nEaQK0nDWBV+9gr+Q9Gz8KFzrUS3nOio9rxuggms7
         12VZaG6B0oZZ7b0tdBTnRmxG/mhVduox+RbCyKWLoaHb7ZJT2Klbnt5lIiOZnVptaHzb
         AXKWyskb9VdlZokKQNGuGQgKkSVM+dm5u/1W6Dn6r8POqQKHEIvKpxVY+3mGUrybLD/U
         wCwUVmBzzwXSaDaM+L61pph0ByOzVN90+9q5BrCCvI7r3OTcDC7/ZiD8gkwc1dc0Ca2S
         eqz/bi0MnqN9rYnZCMdNK/tQoWZVnUUIw39hctBIR9y8gDOY2DVLk7lNIEd5ec56XdGP
         7FaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :sender:date;
        bh=UASPTyFb+FUbJbT7Rtb3iTBORLJq4/7VRgHHjI5RPg0=;
        b=SIKkNjfhzJSzghad2g5ZGv0hhcqP5yXyelF14Xkm67Mk3ZBPuxI/4fjX5t/PxrbCrl
         1270y3LoxqP/8KIaugmaCxFU1y+lY6pQuHZZ3v3Z7a5tsbCT4edSr3KJTFhAxb2BO8sv
         eA0Qd+Nr0uN3t6G4ov8sSNQz2Rt3nwx3L9wkCBViIYzqA5BMsN8In0T9RPE4/FAtynlj
         bb3nhgHeHw8wt1Y7CndiYPrFLvXOfKLtekjencprr5bJao8F869cagGWUztV71v3PAkY
         6PY3+6bhhlrrvbTmTFOT4+8xcPs0UHkmD2lj4/gdkMVfaUwJDw1rFtDT42ixn2wCByL8
         q3Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id f1si463153lfm.1.2020.05.02.06.34.08
        for <clang-built-linux@googlegroups.com>;
        Sat, 02 May 2020 06:34:08 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: (from localhost user: 'macro', uid#1010) by eddie.linux-mips.org
        with ESMTP id S23991307AbgEBNeGPSGPu (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Sat, 2 May 2020 15:34:06 +0200
Date: Sat, 2 May 2020 14:34:06 +0100 (BST)
Sender: "Maciej W. Rozycki" <macro@linux-mips.org>
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Fangrui Song <maskray@google.com>
cc: Nathan Chancellor <natechancellor@gmail.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Masahiro Yamada <masahiroy@kernel.org>,
        linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Dmitry Golovin <dima@golovin.in>,
        Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v4 4/5] MIPS: VDSO: Use $(LD) instead of $(CC) to link
 VDSO
In-Reply-To: <20200428225401.7yrld7u2xr67t4xf@google.com>
Message-ID: <alpine.LFD.2.21.2005021408420.3602499@eddie.linux-mips.org>
References: <20200423171807.29713-1-natechancellor@gmail.com> <20200428221419.2530697-1-natechancellor@gmail.com> <20200428221419.2530697-5-natechancellor@gmail.com> <20200428225401.7yrld7u2xr67t4xf@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@linux-mips.org designates
 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
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

On Tue, 28 Apr 2020, Fangrui Song wrote:

> Sigh...  -G 0. This is an option ignored by LLD. GCC devs probably should
> have used the long option --gpsize rather than take the short option -G.
> Even better, -z gpsize= or similar if this option is specific to ELF.

 Well, the `-G' option is some 30 years old and comes from RISC-OS where 
the vendor linker had it; it was already present with the initial MIPS 
port of GCC:

commit fe3ec4f798ceea52e1b542b481670b83c12347fd
Author: Michael Meissner <meissner@gcc.gnu.org>
Date:   Sun Dec 1 05:02:56 1991 +0000

    Initial revision

    From-SVN: r88

specifically:

+#define LINK_SPEC	"%{G*}						\

there, so I don't know of what GCC developers' choice you are talking 
about.

 Much of GCC legacy comes from various vendors' compilation systems; in 
this case it was the MIPS Computer Systems (aka MIPSCO) compiler.  There 
may not have been a GNU linker port to RISC-OS at that point (or ever), 
and the assembler and linker invocation interfaces were kept compatible as 
ports were added to individual GNU development tools, for obvious reasons.  
I still remember using GCC with vendor's assembler and linker on DEC 
Ultrix/MIPS myself many years ago, to overcome some vendor compiler's 
limitations.

 And FTR this was still a few years before ELF was even invented; MIPS OSs 
used the COFF binary format back then.

 Sorry.  I think it's LLVM/LLD that ignores compatibility, not the other 
way round.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2005021408420.3602499%40eddie.linux-mips.org.
