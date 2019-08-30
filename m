Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBO5ZUXVQKGQEUAG5XUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBEBA3D02
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 19:28:28 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id l6sf1712621lfk.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 10:28:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567186107; cv=pass;
        d=google.com; s=arc-20160816;
        b=cJo2crWX0h38hPlMu8nadU0EJGpV+fdUX5Ka1FkG7A3+gEqdTkAviCwwLWnV7bl9Mt
         mm0mP2EYt5CcxrkgxGtJwU+ASXqbH6/vERhWjY/ifgjsyzbFq0kSXeHE0Kmlf5yzUfpX
         RT0X39thtpO+pFS/mjSRHJDaZ+7tEEf8UdsBU+DLuBKzZyaEvLJ22j3HJifvpVjj5i95
         PSyErd9yVFJJOt0Y4ekJCKkelGRrKNaIfTFOaIY9Fzi4m9QIU6rGxtNHcdl/+IzAmKvL
         1Lb+90yuknzmNchrTvbXBCC2ocCHAxhSsELiGA70V4Gh8My5VKTH43cepITYQdM7bxzG
         qhYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=kvEwMGd2aR+iI6+ize4YYa8kR89ozqWY4gkWU/HFbf4=;
        b=ZyqbqbvALkhnKFKwvJKoMa4gzEtV2OFSw688jQHgy9V6wDkuQnCZSxXkHXRBIEM1aK
         Jl8FWrCZQZFgyxaPUWRhXAQ/gzyQnIQI77dGIxmtcgy01begw8nGPOX3+iVczvsMO6SR
         3WOZ85/V4QGasNsrT9o0tyZhZHXzqxVvuYXzNKZZKKlDid5Ca7ZkqJwlWsI2G7CJIzXT
         A+x6PYvbcKcZa45pbyDhRZNZeLOM2lt22G+zLVZgh7j2t4c3ndiLHOn3fMOGec2Ig5k6
         3WSI9I70NRgjT7maFdPFuh77uW+PaGc6MRpSwnhjEqytApB0HnDsje4CxnhsM+PtEmkC
         BfNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vNqfRzTu;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kvEwMGd2aR+iI6+ize4YYa8kR89ozqWY4gkWU/HFbf4=;
        b=gP82lcRA7fU6uPGG71kS6/MYAcXBtwKp2FRKGlfP/kysMOYtG5zqu8m6OM4gHec2B/
         ndrGqpZcJB030tZKlbZGkdVSPqYW8cus04imWF5XTAJiuwMfJiWeUnX1jELSclO5QQOZ
         TAzv/bWMZvsZG1oGEc0okJXZdTusWITHyMSrBZPOVpa1/ywgRTszfUMjvTioy7qbq/8e
         242jx67GG1JLiJyI9HQ69+45ZWx3sDSjnrrIs0VIbaXXrhUgxoUoHNi/p7/Rd/ir7tPr
         uVN7i7OcPPA+eVmKdmE4QJ/EFHNgSyE9qB3sQWgjQt/Lnr/bw7uq5YKyYfPI9Xk1W6rV
         xSDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kvEwMGd2aR+iI6+ize4YYa8kR89ozqWY4gkWU/HFbf4=;
        b=Wrtd9SBC0lMhktZxDJWUcxSeQh/XqQdsgKkgtZ8VGFbSnu2m7e5pTMEzvFXDecPB/G
         IOE8zMDSsmfVtmDurg43SK4wNKw/ZApXIj/5l7IAF/dnnADShW+9gkGBKxF6uaEwN6eZ
         DLO8/X3b2eOjtw+3ugF6fKpkJcddLC1DQMHBVH7Nf3/53+T3N5hHbg5i5xp736X2K8+U
         0HeGPZdZskQAZ4pJVEYKRYbnC7yN1i2mTH8O7MFZddicN9DBF/OVscXm8EKVz/6JPOpf
         buKWSKPmVtnT/1vFZgMWvuSOB4bB7TIU1G84XUWPctUdUgfc6qkfgR0sE4XZ6g3i8lRn
         kBeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kvEwMGd2aR+iI6+ize4YYa8kR89ozqWY4gkWU/HFbf4=;
        b=PfUp3Z4qwNBW2k1xIAP5Wd7YONPTzeTozBENRTUjQC6D+Kv0vSSssL1p0XElCvu84a
         Y53eCsvqBhBXkxsMyIc1xzBpaE+O2QW3aMoH6W4a3ybJzTCOZp9DRb3lMZMXxBm/H6f7
         +gPkYp/0VHdzCEGy7gre+O+EcekFuB9nyDSJsWOhh7uP84aK2LqWCN4H1iPJPfGqcBu1
         MxFNNIrr5ss0IlhSkeMMJcGdGKX4GCd6XdMbE82r0mzfJOSqe+d9wu1L4KawlfcOfLRG
         XywsFpBlcWTe8Tv6yrjV41U9DgfcnNoMt7SasVawVLZ63hJJaX9EzcSI+tnN89Zn1fH+
         WWTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWbE6wbdqwV3LIxSrejPV7ryL4irnO2NRqif49j4Cm8K9b3Mxga
	93kphLY5kYHUWJ1hPcJcemM=
