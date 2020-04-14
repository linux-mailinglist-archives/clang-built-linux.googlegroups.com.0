Return-Path: <clang-built-linux+bncBDV37XP3XYDRBWV7272AKGQEGUULDEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id B679A1A842E
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 18:07:55 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id t12sf10643083oih.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 09:07:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586880474; cv=pass;
        d=google.com; s=arc-20160816;
        b=b75/c9dy/eBRnP2eTypNEB7ZF9c0+NNKm1nuvTxn+ZNIQmO1nDuKED3wLrsEhnVgJU
         JZ7mpxd69He2f9IWl2kaYOGixqLHldvm+0XyhtiXL9dhcgXH11MXyq4MFwkJDQB2yCS3
         OtOlzipuXOeALWAYGygAboMtxWgaRkqVIQg5lCRkG88gYjljva3Hnf/m/yrWjCVBovoI
         dVI0q5H4ai/LLO0ibPs1jjDOoHV2IG+W3IgM4P68rXlnu8pMq2ypXwr0Ao74sydaKa0l
         YSe97V5O1Z//zeyzGgYIh0fGC2hFdTol99CqBWSV80YfbB5cgCMc5bXFYKNTw7sFtTug
         IypA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XB3G6+lmu+L6DrPU4BHIe/6iYbpsAomCSV1D3AWuFhs=;
        b=E7ij1nyhrAVyGLoLfT4M2xYXNZnhSyPFJtALKDFDYfxrrnhXM0XNBpmHvuxOzS7uj1
         IOjgq7RS2GJvfGObJyn1MtrpFqhf/aQn9HJvF4AXTLeAYkkloRFdpleK8WO4nAJGU/ki
         nEORaOfj/suBCZ7qj2eCPb93WrgtJaiaLHrkjkRxf/IYea8fN7MS8mGqWwaQU5QXYIqG
         L7g9J+276WVaxPq0ji8cdszTAOvt2kk2d3EReZEegr4qToW4bEY/KJ8YZO6nFrDncngt
         8CWDnmAvyugT1n+y3BPZy2riHqWsZ6Ur5Sh5fwqEQ2uM7XIs/wp/964Rq2nRlE9JQszG
         DqvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XB3G6+lmu+L6DrPU4BHIe/6iYbpsAomCSV1D3AWuFhs=;
        b=dhsB0tyC/5808mRp4M5LU9Y0WnqfE1CibSmiNivcF+LUS7y51pYpIlhC78CDftewzQ
         LEg3vhkDZ4fmeIvKmIFHS/8lVtlTE2itG4z0X2SOEbTxRRav7+gXRa6pDg7wJcwacbpf
         s0kKUYSPga5BRKX827Lt255xRp4jx+oJQ7HhRgmiwklSrYQqfpJXooe+6faH+JsEwfFZ
         g1+LB7ylqeUvkvolLlt6Tk0Iq8ELgnde2s9h97tz/fN93no8j74BZYkwfR/bbTqiXqun
         tDbyzTZyDwvsbGUy/DvuixFZC+uC+2TQ6U3DkvcZFG73fgivmRL6+G+W+HgSWvhwdkkJ
         nbhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XB3G6+lmu+L6DrPU4BHIe/6iYbpsAomCSV1D3AWuFhs=;
        b=q8wUe8bVSlrHQy7+SvzrMqTzc+N1XvW01WH/ciZk5thql43Y7BSbFo4v/mtkwQdfwu
         jLJLQL2Ra35dYgYBmYbjzgNguBqJFrZBuMdhyopnTAOd8BXmUQsuZnZ067BThkratfdA
         JLKQ393MRuWh/6Aq48hYypUSY9OfJzaMnewN6jQTjK6Lt+Uex2n19uhmECQN7XmMPXQj
         7LBbyLp/sfH2tWmbnYL9xxZSeedASV+cosSQH3XgoiIBRlvKMxFnGer7Wds/+3ekBcPB
         EQtZJFWZi1lOf+syQp29lRk+7IRS8YlcWA2yChDLV6QsJuN2iFeyzpDzz5HQvowGa+Gd
         jwEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubzTkvMGRZUUYczRPzEeuMCr4NQaW/UcpA0Yr76Uhm0PgELEGz7
	xL6uOPwgPLJXcfs+n0A0Z0k=
