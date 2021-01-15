Return-Path: <clang-built-linux+bncBAABBTXSQWAAMGQETJ7XQ2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A60AA2F775E
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 12:15:27 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id o9sf5819156yba.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 03:15:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610709326; cv=pass;
        d=google.com; s=arc-20160816;
        b=V65GY2LIgpLx/+tmIl6TyVk1nC0fxwcCA5Bfhq7EJ3p8ffRrCFmpUPSNOAg/yVQQIq
         cprFenIf0AHm0G6vxig72mbpGzNlWs+/jHkVQf4AmjMmbz2/pUsSv42shCs8nT6h72ve
         dNsb1FtOtHZUZo7qUOJoIlBILmfkyMp6YY0S8sl53AmTq8/R+lApW6FEpEHb6+8xxqZ+
         hSyjdjS/J9btvV5HiOAncKuCJ0OsEbB3L8N7bApry2CLpj9ONG7G5ad0WGNHwHaMkDTi
         KSdXfCSsN4S9BdUPqzbm3Vm+2UmLqBNIvnDUs7TCbV96jpna29fBf+/WsWb2pRtnKKR8
         //6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=as4rcq3+xQN8TSJNeOuftsOZaWSHz77dPKBXdzTpgL0=;
        b=T9weQ5Pa4A3ywio/0LYSqIrtVQSI6z+0NDc4+R9Aa6EFrQ5KSdNSqhS6topZ857cza
         jtSfKsspvSfqA+wPgoE8qzzvZwRZU2BiyCChTVuC4a3YmWi5YCYT8pJnt+yyTe7A31BX
         SG/4ZPYc0pEcgnrS8EfBiuiBF1OZY9D+gEMKm6mauGGyoBGVcYr5QodBtaDSSO0rtxoT
         FkH7QRinNwtsIdHL5I2ppEFVRlD9ghQR4A7cpG6aaFaVKGrHHA96KpBQgsdaahYEtSXI
         hUihj5kk/gGdBDd3s6ZU2fZ2we566fsL093ZyMvxkWcm2KcIKDTBErgJiibiOc7n29M4
         BWXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="PD/jyBuF";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=as4rcq3+xQN8TSJNeOuftsOZaWSHz77dPKBXdzTpgL0=;
        b=rzHFjcaQwJYBF2tOZPAIDHx9s+iqi0gpk36F0Xcwr6tnt1Py6JcxT9BtqD/xawc5Jy
         QclthMmmxkIFi/0Yfo2trBua8IcvGugTsTfAGwV0f4EEdlvbdMsZnRZ0PGD2xBXcdIzw
         xZ7O2X/F4x0TiuUhn+kC3bPqtsvZS6D1+PgZYkhzl78XGYXRXSNdOithspoNxdHstI4X
         32NmmwIhAcRNzKNquK+PArBwOMAgdaZ9u9z6UvJPEKUkyR+SNeNP2fZL/b3z32poeOOw
         dykXLrSXAm+j56HCGdBhyxoYM7Jq66q9OCckd+CCzFcLVj7vwXPiDUtbFQli9siIMUsB
         PW3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=as4rcq3+xQN8TSJNeOuftsOZaWSHz77dPKBXdzTpgL0=;
        b=OVBPbla51h2tnNc93KLTAy5NVI+6F6iYuK6ahVTBhMzFAN0MQYmdX9WnMX8izhgj/b
         A5gMYWNt48jZI/60qu0BZ3UbVl0PJ1q0f8bU8ojo3nUo7cNjRePBA4OcyMR6xQQrrIRp
         VzOsAIy2CZxvVyaxztaMT7DuYMqY+t1r6bK90soXrEAwC1IrBf2gwdb89P9BEB0BLeAE
         7cy3o5yA6Blpa8LNrJBXSzHUgseb10agfFpIUMyd58POiMdS/9HfVQrFq6wamsqzqqlJ
         T/TLZrnn95AAAvhaCq9YsOUPqHxdYjS6w8dvghivjLAja7/S4SzpIgSW2DB+4ERJeQrf
         lUpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yHTrxqWJ+J0U0QtLz2QcKJyEOu4E0cUMB08seIiZQS0ZaKxqL
	kDyoEt0VmOL4JGzg4TVeciE=
X-Google-Smtp-Source: ABdhPJwXbBfNl0iDVC72VDVj0NvsXms38CocS60inwADX/P5qL86JkLBkBidZuDFhbFMgyG8L4ticQ==
X-Received: by 2002:a25:3cc3:: with SMTP id j186mr17842980yba.344.1610709326770;
        Fri, 15 Jan 2021 03:15:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2f84:: with SMTP id v126ls606569ybv.11.gmail; Fri, 15
 Jan 2021 03:15:26 -0800 (PST)
