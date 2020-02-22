Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTPUY3ZAKGQEBIDKXOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id EC92416924E
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Feb 2020 00:33:34 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id 71sf3548392pgg.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 15:33:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582414413; cv=pass;
        d=google.com; s=arc-20160816;
        b=DM91hjlEF3hJ1FI9P/DZ+GNLucYEf2hhrk3FLSG7qN3GxdhcMvX5IFkF1tU1ei+Ltl
         9xtpwVfv3pMjIEupXTfuzAmuT/cxLnZu6zK+YCFoXoUAqFp4ap8uD20P0nuBw/sQnQFN
         qJ+AuWQBc4rICKLQOYUyW2i5pVKkSC9FRiLlBrtuJI8AT20D8horKnzchT7C78BqIZny
         B4dAeRvbso8+dS922WZmo+0Dim+JZtNqhL5UN+pDu6zNzozSsPrmVrou/cDuhNaUTDEz
         Pq9DulnikLfCVD39s8+qfhE+ssCiC1ziafYDRX/16sZ8ADurcunBJJqbqSw37yVmlz/T
         KcQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=E477C9jh1OFt8RFTBlCj4WTMna5a9DvZJDCKp5Srqxs=;
        b=hdBnrLY5aDmiU8KUAEESNFMCEWBiWPkOngIp1fzCEakabQ+6TaYB5L+s1lwknv3PrF
         KmMNciQ1U1vjqqRkPhgZSmwGHHsIDuJm+e6ECSKP7i9+dCI5R+Uu5pHkfnse2k8noCik
         +WMhyaWVN34W+7zyqAy2qWTT+WD/OL+xsMo/gkS0CcyM0GQlmWN/tczkS4yD2qNKOgdN
         dzc1yf1215JdpcX3r/rdMUbxbDl99GijHVAYPdo8vuSn+cBkWk1m2ant6C4UzIaj96sR
         Rw+7oACa3z+aEwEC+A/hY8SOzdAF1P3fizstrvU5b+PF5DyJF8oLDtk57C9oKlMdxipU
         AKWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JFIBQ86P;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E477C9jh1OFt8RFTBlCj4WTMna5a9DvZJDCKp5Srqxs=;
        b=hwg0sAz3Rg/TslromoVb4scKkm5RNXWCcTCcxx0BzN/M9+59M/DipGlN56grYC3w3o
         tqwVgQjZ4MvikNjHvpDjh/5IJyUx0+jBoW+UaiGlqmZND4NNM0RmuzSevdTpAobuznT2
         glt30xTVcmWrawdcVOG65B3pvNORkMz8QW5F9Ov+FcXpG5dxHG3rq9DENL0N7bFBHxbi
         WeTYQpXb1UWQ9kn7+pb8WPr6h5aQgv8mg7uZY/AN6/EbTTHQCcDV4Pt6RRQ5AGkKHDF3
         WWpvcqs0fUCcT6JL/5et7uqV+gpLzm4hcfESJTGJq+ctj+FXitV+gPNqcxxFRNiRZD+x
         rP7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E477C9jh1OFt8RFTBlCj4WTMna5a9DvZJDCKp5Srqxs=;
        b=nus/lLq5nL95ihLUabQgX9gx1Fk8TnHl6bKJnmUttFugH6FUMHDDLr0Fu0p49+tmDA
         dVchR4yOCMNIXuioy0uYV6092FTm0Ee0iv5bJjQSzjfS40n7RMFwNEysBh2R8RkqINHZ
         yPQy5B3d0jQ8YyqtE8IZMUP1poY9nUhotHeOhhX2/D0haG3YkCRmdkczi5TWNRsgB4dm
         Wp/MCbAKAYN6NAlurTyro8d/Rs8Y5mpu027Ie4TRbTIgfS2L0gCwFdHg1T+3l4YF3sJ4
         K/Xu4aiNvf3ECCJH7rY7Aw6XH8XSFbpPq21a6eIYcMnwxIcBgZ3jRDfanxI50oJASPm0
         SnIw==
X-Gm-Message-State: APjAAAWp2a8t3M1I8gxaTMkm1EECKBIKOXyiVeAOfmclSDDvcBG44h9O
	i9AI3Z9N7dp5gqbHGlK+wZw=
