Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV6Y2P3QKGQEYK4UYOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A50220A4E3
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 20:26:32 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id i21sf4255688otf.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 11:26:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593109591; cv=pass;
        d=google.com; s=arc-20160816;
        b=alyej5nDhAbZEudfWDRJidlB01HNIGtzdSZEmSHnf3gQnau++00gIwYnuuzMqkqivM
         HAgbHAwn4H/Re3RY4T/PNVZtgr5H+14YgbZWf3l0vYdAdEuTBBhPKkOhXSE2phdh9dYM
         91thT6IvfNUtbhI+e8Ko6j0Ed6CaNEH55TIeNERVwbFzs2BJNe03Bfo7OLSBDlPUZeGQ
         ME10/YVlGj+mGWXCcUR442/1vp7/xvfKJkJuvYOYI+VylwdG1eOkEKUU+o7nUIxnRTtt
         d6BuwxBCFaGd4CwN37H+l6fEtEKKPfDOeSjCdlcf6UGD4/vJRRTEXcFS1Z7k1cNmDg2Q
         IXyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=l8Eat3aHk3xhx6GroVGCU0RRrfFCR4HFYZAw5lHaOyE=;
        b=048V5WT4l8uoLhtjrPPArlkxUm+fLZAWyN4i7GmkvxedUU77O7J2d/aUqBH5+a5zJI
         7IScxTGGqmW7Nb8niz8z0Wo9e21IwHZhXkAvqFcNPleERwJw4YpxxGol0NFPHOjc8E0x
         GSrL0J6MQTEYfb/PMRWL9F7UjvQgm/zFd1UeR+DZw6BGywRjqWxu+UBurEwVhCfIL19L
         FTo1Hr3tyolM92+9+OzA3KRUPqtFqmMuw3Vr1j6JgLhEX8fNCeaxvQau8ZzGRi+mhu6X
         wm6c5I9XGgWYT3n+9yd1+mR751G2Mz07QMxzfQf0BLwtLDDGfQ284DV91qC9m5vGZiwe
         J7tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HpNWW9Mw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l8Eat3aHk3xhx6GroVGCU0RRrfFCR4HFYZAw5lHaOyE=;
        b=Vu06aPAajTdA5QI2CxxEICzX9gQ2KNQ7ZTODlbqi11hA9f0DMIAw5Cek7C0i6hixhQ
         PPSO0EeH1JudpAtw+X2AUHgQufBGyV6ROJHGYEXZ7ZVSrzDegkKYHl4gxsirn9kY5OKu
         NJJOm9qqsh1pzt85dwKbm1H/FXHOTwGWIjtUJMky0fqzhzm17LUsYnMGI/R2GS0h1N8j
         +MUJX5BNPmzUJoVaD3dLuxeuFzKaaeLhCU0WhayUFOAYl7ou7iXtR0SHZlzmwTH4fQdB
         M+UQx1pCifLmkSOg/RflByQYs/xOfOaWeZ0JTnttWQjfJgwRFNKYd3PkIhb+YmsF0qoF
         zeKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l8Eat3aHk3xhx6GroVGCU0RRrfFCR4HFYZAw5lHaOyE=;
        b=BYC2qbIbFMiZ9g0+Js54zJTuQgbBSy9/5T8xygsqmsy0TBquVb/RaDQJk1f++P/y99
         VY6yuqDiIAn2Eyh1jqBSoaOaenlVviHNggUsiwPdJjtx+Ph3VjL4KgbBdw8YajeSSJbq
         kZboVd9NjmyJNwqxVnDTOlDSu0X3U5CIvqv+x8hULibdwUleJNg9q2rix51JclYvsytj
         uzYy2N+aAghx01r1sVDcPBXmecLO43wRZogU51hnLFnwybkMLpxtPBlkZ1HMe4j5DF3G
         FfwbpjlshCcPGC4LofO3Z7wUMYLE1rGQHD/ux9mmlSpa1Xf77PI9abDV93RYcssOFKsz
         GUBQ==
X-Gm-Message-State: AOAM533LsTxnq3il+mJUTddQmo3xDYKcK6vRAPc0Tkp4mmHjT++qq4ml
	FdIa/MUZphlAfNN/MFVbju4=
X-Google-Smtp-Source: ABdhPJymkC3J7pgqynbp4M3c21zcb1gdIuFz9Ohnk1LSrrqERvKRIuYB6PeegzuenY4V6i2Xa5lZtg==
X-Received: by 2002:a05:6830:2004:: with SMTP id e4mr28445095otp.85.1593109591367;
        Thu, 25 Jun 2020 11:26:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7051:: with SMTP id x17ls1403069otj.4.gmail; Thu, 25 Jun
 2020 11:26:31 -0700 (PDT)
