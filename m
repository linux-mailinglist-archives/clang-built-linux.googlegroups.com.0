Return-Path: <clang-built-linux+bncBDV37XP3XYDRBCGDW7WQKGQEOF47BLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCD8DF38E
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 18:49:12 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id z24sf4999745wmk.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 09:49:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571676552; cv=pass;
        d=google.com; s=arc-20160816;
        b=Miz15O7vOWtOU74gOgisYz8WK1VM5kTZOMXFfA/t8nXNtKNtrqdWtSWJLVcoo/a+dM
         PZYDnuq3qoTUleKV/PHnh51ZQCJ4twKhUpxBVrzb/4Hqq94BIOZ7Hz186TJF3aSqF1Fe
         4BlpdiimeibeshxiQwah8tmtnl1XMtpmyJVgPHK8trW7F14YUsTIqPtvBEvVlinUTS/6
         Y3oywTrHYhFELpQH7NWxT/+UCc5U+0tqJjrwgqHWZh0Io1tgKHka5ompQ3EuF9V/3AzJ
         umuFxPYc7McRCi2ZRvm/ITpLiS+7Rlq+qrJTN/Ah0iSKpl1O9b7KWPhvw+DdAq5VLTUl
         ugGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=kJwy9OS2oF2j6IA0jDPCDclmnM6gyIOWcx7embXWuxE=;
        b=h+s7gCCR+KW0TXyvTQ4FFJrjRPBCM+faBhVDH1eaGe1jJxiGSShHrGHVxUyA6tXYcH
         5u/179TpJ8uhkqr6uIOVEclqe1rBuYd0re35FXqYNf2eoYZo81yIuAmrXUqlNJbBz8+k
         MOE8zIFYh401KUnaRcYwqj6yr6hIzE3PFHRux+fwlFeu7fx1qnurz9MLtGHRsRo2qU2n
         RZ5kQyKRkSJLlYgFnLHbQ09FiH1sp/p3/XPU6kqj5XjoP1gWDgWc5S4b7YC26OmC7qeW
         L71hBWjqxP7q01Lbj7TZNq75Jy4RyVP5LeEmoluXCGVOrepK3GBiIVogq53dwrtaGDOo
         7Kag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kJwy9OS2oF2j6IA0jDPCDclmnM6gyIOWcx7embXWuxE=;
        b=IcEr0tYnT6X0D57XZMJ7MBaoT2Gj3YPVBOcNcSOwCkmetFV1r8pPDYYfZ/UcVhe293
         /3B4ITrDrivclKcXiyaP+JGnYuEzqJ253RDyaslMN3xSlTNYgwXix4Lbx5wyLEdl2pT5
         2XTs7Dk7gZ48ksds0arrLzzaONx+0VeAVkiTxK2ZIiQ0i5KjPH5pbxJmwf8y9HxlvaBf
         8C/gHBirtpcM69npC9xO7YZ/ubR546FzKrP4dVWQZa8JepCi39iFZ1aSiK6275qdJGIn
         f7NER8CQ3Gt3XZ11nyoHoLnUs8KUlnMt6k+ZZQY7Z2vqNJX9gtM87Wykl0S43pJBzujh
         p67A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kJwy9OS2oF2j6IA0jDPCDclmnM6gyIOWcx7embXWuxE=;
        b=uCM2/LUfDuGJv0afFo4vLIPyHk37KRdQ02QjUGl3qkwQzLuL+fg8tsD4CNpik6kkJf
         qBrc0tutrB5hZ2dukwj0COrHqiWMPKamkKa6dMaOTWGxY/Xf7GUZYCA19h/YQhV6kgnJ
         awU6UDGITkkfvrF3iY70nbnu/qWWuStHOeRqci3KzpPBGXBS+qlSmSYgTnwBLYgxoPtt
         ooWqPYbQ+G6NfmGYBLytnW/bzNjYlPlXwoVX/VUCL2uZCfYwsjNDh2GK6ELv0xbYGSoH
         ZYGDIjmldyCF5eHsGCpieyYrFAy9wcTPOApI602Wc8SAU0+Xcx6PT6ZiEYRSJWu67Soy
         6kVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUH9gSE7wkbQjrAc/Ny1jMKcqDa0Amb39yzqklLfv+MzzCQDbIT
	Yv8Ma0DmalAZTOaRnUOQ3bg=
X-Google-Smtp-Source: APXvYqzlLxj+7Qwol0n+kSR+NeArqOcieE7x7oa8vocB3M/1VCphY0LP9kyTxpWr0FTarnhWXpN9iA==
X-Received: by 2002:adf:f4c1:: with SMTP id h1mr9556693wrp.31.1571676552092;
        Mon, 21 Oct 2019 09:49:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9c90:: with SMTP id d16ls7437476wre.14.gmail; Mon, 21
 Oct 2019 09:49:11 -0700 (PDT)
