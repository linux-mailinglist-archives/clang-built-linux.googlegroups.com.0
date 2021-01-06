Return-Path: <clang-built-linux+bncBAABBJP62X7QKGQEGHF62UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id E74A12EBB93
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 10:13:10 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id x12sf1357282plr.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 01:13:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609924389; cv=pass;
        d=google.com; s=arc-20160816;
        b=DtY/8yGcPzEu70twCSCP7kpvTVkfPZi+2QEoW+OnZlgUJcKEwLXhObpLbGEV0BF+Vf
         OQo4wtaZQI2PY7xil4QOBrafeICgMRbyBSAmqJcLX8tfm2MQq96IaiFKulFAkiXzjs41
         loWQVGZujuKo0sgc66QfKdyYiR7+v8qJhYKzjFNvS1WZWxgzzP1MpgVqjs6rQZte4IKK
         1TCu6g5IEXFdD5MJkPw1UvFWgEBFt8FA8P7hzvZyhoxbwu5ZU1Mbr9/uCYquPfRKU8Du
         Qy3nB+iq+0ak7bcbppPWS/5Y6/b1qK1wmrHiVNJG5Cwt0YCkcIvWd/EHG+61HShDTJIy
         6A9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=eEz5PNyKd6tnlf98lv1wGYmDYO4UdR2hkfue8Lsctgk=;
        b=rt/JGAknJNVm5edbB3ZP/UY0eBQ2njNT2rZbGyRdBKzxp3stxPiSE23MpfTtUjBDdM
         tYD6A1++VUrCzfZd66fApKGfs0ULmnIlW1VTVhegeL2dyZCPOTbOH2zRQOcwSkFZN5nY
         7S6eATPu9l0whO4v8i6pG4cdz3DEWji2odQYSVrs4CPmH1LfwhdPTNM+lqKG+cfxAgzj
         6S6OOnj5KKOv0YxUAg/XYGPfZyXtaBkmukVyfYA7Tk+WvOY1DAaeunS3hJq/f3SB1iJC
         WZsjnkemnCBmP4WNYIFQ1mLSGvm8+3o5YkMt0xOU9OUgz+RObf3cv5OzumDf42lkTETd
         Fgrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qAVGSrCc;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eEz5PNyKd6tnlf98lv1wGYmDYO4UdR2hkfue8Lsctgk=;
        b=cJICz38nJX9lCON9IeluL24mVnztH7lDR2RpaCecztiRr65W0xAQmgCqD6MEH6nYda
         07mGc5XGNyW4FihxvNT9EGLG8IlbequkBk2lf5I+LEXhVU00tK5HKssz81BqCl+P242l
         jMpy/nPHytk2lWikwCqYauiwNFiBQ/pBGXdO/B7luDVlSN+ksvsvDhXafKrVPqMRG+gR
         G0+pjGGnmiyrF3oGgWb4KzCr6N5bCBl86t/Mj5UDvUpXhkcwtPq+X/whlGuAnqZIVNOH
         ttYIcdhqT0d0extBTARMCs1Pi8MZoPzOYAB6RRE4KTPchqqc/gO1SHFgh70UDh7oRxuK
         EGyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eEz5PNyKd6tnlf98lv1wGYmDYO4UdR2hkfue8Lsctgk=;
        b=g4nBA4ms8eTYi99PqENIhnVYLcP5e+ibh9s7lTPxzDsRZiI88DLRD91nxYEV58RDKG
         Z1gntBDeVZSSyeqIrBvEQBrx34Z1Uqrilgl28nqG6fRlgK6qWeivvQserodWK5ENCNs1
         cDebbKi0S1ZTqPNdFCej71MkjCGwiWneG0Q1HANyDE/gl+VCmp021o52zg3gWkScyBlF
         EoPOnz8ZUfDSJHsdgGXJQDQ2IbQBz0sNnllHRp2gDV1uWrfcVIPel3OHpzoct5WMDIjU
         5Zb8dkUnsQez/aTs5L7ytkHcGyQoGTjMK0vslHjyiKi0VxNDxPkhinKz3PXCGO13BMDw
         l9JA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308VVNWBsPxN4ENCuX4xr80Xyjw0vAHPAiHs11Bt6KgcwEO+aQO
	8QSzCdwB625FNl4LX9Lr4+4=
