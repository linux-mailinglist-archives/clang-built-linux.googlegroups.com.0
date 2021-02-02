Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTVT46AAMGQE4KX5W2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0F330CF83
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 00:01:35 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id n22sf15528733qtv.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 15:01:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612306894; cv=pass;
        d=google.com; s=arc-20160816;
        b=eAUTzErS0iFfaDx84v0D/CO3AFDn5toN35/f8x3EyuVtgHVs6XUbm88jvZDaqh9Dl3
         y0mUUJG2U8jLqGJQi+HnqEhZMQYcjp3MlLiPyyqhCsrpzTsrqBUTDEuSvpqpUTszTUfm
         xhwYba5VAwwYZi/t+1+Rdr3h2RABTo849v/O1D0XwevnAiGkufavZ3iqvs6lXWTuJPZm
         GRsc2W1tSkgESz/MP9kqmHhH0FXgwDhOmZxueMXloAEpPptghY1T7+TTOjkXfDwUWosC
         13kM9B3DmtqPNrZpfPV4kKNliEKq0qREI3WP44GgwgftMQzDesMC3rhHA/oiFVL09ogS
         +Tiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cc57HyM23CK6amib0Hf+jSanqkuFG7YLtUIzGRjD1l8=;
        b=SfmgQBJgONH1AkPc43Z51EapUtsu2v02oSSTpXPDKBthe+FkjK+gYyuNDyN94W8hpu
         MuRAAyucys9apT9uvAqabONFo63JjJgm4656lhTBoD1lkpIdXbJiP1+373bj1zKf6Ow2
         4fWPn94f32Ctkix2HpaH5jQwYD/bRHFIj61Lx3kiqKJjwWEYwGaT6h+DwW4k0X0VAUmc
         I6ulzAsbooUV3CWo+ZtpQRIVWdOn/f5SaVLJ5FNegckMsvdR3PuC2eoDQZi6HATO14Bc
         zyQiddJrxa2vf6mOG5kMLtM8rKPyTLpdXZ0kjIRQYtBrePiA4zrgu5T7SaoYKFbiY9XO
         0yOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VcnAFaQT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cc57HyM23CK6amib0Hf+jSanqkuFG7YLtUIzGRjD1l8=;
        b=A1xJJr94oZNtX92PMf1e4x4n7pS+bPk0J+CFRrFH4ubekBu+HOUNP5EbOnGEhzNO7f
         uAy2JoJQlVzASyX7aDlNEdFpY0L/Cbu6vZQrfbQl1LSu36TDbS9dwbOLPa3hJrfRMoPD
         58Mve1irXGSsd7R5KAK/twGoZN7574GPZ5COOTpm0qRkqNHa9cyHsbNJxZ+8mkzB540e
         Y0qX9o+1NAp+U7G+8k/KKQ+mlhcVn4XiD2+0JnMyxvEX+qQcKu72aIZUJ+r8ivLcWDjQ
         7fC9JaUpqZHgKT5Wm4E6kMs7a6mUTqHwOvdT1lZu3LzlovRw+h7F64TON7v3E3qtioUX
         j2CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cc57HyM23CK6amib0Hf+jSanqkuFG7YLtUIzGRjD1l8=;
        b=DG+6YhgaNzELuJUhe21oRbwaxANOOsLjRBkLx+fgzQ3ocRjg3l3+kOoo4zcKy4ktvp
         XvaXze4UYIjxYIscU+bipno0VIv5el5mGJIlNK6dYvHfl4H7kB49VZLtVDTccWxbWd0U
         jAMc76rflhkm7ZiqRLuHj4vCFVHtKO2LLcTCUNDN/Z0dCzI7H2mVY9rLbfbuMrGuBH58
         2DGxcfGUzFtzY4yhuDA+SCYlkL4TOf4qke43E9mxBDpWvjKdHPVA6CID4K1HNUwXGQY6
         FLNfI2IDJWe8r2OHQyjz+dHO/ftUWsJmIvT9kc3As3oGHn5JwPq5R3wQrxKONaniaCv4
         xOLg==
X-Gm-Message-State: AOAM532gvGpYyqyd4HjNEfemy+kQO0ZymWMVoviv67fXthKuFaZ0jVzi
	1kqClXvSLvaTnuRvdDVvNnU=
X-Google-Smtp-Source: ABdhPJwJ6Y7gtdq7IW0umBm+WVDDaoFfGbTwwdQVwPC4A3jDMKMGjAX0tgXlnn5UrOgug2t4TcReBw==
X-Received: by 2002:a0c:fdec:: with SMTP id m12mr423632qvu.11.1612306894192;
        Tue, 02 Feb 2021 15:01:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:2c4:: with SMTP id g4ls5460662qvu.11.gmail; Tue, 02
 Feb 2021 15:01:33 -0800 (PST)
