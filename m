Return-Path: <clang-built-linux+bncBC2ORX645YPRB5H27SBQMGQEHFKIBKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 00942366116
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 22:45:41 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id n22-20020a4ad4160000b02901e94af54f75sf7767516oos.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 13:45:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618951540; cv=pass;
        d=google.com; s=arc-20160816;
        b=f8HESuqB1zUtC9YfXJFWy0fRln/D2vHQK4LcVYuJSKUlYcmpev4tXrXkxtTUh1tXhx
         7GeRV6+jiMYiYVzf+Aq3DsJZ2WbaKSuHyXYjnGC4VyJXRjJo9joV+WlWYts/Vt0CaFPL
         jpY6fPM50BMBAbMHvE038XLF2O6V/wkytjH2JBmCJmRpfxp/ulTQQFXlY292BQZYmSyG
         L4AITSatUsA6tvMWTaTTav3BjHet+CcsIO2uRsV4EL+19pGWXSXU254cOEskS9sRgLnE
         emcAsvukRaw6hh2SOR543+ERiA5fkydxhPQvHl/S2/W+1aBukUWwXUFGubpZdeS5Zs1B
         6s2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gauTLWW3Vq4ynS1/EhYflS2g02uZ4MXVDUEw1+88Cog=;
        b=NUE4a53uWOvkI+sL7GvfseA/4oEQ8ZSv/8cfIeYOKY3uUKfM2Jgutqb6ucNvon7Zh2
         W+I5+C0gbWZKdTKkm5G/zGaPjGunCXKEKenyeyDfffRNMrQ0xYQg+buFqTqbOFzYW2rS
         gm5JUj9sssWm9RhzKgsWVX0RxGQ8MYOIq6CrSI3Z14sntH1k26Dr57GxThbsc9PJtB97
         DWCFJALrfZgEf8p3y+IUEzM1ijUw+hMUzoPR55pGFeAV0Ud2Uc6t9WjiCBq3cFwLUeGp
         6jf5k9h9NXD9X3cJJA1Q8SUCjgPqjmXctjjgslqjVkhs3zDG69avZpvSow/eiwNxLV8Z
         JXBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JmEmQ1D+;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gauTLWW3Vq4ynS1/EhYflS2g02uZ4MXVDUEw1+88Cog=;
        b=sZ8beSMAlsPIJuG/BQI/KU9/atzGatcM+DAXXJPzyJHzOmOSYIYHR5bE14fNdCcoc8
         AkyJTmqny3uFHjxvleTz6WeERCfBa4oT1Cu9BtdEG3VFiDWNqtegqkR6+tEMLYmx8dXR
         WUINvxXfn2njRVqoFaVJYj4edbalYaMM69UZHU2wiDoFxPBawnnUYznIxD5oItRdDwtK
         OyquFGZuaMdU5jcHAORBAfluvf0WB3PMreqTcJvV1AmY0DKVOAWVRfJombEc7Qleh/Vx
         tUE8yQwI2+y+9jhfg5sJK8e4IuT980Mii6VhnNC+ZFh+WKWO60SVj/DBEWoyu72unkeg
         ozhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gauTLWW3Vq4ynS1/EhYflS2g02uZ4MXVDUEw1+88Cog=;
        b=GnYn47ZS9SgQj6bR8jn2cVBCTz25XFiA7O6YNezomH1o7suIauGgVrTu97GGgmG1tl
         b3YpVZqjXv2Yr3zNDurXuXnUF9qLMEaIGZ4z5n9l8OV6hQ0GI0eLhgfZo8+qJlYbrOEk
         EC5fVp4FrgN/zmm6Ps8EkddTu1EjqEJDmsdTc6GMzvsiZZxlFtQGwAS3KvEN/Sp7lvse
         7rCjM9vzwQyNH0RZm9YB19BdU3AzF36B4/nffJpdYCfvDO+OC27molZLg0hIuk0WKPm9
         pf0ql5ZUzjzauBTL8SkGyn1SMiEM5SI1C6yfO82VyW8QhSTnlCS2YHB5uRxK/x6DUjQM
         m3VA==
X-Gm-Message-State: AOAM531qQarnkXsF9qbf/yGeVj+2YEbzqjHvbiHf5oWLCMU6JmeqTHLW
	hysU52FEaPaKsHJ9OT8WIIs=
X-Google-Smtp-Source: ABdhPJyuMMbaMwYsjSKgz07blNW4H18PAfDA5HfDRnHzUbdnSGh9GJqaIwIlO9DQrS8s3sZ/2C4h3Q==
X-Received: by 2002:a4a:e873:: with SMTP id m19mr18494024oom.85.1618951540571;
        Tue, 20 Apr 2021 13:45:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:664f:: with SMTP id q15ls5845otm.3.gmail; Tue, 20 Apr
 2021 13:45:40 -0700 (PDT)
