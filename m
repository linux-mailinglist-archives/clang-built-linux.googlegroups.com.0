Return-Path: <clang-built-linux+bncBC2ORX645YPRBYFWUT7AKGQEN2SZ6OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3E82CDBD2
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 18:07:44 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id h5sf1216974edq.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 09:07:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607015264; cv=pass;
        d=google.com; s=arc-20160816;
        b=DcCxPn24YixmhKjDtNq5HYQfsP6Z/EaLhxHrWtSt+YVlS0L9Q5APcPGl2Qmzd0aFh1
         pyINebb8m7I38ULNsgqgYo/al1cnHnO7xrSuuh/Xi2Fla6mvK40kA+j7mj8rt3vS6Jle
         O7Z9NOaq17z21rlHPD6QxFZgpH9AqgGTdanyL0UveK/U3ffigToHX2KMgaXAvVvzOLQg
         cff7/L1eYIPK1EAsDkKsnk4aY66rzqqEJtxSbnQ8y6GfaczzPKPrgp/ZUF+OA4plxQjk
         oYdaNpkR47RNuozyvGvB1/2hWB0XPP0t8lIN9MePe3djB7UZSQTI4WcDnHiNIEuCrN1d
         XI2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mLekt+CW8eF07B624SF4676Mf4eO2oqM9+hDXWudWBo=;
        b=jQmsvQvpEEkqTY3wff0jCUvgJoDcdfDoNVbzDqdPozQ4A5PSZ00KBOBeKmrraKQ1Kf
         YWuO/rhI0vZVFrDS2PjNC4+RLfw5gbpt18sW0N41jI2dBhqqPVB4oq0kvUCzqLJkObVp
         euBm7Iuf4Tc9au+JzTK+8AMEohitb9p4FqwvvOelCJyl6Y4keAAANmA5pvsSBuxAexi/
         laBmPmXMj1KapaZh3IDeTN54hLrLt6HFG8Tjq8AOWf1yqTdg6m/azww/pIyI7gPG1pf3
         prf3muaxPJgSfmpFTGl2TJjljKjQp7pOf216cKO5i9okPkpiMMeYsLG2cQU104It6dLu
         jeKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cx6oEw3a;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mLekt+CW8eF07B624SF4676Mf4eO2oqM9+hDXWudWBo=;
        b=nuPij8IWdUHUP+XMT8pBeTI8iFabl8ct10smpphutPXFAJn9L6HSYWsxNRC8ck36Ja
         HNoIRghVzjrXsROyHIzxktcwvH5nx0e9aMaSRwmNYdQJTEua0GtgaxNCc831VlZIJx2w
         z+xc65bh6e/aBS9At17iVOQ6v6LNcwVNgt4zVwpZhKeZazxy4TIP6bS891xMZFjhJXej
         rXVKlktZr7x5wtAyA9a203MolRe1CdhiMu84m5CagLu76RtQB2822Hy5mmilWOt8srjZ
         CuU8K0+PlW9azaKQfrrI/6Y+DPyzGpROv5W1Quw3Su9hZ1P0v/b6VYxEkMpevAJDTCzf
         8hSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mLekt+CW8eF07B624SF4676Mf4eO2oqM9+hDXWudWBo=;
        b=PWS+51jc4JdtOjTxo6rEo4A28jnnQT80X+Fd9Eq+fDoLbRAo23+fqg+ny+Xcns00MK
         uu6W2OTm7wVkNOWz4nUwfsJZS1THNc29pektORSLDV0jHUESxW6tCOHzwQNdnRiuTalI
         XSIIM8Sn5WYqLjr4u5ERGz9GktB90dGXG/6VgyhWeOm89RLvgGRxQ7gCgFoRlb0fDJy6
         8HAvGSvEhtTMIA6G3nuqp5posq8bT6DkAUJMCjlBycPnZxEb3bcrhvFiinWhhokSHYgB
         KYgpTErIcsDRc+pHTaH0JxL5ORXH77FdbBEd397M2nwrucW+Y0HatU4USM+6j6gmO1E8
         XJtg==
X-Gm-Message-State: AOAM532C8PswVXrnilUwTcfrhMlK27tNdvY5oX4RJUF2omP4WWJpNuWz
	XngnMNQh7fOGSZPItqy9dMk=
X-Google-Smtp-Source: ABdhPJzBzIRFKxUkTAdaXneeMIovJ/XeQid7NdW0p+vm2GZ7WJpt4Dct0+u1stOaYPovYPygSau7Wg==
X-Received: by 2002:a50:9991:: with SMTP id m17mr3724192edb.48.1607015264243;
        Thu, 03 Dec 2020 09:07:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1432:: with SMTP id c18ls2187299edx.0.gmail; Thu,
 03 Dec 2020 09:07:43 -0800 (PST)
