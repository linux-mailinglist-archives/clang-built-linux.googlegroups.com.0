Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBPXBZX3QKGQEAADBGJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A8920775E
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 17:26:55 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id w8sf1525683otk.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 08:26:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593012414; cv=pass;
        d=google.com; s=arc-20160816;
        b=DOZgMJNf5zaKiGF4eq27lzNqM3YijIjulDwsJC5Wr60+K2PBr6HHRc/qzlPII3MgnM
         BxrJtzLkN/407rlSNCfA6loTV/FqPk0lTUpWmYjfugFQdQZ/NlozsSyKHnhEXUHu/Sqs
         w2yZr1V3gB5j68m2wSyo3niYICjmvfhvyPwcbDgZCmme3H71EGA1DIy0I+dVTveg9+Bv
         6TqAdtGNZhA7NjtjTWwbFy2Saz10Q8WlcPBP+V6nWJFx79NLzSnnLC0clMijnUy94kCF
         EMnhSMlnXdxrBXybeN/GnTdViyYYVrYql8uJxJNARrS531hpNMLKUWq/4rjcwI3jLLPv
         cMqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=qCBBye33F2W9Dt+mmPmUz2IeGhLQqqYE78Seju+h4X4=;
        b=EgNimdt3GPrNL54vBA/E88R7XxZ5/t0hgZygKrcNSlVP0380xu50kR66Mg4RsMhaCH
         Bvdt/M6/5Fbbx1MPWCwpNTxyqY+tDWBQURCcz19lOlSpBFK7Ge8lF1zleGPgBLJ0J0ov
         YkuDwmQKK9VyesEvuuMyJ1IbQnWuz4FdzR0h5JsuIGEJnBJLK4+ZjYb3EiKLjc02QUT5
         2z4d/gAY+NNtaD6c856bh8DzQJzA9r1vx3nnAsWdFuS6QxmF57XT1DpSNzJxdRdS5dl+
         eGj7iS96O3/yiWbVgebOAlLZ5RQTC9GzRSUPqrtGGEUGycK4JKhVeQZg/No6wN4Vl/Rq
         D1tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=r3bJkm2M;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qCBBye33F2W9Dt+mmPmUz2IeGhLQqqYE78Seju+h4X4=;
        b=HC5wygIl3Aq0U8/rLSjym+TqT9GXnuxHNgnGaTtpo681DnB3ygLV/w3gA5ZEpK2fjq
         1Izax6jbVM3nRW+r9C3TGaFFQGuikK5NvzpF471jwIOYXjQlMFQwY+zqOgDMDMinAf1J
         Hb5wco3+H/4W6twOn9DEb1usBDtUqbyvOolX23j+o+wgY5P0oDIlDnUgrKUnBXiEHql1
         XR/2zzgaOKjAlwmecjUdvLZLCj7O8rD1Bq34q0U6KTdPkTQGN2YoL0zQv/+b0O7ZVA6X
         aYF37wCQfBddnK9MbYW8gksMdry9Ng9j21HUZdbDbcv8XyQv/M+gTJgb3fD9JAsq3i31
         qzKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qCBBye33F2W9Dt+mmPmUz2IeGhLQqqYE78Seju+h4X4=;
        b=MdaZfPdYOQIpZ4/br1YLwfX9voaRMKbEq2dcX9SxD7+kXK6lWUMuK/iaN3aTrW4yjv
         CL7AD25heAcixv8tUpkBv9wf/0KqCLnW0QvF+ZZZu4JJVVWaFhHKa4QhiLc7h/3Ok0K7
         oTt56rJObRG47FB/Q9BE8vB8Vt3UhVOfX2PSjFs3Cpuo+/3WGizzSGKntVMi0fAPtYU4
         3a9JWRkqN9fpabCAXGkOTqH4/VP8VqJMQAff//qWl67F9AiQcRiQ2rRuS89yx0EcRUGW
         ojIp8+NLyXpkQIHyfcQwpINfffFLmHIp3792CuiK60coTGDZKhCwAnn/iWqe9mSIDwR+
         +tOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aegV2/pXwkLtW3CjegngnT7nDm1yz7dXUCVNARupHP3KMRtt6
	HoQnJyCMwzzk4wIxbzfrvuk=
X-Google-Smtp-Source: ABdhPJyZHo6m0h7+3XILHtAxgPdBXqRY/X+0Am5r8UKYCePNVgfvfAlZSPltUq8cuxGkEU1YT7zj5w==
X-Received: by 2002:a9d:5604:: with SMTP id e4mr22939293oti.166.1593012414486;
        Wed, 24 Jun 2020 08:26:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:dbd7:: with SMTP id s206ls474913oig.6.gmail; Wed, 24 Jun
 2020 08:26:54 -0700 (PDT)