X-Received: by 2002:a0c:8c87:: with SMTP id p7mr440677qvb.46.1612306893823;
        Tue, 02 Feb 2021 15:01:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612306893; cv=none;
        d=google.com; s=arc-20160816;
        b=OubDYUYlZ1jiZP+vXD+QJ0A4lelzEZf3QNvJhq7Iwwo5iHfHPLds7DiKY76tL9e+dY
         L34S6Fak1tvxi0rNj9axNgYSh1r5pYWO3yovVjIZjjBGatnsjMRD0XnUklf2DzbFCMU4
         KZ2lI3x1IYmhof/ZFMFnGRa+wmIV0JhPX4Jc7XAVa+eekBFfaVjF6SDiR6rFSkHhNBfl
         yGtgJSR3Ba6EUMilcHdqkSbLKU8HaRi7PwWxkWdQFd3PifRBlkZT8R10G6O/2s8Ph8NZ
         HWlkEQum2PUgBbRxB+nwyc1ZkSyFazoiGvNYk6dbuySsG+YVP6S2zdey2mp8Jy/506sW
         oThg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1B8aZfGV5m393mwd0q0yYkdjrdi3QZ7GO2sMeSzwIIY=;
        b=lIbHBY/Gw7nEEEp5FsutCsiwZbouYKVR1MlqftWHiQBaJ5OwK2n6h3eQgnChgXn9FD
         /kXVSzoA7XHO9Rt9dtc7Ksh83Feir2kTEAFTLWBGR5vjQgw+XBF4jHPDy/X41Ddji0yv
         lU3aSQW+697YA5rgC4Fjqq+ReFqo/LBxRcp+wwFJWFTPC2KyVD5hJPFBcpKOtIhw5z4F
         puQxOhwPiwjZzvJ+uSL5VsfknDPA7DBAkPXOd1xbT+rNSCAzKdK72zx5aaMg90xXTFLu
         aOLAgYTNObn3mGUYOtXy7uiJsTyUedFf4SbNU7GxaEVFPzUjb6RUkkyCFYFwocvHoE0B
         fFKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VcnAFaQT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id q66si13933qkd.3.2021.02.02.15.01.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Feb 2021 15:01:33 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id nm1so3241169pjb.3
        for <clang-built-linux@googlegroups.com>; Tue, 02 Feb 2021 15:01:33 -0800 (PST)
X-Received: by 2002:a17:90a:bf10:: with SMTP id c16mr86751pjs.101.1612306893152;
 Tue, 02 Feb 2021 15:01:33 -0800 (PST)
MIME-Version: 1.0
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com> <20210127232651.rj3mo7c2oqh4ytsr@treble>
 <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com>
 <20210201214423.dhsma73k7ccscovm@treble> <CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw@mail.gmail.com>
 <671f1aa9-975e-1bda-6768-259adbdc24c8@redhat.com>
In-Reply-To: <671f1aa9-975e-1bda-6768-259adbdc24c8@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Feb 2021 15:01:22 -0800
Message-ID: <CAKwvOdkqWyDbAvMJAd6gkc2QAEL7DiZg6_uRJ6NUE4tCip4Jvw@mail.gmail.com>
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
To: Julien Thierry <jthierry@redhat.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Kees Cook <keescook@chromium.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-efi <linux-efi@vger.kernel.org>, linux-hardening@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Peter Zijlstra <peterz@infradead.org>, raphael.gault@arm.com, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>, swine@google.com, 
	yonghyun@google.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VcnAFaQT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b
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

