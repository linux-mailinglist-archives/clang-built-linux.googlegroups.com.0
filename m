Return-Path: <clang-built-linux+bncBAABB5O4XX7AKGQEE33HELQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCA32D2A7C
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 13:15:51 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id z24sf11681882pgu.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 04:15:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607429750; cv=pass;
        d=google.com; s=arc-20160816;
        b=DwiSjGXme9UMkxnrEm+C5KCmARCjvBwl7aZWQ46b4rVRGqHhJKYOEJONvOAZETaTzd
         8ZUCzqmJGX50XiRBm22QPMUB+Pmmuh72viczVNEAoRmBqTNE0osj0Cqw9dCkEMNBCnw5
         xvEN+lwouRe7/0CIMrU29hzASQT4bM849FWI/WtpQi4MJWFTWUporbmYaqVQWy/mR9OB
         k5gvYoJe5DHYXD6zomJHuuaEvE4jZVUULRh7dx7lHXteuxwwy9NUZd7JJk6mx112JsWm
         LGJgCexaYY0SdBSeN+RKd3YzTRMbPqwuIqv44kcBANr4BhiV3objHC1GTO23ng+ycwhb
         CvdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=sYlNa9cVrfykTbiAx4jm2NiDE6Lpm9HZfhU16xP1PxI=;
        b=Qcamo5KZpmWNFg6cafltn/27Lkl8EHhQUnc6RPbcSoZY3NpQBOSO6lEk+BTi0fH4AJ
         jgB9jMoqCPxfuaSwQqsOkSUhLzNJMgjI/1Fx3P97AQjPYAaOI8rUlCxRafHDxkTUtBsQ
         YAqiIIrxEydeMNixuNC7RnYkmI6JdatIgigMerkcQQUsNg30drDdQ+2pRS7yEg1o4C5K
         dyNvB1sHVEmvSbwldjJKU1vIrJdrE2J2a/4GcVF78oWuHwTNx1uSqD+aVR1UxZ4W+vk4
         yftE5OkG3sWPeMFz7UmgDo8/BEBJC/GE2jE0Rro0wblrplGX1KITa5rmrDt7ToObfs6R
         PNDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Ns4p/v7H";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sYlNa9cVrfykTbiAx4jm2NiDE6Lpm9HZfhU16xP1PxI=;
        b=MNDVhpH+PBDj1lZOE9TQvx44FZJlMMbydZ9raO05cl8iFAdgMOyW4jalnrkExsnM8Z
         IzHHY8iHbmQNMJwrvdLFwqEq+4VFxrMkwJon+SP21yIof/CEn/PM7jNly1Qn2ewsx6+W
         w3tm8/nVUzIOjWOQ7aWNzgh/0/0NhncloOJ3pAZsM1Ri2KBbHooOfTD91X1jkNk3/LNn
         xC+JD9w0i2hLWb62yoT8PMZSjsMlLdrcvKlhXF2kFxp7+eX75WW9YjmerMc82ot5ygr0
         UPFegcqV39Kvapzh93M/BZank8iOY1U11nlEQD8TSx9GNleniD4T1T+8pxDCfMrzh+zJ
         tylQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sYlNa9cVrfykTbiAx4jm2NiDE6Lpm9HZfhU16xP1PxI=;
        b=fjO8oCX3b/mMut3EZxARGCcAmaRkn9GxqssvLphlfRjGD4tBLsEkK8I7SR6cnhEugU
         R1zTBhWO3E4fxhEazL7x0SvbtIvp6t00SsXImbxfuag/YGPQIQMcEwKAEJx4xtFpMVkE
         kYZk4q1fk+nVhE5wJlPcblbBE+kx8zC3a41/zi3Xnhmo812g2/x93wgSNLB+Agtg6Vk+
         azeDUKNBtwI7jE/o6lfeD/aAQplxSBEthB+Vijl9HI78FBIRg32q4GfUfN1bR/1+sax2
         +JL/ApDFTiaPaB8/WdiZy36kJ2FMODf04tVHUNqVYdEVAL6zPF6NTE5W9Srgp447ZcZh
         Bsbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306kjfMuZvxNg+gzQg0l84mIA+fTKuLRDHvXkI4SMO5UE4hn+MB
	DtC7NDEIkD7fUpc7VDtUt+0=
