Return-Path: <clang-built-linux+bncBDYJPJO25UGBBW6EXP6QKGQETWDROUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 104012B24D7
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 20:45:33 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id u8sf4311187otg.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 11:45:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605296732; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bckrkx9+gn8R+3oTGGqJIcPjtpoiyM6ebPPXBPEj1KIsGD9vTgodKCTYCWlsJD4t31
         hNAaoQzygI5Dcd4IlNU82uAcfSM14XbztPAoEsVQIB2aovQrx5mCdlwrah+H5Ulhblw9
         TJ0R1BMS3BORp/b/O2l7RJxT6nRmBO/Uj0bPJJgqok/HUnIpE9+ijNN0q8Xbbqv/J8XV
         nOgY112DX38D2whGq6ZgdnUGxkWum1SP61XjPeD4JpJCFuERRdM2iBES9UljIUn614Yw
         nBvLBCXrKDz+TdzwjAzrJOTAtU16hhyGMWzGbOr8H81otnWvyzI7sdndOBTEN+OBff0a
         T24w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Bk/6l31r2/4y/f0GKgvnFhAe/hQfjJwuqFma+X7XJaE=;
        b=gsAEdGYMvlcjW9G4gw1zgZzjKQxs7v71dbnpJUedDo+Hd3JiFJrsPlU3hdCp1pvaZG
         0roQHlqt12tz1Sx1XgWxkmBQSRxqal/3MekkOARZThTgU9nbc4/yBN7ErjafjOx9+e8/
         rNN61f7sOPLawv8OH1PVNGdPbFL3ywAiFGJyssJzgYOYBRakuC8vNGgSnCtOJIHID5wD
         lIM8oHE8LIvGPYDzlEtw37XdSFSDrs6wtDY/8FSfq8EH1TNoyNJqO6fwceW1q9BdjAmt
         KadynOWsF42fSAzBUlmLnIrIxMvsdWHSzeCx90g1Bl0yCPFdHZCBqbu9ig18fau8H2Rs
         DgtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JRBrc0Zs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bk/6l31r2/4y/f0GKgvnFhAe/hQfjJwuqFma+X7XJaE=;
        b=HA+CApq4w5pegjCStNltQR3GmVwNDxyKbk39xwTe8WkiTkHJ2M6ib/JhNNNINAUhDd
         BSKa/kdk2WEx5reELohIiUKjgPdWPAZ4ulLN6y2G3fHpAiVSf+FytTIjqecFwMIV9TJe
         Ia6ejYdHtgdH8ntpkFS39S0Nw7fb/2/aeUVLlGu2C9IG+OHx47aMdlmjuxOSSflT+hjy
         KLKIz0KXHZR23a/VM1JC7drxNvOS9VV6RMZ+f16dZrBMfqgYwQMKxYAgjFTzLZdEi+uG
         QIjtNtG4FUzr0stEuIsMCi8VLFEvEPkPlC7HmuwO86vtt3aJ6rq3QM90QMU8vak3XLxH
         olHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bk/6l31r2/4y/f0GKgvnFhAe/hQfjJwuqFma+X7XJaE=;
        b=LChpwaKHpnNem0XKBp4AeqYS0bsVCm9dkzMKeBL8TBh5yCAw7p+3M0nRrOrXaDQSGb
         9TEp5U9uwxeTdF6dULQd+qz940WLua+KIxdVJMvQmQkp+uOaHDGdYUM0Hv7fcIp+HOPU
         qnvYPk2Je0RbmQCb8sY/XyzKa/6XnHh82p4/UcqqTT3i8R8jGe1xxWAKLXT7fyBmHl0A
         1KoPxa9Ht4dpCjPdU9LFS/g3kNx4xBMe03KjdWgQHi+RIGxWDADyVlNTFsUJ1Trf6kGg
         tFS91nuoQUE1RtGiF0QvHd2Jw0oyRJgEtDby/LKWdidGreSJlWLZydquaavBo5r4E+Yz
         cBJw==
X-Gm-Message-State: AOAM530FIj17JW8Ul569DCRXyqC/gFAL/Xi6LFsmQRLiPj9GtT3yZLpY
	qJh1HgGTTpSl1h6K97Xm3ZQ=
X-Google-Smtp-Source: ABdhPJygGv5g12zwuNBxFuG8EwCRGtySlI2kqME9v9sB8jyyv6KzBMzOF6i+jG1nbg1KzRm+BgH1jQ==
X-Received: by 2002:a9d:bec:: with SMTP id 99mr2864448oth.103.1605296731984;
        Fri, 13 Nov 2020 11:45:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:198c:: with SMTP id k12ls1835842otk.3.gmail; Fri, 13 Nov
 2020 11:45:31 -0800 (PST)
