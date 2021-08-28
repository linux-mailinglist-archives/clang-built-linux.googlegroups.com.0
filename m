Return-Path: <clang-built-linux+bncBC3LJUMM4MKBB56TU6EQMGQEXNJ25CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9D23FA462
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Aug 2021 09:47:03 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id ne21-20020a1709077b95b029057eb61c6fdfsf2759906ejc.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Aug 2021 00:47:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630136823; cv=pass;
        d=google.com; s=arc-20160816;
        b=07eolkKYmDmDLV3kbswgC/sMpaM567MtLlTQJmPAdVwKnVjFcZeY+MbDxe+5/4xEep
         WtSUIeXJH2Imq0ezlb2X+zM3RiXlrby4JcTBhdG2XDyq1yXjs7r7+2LOQZHsFI/abZZU
         KVoAwCsGHYEv+7x5317gECUcULbV7ElX8R1oGmbs72xwZz+MPMOO8j3BAFRLmWOjV3Md
         Fphg/em+ZzAB29fhwXdEPYTtjv39sDbnle9+GHT/VHTLw5hGTjEH23h+qwCtv2cz0sH4
         08jx46rfifdFEemJgMa4+I9zckPAOEZ7oMKS8/9zv6h3Rs1AoMKtAG0DPlCsWoCDV+zM
         5QlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=UNIbRl3+hXlMVHDrVQzKy1prSBgrARSyHwlzNJ3xUMY=;
        b=CY8kT3ZbzD/z5ssfqIM8qeEJHaqe81nnv81I4vbF3ETKZJ65+D+EIZ2MuqZmTxak/T
         ZGoDHxBL+yean8OFfo43+mLwF36ZVHS3uvhAshZyBRkwwkmaNJMtzGOvq5/8U7umanBC
         xD5H6vsUoTR7+0RNwD9m019hH1lxxKzPLAUNVFi51m4zP756Uvsv4fFEZHwEacuXNlEp
         Ko+0y4ePFmjZTfojACPIbqHnR3yGcasr+eJokaFyrZpG/lWeeOpTQcY5IFJu2GdMy7TD
         wAvSg0FIWPdANcdOOnidurA881KA4K2yMql/pbM6Dlpq9iRhAeqxGI7kGpLbtSs9TBhl
         Mhxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FmFYVV/l";
       spf=pass (google.com: domain of sandyinchina@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=sandyinchina@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UNIbRl3+hXlMVHDrVQzKy1prSBgrARSyHwlzNJ3xUMY=;
        b=EpkgT6Wwf2wM7X6c9PXfrC9L9IZ45hp/5y9Sp1cddsrU7dK7gYEXLIFN5gdfavKVLk
         iSHbkYNRl17/8dlZBtscfnh3JHnoQRYzU3LJLueJGyCnHpCnVNhoCb28+HKNG+8DhXam
         u4qMAzRIiv52IQs3uvbMTiwR54GIjvsWugaz8qGuz3vX8PK3JkcmUZUPW/aV5TI7RJVa
         65uFcFlOYo7lAP4gMChEtAxmGEbhA7Rt3/fXVdBYh9U7vfDTiHCo/FNd1UhV8f0tjpTz
         VeWS9fbZefD/1iI6W+g7bLBmH82SOhxzpRM1XpZeW02YcM8pe1DeXWGpM0Y2GaHcfOo4
         wjwQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UNIbRl3+hXlMVHDrVQzKy1prSBgrARSyHwlzNJ3xUMY=;
        b=Ng75Q/2jS2KbWSRvabGErNWYW3R561hVhY+u/rWtcamI8GaSkB2kay3Y5i2hGNhfjv
         iR1iAlE/zRdD/VHAGgEt4OXmfBFLBvz/TGlj/UYaV9j3MOfrDsDk+IjqDFAXz2tLwK8a
         MCyMQY2rt3Vpc9nNS+FWZMUK28FdUSLZNkiCeHttL/jq5NhaGxViNijaYoxXnbkIyHEY
         9CHin2HI+GimDVWtne6l/dvFX+bDCEBRxRRpAg6cL1VcLFL8gsUCLYVXdbeS6w6rfuR1
         uDKoZPwwWtlL37l3LYy+NNdPhaFZ89uh6t0Wvl3qlXj2ICZYQ8pv/M8ZdLRZRTB7Hg0l
         J7Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UNIbRl3+hXlMVHDrVQzKy1prSBgrARSyHwlzNJ3xUMY=;
        b=VKzSrnD8JohdakvuYn6jghx8PGttPAHgL/eqZAd5HdZyfFDavkFo5KW3smvg1GrZ75
         AMsXiLe5B1G02hiBUsaxwHN1tDZfUPJjwYJZpwvZH+SYl+8umfVXlzmoLnZn0z2aGvdC
         Xj+zxxD1xhEFyxJHQPe5CSx2SbogH8tKWe02QkcxwWfIwvB4SSeaGn4vfP22ajps1Q8n
         VQ3IM7V6gUiAolp1b4i9XFDNq+Sr81QxHCgr+RuLuwxRycSyhDjq0Lg4KizQyopSJiu+
         u3A2fO/jztmv5fpoBnTR9i0tfL1G93ooqalmGCkgioRpAMLaFARGnAuFyJw3HOqx97vm
         NYnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jYM2Ss+gyrrmCb1kYowA1odU9qwEse60IvtBtyi56ww/8eRyr
	Pk22Eiu0UWNHYkbZCPLd3Mg=
X-Google-Smtp-Source: ABdhPJzgStSEyNl+bpl8FP3BB9PTaisvb2MfqtW6zFZwQulGAMT+MZApdXWYmcoozlH+E0fPoPI2yQ==
X-Received: by 2002:a17:907:2a85:: with SMTP id fl5mr3018333ejc.91.1630136823573;
        Sat, 28 Aug 2021 00:47:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:d0d1:: with SMTP id bq17ls5547312ejb.8.gmail; Sat,
 28 Aug 2021 00:47:02 -0700 (PDT)
X-Received: by 2002:a17:906:2acc:: with SMTP id m12mr14832711eje.231.1630136822660;
        Sat, 28 Aug 2021 00:47:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630136822; cv=none;
        d=google.com; s=arc-20160816;
        b=iTeTij5yp+FmTKyrHm3RSiaMUeJ4eoklW0LoSsxsAssemiaGmvYweBWeyb/5GiTUQG
         q+4BnSWYiSKLCh3HRdlkMNA6pE/sSJM/6V9bkyyBiJv2NDJfPzX+u9yikCcxw7xjZI2O
         VCtBgj8TM9nI9tpKzBhkiWwtNzEuj/1SLZuZ1hu0AmCaVOpd3oOohNb+yG0OMBSrzwy+
         YqV+DQVkb7ZDXqP6fw7VUshA/UNS5DzenuDsQYHVAgyOviljl10eLdrtUdR5InsA2oG6
         XA2GiRauwAqOd78u0BdcotstkoUSaBl31V5XLclktuUkq++cCNMN/OddNrzHqVsc6iZD
         TPFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AK9mFIjyJpl3hXe9Hogzqd/0krNaNdau3tE1oAPxLAs=;
        b=qoU9HK0MOeBrWYTIJgJV1Db4sEZMRSmQB/YaurBPsKq+VyaFabUHrRzgxSNc5RP/Cz
         IvZVqDkVCZrBQgvj3PDe/YJwcDtL5suHpq9fi4b7dwwycDPS2xVu7azVz8mMAFRL4xp6
         fT17MfjYVicw+nQ8bIPhI43g0NtY5FA0oYL68U25Sx4q7tcr+tV/FcHX1RCRqzdjkiBZ
         cnD4G+vcEL+OlUr5ycOPEp1ucx0CjGQzia+oYrIW59gzXY7FECpx5MwCO7eWUwgaTHDk
         NKiKlMLWZ7tznce4NOalbjeWi5Z8nGSBXsUElihPXtR1oeNfAujnOEJ7CjflHYKfIgLq
         DlAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FmFYVV/l";
       spf=pass (google.com: domain of sandyinchina@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=sandyinchina@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com. [2a00:1450:4864:20::436])
        by gmr-mx.google.com with ESMTPS id w12si634658edj.5.2021.08.28.00.47.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Aug 2021 00:47:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sandyinchina@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) client-ip=2a00:1450:4864:20::436;
