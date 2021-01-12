Return-Path: <clang-built-linux+bncBCS7XUWOUULBBXPA6P7QKGQESQIJWUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0277B2F244C
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 01:42:06 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id l191sf420797ooc.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 16:42:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610412125; cv=pass;
        d=google.com; s=arc-20160816;
        b=JU0vW1ebaQpvNJtnD6Gg5Q2ccA0rKmK7fD5pXaRSpeXu/Zch/fLEUpcOkRJEqlPXj4
         7X1PkRTTBIi0JI/Ykyy+r6b3+oI9K7Kd+KIR+vnWuqh+uwQMQKbuoke+pCYsphXN4mo5
         6ctKo4fDQ4TfgTgt1QQtJsi/lBjWXpdYsyNOikZlh+UqPPV1Yxb9cwEYwKjGOC+1Fkmj
         C7GiyGV0vbwvvvBfkplyoaIinIhUn0GxXQcBVMzGcbiAa8a1XLeAvbjTFpGc/1zz3KRG
         kW6/005gQNmISsqZ2d3u16TFlvu1LYNC44ERar/tSyxUd+UWl2oUy6a7htuvWfNFPzn3
         nX9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nckl3pnHsE+RwQ8bAOSR2yOnohxpTc0mZVyPoc7ctqg=;
        b=u6+RhVKlkKC2CmTs6wioTgtIyffguiwqnJgCapu4mdTpoiFulE3sClIZDBq4LXhhkx
         9r6vrTAL6PMpWvmVG5c1pe3rS0+aODGDf0Q0/y/h6/qlj+qhqDhbKgjhRx9OvpPYZ8Ul
         nxJ6swuaysUBHoP0lKrPeGtcrTj2/aH0eNiJ2atE2YCzi4vOXQsDtw7l1mw+yqsZfg3R
         Av6ku70SC8yfQZsIlbp9/S4NzVnh3JaKtSkHb+C1zkyrncxM5gCIF4lAO0jI4YY3P1rd
         k8Unrm0q/MWKKLRW4aFFzvYB3RQ3UHWSkY0iWurq3Y5DY1fKY+1JdEctUXSy+intzbvo
         FnNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fo+rEysu;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nckl3pnHsE+RwQ8bAOSR2yOnohxpTc0mZVyPoc7ctqg=;
        b=Ng4/AZT9dHqR8urT4JklvvHrmGUqWl9nJ2sEOWfFnn21T5e5vZv/qlcIIUTAPKukUn
         j1IT1khq29DvEkQBiEyDlMz8CSUEiSWOVXQEak7S9EFxWmQdAHVKkmGo92OjIIediGNX
         0CU6sBcikSUTeuaKivZB5VMGo57hy9D45brmZSsZi/gxVIHLgKoFmmUUTOkVGjn67jSu
         C4dlLnD8IkVSmzmvH1EAlyqEKfTwMa4rVbI6epFydELJ5TwcFFFqqiBtqDRbkLuae/dP
         1xid+zKw6SQ5urhZKj52oqJMj8Ek5SeFc1VDEavdX54ZK3+wD/FbMyj6LSYIYWWbdvOf
         MiXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nckl3pnHsE+RwQ8bAOSR2yOnohxpTc0mZVyPoc7ctqg=;
        b=MBxDmPJ3aV2HIXDEfIOgbQXTj6N62M4PzLCSB0DT5BsCWyWbjuLBf51/uhOO/sqbI2
         WYMuktdaZRd/xYYNfh0bu0lxOdz8FRgBV1hdAhihQMRnRwrXVOiymA7Lq9DnVJ3R9neC
         flJ1VJM4/C9QS1m9x53xcPOdq9mNzLZieakc5HytuX6XZXbLDdHTDQpt19qlThGFkCP0
         JEnYeaOaZCpE21FhSZOKPz7SQNAguXgnmAu9Jmxsn5Z0FnMDE4AjKl6+Xy+/UoWDpLrx
         VwGKi6vwZ6k/M3wyyJCDWW1HlbC/C4h2nf/4EkOAXC41XlKIK9vMUSLwt1Ho9IjqB9Px
         FIXA==
X-Gm-Message-State: AOAM5315qrSSFnGgGDtNmQnpYL0VqYq3xix6QZsLRAkKeEmyI6QzfapU
	USBcR95BZF5v0/wvDy045Go=
X-Google-Smtp-Source: ABdhPJxnUPfmcyDcRMFdV8dPcmg4HnW25hujuxKbsZVf6BOeTyibZSn5Lw2dnoSoUTdcGfT+5i8z4w==
X-Received: by 2002:aca:5711:: with SMTP id l17mr862170oib.53.1610412125279;
        Mon, 11 Jan 2021 16:42:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:9868:: with SMTP id z37ls61281ooi.6.gmail; Mon, 11 Jan
 2021 16:42:04 -0800 (PST)
