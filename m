Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBFONXGEQMGQEP4EX6XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2CF3FCC4E
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 19:27:59 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id p7-20020a17090a2c4700b0018d4e028ee6sf1749652pjm.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 10:27:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630430869; cv=pass;
        d=google.com; s=arc-20160816;
        b=YzVnCymTfNr0976gUKo+Wx5THdf4PwEWSTRqyFgns/cBzXWCzeXLBaUYLJurMJPbfX
         0MEZDn8wmK3Vzc9QhZxVIqehYezCY24b4y7xixL+WsX8XSkr7kucIrx/CuW0UilFDbAq
         /16OU0Hdheit2dr36l/ObOfsPmtuM247fbmi73KmLnSHmzzzL5+45QqO0XXQ5yOAbFy0
         KQtbDmWYxnAgO/tEqGIrh7y8eGIIvHBdUQ+ue3w9/PbvdbgiLfWWbxoM3hh+UHwGiueB
         OYLllkMmevzPmetNM9SO0asrYZWv72wbtuP91jo9FI3iHLSe0q2TDJoOecnJPD9nVXBk
         kaug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2RHaNU/PcYf0/woOOfupLDSO+YTl74F1I9SrRdrE65E=;
        b=t8ZufYYCRQma0Uv7TywjjfzFkKj8nKAEkum6XacmfXChyosF/jayM16N8gB4r0sCl6
         zI9UBIELvlytm/8IR+YkbvHvLSJPsTgti4woSmRMq2T+DeaKZS1DpEWHu+EDZnJDzuAa
         X/EQPqC6KHXm/1DTR99Pu/OrVS/n2DGDWr/M5RCrz9wJj+g7FDGf2LAfLV9S3dXgMUIq
         KY0+fgWukhgE+oXs8rAJ0UgEO9cAWQ5XGfkmVoP+bRaIZ5JypQv8S2ZVLqtVz5GklVjP
         RP6mh/4i5Uh9be7pFPrajK+/ezj73YNGrRUZkBNR7UQl6rDtCi2D5XVwH4nGgzw8aG9y
         qYUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JaLWCAHs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2RHaNU/PcYf0/woOOfupLDSO+YTl74F1I9SrRdrE65E=;
        b=Adp6/iuloVh0hqN7lDrb9iXTT3S9gQ+y8o6I8gC/UhWwOEApCdZMJK8XxS7nIcFlBx
         N4g0HVoeY0ROYGU3vR2TwfcyGj4FSVZSpFW9ykUIhjQFuXrG/lT8kJRlMnTHprYvMTCR
         SktMow/4pJgehnuGuZQQo7mAGlZFqIuov20vaHqLs0l04gy5lvbJeM4B2CHEmYUhs9MI
         WZczGJXrvlHfRRc4jkogD7ag/GhKmr276PtKxt9nvH3sKlNyYOoYT5XIY33wM1cpSGCf
         K6c7CNiSSceHkp5KLLPdYdJmi3o7iSEaQJT7neE8PRvV5DTXLwc73zVpwZiWCYfLpx/S
         /yiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2RHaNU/PcYf0/woOOfupLDSO+YTl74F1I9SrRdrE65E=;
        b=Q/fXqfI9sNIwoHIMW7bliFqe47FcaBm0+kftffoGNYMoTZT86QFMTcbWG+8sghGJdS
         5PhNFU6ZsqU7HIDQkJSXtFkMDnMN2xO+V40r4/k4RTYnvZk00N9AfC11e40MBPLwvtsL
         vILAMuHILWM296br+3WhbDm60vjfszHvZKBKpMcu5eHFLwGZn3POK9obM8aCj378PEzA
         H5M5lGng39v2qswW69Je42GnaX3o2abn37kGZyDoCTp5Aspr6LPZJxCm9wRhDB9z5WxW
         GPTS2AuOLfLsV1Ua/3tI7Omai6XfKoBuEAqQPMBe78FG/rfsESDMhNGg4DJ+X9ukCBrG
         myoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531T7U6KvCzBQwhuVkzFlavRqD1adFbgGbmS7dq8wstOmrKjouCC
	ANSFfDXXZYBRQTOBFOEsmi0=
X-Google-Smtp-Source: ABdhPJxU5lORQnG6z/Uy6lqri+F8ykSheUJv0rpAdnQtRK6wB5Z/slqFFc/VY2cwY51/qoOqgiDoNw==
X-Received: by 2002:a05:6a00:23cf:b0:3e2:4622:da6d with SMTP id g15-20020a056a0023cf00b003e24622da6dmr29379456pfc.18.1630430869120;
        Tue, 31 Aug 2021 10:27:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3154:: with SMTP id x81ls8586929pgx.2.gmail; Tue, 31 Aug
 2021 10:27:48 -0700 (PDT)