Received: by mail-wr1-x436.google.com with SMTP id z4so13911155wrr.6
        for <clang-built-linux@googlegroups.com>; Sat, 28 Aug 2021 00:47:02 -0700 (PDT)
X-Received: by 2002:adf:b7c2:: with SMTP id t2mr5643419wre.375.1630136822435;
 Sat, 28 Aug 2021 00:47:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210822103107.28974-1-lukas.bulwahn@gmail.com> <20210827083842.GF21571@gondor.apana.org.au>
In-Reply-To: <20210827083842.GF21571@gondor.apana.org.au>
From: Sandy Harris <sandyinchina@gmail.com>
Date: Sat, 28 Aug 2021 15:46:50 +0800
Message-ID: <CACXcFm=sRBr6cORdyntuOum6n4dJpKv+vTZSi98_JrDWWKF1NQ@mail.gmail.com>
Subject: Re: [PATCH] crypto: sha512: remove imaginary and mystifying clearing
 of variables
To: Herbert Xu <herbert@gondor.apana.org.au>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, "David S . Miller" <davem@davemloft.net>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sandyinchina@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="FmFYVV/l";       spf=pass
 (google.com: domain of sandyinchina@gmail.com designates 2a00:1450:4864:20::436
 as permitted sender) smtp.mailfrom=sandyinchina@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Aug 27, 2021 at 4:40 PM Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> On Sun, Aug 22, 2021 at 12:31:07PM +0200, Lukas Bulwahn wrote:
> > The function sha512_transform() assigns all local variables to 0 before
> > returning to its caller with the intent to erase sensitive data.
> > ....
> >
> >   The assignments to clear a through h and t1/t2 are optimized out by the
> >   compiler because they are unused after the assignments.

Just no.

You are right, there is a problem here. I thank you for pointing it
out & I've already fixed it in some of my own code.

However, I think your solution is dead wrong. You are correct that
these assignments are useless because the compiler will optimise them
out, and that's a problem. However, it is not at all "mistiifying";
they are there for an obvious reason, to avoid leaving state that
might be useful to an enemy. That is quite a small risk, but then it
is a small mitigation, so worth doing.

The correct solution is not to just remove the assignments, but rather
to replace them with code that will not be optimised away, force the
compiler to do what we need. We already do that for operations that
clear various arrays and structures, using memzero_explicit() rather
than memset(). Similarly, we should replace the assignments with calls
to this macro:

/*
    clear a variable
    in a way the compiler will not optimise out
*/
#define clear(x)  memzero_explicit( &x, sizeof(x) )

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACXcFm%3DsRBr6cORdyntuOum6n4dJpKv%2BvTZSi98_JrDWWKF1NQ%40mail.gmail.com.
