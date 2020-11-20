Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF5O4H6QKGQEN2ZK4KA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 775D02BBA63
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 00:54:00 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id h19sf5202258oib.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 15:54:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605916439; cv=pass;
        d=google.com; s=arc-20160816;
        b=KUplbbIAmBarpeSiOpCBtgQewprN30wcdsk5ixSZcwYdmOaZnV3oY5GqhmpDF0nqJL
         KnWhSLRERU1N/eKjEaHTRkODPxb2yU/NrrzgSL0GUnqx5H0ZXkWhKwMsPJVGn/4u9sc8
         uLKR4PlAKXtdA8eOFVN/BveLmWTLyjZ/lUKLzY6ngILvGZQtmQuIhpJnfv+lZpVcTaxA
         1poEv6EzWxaevnnFqHyVUuQ/aD1re/YgtnzfmZcf74IPpeBqJtt7NSvF3DRMOYqgazdk
         d2TQ2c1/1BvBoBBRRP9gj8nwa9XzhcWcILmjA+bcgfJNre6GZhY+OMn/Lp5gN2t127NI
         Xs+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YcbTJpH9InhWhs8rjquFTrPsaWqeK0WUDzR++lfYC2Y=;
        b=GssCXqfo/ntRh3xI0GE0mKX/jWlJ+aKYTR7KShXLpSNj/FjS6VNT3ucUVvUVZWXsGv
         LVijFdtCz0cCgx5oRPruo1N2i4KeQflxyphTCF/ZZIwwRbz5KyVdMIg/jg7RQM7kev+e
         LaaUZLfzYGUQp+BDKzzTNSbTBGj0jxu5A6J2O6LkD4+StisyM77ArQZse09Nm7A33qU1
         rW9d6xI6TUggtCLSUSqsJl9Ca78KZFo0qYZzP3dfWaird+p+GNIgwcbYJFONLdL/sQDt
         y5zuxv1J0UYIbZOLD0Ldhc+NeoTm2IDLKBsVRzTCuPciJ4AwAFl2yoabTx8AHV/FjhaY
         HhqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mdmSYKuo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YcbTJpH9InhWhs8rjquFTrPsaWqeK0WUDzR++lfYC2Y=;
        b=EDi6bx4gHkS8hFF2Rwl2kOp+x0rN/qWmMSiCEth5Xeehlsz6IwnapapsB8rJc1gJj0
         T2cnfekfiaMOdnTtN1p0wQDlLdXo/4M/+l6vXI/vnjR5eByA6BK3DPMdAgZl0CdiDbnV
         mJ++hySSwg3scZDEphIU51sYwlNN68MWiS+ir89ighkBr6b3exoW1pyvFBm7IoVYr2v0
         sAWv1s26ld35n3V6NVlnfn9vezfCbovCsRg7Bi4qjfyXn/ZAYtL5Itf7QI2+adl24lH1
         UCAig6GQHU6gmin3wEHbl9IfN6KAGBwcB1J3aTBOrXjyqrHQ5MFuIZIn5/fRCM6t6t4u
         jj7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YcbTJpH9InhWhs8rjquFTrPsaWqeK0WUDzR++lfYC2Y=;
        b=qB03+7PoLDLiW6DhA5fe00Mq7qkNfhW/ZkloG0fSxJ0KXSjtZg11eVikDaosrhjUN8
         lMBdSKQECH7o0kYgNKdi6OYXWYM6Jn0EFALk0M9Dgf/UwnVL2s3+MJM8LhphudvYhYTj
         xpw9RRBEpMvDXyXgnI4KMuKIoxHhfivMFw5k7yjMQmubZ3R6+AXLgn76kKKTWtpySBIr
         lmDi9HctEaiSgIilHTcjV+KiIBet5dqtxg7K3LkU/5zFEM0Mv/LCS4+ISez0eGaeoGhy
         /U4433kiI9gmCVhgX80A1FKW66iVpOqVBEs1RA8Kmy6t2B9KcSUlBqofR+4UyD9YZR7o
         z3og==
X-Gm-Message-State: AOAM530bwOeYKgXe07t51a1YYZmmXO2cKhThXeHs2a/zZi5R0DHmi+td
	pbPnJkS+ns7izJPskj2gmLQ=
X-Google-Smtp-Source: ABdhPJy2dlhp99CZpc1xVnOe1LI94LFDUMFapoQfUqNTUpywoPFgN8iMhfrXQOr/fDmUPDR3wDUfSA==
X-Received: by 2002:a9d:a0d:: with SMTP id 13mr14523603otg.348.1605916439452;
        Fri, 20 Nov 2020 15:53:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2238:: with SMTP id o53ls480733ota.9.gmail; Fri, 20 Nov
 2020 15:53:59 -0800 (PST)
