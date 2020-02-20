Return-Path: <clang-built-linux+bncBAABBDVPXHZAKGQEHXQH57A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id B8420165A93
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 10:55:27 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id e22sf3704005oig.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 01:55:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582192526; cv=pass;
        d=google.com; s=arc-20160816;
        b=sEStwNWVZM8uybAOe1noruIQqzs9HdWUidTHII6dmPPiwbVJOUdcRjuAWmLE71dAc6
         8+/CL4CtE0p/r9OCHKYMQC4iGojZrlj0wk28NkDoqYhIBgK1btAa8G7OdeDEMz5eiuW3
         RvIlYyITridFz2nsyLU+5eXe4rm2bf5xAhKAt2IlBgtOeUDTeNLuwjo9YJ0c536ism+l
         glPM5F8FTmLe6IUYPrEknBWQ8mUwDpfMcod4wGu0AqXr9SUplObquHjhQXZIjOWf0253
         1Rml3DqGfJiOsTtpTlWuNrQXWNuU07TmQjeiQnqgk+Wra8atmvBjfGgtCy/tXDpMYZZn
         AJHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=s7OyXP8Uq4SxkeIZhGT4Tzo6ZYvsKtFGf2Zeog3czmE=;
        b=lmeM6BgFucZZ0AOSpLvRAPq59N0ywkr+iamTMPCuyYkHAZUBM7SncVjxsz2DLMZNN5
         WDspX1AUDaaWWAWJRIjN/t4mZGy8/qiDgtS6uSFKponohap7Z0XXwBisLxIRLZ6xy/gE
         Y5YP9Vy3Bikk+PGQ+l3UUYmCViAxE6DiEhWZdzFN6JxLCHc4B9xNw8P2Zi9w+IFSX+W2
         hrPzPNeFm8bzdIOFXZJuEULCTTiMvuP+5q1fCkbsapqfVq7b3HHt5Tjtq1kX5AF4+lKK
         x0Q/oWMqWehhKzve3SjMhoHmHLtaupYrqdao3DJwdZqCXoPjesFFoIi6Wd3j+zIvQ8MR
         r4sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qyVexSEE;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s7OyXP8Uq4SxkeIZhGT4Tzo6ZYvsKtFGf2Zeog3czmE=;
        b=OH79bZ5WTB7h3DyeTW9K02dpoYWk1mvvHqX+INTLAZ4rg3ZmZE22TbusvojoKH208w
         JhLfe7hGDjERkOwBKHWUVClw+nBAD5dW4+qg+pdQDi8TCSgs8FVsuE/mLdj0r00MaQ1k
         FxVYx4dg6smRlufDWEqZdPx1ESKileKQH453/5Unydw1czJNWhQSVCasHIO5NJh75/ip
         giKavA6oz/HQUWkvcdpsJ2id1JuYGKtYsgaZzIOSf6s9AeTNPrLNc8VIEjdOuAXfwbDi
         kit6sYrBFDyNNuTmBh3XrFu+y+nSXRe3ZQiXdH26zvW/3MrE5vR+C8JWO4Jn0c0ZmaVu
         aQnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s7OyXP8Uq4SxkeIZhGT4Tzo6ZYvsKtFGf2Zeog3czmE=;
        b=pWG2QrJYRjNU8v+nJ91/MxrH88ArfGP7M2z7Td4F8cZoSe5UfjR7LdBX3lLdtrVSl7
         DIYwvBOW+BV16s7FBCbNOD4Mu+dd5BGT59XNzrvtXLGYcUaX0S1eUNA0/Esc96SO++jO
         TPnK1dWxHv6+Lpd02OXp787692gWMiMCEc1CJ0cYeOrhO0SPYJJOfKIz7/vm1on29N+Q
         OPRl5MyKZ+W2RpDv8h3G+ETLpbuzJtLMWuAem6Ajw+9eSn3Z/F7Yma+2LEorfrRlWFg1
         pqESjNHC9GdrhcidB5LGc/5TPPW7KIgOcYibS2OTV8lfRMyM4t4saQ0NV1/U5LQSpYjT
         emyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWxleq9NejMxNrA5JhYsQDPBWi6fhv8GGwLoU60wbptlR12Lhir
	oWZmAKE71aVp/i4lcNDFsBE=
