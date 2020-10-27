Return-Path: <clang-built-linux+bncBCIO53XE7YHBBZPY4H6AKGQE6JYZFGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F59E29C956
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 21:00:38 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id x12sf822832otq.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 13:00:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603828837; cv=pass;
        d=google.com; s=arc-20160816;
        b=T2bY1VzV+9eFSGQveLHB+lG7rocqMHoEWs8OjLmYI24TgeOY5Zk/MJ1aBzH7VUlUkU
         ZBkNSiX/Z9y1jSdOAC1kuIFrWZqPO2gL5s42qbXjbiOCtfWXlHjQbuaJunWJLIF9SPXK
         REAPqQEAbFt6Ox7AcgViPPl7zA96uIDEGzrfxZ2W6Ql4En9XdqGPcuDqHuQ/39f0lDOy
         /ae301/j0rfrLURHW6fwpb+/rCPFwv9XZ4FhggURyWxv/R8+Xt6xuBlTjse24VTeytj0
         iC2wTqCOr+uPPT1xQ3a20pAGqBpOmwFV9kd/N/2gdX32lxZi7Q5rOcBJScamhh/4drMF
         uVeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=fimajy6ENIVfyEXxXHtgPIA6B96LpI4W8YOkdW6o/4M=;
        b=VqTqDUFlqReg3HPEqd9bafiWmjX8HKkPdtVvCPbWzIseCPzoAK+/7+ja5anDP6t3tZ
         aA2Tk7ovgCfgUsgg7xpZdHSQmXY8IqfVYvfgUKi1MJSaqfEQBN3zxyC/UhCEPcZ8pzAg
         P4Q2rGnJ/YhwkW7Un4dgioDGjZDQ+XBQiFZuoT4gLUSWSAk9UWy4z+RWecypilceF16o
         26kSrgioan+QciUzqhWQyRg19Zz83kHt//MCiECjx12V04/lA4G6NBOiBc3x5o7t5yTd
         TjiAYsRB0kJUndWV+g2gAtpcYGM8H7vVbo34O8Orb60dMCOvshKrPw7kYTIpsl60fm7U
         7FrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mP0vr1qR;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fimajy6ENIVfyEXxXHtgPIA6B96LpI4W8YOkdW6o/4M=;
        b=iNVCiJoyGmHPvpTlculh3pasGQmvfTm2ap6wdpg3BYMdTdS+u606AI/yHgd4dsHKd0
         RPvDb77u4OzI36pnbU1ZstZ2e15lmkzC6yR2xh8sJdx1hDHTVnM39/8d1i8D/VCG6puo
         idSYSh2g43HEXM6wO9/AMfy1RQ1V5Fv0agThnaCi21l9f/Twg6hWB/O+Qgti4Ayp9Kpk
         gjnyypN1osaCZwb5MBGTpwfzam+9+KjeysZ0Uj8HPqKDDZK9s2S0GRq/UdP4uJgmemMo
         bvCngDRF9hOM6YUdWwb4Pl/P0OM2AGeMu9q0TglYcRkMN3dCofmqqi0OK4T2X372KP7e
         4dyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fimajy6ENIVfyEXxXHtgPIA6B96LpI4W8YOkdW6o/4M=;
        b=A2IIcFmU+9+BwPPt5sXAX9IIPC8lbNAkoMYWK9NNLNJMaJa2BAzitebwBvK+WNvMDW
         6idWjhBlbnP3XV0Mu/F6/BrPRoEYCk0cCUp4v1e67hjgWTWB1l3jYpq4mqWc2R2XehBq
         1gaveDPKlW1/2SIzIzpsrMEMA4PwjySN/3fBNjC+4f2UkjI79DjUGQ9rUYD2xjlUbwu5
         jUhcMr6361SSqh0Az0+fn5I3DNinSjij6OFEDwK5BZXv1yz0dN5VtxkHRl8XangD4TZt
         D+gLTcIAOqqGLaR8IKfSL5/oJ1k7KTLLUojp5267xxskI8j6vvPMqByHA7UmjLm5cOOo
         9a4A==
X-Gm-Message-State: AOAM531QUpYdR0EVRRnSzU/vxyIK6duKxRRlqyORsGbQoUtzehlh8DZt
	qMQGx6bihNvZCkxgjgWkpjw=
X-Google-Smtp-Source: ABdhPJzwWldsr8aQO0gK4jVOKjA2C3oouvWWxMpwsnW1gH5EIXvOVo28OlNlTaX01Qo05hiWpntnxA==
X-Received: by 2002:aca:bbc3:: with SMTP id l186mr2801435oif.112.1603828837225;
        Tue, 27 Oct 2020 13:00:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:53cb:: with SMTP id h194ls758826oib.4.gmail; Tue, 27 Oct
 2020 13:00:36 -0700 (PDT)
