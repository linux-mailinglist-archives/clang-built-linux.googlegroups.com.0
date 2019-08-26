Return-Path: <clang-built-linux+bncBCQJP74GSUDRBS56R3VQKGQEU4H6LII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D03DC9CC02
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 10:58:52 +0200 (CEST)
Received: by mail-yw1-xc3a.google.com with SMTP id k191sf11907497ywe.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 01:58:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566809931; cv=pass;
        d=google.com; s=arc-20160816;
        b=vxyTxgL+ZrxM2uVHZXM3x2IFhZJVBBt5V2vy5T98IhHTPrG1Xg4Ymk/R1EhDO+kqhC
         zbnwsQF/lHGJjfy4ql/B9LzZnstXoR4rPMOlVvRBuOfHcPO7848c6TWT3fBJX9T6ghX7
         PbqP9cX9de3Sz9wOR8TvvSRyuFmuLZDa+wIDDKW43cMUbyEKDSq/813fy/OGHRdDKwDk
         hl9IpRjX3T5Mwb+xFinP7S9IMo2z1tOzrifCbuA/J61a96T6T8xuVzr3cceZc2DiY4Lh
         T60YJ505Fi0uYrqchhFRpo95S5GrvzWjIWCIeHoApE4jOckyozjcn9UP7x7YrgJIkU1/
         hNRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=elWQBx1MbX1KEWyxv/FXIldPdr/uRKgec9Yfl8n+Ito=;
        b=AtG9p7f4+rEdVeosIK24KFmgG+UyQjTi71+Eg/Mpx4Jgi3pXpgu7RcyesjeUv+vqMA
         /ClQPBJBGFbP1hOicxeKoF9NSedEIkv3vN3VdGOuOM3IZkWtjfVI34sHQeFz+C1Sz7e9
         KIr8z71n5BKOHxUMVR3kBNi6QG0LJVhRoh8VnMXhxvkdyBXEd15JRwXoPGNNkTIcqIHP
         gEok/1+f6o5SdK1jdhpRTXWWxxZ6SX93K7YXT+6gvnZn71+5Qbr4NVSltFB1g6kHiIWn
         m7HtDP6iXnusyQ/YKIshvtjMmmdxcEryTHK+gqLWPA4VGJ0tKGZIs8uB222ZynCRreGp
         cPHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.194 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=elWQBx1MbX1KEWyxv/FXIldPdr/uRKgec9Yfl8n+Ito=;
        b=BnjbdUXjtA3tIeYwHGKOsanUNWUSQao1O8T468VxU8Z6Ffvt33nEohV6auZUlw1JgZ
         hrpR6vLRIAkPPZMq8gxORElJtssEyhSX70Gg57riJBb+b2y7LUOIOPwo9YdkcPGbHZo3
         +WCOHUOGyIamp7IhGNqrWTL5G+/+X9XDAm8DEIK4ftlvBAYJWJA6aA/7+bhipVCYN23H
         5/pojUE9cktoY2LX4ucI8uRTMW8pEsfCdYVymjPj0+dBEdp35J4E8zphcVFRGIPWh9k4
         d23t4IFbFjYVsRo4SqjwV9A5r/V6258Cy9MjDwf7IkXStX4WqmfG3hGBr0tpdvZYEcie
         idxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=elWQBx1MbX1KEWyxv/FXIldPdr/uRKgec9Yfl8n+Ito=;
        b=jjsWn6VGKOrZpV6Lk/T/GMgg7AlrdoVV0PTxLE2+e2xozuelSKImv/SK/ZiuLmlA6e
         rwtDua6lFqksmSHkKDOfaeP6MSPjhcEnbB0tXisiUqWNmrqrtv5uJr8KkbC+BeID2CGr
         048j4z8O1NmYW8z90ypAg08wZKuH5UK8taxOCPFs1tWe2ms/lyczG+55WU3ryg3TYrPk
         HwLMxHyhZHKP+MUnu83qzzGAye6fNrFP13OUF4GpZmgdR20S8zd/GYYcsYbjYc8x/meN
         IeTSH/3fefj/WpqZ6u7VQJrgg9L1lzX34fc32umrsYt2SuS5Lrk+8LfroQAxdUDNxPTw
         v5lQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXptrJo6KZVL535NR35TibDLPS1oKKOQQVk/wR48WGe+hz//TEo
	1gMi2w/zAYipsIxdUIdPpIQ=
X-Google-Smtp-Source: APXvYqxwJqt91RGI8bXbIWFjTOlBOLWRwXX5Rx9d4jI2x4TOWa+0MRWViDcDgYegEfPVOgaA7C6wkw==
X-Received: by 2002:a25:ae44:: with SMTP id g4mr11923437ybe.266.1566809931586;
        Mon, 26 Aug 2019 01:58:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:b288:: with SMTP id q130ls4222526ywh.4.gmail; Mon, 26
 Aug 2019 01:58:51 -0700 (PDT)