X-Received: by 2002:aca:2b0d:: with SMTP id i13mr21264120oik.39.1593012414195;
        Wed, 24 Jun 2020 08:26:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593012414; cv=none;
        d=google.com; s=arc-20160816;
        b=Oehlj5HlbqAaW/CUIUsHz+vaHLGeERgDRX9ZOPqC0Qe2Q7u3p+HtMSDTPYXg2Xhh5d
         WZ3kKGICuU+LY7iq+YcJ5hpW1FaM/SI0EZSwZJrBlizUHbmhP6r6cR9rvRbnMqRtBX1I
         0zHQXVNRRhaQWn8qiX6wfhWXdJC0v1JVVx66r3eXg+mzSYS0L1Wgqd6OOJR+/j70BvGd
         QoHPmf07YwxjXN4AtcfyX0n+HsDmgU/dl1N96rcHBsUgqStROQyUqIAO6vyPpmSZNaT9
         ZcFtC3/tFdONAXTJfUaVUrg8ZAHj7xoZCewc8dC4/1RTEFC/6aeUWuawlf3Nq37HPXOA
         7i7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bS6n8FFfWvjN9Mt3p8uq12YOqkYE906JL7ez0Yg0Nwk=;
        b=iFUqluBgKN/0HCxokVmJSupPBaw8gsgMJ4abvTLPIfQb2UlKhBqcFUtFCChy+l8gnz
         rGs6zfiUQRnEiTdm3OO/Vvj+zZQONTX6bS8SMqCKYXQzuxWoODPhoojhpaVHf+AfqSof
         Rlz8qPr7JyqWZWnIBA/2ikCKVPhF8NMCgW+Se+Z/ZZ9PSYTSvSXBC4kiP7eIiXQAUlU9
         87tOajOg3ouUqfflU5ioZjjyZcYhgqlNhFLf39D9ee6Ucy15SHW8GnESfOYIVfBbZEC/
         iC4j+uOU34hS/LmK5WWAnFDhhDCqyju+2Hkl2/mwyo8Wt/tKIZTQRLvyBUA3BAncryE2
         1UiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=r3bJkm2M;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h13si1764795otk.1.2020.06.24.08.26.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 08:26:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C1DC420723;
	Wed, 24 Jun 2020 15:26:49 +0000 (UTC)
Date: Wed, 24 Jun 2020 16:26:46 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Fangrui Song <maskray@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Russell King <linux@armlinux.org.uk>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Ingo Molnar <mingo@redhat.com>, James Morse <james.morse@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@suse.de>,
	Peter Collingbourne <pcc@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
Message-ID: <20200624152646.GA6768@willie-the-truck>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-4-keescook@chromium.org>
 <20200624033142.cinvg6rbg252j46d@google.com>
 <202006232143.66828CD3@keescook>
 <20200624104356.GA6134@willie-the-truck>
 <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com>
 <20200624112647.GC6134@willie-the-truck>
 <20200624134854.GF25945@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624134854.GF25945@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=r3bJkm2M;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Wed, Jun 24, 2020 at 02:48:55PM +0100, Dave Martin wrote:
> On Wed, Jun 24, 2020 at 12:26:47PM +0100, Will Deacon wrote:
> > On Wed, Jun 24, 2020 at 12:46:32PM +0200, Ard Biesheuvel wrote:
> > > On Wed, 24 Jun 2020 at 12:44, Will Deacon <will@kernel.org> wrote:
> > > > For the kernel Image, how do we remove these sections? The objcopy flags
> > > > in arch/arm64/boot/Makefile look both insufficient and out of date. My
> > > > vmlinux ends up with both a ".notes" and a ".init.note.gnu.property"
> > > > segment.
> > > 
> > > The latter is the fault of the libstub make rules, that prepend .init
> > > to all section names.
> > 
> > Hmm. I tried adding -mbranch-protection=none to arm64 cflags for the stub,
> > but I still see this note in vmlinux. It looks like it comes in via the
> > stub copy of lib-ctype.o, but I don't know why that would force the
> > note. The cflags look ok to me [1] and I confirmed that the note is
> > being generated by the compiler.
> > 
> > > I'm not sure if there is a point to having PAC and/or BTI in the EFI
> > > stub, given that it runs under the control of the firmware, with its
> > > memory mappings and PAC configuration etc.
> > 
> > Agreed, I just can't figure out how to get rid of the note.
> 
> Because this section is generated by the linker itself I think you might
> have to send it to /DISCARD/ in the link, or strip it explicitly after
> linking.

Right, but why is the linker generating that section in the first place? I'm
compiling with -mbranch-protection=none and all the other objects linked
into the stub do not have the section.

I wonder if it's because lib/ctype.c doesn't have any executable code...

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624152646.GA6768%40willie-the-truck.
