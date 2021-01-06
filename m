Return-Path: <clang-built-linux+bncBAABBAXJ3D7QKGQEZIV3CBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 656982EC5FA
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 23:06:59 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id w3sf3342511qti.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 14:06:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609970818; cv=pass;
        d=google.com; s=arc-20160816;
        b=D8iiKhf6EO37K0gJ3wYiy5AobziusJ3VQ4MFnP5Dc8JeLwlQ4I+Uumi7Ou7e48xemY
         yRYg/JbbCUAWvLSTC+elUU8EXzm/NOvzBCxRoUupuvd7T0uu7N6gWNoqMR/jZ4cCR7YE
         2v8/1RCllI7gfFMRbz+w0TsqHSce34Y3AzjjNuJxLnlI4ZskVfO0dKVBRUYO/neoUPFU
         wuqMTh4UygdfX5dEUbbqJsYgyJrtC3yk9RhF7OFhjHMGLB0yoHcntf20ZFVAEPr7IU0a
         ai+t1zAhuKRIWvejwS2w4CGuSedwx/6NE9LjrOTtOfS0qUQBYvGfaIDtoz2KVQGlOqf4
         5L0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=w6/2Ae1JOQ0+aPXZk6rSLk2ZCI8T2dsbP/7WDc/ADHc=;
        b=lhZ8RROJk1RByzf5mYYeuCnh38u+USVJMy6An7KGAn6tWaNfZFsQcva2FIwCPU2BNS
         /gwp1q+m1N7GaP7XFAVN8IX0jPmkHK7Uojtsn98+EBhNjid0eP0MuaXWlGlzRLMMTc6V
         93ahw2ebJwh7PaAn1onR3VVHOGI6vtzr5u3oc4u48kwXezW3bnJY5YKAGuMIolnrHCxI
         Jyj404g+a1ww+hu9rDZbjBa6pC0u4RxSsZ4dsK/aMbwWKSJL8lgpqNVJ3yfVX2mn4RWT
         cBT1avpLm30ePD3OfFQHMF+ukb2Qg+fu/2so0nJsd40DH9Yrruvjyr2QHEieL2us1dve
         mwYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=s4kUfmRS;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w6/2Ae1JOQ0+aPXZk6rSLk2ZCI8T2dsbP/7WDc/ADHc=;
        b=IyfEb4ilX3Mjn0XKqjgpMqfBC3fv4pfQ4moGpxj0v8Qhcx567w7m9xsv+g12OwOEaP
         ikblZz6I6EMHLl9Rw3TNvs4FlSwqOxZTnB4C1iI/ILXtajoZ43szPQiiAjiH89fT1eNd
         WyrJ6QyrcA6hdVD4K9uTC9ctnLp6LJnUeHbW/ILGVTphquEj+u1QEEpS6hk4Bnan+cHu
         HbM4vhc8zPgIbVL33frEQPvqtKezELYChsTwe4zkO1oho45hjOqse5KDuwunQ5hn0WvL
         DF0gxCQQOQ5/Psc8wg+rjs3rqRNoy/ZBshRqSId5j4Y15LPn/5J/reGeBNiTFjqJaHQd
         xyjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w6/2Ae1JOQ0+aPXZk6rSLk2ZCI8T2dsbP/7WDc/ADHc=;
        b=krKJCS31uTYq528q/9SWnW/F9MLkfCXySxnT8I1kivn5QNwOQDfEscM/DVPrNKxA64
         vENvn5HPqvP7V17YLElr+hFpcu5V9gDfbByNTIO7dJxvxai0OvDiXI5IEpCV6GCVFRDO
         TkLYJ648l4+yCUenylKZyvNRflbXhaQSyG9P8fFAqoL3+rEpN8fzTg2a4gLzsLUNvzD2
         UuDRVQ1VSDhiCCG6hUS84LlXCxjRX30WO5KhodIr6F5uCScHW/NUIc9FcrWIFzsxRDYq
         Iq2B0DrCn4SL7S7LbPc/G5wfOVjNIm1zN1WK+zdXeiYzzpXgzOoGUHk7fSo66Q6/C4Jc
         8bfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338mgoPMNo53wvW7DiVs2/wZvCMvFfmiYqhyLokbXQUXJaPSlic
	/oYEI2mDsEGZUHQh0th8xJ0=
