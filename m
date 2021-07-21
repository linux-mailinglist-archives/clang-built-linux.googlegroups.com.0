Return-Path: <clang-built-linux+bncBCK2XL5R4APRBTGM32DQMGQE7A4QPXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEE53D07DA
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 06:45:00 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id 5-20020a0560001565b029013fe432d176sf384470wrz.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 21:45:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626842700; cv=pass;
        d=google.com; s=arc-20160816;
        b=lgAB8jEABAS5Y1Ojvh8LR7wUZG6KkPTUEwJlehmAiX++4UwhP6RzKS6EUVkDaAkit8
         vuaLXgDZQFsy5lz15fs11o08uGrJbGES+iPM/CkD24fFqZkznNsC13A2I5LudHV1BBEH
         geeZG8Q2MWFtvYDcu9pcOPiAv2pPacIfTZlvmZj+Lx1FVCUtIbRLUaKQlw/erMXjKPcf
         2ZxQGBVqn4z2QgQGB+JfHGjy+Up//fSgFvP88dta+B8WaIRnuA6xuTx0jMXNXnUWzDzI
         aBUkB2WLFCi3PTLxTg0+tLfc/pjccojUXImL1NGFiV7VrWeN98aA/YRCVG2F5kIP1FfX
         R7aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3rr5ZHwJXtW8qFLm7YfWqQb6fU6rhpWgc4A7TgNiIE0=;
        b=RKreDz0QxcN2qvxViP6tNv0nOC+ogkY/gPmX2yHuJSgbUoLj+Sldswl0D/kFC8Vde0
         YocjOdVPiQ95iuWS5FxXapnBkiFkR/Vji9pUDVMDZX9KtY6GvF+P3dMfKqM1O9CpIt/X
         lYKq5OOP3T60jxRFxdFOd/XmgSomsLKjI/LwreeO+9BFltgBA2Kcfo7Dh8sjEHCDxCZn
         eNmaAYZtq+Lgd2NIEzHs6nRrROryOjk3FEHx12Nvd5VursV70THh83jNVkLISuv/dUXr
         RYCPpIZif9Y1uW8NeJvjaVRH9Q0cgG7qIzUz5kPD4RWqewilOTW6z6BR8znn3hrmKzgx
         b6VQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Ni1XuZLI;
       spf=pass (google.com: best guess record for domain of batv+75be22767c7c0793244e+6541+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+75be22767c7c0793244e+6541+infradead.org+hch@casper.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3rr5ZHwJXtW8qFLm7YfWqQb6fU6rhpWgc4A7TgNiIE0=;
        b=We+o+BHlMbjtO6d+S8qXHZmOVvHfmbR/GxZ7UFD2H+IHsHk5ZQvpivsajXKwXLIEzf
         AoDg2XqAsBdG6+LhU8pCdsK01829VSFGYRa85qZfk+54txrfyeNCkNDDsmN+15/QG7J/
         0CHnP/8gYfOI9/fQDSynaiis7+aFUQ4w0q2cf4GukQq38dY3ROeU85sJNcD3zEzOpuK4
         RfZYj2RELp1cWsT8pp44bZw67Xk1Pm/+z0Pg50ztVtdMDpp+41QlV/8iTDJrC5znhYD/
         zrM8x7kyzWij05mYWARpTvhSRP7NhW7t400MTl6iN1+RNJxgdptKjsBZK8TNQgtEX37r
         VPoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3rr5ZHwJXtW8qFLm7YfWqQb6fU6rhpWgc4A7TgNiIE0=;
        b=p/rtC7uyVG6wNbjn7kTZbXP0+Iypf7gtPm4GqD/Sm5+qjtSG0LaISEwOarQ5G4h0PS
         cnjx8TF/DO+gU7DBTyPgtVf4t2mBfIt3jldcUqIWRGwENvWd1fQmt3aBMlSWietT+IWD
         OoT5c0v49TDZiGiKdEFNbR6qXTq3iVfxLqE6pDCCiLahFw7k0IUGlramC6RwBEorkY81
         0lOnMyLCmj6XKPl69RRmLuEszesn+4jx6Qrbhwl5vSmZR2pyhGvQu6JyCRppY7D3f6Cz
         yUOx50BEHigeQVRPqF/B8UryGyXNt/9g7stonKbJQkOxeg8CjJVl2xFe6GJ381ywTG16
         /jSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Yyr5FDNKT2CIhtCPzGOtJKEydxQh92U5d/aC6EY9FOaZf6Ahl
	krOZovtuegXKipRQOLynmbo=
X-Google-Smtp-Source: ABdhPJzauoP7U5JCq0SyIsRTVgsuT30xszwsXfVWci4h4fbxP7mCUJ5veURHj2LwyvCt4sA16gmyPw==
X-Received: by 2002:adf:f50e:: with SMTP id q14mr40057517wro.183.1626842700288;
        Tue, 20 Jul 2021 21:45:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:511e:: with SMTP id o30ls2316096wms.2.canary-gmail;
 Tue, 20 Jul 2021 21:44:59 -0700 (PDT)
X-Received: by 2002:a7b:c147:: with SMTP id z7mr35411332wmi.110.1626842699414;
        Tue, 20 Jul 2021 21:44:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626842699; cv=none;
        d=google.com; s=arc-20160816;
        b=VHDw/I0y9MLNPeHJJIK8aa8sGeAKIg66Bx8cJKUQQ+5KAa+4xnOf0xl7gsJbVCP//n
         QeO+bWm7h43SFtCy6c1XFLpTDRP5LZgtDFpCjzX+26O/4trzPXqDX7Rxco2nHU3K7skV
         vWNz6IcJSdw7Bv1qyZPtJpy+Zn2jOYOgKymbyGygpzDzUSmFaRw/3P5x3NfX8pJi+bNd
         yE2H3lL5DMk4qQ5M/Bb7T68qWI95h2qn5plDG8Qvy1lKbZp78fvYMVatmQJX73QMssHU
         sF+uPtXexrzefu+nqcNel3XHZreYv/uEdues1AlgK5R4lwD3VEJLvu1ODfDdzOvZ0aCg
         8Usg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BOPDngMEwqe+Bsprte7BtdwFnfxHNg8u1HnO9Otn+8k=;
        b=kYDuXYo27WWGM9U+VO3wyRNivNz6ny+FY+dRyjHTvUIlJHeCSB+q0NIE0xKg1nDfAE
         ZZ5AKNd1skTJOjkW5IGahhe26ePazh8Ur6JtU0QxYxr+pbEnoxdCxVA37+y6kY7fqFP5
         A1YnD0vh2LDYomoumAp2iAk52KwSKpBcC1TH8UWiZwWgxyzPa7JiGWukYf03SkObJebj
         PdwyoP2b7cjNYzwcE1GKY1sRtnpoUDIrqQ2os8eYxcu4/KJVWy3YcWVKHJAaFIdHLNvM
         nfDTzPJ+ObfSkjk9N2oMzUQuoPpx6z3Ve6+BcPW1Uzjb4WyNVpFvlOjTLcgbX5T7R8CT
         5Yjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Ni1XuZLI;
       spf=pass (google.com: best guess record for domain of batv+75be22767c7c0793244e+6541+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+75be22767c7c0793244e+6541+infradead.org+hch@casper.srs.infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id m12si692721wrj.4.2021.07.20.21.44.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jul 2021 21:44:59 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+75be22767c7c0793244e+6541+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m645r-008nRL-N9; Wed, 21 Jul 2021 04:44:32 +0000
Date: Wed, 21 Jul 2021 05:44:27 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Christoph Hellwig <hch@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
Message-ID: <YPemK3wSF6IUUX/s@infradead.org>
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com>
 <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by casper.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=Ni1XuZLI;
       spf=pass (google.com: best guess record for domain of
 batv+75be22767c7c0793244e+6541+infradead.org+hch@casper.srs.infradead.org
 designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+75be22767c7c0793244e+6541+infradead.org+hch@casper.srs.infradead.org
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

On Tue, Jul 20, 2021 at 10:42:57AM -0700, Linus Torvalds wrote:
> (It has annoyed me for years that if you want to cross-compile, you
> first have to do "make ARCH=xyz config" and then remember to do "make
> ARCH=xyz" for the build too, but I cross-compile so seldom that I've
> never really cared).

Same here.  I'd so much love to just have ARCH an CROSS_COMPILE in my
.config for cross-builds.  Oterwise I keep forgetting them, or keep
forgetting to unset CROSS_COMPILE and will just waist a lot of time
either way.

The fact the the .config files even mention what architecture they are
for in a comment but don't make use of that information is just hostile
to users.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YPemK3wSF6IUUX/s%40infradead.org.
