Return-Path: <clang-built-linux+bncBDYNJBOFRECBBMUIW3ZAKGQE4HULXUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C25164E03
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 19:53:38 +0100 (CET)
Received: by mail-wm1-x33a.google.com with SMTP id 7sf611120wmf.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 10:53:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582138418; cv=pass;
        d=google.com; s=arc-20160816;
        b=J+g1AZfYktMqI+AzzguQ0XKwmgMiKb/lmZMoFRR8ADuts/WVwgUVwEB1fOwFBXhB7m
         hY2CDV0sbxz5BtWDE7exysxcnHTLQKsYWpLPqY6Y2o26cRHZoc57o9OQ3bRDJk54GJkt
         RHue83ly6Sq0QKggqkWcsw8We+yysd2r5k2qT7SXQdnWW09KGnjm/mKZytQetRvRnosW
         Q+QaLpczc/kzrjRZ/eL6nWYj8+jA1d7Z4XlNPA8NE4MrMXS1G8MgnYzaA1RsDQSfBPXB
         gA0159LResy45I6pmYj9XyYEScf6m1+IzBBrQjQBUQkVoDjwuw7/X1bfiaDinZcWoQ1F
         8FJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=hFI5EPHbK+fX7rrIlzJg3ZzZPO5/WcIgm2CnLFh6PT4=;
        b=KI61jDJKhS1MxhYrP/Ul18tPg5Lkt3lkTpkQB3taaV6PvcXzwq2A3yzo4x2m73KzHA
         KCZJe5Rn1JUNz8HP1On/6ZTUloeQvgRF6lMNsfeOju9GQF8A1HuOmCqAQybhXsRTxXXm
         ybBb18CIm+36pB2Y9vioGbfCbQ7D4TZTkpZNfcxFFTL7HmE53OKZ2OpZkgYy4bZvG3mx
         12Hzx4eKVZxp6twA2fFhxx6zTnzzA8K294+aSjJqWMeSiFgrDAVTHRqWd9OhmUcgPhXW
         Y8ryqYl+NZCUmBc/z7wiFsUeXatHyFVzumoRtfL+IbBXjMWBWRBwcFSNcVHI47UI+moV
         wP4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=lTxNEenG;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hFI5EPHbK+fX7rrIlzJg3ZzZPO5/WcIgm2CnLFh6PT4=;
        b=RTkknuOKmbEEcQhkDnhLn5VWlxxmmESQRYlLHwAUpyFyPBGHk5DGX6RkP4QuRPjy4S
         84cBaAVf7r+QPVSsHq8fMAPHIGU+KE/iQv/+gT04roOrCjZIOO1ex5BpAYgTWTQrnKmV
         28M1iK1NJNdGIBO6puWLPCiuEPQHHfBVjfPId6pQIyLPGeFt1y5vfIqKJ3TD63Htvdf3
         WCplVVmfreZZ+0YMs0Yeb10a8gAyNypC17RVRZG9NatlM7LGguA1LBm7wgpHokLjRHT+
         SFH9dsxQTvFmgx91xkdcpdJAavn/4MJa5V06CLVqJT+nL3+8umCSeTmJDM4UNi0CnupR
         nL2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hFI5EPHbK+fX7rrIlzJg3ZzZPO5/WcIgm2CnLFh6PT4=;
        b=DGfHBwPYWnxTRcYKqKtHonKYL67VqSLhf9Kf1yuGwBzUTchl6zj3aNCuG9u0FQsabS
         4rUEgycE+CCq55oES4snUtcDfGOgrI8xeoAPIjXXT6pH0l8HqZEWFisIeeaLCMfM8u7r
         l49fDiVfYTxfUyeGK3cdttPBgwmH00+QcCQX5GYnIYn93rUIL0jwitopbjd5lHa4uTUq
         DUZKL659HxxrFfryclOqlyCFRYngqcXDL0mvboM/3aAwq9VYuwLJ6FIO+doU02UtZWxi
         /C7FNcfYA58YmIbzQGHQeCfLXUCcUYOHZxLhto7ZLsjCZndDR0yYRTZ4D8PTb09QHjWI
         6A+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWR5D2IhDQwAkTqN4Lk0MKl5KG+cIZjLLvZF1BcRH087OO+zF//
	81pAxy7B4/i3xfAMt4X3WFI=
