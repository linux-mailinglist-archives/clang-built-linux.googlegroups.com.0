Return-Path: <clang-built-linux+bncBAABBCPQQ76QKGQEXXCVMGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id DC98E2A5B0D
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 01:38:34 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id 88sf650028otd.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 16:38:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604450313; cv=pass;
        d=google.com; s=arc-20160816;
        b=zLmGBrf2qzw1cD0Iot0/mOux0Ue2E/17FYYlIO87e+1A3sRfhcbjy1LKV37GZ2AXO3
         vcvwo7MnnLTUeGI5Wz0J8Yamn3FkZcTQQpKdd1ybnbvtojyHMyuOYR0y9Nn0sXa31yRl
         87dS6qDFX5+tpf1qfVZQzyoHinFp0q8CSJQmlTDRbR5F1dwtvXYujseaZ49QO4Mmdqsk
         bDR/FX8xnlFquZ464opq2gr5wcrmRVFQ7VKy0CRTw08Upj5ksPuXhFPJo6f694MpmvON
         pUJW5zT9gHJxQ3SxfzdPGUDY86zWCOkqfdqU5kRh1LU6gGsYw5GucUh1iW0NtApUbSet
         jmWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=+pNsx4MjgMSiRKhk7ccpC+bM2ZQLqJGlZnxCj2wxdVM=;
        b=n1KxQrgmviH7exDcUeICVvtDwd0kEic416SBJK890vGc2Tx4YXWAaKKVtYbNVaJJGa
         wO7fImJC+U4PJPSlKSM13fQTa8177TvYNGUZLgN4HKF/71IZeR0XP8PN0b5ntCyjr11Z
         ixWSRDi4Y+nEixbnu/z47jlqKGs48DqyzIlLv+PKm279VtgoFNzkiTXtwETXZHZR89yZ
         8ux2nYFXv/Mwx/y7718FfykjdYZyXBX5GTmEucrbEPJztOkpDtVwGRCUeQNJDb4ULIAA
         dmEShlK9yzLUhbaxhF/goFEWHhEKonZjRVuUJU0ha5bs96Nf5IDgLeSq9lGsJmYe3svD
         NFkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0x8yN6od;
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+pNsx4MjgMSiRKhk7ccpC+bM2ZQLqJGlZnxCj2wxdVM=;
        b=bBtt6pHrw4s20dTB5/bWwZ3liij2JJeYf04CJQBYUiub5dnaW4crJmU4880xBGGf0e
         1zGFZRTT0NnYW9OWSnXFSplm7B0tXsQQfrNu024JpG1To84Irgzv0rbVOYNoWz9LSCKP
         kkcbraseWa3FfW0tnBvAeba8fx478krceRPBblKRx9/aHpMli3nio/qx06aTFQiKUD2q
         Jh2fMKKDaZzOo7gUY8mBtz28spuWh2Sc9cjUpw2igUQ50ChInoCM8YL2YYfgoLw8PUal
         tzQ+6rJKTPvCMcHWS4en1bBe4oE4GsxjgZ/EAk2dpyr+EddWcznjz4Rp1mHlQTlAqgsH
         m2zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+pNsx4MjgMSiRKhk7ccpC+bM2ZQLqJGlZnxCj2wxdVM=;
        b=dqNNnyRfz2m2vbbTusI3+Zilli92ZzLm/E30FtblaGrJFTe01RivdacOO8PshXpo83
         LFlKc3L/ldH84i+gYvDfjNHlOABLXpveVbG2rgRFhvLz9jkfwfnwBBLkpEPz1TX+unMC
         xXQrKgMiXQAnqNxwXR0WdRoh2q65AJSsCh54pXaAPlA0CX/9mO330r7jUs9FCwdgWMTc
         xn1a1SffQO/DpXvrG6GD1OZb9eGq1UxJYsJ1okveN59gYOvvCUndd96QjrUcS8WxvPA/
         htJMDI86WISBUwqZduP84RY/SOhQIil7PaBX/18q9VNlqjjIAvMNaBL+nj82dbZDXWw5
         ykCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fALWc6gXeSJb04etoAWfhGNm4L9Iec5aOuAUB2RspyTzL8MnD
	lZkuRykBQP0gY5igjXh7E3Y=
X-Google-Smtp-Source: ABdhPJy5WZ+7ifqTljrKMTAIVJRsArzeiK07BYB1fXTXNnpvNKa8KpyipsIDfK2uGoDPCFsG23MWOQ==
X-Received: by 2002:a9d:4d83:: with SMTP id u3mr13086250otk.283.1604450313746;
        Tue, 03 Nov 2020 16:38:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1a04:: with SMTP id a4ls134042oia.6.gmail; Tue, 03 Nov
 2020 16:38:33 -0800 (PST)
