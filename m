Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6VTY3VAKGQELCOTJQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE328A3D1
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 18:55:22 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id g127sf133834wme.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 09:55:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565628922; cv=pass;
        d=google.com; s=arc-20160816;
        b=lXT5cDG05qBAYXVB8GVtWxJRwfJ6PkRIO3oqB8AXc8P1XgD+VoCDkp2AdsNH34E1WH
         7eTmUciRxrTJvvTCJHijLEcScEayDJ8smuBn2eeMsTaraxK6mG1eDFBs2LAxyGGohCqU
         AJMkO+InPDch2n2JiQwpWpbTH8Mb9KH8D1iUD2/R4iA6NHjM99P42V9okkqeKCcoZGld
         HC8b8UZ4YWKrTH4B4bN4mh/21dS2tdbLRaLhlnhJSqLiv7TGc3FBdDJsiZYONE1cdE+I
         8RNaIefpcyvu/FkKEoe1MmKigDCF4iw+exYzYsyP9UhqvmBfmi7vV2TmmvnFkgE22yM4
         VSyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=cgPDvu/+CrUtqfIuflHO26kD7CIrEYsyaTGykFQCdeM=;
        b=l2xlu0sLMdrZwF+NW91B/TU4twOhkDX/wi1EKd3h4bQEfUEOBrXjsHXiVS6BqSXk5v
         Fc3eNaMTah5LLmd01cietRyUXDJcW3IP63dxBfC1S230lJ1cPiEM4sxASh7PgtzlRFV9
         +zy8fEVCqSqv8Pio+UDBa259Dw85jjjY36F86KOxGb3gf9A4HY63IwRCK705Swl5BAoT
         /Z3g+psZ+7Ksy05Eu/wu7mubajy7rLaXDZyClfV19ZMHdkkaGZi8v3TeE3Fw7QTdHOie
         qV7kdZyu0z8doBNbvx2gptLvk1cAMolHIoMp1ItEhtN7wr/xGGDMhAdElDjkKkaCq+6D
         VPKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pIOzlK+o;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cgPDvu/+CrUtqfIuflHO26kD7CIrEYsyaTGykFQCdeM=;
        b=QQUfNyXAJvb6mchkddNhLZlWJTYoFco/IF8SSJrCU/XATppMKqwQRWsfOJU/432tGj
         JjSJsMsb/H+poSz/0Ret7QWuCSeZptjdjgepuhMcaEOAsEA4/yvI1j2VUIBEBf97qtKu
         sYKqc2j9mCvkGWH3UroY9kxF6yQJ7LvECUyEiqk3YAL5PmEzeEBN4yJRdt2/dfeM4ihB
         7p5HKUg4z7NmmlqHMYcgF2j+4cSxD0THW7Xb7gEXbB8ZWnyYRRHjER9egzP5XD7H4MY8
         c7YQgKh29sQgnM620+HIlkWSsjnIwcuJAAM95ewS8Xbz0brjG4HfGJW8v4AYWVY8lrli
         t7qQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cgPDvu/+CrUtqfIuflHO26kD7CIrEYsyaTGykFQCdeM=;
        b=uG5L1eSt51GG67RZzHSy1MfrNkyLPA3riUpnrByKvPOmdiTY03At6V/SE4MwEaqhv4
         ZnF/jC8v6A3H8P5bVjBWD3TIvu6GsoZoXcweHCa7hVZHkWW3KPxh5GbQUTHcZFMV+Qlu
         ckO4QCSbIVMep+kYgr/zxl/LryTWSxUH5OWXi9nzY1cBMd891XhqsWdjwwGj/rqvoqre
         Pu8DtTBeuCJ+0qYsQmagTG0FE6AM2CCzwua3sy2hV+NhodgJjYhLrCpxo6TcPr4kCB3k
         KGyJLyJ9jTmcIzAu5k5KuY3/sLARq4pQYtmSt8m/v79XUge6c8HGV8iunMqyjymIexHy
         uKHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cgPDvu/+CrUtqfIuflHO26kD7CIrEYsyaTGykFQCdeM=;
        b=XJNnKs5MyNpsjYMTN6FUjmjJWfRfLRAVr/DWYJyCaLNytS6hMAiprMM37obztIG3jR
         jHt2FbL7JJB1nQKrzH7r07MD1eGzTxn/QAl32WywV61r12jDIypPCwTpUDjAT3wVuhvc
         loKLAJUg2BPHw/c8NI3+YsWJvwP5kga8NhkBGdxn4wPGdXyHHsyfA2zQB4Z75+Z1AT+m
         9GFGPY/CTaVJPpxWRYmkPhQiB6NJnSVn8Kity7JM+RiotQSPjzMpSjwE+trQsXMP1HDt
         NLFt9wsWkW8ge7xsI7Gq37ARCdH/rWVIxupM7txEZwCtPQlMQXtGOK3o/qfpfEX/CU36
         WqOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWqCPmnOCR1Wl/wq/muuF/67/uazjn6vpO+0So9VKFRedpaQze5
	wfwaX2dm0eAdcAoJJkoOIaA=
