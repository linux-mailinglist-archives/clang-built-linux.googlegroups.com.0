Return-Path: <clang-built-linux+bncBCWYVWVBVIEBBHEBW3ZAKGQEPQ7PWZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 55545164DC2
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 19:38:20 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id v11sf793471edw.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 10:38:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582137500; cv=pass;
        d=google.com; s=arc-20160816;
        b=MvRyVBa1vD9EiXeccrOsqVlRcqoprbPKJ9i4++MC9KTygqfMjdd3VuuUzG0TVxOEM5
         rJjmdPErG6RICAwRzr3J5ToimsChV5V8R6WHTnL1FYl5n7/l+2ILO32pQ64TsF7wYk+X
         H+14cJWxQt4v9SFekdUhQcby5xACgHqGCHeSith9jv2VhLh6S/39dmaDH4A3U8C9/k5y
         BFS4b+i4PYAzma+IDwEZZv+yrb6AdSDAsxPyiu0fVlUUlaghsQTNrsSVtxDW9fHJZUXD
         IYXpM3GN1s8CcuVkb6L7IFQB4rffVSW0P3n/elS1iVBcxl2j2qtL/COea/CKl3GCGHbl
         yNhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=ic+X5CyYsOzp6oQedImZtmubw5x72cidvKdPuJ9Bujg=;
        b=kRQBJcwm4dnYjlXPUPD/JI4T9b9UrjKNXhDsGRvzS6al8lxRt4i1JWmCehTEOn3A7h
         LP32dlp6mDvG6vyOSGXmb6aMM0orXnfcHqqokRASm/NCm/PUXzrCD4tI+qou7M3pn36u
         wkyYkr7PUQgg27v4Bhrt5lRT/vfek97AxtuUmJ/1Nwl0/e94pG3G9HBYbxXHkD4sRGrN
         uOSpbFsyzEqv3qawt8ZthH8afXl29dA1Lsj0i+iD1/2yuLbSAgKC805bNyX2uk1LokUK
         YtVTbWtd8RC4yUHDl0kvz8vAOzE3UBD66D7hubIV4sRIJVAxwqEOSKGfSbR/WNaLZixr
         COCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.morse@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ic+X5CyYsOzp6oQedImZtmubw5x72cidvKdPuJ9Bujg=;
        b=kWMj1CHli8BtbFGuknJWD72BLxaxOy73h0GU30/J9xVEdSyt29kjLro++t3vquFZz1
         jcvcaBCbmni+qOl54bGP951h5uQTwMpMgsAOfe02h09Aa0WFl3Tt1WpRV+G71KH13RLM
         dufxfVh3Aq7jRAzxXWXtB70QxDDboDdY1Mr+fmLV7dsjrToteunGaPZ9EFBMSX7uhZ7Z
         G1frvdMdGRJeayi18w4nkjufzHyl9qEbZdL579iZOtOBr6yrAe1XjBvB87jAuLQfUhjF
         XsHFJNqgWw0bXWQEUW6QEhdB71YPK0xCepqQFOD2qAEZ5Uns5wNa3+jCS9zTQDBt7vhV
         d+2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ic+X5CyYsOzp6oQedImZtmubw5x72cidvKdPuJ9Bujg=;
        b=lAU7Zfx/Y2dT9I9WXYEh6n8vZqkEy0A/eAnIpBUhzqNNL8Hhqxy19ReQD8KWYNmT86
         7sGVIkFn09FMQNYU10LK8h4J4m19k5n4zHsYQTENnnEGNgwD8KqHaz/JevRCOi2Mj/xC
         fDrsDeO5gDfF5YhFIYFt36gxx7xVhl1xVA77jAE4XNbt+k/K/rtIb+JRjjllHmqNI3uY
         W0az/o5IllL01vmrOdb4vSiSlMH0RSSJYsy6s24qnvUSHsdWiDmmU9y1sOb2I3Q5xMWn
         pv+fBpzTLK58/U0OyLurizyVD97R+qMT+N1XnaeoUBV+/6HNn8cRUb9eyLaXfW/RfwJd
         0VfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWeysg8cnlZ/uXQtwkQnjB4nmaS2dOWRF5tRKUsbWJFuPkr+4eP
	vNRo/EMRDqc7jQMdl7tfGD0=
