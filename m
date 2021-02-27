Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB6OZ46AQMGQET77AGWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 94519326C09
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 07:55:54 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id q77sf12511748ybq.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 22:55:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614408953; cv=pass;
        d=google.com; s=arc-20160816;
        b=RV2ZI2fFy+/yaU42m1YS7AhUBXcZ/V3+djIjuu90b+ti7o1TolrUAyLFGnOs1SO8w9
         KevVC1Nc2da9UXuIdE6mbl8sEYQ4nDWssavdUPAU42wCRHUZbvIBZ2JiUTKs69R8SmC6
         9tqQAA/5gkgahwhVnOAKizLIHdu/PO4VADyd8IP7UE59j/+ekSIEXgWr6cpmuwY1lkaQ
         BqVkBKBF3gUhV8ziKsBGSQC2xMQ44cHiw0nAmKRWZqZ6/1NhPyYfuCcll8JJXcziVBTi
         GqjPGUZQ8KnfiawtNyQjcbpT3jkezUT0E5i9kcoukVI7ZwTE09Qvqfv3yLW15+x8yRlO
         D9ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=49Nvp2sK4RQkRlF/25/GEGHkTu6Olo/3dhVmuUXkGOc=;
        b=RPm+TVTQXeovtyI5Ux23wkfIe6rSPAK5vt6YYb8eNjkTuf8JtAGIkntpQWMooERDbw
         gxZiqLE4FEmmxgyyJvuq8zCJytjb03/bAdCT/cKKRun86shhOpLLffsK2+OXWuOSO1xh
         5ZK/xc9PR6u9FD0a3Jp+RLnXbW2/ci1vF+NNSEG7pJlzfeofVaKCsLKoU/4Re8Mt4oFH
         bylfXVpXIQhlWn4dsYExhVDyCG1eVaWDDsT1Ywz/mBV2Yz5PB/yfTfWOLJdPxF3POFZR
         BuY6QYRj9Y/MH1DlXCRb9iuTiQ+Ey9tnAMRj8VFHDxEGiBbHfWeZvb9SEaV6cM12zSv3
         vJ7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=e6sy3FPU;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=49Nvp2sK4RQkRlF/25/GEGHkTu6Olo/3dhVmuUXkGOc=;
        b=MS5ffutdBo1qsHPbvrPz1unWKJUFDPGC7rSrS9gSUCV93b2NVvnChCuz1LloaPxM3+
         wBEsaoM+4rwU+sZMHclLgpIKD64F0S8c8az5wzY597aoF8kdZYk7pJ31jbm5vTtwx771
         iFrTfCAltMjLDIA55dI6Ae/yLVFmZJQYmODTnJTRoihX5+nPQH4fhKIT9NMEofwK9vm7
         wBbeepbYK+mYg/gE1KbMMYBf1uggbChXuSxRq8g7cMC20XzLMHjXVWKiZWVHXSoYvaUx
         mz9tiZIFmnliavYSCZ5oDWhGC+rlGlKa+MALV06anisOM4S6wArKovEsckkdrhvav/mM
         dOzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=49Nvp2sK4RQkRlF/25/GEGHkTu6Olo/3dhVmuUXkGOc=;
        b=KJQgMwet/PUlhQHwBKxWM4paLfRxj6OocmqiaUiTNtIvQ96Km944iVZiAZTkwSlH43
         xyC4EtoAt2SPYTvyJVGNZCt/3/spkTf2dUHLRAo0lkFhxQIXAndw8FB+TXEcXvrl48Ez
         DRYO2wEK5Dh0qJBEbxOUCwdFIM68pNQEK3rpLiOcvdMXZvM+2f5ZakCJnbrupvwECX40
         4MQB0AeSyqEL6YQshOoCktaOynIQed6d6LNtuMk8cIU2V0DmcJ7HVcqpU1Zh1eTc23B2
         BDmpv/mq55uEBIjON6miVaqKlbB26Nt0+lUv76HX5JAOZskIHLE65SaYrn2TeTl2UU+O
         Id2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GXR1SRKC/wXOHu1O8+HrRupXFy6G4O34sUXLQ0zN8dzoiUrBX
	5ARhM3ZNjDDXF9o2qJC8Gc8=
X-Google-Smtp-Source: ABdhPJxJ//eq3ZsL9JlRwaQxuAdlJdZRBajPxC7qhk8Vph25p31q6n512djEFQdYUXYFexG4elCCIA==
X-Received: by 2002:a25:7748:: with SMTP id s69mr8926510ybc.200.1614408953373;
        Fri, 26 Feb 2021 22:55:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d8c7:: with SMTP id p190ls4202940ybg.6.gmail; Fri, 26
 Feb 2021 22:55:52 -0800 (PST)