X-Google-Smtp-Source: APXvYqwHovL2MYDXyI0IT/8HXoM1uAqqbkzTitdTeClnmdLuVo7DynVcplhXZx/mQbuU7cMnTCUGuw==
X-Received: by 2002:a2e:9702:: with SMTP id r2mr9081209lji.84.1567186107748;
        Fri, 30 Aug 2019 10:28:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:95c5:: with SMTP id y5ls831678ljh.8.gmail; Fri, 30 Aug
 2019 10:28:27 -0700 (PDT)
X-Received: by 2002:a2e:91c6:: with SMTP id u6mr9291308ljg.68.1567186107200;
        Fri, 30 Aug 2019 10:28:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567186107; cv=none;
        d=google.com; s=arc-20160816;
        b=PEa7cdJfhW8+LhZ5k3Uf/a8k1ViOLuGhKRS97tPrPp/PwsptAEa4Hc5fsgQNpDBNJl
         V5INbqnPrvMhVpoZ/B37GMKBITCCt5roIVmHvVDRroS4q1MQoOz9ZtLygFHnSz6HECBr
         F7FwVt6fruYIZKhEJKkgx8DlTmNrjDJ04Vp/EExwT0QgBNnX8TZ5bAFXOTHH40Ze8Zfh
         mVduh+jv9Ui/QfMl9qPxaH2e4AuvedHSvbIHo+nVvllFRciizuHWwDJAGZC/yu3/oyCM
         BTqsXdJvq6zfKSTBn5d9WRWUN8tFm8fEK7C7tRQPbCaLbfh+hOpXyJR33IElfy0iTCD8
         +rBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=eu7o1tjFJuoZ/R7GMzAcbzkgVT62tsYAxGmizjWMX1g=;
        b=CMX0qlRoFgTeVJus8lEW81sJFGsGbz0dgvUpDHSRgabA2/lJL1pSO399H6O5wI2enc
         73Jns386FIyEy+/aPxYhkWbA9UO+GYv1+YmomrtfKXzlNbsZ4crzoIcCYoAjKHz1JDm+
         UQ8QOWlVB98/D5gGkL1snv/ACF1/fiFZ5e2LkjcZH8w5fZfsNfPdnCNBVsKWla/E5w3S
         JRWb199fu0SPnG9FQ4mF3C9/GsXJ+79Exm2gSW6Q6rVV/1HYDBjtoAuXlN7DT6VMGSMY
         jU/ROEJkuIRiAoI5rsEJzrjeUeuZ6xqxEdQOjR4sjykPoGvQ/ytY4mSbw2uuWYSFwBv6
         UEyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vNqfRzTu;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id h19si385673ljj.3.2019.08.30.10.28.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 10:28:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id t9so8232373wmi.5
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 10:28:27 -0700 (PDT)
X-Received: by 2002:a1c:f910:: with SMTP id x16mr18881080wmh.173.1567186106390;
        Fri, 30 Aug 2019 10:28:26 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id p9sm7465898wru.61.2019.08.30.10.28.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2019 10:28:25 -0700 (PDT)