X-Google-Smtp-Source: APiQypLiA/3uBbA40LG5EtBtAp7ziOWybCgPGr74AStw054m/wPqCYHd1+q13vohwyujQ5TIrzbGsg==
X-Received: by 2002:a9d:2215:: with SMTP id o21mr18591662ota.113.1586880474289;
        Tue, 14 Apr 2020 09:07:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6945:: with SMTP id p5ls872181oto.10.gmail; Tue, 14 Apr
 2020 09:07:53 -0700 (PDT)
X-Received: by 2002:a9d:a55:: with SMTP id 79mr6266803otg.295.1586880473848;
        Tue, 14 Apr 2020 09:07:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586880473; cv=none;
        d=google.com; s=arc-20160816;
        b=ZAQlt5rQ7DI5JI6JWG4yy75kMeFlUdAjScs6r7GkrGHnHFPsAW9aBRxzHK9hem40EJ
         zDmJ0+V71TOap8TX3Jbu7a0kJY508p3AgmVh+ADB/XBHu/+6cCezWCBOAWw+1HJrzuza
         qYvfB1wWDgmpH65E9hTKMk9LyEDGWAUWTUzJsVLmzi8/LU9JPa9Sbx8+0Ae75SOgCBES
         nn5JpD+KV7RRLnMdFM0Gt1K6R3zknWKUPKjd8iOa+gTIm4AfpFrZD7Nx9Ym7TrBnaaBH
         ydTSJ8OIiJDWipGyST8C+NUOjpSRYgeQ14498PTmfgVfUUtsXOcPmtfL8v/MOf7ta+wX
         uurA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=1oQuAOeTlyYntmito/GXFvs9O+g8MjvEcqJmqik02RQ=;
        b=i3oKtHJrEsfRKEWgxijjB8hbXum3oZoThFhc5W/mChSBE9QOL+ADT9fkT6ivxvoyp1
         WCbJA3RENFd0AUWAhRN4TBk/rKoGYH48q+F9LVfCxsnGPf96qaWqO0ublaDRfMfCOTQ1
         Ik20ECn627nilaqH7EpPuhJKp1YciBzXUo6YzhpQ0HSd3NNL5IeaG75GuqlfRzhY6VpW
         rYxem9KErANkUIoRI/6959hNcqT06WzsnBtQDyWV3j8XTkOdzGP5W5EB8YlIUJGjGts8
         oH+e45CqvAx/zPnk8/rSD6Xr8Jo55FExcXY3sWeEARQh6PvSBcPCdbhviXsiqwn1vkI3
         OfGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id f7si787358oti.0.2020.04.14.09.07.53
        for <clang-built-linux@googlegroups.com>;
        Tue, 14 Apr 2020 09:07:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9FFAE30E;
	Tue, 14 Apr 2020 09:07:53 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.4])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F323C3F6C4;
	Tue, 14 Apr 2020 09:07:51 -0700 (PDT)
Date: Tue, 14 Apr 2020 17:07:49 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Fangrui Song <maskray@google.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: Delete the space separator in __emit_inst
Message-ID: <20200414160749.GL2486@C02TD0UTHF1T.local>
References: <20200413033811.75074-1-maskray@google.com>
 <20200414095904.GB1278@C02TD0UTHF1T.local>
 <20200414154307.2cke3x5ocz3q2as4@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200414154307.2cke3x5ocz3q2as4@google.com>
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

