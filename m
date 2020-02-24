Return-Path: <clang-built-linux+bncBCS7XUWOUULBBAMA2HZAKGQEVG6XQBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F6016B231
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 22:28:34 +0100 (CET)
Received: by mail-ua1-x940.google.com with SMTP id n23sf1567839uao.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 13:28:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582579713; cv=pass;
        d=google.com; s=arc-20160816;
        b=E6/ZYz4yzfMs6a83k4sCGXNFHtpW2oyL0dGL1Eq8WskBFlNICtZ8miV3eP0B64HgXc
         tOVe6QNn6s5MZRJ50Jwwpww6lit6VBsYP018h+Xro2wvLspFrumMOlxv58WpaGtXZHoV
         QUkKWrkOUzqfXHHMEpIVgEq6lVQ9LDghAAH9TzOlV7UFZ26YPK7UIt6ljFPTTvnkizN+
         EeoVF/WRNFJl94zYgMSIGMxVDKmpFxTLitQscbQTEWEUsFHce9yYKHBJvQpjG6yBO609
         H3CxvS1D5zaNXJkIrC/8uVbB+3mvFVq2HX78Bfm9a0EuzFCedjCqG7Mt+xOczWT5oDny
         AkDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=bPfoO8gXo3JPAhg4NiTCS9miK1U9n/ICnPagqLnW6sw=;
        b=dRQQ4sRNAt5UC2sYnUXlbLZ96cXCAMjgQSIyTtIEKHoR3VSiNwGOG6Jpwelv0IcPLx
         Ukw5gc+zCqf1eMO7EH6tUmYs/oBHyWNeYrnuU/EEQDRi5GKl/SI6tMwt3kLvheOYToop
         Co/Vwui0qW/T77hvktBswDLiMUfStzwN9XnKSwsCEA22Ljk1adLiRc5eGAdExrmL0QD5
         1iiGbPxZpqJpitdudlSSLCZtQsEmrd1o+wY7QHeQ8NzOxzPeuJlf1fLHBzKx86sP+iJ0
         5XKistfBh/Gyjj8Uo/Q8X56TFdQZRYc6d7ucOmjzib1YLtqHmnus2Cssh77P3m/3hbJP
         +ieg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EqPXuqQK;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=bPfoO8gXo3JPAhg4NiTCS9miK1U9n/ICnPagqLnW6sw=;
        b=llX4OboNby/TzpVcvJSzeYdRcHFP32CjkTNzbSzGmOeWLAb8h/IaHPLr7NMziMBhzC
         yeug+/HDj3jzC6Smy8vy6S8qEypjfPgDnzeITKJLP/cqb2t9ln3bYvUHeHunGM+4G1AQ
         6WiyjmlYdTjOKS4zaUbFm18zSudSfwc5TX2vONHwOVLa1ZJqcf6mlES81BQY2I7rbK/s
         3SDR8pCMF7NbNmTlYXuoMJlXuF1mqTH73NCA3XKL2LZtC1G4gArNTD7hXUk4XTBVnigl
         F5putz2OZ5FhIjmkjYXdXzVsosK5q0cncx0VnojfY1UNdfZYVNjJIn7qxPHSmWjj7MIL
         fOwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bPfoO8gXo3JPAhg4NiTCS9miK1U9n/ICnPagqLnW6sw=;
        b=jIzWXlxMmn8cA/gHXHkzHRB7ohrKs+2S7qW3rTW5fUqIHpg65YnJ/yXkdyK8cYXtY9
         7g+xHfJzRiOlJJeOXzIfX/ze08MTWUtdExtzq3iwj+AMiYF1RlQvrhn/4S7TC1AHHart
         jyR76O+1vvckJGrnlSrUJ43/7320MNeeMP+WZkI20dsOQoivT2L7ufB9Y13sKwJEFNsq
         u8XqgoiovbotePJJ2d6ajeDm27/7Gdl8ft7zM2AmWYV6Ir3ZDH/G9KtcJDjK+xhBCbQa
         6R/TYAIU74YpFZlnmJOdos5JjeqcNDl9wnB6j9lwzoAzpAo36JAld/qH60Pv9AC0PWS1
         wHTg==