X-Received: by 2002:aca:7210:: with SMTP id p16mr2765526oic.77.1603828836877;
        Tue, 27 Oct 2020 13:00:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603828836; cv=none;
        d=google.com; s=arc-20160816;
        b=MBqiZGzvRBxa3ayT9RIgl5A5lm7p891mT53mOlbYTQh/On5e8CtHHzRHJteQ4/eqTX
         cPOvRker5+hXNFxOaLJRt3l7VnrMhsB9tM0krCMN4CKWxCUmqhAv6eE60GaFc49SnygG
         23A0Y6M6wq1CQbgTjhN4xMtYhlUHqPPEjf5g0amAG636OGcLbG+5ZyUePCS1tP5n92ss
         PwGE8g693YYNZO0Mmh+wB2BrvkU3P6+5n7YilGCSKqT3hYiqS9U8PqB7mbQasm4ixO0g
         M+KhRtTcA0nH13bOD8+F+Ip3piWNe8cuSM690PlVDuo001OopcX2vXib4hHu3s4qnZ6j
         JTVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=TVuLHKcXENXuQnK7BbqbATj1Ow+/O3OET0tWd5g550g=;
        b=TjsmZqHOAD3stR/xPbtIoGZpXbJXo3FwdMJfAzko1edG6YPbWxW+K2irXNXvfspkC0
         RrhbDIkwMFt3pHTaRR+7uRlF2LXBlhXINoXss6TJmpqKCf8MZN7xrVuMPkg6OjosUlCo
         5WytzNuOdh34Uw2m4RFHhxMbsHeJ5PFOw08Qq/N1I5jsQ27yfbRRe9BYnh8t6yFUOjvt
         CybrMaQfGvOdbmcPH1ythmzbIEhte3PJbuD7AEYtijqKiSeS4NAvKkv39va7KyZG+9WI
         NZcFXgVkoA0fvLMe0Qo28sP5FTHl274fqvTrHCP3G7i6ql40EVXSB0ZI8VsEMxR4mrAj
         mDvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mP0vr1qR;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id p17si260506oot.0.2020.10.27.13.00.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 13:00:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id z33so1969865qth.8
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 13:00:36 -0700 (PDT)
X-Received: by 2002:ac8:4295:: with SMTP id o21mr3704200qtl.313.1603828836358;
        Tue, 27 Oct 2020 13:00:36 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id z6sm1479349qtw.36.2020.10.27.13.00.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 13:00:35 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 27 Oct 2020 16:00:33 -0400
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	the arch/x86 maintainers <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux-Arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
Message-ID: <20201027200033.GA1826217@rani.riverdale.lan>
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org>
 <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
 <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com>
 <CAMuHMdUDOzJbzf=0jom9dnSzkC+dkMdkyY_BOBMAivbJfF+Gmg@mail.gmail.com>
 <CAMj1kXEw+6Srqd5w9oxpik3VUbehapx_TcHLDCbmHZBSdY768Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXEw+6Srqd5w9oxpik3VUbehapx_TcHLDCbmHZBSdY768Q@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mP0vr1qR;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Oct 27, 2020 at 08:33:00PM +0100, Ard Biesheuvel wrote:
> On Tue, 27 Oct 2020 at 20:25, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > >
> > > When I see .eh_frame, I think -fno-asynchronous-unwind-tables is
> > > missing from someone's KBUILD_CFLAGS.
> > > But I don't see anything curious in kernel/bpf/Makefile, unless
> > > cc-disable-warning is somehow broken.
> >
> > I tracked it down to kernel/bpf/core.c:___bpf_prog_run() being tagged
> > with __no_fgcse aka __attribute__((optimize("-fno-gcse"))).
> >
> > Even if the function is trivially empty ("return 0;"), a ".eh_frame" section
> > is generated.  Removing the __no_fgcse tag fixes that.
> >
> 
> 
> Given that it was added for issues related to retpolines, ORC and
> objtool, it should be safe to make that annotation x86-only.

The optimize attribute is not meant for production use. I had mentioned
this at the time but it got lost: the optimize attribute apparently does
not add options, it replaces them completely. So I'm guessing this one
is dropping the -fno-asynchronous-unwind-tables and causing the eh_frame
sections, though I don't know why that doesn't cause eh_frame on x86?

https://lore.kernel.org/lkml/alpine.LSU.2.21.2004151445520.11688@wotan.suse.de/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027200033.GA1826217%40rani.riverdale.lan.
