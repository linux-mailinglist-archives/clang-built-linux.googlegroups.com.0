Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBCG6V6EAMGQEYJX4IKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id A08B93E163C
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 16:00:42 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id o38-20020a17090a0a29b02901772cd97277sf7530970pjo.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 07:00:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628172040; cv=pass;
        d=google.com; s=arc-20160816;
        b=sIEJV5q+mXcT+BdkeTDgNO2IvEQXj5kZtPEXTI+hraQQFvjParSNmWU+p+bCae14NE
         qMmtuxQeyD0b0/S/MizDYB3HYi3VgXQkJAWhD332WBjVddQFxpOOX+4ItKWMkLT5//2O
         4TqA8mmJaLPzbAnyZ9rpf9+dqgqEv3rUno8wiUJnEwRjJq8vhfaz7rWoKqInRlGJJLfu
         hyvsvRFHLkzpz3cm+oUjZUf2qgqIP7io2wO7P4Rw9Ut5TyFG0sQQVyMPSumRtBxttF3K
         +kokA9Nf2Ugncj+PP9zc6OjasXk8aP0bV8//BoJrtJNAYVm3F2wEXeo/+eRAaICBgQow
         uuCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=gVZqTT3f7iY1KQ2/5wp2b/kkzxkdNKuOQsFxhNOiNNs=;
        b=pQI82+Vh0ndI1xuHYuVpzN4aOb0SUglIU4R8jGxXmcbfnKZoTqfc3MgBJ93BSTZSxE
         AmfTykERsS5vg6t0wffzyX3NeDLVd7IbJy7wfRZCXnKd4iPQCkhLlezQG7F5UOklbOtb
         DG9vsdQHVseEnWBOFyZNf63emj3XTmgpUgFoVOxMSvDglauRPLk92PjUXZECRCEpKnO1
         WZ1CH6rw/d+jf7h+oojd6FJVXyW6sNWgDa8Wk4Djp0v4AIjn0cRb7xfKAOIr7Ft1/O9f
         F5S9SBaavQVstf/kFNMO0AHwcuxbcXYcsRLXzN249ok3cxqm9OKmBDUyMdGTZlN5ssyf
         KMNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=RTYjuW+6;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gVZqTT3f7iY1KQ2/5wp2b/kkzxkdNKuOQsFxhNOiNNs=;
        b=PWyS46TtmTOM5DhBn/HBzEfdZcaLMWO8J/fXo+LUGL+Wcs+03yNPYM57HfRHFZHnR5
         Z8EpsBhUu94h9hPtlYsUrDn3p8/cfX/2ENQOyQ83a/Lzzz6MWTk6LG7TzrO1mRCLVwpW
         r1ctWwTjxAIRnnAMx2Tcw3Utg8Ss3D6FvpFtiT/eFYqOxG8a/vazbzBURb7/A9279Vv6
         NhOe7PvpDfQiM0jgVzDH9woj90jhDeA3smZKT4cc3KKZ/gvio5+ORzZdOhQH8X+35m8E
         F6hnAMMqEzmRZlGlh8ZfUG5kXu8QPGLnbCWUadI0srnLbkt6Pn/HFF6YTihQkzOduEQI
         Byxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gVZqTT3f7iY1KQ2/5wp2b/kkzxkdNKuOQsFxhNOiNNs=;
        b=YrACkbGl4lVZBrTxiXPVMifsiMu52HapsMmX3qqpVA56eXDlNe+pQDmDK+K2cIHaDJ
         Xblcyu7LFz8r8yXhDVg++laDGsiv5+cH/QmzDitQNCjpljYVJ23DUn4F0zatnfPJqM5r
         aW4kCRkY9PU1pzh20ewlK0ypjNev5Ee3f9jaNsatYYyKugOg8nmCdzbZ4p/caR5KRqHi
         0tw/gkfreMVycpbEKLRYX5vMehE84mNq75O0pV0k/Mj53xww4h9LyUZzxibiOYN4yaWb
         N4HU0IsYguAc6vkRy8cPwdXCqX61p34Ux5N+iOQhn78Qy5RDYBmHr651IjfvnznWYcwh
         PLUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nHMnc6PhpRXURRUBrD6txLXRzPDuDfYNA49ws7Wf0+HTR24RY
	VWtOybkv7a9pGiKAUqcjnE4=
X-Google-Smtp-Source: ABdhPJyN0Xc7VIfID+HJ28tyCp4K26LTADDfsh+wev6WIZkGZWEto9ijBbGDKhJNA3vCxwTKEIq+rA==
X-Received: by 2002:a17:90a:de16:: with SMTP id m22mr4983327pjv.54.1628172040187;
        Thu, 05 Aug 2021 07:00:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a4c3:: with SMTP id l3ls3287651pjw.0.gmail; Thu, 05
 Aug 2021 07:00:39 -0700 (PDT)