X-Received: by 2002:aca:af8f:: with SMTP id y137mr1171618oie.170.1604450313404;
        Tue, 03 Nov 2020 16:38:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604450313; cv=none;
        d=google.com; s=arc-20160816;
        b=NmUvh8Cq90PAdd9AT1sEhuEPy8SmGF129EjGoeEvi4oLNagIHbX/irKq6MzDyWfQMS
         pB6bIosPQQThdlHJPJhiPOa5O2CWRD0HdrqtXOujvEcJqerhcDFLalY/KuUjYKyp+da3
         A5mk2pMsjNl3kuV8XzvmFLSMq0NwdFKgHu1mcZRPb5pAtseH0D1+mSiw7xF0eNNuKR8S
         vTVfPKRceArJm9RS3h4drcMdLgyyzpJGDPdEflTxyoWnJqhJBVPFTxPc2G1fyWu52n0G
         zF/Q13UBihJk5O8we1mNMBueaz1PkSH7B0ZGnXQft0dVQXvBjm0xyBN18/RyUPAjOVmM
         BSAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=UOk838F4QhfCpOh4SMFEFDWgee7u3w6/XdQAmwOsS/g=;
        b=yVLTL92drsjknevS+PB+w2iMCFCilvbQA4j2nI9ksN/QMU27yYyhPfIJnSPLRBhEv3
         koaWnEj/PXG1rm8tcvICD0CQiJeEyIKwxWOyybmKH4MRd0CsB1r/jZpkdfFng3Ewg776
         Rmwlw6e5d3NzROgWMbkn1lsPHtqJOra2dI1NXbV8U20OQUqnzIANF82EW8HaiV2xDa23
         MRRaWSUPzH7vE5pvO/utYiJkRWNeH347iI8zda+qx4sCMBqmAFRIIfIkTNu/AdVsAy0L
         J6VOMj9GagJ6T2AaiHzZ8RMOC0ekGlmEROKPduiQe41+bL7e2TydsPH2z69P8qqHxlsc
         IWVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0x8yN6od;
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f17si24634oot.2.2020.11.03.16.38.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2020 16:38:33 -0800 (PST)
Received-SPF: pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (83-245-197-237.elisa-laajakaista.fi [83.245.197.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B65B3223EA;
	Wed,  4 Nov 2020 00:38:29 +0000 (UTC)
Date: Wed, 4 Nov 2020 02:38:26 +0200
From: Jarkko Sakkinen <jarkko@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/7] compiler-clang: add build check for clang 10.0.1
Message-ID: <20201104003826.GB19460@kernel.org>
References: <20200902225911.209899-1-ndesaulniers@google.com>
 <20200902225911.209899-2-ndesaulniers@google.com>
 <20201103045521.GA58906@kernel.org>
 <CAKwvOdk-bMx3Jt6=oN=PHqRv_tx5cF=9cVmumazb4vMNHdj5Ag@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdk-bMx3Jt6=oN=PHqRv_tx5cF=9cVmumazb4vMNHdj5Ag@mail.gmail.com>
X-Original-Sender: jarkko@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0x8yN6od;       spf=pass
 (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=jarkko@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Nov 03, 2020 at 10:48:27AM -0800, Nick Desaulniers wrote:
> On Mon, Nov 2, 2020 at 8:55 PM Jarkko Sakkinen <jarkko@kernel.org> wrote:
> >
> > On Wed, Sep 02, 2020 at 03:59:05PM -0700, Nick Desaulniers wrote:
> > > +#define CLANG_VERSION (__clang_major__ * 10000       \
> > > +                  + __clang_minor__ * 100    \
> > > +                  + __clang_patchlevel__)
> > > +
> > > +#if CLANG_VERSION < 100001
> > > +# error Sorry, your version of Clang is too old - please use 10.0.1 =
or newer.
> > > +#endif
> >
> >
> > I'm trying to compile a BPF enabled test kernel for a live system and I
> > get this error even though I have much newer clang:
> >
> > =E2=9E=9C  ~ (master) =E2=9C=94 clang --version
> > Ubuntu clang version 11.0.0-2
> > Target: x86_64-pc-linux-gnu
> > Thread model: posix
> > InstalledDir: /usr/bin
> >
> > Tried to Google for troubleshooter tips but this patch is basically the
> > only hit I get :-)
>=20
> To check the values of the above preprocessor defines, please run:
> $ clang -dM -E - < /dev/null | grep -e __clang_m -e __clang_p
>=20
> If you have multiple versions of clang installed, you might not be
> running the version you think you are.  Particularly, if you're using
> bcc, idk if it includes a copy of clang?  If that's the case, we may
> have to work out how we can support older versions of clang for the
> express purposes of bpf.

=E2=9E=9C  ~ (master) =E2=9C=94 clang -dM -E - < /dev/null | grep -e __clan=
g_m -e __clang_p
#define __clang_major__ 11
#define __clang_minor__ 0
#define __clang_patchlevel__ 0

I'm compiling the kernel itself with GCC.

Here's an example BPF script that fails on me:

struct sgx_enclave_add_pages {
	unsigned long src;
	unsigned long offset;
	unsigned long length;
	unsigned long secinfo;
	unsigned long flags;
	unsigned long count;
};

kprobe:sgx_ioctl
{
	if (arg1 =3D=3D 0xc030a401) {
		printf("sgx_ioctl: %d, %lu\n", pid, ((struct sgx_enclave_add_pages *)(arg=
2))->offset);
	}

}
Note that it relies on code not yet in the mainline.

If I don't declare structs, things work just fine. E.g. the following
works:

kprobe:sgx_encl_get_backing
{
	printf("%s\n", func)
}

BTW, I don't really understand how scripts/clang-version.sh is even
supposed to work, if you compile the kernel itself with GCC. In that
case there would be no output, right? And thus version gets set to
zero...

> --=20
> Thanks,
> ~Nick Desaulniers

/Jarkko

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201104003826.GB19460%40kernel.org.
