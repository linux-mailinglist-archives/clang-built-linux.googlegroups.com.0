Return-Path: <clang-built-linux+bncBCXKBPVPXAFRBLHVWX2QKGQEYHYDKEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-f59.google.com (mail-wm1-f59.google.com [209.85.128.59])
	by mail.lfdr.de (Postfix) with ESMTPS id 5747E1C25F3
	for <lists+clang-built-linux@lfdr.de>; Sat,  2 May 2020 15:50:37 +0200 (CEST)
Received: by mail-wm1-f59.google.com with SMTP id h184sf1698848wmf.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 May 2020 06:50:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588427437; cv=pass;
        d=google.com; s=arc-20160816;
        b=IK2ZHgaPt1mviMfFiodDv90uU/YDyOHDaymAKIy/gGp1dOSbzR6t8R0IGsCi/oak6/
         E6tVojvGEVuigwRZSRn2mzG0Eac3eUzDxhWcthAC3tYI2pP9xfg0yGr6CAqISKRh/71q
         kNXPCA3Et4v3Ki1rZcxvE/zdrHrJjGOBQzpAUBiQ0ycRIPmz70V5UXYwyswU6J4NoOEk
         bSppPSnGitiqi/C0Tkr4iVb6Wj4FHLk8Y1Q9N/50oKa38VsPS3PW8fmH509gYYNYp7sF
         i2RgITJK0UHecXDxkeayyVEUCKmCkrmx9DDNbeY5Lom7P4/8jLhuK8Uj6D2/lA3eZp9E
         gmJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:sender:date;
        bh=zubO6VV0Fxdh/Z5MrXCrgoNXjzcTp+LKS419EkNp4Lg=;
        b=ButSrVeGk9rRWsy8/DEvPHK+sGyhhUR5BOcEvOosugW22tjzDmSrd1HO20lHlB6XHL
         +RwESl0wGCTJQNr4z2oGnsah2SFihajZzwVh4rJoAiJxfvaUyzDbzPyOrtFbxQee/goX
         8dCbuOxf3ZQv5Ntz3nK1LqBOq5GN/K8zXUdN/bCktWI3RoECpEmskMzvDO6z3cAu2pl3
         c/QImm+HzO++MmWZ9uS/BwWYN5VqrSXEqtsO8E5SyeIOcRWrh1/GrHm90T8OrJz8qxCh
         WkRoU3Bo4ydTJqM7Veo9Tk/6FiZMNvj5CCsfpf3YspYbpHx4iUSeGudTSh4edGAwo6mG
         Mpqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:sender:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zubO6VV0Fxdh/Z5MrXCrgoNXjzcTp+LKS419EkNp4Lg=;
        b=mPmrc5lJUDvSA1Xvnln3MQ0B+dvDLgpUr078F63/XsqH7YtBVp/zEHVP0g7+QWs2Bc
         FvXTHb05jW8Auxw7M75vx68e5HsxDDuNzo0hxtCc9JYUREZMGULAHZvl7b7WvG4o6ZHg
         gRaX23E7of2KgxjKCMNVJyKhEMB55ATjfHigyVVmE3UD/nbKTGv8gi1s3wqjemZf2ajD
         /hcUP4Hf5psxnTSPf4fRzss0C83Ew4kaWyx5DASXUI1F7p6bvUyF18HAoUi57uIo2HWw
         JFiueUVZiyN2S26WPixkGbF0xKZCc8xNSaVdYdySSJZvRpeai7DDtEmq8OGgd3v2wsxP
         6AJw==
X-Gm-Message-State: AGi0PuamEBypKR+c+ZH+4fTX9hUIqALWXBaGnHEtCiy+dv4LLMTepdVy
	iYeJmFy7W9o1UvnOaNDnr6g=
X-Google-Smtp-Source: APiQypL55Ja9EDcT3JoBnPNx4VcgZK03qCHKpJ3AtbtHjHCFIb9r9V+BCyfovic/+00D6tHSEwZ9jA==
X-Received: by 2002:a05:600c:148:: with SMTP id w8mr4989791wmm.144.1588427437097;
        Sat, 02 May 2020 06:50:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:224f:: with SMTP id a15ls6335069wmm.3.gmail; Sat,
 02 May 2020 06:50:36 -0700 (PDT)