X-Received: by 2002:a4a:8c73:: with SMTP id v48mr1200915ooj.53.1610412124923;
        Mon, 11 Jan 2021 16:42:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610412124; cv=none;
        d=google.com; s=arc-20160816;
        b=f4zQhBUkkY+iczKgeAWbvjnRsCi80y9ZDaKCeuRT95Dtm7hrP4v9x/c7C01v10irim
         fHfhMr5nz00hKpsPDu5iwmbLm2QnVaoaYwLdpQqfcWAHPbuMEbEuS4WvpCegf7jKALzW
         UPewtk9Nnyk0TMDsLse3RUo6R/kWDumTxVuQ/+ujjAxb6AKy+FNC+a76O51oaL1bpvEt
         RLyW7iVndhegLcEYBS2sMjNYQSidh9BMu8SzmeJ/i4k4Tbylb8Ac0Oo/3OTudO12AT4s
         dnv3Da29k/df6wAWrtgx9PtzZ7Pt1bsCsfVo0rfWsp8W9oDk2885+EbPkWAzJ9p2wfat
         7WXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fORzdtbKexeYqZL9m64WT6sjX1DlAcK6JwMJGQMmjlk=;
        b=Cpnl7M3Q3+0XoLkfXDnIVo4N/8+jrIt/ROJDLmEtKZZObsEs8vett/Pp5RbXYM4M56
         i47fgoTpFWF2tJE1uiDWwAzlNjtSK83mYemsH1SGtcVRklJw48brGuf9LnZNWqdwHEIP
         pm2Aogj/6uhuh0MurwaNbQaGvfoehpoxz52/Ss5VvPIMOxe1fk9tLgCO/nCt3PlPTMka
         8kAiPmP0vITccX4v1JiSp/AJmJIWXuecSyyV/emLo/jcbE9iQypDsPRWBhmnFhXS3CYf
         3ViCmnXx8dJeCDPQKur7ESV6L32MKXVTxnl5C/75P6cl0nK8zoN3udnaYjLpz9nQV0U/
         DKpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fo+rEysu;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id u2si139099otg.1.2021.01.11.16.42.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 16:42:04 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id v3so420907plz.13
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 16:42:04 -0800 (PST)
X-Received: by 2002:a17:90a:6c25:: with SMTP id x34mr1543495pjj.47.1610412124034;
 Mon, 11 Jan 2021 16:42:04 -0800 (PST)
MIME-Version: 1.0
References: <20210106015810.5p6crnh7jqtmjtv4@treble> <20210111203807.3547278-1-ndesaulniers@google.com>
 <20210112003839.GL25645@zn.tnic>
In-Reply-To: <20210112003839.GL25645@zn.tnic>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Mon, 11 Jan 2021 16:41:52 -0800
Message-ID: <CAFP8O3+uEE4Lity-asyFLN6_+8qRUD3hgcZVapXwk6EfmGM+DA@mail.gmail.com>
Subject: Re: [PATCH v3] x86/entry: emit a symbol for register restoring thunk
To: Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Andy Lutomirski <luto@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, X86 ML <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fo+rEysu;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::636
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Mon, Jan 11, 2021 at 4:38 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Mon, Jan 11, 2021 at 12:38:06PM -0800, Nick Desaulniers wrote:
> > Arnd found a randconfig that produces the warning:
> >
> > arch/x86/entry/thunk_64.o: warning: objtool: missing symbol for insn at
> > offset 0x3e
> >
> > when building with LLVM_IAS=1 (use Clang's integrated assembler). Josh
> > notes:
> >
> >   With the LLVM assembler stripping the .text section symbol, objtool
> >   has no way to reference this code when it generates ORC unwinder
> >   entries, because this code is outside of any ELF function.
> >
> > Fangrui notes that this optimization is helpful for reducing images size
> > when compiling with -ffunction-sections and -fdata-sections. I have
> > observerd on the order of tens of thousands of symbols for the kernel
> > images built with those flags. A patch has been authored against GNU
> > binutils to match this behavior, with a new flag
> > --generate-unused-section-symbols=[yes|no].
> >
> > We can omit the .L prefix on a label to emit an entry into the symbol
> > table for the label, with STB_LOCAL binding.  This enables objtool to
> > generate proper unwind info here with LLVM_IAS=1.
> >
> > Cc: Fangrui Song <maskray@google.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1209
> > Link: https://reviews.llvm.org/D93783
> > Link: https://sourceware.org/binutils/docs/as/Symbol-Names.html
> > Link: https://sourceware.org/pipermail/binutils/2020-December/114671.html
> > Reported-by: Arnd Bergmann <arnd@arndb.de>
> > Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Changes v2 -> v3:
> > * rework to use STB_LOCAL rather than STB_GLOBAL by dropping .L prefix,
> >   as per Josh.
>
> Ok so I read a bit around those links above...
>
> Are you trying to tell me here that we can't use .L-prefixed local
> labels anymore because, well, clang's assembler is way too overzealous
> when stripping symbols to save whopping KiBs of memory?!

To be fair: we cannot use .L-prefixed local because of the objtool limitation.
The LLVM integrated assembler behavior is a good one and binutils
global maintainers have agreed so H.J. went ahead and implemented it
for GNU as x86.

> Btw Josh made sense to me when asking for a flag or so to keep .text.
>
> And I see --generate-unused-section-symbols=[yes|no] for binutils.
>
> So why isn't there a patch using that switch on clang too instead of the
> kernel having to dance yet again for some tool?

--generate-unused-section-symbols=[yes|no] as an assembler option has
been rejected.


> :-\
>
> --
> Regards/Gruss,
>     Boris.
>
> https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3%2BuEE4Lity-asyFLN6_%2B8qRUD3hgcZVapXwk6EfmGM%2BDA%40mail.gmail.com.