On Tue, Apr 14, 2020 at 08:43:07AM -0700, Fangrui Song wrote:
> 
> On 2020-04-14, Mark Rutland wrote:
> > Hi Fangrui,
> > 
> > On Sun, Apr 12, 2020 at 08:38:11PM -0700, Fangrui Song wrote:
> > > Many instances of __emit_inst(x) expand to a directive. In a few places
> > > it is used as a macro argument, e.g.
> > > 
> > >   arch/arm64/include/asm/sysreg.h
> > >   #define __emit_inst(x)                       .inst (x)
> > > 
> > >   arch/arm64/include/asm/sysreg.h
> > >   #define SET_PSTATE_PAN(x)            __emit_inst(0xd500401f | PSTATE_PAN | ((!!x) << PSTATE_Imm_shift))
> > > 
> > >   arch/arm64/kvm/hyp/entry.S
> > >   ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)
> > > 
> > > Clang integrated assembler parses `.inst (x)` as two arguments passing
> > > to a macro. We delete the space separator so that `.inst(x)` will be
> > > parsed as one argument.
> > 
> > I'm a little confused by the above; sorry if the below sounds stupid or
> > pedantic, but I just want to make sure I've understood the problem
> > correctly.
> > 
> > For the above, ALTERNATIVE() and SET_PSTATE_PAN() are both preprocessor
> > macros, so I would expect those to be expanded before either the
> > integrated assembler or an external assembler consumes any of the
> > assembly (and both would see the same expanded text). Given that, I'm a
> > bit confused as to why the integrated assembly would have an impact on
> > preprocessing.
> > 
> > Does compiling the pre-processed source using the integrated assembler
> > result in the same behaviour? Can we see the expanded text to make that
> > clear?
> > 
> > ... at what stage exactly does this go wrong?
> > 
> > Thanks,
> > Mark.
> 
> Hi Mark,
> 
> The C preprocessor expands arch/arm64/kvm/hyp/entry.S
>    ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)
> 
> to:
>    alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1
> 
> `alternative_insn` is an assembler macro, not handled by the C preprocessor.
> 
> Both comma and space are separators, with an exception that content
> inside a pair of parentheses/quotes is not split, so clang -cc1as or GNU
> as x86 splits arguments this way:
> 
>    nop, .inst, (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1

Thanks for this; I understand now.

Could we fold that into the commit message? I think this is much clearer
than the current wording. The explicit description of separator
behaviour, the pre-expansion of the CPP macros, and the example of how
the assembler will split this really help.

> I actually feel that GNU as arm64's behavior is a little bit buggy. It
> works just because GNU as has another preprocessing step `do_scrub_chars`
> and its arm64 backend deletes the space before '('
> 
>    alternative_insn nop,.inst(0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1
> 
> The x86 backend keeps the space before the outmost '('
> 
>   alternative_insn nop,.inst (0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1
> 
> By reading its state machine, I think keeping the spaces will be the
> most reasonable behavior.

I think I agree. This deviation across architectures is unfortunate for
such a low-level but common tool.

> If .inst were only used as arguments,
> 
>    alternative_insn nop, ".inst (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8))", 4, 1
> 
> would be the best to avoid parsing issues.
> 
> > > 
> > > Note, GNU as parsing `.inst (x)` as one argument is unintentional (for
> > > example the x86 backend will parse the construct as two arguments).
> > > See https://sourceware.org/bugzilla/show_bug.cgi?id=25750#c10
> > > 
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/939
> > > Cc: clang-built-linux@googlegroups.com
> > > Signed-off-by: Fangrui Song <maskray@google.com>
> > > ---
> > >  arch/arm64/include/asm/sysreg.h | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> > > index ebc622432831..af21e2ec5e3e 100644
> > > --- a/arch/arm64/include/asm/sysreg.h
> > > +++ b/arch/arm64/include/asm/sysreg.h
> > > @@ -49,7 +49,9 @@
> > >  #ifndef CONFIG_BROKEN_GAS_INST
> > > 
> > >  #ifdef __ASSEMBLY__
> > > -#define __emit_inst(x)			.inst (x)
> > > +// The space separator is omitted so that __emit_inst(x) can be parsed as
> > > +// either a directive or a macro argument.
> > > +#define __emit_inst(x)			.inst(x)

Can we make this a bit more explicit and say "assembler macro argument"?
That way we can avoid any confusion with a CPP macro.

With that (and with the details above folded into the commit message):

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

> > >  #else
> > >  #define __emit_inst(x)			".inst " __stringify((x)) "\n\t"
> > >  #endif
> > > --
> > > 2.26.0.110.g2183baf09c-goog
> > > 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200414160749.GL2486%40C02TD0UTHF1T.local.