X-Google-Smtp-Source: APXvYqygLBziPWdT0UIhDTx8vVdkZ0DyEO07sbUDuuDvMgg8a2hw6qD1Scn728eGtc6M0PHAG302eQ==
X-Received: by 2002:a9d:62d8:: with SMTP id z24mr22062431otk.362.1582192526668;
        Thu, 20 Feb 2020 01:55:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7150:: with SMTP id y16ls82603otj.7.gmail; Thu, 20 Feb
 2020 01:55:26 -0800 (PST)
X-Received: by 2002:a9d:75da:: with SMTP id c26mr22970113otl.40.1582192526331;
        Thu, 20 Feb 2020 01:55:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582192526; cv=none;
        d=google.com; s=arc-20160816;
        b=YmpZfIS4Ily/6LNf+XhpXHVSCiBJXC27qIQwEqoNdCJ9KEDfCRTTQW08hvM9M0Rsz0
         WoS1OejBUtGU34OZAbtCHWunx6DH1BwjF2M9OqCIkmzgEhnxOIwNDnlJZlhCRT2TTcT9
         rcZuwJgitmeWMVQkjj3ZuXKA2pybUo7ZxClOMxaWrTAG/hqeRT8GmQHT6Gd3SC/5IG/5
         /J/s9+kvopw6r/GSMuMIBn2rBCaMvjypR2NUQhGRotCUPOADwUJGju/shyWRjdej5lMt
         saE7qjrj5vhV9yOK7CgL0hQj4K5J/R3xXt3ernnypwy2NSn3eZOgYdcTGo/SMbLZCwNM
         8RgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=m9L4Phx8mKjotICC1Zc8IS9H1ZvVabyr28EDvh6v77g=;
        b=DYa+daRzWV6avR2UAC7leVHRRhLc2qAlba4WSaCDxZbQxue1RpIHu2gCqCCCJ/5/hJ
         mlKHt8pjNvFugT+3j7FHtJ9sC8oxacqCuLKVqQQ2VKtDxVfpA7uFXyYtYQictve87tU6
         Nx4G03akxj03GIkUiIbZaUJxby/H4G3R6ai7ikNuKhNpGO1OKNtI+koIv2bFDtsl5iXJ
         dn/W0qkIgYr6geddiCqEfhqs+rzEQ0/d4h9+8+snUPdWDIQUrBuZ097A0jCK1Pc/c1I3
         z0b/bjr+nySLcp9bnjp0sgMWcKuirCD2YjA8HE0D7DUd2w6e26r3A/XbaseH1u08yaeg
         71Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qyVexSEE;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 14si198488oty.3.2020.02.20.01.55.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Feb 2020 01:55:26 -0800 (PST)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5F8BF2465D;
	Thu, 20 Feb 2020 09:55:24 +0000 (UTC)
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
	by disco-boy.misterjones.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <maz@kernel.org>)
	id 1j4iYE-006hIv-Ke; Thu, 20 Feb 2020 09:55:22 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Thu, 20 Feb 2020 09:55:22 +0000
From: Marc Zyngier <maz@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: James Morse <james.morse@arm.com>, Sami Tolvanen
 <samitolvanen@google.com>, Will Deacon <will@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, Masami
 Hiramatsu <mhiramat@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Dave
 Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, Laura
 Abbott <labbott@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Jann Horn <jannh@google.com>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Kernel Hardening
 <kernel-hardening@lists.openwall.com>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v8 00/12] add support for Clang's Shadow Call Stack