X-Google-Smtp-Source: ABdhPJy0zENNKOAG1FLcnjvaoR0T3jzjgv1QtXvp7GTTNtqcNZ6ZW5UtDVB2ko0lAgUhLXpBE+J3iA==
X-Received: by 2002:a17:902:9a90:b029:da:ba07:efdc with SMTP id w16-20020a1709029a90b02900daba07efdcmr3702138plp.1.1609924389687;
        Wed, 06 Jan 2021 01:13:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6d0e:: with SMTP id i14ls1015824pgc.8.gmail; Wed, 06 Jan
 2021 01:13:09 -0800 (PST)
X-Received: by 2002:a63:c04b:: with SMTP id z11mr3571006pgi.74.1609924389195;
        Wed, 06 Jan 2021 01:13:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609924389; cv=none;
        d=google.com; s=arc-20160816;
        b=Ka3l8X4J7/3A1T/DAl9qlUpEFRH3z08MpNP9CybfAvk52K/vRoACAWOGm7/hzoJYWB
         +U82t3T1/4dWupAU8iGhQ9wmRAINZnRAQGajYCkv4TRTsunyd37phHYkCswje/F4UzGD
         vru6SZNeGbHNbiVWC3wiGspbkpqSbfIzR0su1dDdIRGt2xaqDgVP49Xa2i1ozq5L9Wm+
         qMYcfhPW3NsrVAc7T8UrJyOqB+GNuRjFX6VuZD3LFJ2TIZAEkbEA2p9O7spV4q2lKHvU
         I16KmtZgbC8cs3y2H/sFUDEUm8zz+PQ4X+xOhRrO4OvkOo8nQRUSTraUvBudV2iZYHKk
         +c3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ICMP2u3WRFc/tixGCdtSPzQuRGVhVQSpv0A6xqD2xqY=;
        b=iMn6LrIvS/uR5PHac4LK6tBIjkd8rS0xGWtJyv2fNC39rIUkMxGwczl1lDZMO85dTJ
         Hd1bkuW8BvN6D3qn16ot99xHpil3MBQ5k4odxu8VVx0pa/BynIXTfMel99AmZZGBzhSQ
         djVqBqtpkW8mc9u4kU+ltzISa2j97w/Ml1QUwFWKwXIu6Z8a/oeLUWam4PV9wvFPKYwE
         WxuQX9Ta1OKRDASqUsDTn+6eXy9mMi2ioNc7/j2yODZRDuQ02ZPRWdNAaNL17jbRF8GI
         RnCf89jO1hZR4AoWH9c5Ulu/EX8KYa1SQGAROsLLK9z6paIxnMsC6v9kg4cwjzlSC2K/
         6xBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qAVGSrCc;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 13si159670pgf.0.2021.01.06.01.13.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 01:13:09 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9DB9F2310B
	for <clang-built-linux@googlegroups.com>; Wed,  6 Jan 2021 09:13:08 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id 9so2788341oiq.3
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 01:13:08 -0800 (PST)
X-Received: by 2002:aca:44d:: with SMTP id 74mr2623761oie.4.1609924387851;
 Wed, 06 Jan 2021 01:13:07 -0800 (PST)
MIME-Version: 1.0
References: <20201230154749.746641-1-arnd@kernel.org> <CANpmjNNGmbgg_pFMC6X_6vZcj53jy7PsNyZAC88rOQC5zrOiFw@mail.gmail.com>
 <20210104223336.GA2562866@ubuntu-m3-large-x86> <CAK8P3a3J1HGia3cPy+ArFQGzQWj1gy8bx7DdjnRFE=1+JmsrKw@mail.gmail.com>
