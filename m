Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB2OV46AAMGQE7WR5X6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id A11C730D02E
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 01:14:34 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id s29sf9522321otg.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 16:14:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612311273; cv=pass;
        d=google.com; s=arc-20160816;
        b=RwSRjVu0Vo51nSDgl5GKWqNNmZrYVRWHEBh3YIh6Jo+d4d4RkZeQ6C2H3j7xFVXUyb
         ZSU6TS/7uW+bnTOZuvv/CXRBEY9zjPV5iU3nhgCnyzdDSYSknB87ej43iskdDTZty+W2
         GbsLDv0BYo7x6S/WLssumf51vSrY9Y51Uec4szuwufiwOnRVeGdUKsOsmrnVJQ6YTxoK
         W1p1rBIaqVUkujqIEAiyVMJJpS6RXFfHDkrTS5FDOyxjr1DqDNGSD/2h6/rFZEU8vmif
         kaTNc15fA0Ag1rQ/DoisBJnNnjFS0DEyqgEdHk8btPzlL4s0oyD0DMuO0LrTK2rAcOMU
         CfUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bnOouyrXSOVKfZ+d10Y2A05uRYW9hhNkWzTuON9V9n4=;
        b=VlOqX/gz7Lf50OdSyF1q0ZwxxzUB/rgUZ2tQZJwwBqjqQAFb5ybH8uPRqWouyVLKWh
         AfetZW04PGjDJ1Pc5G92K2NxzNRSgetB93FtG11MRBNw7SBc58zA1B1byZHuR7Tr2YhK
         6CafMcJ3stPCfDOZitwzaNSDMV5jDHr0L9EdEkuZmRV/X+VHLnUSnvPLoa16/YmhvPp1
         b/KNbc832y5T2ZHLLYFJLL/5ZG1rvAMWIJhx+RUfRySaHGReQwP21nvf+a4hIXGfsLwJ
         8qthRL3Wzz2rlNarp+HjwgRaqvQi+ImwGYse2RGAoUTWc8CAE2BWeRy3knHX818IawB2
         EWHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=agnhJAtK;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bnOouyrXSOVKfZ+d10Y2A05uRYW9hhNkWzTuON9V9n4=;
        b=cECTCBdGXFuR0B7qbu88+njbVGkaMQX+P2yC90oUyDJ31LSyXZov0TTnP6azR13WBQ
         kcjlo56ftlRfLdTgoDdMdmtMFGMa9DZlkwGiVi4XkC+kW7UeA1/ig9ydV5N7BQcXPnrv
         hO5O0TJs7bIsV/1J+giSPFGrRPmV+gPRoub634gbyfO+l0qUMEnMFLDuteBGUPwN+SOi
         mJVQ/qbej83Ok5Sco85+leardlQwr1FHdhcO8rnABHwI4mThvzkKrGTN1HWdvCccUaTT
         XuOQy1YdnXAmvUIVtnZSKVRYhnOSn79MJfG9iYej0F5lCC29RA7IBPaytdqBKjZPMLu7
         Ht7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bnOouyrXSOVKfZ+d10Y2A05uRYW9hhNkWzTuON9V9n4=;
        b=mBBEjDjoqrRLVZV4b7RyqEnoVpZnbY9E79mNXQ9Q3qKYJ5+shn7tHktJWaK4copOEm
         LcH4Te3/M7ColcyfAQw+wwEt/SASm/4atQw8UzxM+BvNFMWgpYf/qUKj5OhbwekgrwAm
         mWP2bwmHnn4nXqy4cewr9hnGIeHUHx1JNo2uSH/LITFUMQgDxf98UyYjHRFXTmoRYsbP
         vaCA+CsLEekc1k6CIFfoTqHNcG9KnsbbK3IZenrPqA3b5JMMY+y6lnRl/fw8zPY+Dv1t
         YNiBMAzXW8/NxODYUz8EyNWEIHgzpNhJ4GAOLpcDjNWuDB5jrT+OqN9ovEoocXkPF9MR
         D7dw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rtBfxCoBQxqDbnSWbUkVcaiRA4ZFii5zAKsL6O5wGK/klYt8c
	nUnjleRWzzoKat9R+uLDK18=