X-Google-Smtp-Source: ABdhPJwYu+E1iV7UHfjpw9/4NZAMn4LVcgK9kGDIUYKkpjuzD2jNpjhG2HFyJBcfip4jmbIfbJJVnw==
X-Received: by 2002:a0c:e9c2:: with SMTP id q2mr6078660qvo.1.1609970818173;
        Wed, 06 Jan 2021 14:06:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9a4f:: with SMTP id c76ls2544711qke.8.gmail; Wed, 06 Jan
 2021 14:06:57 -0800 (PST)
X-Received: by 2002:a05:620a:158e:: with SMTP id d14mr6387700qkk.358.1609970817863;
        Wed, 06 Jan 2021 14:06:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609970817; cv=none;
        d=google.com; s=arc-20160816;
        b=aJqjuldu5/VTJW93wbQx4QyJFACFevCJUwcqcBW+207fDxQ2/vYofESKlnhLljBstJ
         Rq2oMxnXLRf1CLJ16Zao19XUoPQfwn6zOVXg7NOY5l1JKXAW1/Y8x3dHTBx+ELi+QAzJ
         8eeuPBiKx1eaBZGAkPAs4sKF+dvsTm3I6ijySppWNfQ0frGzUmY4SWml7yaDGB27dTR8
         3nBHPCOQtJs+CUXxeIgZEBeaIkCPdVM+15bmaDs+gCBLOyywWFuIxVvojnISPMdb9/WR
         LNTdpj6kjap6mhmjEjx0haWlnlmhhs7UODje/jmLB+ymXpzu8F50mQe8nur3x+Dgx3Tb
         0vhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FiARm78NP8eDMpMf+nbOEpVbv/lSgXGRF3g3hoPBOF4=;
        b=pfUPs2FEKtIgDL2R7Di9vbWr/1eEDQIKt7H0yIWbRsFLe2gc77Dvd1P0TApfC6yF9u
         e/u9vRRLjSkk5pOwJv9N976PVbm1TIi77XtS/b2V6f/qO4cg6nNL5wehcLsEggFJTu6B
         Fmka6t+OzWl+bWk+n6g8F9rQMse+plx4vVeEiPLhojQibiCDjqFmLlEgYH67tKHgzjtv
         rngKDlZHF4LT2Seoc6oCxuWpS/pkE1UEv1DFSqCBW3rmwMUDNActqyfh7YB19704moej
         h2abx8GKbCXQ36W8zx/XwuR50NmVLqUdiUfaTUZfopT00fx7Wgi6wS69eLPifqTwwXj5
         HmDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=s4kUfmRS;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m11si141263qkn.1.2021.01.06.14.06.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 14:06:57 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AEC852313C
	for <clang-built-linux@googlegroups.com>; Wed,  6 Jan 2021 22:06:56 +0000 (UTC)
Received: by mail-ot1-f45.google.com with SMTP id 11so4463446oty.9
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 14:06:56 -0800 (PST)
X-Received: by 2002:a05:6830:2413:: with SMTP id j19mr4857998ots.251.1609970816014;
 Wed, 06 Jan 2021 14:06:56 -0800 (PST)
MIME-Version: 1.0
References: <20201230154749.746641-1-arnd@kernel.org> <CANpmjNNGmbgg_pFMC6X_6vZcj53jy7PsNyZAC88rOQC5zrOiFw@mail.gmail.com>
 <20210104223336.GA2562866@ubuntu-m3-large-x86> <CAK8P3a3J1HGia3cPy+ArFQGzQWj1gy8bx7DdjnRFE=1+JmsrKw@mail.gmail.com>
 <CAK8P3a01iSXxc+05sTtSWvxSYX=g4J1vK-nfnn5oNkR8FO_OTQ@mail.gmail.com> <20210106213853.GA3617315@ubuntu-m3-large-x86>
In-Reply-To: <20210106213853.GA3617315@ubuntu-m3-large-x86>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 6 Jan 2021 23:06:39 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3JHLKc=1V_6mgvQeS_oP+_Y=m_nhHzWSPrs2S+p7gvMg@mail.gmail.com>
Message-ID: <CAK8P3a3JHLKc=1V_6mgvQeS_oP+_Y=m_nhHzWSPrs2S+p7gvMg@mail.gmail.com>
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
 header.i=@kernel.org header.s=k20201202 header.b=s4kUfmRS;       spf=pass
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