X-Received: by 2002:a63:62c7:: with SMTP id w190mr27567762pgb.105.1630430868510;
        Tue, 31 Aug 2021 10:27:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630430868; cv=none;
        d=google.com; s=arc-20160816;
        b=v0knnkPnEca8OmrS9ZO6tqgQODnEtRT/cC3wwbKoGPA0ayjio5cQ/BeEqNt+bZU4wn
         1ANe5ypyt1YRxsEd3bW+ggHGuyeWLlQDWe/5cFferl58LHZENhNIYUdtwXv1ITGPBxqM
         YwIG52fd2Yo4W4nxDNR49HU5GiRCM8AWI5VOjM0oOt3BMJzo1o69XgzRHai6gjy2ZMte
         Qa6jEdf864gFOP1PyJr5ilojItXj0/bWTmjuiqSclQuQ8cBGqKxeDv1wFHBTJEHyuvRI
         P/hvolxkziQzsC7MuJuTd7/1vRqbjbtLXjFfn2Jna1u8SyX2XfWXZwRHatvv5A427ZwQ
         iapA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/AbYbs2ns4caIrVqHUPKr0+18pwV9snbLofgpwoZK9g=;
        b=R+Q9eaL3hFVycotvajXWzDsLT7NgDCXYzn3xWPTuXCJgazZ4lCGyKBXwYX8ZVJbguk
         Bhhq3c4znD8oTLEhwua3S5zaDIN565JVdFNs8QQyggw14rqItmDgq5OtCK2WU1ht20od
         doFfzO1m5wok0n5fsA90kyQMk6ekgAB5sebkkiIhjbwbjeZ1BluZuiVWpFUFbbr8trf4
         xBW5Tm1RH2dyc9FjkSSRoJZb8bZ/OwNYqIK98Wc7hjOEPl36RkaUTsJHOq4JikDayeH0
         T6R3vdobjWsKitZzTNiie5qSuN0wOxQti2AZL4m0g8PZvm7Pu9gsg1guCP3mkozi2+tD
         YcWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JaLWCAHs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id e11si1561190pgm.0.2021.08.31.10.27.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Aug 2021 10:27:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id j1so5677pjv.3
        for <clang-built-linux@googlegroups.com>; Tue, 31 Aug 2021 10:27:48 -0700 (PDT)
X-Received: by 2002:a17:90a:aa85:: with SMTP id l5mr6661440pjq.111.1630430867847;
        Tue, 31 Aug 2021 10:27:47 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c24sm10235425pgj.63.2021.08.31.10.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Aug 2021 10:27:46 -0700 (PDT)
Date: Tue, 31 Aug 2021 10:27:45 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
Cc: linux-hardening@vger.kernel.org,
	Kristen C Accardi <kristen.c.accardi@intel.com>,
	Kristen Carlson Accardi <kristen@linux.intel.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>, Jessica Yu <jeyu@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marios Pomonis <pomonis@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Tony Luck <tony.luck@intel.com>, Ard Biesheuvel <ardb@kernel.org>,
	Jesse Brandeburg <jesse.brandeburg@intel.com>,
	Lukasz Czapnik <lukasz.czapnik@intel.com>,
	Marta A Plantykow <marta.a.plantykow@intel.com>,
	Michal Kubiak <michal.kubiak@intel.com>,
	Michal Swiatkowski <michal.swiatkowski@intel.com>,
	linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v6 kspp-next 00/22] Function Granular KASLR
Message-ID: <202108311010.8250B34D5@keescook>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=JaLWCAHs;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c
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

On Tue, Aug 31, 2021 at 04:40:52PM +0200, Alexander Lobakin wrote:
> This is a massive rework and a respin of Kristen Accardi's marvellous
> FG-KASLR series (v5).

Thanks for working on this! I know Marios has been looking at some of
this as well. I think he tracked down a kretprobes bug and has a fixed
prepared.

> The major differences since v5 [0]:
> * You can now tune the number of functions per each section to
>   achieve the preferable vmlinux size or protection level. Default
>   is still as one section per each function.
>   This can be handy for storage-constrained systems. 4-8 fps are
>   still strong, but reduce the size of the final vmlinu{x,z}
>   significantly;

Interesting, but I'm not sure what the size issue is. v5's on-disk
image size issues were related to the large relocation table that was
used during decompress and layout, but would get discarded. The final
in-core image size was roughly the same size as a non-FGKASLR kernel
(since functions were already aligned even without -ffunction-sections).
How does the functions-per-section knob change image size?