X-Received: by 2002:a05:6402:31a5:: with SMTP id dj5mr3787781edb.110.1607015263280;
        Thu, 03 Dec 2020 09:07:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607015263; cv=none;
        d=google.com; s=arc-20160816;
        b=z1ahHpu1zaMNMO+TDdqgWR2wVxZIgTjPUms346OrFP2vz++0cAloG5NzByQLAGvLrd
         FaooRZn9cPZpCmCNXuzEPp1av6kPHN9VpRIXTVCmCvAOUw5YCse0x5dUUW+QbUhcFrsb
         s7Sn6EksYoR/8h+TSGAA9Q/++/AR4WVoe1TRUhhP3aPYLZObD5glKx8h2CJlJhpmnU19
         n001Hg3MSPF3r0fCSi0zoslHVggN2Y5dUP51KrizyC5aWFFjQVPleUtna0hUmL68yjlN
         1aywnSkuaXayaJlnQuwfIEN0rRe0T85kKDUTle2Cfa+t6aOGpGPaZTA88DMoo8nL+Anr
         x/dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+MQyiUOcMt6gFRBNfnN0H07pYjhZgF4qm1+bZjvfjTY=;
        b=eLY2pDt1AtVbbFXtjFOocZiWlnykhrklQYhgZzQVIPYZ+B4EKTPxtA6ve0rlg28aUI
         X180Qt8hqjZkPI1ovHcwyNbRNMQ4x1tccIbpT2mFucEkQxX3QUngCVd1yx8JU+WJS0xg
         RY90akhhJAXL6ho78mgdkNNY3YcHajAJy0ML3uaNjq05gilgJCgKCs+2i14NgmMVMdjS
         MX/E33/8aBK9kpliM4g9SHKRR+AplDokZtxfjzrgNu4znB5ExWV309lIPaa+4W307vS9
         J3ATof5KeQaI3bXbBX5DtXe3DP6gZ4mEv/E13Ynvb2VZJ07RYdhGkR8XQxux6aJCTiz8
         VzsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cx6oEw3a;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id f26si69411ejx.0.2020.12.03.09.07.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 09:07:43 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id j205so3783896lfj.6
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 09:07:43 -0800 (PST)
X-Received: by 2002:a19:c815:: with SMTP id y21mr1656793lff.589.1607015262357;
 Thu, 03 Dec 2020 09:07:42 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com> <20201203112622.GA31188@willie-the-truck>
In-Reply-To: <20201203112622.GA31188@willie-the-truck>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Dec 2020 09:07:30 -0800
Message-ID: <CABCJKueby8pUoN7f5=6RoyLSt4PgWNx8idUej0sNwAi0F3Xqzw@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Will Deacon <will@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	PCI <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Cx6oEw3a;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::141
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Dec 3, 2020 at 3:26 AM Will Deacon <will@kernel.org> wrote:
>
> Hi Sami,
>
> On Tue, Dec 01, 2020 at 01:36:51PM -0800, Sami Tolvanen wrote:
> > This patch series adds support for building the kernel with Clang's
> > Link Time Optimization (LTO). In addition to performance, the primary
> > motivation for LTO is to allow Clang's Control-Flow Integrity (CFI)
> > to be used in the kernel. Google has shipped millions of Pixel
> > devices running three major kernel versions with LTO+CFI since 2018.
> >
> > Most of the patches are build system changes for handling LLVM
> > bitcode, which Clang produces with LTO instead of ELF object files,
> > postponing ELF processing until a later stage, and ensuring initcall
> > ordering.
> >
> > Note that arm64 support depends on Will's memory ordering patches
> > [1]. I will post x86_64 patches separately after we have fixed the
> > remaining objtool warnings [2][3].
>
> I took this series for a spin, with my for-next/lto branch merged in but
> I see a failure during the LTO stage with clang 11.0.5 because it doesn't
> understand the '.arch_extension rcpc' directive we throw out in READ_ONCE().

I just tested this with Clang 11.0.0, which I believe is the latest
11.x version, and the current Clang 12 development branch, and both
work for me. Godbolt confirms that '.arch_extension rcpc' is supported
by the integrated assembler starting with Clang 11 (the example fails
with 10.0.1):

https://godbolt.org/z/1csGcT

What does running clang --version and ld.lld --version tell you?

> We actually check that this extension is available before using it in
> the arm64 Kconfig:
>
>         config AS_HAS_LDAPR
>                 def_bool $(as-instr,.arch_extension rcpc)
>
> so this shouldn't happen. I then realised, I wasn't passing LLVM_IAS=1
> on my Make command line; with that, then the detection works correctly
> and the LTO step succeeds.
>
> Why is it necessary to pass LLVM_IAS=1 if LTO is enabled? I think it
> would be _much_ better if this was implicit (or if LTO depended on it).

Without LLVM_IAS=1, Clang uses two different assemblers when LTO is
enabled: the external GNU assembler for stand-alone assembly, and
LLVM's integrated assembler for inline assembly. as-instr tests the
external assembler and makes an admittedly reasonable assumption that
the test is also valid for inline assembly.

I agree that it would reduce confusion in future if we just always
enabled IAS with LTO. Nick, Nathan, any thoughts about this?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueby8pUoN7f5%3D6RoyLSt4PgWNx8idUej0sNwAi0F3Xqzw%40mail.gmail.com.