X-Received: by 2002:a7b:ce89:: with SMTP id q9mr5033000wmj.185.1588427436526;
        Sat, 02 May 2020 06:50:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588427436; cv=none;
        d=google.com; s=arc-20160816;
        b=Vic+ARsLkqjl0DeW5cE88pf5oKufS/2CdrjND9C8r8DTWMnXBh8ypp2eh7UlBqpCy4
         DU8TyJj5S+mZ/3oqHtObyLGcEticQFRNwyDOLX29AQbh3jxTmJaYhs1r2LIe18Nv3zA/
         VOmzZHaogS0JMxV63LMNysQ2m7UGIp8ZomcwMkUYEQL5b8lKkclPjySApNBwL/fD8Yrm
         KcRDQM2Xq8EPNYLtm4x8ZSBNf/GyubR90uOLaOipicyf7mD4P25Egcnu2lWZ2GCNr8Pz
         PIxWH5RRbubBZy91ZYOSwYv4/spjVDiqyvIPWEA2pVBPklaUOG4usCAGNxk8nHvMf49i
         e+7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :sender:date;
        bh=xf7leBz7Zr9EQzGtluOJujNRpUS9ryzJAxJWTMx5Q7g=;
        b=zlVspre/XJV9C2qb05WfOX41bmsoPvf9rv9CSJpgl8aK7M8/m6qjslMhaG7bUfYwea
         NaMk8qXMAjok4RbDOt/CLxiHVJoAMsge8s3WMVe1OBU1OS54w5t2k+oZHKKfyRkANVeq
         8ncxyLq51SlD5BE5iCprBFHiLt+jCJ0+3IBmyZy4NJwdUDHHstENHNa3sDoCWRm4NeND
         YefGUYpX3HYdq2MUV+Z3EBFKBFYW5KAHSb8SvLrJrkKQcT6qXtuZtHZz+gl8ya4SHA+w
         Y6MkRpIhVf8Ym/GHwX3Or4KUid7d4a1IV8EtVYBBBPKVy262bkY2Mfj8pbKZLoYVRBrH
         4GLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id x11si123854wmi.1.2020.05.02.06.50.36
        for <clang-built-linux@googlegroups.com>;
        Sat, 02 May 2020 06:50:36 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: (from localhost user: 'macro', uid#1010) by eddie.linux-mips.org
        with ESMTP id S23992819AbgEBNueR8mPx (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Sat, 2 May 2020 15:50:34 +0200
Date: Sat, 2 May 2020 14:50:34 +0100 (BST)
Sender: "Maciej W. Rozycki" <macro@linux-mips.org>
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Nathan Chancellor <natechancellor@gmail.com>
cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Masahiro Yamada <masahiroy@kernel.org>,
        linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Fangrui Song <maskray@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Dmitry Golovin <dima@golovin.in>,
        Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v4 4/5] MIPS: VDSO: Use $(LD) instead of $(CC) to link
 VDSO
In-Reply-To: <20200428221419.2530697-5-natechancellor@gmail.com>
Message-ID: <alpine.LFD.2.21.2005021435100.3602499@eddie.linux-mips.org>
References: <20200423171807.29713-1-natechancellor@gmail.com> <20200428221419.2530697-1-natechancellor@gmail.com> <20200428221419.2530697-5-natechancellor@gmail.com>
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

On Tue, 28 Apr 2020, Nathan Chancellor wrote:

> Before this patch, LD=ld.lld did nothing:
> 
> $ llvm-readelf -p.comment arch/mips/vdso/vdso.so.dbg | sed 's/(.*//'
> String dump of section '.comment':
> [     0] ClangBuiltLinux clang version 11.0.0

 What does it mean "did nothing", is `arch/mips/vdso/vdso.so.dbg.raw' not 
produced?  Where does `arch/mips/vdso/vdso.so.dbg' come from then?

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2005021435100.3602499%40eddie.linux-mips.org.