> * I don't use orphan sections anymore. It's not reliable at all /
>   may differ from linker to linker, and also conflicts with
>   CONFIG_LD_ORPHAN_WARN which is great for catching random bugs ->
> * All the .text.* sections are now being described explicitly in the
>   linker script. A Perl script is used to take the original LDS, the
>   original object file, read a list of input sections from it and
>   generate the resulting LDS.
>   This costs a bit of linking time as LD tends to think hard when
>   processing scripts > 1 Mb. It adds about 40-60 seconds to the
>   whole linking process (BTF step, 2-3 kallsyms steps and the final
>   step), but "better safe than sorry".
>   In addition, that approach allows to reserve some space at the end
>   and add some link assertions ->

Yeah, this "hope that orphan handling does it right" bugged me too, but my
attempts to solve it looked much like yours: creating a linker file that
named all the sections. I found this to be prohibitively expensive at link
time (and that seems backed by your own measurements of an extra minute
or so at link time). If that's still the result of using a generated
linker file, we just need to depend on orphan handling. LD_ORPHAN_WARN
will still exist for non-FGKASLR builds, so the benefits will continue
to exist -- I think the correct solution is to have the linker grow a
"pass through" special target like "DISCARD", which just maps given
input section patterns into same-named output sections.

> * Input .text section now must be empty, otherwise the linkage will
>   be stopped. This is implemented by the size assertion in the
>   resulting LD script and is designed to plug the potentional layout
>   leakage. This also means that ->

I worry this will create unexpected problems for named sections that
weren't originally being randomized with the v5 FGKASLR.

> * "Regular" ASM functions are now being placed into unique separate
>   functions the same way compiler does this for C functions. This is
>   achieved by introducing and using several new macros which take
>   the symbol name as a base for its new section name.
>   This gives a better opportunity to both DCE and FG-KASLR, as ASM
>   code now can also be randomized or garbage-collected;

This is interesting! I think it'd be a good evolutionary step on top of
"basic FGKASLR".

> * It's now fully compatible with ClangLTO, ClangCFI,
>   CONFIG_LD_ORPHAN_WARN and some more stuff landed since the last
>   revision was published;

FWIW, v5 was was too. :) I didn't have to do anything to v5 to make it
work with ClangLTO and ClangCFI.

> * Includes several fixes: relocations inside .altinstr_replacement
>   code and minor issues found and/or suggested by LKP robot.

Excellent!