X-Google-Smtp-Source: APXvYqwhnL3YZRyP48g0Fs8qIVTNm2oC1FMFhF4rs+EyRhd4y1b8sv1pZZR7iObIcLCUA7yh3XtE+A==
X-Received: by 2002:a63:18d:: with SMTP id 135mr19921672pgb.32.1582414413455;
        Sat, 22 Feb 2020 15:33:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:b26:: with SMTP id 35ls2078426pjq.1.gmail; Sat, 22
 Feb 2020 15:33:33 -0800 (PST)
X-Received: by 2002:a17:90a:f0c8:: with SMTP id fa8mr11563910pjb.136.1582414413069;
        Sat, 22 Feb 2020 15:33:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582414413; cv=none;
        d=google.com; s=arc-20160816;
        b=wPI0vGQuXBUWL8JA2lUojASqPvU18XUqotFmU9D2jQRX/hUFroW9MCzIk+ugAbA0ke
         4i0owNJEGwEoTFSvVg7KDUUKCwrka0/GsjaHGs7Vs0jPO4H8hKlmkTPs83CrI/zw9mrd
         JM66Y8o0j/TOEXBP3xDg/2F+SUwjAlxey/Vg99Heu1TOhGKBjiP9O9NaSAdYfnHvSPvG
         TWPf68JLxtmX3+6EPm/RyhCPEJ9wcdhKmtszx7jyVY4JHkiMU8ZGsy7YNf9Q3XVRr3u6
         OsORCIopdXStBz9hONCirHoFI4idvGspTFkaUvC/DHdPbyQb4uuZ026+9/hQsDDOdb/U
         6jWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uHfmwLnIUqXAiwLNkRBchsGXQLdmwgnefDEPy9uPxHc=;
        b=uoF9jRHmEZFdJxnJ5QlD6wFN8Wk0WwMk/9ownoAyx5tCEzhKvop0pKLmSgkO5OdDoW
         YpYy8D2uxAtyt51nzrpxGQCUJIyAGtujoxXJ1+06J2Nq3/ewa5ces6NfwmTiybn02nNp
         u4Niw+zGIBmrqOVoIMAgHV9H1dXlPaQPhZ2J3T2Vnt5HLFkddA0FcS5z7NuxfDOTozb1
         Hp8H7aBHW5lGdiFtDg76Oz0g16SnogfsjUlACYDVb33ozI4XBdLrGG7S2iZBpnl3lHI2
         i7gEJlgf2XpK2rlTTqdl2Z/gxpLZsFSUmsABuQBMhANrlSrkP50RTNnaguqi+y4yISVr
         5RYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JFIBQ86P;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id 12si316498pgx.4.2020.02.22.15.33.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Feb 2020 15:33:33 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id d9so2436159plo.11
        for <clang-built-linux@googlegroups.com>; Sat, 22 Feb 2020 15:33:33 -0800 (PST)
X-Received: by 2002:a17:902:760e:: with SMTP id k14mr41180763pll.119.1582414412419;
 Sat, 22 Feb 2020 15:33:32 -0800 (PST)
MIME-Version: 1.0
References: <20200222164419.GB3326744@rani.riverdale.lan> <20200222171859.3594058-1-nivedita@alum.mit.edu>
 <20200222181413.GA22627@ubuntu-m2-xlarge-x86> <20200222185806.ywnqhfqmy67akfsa@google.com>
 <20200222201715.GA3674682@rani.riverdale.lan> <20200222210101.diqw4zt6lz42ekgx@google.com>
In-Reply-To: <20200222210101.diqw4zt6lz42ekgx@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 22 Feb 2020 15:33:20 -0800
Message-ID: <CAKwvOdn2pmRqJ+Rs+dhAPJy3hOb4VNn70XB40jcVgTeM8XmeFQ@mail.gmail.com>
Subject: Re: [PATCH] x86/boot/compressed: Fix compressed kernel linking with lld
To: Arvind Sankar <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michael Matz <matz@suse.de>, 
	Fangrui Song <maskray@google.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JFIBQ86P;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Sat, Feb 22, 2020 at 1:01 PM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On 2020-02-22, Arvind Sankar wrote:
> >On Sat, Feb 22, 2020 at 10:58:06AM -0800, Fangrui Song wrote:
> >> On 2020-02-22, Nathan Chancellor wrote:
> >> >On Sat, Feb 22, 2020 at 12:18:59PM -0500, Arvind Sankar wrote:
> >> >> Commit TBD ("x86/boot/compressed: Remove unnecessary sections from
> >> >> bzImage") discarded unnecessary sections with *(*). While this works
> >> >> fine with the bfd linker, lld tries to also discard essential sections
> >> >> like .shstrtab, .symtab and .strtab, which results in the link failing
> >> >> since .shstrtab is required by the ELF specification. .symtab and
> >> >> .strtab are also necessary to generate the zoffset.h file for the
> >> >> bzImage header.
> >> >>
> >> >> Since the only sizeable section that can be discarded is .eh_frame,
> >> >> restrict the discard to only .eh_frame to be safe.
> >> >>
> >> >> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> >> >> ---
> >> >> Sending as a fix on top of tip/x86/boot.
> >> >>
> >> >>  arch/x86/boot/compressed/vmlinux.lds.S | 4 ++--
> >> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >> >>
> >> >> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> >> >> index 12a20603d92e..469dcf800a2c 100644
> >> >> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> >> >> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> >> >> @@ -74,8 +74,8 @@ SECTIONS
> >> >>   . = ALIGN(PAGE_SIZE);   /* keep ZO size page aligned */
> >> >>   _end = .;
> >> >>
> >> >> - /* Discard all remaining sections */
> >> >> + /* Discard .eh_frame to save some space */
> >> >>   /DISCARD/ : {
> >> >> -         *(*)
> >> >> +         *(.eh_frame)
> >> >>   }
> >> >>  }
> >> >> --
> >> >> 2.24.1
> >> >>
> >> >
> >> >FWIW:
> >> >
> >> >Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> >>
> >> I am puzzled. Doesn't -fno-asynchronous-unwind-tables suppress
> >> .eh_frame in the object files? Why are there still .eh_frame?
> >>
> >> Though, there is prior art: arch/s390/boot/compressed/vmlinux.lds.S also discards .eh_frame
> >
> >The compressed kernel doesn't use the regular flags and it seems it
> >doesn't have that option. Maybe we should add it in to avoid generating
> >those in the first place.

Ah, yikes.  For reference, please see my commit:

commit b059f801a937 ("x86/purgatory: Use CFLAGS_REMOVE rather than
reset KBUILD_CFLAGS")

I'm of the conviction that reassigning KBUILD_CFLAGS via `:=`, as
opposed to strictly filtering flags out of it or appending to it, is
an antipattern.  We very very carefully construct KBUILD_CFLAGS in top
level and arch/ Makefiles, and it's very easy to miss a flag or to
when you "reset" KBUILD_CFLAGS.

*Boom* Case in point.

I meant to audit the rest of the places we do this in the kernel, but
haven't had the time to revisit arch/x86/boot/compressed/Makefile.

For now, I suggest:
1. revert `Commit TBD ("x86/boot/compressed: Remove unnecessary
sections from bzImage")` as it runs afoul differences in `*` for
`DISCARD` sections between linkers, as the intent was to remove
.eh_frame, of which it's less work to not generate them in the first
place via compiler flag, rather than generate then discard via linker.
2. simply add `KBUILD_CFLAGS += -fno-asynchronous-unwind-tables` to
arch/x86/boot/compressed/Makefile with Fangrui's Sugguested-by tag.
3. Remind me to revisit my proposed cleanup of
arch/x86/boot/compressed/Makefile (which eventually will undo #2). ;)
4. tglx to remind me that my compiler is broken and that I should fix it. :P

> >
> >The .eh_frame discard in arch/x86/kernel/vmlinux.lds.S does seem
> >superfluous though.
>
> Yes, please do that. I recommend suppressting unneeded sections at
> compile time, instead of discarding them at link time.
>
> https://github.com/torvalds/linux/commit/83a092cf95f28696ddc36c8add0cf03ac034897f
> added -Wl,--orphan-handling=warn to arch/powerpc/Makefile .
> x86 can follow if that is appropriate.

Kees has patches for that; I recommend waiting on his series.

> I don't recommend -Wl,--orphan-handling=error, which can unnecessarily
> break the builds.

Agreed. Until we have CI testing with LLD which is a WIP (action item on me).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn2pmRqJ%2BRs%2BdhAPJy3hOb4VNn70XB40jcVgTeM8XmeFQ%40mail.gmail.com.
