Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHMSST4QKGQE4NZILXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id E11972350C4
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 08:18:06 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id r9sf9522666oie.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 23:18:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596262685; cv=pass;
        d=google.com; s=arc-20160816;
        b=kSF7l76CeJHNH/Z2KdyP+UZI2XcjGUkzcIldRQ4xkDBl8PuLBrZf39tnicD4HjwwyE
         O1xl0fqzwaSoweNQMNkaom9CWRtiLS7GNPHBz+UM6gneYdqJOdtCRazypRfkgKIjZoQs
         PCH7SONJS+pOGqSBagZC5iSfZjC7/3M+p4quYih4AQ/9XHsdHF16pH1Xuo6k0Vrl3R+W
         XMAj+7qruvYUpcUdZszWKHMwFQJ9yFC5PP21AmPI2E/Xilbd7yr9o9yTO9tOMQFrPZCm
         1L9sb8XteKgFtsWgxoavB4qTZ0nkg0cdrwyurChhtiWguozEaT6vTKfCEhN9MYD8vUAb
         Z+Rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=+u2yUkLJ9ZTovh25704dLY+zH3yyEqb36H287XUHswo=;
        b=BXORWVSgQl6/OburVUIfZ3UqManP8zuYHfhH1Dc+QOn7KYvE3A6EpQaqXgObkIQ3vZ
         N45hcjy+dLAgxUE4MdfkOH6b2TOn9dU+IY05v4unYZ7/fTuf5quDQXYRh6Icjsgr+xiM
         h4pY2Hpe0O02kbv5aDvKfr7JUm9GKL2m6f8TdBk21BllTMO1QVUxjolQ7o/pKlgafY7m
         zo/3emzTIWQ+2noDqvYZiO2805pJthsxJ5m5yBsg5eF8J5oDVNdbwqT6DwRDXS/exL+5
         ekLUOd05S8aSs98vW/4Z/J8rJ1MFH/8tcHutj978gHubTynckqrRncTFzdSV3y0QDW7l
         fEnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KxKgPZ44;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+u2yUkLJ9ZTovh25704dLY+zH3yyEqb36H287XUHswo=;
        b=YzVtnmyyNPLSqviMiVdScQsV0cs4H+XgjwKt+Q3xxtOV8w4kDX/1dPjn0NHs3HU0XL
         8RCNkTMU3GZUeZkuW1J9QBcgaPUKZBumZqexV3BsTI0iY9/sxt0UlXRdfrKPcWG6QRHO
         kL3rHrjFBYqNuxoCCgTQ6AKZgxXBvs7UxOEiOa/c55ifILIcRpOS/un0xQRmP/uG9mQw
         J0SAgJ+Mpv6DvQzi5W4OToAGpeQgvYpcpMuke45e9Y+yVE7Y0M3Khj+aaRnR/n7H7aPv
         T9jwItrDTQp4UuOg18wDAIhDBhcIt8GHkfJIOg+wv5eQKpB3CWCuPTZcefLv37EAnLXs
         5Qmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+u2yUkLJ9ZTovh25704dLY+zH3yyEqb36H287XUHswo=;
        b=VlMo0rbcIN13Tdlxf35CvckVTS3HhG76lu4ZHhTOQr/KuufV3INWA8IPfdgSLbCM13
         FqgLulWbEOSY1TIdcnLSTD84g/Jv9B/8ZdgMmt05709bLcMR2/L8ky47KLh6s2oj00sd
         N9VE4wfBbGf+AO9YmOSIty0d2Iy7CqApPkv/sslK+ARGESgPnAuaabMGMZoQrpJZTUhB
         KB5E3VJ2wDy3B+bLoI4CTSLYaAB7EN3IC13iff1YJrc2oR7+rVGvBZf7+WBdPsdkpF8J
         bRRt1dbK5fdLBc+e5YBbWgoQTD/rsVPg/Ic+aTE4+/RiawCreBXkStKEjbT6J8VLF1pp
         WHjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Hkqc1onOulx9WbB5zFL8BxIeFmqghSsgFBGNAgK/H/MmTst5f
	eGOJ0R6rnE+SSiM4gUjyjLM=
X-Google-Smtp-Source: ABdhPJxlhiG5vE6wk5MO0aLhOJW2Ve0TsEbjChn7gmWl5ZDjz/f0xjxZW5D2EP0ZNjzzYT7G0saFpQ==
X-Received: by 2002:a9d:7c3:: with SMTP id 61mr6128070oto.110.1596262685596;
        Fri, 31 Jul 2020 23:18:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66d7:: with SMTP id t23ls562342otm.1.gmail; Fri, 31 Jul
 2020 23:18:05 -0700 (PDT)
