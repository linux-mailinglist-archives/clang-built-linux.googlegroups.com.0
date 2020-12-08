Return-Path: <clang-built-linux+bncBC2ORX645YPRBJW2X37AKGQECM7577Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1182D2FFC
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 17:43:19 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id f17sf7094200qtl.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 08:43:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607445798; cv=pass;
        d=google.com; s=arc-20160816;
        b=C6kqKxRx621wY/PRb/Z718tw0iLwn8JuJpMvATAfrk+q/qKEEI2+/rQ/CTL0kNrF0W
         SfwIpZygOHk8PLkY6kNbIK1SnOIIiIlQYRh2MG4Kkcw9SXA3iUf9wzOIreH569eVMvET
         7XrgI6Q4pG3yo6wIF7IeslX3oxoGR4WBSVJ+CVcVtdEzT/L2moKLBhRBsfh0x+ztQZ2q
         mYoT0q22NtP8CVKBOYGydeo32BtQmOklvn3duxh+zRM+EnepD5kRgzDmzPuG1C3n7sq6
         i0zxqA0LTSz8EgDC8qfXzOuxfXgPMsvijPKTv0V5h8YnUqeN6W3nX3aGgmYPJVXBX4Jk
         R1Bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zXqJ6cUyvKuzknsyqajiLyqjOY6g2Jw5s1WRvl875/k=;
        b=MXKQkpU3tybfPDyJPB2rz9z/43IbPuuDpTnvgNh1VQw01ij0Usdp46DNrAtMRz5c7m
         2905uq/oQ1l1Euv7GZgGF6NFb0JoWO6pErYqCGaViv060Kiz0brKV/KeYzsQE2RiskYV
         fr3oQfKAuVOlZSwH20xYyi2Y2hJwvpYfvzQYIorGQUN7cMtGiscDyslsZUFsQ+bxVB4t
         p+Hk7DdMsGAMiwnT2POj2sdPOgLWVfR/JPQ7fY3Vz1OMywwjEEzJ5nWv8ZxkmLxGulqW
         aglLvB/PeToff01dMcyw/Gh0ap68XfmhLrRT8ZR6DwzxGlsN/PgBBjCOQNgEqJ1wLWl2
         rYqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RAfcD6E7;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zXqJ6cUyvKuzknsyqajiLyqjOY6g2Jw5s1WRvl875/k=;
        b=KpiT6eslAXeXMkfWOo3+KF1/AJNbZuD3pCy+dyOHjHDHGXypKCuYeHeXc+fpE49FFu
         kx4dTxGjsmB7dh7aLuUviiQAwX/Ptadt73mKShcHBopEmXqsBqyrWXI+Tl7mKV5XbWXA
         td4dweGdIdlTsz0oS81FEOU1HAQJQbffaUw5od7nDDUQqRIBg11mRpta+vprVbpsUO/r
         w51nZTjExXnRWA8W9ZUSFAanVJWzrcPbzUlLwaAZBeVWzHTjECp/o9Zjd8G3C4MrYXlR
         agFCNQ4DBi1gs+QA3yFr/G8TGXaqXpuyCvhwWlMunj0knSCjFNPcXGv9PjAPY3jXXMxc
         +2LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zXqJ6cUyvKuzknsyqajiLyqjOY6g2Jw5s1WRvl875/k=;
        b=ClmsDp2k74DSAjVZfzdII0VhrNkW8tE1pnHNBy8Jri+o/TLmCBwEb35tlcD0Ye+Nhp
         jy7JLzx/9eWDgxUAbK7RxXKfkB6GORzIwl/oaMxIqrvLM5IB1JHOsvoMJ84tq5/9GWL5
         0o4dUSeDrEErlpaaUuSsq5Lr7mdzEN23JEFxwe9VQnKNRt94yfKXd0HMG5MsLByBsUlD
         jcXC3BNQSvMG4K/9gNPgjblISiGOcmdoQ09bcix0twAtdar1FUqzfWpR1yxNSaR2WVqI
         2sycRDzOfi34EzL3b96XQcqaLHSaytsCrdMijdEBIFMKuYoNjsZLkSo/KJitRk9vYQtD
         RdWw==
X-Gm-Message-State: AOAM531BEEjNWStyDSnohfQggkbksvxCmnP7/X14cSDKGnZrzbiNWbIB
	vG0CzRfbrgBbgw3EZRZzKCI=
X-Google-Smtp-Source: ABdhPJxH+mM7bo3QSzE7AeFEVf+b9O9RLVdJedbjHzR6KWlPdUuFqLVzGYFxXQuazoxvzWozuZNbtQ==
X-Received: by 2002:ad4:484c:: with SMTP id t12mr17603887qvy.58.1607445798783;
        Tue, 08 Dec 2020 08:43:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4b77:: with SMTP id g23ls2531445qts.0.gmail; Tue, 08 Dec
 2020 08:43:18 -0800 (PST)