X-Received: by 2002:a81:2542:: with SMTP id l63mr12146712ywl.91.1566809931190;
        Mon, 26 Aug 2019 01:58:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566809931; cv=none;
        d=google.com; s=arc-20160816;
        b=vo7X1A7n4AcwX/sK1tX+xQNk3cw8KsHZVv+7C9kJ/vc7Ru31CArMqHR+J6JAWfvwSA
         BatgcFsRd+23OIbYv0jZ5UObXiMP+tGNwKLCm5QCSKN+4D5rSOu3qABLgt8ndGq8dE+6
         wpxGVfCX3BE+MeyEcUw86kZpAkrEz20MS6MvI+dRAIzZl1TETicAu322jEy1HL+GZHbK
         1zCd5C2fl6MQmRSCb/DZ2WG4Oe94xi0T22b5leBAPChBNBgZU5aXq/yVOu10K6b5aqqQ
         a4nh3iGvwmNLsHuOAddaIU7YKyIsKSIK2ubqz9KYnsYfnPYPzs+RvE7WTCEMFY6j4Czw
         VaNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=tnEOaWMh9o7a4lsL8t46ApShoBTiXhp9jJWi58Cb5Gc=;
        b=v2jRqJjSQtX5apQus7rnOs2s1/S/rkFzZHAlhsqFukR3skhLdQWTRA65c6I2Sn4ZIw
         TaWD8UX4absrheVD7lQnyk2RRFwCIdmDk1K/ACHwny2CWreHkMNe3qBbcV8cRcSjvtzs
         +aMp0A2w4ov+YzGkmlLfivyeyD1RAmNJ6ArkhVMrLekxTDQR8Z1Xs02OCJbYic8B8xi+
         vpIi440xP2IvPMKd08GHg2U8lm6/DK5Cxr3dVBMn+jvewxTS8+v779i2mCGsr4gHoLBM
         u6tDro9/PABklVLi4DX5bIVygD7xYkc3BXLuHgJdLZVFIsZ/QN97vv0DdfbNo+IL1EUh
         Lbsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.194 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com. [209.85.167.194])
        by gmr-mx.google.com with ESMTPS id f190si524511ywh.2.2019.08.26.01.58.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 01:58:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.194 as permitted sender) client-ip=209.85.167.194;
Received: by mail-oi1-f194.google.com with SMTP id h21so11539425oie.7
        for <clang-built-linux@googlegroups.com>; Mon, 26 Aug 2019 01:58:51 -0700 (PDT)
X-Received: by 2002:a54:478d:: with SMTP id o13mr11607090oic.54.1566809930697;
 Mon, 26 Aug 2019 01:58:50 -0700 (PDT)
MIME-Version: 1.0
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
 <4398924f28a58fca296d101dae11e7accce80656.camel@perches.com>
 <ad42da450ccafcb571cca9289dcf52840dbb53d3.camel@perches.com>
 <20190820092451.791c85e5@canb.auug.org.au> <14723fccc2c3362cc045df17fc8554f37c8a8529.camel@perches.com>
 <CAHk-=wgqQKoAnhmhGE-2PBFt7oQs9LLAATKbYa573UO=DPBE0Q@mail.gmail.com>
 <9d12995c5e7e41fc5d8ba202f76a2cf854183245.camel@perches.com> <CAHk-=wi6bEnBy11HJBbgPsG3-ctE6Zyi2+3cnozjMAafSUBAaQ@mail.gmail.com>
In-Reply-To: <CAHk-=wi6bEnBy11HJBbgPsG3-ctE6Zyi2+3cnozjMAafSUBAaQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Aug 2019 10:58:39 +0200
Message-ID: <CAMuHMdVtCKVXNghfrs6RgtSDC08c0eyR-xD6d7mkZuSSPEFY-Q@mail.gmail.com>
Subject: Re: rfc: treewide scripted patch mechanism? (was: Re: [PATCH]
 Makefile: Convert -Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough for clang)QUILT
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Joe Perches <joe@perches.com>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Julia Lawall <julia.lawall@lip6.fr>, "Gustavo A. R. Silva" <gustavo@embeddedor.com>, 
	LKML <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	Linux Next Mailing List <linux-next@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.194
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Linus,

On Wed, Aug 21, 2019 at 2:41 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Tue, Aug 20, 2019 at 4:37 PM Joe Perches <joe@perches.com> wrote:
> > > So I'm putting my foot down on yet another broken string copy
> > > interface from people who do not understand this fundamental issue.
> >
> > I think you are mistaken about the stracpy limits as
> > the only limit is not the source size but the dest.
> >
> > Why should the source be size limited?
>
> You just proved my point. You don't understand that sources can also
> be limited, and the limit on a source can be *smaller* than the limit
> of a destination.
>
> Did we learn *NOTHING* from the complete and utter disaster that was strlcpy()?
>
> Do you not understand why strlcpy() was unacceptably bad, and why the
> people who converted strncpy() to it introduced real bugs?
>
> The fact is, it's not just the destination that has a size limit. The
> source often has one too.
>
> And no, the source is not always guaranteed to be NUL-terminated, nor
> is the source buffer guaranteed to be larger than the destination
> buffer.
>
> Now, if you *know* that the source is smaller than the destination
> size, you can do:
>
>     len = strnlen(src, srclen);
>     memcpy(dst, len);
>     dst[len] = 0;
>
> and that's not wrong, but that works only when
>
>  (a) you actually do the above
>
>  (b) you have no data races on src (or you at least only require that
> 'dst' is NUL-terminated, not that 'len' is necessarily the correct
> length of the result
>
>  (c) you actually know as the programmer that yes, the source is
> definitely smaller than the destination.
>
> and honestly, people don't get _any_ of that right.

(d) you know the untouched trailing end of dst[] does not leak data.

Anything else we're missing?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdVtCKVXNghfrs6RgtSDC08c0eyR-xD6d7mkZuSSPEFY-Q%40mail.gmail.com.