X-Google-Smtp-Source: ABdhPJzywedGoZwNXJqrpGlekhT/IRiQQQyc1dK1TtxalG3wxeq5qE1NgyaCaxWOr1BsHkQ7J1GXrw==
X-Received: by 2002:a63:591c:: with SMTP id n28mr22601251pgb.230.1607429749929;
        Tue, 08 Dec 2020 04:15:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e287:: with SMTP id d7ls1603541pjz.0.gmail; Tue, 08
 Dec 2020 04:15:49 -0800 (PST)
X-Received: by 2002:a17:902:bd09:b029:d9:f7c8:6210 with SMTP id p9-20020a170902bd09b02900d9f7c86210mr20997474pls.80.1607429749396;
        Tue, 08 Dec 2020 04:15:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607429749; cv=none;
        d=google.com; s=arc-20160816;
        b=R/2xnELu71cc1Nw89rSDbKCIr/x9fRAHRmJUs7dzFse9gGVnnEJs4dz0K3kklshKUg
         Y28Ek6UUUxdA4JdZGOsxoo52jfIs3jJyt+2PEa7RXKDRMpSj04oiM4jFR2ScrFD1SPrx
         jIjyu2HRMCek5bzk4+fnRA+sPYW3CFQML9N8ZHpg32h+0KgYgB2GuPWQB+wnxxJGd48d
         Jw47Qh6maNREoShaQWhrzcTbwwv21CaEb85idu+TOcrnodt2vCFfehKlX61qwG847dhm
         0zO4ALQLZ5gVOUWcxJvpzhBBdiGuGMwkMVC7jzXcDTN9VbmawYbndSCiiOrRPmip1K0h
         YG9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lZygHLFvxHznWYx0OBQ33EagxR+zClXphnxR3K6YTso=;
        b=kChyBWvDMIkTetKG2F91BlpnuzdqZdmX9i0BT5kWpqNq+WvlhIVCcZITkSytKz5iBR
         6pMGb6S7JZ1bL0WUM4GiwCzPZyvi0M/HQGnWJ52KZ8kPvgSPT28mySmIe74t1JzJCMsO
         tbs+cLlEidDm2Fu3ljAfQ7W9dBZIwe08P+7z1/nqErsuvfY4AHtWWoKxjg7D1WtSpDKF
         JKL7GmeiwrXCfi/S54Pg9MJIWvA7Y96lBM63bNudXIUGKD4b5OGImu8LEtBGUZgGtZbj
         xt2i/DT9xc3Zr280wiCbeupq+DAEQ8ms1Pza5pTJVkZmhdQVuP2DQ/ygzsbf0gHAJ4U0
         cZWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Ns4p/v7H";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m13si177441pjg.3.2020.12.08.04.15.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Dec 2020 04:15:49 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a05:6808:9a9:: with SMTP id e9mr2451121oig.4.1607429748222;
 Tue, 08 Dec 2020 04:15:48 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 8 Dec 2020 13:15:31 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
Message-ID: <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
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
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="Ns4p/v7H";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Dec 1, 2020 at 10:37 PM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> This patch series adds support for building the kernel with Clang's
> Link Time Optimization (LTO). In addition to performance, the primary
> motivation for LTO is to allow Clang's Control-Flow Integrity (CFI)
> to be used in the kernel. Google has shipped millions of Pixel
> devices running three major kernel versions with LTO+CFI since 2018.
>
> Most of the patches are build system changes for handling LLVM
> bitcode, which Clang produces with LTO instead of ELF object files,
> postponing ELF processing until a later stage, and ensuring initcall
> ordering.
>
> Note that arm64 support depends on Will's memory ordering patches
> [1]. I will post x86_64 patches separately after we have fixed the
> remaining objtool warnings [2][3].
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/lto
> [2] https://lore.kernel.org/lkml/20201120040424.a3wctajzft4ufoiw@treble/
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git/log/?h=objtool-vmlinux
>
> You can also pull this series from
>
>   https://github.com/samitolvanen/linux.git lto-v8