X-Received: by 2002:ac8:6f07:: with SMTP id g7mr30908896qtv.308.1607445798328;
        Tue, 08 Dec 2020 08:43:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607445798; cv=none;
        d=google.com; s=arc-20160816;
        b=x+28IN50l4l+LX0eKwQA4OqEdqH8tBELQEQs4akdqidGvmSCMITxHSNmvxePN7SB/f
         OjYcWkcfhCca4Vt1pYEF4Mz1XaQDrznrt0iL+8vulOJpDJFs88Kge51CCeJ8IGQtrbQ2
         o/Y/OdBogNtZ2Vo8+T/B/dWkdALtp2omsswuDDxQ0ZgPryS1nxHiSliNeVrnax/e0Oar
         M9uZE8AagXQNUCbwKMG7CwU6eVKwirOzZRoNMMguXOrnYo3kKXNEhek1ci+jiZVjYcc3
         fXAivLxfzd4ryQrjVWl+C9EMqcFiFe1w1v1YTeQykM1AJxF8ZL/YeVu/RPJrXhO4Qfml
         46gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/l23vYzjhD/UMOBSQH+RJul+Bc4oeAA+Y4sxIdjxioI=;
        b=RZAGXGKWJnvHygp3/gzOlv0lt/DFLwkV4dWc7HfW31lzQM1r7lMcAYKcEAnqD1tdOs
         jNSqO2FWJsIA8qtN8Sal9BvFQzDxWJK3gTBgzhQbR9KxTNE5SJmj2HCq8gADZt9oVD3B
         NrAjcccGMs38i0bpZ0onH07ANRb+DPsseQ8bw6c8inF/O3/eyQpjzXHbFiBuckWaJjWB
         yyJod5NEPxsBZbwxo066F8h+IEVCyX9C19EiHRnZiOEVW9ytaPKfbhrrCgtHrTUlLeMZ
         FcoVqApWdafjNIuZX/yf5nLse4BLykrHaK9IjdPrYw88OqARRdmJci23M8Sq5jsfzfbX
         x3tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RAfcD6E7;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com. [2607:f8b0:4864:20::a44])
        by gmr-mx.google.com with ESMTPS id k54si1384164qtk.4.2020.12.08.08.43.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Dec 2020 08:43:18 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a44 as permitted sender) client-ip=2607:f8b0:4864:20::a44;
Received: by mail-vk1-xa44.google.com with SMTP id w190so4073742vkg.13
        for <clang-built-linux@googlegroups.com>; Tue, 08 Dec 2020 08:43:18 -0800 (PST)
X-Received: by 2002:a1f:304a:: with SMTP id w71mr17359481vkw.3.1607445797616;
 Tue, 08 Dec 2020 08:43:17 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com> <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
In-Reply-To: <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Dec 2020 08:43:06 -0800
Message-ID: <CABCJKueCHo2RYfx_A21m+=d1gQLR9QsOOxCsHFeicCqyHkb-Kg@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Arnd Bergmann <arnd@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RAfcD6E7;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a44
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

On Tue, Dec 8, 2020 at 4:15 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Tue, Dec 1, 2020 at 10:37 PM 'Sami Tolvanen' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
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
> >
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/lto
> > [2] https://lore.kernel.org/lkml/20201120040424.a3wctajzft4ufoiw@treble/
> > [3] https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git/log/?h=objtool-vmlinux
> >
> > You can also pull this series from
> >
> >   https://github.com/samitolvanen/linux.git lto-v8
>
> I've tried pull this into my randconfig test tree to give it a spin.

Great, thank you for testing this!

> So far I have
> not managed to get a working build out of it, the main problem so far being
> that it is really slow to build because the link stage only uses one CPU.
> These are the other issues I've seen so far:

You may want to limit your testing only to ThinLTO at first, because
full LTO is going to be extremely slow with larger configs, especially
when building arm64 kernels.

> - one build seems to take even longer to link. It's currently at 35GB RAM
>   usage and 40 minutes into the final link, but I'm worried it might
> not complete
>   before it runs out of memory.  I only have 128GB installed, and google-chrome
>   uses another 30GB of that, and I'm also doing some other builds in parallel.
>   Is there a minimum recommended amount of memory for doing LTO builds?

When building arm64 defconfig, the maximum memory usage I measured
with ThinLTO was 3.5 GB, and with full LTO 20.3 GB. I haven't measured
larger configurations, but I believe LLD can easily consume 3-4x that
much with full LTO allyesconfig.

> - One build failed with
>  ld.lld -EL -maarch64elf -mllvm -import-instr-limit=5 -r -o vmlinux.o
> -T .tmp_initcalls.lds --whole-archive arch/arm64/kernel/head.o
> init/built-in.a usr/built-in.a arch/arm64/built-in.a kernel/built-in.a
> certs/built-in.a mm/built-in.a fs/built-in.a ipc/built-in.a
> security/built-in.a crypto/built-in.a block/built-in.a
> arch/arm64/lib/built-in.a lib/built-in.a drivers/built-in.a
> sound/built-in.a net/built-in.a virt/built-in.a --no-whole-archive
> --start-group arch/arm64/lib/lib.a lib/lib.a
> ./drivers/firmware/efi/libstub/lib.a --end-group
>   "ld.lld: error: arch/arm64/kernel/head.o: invalid symbol index"
>   after about 30 minutes

That's interesting. Did you use LLVM_IAS=1?

> - CONFIG_CPU_BIG_ENDIAN doesn't seem to work with lld, and LTO
>   doesn't work with ld.bfd.
>   I've added a CPU_LITTLE_ENDIAN dependency to
>   ARCH_SUPPORTS_LTO_CLANG{,THIN}

Ah, good point. I'll fix this in v9.

[...]
> Not sure if these are all known issues. If there is one you'd like me try
> take a closer look at for finding which config options break it, I can try

No, none of these are known issues. I would be happy to take a closer
look if you can share configs that reproduce these.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueCHo2RYfx_A21m%2B%3Dd1gQLR9QsOOxCsHFeicCqyHkb-Kg%40mail.gmail.com.