X-Received: by 2002:a9d:7dc9:: with SMTP id k9mr2665063otn.148.1605296731566;
        Fri, 13 Nov 2020 11:45:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605296731; cv=none;
        d=google.com; s=arc-20160816;
        b=pcna2DdlgddmzY9RSe/7DNE4PF0ipCFUcuwhDgOMK03dAnAksnWxy6wj9nSvwsmBtY
         NQnbTHvWRARcUjpGyVSOd813qpI7vExILtPUgIVrtg0LujICl7KFpN4xh5E3VftGIAbK
         7QDqxbf01dkVqsPhOMBdjRlu7UsFeLGBQQzuHxpaPLrlVXZXQFXpvik0N35pt/nFNyaa
         Brzwjws+wKnmYoMAwvGpHnT344NKyhN9n2GiQ5VTeSJtusvCbsJ1ZOeApsdlynf4JhKW
         hETXmGLQy9J+GNZatwII13XLiVzrSLRIrKafXakFoWuKCtgCJO4O9XZ6ob9Y8HF9I6MW
         2Jmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yBCeRNx4mTLMouawnGgQKK1ACxXYFwoew5h4+rzOQfo=;
        b=G/NPosEAhpmnCOTEz4Hjad5S1VCBu7SS71mzMdhJQB/Vc0GBKPpYdHwp4/zRo64nCG
         Nfxdiz1yIegS9dDpdp3XY1j5WMjusrFJAjJsHHY1KX88XtZ/T+uDeyZil9nUCw9Y/xWu
         cKGAvJyVZ+82W3KmBafA7wqEdqJDlyNR+wPmDnew1tlEK8jIDp+P5dLU6aTzHzGQ9KAM
         +PNdVI+0e27l3u6y5bIQbCl4pYwb6vk4aal4gkR4es25eBCTzFwlzGDvU5DLao08jfe3
         l8ASY6XiEaSS62z2l54VohRHIYcZRZ/ykyEAfmhR56Lt0FLJ2xecjW+CxQ9clTBlayXm
         krdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JRBrc0Zs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id k134si503368oib.5.2020.11.13.11.45.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 11:45:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id v12so8468762pfm.13
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 11:45:31 -0800 (PST)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr4701741pjj.101.1605296730782;
 Fri, 13 Nov 2020 11:45:30 -0800 (PST)
MIME-Version: 1.0
References: <20201109144425.270789-22-alexandre.chartre@oracle.com>
 <202011131552.4kvOb9Id-lkp@intel.com> <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com>
 <0bcf6613-372b-8192-8a7d-c61659b852a9@oracle.com>
In-Reply-To: <0bcf6613-372b-8192-8a7d-c61659b852a9@oracle.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 11:45:19 -0800
Message-ID: <CAKwvOdns7nde+tuhvtKFe3y3dkDWTjvmPeac29VmX=M8Vydm4w@mail.gmail.com>
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST
 entry C handlers
To: Alexandre Chartre <alexandre.chartre@oracle.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
	kernel test robot <lkp@intel.com>, Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Segher Boessenkool <segher@kernel.crashing.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JRBrc0Zs;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Fri, Nov 13, 2020 at 11:39 AM Alexandre Chartre
<alexandre.chartre@oracle.com> wrote:
>
>
>
> On 11/13/20 7:59 PM, Nick Desaulniers wrote:
> > Hi Alexandre,
> > The `optimize` attribute is both non-portable across toolchains (hence
> > this warning) and a little quirky in GCC.  It's advised that you do
> > not use it.  If you can describe the issue you're trying to solve with
> > it, we likely have a better way to fix.
>
> Yeah, I feared this wouldn't be portable. However, I am going to remove that
> patch; I am making a change which doesn't require to disable stack protector
> anymore.

Ah, good to hear.

>
>
> > If it's removing a stack protector, -fno-stack-protector for the whole
> > translation unit is the only portable solution today. (GCC 10 just
> > gained the no_stack_protector attribute, but the kernel needs to
> > support older versions of GCC).
>
> I needed to disable stack protector for particular functions. Good to know
> that GCC 10 will provide an attribute to do that. In the meantime, if I still
> need it, I guess I would group functions into a file and disable stack protector
> for that file.

Yep, that would be best if still needed.  Since I had the link handy
(was just discussing this internally with folks working on `perf`),
Ard found a nice link that summarizes the issues succinctly:
https://gcc.gnu.org/wiki/FAQ#optimize_attribute_broken.  We're about
to remove its use from abseil (C++ library).

>
> Thanks.
>
> alex.


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdns7nde%2BtuhvtKFe3y3dkDWTjvmPeac29VmX%3DM8Vydm4w%40mail.gmail.com.