On Wed, Jan 6, 2021 at 10:38 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> On Wed, Jan 06, 2021 at 10:12:51AM +0100, Arnd Bergmann wrote:
> > On Tue, Jan 5, 2021 at 10:25 AM Arnd Bergmann <arnd@kernel.org> wrote:
> > >
> > > On Mon, Jan 4, 2021 at 11:33 PM Nathan Chancellor
> > > <natechancellor@gmail.com> wrote:
> > > > On Wed, Dec 30, 2020 at 05:13:03PM +0100, Marco Elver wrote:
> > > > > On Wed, 30 Dec 2020 at 16:47, Arnd Bergmann <arnd@kernel.org> wrote:
> > > > > >
> > > > > > From: Arnd Bergmann <arnd@arndb.de>
> > > > > >
> > > > > > Building ubsan kernels even for compile-testing introduced these
> > > > > > warnings in my randconfig environment:
> > > > > >
> > > > > > crypto/blake2b_generic.c:98:13: error: stack frame size of 9636 bytes in function 'blake2b_compress' [-Werror,-Wframe-larger-than=]
> > > > > > static void blake2b_compress(struct blake2b_state *S,
> > > > > > crypto/sha512_generic.c:151:13: error: stack frame size of 1292 bytes in function 'sha512_generic_block_fn' [-Werror,-Wframe-larger-than=]
> > > > > > static void sha512_generic_block_fn(struct sha512_state *sst, u8 const *src,
> > > > > > lib/crypto/curve25519-fiat32.c:312:22: error: stack frame size of 2180 bytes in function 'fe_mul_impl' [-Werror,-Wframe-larger-than=]
> > > > > > static noinline void fe_mul_impl(u32 out[10], const u32 in1[10], const u32 in2[10])
> > > > > > lib/crypto/curve25519-fiat32.c:444:22: error: stack frame size of 1588 bytes in function 'fe_sqr_impl' [-Werror,-Wframe-larger-than=]
> > > > > > static noinline void fe_sqr_impl(u32 out[10], const u32 in1[10])
> > > > > >
> > > > > > Further testing showed that this is caused by
> > > > > > -fsanitize=unsigned-integer-overflow.
> > > > > >
> > > > > > The one in blake2b immediately overflows the 8KB stack area on 32-bit
> > > > > > architectures, so better ensure this never happens by making this
> > > > > > option gcc-only.
> > > >
> > > > This patch also fixes the failed BUILD_BUG issue in mm/mremap.c that you
> > > > sent a patch for [1], along with a couple of other issues I see such as:
> > >
> > > I'm fairly sure I still saw that BUILD_BUG() even after I had applied this
> > > patch, I would guess that one just depends on inlining decisions that
> > > are influenced by all kinds of compiler options including
> > > -fsanitize=unsigned-integer-overflow, so it becomes less likely.
> > >
> > > I'll revert my other patch in the randconfig tree to see if it comes back.
> >
> > The qcom/gpi.c failure still happens with this patch applied:
> >
> > In file included from /git/arm-soc/drivers/dma/qcom/gpi.c:8:
> > In function 'field_multiplier',
> >     inlined from 'gpi_update_reg' at
> > /git/arm-soc/include/linux/bitfield.h:124:17:
> > /git/arm-soc/include/linux/bitfield.h:119:3: error: call to
> > '__bad_mask' declared with attribute error: bad bitfield mask
> >   119 |   __bad_mask();
> >       |   ^~~~~~~~~~~~
> > In function 'field_multiplier',
> >     inlined from 'gpi_update_reg' at
> > /git/arm-soc/include/linux/bitfield.h:154:1:
> > /git/arm-soc/include/linux/bitfield.h:119:3: error: call to
> > '__bad_mask' declared with attribute error: bad bitfield mask
> >   119 |   __bad_mask();
> >       |   ^~~~~~~~~~~~
> >
> > See https://pastebin.com/8UH6x4A2 for the .config
> >
> >        Arnd
>
> That config does not build for me, am I holding it wrong?
>
> $ curl -LSso .config https://pastebin.com/raw/8UH6x4A2

Sorry about that, you ran into a bug that I have applied a
local fix for. You could enable CONFIG_EPOLL, or apply
this patch:

https://lore.kernel.org/linux-arm-kernel/20200429132349.1294904-1-arnd@arndb.de/

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3JHLKc%3D1V_6mgvQeS_oP%2B_Y%3Dm_nhHzWSPrs2S%2Bp7gvMg%40mail.gmail.com.