Date: Fri, 30 Aug 2019 10:28:24 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Stefan Agner <stefan@agner.ch>, Russell King <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@arndb.de>, Matthias Kaehlcke <mka@chromium.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or
 newer
Message-ID: <20190830172824.GA119107@archlinux-threadripper>
References: <20190829062635.45609-1-natechancellor@gmail.com>
 <CAKwvOdkXSWE+_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w@mail.gmail.com>
 <20190829193432.GA10138@archlinux-threadripper>
 <885bb20c11f0cb004e5eeda7b0ca6d16@agner.ch>
 <CAKwvOdm-9T5Mmys93VMK8HLUgPJa2HOpcmG96SAvH2EGLA=3Nw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm-9T5Mmys93VMK8HLUgPJa2HOpcmG96SAvH2EGLA=3Nw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vNqfRzTu;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 29, 2019 at 01:57:35PM -0700, Nick Desaulniers wrote:
> On Thu, Aug 29, 2019 at 1:21 PM Stefan Agner <stefan@agner.ch> wrote:
> >
> > On 2019-08-29 21:34, Nathan Chancellor wrote:
> > > On Thu, Aug 29, 2019 at 10:55:28AM -0700, Nick Desaulniers wrote:
> > >> On Wed, Aug 28, 2019 at 11:27 PM Nathan Chancellor
> > >> <natechancellor@gmail.com> wrote:
> > >> >
> > >> > Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
> > >> > with clang:
> > >> >
> > >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
> > >> > softirq.c:(.text+0x504): undefined reference to `mcount'
> > >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
> > >> > softirq.c:(.text+0x58c): undefined reference to `mcount'
> > >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
> > >> > softirq.c:(.text+0x6c8): undefined reference to `mcount'
> > >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
> > >> > softirq.c:(.text+0x75c): undefined reference to `mcount'
> > >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
> > >> > softirq.c:(.text+0x840): undefined reference to `mcount'
> > >> > arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow
> > >> >
> > >> > clang can emit a working mcount symbol, __gnu_mcount_nc, when
> > >> > '-meabi gnu' is passed to it. Until r369147 in LLVM, this was
> > >> > broken and caused the kernel not to boot because the calling
> > >> > convention was not correct. Now that it is fixed, add this to
> > >> > the command line when clang is 10.0.0 or newer so everything
> > >> > works properly.
> > >> >
> > >> > Link: https://github.com/ClangBuiltLinux/linux/issues/35
> > >> > Link: https://bugs.llvm.org/show_bug.cgi?id=33845
> > >> > Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
> > >> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > >> > ---
> > >> >  arch/arm/Makefile | 6 ++++++
> > >> >  1 file changed, 6 insertions(+)
> > >> >
> > >> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > >> > index c3624ca6c0bc..7b5a26a866fc 100644
> > >> > --- a/arch/arm/Makefile
> > >> > +++ b/arch/arm/Makefile
> > >> > @@ -112,6 +112,12 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
> > >> >  CFLAGS_ABI     +=-funwind-tables
> > >> >  endif
> > >> >
> > >> > +ifeq ($(CONFIG_CC_IS_CLANG),y)
> > >> > +ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000; echo $$?),0)
> > >> > +CFLAGS_ABI     +=-meabi gnu
> > >> > +endif
> > >> > +endif
> > >> > +
> > >>
> > >> Thanks for the patch!  I think this is one of the final issues w/ 32b
> > >> ARM configs when building w/ Clang.
> > >>
> > >> I'm not super enthused about the version check.  The flag is indeed
> > >> not recognized by GCC, but I think it would actually be more concise
> > >> with $(cc-option) and no compiler or version check.
> > >>
> > >> Further, I think that the working __gnu_mcount_nc in Clang would
> > >> better be represented as marking the arch/arm/KConfig option for
> > >> CONFIG_FUNCTION_TRACER for dependent on a version of Clang greater
> > >> than or equal to Clang 10, not conditionally adding this flag. (We
> > >> should always add the flag when supported, IMO.  __gnu_mcount_nc's
> > >> calling convention being broken is orthogonal to the choice of
> > >> __gnu_mcount_nc vs mcount, and it's the former's that should be
> > >> checked, not the latter as in this patch.
> > >
> > > I will test with or without CONFIG_AEABI like Matthias asked and I will
> > > implement your Kconfig suggestion if it passes all of my tests. The
> > > reason that I did it this way is because I didn't want a user to end up
> > > with a non-booting kernel since -meabi gnu works with older versions of
> > > clang at build time, the issue happens at boot time but the Kconfig
> > > suggestion + cc-option should fix that.
> >
> > I agree with Nathan here, I'd rather prefer the build system to fail
> > building rather than runtime error.
> >
> > If we decide we want to have it building despite it not building a
> > functional kernel, we should at least add a #warning...
> 
> Just to be clear...I was suggesting a build failure, but for
> __gnu_mcount_nc not having the correct calling convention in older
> clang releases, which is orthogonal to passing `-meabi gnu`.  This
> patch uses the __gnu_mcount_nc calling convention problem to justify a
> version check for a flag that while closely related, is not actually
> the problem, IMO.

I am not entirely sure what you mean. -meabi gnu has always produced a
buildable kernel (see Stefan's original report [1]), it just doesn't
boot and that all happens silently.

[1]: https://lore.kernel.org/linux-arm-kernel/35ae3d464c7b77a5fe86a732079e32bc@agner.ch/

Okay, after doing some further testing...

Disabling CONFIG_AEABI does not work with clang, I get a ton of failures
around undefined references to __aeabi_idivmod and __aeabi_uidivmod. I
don't think this is worth looking into given that CONFIG_AEABI is not
selectable when CONFIG_CPU_V6 or CONFIG_CPU_V7 is selected, which is
what we primarily care about.. We currently build and boot
multi_v5_defconfig but it has CONFIG_AEABI set in it. As a result, I
don't think we need to care about it with this patch.

This diff would also solve the issue without the need for the version
check in the Makefile, as it is the combination of -meabi gnu and -pg
that causes the boot issue and -pg gets added when
CONFIG_FUNCTION_TRACER is enabled. Would that be preferred? I do not
think adding cc-option is necessary given that we know GCC universally
does not support this flag; there is no point in adding a small penalty
with cc-option to either compiler.

Cheers,
Nathan

================================================

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index a98c7af50bf0..440ad41e77e4 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -83,7 +83,7 @@ config ARM
 	select HAVE_FAST_GUP if ARM_LPAE
 	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
 	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
-	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
+	select HAVE_FUNCTION_TRACER if !XIP_KERNEL && (CC_IS_GCC || CLANG_VERSION >= 100000)
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS && (CPU_V6 || CPU_V6K || CPU_V7)
 	select HAVE_IDE if PCI || ISA || PCMCIA
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a43fc753aa53..23c2bf0fbd30 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -115,6 +115,10 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
 CFLAGS_ABI	+=-funwind-tables
 endif
 
+ifeq ($(CONFIG_CC_IS_CLANG),y)
+CFLAGS_ABI	+=-meabi gnu
+endif
+
 # Accept old syntax despite ".syntax unified"
 AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830172824.GA119107%40archlinux-threadripper.