X-Received: by 2002:a9d:2c68:: with SMTP id f95mr16007846otb.300.1605916438954;
        Fri, 20 Nov 2020 15:53:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605916438; cv=none;
        d=google.com; s=arc-20160816;
        b=fcyE+MgHw2vsksFzSGMidN4Jzn1sKkgAw6qI/PWdpo4Q6mVeder5/NSw9z4sKjT/pl
         2dIVGVRKS6ObVl+etdXbex8zz1CDLDP/e9tf32NsmkHvZKQAE3uELmoimg9cChfHoRgQ
         5vcsgHbzKpDIPqzAdbanEx3mR5gOV8f3pcbHwAtivV1B261Il5vpnzrm+wLj12tJP9om
         XmoFCUqNJ8gAVtJUCBzl3H19bTXLvFvRG5esduXLWva4BNs0iuuav/SqjfRLPoX/ZqMs
         DvRtsrRrmKswrnOsFV4i2QjBJjL+vdGDqxuQ4yfuE7K0qRRaSyYVltcRtFmMfp4gKcq9
         PJdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/9QmQzu0viMhe1+E2AuJjw4yABAqeWJl/tuV7zSeb+U=;
        b=wlm0rYKyB9sIiBwj4LE6lVe7wK2SFEK8qSaIzT75S9JFK6aDp1oD3WjDkI6oXSLyfy
         tju3145CV4+8cO0plWeyLWSA70aljCu6y91z+7bHnfT3+I3Pdt53kOAe9GIVG4T9V3Ag
         6XYbI0DZoLa62gaiG6ZrCVeIWJeF9JmD1/Fco4zn2SXUnkWftHRW61Y3Z0Ckgz/39UHn
         jzPIxGe6eawZfCA5dFpYWKrDJPpksddv3sE+49PnEL3X7vVwXo2pK3x7JtzBNfyXr4NY
         msqEQXhuLGJoThG5INeGJwQuLDS0qfPiMPedhv2BJBLvMuNmjVWSBcGTdmoSN2WmBAUF
         CXsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mdmSYKuo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id o26si604164otk.2.2020.11.20.15.53.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 15:53:58 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id 81so8692388pgf.0
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 15:53:58 -0800 (PST)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr13286585pjj.101.1605916438104;
 Fri, 20 Nov 2020 15:53:58 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
 <CAKwvOd=5PhCTZ-yHr08gPYNEsGEjZa=rDY0-unhkhofjXhqwLQ@mail.gmail.com>
 <CAMj1kXEVzDi5=uteUAzG5E=j+aTCHEbMxwDfor-s=DthpREpyw@mail.gmail.com>
 <CAKwvOdmpBNx9iSguGXivjJ03FaN5rgv2oaXZUQxYPdRccQmdyQ@mail.gmail.com> <CAMj1kXEoPEd6GzjL1XuxTPwitbR03BiBEXpAGtUytMj-h=vCkg@mail.gmail.com>
In-Reply-To: <CAMj1kXEoPEd6GzjL1XuxTPwitbR03BiBEXpAGtUytMj-h=vCkg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Nov 2020 15:53:45 -0800
Message-ID: <CAKwvOdmk1D0dLDOHEWX=jHpUxUT2JbwgnF62Qv3Rv=coNPadHg@mail.gmail.com>
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	PCI <linux-pci@vger.kernel.org>, Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mdmSYKuo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Fri, Nov 20, 2020 at 3:30 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Fri, 20 Nov 2020 at 21:19, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Fri, Nov 20, 2020 at 2:30 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > On Thu, 19 Nov 2020 at 00:42, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > >
> > > > Thanks for continuing to drive this series Sami.  For the series,
> > > >
> > > > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > > >
> > > > I did virtualized boot tests with the series applied to aarch64
> > > > defconfig without CONFIG_LTO, with CONFIG_LTO_CLANG, and a third time
> > > > with CONFIG_THINLTO.  If you make changes to the series in follow ups,
> > > > please drop my tested by tag from the modified patches and I'll help
> > > > re-test.  Some minor feedback on the Kconfig change, but I'll post it
> > > > off of that patch.
> > > >
> > >
> > > When you say 'virtualized" do you mean QEMU on x86? Or actual
> > > virtualization on an AArch64 KVM host?
> >
> > aarch64 guest on x86_64 host.  If you have additional configurations
> > that are important to you, additional testing help would be
> > appreciated.
> >
>
> Could you run this on an actual phone? Or does Android already ship
> with this stuff?

By `this`, if you mean "the LTO series", it has been shipping on
Android phones for years now, I think it's even required in the latest
release.

If you mean "the LTO series + mainline" on a phone, well there's the
android-mainline of https://android.googlesource.com/kernel/common/,
in which this series was recently removed in order to facilitate
rebasing Android's patches on ToT-mainline until getting the series
landed upstream.  Bit of a chicken and the egg problem there.

If you mean "the LTO series + mainline + KVM" on a phone; I don't know
the precise state of aarch64 KVM and Android (Will or Marc would
know).  We did experiment recently with RockPI's for aach64 KVM, IIRC;
I think Android is tricky as it still requires A64+A32/T32 chipsets,
Alistair would know more.  Might be interesting to boot a virtualized
(or paravirtualized?) guest built with LTO in a host built with LTO
for sure, but I don't know if we have tried that yet (I think we did
try LTO guests of android kernels, but I think they were on the stock
RockPI host BSP image IIRC).

> > > The distinction is important here, given the potential impact of LTO
> > > on things that QEMU simply does not model when it runs in TCG mode on
> > > a foreign host architecture.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmk1D0dLDOHEWX%3DjHpUxUT2JbwgnF62Qv3Rv%3DcoNPadHg%40mail.gmail.com.
