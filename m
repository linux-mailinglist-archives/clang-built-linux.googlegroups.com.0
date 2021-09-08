Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBNWT4CEQMGQEQJXWWTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B99E4032D6
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Sep 2021 05:10:48 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id w2-20020a63fb42000000b00255da18df0csf733823pgj.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Sep 2021 20:10:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631070646; cv=pass;
        d=google.com; s=arc-20160816;
        b=gjm8lkDOeNruM8t37cDg9CXpqyerFABcoSXNgRpTbowOs8OV38239p/Zr8AFYly7rH
         T2ok/g82wJxJmUlVvbCtGK/lvqe/MNDYtM9YouUN/8ZKGR7CpG5sqI3LB87GWBEUUrA/
         Rn2dKkx55bRlHpwEs5/BVdEk9d36RAg7F8g0LsDS4+tAPhrICwX4SIw7uxN6J9UnzLcr
         DBiZnbDvejOkBlbxf+eIbC1fhDr6np2C+gyC5wbGcrU01nVB+ItPJGIj2T2mAsT10flM
         enpyS5pJJ1XQisJoC7fu+0qgkWmXF1eJ1htTNAeP9MrsK+wKxpLSV2NDaGZbvifZxpLh
         /5uQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=viF3YGHgB8LmiFSWJtYk1nsyi1Iexp++8pfp6MHCDe8=;
        b=P5oRYNaDSVuDqhnHv/kqEUhIf2oMIXYO6dZG51zN2EiZ+CGzHbslGe2PVE9m/0Fprr
         OTmLlmAV9JwW/pjLFFMFjLLb8Y4R91VOPMAuSRO5mAchYuPr7Scmj1kFPklD7BxVLahx
         2LhADT4jrN6n1oMNSKCzVSiYJgIlvLtxKQnsSHMLw8woJWTOCjfv3385oU+Tv1venoT0
         IwQim8EGAJVXa8C44hcJtlV3uB4qhE3l7PbczoNpEYEh+tx83eY2VjMRKA82lBH+LT+J
         vwrjBYixY2LYTFjf3aUNBplW2qHs8dlX3yCARD5zRM9ZDuuQ/xCnk66LiHLOl6WXby56
         vaGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Lbp32YVi;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=viF3YGHgB8LmiFSWJtYk1nsyi1Iexp++8pfp6MHCDe8=;
        b=k1MZc6bufCgFC7bdeavI4VYiRwGtjKkuIQCeCBGuNtJVmItfe9eNITBHafGYL088g3
         ixA77SScibRCrKtPEip9FqYRug4Dq+H5SJUV7OtI2/bm/Va280SWmxVMqfGY27XrSUiO
         xrRs0jddxB+T3PfHsGe332qCBNS8dIiI9YXR6ZzZ6/rs83667VWIpjv2vOotBgP3Vx23
         C+na7viiq8uHG2SXLxevpTpI7lP/V3G4xxEghyJ3ixR2WF905YlziUElYHT9DTzOUb7/
         Qf4A5Qbly+KNLCxHgR3Q54Q7xQ+0SyiuNQyEGLZcUxWrG6PQv19OT2Kc12o+LuumhjyP
         xYyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=viF3YGHgB8LmiFSWJtYk1nsyi1Iexp++8pfp6MHCDe8=;
        b=GGi2gJKUo3mgE/5YV5oq1Zx7dhXr50Yo1j4xDxNYhuX6EGsYk0hF3E+DOgAALSaepa
         /guA9Gah9MMwaR+WCW7zwjBtMv8BJiL5Ie5/uzt3EsV0ixw/sN7PVFFS0DLHOhWDbdHJ
         QBSzlOz6GJNfbYgLHPM1ncbPY4HojB1BCGfYCDbVXGayDn//OEuIcXbzUqxqYALeiuIu
         y4Cl5xB9b1Y28QA34cwPeHkaD3hQhWrgRTkMQ6RQW5D2kC/czEMvIt+J4COT/lYmUVNK
         GaNzTs7IVQozc1AouGUo+NrVUdU+pdY+Ls7vYApLj2vPO6iPhRlXeYkvhXbQGSc0pO1f
         48pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302Hy4ThcyIBXKL5lahdUispd9UQzm3j52v60AEKrJObxqfdG/A
	oQRSol1FMK8wiRdUSSV+Frg=
X-Google-Smtp-Source: ABdhPJxa5kZoDv+Xe3pRhUl/nvpvBeRPB55MLvQgap0Hxhfim6i5ehIdM2Uaa0thnTlLRtTEP25nqg==
X-Received: by 2002:a17:902:c40a:b0:138:a82d:3aa7 with SMTP id k10-20020a170902c40a00b00138a82d3aa7mr1144541plk.54.1631070646679;
        Tue, 07 Sep 2021 20:10:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e845:: with SMTP id t5ls534802plg.9.gmail; Tue, 07
 Sep 2021 20:10:46 -0700 (PDT)