X-Received: by 2002:a5b:d11:: with SMTP id y17mr17149664ybp.414.1610709326378;
        Fri, 15 Jan 2021 03:15:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610709326; cv=none;
        d=google.com; s=arc-20160816;
        b=CGaZMFGD6PbEjFXQMSZpR8/0GHU4kPBgK/erZvDpZZNydPj0WgVFiDjtgvWn2n1aco
         SXYNqYmhVF9O4y+GsTtGwqRwMGa6TA1tcuXKMgqVMPZoBarokbZMmKVLYxobVH+ouBGO
         VdoW46FBFFt9yxE5qpeE9UMpRmOXBi+0wkJz87Mpf/F2pDWwUyLzz8wzaZA0bnK5iWdc
         Hv/eSdB5Ix2h34OSwts9nJotgPp933s4IptFrMtCyYT1lfy77kbEiQbXdIET/DMiW1vw
         ku5TpaAJJtOMyHx7+faBcJJ2r6407hbe11M2G4RXPEElBRQIkPJ1ZIfowi0exYOUPSUy
         Hagw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mQXGx1Rvu59/It788wEBNQfd3mYLMjph9by6DZmr3bk=;
        b=OTm7DLIEtrvkllc/RVdGATiri5KEo206Uer2Hd4uOev7dbPxPH2nxZvoIKCEtVOs01
         BFPWfuDz27VdoCUpAc7K63PhoGshCM3OLKkGDoR1xxrDCCjN7DVTairGHxGk8CaRVWQu
         tAe/g3FoCoQfbbKOdz5pSAFltaxkXwR6WHAItpNqAsNIwCWlQ42Av7xaAi+EOEDkTVd2
         +gS4oowhH7VnCSQmQOBObhZwB6o1G5MB1ECR13R3CXC1kqQDTm8lVcAnDVbyEerjWVgh
         TQybr5TxrY001CQXaMxCYY0cCY2TxkUaNXhYE4Ch4nI2910l99Sf6ywPF/6ZMk7vWOEN
         PXxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="PD/jyBuF";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r12si721991ybc.3.2021.01.15.03.15.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 03:15:26 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 55AB8221F7
	for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 11:15:25 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id x13so8157782oto.8
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 03:15:25 -0800 (PST)
X-Received: by 2002:a9d:741a:: with SMTP id n26mr615881otk.210.1610709324684;
 Fri, 15 Jan 2021 03:15:24 -0800 (PST)
MIME-Version: 1.0
References: <20210110115245.30762-1-alobakin@pm.me> <202101111153.AE5123B6@keescook>
 <20210111205649.18263-1-alobakin@pm.me> <20210111224305.GA22825@alpha.franken.de>
In-Reply-To: <20210111224305.GA22825@alpha.franken.de>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 15 Jan 2021 12:15:08 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2oUzcmN01RN==2zzhAiHHP-1rAScsp=nN=v6rWP+eekg@mail.gmail.com>
Message-ID: <CAK8P3a2oUzcmN01RN==2zzhAiHHP-1rAScsp=nN=v6rWP+eekg@mail.gmail.com>
Subject: Re: [PATCH v5 mips-next 0/9] MIPS: vmlinux.lds.S sections fixes & cleanup
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Alexander Lobakin <alobakin@pm.me>, Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, 
	Fangrui Song <maskray@google.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>, 
	Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, 
	"open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	"# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="PD/jyBuF";       spf=pass
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

On Mon, Jan 11, 2021 at 11:44 PM Thomas Bogendoerfer
<tsbogend@alpha.franken.de> wrote:
> On Mon, Jan 11, 2021 at 08:57:25PM +0000, Alexander Lobakin wrote:
> > From: Kees Cook <keescook@chromium.org>
> > Date: Mon, 11 Jan 2021 11:53:39 -0800
> >
> > > On Sun, Jan 10, 2021 at 11:53:50AM +0000, Alexander Lobakin wrote:
> > >> This series hunts the problems discovered after manual enabling of
> > >> ARCH_WANT_LD_ORPHAN_WARN. Notably:
> > >>  - adds the missing PAGE_ALIGNED_DATA() section affecting VDSO
> > >>    placement (marked for stable);
> > >>  - stops blind catching of orphan text sections with .text.*
> > >>    directive;
> > >>  - properly stops .eh_frame section generation.
> > >>
> > >> Compile and runtime tested on MIPS32R2 CPS board with no issues
> > >> using two different toolkits:
> > >>  - Binutils 2.35.1, GCC 10.2.1 (with Alpine patches);
> > >>  - LLVM stack: 11.0.0 and from latest Git snapshot.
> > >>
> > >> Since v4 [3]:
> > >>  - new: drop redundant .text.cps-vec creation and blind inclusion
> > >>    of orphan text sections via .text.* directive in vmlinux.lds.S;
> > >>  - don't assert SIZEOF(.rel.dyn) as it's reported that it may be not
> > >>    empty on certain machines and compilers (Thomas);
> > >>  - align GOT table like it's done for ARM64;
> > >>  - new: catch UBSAN's "unnamed data" sections in generic definitions
> > >>    when building with LD_DEAD_CODE_DATA_ELIMINATION;
> > >>  - collect Reviewed-bys (Kees, Nathan).
> > >
> > > Looks good; which tree will this land through?
> >
> > linux-mips/mips-next I guess, since 7 of 9 patches are related only
> > to this architecture.
> > This might need Arnd's Acked-bys or Reviewed-by for the two that
> > refer include/asm-generic, let's see what Thomas think.
>
> Looks good from my side and I have it already sitting in branch for
> submission.
>
> Arnd, are you ok with the changes in include/asm-generic ?

Yes, I'm never quite sure about what to make of linker script changes,
but I trust Kees on the review. For merging it through your tree:

Acked-by: Arnd Bergmann <arnd@arndb.de>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2oUzcmN01RN%3D%3D2zzhAiHHP-1rAScsp%3DnN%3Dv6rWP%2Beekg%40mail.gmail.com.