X-Google-Smtp-Source: APXvYqyseBN/EFUw6e7AHbZfapwQM+9u48UQrDA+1nXIIm4RXGwnMLvhXMIX8RJkGXdHsiNwg73onQ==
X-Received: by 2002:a7b:c19a:: with SMTP id y26mr12269456wmi.152.1582138418367;
        Wed, 19 Feb 2020 10:53:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c452:: with SMTP id l18ls5250791wmi.1.canary-gmail; Wed,
 19 Feb 2020 10:53:37 -0800 (PST)
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr12286504wmk.68.1582138417875;
        Wed, 19 Feb 2020 10:53:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582138417; cv=none;
        d=google.com; s=arc-20160816;
        b=ue648o50oQsx5PKXVeYeo7FJR1BEzG7RgFfms7178M53qQRh0G9vX6TPS+hN8xyN91
         S84ewq9qYwPEC+3BDM0b0AEqzz5cGob6FuuI42NhUC8qd5mLkt+8gQNpO29y6tduW9Ig
         VFLoM2PL5UowId1DB3PK1DlZRRqcDp5OAyf9U/2fmrWdlchm9tW9OhY9bZBVBFw36CJ8
         J7Y1dSU70M5YJOhnoerR5kJ574++YGaOkNin8zElMdAl9mdy+CTXubuoS66BafE2GhUf
         Tm5oa+71c5FjvEo9kCh8rUkf9J/ULjQktmbYujuX/iEUL2LUJjaRwtMA3AiDIGP5wOvL
         nWmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sHetkJh3JFpiVt0PkP/E1Oke7WhO+z+xsxym+bAfrek=;
        b=jSl6RPtobqYiUgF02g/otUTXkMaq755jUkktAhs057Y0+bJLDWhPdj0WLwIBKfEd5x
         V1YS9bxWkUb/BdE+uSHcip9hdFS8ljc2EOp+dDZU1IwJeTf3CE6mydpAL7EfhmsMlvK+
         9dDoUcw0M7H8yh71nbhjpiplNGX98s8HMHHyVsmRZpi8Nd70jRTSNmvPXaf781IAKIKR
         1dXLXIknynxKFl0N9v4ScvZZ+m6zD3FcsSWCe8QRBwE0F6kQ1tAGSJboZQM7ZbFmlHGH
         yhyBmATZBMAsKb6Vay50WD9KbmrUwJj8EvPSHzTT1zVbag6w+teNWwPyNNVJT+TU/Za0
         LfqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=lTxNEenG;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y185si18776wmg.0.2020.02.19.10.53.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 10:53:37 -0800 (PST)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id c9so1780389wrw.8
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 10:53:37 -0800 (PST)
X-Received: by 2002:adf:fd8d:: with SMTP id d13mr37778174wrr.208.1582138417419;
 Wed, 19 Feb 2020 10:53:37 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com> <0386ecad-f3d6-f1dc-90da-7f05b2793839@arm.com>
In-Reply-To: <0386ecad-f3d6-f1dc-90da-7f05b2793839@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 19 Feb 2020 19:53:26 +0100
Message-ID: <CAKv+Gu8gHcYW_5G5pfS=yVA7J5JPq0tWqYRcVBAxS0ZYjw9jPw@mail.gmail.com>
Subject: Re: [PATCH v8 00/12] add support for Clang's Shadow Call Stack
To: James Morse <james.morse@arm.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Marc Zyngier <maz@kernel.org>, 
	Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=lTxNEenG;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, 19 Feb 2020 at 19:38, James Morse <james.morse@arm.com> wrote:
>
> Hi Sami,
>
> (CC: +Marc)
>
> On 19/02/2020 00:08, Sami Tolvanen wrote:
> > This patch series adds support for Clang's Shadow Call Stack
> > (SCS) mitigation, which uses a separately allocated shadow stack
> > to protect against return address overwrites.
>
> I took this for a spin on some real hardware. cpu-idle, kexec hibernate etc all work
> great... but starting a KVM guest causes the CPU to get stuck in EL2.
>
> With CONFIG_SHADOW_CALL_STACK disabled, this doesn't happen ... so its something about the
> feature being enabled.
>
>
> I'm using clang-9 from debian bullseye/sid. (I tried to build tip of tree ... that doesn't
> go so well on arm64)
>
> KVM takes an instruction abort from EL2 to EL2, because some of the code it runs is not
> mapped at EL2:
>
> | ffffa00011588308 <__kvm_tlb_flush_local_vmid>:
> | ffffa00011588308:       d10103ff        sub     sp, sp, #0x40
> | ffffa0001158830c:       f90013f3        str     x19, [sp, #32]
> | ffffa00011588310:       a9037bfd        stp     x29, x30, [sp, #48]
> | ffffa00011588314:       9100c3fd        add     x29, sp, #0x30
> | ffffa00011588318:       97ae18bf        bl      ffffa0001010e614 <__kern_hyp_va>
>
> INSTRUCTION ABORT!
>
> | ffffa0001158831c:       f9400000        ldr     x0, [x0]
> | ffffa00011588320:       97ae18bd        bl      ffffa0001010e614 <__kern_hyp_va>
> | ffffa00011588324:       aa0003f3        mov     x19, x0
> | ffffa00011588328:       97ae18c1        bl      ffffa0001010e62c <has_vhe>
>
>
> __kern_hyp_va() is static-inline which is patched wherever it appears at boot with the EL2
> ASLR values, it converts a kernel linear-map address to its EL2 KVM alias:
>
> | ffffa0001010dc5c <__kern_hyp_va>:
> | ffffa0001010dc5c:       92400000        and     x0, x0, #0x1
> | ffffa0001010dc60:       93c00400        ror     x0, x0, #1
> | ffffa0001010dc64:       91000000        add     x0, x0, #0x0
> | ffffa0001010dc68:       91400000        add     x0, x0, #0x0, lsl #12
> | ffffa0001010dc6c:       93c0fc00        ror     x0, x0, #63
> | ffffa0001010dc70:       d65f03c0        ret
>
>
> The problem here is where __kern_hyp_va() is. Its outside the __hyp_text section:
> | morse@eglon:~/kernel/linux-pigs$ nm -s vmlinux | grep hyp_text
> | ffffa0001158b800 T __hyp_text_end
> | ffffa000115838a0 T __hyp_text_start
>
>
> If I disable CONFIG_SHADOW_CALL_STACK in Kconfig, I get:
> | ffffa00011527fe0 <__kvm_tlb_flush_local_vmid>:
> | ffffa00011527fe0:       d100c3ff        sub     sp, sp, #0x30
> | ffffa00011527fe4:       a9027bfd        stp     x29, x30, [sp, #32]
> | ffffa00011527fe8:       910083fd        add     x29, sp, #0x20
> | ffffa00011527fec:       92400000        and     x0, x0, #0x1
> | ffffa00011527ff0:       93c00400        ror     x0, x0, #1
> | ffffa00011527ff4:       91000000        add     x0, x0, #0x0
> | ffffa00011527ff8:       91400000        add     x0, x0, #0x0, lsl #12
> | ffffa00011527ffc:       93c0fc00        ror     x0, x0, #63
> | ffffa00011528000:       f9400000        ldr     x0, [x0]
> | ffffa00011528004:       910023e1        add     x1, sp, #0x8
> | ffffa00011528008:       92400000        and     x0, x0, #0x1
> | ffffa0001152800c:       93c00400        ror     x0, x0, #1
> | ffffa00011528010:       91000000        add     x0, x0, #0x0
> | ffffa00011528014:       91400000        add     x0, x0, #0x0, lsl #12
> | ffffa00011528018:       93c0fc00        ror     x0, x0, #63
> | ffffa0001152801c:       97ffff78        bl      ffffa00011527dfc <__tlb_switch_>
> | ffffa00011528020:       d508871f        tlbi    vmalle1
> | ffffa00011528024:       d503201f        nop
>
>
> This looks like reserving x18 is causing Clang to not-inline the __kern_hyp_va() calls,
> losing the vitally important section information. (I can see why the compiler thinks this
> is fair)
>
> Is this a known, er, thing, with clang-9?
>
> From eyeballing the disassembly __always_inline on __kern_hyp_va() is enough of a hint to
> stop this, ... with this configuration of clang-9. But KVM still doesn't work, so it isn't
> the only inlining decision KVM relies on that is changed by SCS.
>
> I suspect repainting all KVM's 'inline' with __always_inline will fix it. (yuck!) I'll try
> tomorrow.
>

If we are relying on the inlining for correctness, these should have
been __always_inline to begin with, and yuckness aside, I don't think
there's anything wrong with that.


> I don't think keeping the compiler-flags as they are today for KVM is the right thing to
> do, it could lead to x18 getting corrupted with the shared vhe/non-vhe code. Splitting
> that code up would lead to duplication.
>
> (hopefully objtool will be able to catch these at build time)
>

I don't see why we should selectively en/disable the reservation of
x18 (as I argued in the context of the EFI libstub patch as well).
Just reserving it everywhere shouldn't hurt performance, and removes
the need to prove that we reserved it in all the right places.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu8gHcYW_5G5pfS%3DyVA7J5JPq0tWqYRcVBAxS0ZYjw9jPw%40mail.gmail.com.