In-Reply-To: <CAK8P3a3J1HGia3cPy+ArFQGzQWj1gy8bx7DdjnRFE=1+JmsrKw@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 6 Jan 2021 10:12:51 +0100
X-Gmail-Original-Message-ID: <CAK8P3a01iSXxc+05sTtSWvxSYX=g4J1vK-nfnn5oNkR8FO_OTQ@mail.gmail.com>
Message-ID: <CAK8P3a01iSXxc+05sTtSWvxSYX=g4J1vK-nfnn5oNkR8FO_OTQ@mail.gmail.com>
Subject: Re: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Marco Elver <elver@google.com>, Kees Cook <keescook@chromium.org>, 
	Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, George Popescu <georgepope@android.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=qAVGSrCc;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Jan 5, 2021 at 10:25 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Mon, Jan 4, 2021 at 11:33 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> > On Wed, Dec 30, 2020 at 05:13:03PM +0100, Marco Elver wrote:
> > > On Wed, 30 Dec 2020 at 16:47, Arnd Bergmann <arnd@kernel.org> wrote:
> > > >
> > > > From: Arnd Bergmann <arnd@arndb.de>
> > > >
> > > > Building ubsan kernels even for compile-testing introduced these
> > > > warnings in my randconfig environment:
> > > >
> > > > crypto/blake2b_generic.c:98:13: error: stack frame size of 9636 bytes in function 'blake2b_compress' [-Werror,-Wframe-larger-than=]
> > > > static void blake2b_compress(struct blake2b_state *S,
> > > > crypto/sha512_generic.c:151:13: error: stack frame size of 1292 bytes in function 'sha512_generic_block_fn' [-Werror,-Wframe-larger-than=]
> > > > static void sha512_generic_block_fn(struct sha512_state *sst, u8 const *src,
> > > > lib/crypto/curve25519-fiat32.c:312:22: error: stack frame size of 2180 bytes in function 'fe_mul_impl' [-Werror,-Wframe-larger-than=]
> > > > static noinline void fe_mul_impl(u32 out[10], const u32 in1[10], const u32 in2[10])
> > > > lib/crypto/curve25519-fiat32.c:444:22: error: stack frame size of 1588 bytes in function 'fe_sqr_impl' [-Werror,-Wframe-larger-than=]
> > > > static noinline void fe_sqr_impl(u32 out[10], const u32 in1[10])
> > > >
> > > > Further testing showed that this is caused by
> > > > -fsanitize=unsigned-integer-overflow.
> > > >
> > > > The one in blake2b immediately overflows the 8KB stack area on 32-bit
> > > > architectures, so better ensure this never happens by making this
> > > > option gcc-only.
> >
> > This patch also fixes the failed BUILD_BUG issue in mm/mremap.c that you
> > sent a patch for [1], along with a couple of other issues I see such as:
>
> I'm fairly sure I still saw that BUILD_BUG() even after I had applied this
> patch, I would guess that one just depends on inlining decisions that
> are influenced by all kinds of compiler options including
> -fsanitize=unsigned-integer-overflow, so it becomes less likely.
>
> I'll revert my other patch in the randconfig tree to see if it comes back.

The qcom/gpi.c failure still happens with this patch applied:

In file included from /git/arm-soc/drivers/dma/qcom/gpi.c:8:
In function 'field_multiplier',
    inlined from 'gpi_update_reg' at
/git/arm-soc/include/linux/bitfield.h:124:17:
/git/arm-soc/include/linux/bitfield.h:119:3: error: call to
'__bad_mask' declared with attribute error: bad bitfield mask
  119 |   __bad_mask();
      |   ^~~~~~~~~~~~
In function 'field_multiplier',
    inlined from 'gpi_update_reg' at
/git/arm-soc/include/linux/bitfield.h:154:1:
/git/arm-soc/include/linux/bitfield.h:119:3: error: call to
'__bad_mask' declared with attribute error: bad bitfield mask
  119 |   __bad_mask();
      |   ^~~~~~~~~~~~

See https://pastebin.com/8UH6x4A2 for the .config

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a01iSXxc%2B05sTtSWvxSYX%3Dg4J1vK-nfnn5oNkR8FO_OTQ%40mail.gmail.com.