X-Received: by 2002:a25:3dc4:: with SMTP id k187mr59819yba.389.1614408952836;
        Fri, 26 Feb 2021 22:55:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614408952; cv=none;
        d=google.com; s=arc-20160816;
        b=r6bvnCrU7h/AYWzCRqoe2+uiCKSAxXeiTyNLTF874AJSnIvT4xT0pPzksShNaKR5y3
         Q/qajnwP5uMJsJK7DidrLXAXrpFZMJU2m7+PctAaYD60zChgA6dB2vUxEiTr+K8e3Ce5
         z1Woce8CMW9G+IauiHwXHmw5T6aZUXrLgIxwLq63fxAJVGpwH4k9XKkldHWEBpgHo4gC
         xxVqP/Wept0w9vCMt+i10OAjmUWpRoEgK+pFjtvOEM1k5Ro3CIPifafw+xk2QuSEaS04
         x5xOlpCBejYs8Ju07qD3pIFdr8DbZyp91YwJKG2JEu0N2HNo75r5j28/HVYQpomWJNKr
         z5Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=bHffv351LtHI0LzqaBGpYJnkjtPtn6I884Zf4L50dws=;
        b=Bi4lH6l6PI0qBPCPsde04S+OaGpvY6eX+IoK/yWPuhKaQCbQ8W0IuHSANDcIBZtFeu
         hiOtKLN1X/oD+4cte/vtRlDe9jHsTwPTQ3cf7U2Oz7YngRv5pcsfJvS4nii1Ixqn/Sr4
         g9GNFGH1jLMJXj/5UsOLk8jdyk/2Z2+lKD22d9nM487A4vLDyzyBOM2ifUm3HzkJuZJV
         SZTWYpBWOXUDI6D4MTDLXUKxuvuixMJZQbGWPtAxw+6muP7m2cs9IgcVk6hYQUImDtls
         bDHs+wqAjvegW7zm+TZ+NKAQ5ZFy8zXUHmuVbdXfT3U+8RBk3mfRSW+P61ViMWCBje5j
         QRsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=e6sy3FPU;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id t17si45089ybl.2.2021.02.26.22.55.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2021 22:55:52 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 11R6tHgX000778
	for <clang-built-linux@googlegroups.com>; Sat, 27 Feb 2021 15:55:17 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 11R6tHgX000778
X-Nifty-SrcIP: [209.85.210.171]
Received: by mail-pf1-f171.google.com with SMTP id b145so7775817pfb.4
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 22:55:17 -0800 (PST)
X-Received: by 2002:a62:1412:0:b029:1ec:bc11:31fd with SMTP id
 18-20020a6214120000b02901ecbc1131fdmr6450801pfu.76.1614408916611; Fri, 26 Feb
 2021 22:55:16 -0800 (PST)
MIME-Version: 1.0
References: <20210226062548.3334081-1-masahiroy@kernel.org> <CA+icZUXYLVjs-hXEu_5Vy=TdNvOHhyiXe=hc-jc7SAU04Dtstw@mail.gmail.com>
In-Reply-To: <CA+icZUXYLVjs-hXEu_5Vy=TdNvOHhyiXe=hc-jc7SAU04Dtstw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 27 Feb 2021 15:54:38 +0900
X-Gmail-Original-Message-ID: <CAK7LNARmQzJwUWcYPj9QKZatYpC6-gegTuJiAvyhR==8ezWdHg@mail.gmail.com>
Message-ID: <CAK7LNARmQzJwUWcYPj9QKZatYpC6-gegTuJiAvyhR==8ezWdHg@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: fix UNUSED_KSYMS_WHITELIST for Clang LTO
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=e6sy3FPU;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, Feb 26, 2021 at 6:26 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Feb 26, 2021 at 7:26 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Commit fbe078d397b4 ("kbuild: lto: add a default list of used symbols")
> > does not work as expected if the .config file has already specified
> > CONFIG_UNUSED_KSYMS_WHITELIST="my/own/white/list" before enabling
> > CONFIG_LTO_CLANG.
> >
> > So, the user-supplied whitelist and LTO-specific white list must be
> > independent of each other.
> >
> > I refactored the shell script so CONFIG_MODVERSIONS and CONFIG_CLANG_LTO
> > handle whitelists in the same way.
> >
> > Fixes: fbe078d397b4 ("kbuild: lto: add a default list of used symbols")
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> > Changes in v2:
> >   - Rebase on top of Arnd's patch:
> >     https://lore.kernel.org/lkml/20210225143456.3829513-1-arnd@kernel.org/
> >
> >  init/Kconfig                    |  1 -
> >  scripts/gen_autoksyms.sh        | 35 ++++++++++++++++++++++++---------
> >  scripts/lto-used-symbollist.txt |  6 ------
>
> People who want to use their own "white-listed" (allow-listed)
> symbollist-file can do that via
> CONFIG_UNUSED_KSYMS_WHITELIST="my/own/white/list".
> Correct?
>
> Why do you delete the default "scripts/lto-used-symbollist.txt" file
> and remove the default in the appropriate Kconfig for people who want
> to enable Clang-(Thin)LTO?
> These people should now use
> CONFIG_UNUSED_KSYMS_WHITELIST="scripts/lto-used-symbollist.txt"?
> But again - the file was deleted with your patch.
> Do I miss something?

I think so.

I moved those symbols to scripts/gen_autoksyms.sh





-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARmQzJwUWcYPj9QKZatYpC6-gegTuJiAvyhR%3D%3D8ezWdHg%40mail.gmail.com.