X-Google-Smtp-Source: APXvYqx7rI84lV0evXQ1RgqeCHvthHDdhKQZMQTLdT431+8N3b9E88aKIbUxcTFl0I3Pm7qlfQsVXA==
X-Received: by 2002:adf:e78c:: with SMTP id n12mr3891739wrm.83.1565628922086;
        Mon, 12 Aug 2019 09:55:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:bac4:: with SMTP id w4ls30397191wrg.13.gmail; Mon, 12
 Aug 2019 09:55:21 -0700 (PDT)
X-Received: by 2002:a5d:66c5:: with SMTP id k5mr43212287wrw.304.1565628921709;
        Mon, 12 Aug 2019 09:55:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565628921; cv=none;
        d=google.com; s=arc-20160816;
        b=l1nIahyWem07YDXdBohf9eZUFOs6G45TD/fvCmUvMoJKbIuINafkEQ29pfswDD6dSX
         TKAa0DZya0ZD7mc5lpCcl9xmSCUgSoArCIBKF1wdOxbriELbcXRgvey55eAt/aEnhc6m
         BKXpzONYDWpolrAvni6mLwXuvypI1WjcSMCjhctXFhdeTkDqUQX/JOmyPr3P74Z6Y1yp
         yOy8dKoQpd/h+I/uKFm/R0TOGb4fGOM7NDySSyyM76Y9HH8l3b+dEPuKnm9tNsogtiOy
         yV1EHdHU5h1r9Nct0T1D2/mQLDA3MKjRmfi1kATzQTiDGIFMJkRUZ6XgYUx1IH52JDG7
         E4sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=vj44gRBy7Pko0QV87SnpU0f39eDYWrx4v822lLczJLI=;
        b=DgtpUAeVo0ChvB0Gt9LIdeLE0PufzX5pYWs9NRmZpI283dp+8hh2jtayMDvOm99P6d
         wg5Sd+4TxXeLW5CC20BRqyd2tG5813+8a1fXUMT2ZEPG3mXKdFxHzgdRAOkauOhSfmd8
         +a02sd/X/3dpBRaXP5ecg7u84OcCDXB59R/IzEVmtt7a+YMd7sQyecLtA72See8FMflG
         Mfe9BJphdO8O/dohEoML1qaowDZWkPpRLtv+ukeyn+XH3ge9RErbSrkbzVYFxhAb8DAz
         /ZeuSn5jfZDrUiTKP0tFvm4DsdfrMXgo6owP99GUFouZziN/ZVgJZDtCTjbb7gwf8rN9
         4Aww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pIOzlK+o;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id f13si20529wmc.3.2019.08.12.09.55.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 09:55:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id k2so19344995wrq.2
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 09:55:21 -0700 (PDT)
X-Received: by 2002:adf:eccb:: with SMTP id s11mr9793177wro.351.1565628921084;
        Mon, 12 Aug 2019 09:55:21 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id r17sm9360182wrg.93.2019.08.12.09.55.20
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 12 Aug 2019 09:55:20 -0700 (PDT)
Date: Mon, 12 Aug 2019 09:55:18 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
Message-ID: <20190812165518.GA6994@archlinux-threadripper>
References: <20190812023214.107817-1-natechancellor@gmail.com>
 <5da5478f-9320-43bd-0f5e-430db2ee9195@c-s.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <5da5478f-9320-43bd-0f5e-430db2ee9195@c-s.fr>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pIOzlK+o;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Aug 12, 2019 at 07:37:51AM +0200, Christophe Leroy wrote:
>=20
>=20
> Le 12/08/2019 =C3=A0 04:32, Nathan Chancellor a =C3=A9crit=C2=A0:
> > Commit aea447141c7e ("powerpc: Disable -Wbuiltin-requires-header when
> > setjmp is used") disabled -Wbuiltin-requires-header because of a warnin=
g
> > about the setjmp and longjmp declarations.
> >=20
> > r367387 in clang added another diagnostic around this, complaining that
> > there is no jmp_buf declaration.
> >=20
> [...]
>=20
> >=20
> > Cc: stable@vger.kernel.org # 4.19+
> > Link: https://github.com/ClangBuiltLinux/linux/issues/625
> > Link: https://github.com/llvm/llvm-project/commit/3be25e79477db2d31ac46=
493d97eca8c20592b07
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >=20
> [...]
>=20
> >=20
> >   arch/powerpc/kernel/Makefile | 5 +++--
> >   arch/powerpc/xmon/Makefile   | 5 +++--
>=20
> What about scripts/recordmcount.c and scripts/sortextable.c which contain=
s
> calls to setjmp() and longjmp() ?
>=20
> And arch/um/ ?
>=20
> Christophe

Hi Christophe,

It looks like all of those will be using the system's setjmp header,
which won't cause these warnings.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190812165518.GA6994%40archlinux-threadripper.
