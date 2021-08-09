Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5OJYWEAMGQEUQHXBXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C833E4AC4
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Aug 2021 19:25:10 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id v20-20020aa7d9d40000b02903be68450bf3sf1436881eds.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Aug 2021 10:25:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628529910; cv=pass;
        d=google.com; s=arc-20160816;
        b=ouM0aThK1pRfp8J24/jryNSLh5mQ4pswZe4E+yrm3aZavrZ9L6y9WUa67RUrsx47eu
         GEZ5J8ja7jLKbVPoQ4/L9qoojbzNyEB2gBxlyx8/Q+CJrhoarzMJU2+P3GzwgBPdVwFe
         lr2Yw+1aDB/fXCGfS+4Bjk37s04aax9Y85guqZCW/1pbLmkO39ye/I8mzgf1eQDx1U7G
         Yd8YGLRH2uU/yotUucXaBO3MuPenIFLNQlwlTgIEuiT4hGcHj2n+Ru3BPvlO15+xs5fi
         V7WFeGffWYypd0ELt4lcFLer5PnVyTZsV7v9jNGSZBKJTlViJuk2eFTcPT3QKcDWcKGO
         HOQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=r+YlRPJpkm390SSStrRf9avrM/vizZ0lV7Ui6RNFO/8=;
        b=DU4Q8ZPp39w/jkCRAAcYUrxrPjP1vpkkRR4ZwBgmjCjt7fvZLcoFqhOxDyrEAnp7AV
         ++0ZCbr/SL2fXht6TpKZYaqNKNUIsPmWCzSg+47ME+vxSezxNdqAFFIgkQx2HPGLL4Um
         zD8M8F5xzSnJU8ejstDVojdc7Z6+yC+CCZ1k67BP6TtVNmGFLRlK5Zy+5zsLQHUpRR4f
         vQXE+luuPuZNh46YzezJWqqaWp+28pYlkbUzXpWc474+5riVYip6jLP6IzyUdPlyPU4w
         egVrAM7mRPqs8jdZPvEl8LzOGofF1DsnVxAz1kXc057uydsWGG/+8I65lyYGGIm356Wm
         qtrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N8fEFXpD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=r+YlRPJpkm390SSStrRf9avrM/vizZ0lV7Ui6RNFO/8=;
        b=s7sVN7wP+QBGhGlayBJUOIgIMQT8URHyHaZlF8iJAywr3LtaPTrSf2ecCZxDuGBlHO
         aoWOLHvCFqMke35sR8/djjXVyJdV1Qs44HJVilkWJq66ykq5wWq9hmT70U1tEI9YiQSe
         Lf+ItZSBQxOS38K/wfIX05Hv/BTQTedV6BBr936q67eR9zXipDnX9oGW/YrfDZQztZ0j
         Gm9MaHh7RjwhVDp50GTVb4NECUC+9K2DT9STVEQ9XR42KAy7552L2Exfjb4vJYx2vJCG
         jmCWP+9jiowzs6chUSIF80lfsVmL4lX0/90RN/2zBDNFp9OoA7aTB3lc8GYsYQDR9Q6z
         LG+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r+YlRPJpkm390SSStrRf9avrM/vizZ0lV7Ui6RNFO/8=;
        b=n89IUFuMO9L/A4bZFlJPVyFCK8DfOZxr5b4wOQ9ks7RivnjNPgOFpig2/ewtMK5axc
         APeiWjOYKiby0as4kSxM5jv1oSpR2NpVGsF9M10mMWGKTTaNqJcWwh/y0yCWOdvpE8IE
         GOGbqwcl+g1et3UAdCQ/qj1zt9HHbL36CzLCyAGS/nNyg8uIoVC3/qVO+5Twdbdo5jaC
         obgxBF6Rdy+Y0p41uVZ9BzTgeTqf0GFpWkJqoleGZcajwRvpJybe8PWpMrJG1RWsNlQe
         qBow7Ixy0uvcYO1WAA1D84wFxE3KpI1ZTGvAzyC0STv/omPmW4fIXicqxwtWfl/1AQrK
         /tJw==
X-Gm-Message-State: AOAM5318Bn8SNf6g3WbP+EtsbEm7vkETFmTIqyTsUMKxTEnjDvgxGSzu
	aoAjikOCsGKRzoc22M5R2+0=
X-Google-Smtp-Source: ABdhPJwgdiSxXr673Tyhj6z368c5FF7jdCkEX1Oti2Hq5WlBUOOBHFh5EW4treg16l/62cZeZwUElw==
X-Received: by 2002:a17:907:3d91:: with SMTP id he17mr23753069ejc.355.1628529910007;
        Mon, 09 Aug 2021 10:25:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:34c2:: with SMTP id w2ls1361830edc.1.gmail; Mon, 09
 Aug 2021 10:25:09 -0700 (PDT)