X-Received: by 2002:a17:90a:e647:: with SMTP id ep7mr15566005pjb.145.1628172039456;
        Thu, 05 Aug 2021 07:00:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628172039; cv=none;
        d=google.com; s=arc-20160816;
        b=TlEZyZcakoPI5iaqfjSY3G4qFTE38oulgUK166hZFPoZyZFXTTNWZNysEZs0CJf49t
         LWMrGjU91Sax/7y5IZ/Fxv3EBi0MeLVXImCyJF5ppZDjhQFVtwhYCxLr+1/kekgkC9r1
         bKnhgC/SjiePANszVG1nPFlzjzhqOTj+U7tIy/1jfGwM8cLMWX9YDQtPbLh+rJH2pMX/
         rJtytbQez1hx8oFaKZw+mAcuyQWJZzQpSHEMCl+R8E3gpJs7ufJRGc5nyTQX9NikkWUb
         plNgHy9PAiZj5Ykr8uMHSqoTvhLOguoZKnHdzC0OhQsxCn1ZUJtgoh55lWIvzfwVIbkD
         l5YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=lffbE45BRrgQKayNYnYaGttwzdEDcoutwDeVAJukOHE=;
        b=OpmX5PZwAnf6xYY0tvgMZl15NuxcNOmlIH/2e/6PJtAT7tcutf7US7j/V/km505zxP
         rbaIQfGcO669hXWxHXPl+g5zDr9uoRQ9AKpA94hW8Z/3zwXpui2BvosNCoACs6wVB+K7
         ZwVYgVcZzJTEBrQdRgBah1pE+DPTt3TbtW8g/tSCkHtAxIjoxJIwtuAuuZkQshmbgarq
         gcI/RcawFOj6ZfoTa2oKmdRBtKKqP03syMCgb64Pu36XuuUj7yE/H58l+C95WxPEJS86
         qBIPZ3BwHETDTTd9pjS/JUieCK8UJ4EHj67UqeRrsG1dECVYxdKOcNM3NNSDz7DfTFg6
         1JWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=RTYjuW+6;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id b15si236739pfl.6.2021.08.05.07.00.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 07:00:39 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 175E0P4s001024
	for <clang-built-linux@googlegroups.com>; Thu, 5 Aug 2021 23:00:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 175E0P4s001024
X-Nifty-SrcIP: [209.85.216.41]
Received: by mail-pj1-f41.google.com with SMTP id s22-20020a17090a1c16b0290177caeba067so15057360pjs.0
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 07:00:25 -0700 (PDT)
X-Received: by 2002:a05:6a00:d71:b029:3c7:6648:69c6 with SMTP id
 n49-20020a056a000d71b02903c7664869c6mr2014065pfv.63.1628172025021; Thu, 05
 Aug 2021 07:00:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210802234304.3519577-1-ndesaulniers@google.com> <YQicuh/Qtj0AfxdK@casper.infradead.org>
In-Reply-To: <YQicuh/Qtj0AfxdK@casper.infradead.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 5 Aug 2021 22:59:47 +0900
X-Gmail-Original-Message-ID: <CAK7LNASq2CdhbybOrdcxBDA7BmF1jfBK6mX2z75MR7DLN3GMwQ@mail.gmail.com>
Message-ID: <CAK7LNASq2CdhbybOrdcxBDA7BmF1jfBK6mX2z75MR7DLN3GMwQ@mail.gmail.com>
Subject: Re: [PATCH] scripts/Makefile.clang: default to LLVM_IAS=1
To: Matthew Wilcox <willy@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <nathan@kernel.org>, Khem Raj <raj.khem@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Jonathan Corbet <corbet@lwn.net>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:SIFIVE DRIVERS" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=RTYjuW+6;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Aug 3, 2021 at 10:33 AM Matthew Wilcox <willy@infradead.org> wrote:
>
> On Mon, Aug 02, 2021 at 04:43:03PM -0700, Nick Desaulniers wrote:
> > +++ b/Documentation/kbuild/llvm.rst
> > @@ -60,17 +60,14 @@ They can be enabled individually. The full list of the parameters: ::
> >         OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump READELF=llvm-readelf \
> >         HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
> >
> > -Currently, the integrated assembler is disabled by default. You can pass
> > -``LLVM_IAS=1`` to enable it.
> > +Currently, the integrated assembler is enabled by default. You can pass
> > +``LLVM_IAS=0`` to disable it.
>
> I'd drop the "Currently,".  This is presumably going to be the default
> going forward unless there's some horrible unforeseen problem.  The
> "Currently," implies that we're planning on changing it.

I agree.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASq2CdhbybOrdcxBDA7BmF1jfBK6mX2z75MR7DLN3GMwQ%40mail.gmail.com.