X-Google-Smtp-Source: APXvYqz/YOlOF9wm+1Vus+nDYqyfjzEVF0jKTcm/07mxipK/YqjbBeYk1H2caL1ffsTQgP1HmMwN2A==
X-Received: by 2002:a05:6402:211:: with SMTP id t17mr25652210edv.288.1582137500087;
        Wed, 19 Feb 2020 10:38:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:9558:: with SMTP id v24ls8948430eda.2.gmail; Wed, 19 Feb
 2020 10:38:19 -0800 (PST)
X-Received: by 2002:a05:6402:38c:: with SMTP id o12mr25379687edv.273.1582137499586;
        Wed, 19 Feb 2020 10:38:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582137499; cv=none;
        d=google.com; s=arc-20160816;
        b=AGDSpMe4kqLjxOWDRErvColpgsqDFb722v0CRr/Ecy5eu8G9EgYdy+54rQWzwnw+Yd
         RNpEM1luHDeB3uGDuAby0wLEj7pxNtUTrbSAUfDZArXUX7+R/K9Kq2mfYAGKquTD9lEU
         Dsqj9AN1KOzMKiiBk8MPxI4ePOgjydIuml828QS5NpTSb7Zpq9ePxmuU/GnXWzZxXD69
         /ztZAahu4fTO/ZegS8Hgd9Q8swXgrS/1O2esZFh55gB1CpeQE0mvMICs1Q7wCkZ8sK3T
         UuiEtLhaxLnW/klb0hZQzWccFneYKbzBBCBg/cVZIj6p2I7enrt1BkILzwBibUkjttnl
         U4xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=SajVzS0a0WELtgqOp+qpGmJmG7cO1YdVpKCu4ERlR+A=;
        b=gj01j7oJJZOwaeRrOo6GxQ2v2IarNzaTeTUy5aStdNYjiQpvOEmxc8lZ5aZE5YLj9i
         0tLyBfGsCJdjYpHZNzCNQW4f1wrOvpyqaObq97g1COvuc3H8zH417ejA42phk1XXpt7L
         glgQIDGDcBpNg52LIHODFGNNTjXNOH/3Ftfmy9hzp0QNfpkSw7cWdWg1hWTES6dVj+Gz
         BMm/i/3oHxzXBOqczMq3oVgu+8ehSGS2Vx+445qwFoa9rC0vQI0xPaksySGOrcNrF3L5
         commBUDe5O7DDJg4NwRwZufoQt0o1JRkSlfSZi+36Wh1Nb0c8oLa6jaMZKpvMN/UyXH2
         BCJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.morse@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s16si40710edy.3.2020.02.19.10.38.19
        for <clang-built-linux@googlegroups.com>;
        Wed, 19 Feb 2020 10:38:19 -0800 (PST)
Received-SPF: pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B807031B;
	Wed, 19 Feb 2020 10:38:18 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6CE273F703;
	Wed, 19 Feb 2020 10:38:16 -0800 (PST)
Subject: Re: [PATCH v8 00/12] add support for Clang's Shadow Call Stack
To: Sami Tolvanen <samitolvanen@google.com>, Marc Zyngier <maz@kernel.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu
 <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 Jann Horn <jannh@google.com>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
From: James Morse <james.morse@arm.com>
Message-ID: <0386ecad-f3d6-f1dc-90da-7f05b2793839@arm.com>
Date: Wed, 19 Feb 2020 18:38:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
X-Original-Sender: james.morse@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of james.morse@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=james.morse@arm.com
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

Hi Sami,

(CC: +Marc)

On 19/02/2020 00:08, Sami Tolvanen wrote:
> This patch series adds support for Clang's Shadow Call Stack
> (SCS) mitigation, which uses a separately allocated shadow stack
> to protect against return address overwrites.

I took this for a spin on some real hardware. cpu-idle, kexec hibernate etc all work
great... but starting a KVM guest causes the CPU to get stuck in EL2.

With CONFIG_SHADOW_CALL_STACK disabled, this doesn't happen ... so its something about the
feature being enabled.


I'm using clang-9 from debian bullseye/sid. (I tried to build tip of tree ... that doesn't
go so well on arm64)

KVM takes an instruction abort from EL2 to EL2, because some of the code it runs is not
mapped at EL2:

