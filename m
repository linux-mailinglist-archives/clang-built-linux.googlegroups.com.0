Return-Path: <clang-built-linux+bncBAABB5E2Q3XAKGQEOYGIQCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A714F005B
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Nov 2019 15:55:49 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id l12sf1717483lji.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 06:55:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572965749; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rrj9meZvtQnLKdV6tUXSA4h97G3OGfAJEqdtqGn7c03q9ckC/3RmWkLVUB9HmPQwEV
         24FVicc23gd/6neh0xMKXhgWNEPJZsZNwzZkSNEvML6yQh43XQeQ4hNMMgGmQ7vw8zVt
         3oDYuYqrJFImPXh9op2pd6deh/kDrwPCa6O93Z1EQLtBZ9idhRRtMBQTL7j3OuU+G3Hu
         g3pCiskmvnvdvYaAin6mcXBY8rYTHzE4zEOmgU6DJXiL0qRfpzTyLrbq1aFVnPVHCT7s
         l2H2H8dvRI18G5h9Phb9g/U38KD48spGQaxGzry6oIW8yRtc1JWsp/1nkCZBgFyIj2mA
         PGmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:cc:from:date:mime-version:subject:to:sender
         :dkim-signature;
        bh=BTeBBOwVseRh5fZLOyrhVw9EwnEPFX3/Xfvcd9lXuWs=;
        b=dJWiPFijRfZVPPqU6TDu5VmmuR2nPWeK8EQVHFFj0ZRrSaaxUh0LgUwMHE3KQrhhxb
         Gi4SFV5F5wiwmbxOpkMIlKhqrWHPA7A6LI7nQjzC36VGlENffuEzKllOTVOIXtfT1udn
         RwT+8DaMf4wmiDInRs+5zwCtMO2Pm1X1qd3cVAOwJnt45yXOJg0I7skHJbIm1SLLPncV
         z5scF3OsPNrLxTxtJqbVtWQ01x4AnJTusgnA9KHTmkl4GE7WQ70IGYpw8O8/tUv8XYJQ
         mEdJpXC35m4SJhx36inu9QmKiwUBdttYSAwU5OEWZDKcBBKdAvdxPjgqOHaGTcgHPRd7
         GsEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:subject:mime-version:date:from:cc:in-reply-to:references
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BTeBBOwVseRh5fZLOyrhVw9EwnEPFX3/Xfvcd9lXuWs=;
        b=Q3D1FDcOgOjjkGWVsUW+tvI4YroD07YIFaBhkNKhAJxj+UXpOUC86+vXr7raO2c09r
         LKWDazt9qRICI8fveGW/PW1zIDjZ1yzrHHnmrDtsgryESvEbEliD/gLql3JC52w3nDpT
         bwgVVMA+F4A2btKVnVSH7B5UwGbcunSO7XXDGdVFxDI3nn9EA9svD3JO3yufR1786bqf
         faA25KASMj2P0hJi61Pa27Q+kRQkPCp5YcqPf339JV4SGDw1qk1KA10bmU1c2IuPGFlY
         NCfvRgs8hsioABVSE/e640bitlLQ2sqZdTALumyi4WNCjQvQMO0L85txBzS6yVlfORMZ
         R+Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:subject:mime-version:date:from:cc
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BTeBBOwVseRh5fZLOyrhVw9EwnEPFX3/Xfvcd9lXuWs=;
        b=ozzBR6mr0lu2sClY1+vD/XemCTx1q3VZzLCYa9ktyMUA6MoP8gQKo+ltB/f0iV3pu5
         b1qNcigSbPtoTgyzpyyig1qBLvW1CqIksi2ggaz0LdRKuhZADp4WNJHh6p2i4cO+166x
         9EMIGM6rHxuW/YTtpqUp+AVSUBH15zF3f75Mnra2Ttv0XTC9ABaAZLMbQCuSspem7qyV
         SmXvtKDLf7V3F3BqOiWyqvSMUwjYKph85Gg/3WUp10vZq/pU1izdjdoOgq1E6eZDWJgv
         MhXLI7htc/h3JdP4zlKt8XIv8YUjxUFGc0SshxVcH/u/9cHjIBvQI5Mg3REH24HMWdjU
         opuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV/t6tFf6DwM5ptFJUAn6qX4zO0YBy/0kdxb37VGQDzv2tsNCKY
	WJFBC5OeliNczRPykDtXve0=
X-Google-Smtp-Source: APXvYqw8/t3yo/+JT9l8e1nNQOBZQlRaE/nFjrVX7zeEIBbI3Eo5nnuvdOUJsEDzXbdF1+rtJ2Wchw==
X-Received: by 2002:ac2:4357:: with SMTP id o23mr1158503lfl.51.1572965749014;
        Tue, 05 Nov 2019 06:55:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:30a:: with SMTP id t10ls1113607lfp.7.gmail; Tue, 05
 Nov 2019 06:55:48 -0800 (PST)