I've tried pull this into my randconfig test tree to give it a spin.
So far I have
not managed to get a working build out of it, the main problem so far being
that it is really slow to build because the link stage only uses one CPU.
These are the other issues I've seen so far:

- one build seems to take even longer to link. It's currently at 35GB RAM
  usage and 40 minutes into the final link, but I'm worried it might
not complete
  before it runs out of memory.  I only have 128GB installed, and google-chrome
  uses another 30GB of that, and I'm also doing some other builds in parallel.
  Is there a minimum recommended amount of memory for doing LTO builds?

- One build failed with
 ld.lld -EL -maarch64elf -mllvm -import-instr-limit=5 -r -o vmlinux.o
-T .tmp_initcalls.lds --whole-archive arch/arm64/kernel/head.o
init/built-in.a usr/built-in.a arch/arm64/built-in.a kernel/built-in.a
certs/built-in.a mm/built-in.a fs/built-in.a ipc/built-in.a
security/built-in.a crypto/built-in.a block/built-in.a
arch/arm64/lib/built-in.a lib/built-in.a drivers/built-in.a
sound/built-in.a net/built-in.a virt/built-in.a --no-whole-archive
--start-group arch/arm64/lib/lib.a lib/lib.a
./drivers/firmware/efi/libstub/lib.a --end-group
  "ld.lld: error: arch/arm64/kernel/head.o: invalid symbol index"
  after about 30 minutes

- CONFIG_CPU_BIG_ENDIAN doesn't seem to work with lld, and LTO
  doesn't work with ld.bfd.
  I've added a CPU_LITTLE_ENDIAN dependency to
  ARCH_SUPPORTS_LTO_CLANG{,THIN}

- one build failed with
  "ld.lld: error: Never resolved function from blockaddress (Producer:
'LLVM12.0.0' Reader: 'LLVM 12.0.0')"
  Not sure how to debug this

- one build seems to have dropped all symbols the string operations
from vmlinux,
  so while the link goes through, modules cannot be loaded:
 ERROR: modpost: "memmove" [drivers/media/rc/rc-core.ko] undefined!
 ERROR: modpost: "memcpy" [net/wireless/cfg80211.ko] undefined!
 ERROR: modpost: "memcpy" [net/8021q/8021q.ko] undefined!
 ERROR: modpost: "memset" [net/8021q/8021q.ko] undefined!
 ERROR: modpost: "memcpy" [net/unix/unix.ko] undefined!
 ERROR: modpost: "memset" [net/sched/cls_u32.ko] undefined!
 ERROR: modpost: "memcpy" [net/sched/cls_u32.ko] undefined!
 ERROR: modpost: "memset" [net/sched/sch_skbprio.ko] undefined!
 ERROR: modpost: "memcpy" [net/802/garp.ko] undefined!
 I first thought this was related to a clang-12 bug I saw the other day, but
 this also happens with clang-11

- many builds complain about thousands of duplicate symbols in the kernel, e.g.
  ld.lld: error: duplicate symbol: qrtr_endpoint_post
 >>> defined in net/qrtr/qrtr.lto.o
 >>> defined in net/qrtr/qrtr.o
 ld.lld: error: duplicate symbol: init_module
 >>> defined in crypto/842.lto.o
 >>> defined in crypto/842.o
 ld.lld: error: duplicate symbol: init_module
 >>> defined in net/netfilter/nfnetlink_log.lto.o
 >>> defined in net/netfilter/nfnetlink_log.o
 ld.lld: error: duplicate symbol: vli_from_be64
 >>> defined in crypto/ecc.lto.o
 >>> defined in crypto/ecc.o
 ld.lld: error: duplicate symbol: __mod_of__plldig_clk_id_device_table
 >>> defined in drivers/clk/clk-plldig.lto.o
 >>> defined in drivers/clk/clk-plldig.o

Not sure if these are all known issues. If there is one you'd like me try
take a closer look at for finding which config options break it, I can try

     Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0%3Dcx_nO%3D%3DrDK0jjDArow%40mail.gmail.com.