X-Received: by 2002:a5d:6a91:: with SMTP id s17mr13802691wru.224.1571676551436;
        Mon, 21 Oct 2019 09:49:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571676551; cv=none;
        d=google.com; s=arc-20160816;
        b=1ABdtQaM2nKkjAXX1HPhuVArkNqWb7seKheIht8oktqEOqG1dCOtG8tv8b1AFJO7OW
         GBsT/6CtXmlrU68VSK0kaq16nQg9EzgBhbsMSq3lcHPzF/QMLwzqq/FsBXxWu7xduFIf
         DkcoyprHylI/Iwn1+UK6p+v0WBQf7Dlpw1c1dL/KrlyJVfUP0UYHmIPI2VTCZCKjHfPz
         wMgzJz+mbgWvCWdBMy21QdkPCPS6C+6jGAh2z++pemXIQLfH/uYSyNb/zXw2ZQ/C1dCL
         cMB2zo++UtI4PvJOhP8pY2hdiJX+adFLaWKa9N4D+V8VQc85KGveQs0f9qbRl9kW2JoI
         n62g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=v6Tn3JPmlaOavvgkPfdiLxHPlDUXuLTHMmr7zHuLnIw=;
        b=l3rjK/t73S5CDq6UPyBmPkVgFJdT5qBwjzTu6prX2sIE6ScYHLLxEZziapT7C445T/
         7WuziQyJrxfIbWfDyEumHmZLeUrgWh6Bt7Sk0upboKlxWKphtazB9cv2p3f2y+gZ2DHw
         C8zMThs2mvhueIktiRYVsGkWLzfiElFsKiG4shqTLFZJwdDr+T2jajpAlt4JtlFguGSD
         jc8t+Sdc3Ze9v/Z2B1vDXXcVd9ktEXc73cw3Ekbym14dmx3UgPsJg48OmHBVEMH+NjAA
         5bziFse17iQxVnY+srVfMJM1O6giJ4Xr5dzr6EYNdmPSMlDEucGZkntrzIilgzUH2oBs
         x7mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com ([217.140.110.172])
        by gmr-mx.google.com with ESMTP id p5si712664wmg.0.2019.10.21.09.49.11
        for <clang-built-linux@googlegroups.com>;
        Mon, 21 Oct 2019 09:49:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD150175A;
	Mon, 21 Oct 2019 09:49:08 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E008A3F71F;
	Mon, 21 Oct 2019 09:49:06 -0700 (PDT)
Date: Mon, 21 Oct 2019 17:49:04 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Jann Horn <jannh@google.com>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	kernel list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 18/18] arm64: implement Shadow Call Stack
Message-ID: <20191021164904.GD56589@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-19-samitolvanen@google.com>
 <CAG48ez2Z8=0__eoQ+Ekp=EApawZXR4ec_xd2TVPQExLoyMwtRQ@mail.gmail.com>
 <20191018172309.GB18838@lakrids.cambridge.arm.com>
 <CABCJKue27Aba_MJqB68Bh282zyL=LSQSBXV5TAb-NfsOAqJRnQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKue27Aba_MJqB68Bh282zyL=LSQSBXV5TAb-NfsOAqJRnQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Fri, Oct 18, 2019 at 10:35:49AM -0700, Sami Tolvanen wrote:
> On Fri, Oct 18, 2019 at 10:23 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > I think scs_save() would better live in assembly in cpu_switch_to(),
> > where we switch the stack and current. It shouldn't matter whether
> > scs_load() is inlined or not, since the x18 value _should_ be invariant
> > from the PoV of the task.
> 
> Note that there's also a call to scs_save in cpu_die, because the
> current task's shadow stack pointer is only stored in x18 and we don't
> want to lose it.
> 
> > We just need to add a TSK_TI_SCS to asm-offsets.c, and then insert a
> > single LDR at the end:
> >
> >         mov     sp, x9
> >         msr     sp_el0, x1
> > #ifdef CONFIG_SHADOW_CALL_STACK
> >         ldr     x18, [x1, TSK_TI_SCS]
> > #endif
> >         ret
> 
> TSK_TI_SCS is already defined, so yes, we could move this to
> cpu_switch_to. I would still prefer to have the overflow check that's
> in scs_thread_switch though.

The only bit that I think needs to be in cpu_switch_to() is the install
of the next task's shadow addr into x18.

Having a separate scs_check_overflow() sounds fine to me, as that only
has to read from the shadow stack. IIUC that's also for the prev task,
not next, in the current patches.

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191021164904.GD56589%40lakrids.cambridge.arm.com.