| ffffa00011588308 <__kvm_tlb_flush_local_vmid>:
| ffffa00011588308:       d10103ff        sub     sp, sp, #0x40
| ffffa0001158830c:       f90013f3        str     x19, [sp, #32]
| ffffa00011588310:       a9037bfd        stp     x29, x30, [sp, #48]
| ffffa00011588314:       9100c3fd        add     x29, sp, #0x30
| ffffa00011588318:       97ae18bf        bl      ffffa0001010e614 <__kern_hyp_va>

INSTRUCTION ABORT!

| ffffa0001158831c:       f9400000        ldr     x0, [x0]
| ffffa00011588320:       97ae18bd        bl      ffffa0001010e614 <__kern_hyp_va>
| ffffa00011588324:       aa0003f3        mov     x19, x0
| ffffa00011588328:       97ae18c1        bl      ffffa0001010e62c <has_vhe>


__kern_hyp_va() is static-inline which is patched wherever it appears at boot with the EL2
ASLR values, it converts a kernel linear-map address to its EL2 KVM alias:

| ffffa0001010dc5c <__kern_hyp_va>:
| ffffa0001010dc5c:       92400000        and     x0, x0, #0x1
| ffffa0001010dc60:       93c00400        ror     x0, x0, #1
| ffffa0001010dc64:       91000000        add     x0, x0, #0x0
| ffffa0001010dc68:       91400000        add     x0, x0, #0x0, lsl #12
| ffffa0001010dc6c:       93c0fc00        ror     x0, x0, #63
| ffffa0001010dc70:       d65f03c0        ret


The problem here is where __kern_hyp_va() is. Its outside the __hyp_text section:
| morse@eglon:~/kernel/linux-pigs$ nm -s vmlinux | grep hyp_text
| ffffa0001158b800 T __hyp_text_end
| ffffa000115838a0 T __hyp_text_start


If I disable CONFIG_SHADOW_CALL_STACK in Kconfig, I get:
| ffffa00011527fe0 <__kvm_tlb_flush_local_vmid>:
| ffffa00011527fe0:       d100c3ff        sub     sp, sp, #0x30
| ffffa00011527fe4:       a9027bfd        stp     x29, x30, [sp, #32]
| ffffa00011527fe8:       910083fd        add     x29, sp, #0x20
| ffffa00011527fec:       92400000        and     x0, x0, #0x1
| ffffa00011527ff0:       93c00400        ror     x0, x0, #1
| ffffa00011527ff4:       91000000        add     x0, x0, #0x0
| ffffa00011527ff8:       91400000        add     x0, x0, #0x0, lsl #12
| ffffa00011527ffc:       93c0fc00        ror     x0, x0, #63
| ffffa00011528000:       f9400000        ldr     x0, [x0]
| ffffa00011528004:       910023e1        add     x1, sp, #0x8
| ffffa00011528008:       92400000        and     x0, x0, #0x1
| ffffa0001152800c:       93c00400        ror     x0, x0, #1
| ffffa00011528010:       91000000        add     x0, x0, #0x0
| ffffa00011528014:       91400000        add     x0, x0, #0x0, lsl #12
| ffffa00011528018:       93c0fc00        ror     x0, x0, #63
| ffffa0001152801c:       97ffff78        bl      ffffa00011527dfc <__tlb_switch_>
| ffffa00011528020:       d508871f        tlbi    vmalle1
| ffffa00011528024:       d503201f        nop


This looks like reserving x18 is causing Clang to not-inline the __kern_hyp_va() calls,
losing the vitally important section information. (I can see why the compiler thinks this
is fair)

Is this a known, er, thing, with clang-9?

From eyeballing the disassembly __always_inline on __kern_hyp_va() is enough of a hint to
stop this, ... with this configuration of clang-9. But KVM still doesn't work, so it isn't
the only inlining decision KVM relies on that is changed by SCS.

I suspect repainting all KVM's 'inline' with __always_inline will fix it. (yuck!) I'll try
tomorrow.

I don't think keeping the compiler-flags as they are today for KVM is the right thing to
do, it could lead to x18 getting corrupted with the shared vhe/non-vhe code. Splitting
that code up would lead to duplication.

(hopefully objtool will be able to catch these at build time)


Thanks,

James

> SCS is currently supported only on arm64, where the compiler
> requires the x18 register to be reserved for holding the current
> task's shadow stack pointer.

> Changes in v8:
>  - Added __noscs to __hyp_text instead of filtering SCS flags from
>    the entire arch/arm64/kvm/hyp directory

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0386ecad-f3d6-f1dc-90da-7f05b2793839%40arm.com.