X-Received: by 2002:aa7:c9d8:: with SMTP id i24mr31282952edt.79.1628529909143;
        Mon, 09 Aug 2021 10:25:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628529909; cv=none;
        d=google.com; s=arc-20160816;
        b=GtoW4qzgk/jTpvUuCOZjWFmsmyEnA7ihDAkz8RfU0AC+PukfSL7lhss0SzVjtj4g1P
         PGytDloJgJ6ZKdG9Ane6cyX5DYaPm0hzx0E5+CcaoizAFwjQ5H80j5c6lJz9IfEQSRrU
         5XFYMQAd+ampYmtl9aH6wnQiVc4lSaj5OHHXmZX6PBpszv8m7Y2Sh/hKevDeHqaMRXVJ
         P/4AZ6WsOE+YILheM66KHHm2oHn+Tt/2rJ3bjzvX+QK/76m2gHqGI/waKTsub7IbG8sO
         gxpsFxWkLAh0Oct/hsl2TDc6FKBCP1Mo5+1FsdICFl3a+639d4TRJ+0qsj0w7MkWb0GU
         /yTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=le5LL61SCcfAtGwVATr90Mk3ZUjYL0wYggEt0ZTf/MI=;
        b=ED+yIwChXCi49cOIUsLWwKTFhtrhJlHne0riAikVEvM9c3pIQ+94JASsX39Bc1Oegi
         xuw01QQ5Rc6OGloUu8L1XkjWfkTUzuHZo/Ni66V6+cLfy+S0Xnjusz6R1Wku25sJQb8i
         DyW4EdK2nWG72P4SZaWA0GAgRl5WZO6sCbgnjqAGKBcJL+SW6WtF41+v4JJTBC7bhwUG
         uPMvV8uvYe0QcYjzI0Vgp1EJBhGU3QIKIyYNatO1pFrEM38pqCfaxuP3gITg5nhR8VbP
         Ipm/nuEgr1XoiBMeoHEgswjPy/Fh0/xvsAXuygT0sABuFA1hwFqxhZU6QcqhEyfOARXd
         TBCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N8fEFXpD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id h14si1270359edr.3.2021.08.09.10.25.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 10:25:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id n17so10246347lft.13
        for <clang-built-linux@googlegroups.com>; Mon, 09 Aug 2021 10:25:09 -0700 (PDT)
X-Received: by 2002:a05:6512:39ca:: with SMTP id k10mr18762068lfu.547.1628529908386;
 Mon, 09 Aug 2021 10:25:08 -0700 (PDT)
MIME-Version: 1.0
References: <202108041936.52T4sUU6-lkp@intel.com> <CAKwvOdmOTNTGvGeaRKSp4f6M1PC-HQLjMoaeQU6WM9ygxuU5_w@mail.gmail.com>
 <20210806102246.GB1330186@pl-dbox> <CAKwvOdmP1Bb0wkyUJAs-n5wT-obH56jw2zcBpT7jpV84id4tfw@mail.gmail.com>
 <89b3f65d-b2c8-bd39-24a6-fd6b7f146a98@mozilla.com>
In-Reply-To: <89b3f65d-b2c8-bd39-24a6-fd6b7f146a98@mozilla.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Aug 2021 10:24:56 -0700
Message-ID: <CAKwvOdkqdJpHDK3OX4H99XmcQDRgsq2B46Nf631x0witdBvgWQ@mail.gmail.com>
Subject: Re: ERROR: modpost: "__raw_writesl" [drivers/i3c/master/i3c-master-cdns.ko]
 undefined!
To: Sylvestre Ledru <sylvestre@mozilla.com>
Cc: Philip Li <philip.li@intel.com>, Chen Rong <rong.a.chen@intel.com>, 
	Nathan Chancellor <nathan@kernel.org>, clang-built-linux@googlegroups.com, 
	kbuild-all@lists.01.org, linux-kernel@vger.kernel.org, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, kernel test robot <lkp@intel.com>, Brian Cain <bcain@codeaurora.org>, 
	Sid Manning <sidneym@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=N8fEFXpD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
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

On Sun, Aug 8, 2021 at 2:13 AM Sylvestre Ledru <sylvestre@mozilla.com> wrot=
e:
>
> Hello,
>
> Le 06/08/2021 =C3=A0 18:57, Nick Desaulniers a =C3=A9crit :
> > On Fri, Aug 6, 2021 at 3:28 AM Philip Li <philip.li@intel.com> wrote:
> >> On Wed, Aug 04, 2021 at 10:18:10AM -0700, Nick Desaulniers wrote:
> >>> On Wed, Aug 4, 2021 at 4:39 AM kernel test robot <lkp@intel.com> wrot=
e:
> >>>> Hi Nathan,
> >>>>
> >>>> First bad commit (maybe !=3D root cause):
> >>>>
> >>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/lin=
ux.git master
> >>>> head:   d5ad8ec3cfb56a017de6a784835666475b4be349
> >>>> commit: 6fef087d0d37ba7dba8f3d75566eb4c256cd6742 hexagon: handle {,S=
OFT}IRQENTRY_TEXT in linker script
> >>>> date:   4 weeks ago
> >>>> config: hexagon-randconfig-r023-20210804 (attached as .config)
> >>> cool, one of the first reports from 0day bot of hexagon :)
> >> :-) yeah, we just enabled it. BTW: we use one specific version of clan=
g,
> >> does such hexagon support work in latest clang 14.0.0?
> > Yes, it ought to; we're using ToT llvm to build it in our CI.  I'm not
> > precisely sure about clang-13 yet until the apt.llvm.org binaries
> > exist for that branch.
>
> The branch already exists. The webpage wasn't just live yet but it
> should be a few hours (CDN):
>
> https://apt.llvm.org/

Thanks Sylvestre! Nathan has the list of next steps for upgrading our
CI to add coverage of the newly cut branch at:
https://github.com/ClangBuiltLinux/continuous-integration2/issues/176
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkqdJpHDK3OX4H99XmcQDRgsq2B46Nf631x0witdBvgWQ%40mai=
l.gmail.com.