X-Received: by 2002:a9d:4c13:: with SMTP id l19mr26971697otf.341.1593109591048;
        Thu, 25 Jun 2020 11:26:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593109591; cv=none;
        d=google.com; s=arc-20160816;
        b=d8SDne+Cbu6STQ7UUpgPOtxvRw8aqITvN5+q9vBIEESaLYLQEyChlZGU3rQm6c94nD
         Ic2FTYfI0g1zGYYQr2XuRIUpkgoszPmDBl1u4pW8IBI8nvP3uKNgZykixrldC/99hKE9
         KwOZxFA5g/lPbEPEy06xzelZENcH+CeZd/GNpYk1Y1+zgL9lpOC+vdkTEU9cg80oRIyt
         WKaEXUGdQsAVFVFwwjxxWtlpu3cYnWolJPr9U2P9E27v0u12wP1G84pMI1OTi6NIStvs
         xJ/3bTGfNpAg2GQ786dTIHIfHM/pqJ5c1A9tJIAkOr6KqVXO751YV+8eTO4CRbjeLky7
         LUyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ETOuWEoyx3l3QXnbkpa1FViwhlbDdj5RYMJCyJ/ebAM=;
        b=KDjDv+II/qdoPROnmf7QNjlwHLQKfleiATSMINZ3Z9mp49vuf4j+9Tw9WqKbeXfqUl
         3LeiZZZotFWY5qFpC6G84uSr6GKEW1dfLIVK+kduHo9TQYYxY3TYj8BctpQD/J6DvLtz
         W/zaaUErFh+MxrcC3YEwZEQ6Au4yniy1VGfojjamLWpDT4Uq3+Gne5JRP/iVByCp98Rb
         bJSbErNH5o0oqWnFfuIq07FCDT29MFxbhaKHo5dWjXlxOvypJP2Qe/cSVnhO3GFqKB/C
         OriwiiHeVf63yLrYn3HS6asxUdufDuZPQOwTZYmQK198K75RyclKle8+9lcRZyoXh57l
         MNrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HpNWW9Mw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id l131si145281oif.4.2020.06.25.11.26.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 11:26:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id l6so655517pjq.1
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 11:26:31 -0700 (PDT)
X-Received: by 2002:a17:902:b698:: with SMTP id c24mr33333972pls.223.1593109590004;
 Thu, 25 Jun 2020 11:26:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200618122537.9625-9-dbrazdil@google.com> <202006251244.YDWclRrq%lkp@intel.com>
 <d807e83db1f1052378b6998f683e4617@kernel.org> <20200625083441.GB7584@willie-the-truck>
In-Reply-To: <20200625083441.GB7584@willie-the-truck>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 25 Jun 2020 11:26:18 -0700
Message-ID: <CAKwvOd=TswBPY7J-VH6hm80O0eq6GPA_7YUsuddwq3RHaDMQfA@mail.gmail.com>
Subject: Re: [PATCH v3 08/15] arm64: kvm: Split hyp/switch.c to VHE/nVHE
To: Will Deacon <will@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, kernel test robot <lkp@intel.com>, David Brazdil <dbrazdil@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>, 
	Julien Thierry <julien.thierry.kdev@gmail.com>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kvmarm@lists.cs.columbia.edu, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	android-kvm@google.com, Philip Li <philip.li@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HpNWW9Mw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Jun 25, 2020 at 1:34 AM Will Deacon <will@kernel.org> wrote:
>
> On Thu, Jun 25, 2020 at 09:16:03AM +0100, Marc Zyngier wrote:
> > On 2020-06-25 06:03, kernel test robot wrote:
> > > Hi David,
> > >
> > > Thank you for the patch! Perhaps something to improve:
> > >
> > > [auto build test WARNING on linus/master]
> > > [also build test WARNING on v5.8-rc2 next-20200624]
> > > [cannot apply to kvmarm/next arm64/for-next/core arm-perf/for-next/perf]
> > > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > > And when submitting patch, we suggest to use  as documented in
> > > https://git-scm.com/docs/git-format-patch]
> > >
> > > url:
> > > https://github.com/0day-ci/linux/commits/David-Brazdil/Split-off-nVHE-hyp-code/20200618-203230
> > > base:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > > 1b5044021070efa3259f3e9548dc35d1eb6aa844
> > > config: arm64-randconfig-r021-20200624 (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project
> > > 8911a35180c6777188fefe0954a2451a2b91deaf)
> > > reproduce (this is a W=1 build):
> > >         wget
> > > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> > > -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install arm64 cross compiling tool for clang build
> > >         # apt-get install binutils-aarch64-linux-gnu
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> > > ARCH=arm64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > > > arch/arm64/kvm/hyp/nvhe/switch.c:244:28: warning: no previous
> > > > > prototype for function 'hyp_panic' [-Wmissing-prototypes]
> > >    void __hyp_text __noreturn hyp_panic(struct kvm_cpu_context
> > > *host_ctxt)
> >
> > I really wish we could turn these warnings off. They don't add much.
> > Or is there an annotation we could stick on the function (something
> > like __called_from_asm_please_leave_me_alone springs to mind...)?
>
> Agreed, I've caught myself skim-reading the kbuild robot reports now
> because they're often just noise, and then having to force myself to look at
> them properly when I remember. Even just something in the subject to
> say "the only problems are W=1 warnings" would help. Is that possible?

When the W=1 reports started showing up, it took me a while to figure
out these warnings were only enabled at W=1.  I asked Philip to help
denote these in the reports, and Philip was kind enough to add a note
in the report about W=1.  I agree that the note could still be more
prominent.  Another part of me wants to move -Wmissing-prototypes to
W=2, but that's just biding time until 0day starts reporting on those.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DTswBPY7J-VH6hm80O0eq6GPA_7YUsuddwq3RHaDMQfA%40mail.gmail.com.