X-Received: by 2002:a05:6830:1550:: with SMTP id l16mr8177043otp.282.1618951540243;
        Tue, 20 Apr 2021 13:45:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618951540; cv=none;
        d=google.com; s=arc-20160816;
        b=1KE8tNQ/iw6px2USeJXcKunVa1ekPCqa4i7v+PurPgxFKUcB/+P8lS30dFfBZJZn4+
         MdDLd2TMqErmBWi464fPSiaAatfSN4dAMt0YDRLcuQsvo4jqL+yfwQ0MslBT8ld8sSu2
         5hBp8TTqS3nXWzV+yM2hF7LzNxtn0Z07RMBDw3vTufgDiic/LLstgupmTWlYi+YLGXMR
         HDN938WJxa6r7KqMuRyGXluRrbxoZmh9W9yGBA1otn2gcH3JxrPJSuoZI4YRcAgD96tr
         iDSKZTjEy3f25IOozj7xbs4P5Ep8wHv3K1mtUDdgMbcUwof4qjlRtG8dbY/6501Z877o
         hX/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PNWJnV/ujY0AN1/v5JQQqbaoBjz2BczeakSAfc9G65g=;
        b=Jv2XMJ9pbaKBqIwVQZ89gtEb3mqiyqobGH4hkj4TlkRvIQl8nG2XNjPpmCik3kzQIf
         oRtNm9gSSuHxCnsmV35yK8lYXxj8CONOQ3ijCxtpMi/CKcApErCmbvNVI46hVre/DwK9
         tlKTPruPTEh0BBxK6rGDVHx5NT3WPvAcIpxI1ybafZBBK0vwboygCwrCmwoxv7DcXSwd
         29s8ScsU0PNvi3BK5cbLxiF2J8csiuEHFCJXuk2yUP+dVbUN3k3ZXnoxlUVzqCjmjsvf
         KwCFvW/f0SGHf2D911vxYcLZM+EUq7TGA6E93luFSDx412m6tFoXeQxxU6bbCmbOc3yp
         D8BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JmEmQ1D+;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com. [2607:f8b0:4864:20::b33])
        by gmr-mx.google.com with ESMTPS id w16si24543oov.0.2021.04.20.13.45.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 13:45:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) client-ip=2607:f8b0:4864:20::b33;
Received: by mail-yb1-xb33.google.com with SMTP id 65so44620491ybc.4
        for <clang-built-linux@googlegroups.com>; Tue, 20 Apr 2021 13:45:40 -0700 (PDT)
X-Received: by 2002:a25:7085:: with SMTP id l127mr27992640ybc.293.1618951539670;
 Tue, 20 Apr 2021 13:45:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-3-samitolvanen@google.com> <20210420194747.3snxvaaa4amfnbah@treble>
In-Reply-To: <20210420194747.3snxvaaa4amfnbah@treble>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Apr 2021 13:45:28 -0700
Message-ID: <CABCJKufE2_z0SGhsbgu-Wu+L5TRhOktQO4wHgJg04RYcvoxAAA@mail.gmail.com>
Subject: Re: [PATCH 02/15] objtool: Add CONFIG_CFI_CLANG support
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JmEmQ1D+;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Apr 20, 2021 at 12:48 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Fri, Apr 16, 2021 at 01:38:31PM -0700, Sami Tolvanen wrote:
> > +static int fix_cfi_relocs(const struct elf *elf)
> > +{
> > +     struct section *sec, *tmpsec;
> > +     struct reloc *reloc, *tmpreloc;
> > +
> > +     list_for_each_entry_safe(sec, tmpsec, &elf->sections, list) {
> > +             list_for_each_entry_safe(reloc, tmpreloc, &sec->reloc_list, list) {
>
> These loops don't remove structs from the lists, so are the "safe"
> iterators really needed?
>
> > +                     struct symbol *sym;
> > +                     struct reloc *func_reloc;
> > +
> > +                     /*
> > +                      * CONFIG_CFI_CLANG replaces function relocations to refer
> > +                      * to an intermediate jump table. Undo the conversion so
> > +                      * objtool can make sense of things.
> > +                      */
>
> I think this comment could be clearer if it were placed above the
> function.
>
> > +                     if (!reloc->sym->sec->cfi_jt)
> > +                             continue;
> > +
> > +                     if (reloc->sym->type == STT_SECTION)
> > +                             sym = find_func_by_offset(reloc->sym->sec,
> > +                                                       reloc->addend);
> > +                     else
> > +                             sym = reloc->sym;
> > +
> > +                     if (!sym || !sym->sec)
> > +                             continue;
>
> This should be a fatal error, it probably means something's gone wrong
> with the reading of the jump table.
>
> > +
> > +                     /*
> > +                      * The jump table immediately jumps to the actual function,
> > +                      * so look up the relocation there.
> > +                      */
> > +                     func_reloc = find_reloc_by_dest_range(elf, sym->sec, sym->offset, 5);
>
> The jump instruction's reloc is always at offset 1, so this can maybe be
> optimized to:
>
>                         func_reloc = find_reloc_by_dest(elf, sym->sec, sym->offset+1);
>
> though of course that will probably break (future) arm64 objtool.  Maybe
> an arch-specific offset from the start of the insn would be good.
>
> > +                     if (!func_reloc || !func_reloc->sym)
> > +                             continue;
>
> This should also be an error.
>
> > +
> > +                     reloc->sym = func_reloc->sym;
>
> I think we should also do 'reloc->addend = 0', because of the
> STT_SECTION case:
>
>   0000000000000025  0000259e0000000b R_X86_64_32S           0000000000000000 .text..L.cfi.jumptable.8047 + 8
>
> which then translates to
>
>   0000000000000009  0000063200000004 R_X86_64_PLT32         0000000000000000 x2apic_prepare_cpu - 4
>
> so the original addend of '8' is no longer valid.  Copying the '-4'
> wouldn't be right either, because that only applies to a PLT32 text
> reloc.  A '0' should be appropriate for the 32S data reloc.
>
> This addend might not actually be read by any code, so it may not
> currently be an actual bug, but better safe than sorry.

Thank you for taking a look, Josh!  I'll fix these in the next version.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufE2_z0SGhsbgu-Wu%2BL5TRhOktQO4wHgJg04RYcvoxAAA%40mail.gmail.com.