On Tue, Feb 2, 2021 at 12:57 AM Julien Thierry <jthierry@redhat.com> wrote:
>
>
>
> On 2/2/21 12:17 AM, Nick Desaulniers wrote:
> > On Mon, Feb 1, 2021 at 1:44 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >>
> >> On Fri, Jan 29, 2021 at 10:10:01AM -0800, Nick Desaulniers wrote:
> >>> On Wed, Jan 27, 2021 at 3:27 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >>>>
> >>>> On Wed, Jan 27, 2021 at 02:15:57PM -0800, Nick Desaulniers wrote:
> >>>>>> From: Raphael Gault <raphael.gault@arm.com>
> >>>>>>
> >>>>>> This plugins comes into play before the final 2 RTL passes of GCC and
> >>>>>> detects switch-tables that are to be outputed in the ELF and writes
> >>>>>> information in an ".discard.switch_table_info" section which will be
> >>>>>> used by objtool.
> >>>>>>
> >>>>>> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> >>>>>> [J.T.: Change section name to store switch table information,
> >>>>>>         Make plugin Kconfig be selected rather than opt-in by user,
> >>>>>>         Add a relocation in the switch_table_info that points to
> >>>>>>         the jump operation itself]
> >>>>>> Signed-off-by: Julien Thierry <jthierry@redhat.com>
> >>>>>
> >>>>> Rather than tightly couple this feature to a particular toolchain via
> >>>>> plugin, it might be nice to consider what features could be spec'ed out
> >>>>> for toolchains to implement (perhaps via a -f flag).
> >>>>
> >>>> The problem is being able to detect switch statement jump table vectors.
> >>>>
> >>>> For a given indirect branch (due to a switch statement), what are all
> >>>> the corresponding jump targets?
> >>>>
> >>>> We would need the compiler to annotate that information somehow.
> >>>
> >>> Makes sense, the compiler should have this information.  How is this
> >>> problem solved on x86?
> >>
> >> Thus far we've been able to successfully reverse engineer it on x86,
> >> though it hasn't been easy.
> >>
> >> There were some particulars for arm64 which made doing so impossible.
> >> (I don't remember the details.)
>
> The main issue is that the tables for arm64 have more indirection than x86.

I wonder if PAC or BTI also make this slightly more complex?  PAC at
least has implications for unwinders, IIUC.

>
> On x86, the dispatching jump instruction fetches the target address from
> a contiguous array of addresses based on a given offset. So the list of
> potential targets of the jump is neatly organized in a table (and sure,
> before link time these are just relocation, but still processable).
>
> On arm64 (with GCC at least), what is stored in a table is an array of
> candidate offsets from the jump instruction. And because arm64 is
> limited to 32bit instructions, the encoding often requires multiple
> instructions to compute the target address:
>
> ldr<*>  x_offset, [x_offsets_table, x_index, ...]  // load offset
> adr     x_dest_base, <addr>          // load target branch for offset 0
> add     x_dest, x_target_base, x_offset, ...  // compute final address
> br      x_dest        // jump
>
> Where this gets trickier is that (with GCC) the offsets stored in the
> table might or might not be signed constants (and this can be seen in
> GCC intermediate representations, but I do not believe this information
> is output in the final object file). And on top of that, GCC might
> decide to use offsets that are seen as unsigned during intermediate
> representation as signed offset by sign extending them in the add
> instruction.
>
> So, to handle this we'd have to track the different operation done with
> the offset, from the load to the final jump, decoding the instructions
> and deducing the potential target instructions from the table of offsets.
>
> But that is error prone as we don't really know how many instructions
> can be between the ones doing the address computation, and I remember
> some messy case of a jump table inside a jump table where tracking the
> instruction touching one or the other offset would need a lot of corner
> case handling.
>
> And this of course is just for GCC, I haven't looked at what it all
> looks like on Clang's end.

Sure, but this is what production unwinders do, and they don't require
compiler plugins, right?  I don't doubt unwinders can be made simpler
with changes to toolchain output; please work with your compiler
vendor on making such changes rather than relying on compiler plugins
to do so.

> > I think the details are pertinent to finding a portable solution.  The
> > commit message of this commit in particular doesn't document such
> > details, such as why such an approach is necessary or how the data is
> > laid out for objtool to consume it.
> >
>
> Sorry, I will need to make that clearer. The next patch explains it a
> bit [1]
>
> Basically, for simplicity, the plugin creates a new section containing

Right, this takes a focus on simplicity, at the cost of alienating a toolchain.

Ard's point about 3193c0836f20 relating to -fgcse is that when
presented with tricky cases to unwind, the simplest approach is taken.
There it was disabling a compiler specific compiler optimization, here
it's either a compiler specific compiler plugin (or disabling another
compiler optimization).  The pattern seems to be "Objtool isn't smart
enough" ... "compiler optimization disabled" or "compiler plugin
dependency."

> tables (one per jump table) of references to the jump targets, similar
> to what x86 has, except that in this case this table isn't actually used
> by runtime code and is discarded at link time. I only chose this to
> minimize what needed to be changed in objtool and because the format
> seemed simple enough.
>
> But I'm open on some alternative, whether it's a -fjump-table-info

Yes, I think we could spec out something like that.  But I would
appreciate revisiting open questions around stack validation (frame
pointers), preventing the generation of jump tables to begin with
(-fno-jump-tables) in place of making objtool more robust, or
generally the need to depend on compiler plugins.

> option added to compilers with a different format to do the links. The
> important requirement is to be able to know all the candidate targets
> for a "br <reg>" instruction.
>
> [1] https://lkml.org/lkml/2021/1/20/910
>
> Thanks,
>
> --
> Julien Thierry
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkqWyDbAvMJAd6gkc2QAEL7DiZg6_uRJ6NUE4tCip4Jvw%40mail.gmail.com.