X-Received: by 2002:a19:1ce:: with SMTP id 197mr21267975lfb.16.1572965748524;
        Tue, 05 Nov 2019 06:55:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572965748; cv=none;
        d=google.com; s=arc-20160816;
        b=beT/QplkSj9JohBq8gLww9QaBsFbqsp9krS3Fd8IavGGJIr6AzR566aTZ52DoNdmGA
         uYMF5AnND2DSTUBnMmmvE16Lcrx7DVGeL9S9IN1UlDpD85UvHdmvfSVwxcyCMmqSu1Jw
         CdTKRusGeUaqHFvTejw5s63Pqvuv1FssGMCI1OMoOSdsDOQ2o5ywD2xWdFfgQU/Wd8Xf
         y+rxmmQLb8cZDjbkyl9UaMT28ZvlazEop+9zUQEl8/BhF/UTsHN6SG7EcTxf53MtF+nO
         /eyOVAMLOYqmR6TbLaAHtOv0c10j9LzZjYG8rRFv8D67g3+I0iQIz5Kqj6W71MYQwnAn
         HCiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:cc:from:date
         :content-transfer-encoding:mime-version:subject:to;
        bh=fC2Y5Lw8RnOCe3ThhSeAvDYClOuhoHfkZl05FIJCspk=;
        b=DkEvbYaPtH0BcCFJw85pZ0Iie0MDKSEoY3yfBlNaeRSHLu0nZYMVGCQOXGy8mOHLdE
         gPe1gg8/7V6a0yN10/XRAA/pohZCLjBFfdr3SPNDlK11/OlfZowx3Gfwzy3kQ3lkCYBi
         KQLqIKW9fYsUlW1lz10mJwukeXNHGDFbyFHWq1g3Os7z9Z+i7/RCwS2RsUHp9C21I8og
         UieBpoJqD27puCcMtAce0BwJZWf+KEomchNciB11BedjdFvur9Q6/zd8I2u05LWhlCJw
         U00LrH9qZT0tPhIBKc4mDY3vUs5Xhpl2gOkZyuDBea/YkOyu18Ex/MhXajA/45VFUg6D
         FkpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from inca-roads.misterjones.org (inca-roads.misterjones.org. [213.251.177.50])
        by gmr-mx.google.com with ESMTPS id z18si751982lfh.1.2019.11.05.06.55.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Nov 2019 06:55:48 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) client-ip=213.251.177.50;
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
	(envelope-from <maz@kernel.org>)
	id 1iS0Ew-0000Z9-LF; Tue, 05 Nov 2019 15:55:26 +0100
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4 13/17] arm64: preserve x18 when CPU is suspended
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Tue, 05 Nov 2019 16:04:47 +0109
From: Marc Zyngier <maz@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Will Deacon
 <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt
 <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, Ard
 Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <dave.martin@arm.com>,
 Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, Mark
 Rutland <mark.rutland@arm.com>, Jann Horn <jannh@google.com>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Kernel Hardening
 <kernel-hardening@lists.openwall.com>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <CABCJKueN+Op8xm+L3aSFgCL9BLC8b-WHj3oBYhf1W=OcX2aqCg@mail.gmail.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-14-samitolvanen@google.com>
 <02c56a5273f94e9d832182f1b3cb5097@www.loen.fr>
 <CABCJKucVON6uUMH6hVP7RODqH8u63AP3SgTCBWirrS30yDOmdA@mail.gmail.com>
 <CAKwvOdkDbX4zLChH_DKrnOah1sJjTA-e3uZOXUP6nUs-EaJreg@mail.gmail.com>
 <CABCJKueN+Op8xm+L3aSFgCL9BLC8b-WHj3oBYhf1W=OcX2aqCg@mail.gmail.com>
Message-ID: <5486328a221c9eaef8956983f70380f1@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: samitolvanen@google.com, ndesaulniers@google.com, will@kernel.org, catalin.marinas@arm.com, rostedt@goodmis.org, mhiramat@kernel.org, ard.biesheuvel@linaro.org, dave.martin@arm.com, keescook@chromium.org, labbott@redhat.com, mark.rutland@arm.com, jannh@google.com, miguel.ojeda.sandonis@gmail.com, yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=softfail
 (google.com: domain of transitioning maz@kernel.org does not designate
 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On 2019-11-05 01:11, Sami Tolvanen wrote:
> On Mon, Nov 4, 2019 at 1:59 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
>>
>> On Mon, Nov 4, 2019 at 1:38 PM Sami Tolvanen 
>> <samitolvanen@google.com> wrote:
>> >
>> > On Mon, Nov 4, 2019 at 5:20 AM Marc Zyngier <maz@kernel.org> 
>> wrote:
>> > > >  ENTRY(cpu_do_suspend)
>> > > >       mrs     x2, tpidr_el0
>> > > > @@ -73,6 +75,9 @@ alternative_endif
>> > > >       stp     x8, x9, [x0, #48]
>> > > >       stp     x10, x11, [x0, #64]
>> > > >       stp     x12, x13, [x0, #80]
>> > > > +#ifdef CONFIG_SHADOW_CALL_STACK
>> > > > +     str     x18, [x0, #96]
>> > > > +#endif
>> > >
>> > > Do we need the #ifdefery here? We didn't add that to the KVM 
>> path,
>> > > and I'd feel better having a single behaviour, specially when
>> > > NR_CTX_REGS is unconditionally sized to hold 13 regs.
>> >
>> > I'm fine with dropping the ifdefs here in v5 unless someone 
>> objects to this.
>>
>> Oh, yeah I guess it would be good to be consistent.  Rather than 
>> drop
>> the ifdefs, would you (Marc) be ok with conditionally setting
>> NR_CTX_REGS based on CONFIG_SHADOW_CALL_STACK, and doing so in KVM?
>> (So 3 ifdefs, rather than 0)?
>>
>> Without any conditionals or comments, it's not clear why x18 is 
>> being
>> saved and restored (unless git blame survives, or a comment is added
>> in place of the ifdefs in v6).
>
> True. Clearing the sleep state buffer in cpu_do_resume is also
> pointless without CONFIG_SHADOW_CALL_STACK, so if the ifdefs are
> removed, some kind of an explanation is needed there.

I can't imagine the overhead being noticeable, and I certainly value
minimizing the testing space. Sticking a comment there should be
enough for people hacking on this to understand that this isn't
entirely dead code.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5486328a221c9eaef8956983f70380f1%40www.loen.fr.