X-Gm-Message-State: APjAAAWXFY5CCLfNy0cpFzGLYg+HpYwXP1FIywP1sJLxWqH9wDXMqkR2
	HbjrhBoIPW2a3MmVGMWDpZw=
X-Google-Smtp-Source: APXvYqy5XVKYrnqSxWum0vHN+ikmrhdyQ047ads7ULzo86bizqP+rey8Qx6zam7WZC39FH6YVv05NQ==
X-Received: by 2002:a67:32c7:: with SMTP id y190mr28960949vsy.57.1582579713452;
        Mon, 24 Feb 2020 13:28:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c805:: with SMTP id u5ls1224229vsk.2.gmail; Mon, 24 Feb
 2020 13:28:33 -0800 (PST)
X-Received: by 2002:a67:f758:: with SMTP id w24mr28442289vso.5.1582579713090;
        Mon, 24 Feb 2020 13:28:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582579713; cv=none;
        d=google.com; s=arc-20160816;
        b=vY01WcHfGuXL1lb24rmdpccacn7wTy3uc2YtZj4YXXRLv7FFXD3FyWHmAZURavverr
         d8IplgoSbXCD0+mieulNvbuvHYN57908cnlrpkvnKr+P6cxuZ2aW5LC1MQ9LhJ49T5yq
         6vOD1Os+HWydg/F2vuj41Oj0lDL2VCn55CeKuE+D48wiAAOWdg0egKnE/94BiqkmDESM
         U1FAoBe7Em0dwjbk9FM4DppprbCVknUxN/RKDQTSaKQ2oMCfZR2PKMHAd2Z89v5akUDL
         JWRoO31jXUlbQ/NX5dq/fj8t0qejWh0ihMjm/4yIDrQrKJxCPxH9sr/4Ne/DypqwFKi7
         Lkxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8BGinAzlZOhZ+617u+1B0XdFYhcPHGy2MPB2MaSFIV8=;
        b=IR6aLuZibHVuAo73AWhQCvXS32D1bXleS8qw0qd2VIVP/3Zvk0KU7Dcd4S6pHsyJ5/
         QtSRisGGcoDOT4fXlOXZdYxMaWWafpq3eo2Lar6aBLUFQpp5aRYgyF8eKtPnsCNIahN7
         J3jDyKCBekl9H+wS2C5jJioKe9aA0B8SJkLLjvEz4udDK4MXCSecIrQ01f8y103srAWB
         MTyjn7CMBSZ7hQ2nHb3h/AfOVAZ8WV7PjAX2JLcZCGM+cuqF/p/GEnS/4UX84PkjJZY5
         BBOi4smwVre27CsVNDSJ3l2Aji3CUYsz9ptawWXO51tyBCbnRLxgs8UYrI4wXEc+eMTI
         CVYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EqPXuqQK;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id w4si774609vse.2.2020.02.24.13.28.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 13:28:33 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id j17so312639pjz.3
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 13:28:33 -0800 (PST)
X-Received: by 2002:a17:90b:289:: with SMTP id az9mr1183242pjb.23.1582579711848;
        Mon, 24 Feb 2020 13:28:31 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id x7sm14173473pfp.93.2020.02.24.13.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 13:28:31 -0800 (PST)
Date: Mon, 24 Feb 2020 13:28:28 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Michael Matz <matz@suse.de>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
Message-ID: <20200224212828.xvxl3mklpvlrdtiw@google.com>
References: <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
 <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074254.GB11284@zn.tnic>
 <20200222162225.GA3326744@rani.riverdale.lan>
 <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
 <alpine.LSU.2.21.2002241319150.12812@wotan.suse.de>
 <CAKwvOd=nCAyXtng1N-fvNYa=-NGD0yu+Rm6io9F1gs0FieatwA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOd=nCAyXtng1N-fvNYa=-NGD0yu+Rm6io9F1gs0FieatwA@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EqPXuqQK;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-02-24, Nick Desaulniers wrote:
>On Mon, Feb 24, 2020 at 5:28 AM Michael Matz <matz@suse.de> wrote:
>>
>> Hello,
>>
>> On Sat, 22 Feb 2020, Nick Desaulniers wrote:
>>
>> > > > > In GNU ld, it seems that .shstrtab .symtab and .strtab are special
>> > > > > cased. Neither the input section description *(.shstrtab) nor *(*)
>> > > > > discards .shstrtab . I feel that this is a weird case (probably even a bug)
>> > > > > that lld should not implement.
>> > > >
>> > > > Ok, forget what the tools do for a second: why is .shstrtab special and
>> > > > why would one want to keep it?
>> > > >
>> > > > Because one still wants to know what the section names of an object are
>> > > > or other tools need it or why?
>> > > >
>> > > > Thx.
>> > > >
>> > > > --
>> > > > Regards/Gruss,
>> > > >     Boris.
>> > > >
>> > > > https://people.kernel.org/tglx/notes-about-netiquette
>> > >
>> > > .shstrtab is required by the ELF specification. The e_shstrndx field in
>> > > the ELF header is the index of .shstrtab, and each section in the
>> > > section table is required to have an sh_name that points into the
>> > > .shstrtab.
>> >
>> > Yeah, I can see it both ways.  That `*` doesn't glob all remaining
>> > sections is surprising to me, but bfd seems to be "extra helpful" in
>> > not discarding sections that are required via ELF spec.
>>
>> In a way the /DISCARD/ assignment should be thought of as applying to
>> _input_ sections (as all such section references on the RHS), not
>> necessarily to output sections.  What this then means for sections that
>> are synthesized by the link editor is less clear.  Some of them are
>> generated regardless (as you noted, e.g. the symbol table and associated
>> string sections, including section name string table), some of them are
>> suppressed, and either lead to an followup error (e.g. with .gnu.hash), or
>> to invalid output (e.g. missing .dynsym for executables simply lead to
>> segfaults when running them).

Hi Michael, please see my other reply on this thread: https://lkml.org/lkml/2020/2/24/47

Synthesized sections can be matched as well. For example, SECTIONS { .pltfoo : { *(.plt) }} can rename the output section .plt to .pltfoo
It seems that in GNU ld, the synthesized section is associated with the
original object file, so it can be written as:

   SECTIONS { .pltfoo : { a.o(.plt) }}

In lld, you need a wildcard to match the synthesized section *(.plt)

.rela.dyn is another example.

>> That's the reason for the perceived inconsistency with behaviour on '*':
>> it's application to synthesized sections.  Arguably bfd should be fixed to
>> also not discard the other essential sections (or alternatively to give an
>> error when an essential section is discarded).  The lld behaviour of e.g.
>> discarding .shstrtab (or other synthesized sections necessary for valid
>> ELF output) doesn't make much sense either, though.

I think most input section descriptions *(*) are misuse. They really
should be INPUT_SECTION_FLAGS(SHF_ALLOC) *(*)

>Hi Michael, thank you for the precise feedback.  Do you have a list of
>"synthesized sections necessary for valid ELF output?" Also, could you
>point me to the documentation about `*` and its relation to
>"synthesized sections necessary for valid ELF output?"  This will help
>me file a precise bug against LLD.

https://sourceware.org/binutils/docs/ld/Output-Section-Discarding.html#Output-Section-Discarding

has a few words on this topic. A large part is implementation defined.
In GNU ld, the implementation is mostly in ld/ldlang.c and ld/ldexp.c
(very long).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224212828.xvxl3mklpvlrdtiw%40google.com.