In-Reply-To: <CAKv+Gu8gHcYW_5G5pfS=yVA7J5JPq0tWqYRcVBAxS0ZYjw9jPw@mail.gmail.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
 <0386ecad-f3d6-f1dc-90da-7f05b2793839@arm.com>
 <CAKv+Gu8gHcYW_5G5pfS=yVA7J5JPq0tWqYRcVBAxS0ZYjw9jPw@mail.gmail.com>
Message-ID: <0cc8538672d3a6abe5893701187a452e@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: ard.biesheuvel@linaro.org, james.morse@arm.com, samitolvanen@google.com, will@kernel.org, catalin.marinas@arm.com, rostedt@goodmis.org, mhiramat@kernel.org, mark.rutland@arm.com, Dave.Martin@arm.com, keescook@chromium.org, labbott@redhat.com, ndesaulniers@google.com, jannh@google.com, miguel.ojeda.sandonis@gmail.com, yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qyVexSEE;       spf=pass
 (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=maz@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On 2020-02-19 18:53, Ard Biesheuvel wrote:
> On Wed, 19 Feb 2020 at 19:38, James Morse <james.morse@arm.com> wrote:
>> 
>> Hi Sami,
>> 
>> (CC: +Marc)
>> 
>> On 19/02/2020 00:08, Sami Tolvanen wrote:
>> > This patch series adds support for Clang's Shadow Call Stack
>> > (SCS) mitigation, which uses a separately allocated shadow stack
>> > to protect against return address overwrites.
>> 
>> I took this for a spin on some real hardware. cpu-idle, kexec 
>> hibernate etc all work
>> great... but starting a KVM guest causes the CPU to get stuck in EL2.
>> 
>> With CONFIG_SHADOW_CALL_STACK disabled, this doesn't happen ... so its 
>> something about the
>> feature being enabled.
>> 
>> 
>> I'm using clang-9 from debian bullseye/sid. (I tried to build tip of 
>> tree ... that doesn't
>> go so well on arm64)
>> 
>> KVM takes an instruction abort from EL2 to EL2, because some of the 
>> code it runs is not
>> mapped at EL2:
>> 
>> | ffffa00011588308 <__kvm_tlb_flush_local_vmid>:
>> | ffffa00011588308:       d10103ff        sub     sp, sp, #0x40
>> | ffffa0001158830c:       f90013f3        str     x19, [sp, #32]
>> | ffffa00011588310:       a9037bfd        stp     x29, x30, [sp, #48]
>> | ffffa00011588314:       9100c3fd        add     x29, sp, #0x30
>> | ffffa00011588318:       97ae18bf        bl      ffffa0001010e614 
>> <__kern_hyp_va>
>> 
>> INSTRUCTION ABORT!
>> 
>> | ffffa0001158831c:       f9400000        ldr     x0, [x0]
>> | ffffa00011588320:       97ae18bd        bl      ffffa0001010e614 
>> <__kern_hyp_va>
>> | ffffa00011588324:       aa0003f3        mov     x19, x0
>> | ffffa00011588328:       97ae18c1        bl      ffffa0001010e62c 
>> <has_vhe>
>> 
>> 
>> __kern_hyp_va() is static-inline which is patched wherever it appears 
>> at boot with the EL2
>> ASLR values, it converts a kernel linear-map address to its EL2 KVM 
>> alias:
>> 
>> | ffffa0001010dc5c <__kern_hyp_va>:
>> | ffffa0001010dc5c:       92400000        and     x0, x0, #0x1
>> | ffffa0001010dc60:       93c00400        ror     x0, x0, #1
>> | ffffa0001010dc64:       91000000        add     x0, x0, #0x0
>> | ffffa0001010dc68:       91400000        add     x0, x0, #0x0, lsl 
>> #12
>> | ffffa0001010dc6c:       93c0fc00        ror     x0, x0, #63
>> | ffffa0001010dc70:       d65f03c0        ret
>> 
>> 
>> The problem here is where __kern_hyp_va() is. Its outside the 
>> __hyp_text section:
>> | morse@eglon:~/kernel/linux-pigs$ nm -s vmlinux | grep hyp_text
>> | ffffa0001158b800 T __hyp_text_end
>> | ffffa000115838a0 T __hyp_text_start
>> 
>> 
>> If I disable CONFIG_SHADOW_CALL_STACK in Kconfig, I get:
>> | ffffa00011527fe0 <__kvm_tlb_flush_local_vmid>:
>> | ffffa00011527fe0:       d100c3ff        sub     sp, sp, #0x30
>> | ffffa00011527fe4:       a9027bfd        stp     x29, x30, [sp, #32]
>> | ffffa00011527fe8:       910083fd        add     x29, sp, #0x20
>> | ffffa00011527fec:       92400000        and     x0, x0, #0x1
>> | ffffa00011527ff0:       93c00400        ror     x0, x0, #1
>> | ffffa00011527ff4:       91000000        add     x0, x0, #0x0
>> | ffffa00011527ff8:       91400000        add     x0, x0, #0x0, lsl 
>> #12
>> | ffffa00011527ffc:       93c0fc00        ror     x0, x0, #63
>> | ffffa00011528000:       f9400000        ldr     x0, [x0]
>> | ffffa00011528004:       910023e1        add     x1, sp, #0x8
>> | ffffa00011528008:       92400000        and     x0, x0, #0x1
>> | ffffa0001152800c:       93c00400        ror     x0, x0, #1
>> | ffffa00011528010:       91000000        add     x0, x0, #0x0
>> | ffffa00011528014:       91400000        add     x0, x0, #0x0, lsl 
>> #12
>> | ffffa00011528018:       93c0fc00        ror     x0, x0, #63
>> | ffffa0001152801c:       97ffff78        bl      ffffa00011527dfc 
>> <__tlb_switch_>
>> | ffffa00011528020:       d508871f        tlbi    vmalle1
>> | ffffa00011528024:       d503201f        nop
>> 
>> 
>> This looks like reserving x18 is causing Clang to not-inline the 
>> __kern_hyp_va() calls,
>> losing the vitally important section information. (I can see why the 
>> compiler thinks this
>> is fair)
>> 
>> Is this a known, er, thing, with clang-9?
>> 
>> From eyeballing the disassembly __always_inline on __kern_hyp_va() is 
>> enough of a hint to
>> stop this, ... with this configuration of clang-9. But KVM still 
>> doesn't work, so it isn't
>> the only inlining decision KVM relies on that is changed by SCS.
>> 
>> I suspect repainting all KVM's 'inline' with __always_inline will fix 
>> it. (yuck!) I'll try
>> tomorrow.
>> 
> 
> If we are relying on the inlining for correctness, these should have
> been __always_inline to begin with, and yuckness aside, I don't think
> there's anything wrong with that.

Agreed. Not having __always_inline is definitely an oversight, and we
should fix it ASAP (hell knows what another compiler could produce...).
And the whole EL2 aliasing is utter yuck already, this isn't going to
make things much worse...

I can queue something today for __kern_hyp_va(), but I'd like to make
sure there isn't other silly mistakes like this one somewhere...

>> I don't think keeping the compiler-flags as they are today for KVM is 
>> the right thing to
>> do, it could lead to x18 getting corrupted with the shared vhe/non-vhe 
>> code. Splitting
>> that code up would lead to duplication.
>> 
>> (hopefully objtool will be able to catch these at build time)
>> 
> 
> I don't see why we should selectively en/disable the reservation of
> x18 (as I argued in the context of the EFI libstub patch as well).
> Just reserving it everywhere shouldn't hurt performance, and removes
> the need to prove that we reserved it in all the right places.

I'd certainly like to keep things simple if we can.

           M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0cc8538672d3a6abe5893701187a452e%40kernel.org.