> The series was compile-time and runtime tested on the following
> setups with no issues:
> - x86_64, GCC 11, Binutils 2.35;
> - x86_64, Clang/LLVM 12, ClangLTO + ClangCFI (from Sami's tree).

Great, this is a good start. One place we saw problems in the past was
with i386 build gotchas, so that'll need testing too.

> The first 4 patches are from the linux-kbuild tree and included
> to avoid merge conflicts and non-intuitive resolving of them.

Sounds good. It might be easier to base the series on linux-next, so a
smaller series. Though given the merge window just opened, it might make
more sense for a v7 to be based on v5.15-rc2 in three weeks.

> The series is also available here: [1]
> 
> [0] https://lore.kernel.org/kernel-hardening/20200923173905.11219-1-kristen@linux.intel.com
> [1] https://github.com/alobakin/linux/pull/3
> 
> The original v5 cover letter:

More notes below...

> 
> Function Granular Kernel Address Space Layout Randomization (fgkaslr)
> ---------------------------------------------------------------------
> 
> This patch set is an implementation of finer grained kernel address space
> randomization. It rearranges your kernel code at load time 
> on a per-function level granularity, with only around a second added to
> boot time.
> 
> Changes in v5:
> --------------
> * fixed a bug in the code which increases boot heap size for
>   CONFIG_FG_KASLR which prevented the boot heap from being increased
>   for CONFIG_FG_KASLR when using bzip2 compression. Thanks to Andy Lavr
>   for finding the problem and identifying the solution.
> * changed the adjustment of the orc_unwind_ip table at boot time to
>   disregard relocs associated with this table, and instead inspect the
>   entries separately. Relocs are not able to be used since they are
>   no longer correct once the table is resorted at buildtime.
> * changed how orc_unwind_ip addresses in randomized sections are identified
>   to include the byte immediately after the end of the section.
> * updated module code to use kvmalloc/kvfree based on suggestions from
>   Evgenii Shatokhin <eshatokhin@virtuozzo.com>.
> * changed kernel commandline to disable fgkaslr to simply "nofgkaslr" to
>   match the nokaslr option. fgkaslr="X" can be added at a later date
>   if it is needed.
> * Added a patch to force livepatch to require symbols to be unique if
>   using while fgkaslr either for core or modules.
> 
> Changes in v4:
> -------------
> * dropped the patch to split out change to STATIC definition in
>   x86/boot/compressed/misc.c and replaced with a patch authored
>   by Kees Cook to avoid the duplicate malloc definitions
> * Added a section to Documentation/admin-guide/kernel-parameters.txt
>   to document the fgkaslr boot option.
> * redesigned the patch to hide the new layout when reading
>   /proc/kallsyms. The previous implementation utilized a dynamically
>   allocated linked list to display the kernel and module symbols
>   in alphabetical order. The new implementation uses a randomly
>   shuffled index array to display the kernel and module symbols
>   in a random order.
> 
> Changes in v3:
> -------------
> * Makefile changes to accommodate CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
> * removal of extraneous ALIGN_PAGE from _etext changes
> * changed variable names in x86/tools/relocs to be less confusing
> * split out change to STATIC definition in x86/boot/compressed/misc.c
> * Updates to Documentation to make it more clear what is preserved in .text
> * much more detailed commit message for function granular KASLR patch
> * minor tweaks and changes that make for more readable code
> * this cover letter updated slightly to add additional details
> 
> Changes in v2:
> --------------
> * Fix to address i386 build failure
> * Allow module reordering patch to be configured separately so that
>   arm (or other non-x86_64 arches) can take advantage of module function
>   reordering. This support has not be tested by me, but smoke tested by
>   Ard Biesheuvel <ardb@kernel.org> on arm.
> * Fix build issue when building on arm as reported by
>   Ard Biesheuvel <ardb@kernel.org> 
> 
> Patches to objtool are included because they are dependencies for this
> patchset, however they have been submitted by their maintainer separately.
> 
> Background
> ----------
> KASLR was merged into the kernel with the objective of increasing the
> difficulty of code reuse attacks. Code reuse attacks reused existing code
> snippets to get around existing memory protections. They exploit software bugs
> which expose addresses of useful code snippets to control the flow of
> execution for their own nefarious purposes. KASLR moves the entire kernel
> code text as a unit at boot time in order to make addresses less predictable.
> The order of the code within the segment is unchanged - only the base address
> is shifted. There are a few shortcomings to this algorithm.
> 
> 1. Low Entropy - there are only so many locations the kernel can fit in. This
>    means an attacker could guess without too much trouble.
> 2. Knowledge of a single address can reveal the offset of the base address,
>    exposing all other locations for a published/known kernel image.
> 3. Info leaks abound.
> 
> Finer grained ASLR has been proposed as a way to make ASLR more resistant
> to info leaks. It is not a new concept at all, and there are many variations
> possible. Function reordering is an implementation of finer grained ASLR
> which randomizes the layout of an address space on a function level
> granularity. We use the term "fgkaslr" in this document to refer to the
> technique of function reordering when used with KASLR, as well as finer grained
> KASLR in general.
> 
> Proposed Improvement
> --------------------
> This patch set proposes adding function reordering on top of the existing
> KASLR base address randomization. The over-arching objective is incremental
> improvement over what we already have. It is designed to work in combination
> with the existing solution. The implementation is really pretty simple, and
> there are 2 main area where changes occur:
> 
> * Build time
> 
> GCC has had an option to place functions into individual .text sections for
> many years now. This option can be used to implement function reordering at
> load time. The final compiled vmlinux retains all the section headers, which
> can be used to help find the address ranges of each function. Using this
> information and an expanded table of relocation addresses, individual text
> sections can be suffled immediately after decompression. Some data tables
> inside the kernel that have assumptions about order require re-sorting
> after being updated when applying relocations. In order to modify these tables,
> a few key symbols are excluded from the objcopy symbol stripping process for
> use after shuffling the text segments.
> 
> Some highlights from the build time changes to look for:
> 
> The top level kernel Makefile was modified to add the gcc flag if it
> is supported. Currently, I am applying this flag to everything it is
> possible to randomize. Anything that is written in C and not present in a
> special input section is randomized. The final binary segment 0 retains a
> consolidated .text section, as well as all the individual .text.* sections.
> Future work could turn off this flags for selected files or even entire
> subsystems, although obviously at the cost of security.
> 
> The relocs tool is updated to add relative relocations. This information
> previously wasn't included because it wasn't necessary when moving the
> entire .text segment as a unit. 
> 
> A new file was created to contain a list of symbols that objcopy should
> keep. We use those symbols at load time as described below.
> 
> * Load time
> 
> The boot kernel was modified to parse the vmlinux elf file after
> decompression to check for our interesting symbols that we kept, and to
> look for any .text.* sections to randomize. The consolidated .text section
> is skipped and not moved. The sections are shuffled randomly, and copied
> into memory following the .text section in a new random order. The existing
> code which updated relocation addresses was modified to account for
> not just a fixed delta from the load address, but the offset that the function
> section was moved to. This requires inspection of each address to see if
> it was impacted by a randomization. We use a bsearch to make this less
> horrible on performance. Any tables that need to be modified with new
> addresses or resorted are updated using the symbol addresses parsed from the
> elf symbol table.
> 
> In order to hide our new layout, symbols reported through /proc/kallsyms
> will be displayed in a random order.
> 
> Security Considerations
> -----------------------
> The objective of this patch set is to improve a technology that is already
> merged into the kernel (KASLR). This code will not prevent all attacks,
> but should instead be considered as one of several tools that can be used.
> In particular, this code is meant to make KASLR more effective in the presence
> of info leaks.
> 
> How much entropy we are adding to the existing entropy of standard KASLR will
> depend on a few variables. Firstly and most obviously, the number of functions
> that are randomized matters. This implementation keeps the existing .text
> section for code that cannot be randomized - for example, because it was
> assembly code. The less sections to randomize, the less entropy. In addition,
> due to alignment (16 bytes for x86_64), the number of bits in a address that
> the attacker needs to guess is reduced, as the lower bits are identical.
> 
> Performance Impact
> ------------------
> There are two areas where function reordering can impact performance: boot
> time latency, and run time performance.
> 
> * Boot time latency
> This implementation of finer grained KASLR impacts the boot time of the kernel
> in several places. It requires additional parsing of the kernel ELF file to
> obtain the section headers of the sections to be randomized. It calls the
> random number generator for each section to be randomized to determine that
> section's new memory location. It copies the decompressed kernel into a new
> area of memory to avoid corruption when laying out the newly randomized
> sections. It increases the number of relocations the kernel has to perform at
> boot time vs. standard KASLR, and it also requires a lookup on each address
> that needs to be relocated to see if it was in a randomized section and needs
> to be adjusted by a new offset. Finally, it re-sorts a few data tables that
> are required to be sorted by address.
> 
> Booting a test VM on a modern, well appointed system showed an increase in
> latency of approximately 1 second.
> 
> * Run time
> The performance impact at run-time of function reordering varies by workload.
> Using kcbench, a kernel compilation benchmark, the performance of a kernel
> build with finer grained KASLR was about 1% slower than a kernel with standard
> KASLR. Analysis with perf showed a slightly higher percentage of 
> L1-icache-load-misses. Other workloads were examined as well, with varied
> results. Some workloads performed significantly worse under FGKASLR, while
> others stayed the same or were mysteriously better. In general, it will
> depend on the code flow whether or not finer grained KASLR will impact
> your workload, and how the underlying code was designed. Because the layout
> changes per boot, each time a system is rebooted the performance of a workload
> may change.
> 
> Future work could identify hot areas that may not be randomized and either
> leave them in the .text section or group them together into a single section
> that may be randomized. If grouping things together helps, one other thing to
> consider is that if we could identify text blobs that should be grouped together
> to benefit a particular code flow, it could be interesting to explore
> whether this security feature could be also be used as a performance
> feature if you are interested in optimizing your kernel layout for a
> particular workload at boot time. Optimizing function layout for a particular
> workload has been researched and proven effective - for more information
> read the Facebook paper "Optimizing Function Placement for Large-Scale
> Data-Center Applications" (see references section below).
> 
> Image Size
> ----------
> Adding additional section headers as a result of compiling with
> -ffunction-sections will increase the size of the vmlinux ELF file.
> With a standard distro config, the resulting vmlinux was increased by
> about 3%. The compressed image is also increased due to the header files,
> as well as the extra relocations that must be added. You can expect fgkaslr
> to increase the size of the compressed image by about 15%.
> 
> Memory Usage
> ------------
> fgkaslr increases the amount of heap that is required at boot time,
> although this extra memory is released when the kernel has finished
> decompression. As a result, it may not be appropriate to use this feature on
> systems without much memory.
> 
> Building
> --------
> To enable fine grained KASLR, you need to have the following config options
> set (including all the ones you would use to build normal KASLR)
> 
> CONFIG_FG_KASLR=y
> 
> In addition, fgkaslr is only supported for the X86_64 architecture.
> 
> Modules
> -------
> Modules are randomized similarly to the rest of the kernel by shuffling
> the sections at load time prior to moving them into memory. The module must
> also have been build with the -ffunction-sections compiler option.
> 
> Although fgkaslr for the kernel is only supported for the X86_64 architecture,
> it is possible to use fgkaslr with modules on other architectures. To enable
> this feature, select
> 
> CONFIG_MODULE_FG_KASLR=y
> 
> This option is selected automatically for X86_64 when CONFIG_FG_KASLR is set.
> 
> Disabling
> ---------
> Disabling normal KASLR using the nokaslr command line option also disables
> fgkaslr. It is also possible to disable fgkaslr separately by booting with
> nofgkaslr on the commandline.
> 
> References
> ----------
> There are a lot of academic papers which explore finer grained ASLR.
> This paper in particular contributed the most to my implementation design
> as well as my overall understanding of the problem space:
> 
> Selfrando: Securing the Tor Browser against De-anonymization Exploits,
> M. Conti, S. Crane, T. Frassetto, et al.
> 
> For more information on how function layout impacts performance, see:
> 
> Optimizing Function Placement for Large-Scale Data-Center Applications,
> G. Ottoni, B. Maher
> 
> Alexander Lobakin (7):
>   linkage: add macros for putting ASM functions into own sections
>   x86: conditionally place regular ASM functions into separate sections
>   FG-KASLR: use a scripted approach to handle .text.* sections
>   x86/boot: allow FG-KASLR to be selected
>   arm64/crypto: conditionally place ASM functions into separate sections
>   module: use a scripted approach for FG-KASLR
>   maintainers: add MAINTAINERS entry for FG-KASLR
> 
> Kees Cook (2):
>   x86/boot: Allow a "silent" kaslr random byte fetch
>   x86/boot/compressed: Avoid duplicate malloc() implementations

These two can get landed right away -- they're standalone fixes that
can safely go in -tip.

> 
> Kristen Carlson Accardi (9):
>   x86: tools/relocs: Support >64K section headers

Same for this.

>   x86: Makefile: Add build and config option for CONFIG_FG_KASLR
>   Make sure ORC lookup covers the entire _etext - _stext
>   x86/tools: Add relative relocs for randomized functions
>   x86: Add support for function granular KASLR
>   kallsyms: Hide layout
>   livepatch: only match unique symbols when using fgkaslr
>   module: Reorder functions
>   Documentation: add a documentation for FG-KASLR

I suspect it'll still be easier to review this series as a rebase v5
followed by the evolutionary improvements, since the "basic FGKASLR" has
been reviewed in the past, and is fairly noninvasive. The changes for
ASM, new .text rules, etc, make a lot more changes that I think would be
nice to have separate so reasonable a/b testing can be done.

I'll try to go through the individual patches soon, though I'm currently
pretty swamped. :)