X-Google-Smtp-Source: ABdhPJysAMQr0e/KFVv/6kZJA5IgNfaL2LB7jsbdXdIL7BFmQVjOw2p1zi6Zl4d8PL2pBvktzDiRSg==
X-Received: by 2002:a05:6820:283:: with SMTP id q3mr252885ood.13.1612311273535;
        Tue, 02 Feb 2021 16:14:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d755:: with SMTP id o82ls118814oig.2.gmail; Tue, 02 Feb
 2021 16:14:33 -0800 (PST)
X-Received: by 2002:aca:49d0:: with SMTP id w199mr273146oia.61.1612311273095;
        Tue, 02 Feb 2021 16:14:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612311273; cv=none;
        d=google.com; s=arc-20160816;
        b=qlNvDpRk149tbjfKiZDEoAJRnuoOT6Kqbnj2/M3b7dVF3S3hO2MIYDcH9I+d+4cLFg
         zSoVO1Tby3/jilyXEdiZM5/fDmT5Y7qQnf5S2WgJY/wjIkJVN1wK9EwlU1IrKfkC3TKf
         cUyfyZsCP+sCf1iJVrU2ITIcUzckb7INRo0hbWBohR6OmM1n3Ud2LIE7m/pm9Vb6xVVu
         h0ZjFO0gX+8fHs4yxm4VCfiruFnWaa1zNQeUELk3Y7uz0OY/kLNRR8dls8mO5LVhBg7h
         1upOWBgtWZ4Ma0w7Cu63LvU4/4MAV4pO+D6Qhu3miaW6+b0OaqaCRHGfsmVbF5/66F7B
         1ioA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SiaraPMcWlUGQ15HgWRnEvPFg5Cm3xwMPN0LwTOYT8c=;
        b=0gf7w8k2FF/LbqnAXNQDn2V9u9gIm8NjTM71N79efA3rsphYCzLcyqY92F3PXd9ENb
         HGx90Klq02NsOupIcaaAZI8q5D6+IHSsEQxp7R0Y8VpPzjexR3cfx6D3IDroZVz1svMg
         GfjD5VtfPDkrqN568U/yiHFJYJAzexPdAHTkbVDxT3CZZKPobrslbU+XmcwSKlJEsjG0
         kVK9YxxH+zSTnDiWoW8XjorZt87Fda3GUtkuqIUrsowbjRSBx5hlxbF4fLOnSYqlcmQz
         2WFB5d49b+wNUPw+jweFHeqAl0cKs6ouL1Nx1RSgi62zF0igpegU5FF57XzasN0lLqlb
         3iXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=agnhJAtK;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id s139si29390oih.5.2021.02.02.16.14.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Feb 2021 16:14:33 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-566-6TM_tgRuO0-KZsWk2A-z2Q-1; Tue, 02 Feb 2021 19:14:28 -0500
X-MC-Unique: 6TM_tgRuO0-KZsWk2A-z2Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 59E9E801817;
	Wed,  3 Feb 2021 00:14:26 +0000 (UTC)
Received: from treble (ovpn-120-118.rdu2.redhat.com [10.10.120.118])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0CD7118993;
	Wed,  3 Feb 2021 00:14:21 +0000 (UTC)
Date: Tue, 2 Feb 2021 18:14:14 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Julien Thierry <jthierry@redhat.com>, Ard Biesheuvel <ardb@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Peter Zijlstra <peterz@infradead.org>, raphael.gault@arm.com,
	Will Deacon <will@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Bill Wendling <morbo@google.com>, swine@google.com,
	yonghyun@google.com
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
Message-ID: <20210203001414.idjrcrki7wmhndre@treble>
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com>
 <20210127232651.rj3mo7c2oqh4ytsr@treble>
 <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com>
 <20210201214423.dhsma73k7ccscovm@treble>
 <CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw@mail.gmail.com>
 <671f1aa9-975e-1bda-6768-259adbdc24c8@redhat.com>
 <CAKwvOdkqWyDbAvMJAd6gkc2QAEL7DiZg6_uRJ6NUE4tCip4Jvw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkqWyDbAvMJAd6gkc2QAEL7DiZg6_uRJ6NUE4tCip4Jvw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=agnhJAtK;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Feb 02, 2021 at 03:01:22PM -0800, Nick Desaulniers wrote:
> > >> Thus far we've been able to successfully reverse engineer it on x86,
> > >> though it hasn't been easy.
> > >>
> > >> There were some particulars for arm64 which made doing so impossible.
> > >> (I don't remember the details.)
> >
> > The main issue is that the tables for arm64 have more indirection than x86.
> 
> I wonder if PAC or BTI also make this slightly more complex?  PAC at
> least has implications for unwinders, IIUC.

What is PAC/BTI?

> > On x86, the dispatching jump instruction fetches the target address from
> > a contiguous array of addresses based on a given offset. So the list of
> > potential targets of the jump is neatly organized in a table (and sure,
> > before link time these are just relocation, but still processable).
> >
> > On arm64 (with GCC at least), what is stored in a table is an array of
> > candidate offsets from the jump instruction. And because arm64 is
> > limited to 32bit instructions, the encoding often requires multiple
> > instructions to compute the target address:
> >
> > ldr<*>  x_offset, [x_offsets_table, x_index, ...]  // load offset
> > adr     x_dest_base, <addr>          // load target branch for offset 0
> > add     x_dest, x_target_base, x_offset, ...  // compute final address
> > br      x_dest        // jump
> >
> > Where this gets trickier is that (with GCC) the offsets stored in the
> > table might or might not be signed constants (and this can be seen in
> > GCC intermediate representations, but I do not believe this information
> > is output in the final object file). And on top of that, GCC might
> > decide to use offsets that are seen as unsigned during intermediate
> > representation as signed offset by sign extending them in the add
> > instruction.
> >
> > So, to handle this we'd have to track the different operation done with
> > the offset, from the load to the final jump, decoding the instructions
> > and deducing the potential target instructions from the table of offsets.
> >
> > But that is error prone as we don't really know how many instructions
> > can be between the ones doing the address computation, and I remember
> > some messy case of a jump table inside a jump table where tracking the
> > instruction touching one or the other offset would need a lot of corner
> > case handling.
> >
> > And this of course is just for GCC, I haven't looked at what it all
> > looks like on Clang's end.
> 
> Sure, but this is what production unwinders do, and they don't require
> compiler plugins, right?

What do you mean by "production unwinders"?  Generally unwinders rely on
either frame pointers or DWARF, but (without validation) those aren't
robust enough for live patching in the kernel, so I'm not sure how this
is relevant.

> > > I think the details are pertinent to finding a portable solution.  The
> > > commit message of this commit in particular doesn't document such
> > > details, such as why such an approach is necessary or how the data is
> > > laid out for objtool to consume it.
> > >
> >
> > Sorry, I will need to make that clearer. The next patch explains it a
> > bit [1]
> >
> > Basically, for simplicity, the plugin creates a new section containing
> 
> Right, this takes a focus on simplicity, at the cost of alienating a toolchain.
> 
> Ard's point about 3193c0836f20 relating to -fgcse is that when
> presented with tricky cases to unwind, the simplest approach is taken.
> There it was disabling a compiler specific compiler optimization, here
> it's either a compiler specific compiler plugin (or disabling another
> compiler optimization).  The pattern seems to be "Objtool isn't smart
> enough" ... "compiler optimization disabled" or "compiler plugin
> dependency."

You're taking the two absolute worst case scenarios (one of which is
just a patch which doesn't look like it's going to get merged anyway)
and drawing a false narrative.

In this case the simplest approach would have been to just give up and
disable jump tables.

We try as hard as possible (beyond turning objtool into a full emulator)
to avoid doing that kind of thing because objtool isn't supposed to
dictate kernel optimizations.  Otherwise we would have disabled jump
tables (even for non-retpolines) a long time ago, because that's been a
serious PITA.

You might not like the plugin -- I don't like it either -- but the goal
was to avoid penalizing the kernel with "objtool-friendly"
optimizations.

That said, jump tables are such a pain for objtool (and currently
impossible to deal with for arm64) that I'm completely open to just
disabling them if they're shown to have negligible benefit for the
kernel.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210203001414.idjrcrki7wmhndre%40treble.