X-Received: by 2002:a05:6830:19c2:: with SMTP id p2mr5809651otp.328.1596262685183;
        Fri, 31 Jul 2020 23:18:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596262685; cv=none;
        d=google.com; s=arc-20160816;
        b=qlQvKr3TQR4amxhf4mCXr79a+V2VioZm1WO9nC4qQPjzY6kxGl2JbNcWe3OheRurFt
         GgK75LVsndUZc2NYY6gJfnub2lZdlPk8lbqMrQwJooM+tF90yGa2Oeq3iAepX+OweYVJ
         tAmi1CXrhGr6IhaWMciDa54eZ/Y6wD5mQ07cRqkRthNuMGqJXF1DclxDG70Ib7IiIUyh
         lfSJUzxie298vJNLgJRaveGL4Dulvbybt5uBsqnX1ZZD52eVgjjk+sVErPCU634r46Az
         HPoD/CoRWXeX9SymDsFzZ6KvL2AboOyRAkfcl5acB0bdDw5E3vOKOlebDsWCqrm3g52l
         PvHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=0Z19kOEJIEx9Zh1BTPeu+eub/GMK1VCMfldmZLSebVY=;
        b=x1ixO9UfqY93Jld0MmzPvruymbu3L0OIE6DzjqTBjBQ8M11AZ1yU7tV/2+tH4Cspvc
         m//NW5triJAoUdBUCrrCh9uOv+THKgKexPHu02bxhW3kzMc17meqPROVslAAs64cktOU
         FSbdPdfg2dTvdMv8J2Nhq+/sXZ2QQqIs84nL99BTDXJ5mTQxDFXHvckRzTNsCnwe4ZrR
         X3+GkV47Fu7DUFyWbJrYwmEqCoFG89znJh4hGtEDdtea8raNkmhkUISKCGl5pRnZI6zL
         DJ26MwiXuFa0ze6lgYxBRbhjkEd9pdHL5n36DFkrObGZfaZixvEWo87XPuCuZporHgoV
         lr2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KxKgPZ44;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id i19si670661oie.3.2020.07.31.23.18.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 23:18:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id x6so1940041pgx.12
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 23:18:05 -0700 (PDT)
X-Received: by 2002:aa7:94bd:: with SMTP id a29mr6882406pfl.280.1596262684343;
        Fri, 31 Jul 2020 23:18:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 7sm12129236pgw.85.2020.07.31.23.18.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 23:18:03 -0700 (PDT)
Date: Fri, 31 Jul 2020 23:18:02 -0700
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>, stable@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Andi Kleen <ak@linux.intel.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Kristen Carlson Accardi <kristen@linux.intel.com>
Subject: Re: [PATCH v5 13/36] vmlinux.lds.h: add PGO and AutoFDO input
 sections
Message-ID: <202007312237.4F385EB3@keescook>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-14-keescook@chromium.org>
 <20200801035128.GB2800311@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200801035128.GB2800311@rani.riverdale.lan>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=KxKgPZ44;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Jul 31, 2020 at 11:51:28PM -0400, Arvind Sankar wrote:
> On Fri, Jul 31, 2020 at 04:07:57PM -0700, Kees Cook wrote:
> > From: Nick Desaulniers <ndesaulniers@google.com>
> >=20
> > Basically, consider .text.{hot|unlikely|unknown}.* part of .text, too.
> >=20
> > When compiling with profiling information (collected via PGO
> > instrumentations or AutoFDO sampling), Clang will separate code into
> > .text.hot, .text.unlikely, or .text.unknown sections based on profiling
> > information. After D79600 (clang-11), these sections will have a
> > trailing `.` suffix, ie.  .text.hot., .text.unlikely., .text.unknown..
> >=20
> > When using -ffunction-sections together with profiling infomation,
> > either explicitly (FGKASLR) or implicitly (LTO), code may be placed in
> > sections following the convention:
> > .text.hot.<foo>, .text.unlikely.<bar>, .text.unknown.<baz>
> > where <foo>, <bar>, and <baz> are functions.  (This produces one sectio=
n
> > per function; we generally try to merge these all back via linker scrip=
t
> > so that we don't have 50k sections).
> >=20
> > For the above cases, we need to teach our linker scripts that such
> > sections might exist and that we'd explicitly like them grouped
> > together, otherwise we can wind up with code outside of the
> > _stext/_etext boundaries that might not be mapped properly for some
> > architectures, resulting in boot failures.
> >=20
> > If the linker script is not told about possible input sections, then
> > where the section is placed as output is a heuristic-laiden mess that's
> > non-portable between linkers (ie. BFD and LLD), and has resulted in man=
y
> > hard to debug bugs.  Kees Cook is working on cleaning this up by adding
> > --orphan-handling=3Dwarn linker flag used in ARCH=3Dpowerpc to addition=
al
> > architectures. In the case of linker scripts, borrowing from the Zen of
> > Python: explicit is better than implicit.
> >=20
> > Also, ld.bfd's internal linker script considers .text.hot AND
> > .text.hot.* to be part of .text, as well as .text.unlikely and
> > .text.unlikely.*. I didn't see support for .text.unknown.*, and didn't
> > see Clang producing such code in our kernel builds, but I see code in
> > LLVM that can produce such section names if profiling information is
> > missing. That may point to a larger issue with generating or collecting
> > profiles, but I would much rather be safe and explicit than have to
> > debug yet another issue related to orphan section placement.
> >=20
> > Reported-by: Jian Cai <jiancai@google.com>
> > Suggested-by: F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google.com>
> > Tested-by: Luis Lozano <llozano@google.com>
> > Tested-by: Manoj Gupta <manojgupta@google.com>
> > Acked-by: Kees Cook <keescook@chromium.org>
> > Cc: stable@vger.kernel.org
> > Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=
=3Dadd44f8d5c5c05e08b11e033127a744d61c26aee
> > Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=
=3D1de778ed23ce7492c523d5850c6c6dbb34152655
> > Link: https://reviews.llvm.org/D79600
> > Link: https://bugs.chromium.org/p/chromium/issues/detail?id=3D1084760
> > Debugged-by: Luis Lozano <llozano@google.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  include/asm-generic/vmlinux.lds.h | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vm=
linux.lds.h
> > index 2593957f6e8b..af5211ca857c 100644
> > --- a/include/asm-generic/vmlinux.lds.h
> > +++ b/include/asm-generic/vmlinux.lds.h
> > @@ -561,7 +561,10 @@
> >   */
> >  #define TEXT_TEXT							\
> >  		ALIGN_FUNCTION();					\
> > -		*(.text.hot TEXT_MAIN .text.fixup .text.unlikely)	\
> > +		*(.text.hot .text.hot.*)				\
> > +		*(TEXT_MAIN .text.fixup)				\
> > +		*(.text.unlikely .text.unlikely.*)			\
> > +		*(.text.unknown .text.unknown.*)			\
> >  		NOINSTR_TEXT						\
> >  		*(.text..refcount)					\
> >  		*(.ref.text)						\
> > --=20
> > 2.25.1
> >=20
>=20
> This also changes the ordering to place all hot resp unlikely sections se=
parate
> from other text, while currently it places the hot/unlikely bits of each =
file
> together with the rest of the code in that file. That seems like a reason=
able

Oh, hmm, yes, we aren't explicitly using SORT() here. Does that mean the
input sections were entirely be ordered in compilation unit link order,
even in the case of orphan sections? (And I think either way, the answer
isn't the same between bfd and lld.) I actually thought the like-named
input sections were collected together first with lld, but bfd strictly
appended to the output section. I guess it's time for me to stare at -M
output from ld...

Regardless, this patch is attempting to fix the problem where bfd and lld
lay out the orphans differently (as mentioned above, lld seems to sort
them in a way that is not strictly appended, and bfd seems to sort them
strictly appended). In the case of being appended to the .text output
section, this would cause boot failures due to _etext not covering the
resulting sections (which this[1] also encountered and fixed to be more
robust for such appended collection -- that series actually _depends_ on
orphan handling doing the appending, because there is no current way
to map wildcard input sections to their own separate output sections).

> change and should be mentioned in the commit message.
>=20
> However, the history of their being together comes from
>=20
>   9bebe9e5b0f3 ("kbuild: Fix .text.unlikely placement")
>=20
> which seems to indicate there was some problem with having them separated=
 out,
> although I don't quite understand what the issue was from the commit mess=
age.

Looking at this again, I actually wonder if we have bigger issues here
with dead code elimination:

#ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
#define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
...

that would catch: .text.hot .text.fixup .text.unlikely and .text.unknown
but not .text.hot.*, etc (i.e. the third dot isn't matched, which is,
I assume, why Clang switched to adding a trailing dot). However, this
patch lists .text.hot .text.hot.* first, so they'd get pulled to the
front correctly, but the trailing ones (with 2 dots) would not, since
they'd match the TEXT_MAIN wildcard first. (This problem actually existed
before this patch too, and is not the fault of 9bebe9e5b0f3, but rather
the addition of TEXT_MAIN, which could potentially match .text.unlikely
and .text.fixup)

Unless I'm totally wrong and the bfd docs don't match the behavior? e.g.
if I have a link order of ".foo.before", ".foo.after", and ".foo.middle",
and this rule:

.foo : { *(.foo.before .foo.* .foo.after) }

do I get this (first match):

	.foo.before
	.foo.after
	.foo.middle

or (most specific match):

	.foo.before
	.foo.middle
	.foo.after

?

As I said, now that I'm able to better articulate these questions, I'll
go get answers from -M output. :)

Perhaps we need to fix TEXT_MAIN not TEXT_TEXT? TEXT_TEXT is for
collecting .text, .text.[^\.]* and *.text, where, effectively,
.text and .text[^\.]* are defined by TEXT_MAIN. i.e. adding 3-dot "text"
input sections needs to likely be included in TEXT_MAIN

Anyway, I'll keep looking at this...

(In the meantime, perhaps we can take Arvind's series, and the earlier
portions of the orphan series where asm-generic/vmlinux.lds.h and other
things are cleaned up...)

-Kees

[1] https://lore.kernel.org/lkml/20200717170008.5949-6-kristen@linux.intel.=
com/

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202007312237.4F385EB3%40keescook.