I'm looking forward to having this feature finally landed; it's a nice
complement to future eXecute-Only memory work too.

-Kees

> 
> Masahiro Yamada (3):
>   kbuild: merge vmlinux_link() between the ordinary link and Clang LTO
>   kbuild: do not remove 'linux' link in scripts/link-vmlinux.sh
>   kbuild: merge vmlinux_link() between ARCH=um and other architectures
> 
> Sami Tolvanen (1):
>   kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
> 
>  .../admin-guide/kernel-parameters.txt         |   6 +
>  Documentation/security/fgkaslr.rst            | 172 ++++
>  Documentation/security/index.rst              |   1 +
>  MAINTAINERS                                   |  12 +
>  Makefile                                      |  17 +-
>  arch/Kconfig                                  |   3 +
>  arch/arm64/crypto/aes-ce-ccm-core.S           |  16 +-
>  arch/arm64/crypto/aes-ce-core.S               |  16 +-
>  arch/arm64/crypto/aes-ce.S                    |   4 +-
>  arch/arm64/crypto/aes-cipher-core.S           |   8 +-
>  arch/arm64/crypto/aes-modes.S                 |  16 +-
>  arch/arm64/crypto/aes-neon.S                  |   4 +-
>  arch/arm64/crypto/aes-neonbs-core.S           |  38 +-
>  arch/arm64/crypto/chacha-neon-core.S          |  18 +-
>  arch/arm64/crypto/crct10dif-ce-core.S         |  14 +-
>  arch/arm64/crypto/ghash-ce-core.S             |  24 +-
>  arch/arm64/crypto/nh-neon-core.S              |   4 +-
>  arch/arm64/crypto/poly1305-armv8.pl           |  17 +
>  arch/arm64/crypto/sha1-ce-core.S              |   4 +-
>  arch/arm64/crypto/sha2-ce-core.S              |   4 +-
>  arch/arm64/crypto/sha3-ce-core.S              |   4 +-
>  arch/arm64/crypto/sha512-armv8.pl             |  11 +
>  arch/arm64/crypto/sha512-ce-core.S            |   4 +-
>  arch/arm64/crypto/sm3-ce-core.S               |   4 +-
>  arch/arm64/crypto/sm4-ce-core.S               |   4 +-
>  arch/x86/Kconfig                              |   1 +
>  arch/x86/boot/compressed/Makefile             |   9 +-
>  arch/x86/boot/compressed/fgkaslr.c            | 905 ++++++++++++++++++
>  arch/x86/boot/compressed/kaslr.c              |   4 -
>  arch/x86/boot/compressed/misc.c               | 157 ++-
>  arch/x86/boot/compressed/misc.h               |  30 +
>  arch/x86/boot/compressed/utils.c              |  13 +
>  arch/x86/boot/compressed/vmlinux.symbols      |  19 +
>  arch/x86/crypto/aegis128-aesni-asm.S          |  36 +-
>  arch/x86/crypto/aes_ctrby8_avx-x86_64.S       |  12 +-
>  arch/x86/crypto/aesni-intel_asm.S             | 116 ++-
>  arch/x86/crypto/aesni-intel_avx-x86_64.S      |  32 +-
>  arch/x86/crypto/blake2s-core.S                |   8 +-
>  arch/x86/crypto/blowfish-x86_64-asm_64.S      |  16 +-
>  arch/x86/crypto/camellia-aesni-avx-asm_64.S   |  28 +-
>  arch/x86/crypto/camellia-aesni-avx2-asm_64.S  |  28 +-
>  arch/x86/crypto/camellia-x86_64-asm_64.S      |  16 +-
>  arch/x86/crypto/cast5-avx-x86_64-asm_64.S     |  24 +-
>  arch/x86/crypto/cast6-avx-x86_64-asm_64.S     |  20 +-
>  arch/x86/crypto/chacha-avx2-x86_64.S          |  12 +-
>  arch/x86/crypto/chacha-avx512vl-x86_64.S      |  12 +-
>  arch/x86/crypto/chacha-ssse3-x86_64.S         |  16 +-
>  arch/x86/crypto/crc32-pclmul_asm.S            |   4 +-
>  arch/x86/crypto/crc32c-pcl-intel-asm_64.S     |   4 +-
>  arch/x86/crypto/crct10dif-pcl-asm_64.S        |   4 +-
>  arch/x86/crypto/des3_ede-asm_64.S             |   8 +-
>  arch/x86/crypto/ghash-clmulni-intel_asm.S     |  12 +-
>  arch/x86/crypto/nh-avx2-x86_64.S              |   4 +-
>  arch/x86/crypto/nh-sse2-x86_64.S              |   4 +-
>  arch/x86/crypto/poly1305-x86_64-cryptogams.pl |   8 +-
>  arch/x86/crypto/serpent-avx-x86_64-asm_64.S   |  20 +-
>  arch/x86/crypto/serpent-avx2-asm_64.S         |  20 +-
>  arch/x86/crypto/serpent-sse2-i586-asm_32.S    |   8 +-
>  arch/x86/crypto/serpent-sse2-x86_64-asm_64.S  |   8 +-
>  arch/x86/crypto/sha1_avx2_x86_64_asm.S        |   4 +-
>  arch/x86/crypto/sha1_ni_asm.S                 |   4 +-
>  arch/x86/crypto/sha1_ssse3_asm.S              |   4 +-
>  arch/x86/crypto/sha256-avx-asm.S              |   4 +-
>  arch/x86/crypto/sha256-avx2-asm.S             |   4 +-
>  arch/x86/crypto/sha256-ssse3-asm.S            |   4 +-
>  arch/x86/crypto/sha256_ni_asm.S               |   4 +-
>  arch/x86/crypto/sha512-avx-asm.S              |   4 +-
>  arch/x86/crypto/sha512-avx2-asm.S             |   4 +-
>  arch/x86/crypto/sha512-ssse3-asm.S            |   4 +-
>  arch/x86/crypto/twofish-avx-x86_64-asm_64.S   |  20 +-
>  arch/x86/crypto/twofish-i586-asm_32.S         |   8 +-
>  arch/x86/crypto/twofish-x86_64-asm_64-3way.S  |   8 +-
>  arch/x86/crypto/twofish-x86_64-asm_64.S       |   8 +-
>  arch/x86/entry/entry_32.S                     |  24 +-
>  arch/x86/entry/entry_64.S                     |  18 +-
>  arch/x86/entry/thunk_32.S                     |   4 +-
>  arch/x86/entry/thunk_64.S                     |   8 +-
>  arch/x86/include/asm/boot.h                   |  13 +-
>  arch/x86/include/asm/paravirt.h               |   2 +-
>  arch/x86/include/asm/qspinlock_paravirt.h     |   2 +-
>  arch/x86/kernel/acpi/wakeup_32.S              |   9 +-
>  arch/x86/kernel/acpi/wakeup_64.S              |  10 +-
>  arch/x86/kernel/ftrace_32.S                   |  19 +-
>  arch/x86/kernel/ftrace_64.S                   |  28 +-
>  arch/x86/kernel/irqflags.S                    |   4 +-
>  arch/x86/kernel/kprobes/core.c                |   3 +-
>  arch/x86/kernel/kvm.c                         |   2 +-
>  arch/x86/kernel/relocate_kernel_32.S          |   2 +
>  arch/x86/kernel/relocate_kernel_64.S          |   2 +
>  arch/x86/kernel/vmlinux.lds.S                 |   6 +-
>  arch/x86/kvm/emulate.c                        |   2 +-
>  arch/x86/kvm/vmx/vmenter.S                    |   8 +-
>  arch/x86/lib/clear_page_64.S                  |  12 +-
>  arch/x86/lib/cmpxchg16b_emu.S                 |   4 +-
>  arch/x86/lib/copy_mc_64.S                     |   8 +-
>  arch/x86/lib/copy_page_64.S                   |   7 +-
>  arch/x86/lib/copy_user_64.S                   |  18 +-
>  arch/x86/lib/csum-copy_64.S                   |   4 +-
>  arch/x86/lib/error-inject.c                   |   3 +-
>  arch/x86/lib/getuser.S                        |  37 +-
>  arch/x86/lib/hweight.S                        |   9 +-
>  arch/x86/lib/iomap_copy_64.S                  |   4 +-
>  arch/x86/lib/kaslr.c                          |  18 +-
>  arch/x86/lib/memmove_64.S                     |   4 +-
>  arch/x86/lib/memset_64.S                      |  12 +-
>  arch/x86/lib/msr-reg.S                        |   8 +-
>  arch/x86/lib/putuser.S                        |  18 +-
>  arch/x86/mm/mem_encrypt_boot.S                |   8 +-
>  arch/x86/platform/efi/efi_stub_64.S           |   4 +-
>  arch/x86/platform/efi/efi_thunk_64.S          |   4 +-
>  arch/x86/power/hibernate_asm_32.S             |  14 +-
>  arch/x86/power/hibernate_asm_64.S             |  14 +-
>  arch/x86/tools/relocs.c                       | 135 ++-
>  arch/x86/tools/relocs.h                       |   4 +-
>  arch/x86/tools/relocs_common.c                |  15 +-
>  arch/x86/xen/xen-asm.S                        |  49 +-
>  arch/x86/xen/xen-head.S                       |  10 +-
>  include/asm-generic/vmlinux.lds.h             |  41 +-
>  include/linux/decompress/mm.h                 |  12 +-
>  include/linux/linkage.h                       |  76 ++
>  include/uapi/linux/elf.h                      |   1 +
>  init/Kconfig                                  |  51 +
>  kernel/kallsyms.c                             | 158 ++-
>  kernel/livepatch/core.c                       |  11 +
>  kernel/module.c                               |  91 +-
>  scripts/Makefile.build                        |  27 +-
>  scripts/Makefile.lib                          |   7 +
>  scripts/Makefile.modfinal                     |  36 +-
>  scripts/Makefile.modpost                      |  22 +-
>  scripts/gen_autoksyms.sh                      |  12 -
>  scripts/generate_text_sections.pl             | 149 +++
>  scripts/link-vmlinux.sh                       | 104 +-
>  scripts/module.lds.S                          |  14 +-
>  133 files changed, 2771 insertions(+), 757 deletions(-)
>  create mode 100644 Documentation/security/fgkaslr.rst
>  create mode 100644 arch/x86/boot/compressed/fgkaslr.c
>  create mode 100644 arch/x86/boot/compressed/utils.c
>  create mode 100644 arch/x86/boot/compressed/vmlinux.symbols
>  create mode 100755 scripts/generate_text_sections.pl
> 
> -- 
> 2.31.1
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108311010.8250B34D5%40keescook.