X-Received: by 2002:a17:90b:351:: with SMTP id fh17mr1642160pjb.237.1631070646144;
        Tue, 07 Sep 2021 20:10:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631070646; cv=none;
        d=google.com; s=arc-20160816;
        b=q9oDjpQFL4Hv265w7Lwhy8mGkIwECu4d1EKMvP2/j/0OIYQ6g6ZodJ/0wXESL6Hzih
         Ckz7mKqLKq2+ROjXCAdRLg4GQ40Hi49d/T3YITXGTYlcxoxH8e8bsXUck4Kcl9UJBx1L
         xeSRGsOvAM7azZ3Bu/ZG/67Tr4svhR8sSBIUvcaEk6q+AJz1X3fbANDGCD7TL7Po23JM
         EnyOhBy8SNK68zkQRUr9FILqDKrp12FAAJp7Hxs1rdJwaiUZX+LIDD0/CRbQQs8CF4Bf
         mVMFULQNZ9n0Io2ujBjaUkAmotbKPlXBJlEgRL+dOGNCIIBbrHuOX3JJ6cZoFX4kaf2a
         ZMuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=nHWYZJE2Do/yJRZXFrukxP+/SHM6+ZtDfSm5MRfpZO4=;
        b=z3TTfz2ChrA0nZN22JKu+0vO3TZFNbZ/oDtrpTyCFj6MAjVUonaWZ8f0xs3OOfbVxU
         Mh3FL5Wcclg+0TxPyytyAVADC+Jq66tCUexvsEg2sVEh5mrkwBqQjd3o+TpOnHATaH4v
         E8lD45fB+8b7PHCG7st9JVAAH8Jdn9SNGn90pUQ4M2oUxyPNXGGo4oUBDFATjNhT9eEf
         LA+6kFjcJzHRxsQGdpndieKNAT3T6umCID+Kin6s5bVNyNedhLDUMCjnypYnWMbmUQ89
         pRwcFXNiTtd1JNYXd+Hvtv5HujhoJppPHO0f7yLGmraW0HaBX2g3DGyHipe7E+J2d2a+
         P4IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Lbp32YVi;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id o5si91761pgv.1.2021.09.07.20.10.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Sep 2021 20:10:46 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 1883AKn6009914
	for <clang-built-linux@googlegroups.com>; Wed, 8 Sep 2021 12:10:20 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 1883AKn6009914
X-Nifty-SrcIP: [209.85.216.54]
Received: by mail-pj1-f54.google.com with SMTP id pi15-20020a17090b1e4f00b00197449fc059so436223pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 07 Sep 2021 20:10:20 -0700 (PDT)
X-Received: by 2002:a17:902:f703:b029:12c:982:c9ae with SMTP id
 h3-20020a170902f703b029012c0982c9aemr1137855plo.20.1631070619984; Tue, 07 Sep
 2021 20:10:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNAQ0Q6CdXaD-dVGj_e3O3JYs_crpejWKpXHYQJYxyk-1VQ@mail.gmail.com>
 <CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com>
 <3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org> <878s0c4vng.fsf@oldenburg.str.redhat.com>
 <20210904131911.GP1583@gate.crashing.org> <871r644bd2.fsf@oldenburg.str.redhat.com>
 <CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com>
 <87a6kq2nze.fsf@oldenburg.str.redhat.com> <YTY7oYPJPYstU1+f@localhost.localdomain>
In-Reply-To: <YTY7oYPJPYstU1+f@localhost.localdomain>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 8 Sep 2021 12:09:41 +0900
X-Gmail-Original-Message-ID: <CAK7LNATRN15cBU6gSZLHBqegj6F-x8+B8GNYp12wRUx_5u-FbQ@mail.gmail.com>
Message-ID: <CAK7LNATRN15cBU6gSZLHBqegj6F-x8+B8GNYp12wRUx_5u-FbQ@mail.gmail.com>
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
To: Alexey Dobriyan <adobriyan@gmail.com>
Cc: Florian Weimer <fweimer@redhat.com>,
        Linus Torvalds <torvalds@linuxfoundation.org>,
        Segher Boessenkool <segher@kernel.crashing.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        llvm@lists.linux.dev, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Lbp32YVi;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Sep 7, 2021 at 1:02 AM Alexey Dobriyan <adobriyan@gmail.com> wrote:
>
> On Mon, Sep 06, 2021 at 08:54:13AM +0200, Florian Weimer wrote:
> > * Linus Torvalds:
> >
> > > On Sat, Sep 4, 2021 at 8:19 AM Florian Weimer <fweimer@redhat.com> wrote:
> > >>
> > >> In any case, it would be nice to know what the real motivation is.
> > >
> > > I don't know about the original motivation, but the reason I like that
> > > patch after-the-fact is that I've actually been in situations where I
> > > test out self-built compilers without installing them.
> >
> > Does this really simplify matters?  Why wouldn't the gcc compiler driver
> > find cc1, but not be able to pass the right path options, so that the
> > include/ subdirectory can be located as well?
> >
> > > Then it's convenient to have a completely standalone kernel tree.
> >
> > The final patch in the series is here:
> >
> >   isystem: delete global -isystem compile option
> >   <https://lore.kernel.org/linux-kernel/YQhY40teUJcTc5H4@localhost.localdomain/>
> >
> > It's still not self-contained.
>
> What do you mean?
>
> Mainline has 1/3 and 2/3 now:
>
>         c0891ac15f0428ffa81b2e818d416bdf3cb74ab6 isystem: ship and use stdarg.h
>         39f75da7bcc829ddc4d40bb60d0e95520de7898b isystem: trim/fixup stdarg.h and other headers
>
> 3/3 is stuck in -next:
>
>         https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/log/?h=for-next
>
> I'm not sure why. If the patch is bad it should be dropped from -next
> as well. If it is good, it should be in mainline, otherwise more
> compile time failures will happen.



See

https://lore.kernel.org/all/20210906084947.4f65761d@canb.auug.org.au/

Your 3/3 correctly detected a new use of <stddef.h>
in the drm tree.

Stephen Rothwell pointed it out a long time ago,
and fixed it in linux-next.

But, the drm maintainers did not fix it in time.
I could not fix it either since the bad commit,
b97060a99b01b4, was not in my tree.

Now it is mainlined, so my plan is to
do  s/<stddef.h>/<linux/stddef.h>/
in my tree, then include your 3/3
in my second pull request in this MW.







--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATRN15cBU6gSZLHBqegj6F-x8%2BB8GNYp12wRUx_5u-FbQ%40mail.gmail.com.
